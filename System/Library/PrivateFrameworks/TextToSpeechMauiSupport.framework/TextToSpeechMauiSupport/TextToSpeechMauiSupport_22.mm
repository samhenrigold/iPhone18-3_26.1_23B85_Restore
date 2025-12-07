uint64_t readDataBlockFromFileRefCnt(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  result = InitRsrcFunction(*(a1 + 8), *(a1 + 16), &v22);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*(a1 + 32), *(a1 + 40), &v21);
    if ((result & 0x80000000) == 0)
    {
      v16[0] = a1;
      v16[1] = a2;
      v17 = a3;
      v18 = a4;
      LODWORD(v19) = a5;
      v14 = v21;
      v13 = v22;
      __s1 = 0;
      if ((paramc_ParamGetStr(*(v22 + 40), "clcpppipelinemode", &__s1) & 0x80000000) != 0 || !__s1 || !*__s1 || !cstdlib_strcmp(__s1, "internal"))
      {
        v13 = v14;
      }

      result = objc_GetAddRefCountedObject(*(v13 + 48), a6, readDataBlockFromFile_ObjcLoad, readDataBlockFromFile_ObjcClose, v16, &v20);
      if ((result & 0x80000000) != 0)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(v20 + 32);
      }

      *(*(*(a1 + 152) + 16) + 136) = v15;
    }
  }

  return result;
}

uint64_t readDataBlockFromFile_ObjcLoad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a5;
  v7 = *(a5 + 8);
  v9 = *(a5 + 16);
  v8 = *(a5 + 20);
  v10 = *(a5 + 24);
  v11 = *(*(*a5 + 152) + 16);
  v12 = heap_Calloc(*(**a5 + 8), 1, 16);
  *(a4 + 32) = v12;
  v13 = *v6;
  if (!v12)
  {
LABEL_144:
    log_OutPublic(*(v13 + 32), v6[23], 24048, 0);
    StringZ = FEDATA_ERROR(10);
    if ((StringZ & 0x80000000) != 0)
    {
      goto LABEL_145;
    }

    return StringZ;
  }

  *(*(a4 + 32) + 8) = heap_Calloc(*(v13 + 8), 1, (8 * *v11) | 1);
  v14 = *(a4 + 32);
  if (!*(v14 + 8))
  {
LABEL_143:
    v13 = *v6;
    goto LABEL_144;
  }

  v15 = *v11;
  *v14 = v15;
  if (!v15)
  {
    return 0;
  }

  v103 = v10;
  v104 = v8;
  v16 = 0;
  while (1)
  {
    *(*(*(a4 + 32) + 8) + 8 * v16) = heap_Calloc(*(*v6 + 8), 1, 48);
    v17 = *(*(*(a4 + 32) + 8) + 8 * v16);
    if (!v17)
    {
      goto LABEL_143;
    }

    __dst = 0;
    v110 = 0;
    v109 = 0;
    v108 = 0;
    v106 = 0;
    __src = 0;
    Chunk = ssftriff_reader_FindChunk(v7, "HEAD", 1, &v109, &__src);
    if ((Chunk & 0x80000000) != 0)
    {
      goto LABEL_124;
    }

    v108 = 0;
    cstdlib_memcpy(&__dst + 2, __src, 2uLL);
    v108 += 2;
    *v17 = HIWORD(__dst);
    StringZ = ssftriff_reader_CloseChunk(v7);
    if ((StringZ & 0x80000000) != 0)
    {
      goto LABEL_125;
    }

    v20 = *v17;
    if ((*v17 - 3) <= 2)
    {
      v21 = heap_Calloc(*(*v6 + 8), 1, 24);
      *(v17 + 24) = v21;
      if (!v21)
      {
        goto LABEL_40;
      }

      Chunk = ssftriff_reader_FindChunk(v7, "REMP", 1, &v109, &__src);
      if ((Chunk & 0x80000000) != 0)
      {
        goto LABEL_124;
      }

      v108 = 0;
      cstdlib_memcpy(&__dst + 2, __src, 2uLL);
      v108 += 2;
      v22 = HIWORD(__dst);
      v23 = *(v17 + 24);
      *v23 = HIWORD(__dst);
      if (!v22)
      {
        cstdlib_memcpy(v23 + 4, __src + v108, 2uLL);
        v108 += 2;
        if (*(*(v17 + 24) + 16))
        {
          v44 = heap_Calloc(*(*v6 + 8), 1, 8 * *(*(v17 + 24) + 16));
          v45 = *(v17 + 24);
          *(v45 + 8) = v44;
          if (!v44)
          {
            log_OutPublic(*(*v6 + 32), v6[23], 24048, 0);
            *(*(v17 + 24) + 16) = 0;
            goto LABEL_132;
          }

          if (*(v45 + 16))
          {
            v46 = 0;
            do
            {
              *(*(*(v17 + 24) + 8) + 8 * v46) = heap_Calloc(*(*v6 + 8), 1, 24);
              v47 = *(v17 + 24);
              if (!*(*(v47 + 8) + 8 * v46))
              {
                goto LABEL_131;
              }

              ++v46;
            }

            while (v46 < *(v47 + 16));
            if (*(v47 + 16))
            {
              v48 = 0;
              while (1)
              {
                v49 = *(*(v47 + 8) + 8 * v48);
                cstdlib_memcpy(&__dst + 2, __src + v108, 2uLL);
                v108 += 2;
                ++HIWORD(__dst);
                v50 = heap_Calloc(*(*v6 + 8), 1, HIWORD(__dst));
                *v49 = v50;
                if (!v50)
                {
                  goto LABEL_131;
                }

                HIDWORD(v106) = HIWORD(__dst);
                StringZ = ssftriff_reader_ReadStringZ(v7, __src, v109, v108, v50, &v106 + 1);
                if ((StringZ & 0x80000000) != 0)
                {
                  goto LABEL_133;
                }

                v101 = v48;
                if (HIDWORD(v106) != HIWORD(__dst))
                {
                  goto LABEL_127;
                }

                v108 += HIDWORD(v106);
                cstdlib_memcpy(v49 + 1, __src + v108, 2uLL);
                v108 += 2;
                cstdlib_memcpy(v49 + 10, __src + v108, 2uLL);
                v108 += 2;
                cstdlib_memcpy(v49 + 12, __src + v108, 2uLL);
                v108 += 2;
                if (*(v49 + 6))
                {
                  v51 = heap_Calloc(*(*v6 + 8), 1, 8 * *(v49 + 6));
                  v49[2] = v51;
                  if (!v51)
                  {
                    log_OutPublic(*(*v6 + 32), v6[23], 24048, 0);
                    *(v49 + 6) = 0;
                    goto LABEL_132;
                  }

                  if (*(v49 + 6))
                  {
                    break;
                  }
                }

LABEL_64:
                v48 = v101 + 1;
                v47 = *(v17 + 24);
                if (v101 + 1 >= *(v47 + 16))
                {
                  goto LABEL_12;
                }
              }

              v52 = 0;
              v53 = v108;
              while (1)
              {
                cstdlib_memcpy(&__dst + 2, __src + v53, 2uLL);
                v108 += 2;
                ++HIWORD(__dst);
                *(v49[2] + 8 * v52) = heap_Calloc(*(*v6 + 8), 1, HIWORD(__dst));
                v54 = *(v49[2] + 8 * v52);
                if (!v54)
                {
                  break;
                }

                HIDWORD(v106) = HIWORD(__dst);
                StringZ = ssftriff_reader_ReadStringZ(v7, __src, v109, v108, v54, &v106 + 1);
                if ((StringZ & 0x80000000) != 0)
                {
                  goto LABEL_133;
                }

                if (HIDWORD(v106) != HIWORD(__dst))
                {
                  goto LABEL_127;
                }

                v53 = v108 + HIDWORD(v106);
                v108 += HIDWORD(v106);
                if (++v52 >= *(v49 + 6))
                {
                  goto LABEL_64;
                }
              }

LABEL_131:
              log_OutPublic(*(*v6 + 32), v6[23], 24048, 0);
LABEL_132:
              StringZ = FEDATA_ERROR(10);
              v43 = 1;
              goto LABEL_42;
            }
          }
        }
      }

LABEL_12:
      StringZ = ssftriff_reader_CloseChunk(v7);
      if ((StringZ & 0x80000000) != 0)
      {
        goto LABEL_125;
      }

      v20 = *v17;
    }

    if (v20 <= 5 && ((1 << v20) & 0x2D) != 0)
    {
      v24 = heap_Calloc(*(*v6 + 8), 1, 72);
      *(v17 + 8) = v24;
      if (!v24)
      {
        goto LABEL_40;
      }

      v20 = *v17;
    }

    if (v20 <= 5 && ((1 << v20) & 0x36) != 0)
    {
      v25 = heap_Calloc(*(*v6 + 8), 1, 64);
      *(v17 + 16) = v25;
      if (!v25)
      {
LABEL_40:
        log_OutPublic(*(*v6 + 32), v6[23], 24048, 0);
        v42 = FEDATA_ERROR(10);
        goto LABEL_41;
      }

      v20 = *v17;
    }

    if (v20 > 5 || ((1 << v20) & 0x2D) == 0)
    {
      goto LABEL_79;
    }

    Chunk = ssftriff_reader_FindChunk(v7, "TDAT", 1, &v109, &__src);
    if ((Chunk & 0x80000000) != 0)
    {
      goto LABEL_124;
    }

    v108 = 0;
    v26 = __src;
    *(v17 + 40) = __src;
    cstdlib_memcpy(&__dst + 2, v26, 2uLL);
    v108 += 2;
    ++HIWORD(__dst);
    v27 = heap_Calloc(*(*v6 + 8), 1, HIWORD(__dst));
    **(v17 + 8) = v27;
    if (!v27)
    {
      goto LABEL_131;
    }

    HIDWORD(v106) = HIWORD(__dst);
    StringZ = ssftriff_reader_ReadStringZ(v7, __src, v109, v108, v27, &v106 + 1);
    if ((StringZ & 0x80000000) != 0)
    {
      goto LABEL_133;
    }

    if (HIDWORD(v106) != HIWORD(__dst))
    {
      goto LABEL_127;
    }

    v108 += HIDWORD(v106);
    cstdlib_memcpy((*(v17 + 8) + 8), __src + v108, 2uLL);
    v108 += 2;
    cstdlib_memcpy((*(v17 + 8) + 12), __src + v108, 2uLL);
    v108 += 2;
    cstdlib_memcpy(&v110, __src + v108, 4uLL);
    v108 += 4;
    cstdlib_memcpy(&v109 + 4, __src + v108, 4uLL);
    v28 = v108 + 4;
    v29 = *(v17 + 8);
    *(v29 + 16) = v28;
    v30 = __src;
    *(v29 + 24) = __src + v28;
    v31 = (v110 + v28);
    v108 = v31;
    cstdlib_memcpy(&v106, &v30[v31], 4uLL);
    v32 = v108 + v106 + 4;
    v33 = *(v17 + 8);
    *(v33 + 40) = v32;
    *(v33 + 32) = __src + v32;
    v108 = HIDWORD(v109) + v32;
    if (*(v33 + 8))
    {
      break;
    }

    v100 = v9;
LABEL_68:
    v55 = *(v33 + 12);
    if (v55)
    {
      v56 = heap_Calloc(*(*v6 + 8), 1, 16 * v55);
      v57 = *(v17 + 8);
      *(v57 + 64) = v56;
      if (!v56)
      {
        log_OutPublic(*(*v6 + 32), v6[23], 24048, 0);
        goto LABEL_137;
      }

      if (*(v57 + 12))
      {
        v58 = 0;
        v59 = 0;
        do
        {
          v60 = *(v57 + 64);
          v61 = v60 + v58;
          if (v100 == 1)
          {
            cstdlib_memcpy((v61 + 4), __src + v108, 4uLL);
            v62 = v108 + 4;
            v108 += 4;
          }

          else
          {
            cstdlib_memcpy(&__dst, __src + v108, 2uLL);
            v108 += 2;
            *(v61 + 4) = __dst;
            v62 = v108;
          }

          v63 = (v60 + v58);
          cstdlib_memcpy(v63 + 2, __src + v62, 2uLL);
          v108 += 2;
          cstdlib_memcpy(v63 + 10, __src + v108, 2uLL);
          v108 += 2;
          cstdlib_memcpy(v61, __src + v108, 2uLL);
          v108 += 2;
          cstdlib_memcpy(&__dst, __src + v108, 2uLL);
          v108 += 2;
          v63[3] = __dst;
          ++v59;
          v57 = *(v17 + 8);
          v58 += 16;
        }

        while (v59 < *(v57 + 12));
      }
    }

    v40 = ssftriff_reader_DetachChunkData(v7, (v17 + 32), &__src);
    if ((v40 & 0x80000000) != 0)
    {
LABEL_134:
      StringZ = v40;
      v43 = 1;
      v9 = v100;
      goto LABEL_126;
    }

    v64 = __src;
    *(v17 + 40) = __src;
    v65 = *(v17 + 8);
    v66 = &v64[*(v65 + 16)];
    v67 = &v64[*(v65 + 40)];
    *(v65 + 24) = v66;
    *(v65 + 32) = v67;
    StringZ = ssftriff_reader_CloseChunk(v7);
    v9 = v100;
    if ((StringZ & 0x80000000) != 0)
    {
      goto LABEL_125;
    }

    v20 = *v17;
LABEL_79:
    if (v20 <= 5 && ((1 << v20) & 0x36) != 0)
    {
      Chunk = ssftriff_reader_FindChunk(v7, "DDAT", 1, &v109, &__src);
      if ((Chunk & 0x80000000) != 0)
      {
LABEL_124:
        StringZ = Chunk;
LABEL_125:
        v43 = 0;
      }

      else
      {
        v108 = 0;
        cstdlib_memcpy(&__dst + 2, __src, 2uLL);
        v108 += 2;
        ++HIWORD(__dst);
        v68 = heap_Calloc(*(*v6 + 8), 1, HIWORD(__dst));
        **(v17 + 16) = v68;
        if (!v68)
        {
          goto LABEL_131;
        }

        HIDWORD(v106) = HIWORD(__dst);
        StringZ = ssftriff_reader_ReadStringZ(v7, __src, v109, v108, v68, &v106 + 1);
        if ((StringZ & 0x80000000) == 0)
        {
          if (HIDWORD(v106) != HIWORD(__dst))
          {
            goto LABEL_127;
          }

          v108 += HIDWORD(v106);
          cstdlib_memcpy(&__dst + 2, __src + v108, 2uLL);
          v108 += 2;
          v69 = v108;
          v70 = *(v17 + 16);
          *(v70 + 8) = HIWORD(__dst);
          cstdlib_memcpy((v70 + 24), __src + v69, 2uLL);
          v108 += 2;
          cstdlib_memcpy((*(v17 + 16) + 50), __src + v108, 2uLL);
          v108 += 2;
          v71 = *(v17 + 16);
          *(v71 + 56) = 0;
          if (*(v71 + 50))
          {
            v72 = heap_Calloc(*(*v6 + 8), 1, 8 * *(v71 + 50));
            v71 = *(v17 + 16);
            *(v71 + 56) = v72;
            if (!v72)
            {
              goto LABEL_131;
            }

            if (*(v71 + 50))
            {
              v73 = 0;
              v74 = v108;
              do
              {
                cstdlib_memcpy(&__dst + 2, __src + v74, 2uLL);
                v108 += 2;
                ++HIWORD(__dst);
                *(*(*(v17 + 16) + 56) + 8 * v73) = heap_Calloc(*(*v6 + 8), 1, HIWORD(__dst));
                v75 = *(*(*(v17 + 16) + 56) + 8 * v73);
                if (!v75)
                {
                  goto LABEL_131;
                }

                HIDWORD(v106) = HIWORD(__dst);
                StringZ = ssftriff_reader_ReadStringZ(v7, __src, v109, v108, v75, &v106 + 1);
                if ((StringZ & 0x80000000) != 0)
                {
                  goto LABEL_133;
                }

                if (HIDWORD(v106) != HIWORD(__dst))
                {
                  goto LABEL_127;
                }

                v74 = v108 + HIDWORD(v106);
                v108 += HIDWORD(v106);
                ++v73;
                v71 = *(v17 + 16);
              }

              while (v73 < *(v71 + 50));
            }
          }

          if (*(v71 + 24))
          {
            v76 = heap_Calloc(*(*v6 + 8), 1, 72 * *(v71 + 24));
            v71 = *(v17 + 16);
            *(v71 + 16) = v76;
            if (!v76)
            {
              goto LABEL_131;
            }

            if (*(v71 + 24))
            {
              v77 = 0;
              do
              {
                v78 = *(v71 + 16) + 72 * v77;
                cstdlib_memcpy(&__dst + 2, __src + v108, 2uLL);
                v108 += 2;
                v79 = HIWORD(__dst);
                *(v78 + 56) = HIWORD(__dst);
                v80 = heap_Calloc(*(*v6 + 8), 1, v79 + 1);
                *(v78 + 48) = v80;
                if (!v80)
                {
                  goto LABEL_131;
                }

                cstdlib_memcpy(v80, __src + v108, HIWORD(__dst));
                *(*(v78 + 48) + HIWORD(__dst)) = 0;
                v108 += *(v78 + 56);
                cstdlib_memcpy(v78, __src + v108, 2uLL);
                v108 += 2;
                cstdlib_memcpy((v78 + 2), __src + v108, 2uLL);
                v108 += 2;
                cstdlib_memcpy(&__dst, __src + v108, 2uLL);
                v108 += 2;
                *(v78 + 60) = __dst;
                cstdlib_memcpy(&__dst, __src + v108, 2uLL);
                v108 += 2;
                *(v78 + 64) = __dst;
                cstdlib_memcpy(&__dst, __src + v108, 2uLL);
                v108 += 2;
                v81 = __dst;
                *(v78 + 8) = __dst;
                if (v81 == 1)
                {
                  cstdlib_memcpy((v78 + 4), __src + v108, 2uLL);
                  v108 += 2;
                  cstdlib_memcpy((v78 + 12), __src + v108, 2uLL);
                  v108 += 2;
                }

                if (!v104)
                {
                  cstdlib_memcpy((v78 + 40), __src + v108, 2uLL);
                  v82 = v108 + 2;
                  v108 += 2;
                  if (*(v78 + 40))
                  {
                    v83 = 0;
                    do
                    {
                      cstdlib_memcpy(&__dst, __src + v82, 2uLL);
                      v108 += 2;
                      cstdlib_memcpy(&__dst, __src + v108, 2uLL);
                      v82 = v108 + 2;
                      v108 += 2;
                      ++v83;
                    }

                    while (v83 < *(v78 + 40));
                  }
                }

                ++v77;
                v71 = *(v17 + 16);
              }

              while (v77 < *(v71 + 24));
            }
          }

          cstdlib_memcpy((v71 + 48), __src + v108, 2uLL);
          v108 += 2;
          v84 = *(v17 + 16);
          v85 = *(v84 + 48);
          if (*(v84 + 48))
          {
            *(v84 + 40) = 0;
            v86 = heap_Calloc(*(v6[3] + 8), 1, 16 * v85);
            v87 = *(v17 + 16);
            *(v87 + 40) = v86;
            if (!v86)
            {
              goto LABEL_131;
            }

            if (*(v87 + 48))
            {
              v88 = 0;
              do
              {
                v102 = v88;
                v89 = (*(v87 + 40) + 16 * v88);
                cstdlib_memcpy(v89 + 1, __src + v108, 2uLL);
                v108 += 2;
                *v89 = 0;
                v90 = heap_Calloc(*(*v6 + 8), 1, 24 * *(v89 + 4));
                *v89 = v90;
                if (!v90)
                {
                  goto LABEL_131;
                }

                if (*(v89 + 4))
                {
                  v91 = 0;
                  for (i = 0; i < *(v89 + 4); ++i)
                  {
                    v105 = 0;
                    *(*v89 + v91) = 0;
                    v93 = heap_Calloc(*(*v6 + 8), 1, 12);
                    *(*v89 + v91) = v93;
                    if (!v93)
                    {
                      goto LABEL_131;
                    }

                    v93[1] = 0;
                    if (v104)
                    {
                      cstdlib_memcpy(&v105, __src + v108++, 1uLL);
                      v94 = v108;
                      **(*v89 + v91) = v105;
                      cstdlib_memcpy(&v105, __src + v94, 1uLL);
                      ++v108;
                      *(*(*v89 + v91) + 4) = v105;
                    }

                    else
                    {
                      cstdlib_memcpy(v93, __src + v108, 2uLL);
                      v108 += 2;
                      cstdlib_memcpy((*(*v89 + v91) + 4), __src + v108, 2uLL);
                      v108 += 2;
                      if (v103 == 1)
                      {
                        *(*v89 + v91 + 8) = 0;
                        v95 = heap_Calloc(*(*v6 + 8), 1, 2);
                        *(*v89 + v91 + 8) = v95;
                        if (!v95)
                        {
                          goto LABEL_131;
                        }

                        cstdlib_memcpy(v95, __src + v108, 2uLL);
                        v108 += 2;
                        cstdlib_memcpy(&__dst + 2, __src + v108, 2uLL);
                        v108 += 2;
                        ++HIWORD(__dst);
                        v96 = heap_Calloc(*(*v6 + 8), 1, HIWORD(__dst));
                        *(*v89 + v91 + 16) = v96;
                        if (!v96)
                        {
                          log_OutPublic(*(*v6 + 32), v6[23], 24048, 0);
                          v97 = 10;
LABEL_141:
                          StringZ = FEDATA_ERROR(v97);
                          if ((StringZ & 0x80000000) == 0)
                          {
                            goto LABEL_129;
                          }

                          goto LABEL_142;
                        }

                        HIDWORD(v106) = HIWORD(__dst);
                        if ((ssftriff_reader_ReadStringZ(v7, __src, v109, v108, v96, &v106 + 1) & 0x80000000) != 0 || HIDWORD(v106) != HIWORD(__dst))
                        {
                          v97 = 0;
                          goto LABEL_141;
                        }

                        v108 += HIDWORD(v106);
                      }
                    }

                    v91 += 24;
                  }
                }

                v88 = v102 + 1;
                v87 = *(v17 + 16);
              }

              while (v102 + 1 < *(v87 + 48));
            }
          }

          v42 = ssftriff_reader_CloseChunk(v7);
LABEL_41:
          StringZ = v42;
          v43 = 0;
          goto LABEL_42;
        }

LABEL_133:
        v43 = 1;
      }

LABEL_126:
      log_OutPublic(*(*v6 + 32), v6[23], 24052, 0);
      if (!v43)
      {
        goto LABEL_128;
      }

      goto LABEL_127;
    }

LABEL_129:
    log_OutText(*(*v6 + 32), v6[23], 4, 0, "loaded data block %d", v16);
    v16 = v16 + 1;
    if (v16 >= *v11)
    {
      return StringZ;
    }
  }

  v34 = heap_Calloc(*(*v6 + 8), 1, 32 * *(v33 + 8));
  v33 = *(v17 + 8);
  *(v33 + 48) = v34;
  if (!v34)
  {
    goto LABEL_131;
  }

  v100 = v9;
  if (!*(v33 + 8))
  {
    goto LABEL_68;
  }

  v35 = 0;
  v36 = 16;
  while (1)
  {
    v99 = *(v33 + 48);
    v37 = v99 + v36;
    cstdlib_memcpy(&__dst, __src + v108, 2uLL);
    v108 += 2;
    *(v37 - 16) = __dst;
    cstdlib_memcpy((v99 + v36 - 12), __src + v108, 2uLL);
    v108 += 2;
    cstdlib_memcpy((v99 + v36 - 10), __src + v108, 2uLL);
    v108 += 2;
    cstdlib_memcpy((v99 + v36 + 8), __src + v108, 2uLL);
    v108 += 2;
    cstdlib_memcpy((v99 + v36 + 10), __src + v108, 2uLL);
    v108 += 2;
    cstdlib_memcpy((v99 + v36 + 12), __src + v108, 2uLL);
    v108 += 2;
    *(v37 - 8) = 0;
    if (*(v99 + v36 + 8))
    {
      v38 = heap_Calloc(*(*v6 + 8), 1, 56);
      v39 = v38;
      *(v37 - 8) = v38;
      if (!v38)
      {
        goto LABEL_136;
      }

      *v38 = &StaticIntPointers;
      *(v38 + 24) = 0;
      *(v38 + 16) = 0;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 32) = 0;
      v40 = FEData_readFunctionDataFromBinaryFile(v6, v7, *v6, v38, __src, &v108, v109);
      if ((v40 & 0x80000000) != 0)
      {
        goto LABEL_134;
      }
    }

    *(v99 + v36) = 0;
    if (*(v37 + 10))
    {
      break;
    }

LABEL_38:
    ++v35;
    v33 = *(v17 + 8);
    v36 += 32;
    if (v35 >= *(v33 + 8))
    {
      goto LABEL_68;
    }
  }

  v41 = heap_Calloc(*(*v6 + 8), 1, 56);
  v39 = v41;
  *(v99 + v36) = v41;
  if (v41)
  {
    *v41 = &StaticIntPointers;
    *(v41 + 24) = 0;
    *(v41 + 16) = 0;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 32) = 0;
    v40 = FEData_readFunctionDataFromBinaryFile(v6, v7, *v6, v41, __src, &v108, v109);
    if ((v40 & 0x80000000) != 0)
    {
      goto LABEL_134;
    }

    goto LABEL_38;
  }

LABEL_136:
  log_OutPublic(*(*v6 + 32), v6[23], 24048, v39);
LABEL_137:
  StringZ = FEDATA_ERROR(10);
  v43 = 1;
  v9 = v100;
LABEL_42:
  if ((StringZ & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

  if (v43)
  {
LABEL_127:
    ssftriff_reader_CloseChunk(v7);
  }

LABEL_128:
  if ((StringZ & 0x80000000) == 0)
  {
    goto LABEL_129;
  }

LABEL_142:
  *(*(*(a4 + 32) + 8) + 8 * v16) = 0;
  log_OutPublic(*(*v6 + 32), v6[23], 24044, 0);
LABEL_145:
  log_OutPublic(*(*v6 + 32), v6[23], 24052, 0);
  return StringZ;
}

uint64_t readDataBlockFromFile_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v52 = 0;
  inited = InitRsrcFunction(a1, a2, &v52);
  v5 = inited;
  if ((inited & 0x80000000) == 0)
  {
    if (v3)
    {
      v6 = *(v3 + 1);
      if (v6)
      {
        v7 = *v3;
        if (*v3)
        {
          v51 = inited;
          v8 = 0;
          v50 = v3;
          while (1)
          {
            v9 = *(*(v3 + 1) + 8 * v8);
            if (v9)
            {
              v11 = (v9 + 32);
              v10 = *(v9 + 32);
              if (v10)
              {
                v51 = ssftriff_reader_ReleaseChunkData(v10);
                if ((v51 & 0x80000000) != 0)
                {
                  return v51;
                }

                *v11 = 0;
                *(v9 + 40) = 0;
              }

              v12 = v52;
              v14 = *(v9 + 8);
              v13 = *(v9 + 16);
              v15 = *(v9 + 24);
              if (v14)
              {
                if (*v9 <= 5u && ((1 << *v9) & 0x2D) != 0)
                {
                  heap_Free(*(v52 + 8), *v14);
                  *v14 = 0;
                  v17 = *(v14 + 48);
                  if (v17)
                  {
                    if (*(v14 + 8))
                    {
                      v18 = 0;
                      v19 = 0;
                      do
                      {
                        v20 = *(v14 + 48) + v18;
                        v21 = *(v20 + 8);
                        if (v21)
                        {
                          FEData_freeEntry(v12, v21, 1);
                          heap_Free(*(v12 + 8), *(v20 + 8));
                          *(v20 + 8) = 0;
                        }

                        v22 = *(v20 + 16);
                        if (v22)
                        {
                          FEData_freeEntry(v12, v22, 1);
                          heap_Free(*(v12 + 8), *(v20 + 16));
                          *(v20 + 16) = 0;
                        }

                        ++v19;
                        v18 += 32;
                      }

                      while (v19 < *(v14 + 8));
                      v17 = *(v14 + 48);
                      v3 = v50;
                    }

                    heap_Free(*(v12 + 8), v17);
                    *(v14 + 48) = 0;
                  }

                  v23 = *(v14 + 64);
                  if (v23)
                  {
                    heap_Free(*(v12 + 8), v23);
                    *(v14 + 64) = 0;
                  }

                  heap_Free(*(v12 + 8), *(v9 + 8));
                  *(v9 + 8) = 0;
                }
              }

              if (v13)
              {
                if (*v9 <= 5u && ((1 << *v9) & 0x36) != 0)
                {
                  if (*v13)
                  {
                    heap_Free(*(v12 + 8), *v13);
                    *v13 = 0;
                  }

                  v25 = *(v13 + 56);
                  if (v25)
                  {
                    if (*(v13 + 50))
                    {
                      v26 = 0;
                      do
                      {
                        heap_Free(*(v12 + 8), *(*(v13 + 56) + 8 * v26));
                        *(*(v13 + 56) + 8 * v26++) = 0;
                      }

                      while (v26 < *(v13 + 50));
                      v25 = *(v13 + 56);
                    }

                    heap_Free(*(v12 + 8), v25);
                    *(v13 + 56) = 0;
                  }

                  if (*(v13 + 16))
                  {
                    if (*(v13 + 24))
                    {
                      v27 = 0;
                      v28 = 0;
                      do
                      {
                        v29 = *(v13 + 16) + v27;
                        heap_Free(*(v12 + 8), *(v29 + 48));
                        *(v29 + 48) = 0;
                        v30 = *(v29 + 16);
                        if (v30)
                        {
                          heap_Free(*(v12 + 8), v30);
                          *(v29 + 16) = 0;
                        }

                        ++v28;
                        v27 += 72;
                      }

                      while (v28 < *(v13 + 24));
                    }

                    v31 = *(v13 + 40);
                    v3 = v50;
                    if (v31)
                    {
                      v32 = *(v13 + 48);
                      if (v32)
                      {
                        for (i = 0; i < v32; ++i)
                        {
                          v34 = *(v13 + 40) + 16 * i;
                          v35 = *v34;
                          if (*v34)
                          {
                            if (*(v34 + 8))
                            {
                              v36 = 0;
                              v37 = 0;
                              do
                              {
                                heap_Free(*(v12 + 8), *(v35 + v36));
                                v38 = (*v34 + v36);
                                *v38 = 0;
                                heap_Free(*(v12 + 8), v38[1]);
                                v39 = *v34 + v36;
                                *(v39 + 8) = 0;
                                heap_Free(*(v12 + 8), *(v39 + 16));
                                v35 = *v34;
                                *(*v34 + v36 + 16) = 0;
                                ++v37;
                                v36 += 24;
                              }

                              while (v37 < *(v34 + 8));
                            }

                            heap_Free(*(v12 + 8), v35);
                            *v34 = 0;
                            v32 = *(v13 + 48);
                          }
                        }

                        v31 = *(v13 + 40);
                        v3 = v50;
                      }

                      heap_Free(*(v12 + 8), v31);
                      *(v13 + 40) = 0;
                    }

                    heap_Free(*(v12 + 8), *(v13 + 16));
                    *(v13 + 16) = 0;
                  }

                  heap_Free(*(v12 + 8), *(v9 + 16));
                  *(v9 + 16) = 0;
                }
              }

              if (v15)
              {
                v40 = *(v15 + 8);
                if (v40)
                {
                  v41 = *(v15 + 16);
                  if (v41)
                  {
                    for (j = 0; j < v41; ++j)
                    {
                      v43 = *(v15 + 8);
                      v44 = *(v43 + 8 * j);
                      if (v44)
                      {
                        if (*v44)
                        {
                          heap_Free(*(v12 + 8), *v44);
                          v43 = *(v15 + 8);
                          **(v43 + 8 * j) = 0;
                          v44 = *(v43 + 8 * j);
                        }

                        v45 = *(v44 + 16);
                        if (v45)
                        {
                          if (*(v44 + 12))
                          {
                            v46 = 0;
                            do
                            {
                              v47 = *(*(v44 + 16) + 8 * v46);
                              if (v47)
                              {
                                heap_Free(*(v12 + 8), v47);
                                *(*(*(*(v15 + 8) + 8 * j) + 16) + 8 * v46) = 0;
                                v43 = *(v15 + 8);
                              }

                              ++v46;
                              v44 = *(v43 + 8 * j);
                            }

                            while (v46 < *(v44 + 12));
                            v45 = *(v44 + 16);
                          }

                          heap_Free(*(v12 + 8), v45);
                          v48 = *(v15 + 8);
                          *(*(v48 + 8 * j) + 16) = 0;
                          v44 = *(v48 + 8 * j);
                        }

                        *(v44 + 12) = 0;
                        heap_Free(*(v12 + 8), v44);
                        *(*(v15 + 8) + 8 * j) = 0;
                        v41 = *(v15 + 16);
                      }
                    }

                    v40 = *(v15 + 8);
                  }

                  heap_Free(*(v12 + 8), v40);
                  *(v15 + 8) = 0;
                }

                *(v15 + 16) = 0;
                heap_Free(*(v12 + 8), v15);
              }

              if (*v11)
              {
                ssftriff_reader_ReleaseChunkData(*v11);
                *v11 = 0;
                *(v9 + 40) = 0;
              }

              heap_Free(*(v12 + 8), v9);
              v7 = *v3;
            }

            if (++v8 >= v7)
            {
              v6 = *(v3 + 1);
              v5 = v51;
              break;
            }
          }
        }

        heap_Free(*(v52 + 8), v6);
        heap_Free(*(v52 + 8), v3);
      }
    }
  }

  return v5;
}

uint64_t FERuntimeData_DumpMatch_NNTN(uint64_t a1, uint64_t a2, __int16 *a3, int a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0;
  if (*(a1 + 176))
  {
    if (a4 == 1)
    {
      v7 = "<LOGFE> ";
    }

    else
    {
      v7 = "";
    }

    cstdlib_strcpy(__dst, v7);
    FEData_blockData_getTokenData_NNTN(a1, *(a2 + 96), &v17);
    cstdlib_strncpy(*(a1 + 552), (*(a1 + 304) + *a3), (a3[1] - *a3));
    *(*(a1 + 552) - *a3 + a3[1]) = 0;
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s%20s [%d,%d] _%s_ (domainBlockID=%d, domainNum=%d)", __dst, *(a1 + 552), *a3, a3[1], *(a1 + 552), *(a2 + 104), *(a2 + 106));
    if (*(a2 + 82))
    {
      v8 = 0;
      v9 = (a2 + 44);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        if (v10 == -1 && v11 == 0xFFFF)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%30s[%d] [%d,%d] _NULL_", "MATCH");
        }

        else
        {
          cstdlib_strncpy(*(a1 + 552), (*(a1 + 304) + v10), (v11 - v10));
          *(*(a1 + 552) - *(v9 - 1) + *v9) = 0;
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%30s[%d] [%d,%d] _%s_", "MATCH", v8 + 1);
        }

        ++v8;
        v9 += 2;
      }

      while (v8 < *(a2 + 82));
    }

    if (*(a2 + 40))
    {
      v13 = 0;
      v14 = (a2 + 2);
      do
      {
        v15 = *v14;
        v14 += 2;
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%30s[%d] %s", "EXPANDEDORTH", v13++, (*(a1 + 504) + v15));
      }

      while (v13 < *(a2 + 40));
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0);

    return NNTNERROR(7);
  }
}

uint64_t FERuntimeData_DumpMatches_NNTN(uint64_t a1, const char *a2, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 548))
  {
    return 0;
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    if (a3 == 1)
    {
      v7 = "<LOGFE> ";
    }

    else
    {
      v7 = "";
    }

    cstdlib_strcpy(__dst, v7);
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%sfe_runtimedata : DumpMatches Begin %s", __dst, a2);
    if (*(v4 + 16))
    {
      for (i = *(v4 + 8); i; i = *i)
      {
        FERuntimeData_DumpMatch_NNTN(a1, (i + 12), i + 8, a3);
      }
    }

    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%sfe_runtimedata : DumpMatches End (%x)", __dst, 0);
    return 0;
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0);

  return NNTNERROR(7);
}

uint64_t FERuntimeData_DeleteMatch_NNTN(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(a1 + 176);
  if (*(v3 + 16))
  {
    v4 = (v3 + 8);
    v5 = (v3 + 8);
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        return 0;
      }

      v6 = *(v5 + 8);
      v7 = *a2;
      if (__PAIR64__(*(v5 + 9), v6) == __PAIR64__(a2[1], v7) && v5[15] == *(a3 + 96))
      {
        break;
      }

      if (v6 > v7)
      {
        return 0;
      }
    }

    v9 = *v5;
    v10 = v5[1];
    if (v10)
    {
      *v10 = v9;
      if (!v9)
      {
        return 0;
      }

      goto LABEL_14;
    }

    if (v9)
    {
      v9[1] = 0;
    }

    *v4 = v9;
    v9 = *v5;
    if (*v5)
    {
LABEL_14:
      v9[1] = v5[1];
    }
  }

  return 0;
}

uint64_t partialMatchFoundInBasicToken_NNTN(uint64_t result, __int16 *a2)
{
  v13 = 0;
  if (result)
  {
    v2 = result;
    v3 = *(*(result + 264) + 16);
    for (i = *(v3 + 80); i < *(v3 + 88); ++i)
    {
      __s1 = 0;
      v6 = LDOTreeNode_ComputeAbsoluteFrom(*i, &v13 + 1);
      if ((LH_ERROR_to_VERROR(v6) & 0x80000000) != 0)
      {
        break;
      }

      v7 = LDOTreeNode_ComputeAbsoluteTo(*i, &v13);
      if ((LH_ERROR_to_VERROR(v7) & 0x80000000) != 0)
      {
        break;
      }

      Type = LDOObject_GetType(*i, &__s1);
      if ((LH_ERROR_to_VERROR(Type) & 0x80000000) != 0)
      {
        break;
      }

      if (!cstdlib_strcmp(__s1, "TOKEN_ALPHA") || !cstdlib_strcmp(__s1, "TOKEN_DIGIT") || !cstdlib_strcmp(__s1, "TOKEN_PUNCT") || !cstdlib_strcmp(__s1, "TOKEN_WSPACE"))
      {
        v9 = *a2;
        if (__PAIR64__(v13, SWORD2(v13)) != __PAIR64__(a2[1], v9))
        {
          if (SWORD2(v13) >= v9)
          {
            LOWORD(v11) = a2[1];
          }

          else
          {
            v10 = v13;
            v11 = a2[1];
            if (v9 < v13)
            {
              goto LABEL_20;
            }
          }

          if (SWORD2(v13) < v11)
          {
            v11 = v11;
            v10 = v13;
            if (v11 < v13)
            {
LABEL_20:
              log_OutText(*(*v2 + 32), v2[23], 5, 0, "Regex match %d,%d bisects basic token %d,%d", v9, v11, HIDWORD(v13), v10);
              return 1;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t tokenizer_apply_regex_NNTN(uint64_t *a1, uint64_t a2, size_t **a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 44);
  v22 = 0;
  v7 = nuance_pcre_exec(a1[17], a1[18], *(a2 + 32), *a2, a1[38], *(a2 + 42), v6, *(a2 + 64), v23, 100);
  v8 = v24;
  if (v24 > *(a2 + 46))
  {
    goto LABEL_9;
  }

  if ((v7 & 0x80000000) != 0)
  {
    v9 = nuance_pcre_ErrorToLhError(v7);
    if (v9 >> 20 == 2213)
    {
      v10 = v9;
      if ((v9 & 0x1FFF) == 0xA)
      {
        v11 = 11002;
        goto LABEL_23;
      }

      if ((v9 & 0x1FFF) != 0x14)
      {
        v11 = 11027;
LABEL_23:
        log_OutPublic(*(*a1 + 32), a1[23], v11, "%s%x%s%s", "lhError", v9, " token:", *(a2 + 24));
        return v10;
      }

      goto LABEL_9;
    }

    v8 = v24;
  }

  v12 = v23[0];
  v13 = *(a2 + 16);
  v14 = *(v13 + 8);
  *v14 = v23[0];
  v14[1] = v8;
  if (!(v12 | v8))
  {
LABEL_9:
    v15 = 1;
    goto LABEL_10;
  }

  if (*(v13 + 44) == 1)
  {
    log_OutText(*(*a1 + 32), a1[23], 5, 0, "token %s already validated", *(a2 + 24));
  }

  else if (partialMatchFoundInBasicToken_NNTN(a1, v14) == 1)
  {
    log_OutText(*(*a1 + 32), a1[23], 5, 0, "token %s invalidated.", *(a2 + 24));
    goto LABEL_9;
  }

  *(**(a2 + 16) + 96) = *(a2 + 56);
  v20 = sortExpansionNNTN(a1, a2);
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

  v15 = 0;
  *(a2 + 72) = 1;
LABEL_10:
  v16 = LDOTreeNode_ComputeAbsoluteTo(**a3, &v22);
  v17 = LH_ERROR_to_VERROR(v16);
  v10 = v17;
  if ((v15 & 1) == 0 && (v17 & 0x80000000) == 0)
  {
    do
    {
      if (v22 >= *(*(*(a2 + 16) + 8) + 2))
      {
        break;
      }

      v18 = (*a3)++;
      v19 = LDOTreeNode_ComputeAbsoluteTo(v18[1], &v22);
      v10 = LH_ERROR_to_VERROR(v19);
    }

    while ((v10 & 0x80000000) == 0);
  }

  return v10;
}

uint64_t tokenizer_ResolveMatches_NNTN(uint64_t a1)
{
  v44 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  if (!a1)
  {
    goto LABEL_76;
  }

  if (!*(a1 + 304))
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0);
LABEL_76:

    return NNTNERROR(7);
  }

  if (*(a1 + 548) == 1 && FERuntimeData_GetNumMatches(a1))
  {
    FERuntimeData_DumpMatches_NNTN(a1, "Dump at start of ResolveMatches", 0);
  }

  v42 = 0;
  if (!*(a1 + 312))
  {
    matched = 0;
    goto LABEL_81;
  }

  v2 = 0;
  v3 = 0;
  matched = 0;
  while (2)
  {
    FERuntimeData_GetKeyAtPos(a1, v3, &v43, &v41);
    if (!v43 || v2 != *v43)
    {
      ++v3;
      goto LABEL_73;
    }

    FERuntimeData_FindLongestMatch(a1, v43, &v44);
    LOWORD(v42) = *v43;
    HIWORD(v42) = v44;
    FERuntimeData_DeleteSubsumedkeys(a1, v43, v44);
    AllMatchesAtKey = FERuntimeData_GetAllMatchesAtKey(a1, &v42);
    if ((AllMatchesAtKey & 0x80000000) != 0)
    {
      return AllMatchesAtKey;
    }

    v6 = *(a1 + 386);
    if (v6 < 2)
    {
      goto LABEL_71;
    }

    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "applying token priority lists to resolve %d token clashes at position %d,%d", v6, v42, SHIWORD(v42));
    LODWORD(v7) = *(a1 + 386);
    if (*(a1 + 548) == 1 && *(a1 + 386))
    {
      v8 = 0;
      do
      {
        FEData_blockData_getTokenData_NNTN(a1, *(*(*(a1 + 376) + 8 * v8) + 96), &v40);
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "[%d] = token %s", v8++, v40);
        v7 = *(a1 + 386);
      }

      while (v8 < v7);
    }

    v46 = 0;
    v47 = 0;
    v45 = 0;
    AllMatchesAtKey = resetSolutionList(a1, v7);
    if ((AllMatchesAtKey & 0x80000000) != 0)
    {
      return AllMatchesAtKey;
    }

    if (!*(a1 + 386))
    {
      goto LABEL_53;
    }

    v9 = 0;
    v10 = 0;
    v11 = 4;
    do
    {
      AllMatchesAtKey = FEData_blockData_newGetDomainDefBlockInfo(a1, *(*(*(a1 + 376) + 8 * v9) + 104), &v45);
      if ((AllMatchesAtKey & 0x80000000) != 0)
      {
        return AllMatchesAtKey;
      }

      v12 = *(v45 + 8);
      v13 = *(a1 + 360);
      *(v13 + v11) = v12;
      if (v12 > v10)
      {
        v10 = v12;
      }

      ++v9;
      v14 = *(a1 + 386);
      v11 += 12;
    }

    while (v9 < v14);
    if (!*(a1 + 386))
    {
      goto LABEL_53;
    }

    v15 = 0;
    v16 = 0;
    v17 = (v13 + 4);
    v18 = 999;
    do
    {
      v19 = *v17;
      v17 += 3;
      if (v19 == v10)
      {
        ++v16;
        v18 = v15;
      }

      ++v15;
    }

    while (v14 != v15);
    if (v16 == 1)
    {
      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "priority list resolution by domain type : match %d");
      goto LABEL_66;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v18 = 999;
    do
    {
      *(*(a1 + 360) + 12 * v20) = 999;
      v23 = *(*(a1 + 376) + 8 * v20);
      FEData_blockData_newGetDomainEntry(a1, *(v23 + 104), *(v23 + 106), &v47);
      if (*(v47 + 8) != 1)
      {
        v24 = v22;
LABEL_48:
        v31 = *(a1 + 386);
        v22 = v24;
        goto LABEL_49;
      }

      FEData_blockData_newGetPriorityList_NNTN(a1, *(*(*(a1 + 376) + 8 * v20) + 104), *(v47 + 12), &v46);
      v24 = v46;
      if (!v46 || v46 == v22)
      {
        goto LABEL_48;
      }

      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "using priority list from match %d, to resolve", v21);
      v22 = v46;
      if (*(a1 + 386))
      {
        v25 = 0;
        v26 = 0;
        v27 = *(v46 + 4);
        do
        {
          if (*(v46 + 4))
          {
            v28 = 0;
            v29 = **(*(*(a1 + 376) + 8 * v25) + 96);
            v30 = *v46;
            while (*(v29 + 2) != *(*v30 + 2) || *(v29 + 4) != *(*v30 + 4))
            {
              ++v28;
              v30 += 24;
              if (*(v46 + 4) == v28)
              {
                goto LABEL_45;
              }
            }

            log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "token [%d] priority = %d", v26, v28);
            if (v27 > v28)
            {
              v27 = v28;
              *(*(a1 + 360) + 12 * v20) = v25;
              v18 = v25;
            }
          }

LABEL_45:
          ++v25;
          v31 = *(a1 + 386);
          v26 = v25;
        }

        while (v25 < v31);
        v22 = v46;
      }

      else
      {
        v31 = 0;
      }

LABEL_49:
      v21 = ++v20;
    }

    while (v20 < v31);
    if (v18 == 999)
    {
LABEL_53:
      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "no priority list resolution : return default match %d", 0);
      v18 = 0;
    }

    else if (v31)
    {
      v32 = 0;
      v33 = 0;
LABEL_56:
      v34 = (*(a1 + 360) + 12 * v32);
      do
      {
        v36 = *v34;
        v34 += 6;
        v35 = v36;
        if (v36 != 999 && v35 != v18)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "priority lists conflict in resolution : solution %d and %d", v35, v18);
          v31 = *(a1 + 386);
          ++v32;
          v33 = 1;
          if (v32 < v31)
          {
            goto LABEL_56;
          }

          goto LABEL_64;
        }

        ++v32;
      }

      while (v32 < v31);
      if ((v33 & 1) == 0)
      {
        goto LABEL_65;
      }

LABEL_64:
      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "priority list resolution : conflict found, so choosing match %d");
    }

    else
    {
LABEL_65:
      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "priority list resolution : match %d");
    }

LABEL_66:
    v37 = *(a1 + 386);
    if (v37)
    {
      for (i = 0; i < v37; ++i)
      {
        if (v18 != i)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "deleting match %d", i);
          FERuntimeData_DeleteMatch_NNTN(a1, &v42, *(*(a1 + 376) + 8 * i));
          v37 = *(a1 + 386);
        }
      }
    }

LABEL_71:
    matched = resetMatchList(a1, 0);
    if ((matched & 0x80000000) == 0)
    {
      v3 = v44;
LABEL_73:
      v43 = 0;
      v2 = v3;
      if (v3 >= *(a1 + 312))
      {
LABEL_81:
        if (*(a1 + 548) == 1)
        {
          if (FERuntimeData_GetNumMatches(a1))
          {
            FERuntimeData_DumpMatches_NNTN(a1, "Dump at end of ResolveMatches", 0);
          }
        }

        return matched;
      }

      continue;
    }

    return matched;
  }
}

uint64_t tokenizer_NNTN_ObjOpen(uint64_t *a1)
{
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : ObjOpen Begin");
  v2 = heap_Calloc(*(*a1 + 8), 1, 8);
  if (v2)
  {
    v3 = v2;
    a1[21] = v2;
    v4 = heap_Calloc(*(*a1 + 8), 1, 80);
    *v3 = v4;
    v5 = *a1;
    if (v4)
    {
      v6 = heap_Calloc(*(v5 + 8), 1, 40);
      **v3 = v6;
      v5 = *a1;
      if (v6)
      {
        v7 = heap_Calloc(*(v5 + 8), 1, 64);
        *(*v3 + 16) = v7;
        v5 = *a1;
        if (v7)
        {
          v8 = heap_Calloc(*(v5 + 8), 1, 4);
          *(*(*v3 + 16) + 8) = v8;
          if (v8)
          {
            *v8 = 0;
            v9 = heap_Calloc(*(*a1 + 8), 1, 112);
            v10 = *v3;
            v11 = *(*v3 + 16);
            *v11 = v9;
            if (v9)
            {
              *(v9 + 96) = 0;
              *(v11 + 40) = 0;
              *(v11 + 48) = 0;
              *(v11 + 16) = 0;
              *(v11 + 24) = 0;
              v12 = *v10;
              *v12 |= 4uLL;
              v12[3] = v11;
              v19 = 0;
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : InitCheckFunctions Begin");
              Map = FEFunctionMap_GetMap(a1, &v19);
              if ((Map & 0x80000000) != 0)
              {
                v17 = Map;
              }

              else
              {
                v14 = &off_287EEBD48;
                v15 = 8;
                do
                {
                  v16 = ssftmap_Insert(v19, *(v14 - 1), *v14);
                  if ((v16 & 0x80000000) != 0)
                  {
                    v17 = v16;
                    log_OutPublic(*(*a1 + 32), a1[23], 21011, 0);
                    goto LABEL_22;
                  }

                  v14 += 2;
                  --v15;
                }

                while (v15);
                v17 = FEFunctionMap_AddFunctionMap(a1, 0, v19);
                if ((v17 & 0x80000000) == 0)
                {
                  goto LABEL_23;
                }
              }

LABEL_22:
              ssftmap_ObjClose(v19);
LABEL_23:
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : InitCheckFunctions End (%x)", v17);
              if ((v17 & 0x80000000) == 0)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }
          }

          v5 = *a1;
        }
      }
    }

    log_OutPublic(*(v5 + 32), a1[23], 24048, 0);
    v17 = NNTNERROR(10);
    if ((v17 & 0x80000000) == 0)
    {
LABEL_19:
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : ObjOpen End (%x)", v17);
      return v17;
    }

LABEL_18:
    tokenizer_loc_ObjClose(a1);
    goto LABEL_19;
  }

  log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);

  return NNTNERROR(10);
}

uint64_t tokenizer_loc_ObjClose(void *a1)
{
  v2 = a1[21];
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : loc ObjClose Begin");
  v3 = *v2;
  if (*v2)
  {
    v4 = v3[2];
    if (v4)
    {
      if (v4[1])
      {
        heap_Free(*(*a1 + 8), v4[1]);
        v4 = *(*v2 + 16);
        v4[1] = 0;
      }

      if (*v4)
      {
        heap_Free(*(*a1 + 8), *v4);
        v4 = *(*v2 + 16);
        *v4 = 0;
      }

      heap_Free(*(*a1 + 8), v4);
      v3 = *v2;
      *(*v2 + 16) = 0;
    }

    if (*v3)
    {
      heap_Free(*(*a1 + 8), *v3);
      v3 = *v2;
      **v2 = 0;
    }

    heap_Free(*(*a1 + 8), v3);
    *v2 = 0;
  }

  heap_Free(*(*a1 + 8), v2);
  a1[21] = 0;
  return log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : loc ObjClose End (%x)", 0);
}

uint64_t tokenizer_NNTN_ObjClose(uint64_t *a1)
{
  if (a1[21])
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : ObjClose Begin");
    tokenizer_loc_ObjClose(a1);
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : ObjOpen End (%x)", 0);
    return 0;
  }

  else
  {

    return NNTNERROR(8);
  }
}

uint64_t fe_nnws_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2588942337;
  }

  result = 0;
  *a2 = &IFeNNWS;
  return result;
}

uint64_t fe_nnws_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2588942343;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t fe_nnws_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v5 = 2588942343;
  v29 = 0;
  v30 = 0;
  memset(v39, 0, sizeof(v39));
  if (a5)
  {
    v34 = 0;
    v32 = 0uLL;
    v33 = 0uLL;
    v31 = 0;
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a1, a2, &v37);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = InitRsrcFunction(a3, a4, &v38);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      v12 = heap_Calloc(*(v38 + 8), 1, 208);
      if (!v12)
      {
        log_OutPublic(*(v38 + 32), "FE_NNWS", 75000, 0);
        v5 = 2588942346;
LABEL_25:
        fe_nnws_ObjClose(*a5, *(a5 + 8));
        *a5 = 0;
        *(a5 + 8) = 0;
        return v5;
      }

      v13 = v12;
      Object = objc_GetObject(*(v38 + 48), "LINGDB", &v36);
      if ((Object & 0x80000000) != 0 || (*(v13 + 48) = *(v36 + 8), Object = objc_GetObject(*(v38 + 48), "FE_DCTLKP", &v35), (Object & 0x80000000) != 0) || (v15 = v35, *(v13 + 56) = *(v35 + 8), *(v13 + 64) = *(v15 + 16), *v13 = v38, *(v13 + 8) = a3, v16 = v37, *(v13 + 16) = a4, *(v13 + 24) = v16, *(v13 + 32) = a1, *(v13 + 40) = a2, *(v13 + 104) = 0, Object = fe_nnws_loadCfg(v13), (Object & 0x80000000) != 0) || (*(v13 + 128) = 0, Object = nn_word_lkp_GetInterface(1u, &v31), (Object & 0x80000000) != 0))
      {
LABEL_24:
        v5 = Object;
        log_OutText(*(*v13 + 32), "FE_NNWS", 2, 0, "fe_nnws ObjOpen Failed!");
        goto LABEL_25;
      }

      *(v13 + 128) = v31;
      *(v13 + 136) = safeh_GetNullHandle();
      *(v13 + 144) = v17;
      *(v13 + 152) = safeh_GetNullHandle();
      *(v13 + 160) = v18;
      *(v13 + 168) = safeh_GetNullHandle();
      *(v13 + 176) = v19;
      v20 = *(v13 + 136);
      v21 = *(*(v13 + 128) + 16);
      v22 = *(v13 + 144);
      v23 = *(v13 + 8);
      v24 = *(v13 + 16);
      if (*(v13 + 200))
      {
        Object = v21(v20, v22, "albert", v23, v24, v13 + 152);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        Object = v21(v20, v22, "char", v23, v24, v13 + 152);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_24;
        }

        v33 = *(v13 + 152);
        *(&v32 + 1) = v31;
        Object = objc_RegisterObject(*(v38 + 48), "NNCHRLKP", &v32);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_24;
        }
      }

      if (!*(v13 + 200))
      {
        Object = (*(*(v13 + 128) + 16))(*(v13 + 136), *(v13 + 144), "nnws_wlist", *(v13 + 8), *(v13 + 16), v13 + 168);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_24;
        }
      }

      Object = fe_nnws_CreateBrokerString(*v13, v39, "nnws_");
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_24;
      }

      v25 = fi_init(a3, a4, a1, a2, &v30, 0, v39, "FINN", 1, 0);
      if ((v25 & 0x80000000) != 0)
      {
        v5 = v25;
        log_OutText(*(*v13 + 32), "FE_NNWS", 5, 0, "create FI model failed");
      }

      else
      {
        *(v13 + 80) = v30;
        v26 = fe_nnws_tagInit(*v13, &v29);
        if ((v26 & 0x80000000) != 0)
        {
          v5 = v26;
          log_OutText(*(*v13 + 32), "FE_NNWS", 5, 0, "create SBME tags failed");
        }

        else
        {
          *(v13 + 120) = v29;
          v5 = fe_nnws_tryLoadingIGTree(*(v13 + 8), *(v13 + 16), *v13, (v13 + 184));
          if ((v5 & 0x80000000) != 0)
          {
            v27 = *(v13 + 184);
            if (v27)
            {
              igtree_Deinit(*v13, v27);
              heap_Free(*(*v13 + 8), *(v13 + 184));
              v5 = 0;
              *(v13 + 184) = 0;
            }

            else
            {
              v5 = 0;
            }
          }

          *a5 = v13;
          *(a5 + 8) = 62346;
        }
      }
    }
  }

  return v5;
}

uint64_t fe_nnws_ObjClose(uint64_t *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 62346, 208);
  if ((v3 & 0x80000000) != 0)
  {
    return 2588942344;
  }

  v4 = v3;
  if (a1)
  {
    if (a1[6])
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v5 = a1[16];
    if (v5)
    {
      v4 = (*(v5 + 24))(a1[19], a1[20]);
      v6 = (*(a1[16] + 24))(a1[21], a1[22]);
      if ((v4 & 0x80000000) == 0 && (v6 & 0x80000000) == 0)
      {
        objc_UnregisterObject(*(*a1 + 48), "NNCHRLKP");
      }
    }

    v7 = a1[14];
    if (v7)
    {
      heap_Free(*(*a1 + 8), v7);
      a1[14] = 0;
    }

    v8 = a1[10];
    if (v8)
    {
      v4 = fi_deinit(*a1, a1[3], v8);
    }

    if (a1[15])
    {
      for (i = 0; i != 32; i += 8)
      {
        heap_Free(*(*a1 + 8), *(a1[15] + i));
        *(a1[15] + i) = 0;
      }

      heap_Free(*(*a1 + 8), a1[15]);
      a1[15] = 0;
    }

    v10 = a1[23];
    if (v10)
    {
      igtree_Deinit(*a1, v10);
      heap_Free(*(*a1 + 8), a1[23]);
      a1[23] = 0;
    }

    heap_Free(*(*a1 + 8), a1);
  }

  return v4;
}

uint64_t fe_nnws_ObjReopen(void *a1, int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v4 = 2588942342;
  v23 = 0;
  memset(v28, 0, sizeof(v28));
  if ((safeh_HandleCheck(a1, a2, 62346, 208) & 0x80000000) != 0)
  {
    return 2588942344;
  }

  if (a1)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v5 = a1[16];
    if (v5)
    {
      v6 = (*(v5 + 24))(a1[19], a1[20]);
      v7 = (*(a1[16] + 24))(a1[21], a1[22]);
      if ((v6 & 0x80000000) == 0 && (v7 & 0x80000000) == 0)
      {
        objc_UnregisterObject(*(*a1 + 48), "NNCHRLKP");
      }
    }

    v8 = a1[10];
    if (v8)
    {
      Cfg = fi_deinit(*a1, a1[3], v8);
      if ((Cfg & 0x80000000) != 0)
      {
LABEL_29:
        v4 = Cfg;
LABEL_30:
        log_OutText(*(*a1 + 32), "FE_NNWS", 2, 0, "fe_nnws ObjReopen Failed!");
        fe_nnws_ObjClose(a1, a2);
        return v4;
      }

      a1[10] = 0;
    }

    v10 = a1[14];
    if (v10)
    {
      heap_Free(*(*a1 + 8), v10);
      a1[14] = 0;
    }

    v12 = a1 + 23;
    v11 = a1[23];
    if (v11)
    {
      igtree_Deinit(*a1, v11);
      heap_Free(*(*a1 + 8), a1[23]);
      a1[23] = 0;
    }

    a1[13] = 0;
    Cfg = fe_nnws_loadCfg(a1);
    if ((Cfg & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

    Cfg = nn_word_lkp_GetInterface(1u, &v27);
    if ((Cfg & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

    a1[16] = v27;
    a1[17] = safeh_GetNullHandle();
    a1[18] = v13;
    a1[19] = safeh_GetNullHandle();
    a1[20] = v14;
    a1[21] = safeh_GetNullHandle();
    a1[22] = v15;
    v16 = a1[17];
    v17 = *(a1[16] + 16);
    v18 = a1[18];
    v19 = a1[1];
    v20 = a1[2];
    if (*(a1 + 50))
    {
      Cfg = v17(v16, v18, "albert", v19, v20, a1 + 19);
      if ((Cfg & 0x80000000) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      Cfg = v17(v16, v18, "char", v19, v20, a1 + 19);
      if ((Cfg & 0x80000000) != 0)
      {
        goto LABEL_29;
      }

      v25 = *(a1 + 19);
      *(&v24 + 1) = v27;
      Cfg = objc_RegisterObject(*(*a1 + 48), "NNCHRLKP", &v24);
      if ((Cfg & 0x80000000) != 0)
      {
        goto LABEL_29;
      }
    }

    if (!*(a1 + 50))
    {
      Cfg = (*(a1[16] + 16))(a1[17], a1[18], "nnws_wlist", a1[1], a1[2], a1 + 21);
      if ((Cfg & 0x80000000) != 0)
      {
        goto LABEL_29;
      }
    }

    Cfg = fe_nnws_CreateBrokerString(*a1, v28, "nnws_");
    if ((Cfg & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

    v21 = fi_init(a1[1], a1[2], a1[4], a1[5], &v23, 0, v28, "FINN", 1, 0);
    if ((v21 & 0x80000000) != 0)
    {
      v4 = v21;
      log_OutText(*(*a1 + 32), "FE_NNWS", 5, 0, "re-create FI model failed");
      goto LABEL_30;
    }

    a1[10] = v23;
    v4 = fe_nnws_tryLoadingIGTree(a1[1], a1[2], *a1, a1 + 23);
    if ((v4 & 0x80000000) != 0)
    {
      if (*v12)
      {
        igtree_Deinit(*a1, *v12);
        heap_Free(*(*a1 + 8), a1[23]);
        v4 = 0;
        a1[23] = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t fe_nnws_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62346, 208);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2588942344;
  }
}

uint64_t fe_nnws_Process(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v142 = 0;
  v137 = 0;
  __s = 0;
  v5 = 2588942346;
  v136 = 0;
  v135 = 0;
  v133 = 0;
  v134 = 0;
  v132 = 0;
  *a5 = 1;
  if (!a1)
  {
    return 2588942343;
  }

  v141 = 0;
  v140 = 0;
  v139 = 0;
  v9 = log_GetLogLevel(*(*a1 + 32)) > 4;
  v10 = (*(a1[6] + 104))(a3, a4, 1, 0, &v142);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = v10;
LABEL_117:
    v12 = 0;
    goto LABEL_118;
  }

  v11 = (*(a1[6] + 184))(a3, a4, v142, 0, &v140);
  v12 = 0;
  if ((v11 & 0x80000000) != 0 || v140 != 1)
  {
    goto LABEL_118;
  }

  v11 = (*(a1[6] + 176))(a3, a4, v142, 0, &__s, &v141 + 2);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  if (HIWORD(v141) < 2u)
  {
    return v11;
  }

  v13 = *(*a1 + 8);
  v14 = cstdlib_strlen(__s);
  v15 = heap_Alloc(v13, v14 + 1);
  v137 = v15;
  if (!v15)
  {
    log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0);
    v12 = 0;
LABEL_214:
    v11 = 2588942346;
    goto LABEL_118;
  }

  v16 = v15;
  cstdlib_strcpy(v15, __s);
  v17 = cstdlib_strlen(v16);
  v18 = Utf8_LengthInUtf8chars(v16, v17);
  v19 = heap_Calloc(*(*a1 + 8), v18, 56);
  v134 = v19;
  if (!v19)
  {
    goto LABEL_213;
  }

  v20 = v19;
  v21 = a1[6];
  v125 = *a1;
  v22 = v142;
  v151 = 0;
  v150 = 0;
  v148 = 0;
  v149 = 0;
  v146 = 0;
  v147 = 0;
  v145 = 0;
  UTF8Char = (*(v21 + 176))(a3, a4, v142, 1, &v145, &v149 + 2);
  if ((UTF8Char & 0x80000000) != 0 || (UTF8Char = (*(v21 + 104))(a3, a4, 3, v22, &v149), (UTF8Char & 0x80000000) != 0))
  {
    LODWORD(v29) = 0;
LABEL_145:
    v5 = UTF8Char;
    goto LABEL_146;
  }

  v24 = v149;
  v115 = v22;
  if (v149)
  {
    while (1)
    {
      v144 = 0;
      v143 = 0;
      v25 = (*(v21 + 168))(a3, a4, v24, 0, 1, &v144, &v143);
      if ((v25 & 0x80000000) != 0)
      {
        goto LABEL_257;
      }

      if (v144 == 6)
      {
        break;
      }

      v25 = (*(v21 + 120))(a3, a4, v149, &v149);
      if ((v25 & 0x80000000) != 0)
      {
        goto LABEL_257;
      }

      v24 = v149;
      if (!v149)
      {
        goto LABEL_16;
      }
    }

    v25 = (*(v21 + 168))(a3, a4, v149, 1, 1, &v146 + 4, &v143);
    if ((v25 & 0x80000000) != 0)
    {
      goto LABEL_257;
    }

    v25 = (*(v21 + 168))(a3, a4, v149, 2, 1, &v146, &v143);
    if ((v25 & 0x80000000) != 0)
    {
      goto LABEL_257;
    }

    v103 = (*(v21 + 184))(a3, a4, v149, 8, &v148 + 2);
    if ((v103 & 0x80000000) != 0)
    {
      goto LABEL_227;
    }

    if (HIWORD(v148) == 1)
    {
      v103 = (*(v21 + 168))(a3, a4, v149, 8, 1, &v151, &v143);
      if ((v103 & 0x80000000) != 0)
      {
        goto LABEL_227;
      }
    }

    else
    {
      v151 = v146 - HIDWORD(v146);
    }

    v103 = (*(v21 + 176))(a3, a4, v149, 4, &v150, &v143);
    if ((v103 & 0x80000000) != 0)
    {
LABEL_227:
      v5 = v103;
      LODWORD(v29) = 0;
      goto LABEL_146;
    }

    v104 = cstdlib_strcmp(v150, "_PR_");
    v26 = 0;
    v116 = v104 == 0;
  }

  else
  {
LABEL_16:
    v116 = 0;
    v26 = 1;
  }

  v27 = HIWORD(v149);
  v121 = v20;
  if (!HIWORD(v149))
  {
    LODWORD(v29) = 0;
    goto LABEL_148;
  }

  v123 = v26;
  v28 = 0;
  v128 = 0;
  v129 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 40;
  v33 = 1;
  v120 = v18;
  v131 = v21;
  do
  {
    v34 = v145;
    v35 = (v145 + 32 * v28);
    v36 = *v35;
    if (*v35 != 1)
    {
      if (v29 && (v50 = &v20[7 * (v29 - 1)], *(v50 + 36) = 0x100000001, v28 >= 2) && v36 == 99)
      {
        if (*(v35 - 8) == 1 && v35[3] == *(v35 - 5))
        {
          *(v50 + 12) = 1;
        }
      }

      else if (v36 == 0x4000)
      {
        v30 = v35[3];
      }

      goto LABEL_113;
    }

    v30 += v31;
    v37 = v35[3];
    v126 = v30;
    v118 = v32;
    v119 = v28;
    v117 = v33;
    if (v37 > v30 && v35[1] > v30)
    {
      v38 = &v20[7 * v29];
      *(v38 + 36) = 1;
      *(v38 + 2) = v31;
      *(v38 + 3) = v31;
      *(v38 + 4) = v37 + ~v30;
      v39 = v31;
      v40 = heap_Alloc(*(v125 + 8), 4);
      *v38 = v40;
      if (!v40)
      {
LABEL_223:
        log_OutPublic(*(v125 + 32), "FE_NNWS", 75000, 0);
        goto LABEL_146;
      }

      cstdlib_strcpy(v40, "ENG");
      v41 = *(v38 + 4);
      v42 = (v41 + v39);
      v128 += v41;
      v129 = v42;
      v29 = (v29 + 1);
      v27 = HIWORD(v149);
      v34 = v145;
      v20 = v121;
      v32 = v118;
      v28 = v119;
      v30 = v126;
      v31 = v42;
      v21 = v131;
      v33 = v117;
    }

    v43 = v34 + 32 * v28;
    v44 = 0;
    if (v28 + 1 >= v27)
    {
LABEL_30:
      v48 = *(v34 + 16) + *(v34 + 12);
      v49 = v44 + *(v43 + 12);
    }

    else
    {
      v45 = (v34 + v32);
      v46 = v33;
      while (*(v45 - 2) != 1)
      {
        v47 = *v45;
        v45 += 8;
        if (v47 == 1)
        {
          ++v44;
        }

        if (v27 == ++v46)
        {
          goto LABEL_30;
        }
      }

      v48 = *(v34 + 32 * v46 + 12);
      v49 = v44 + *(v43 + 12);
    }

    v122 = v48 - v49;
    if (v29 >= v18)
    {
      goto LABEL_111;
    }

    v127 = 0;
    v124 = 1;
    while (1)
    {
      v51 = v31;
      if (cstdlib_strlen(v16) <= v128 || v127 >= v122)
      {
        break;
      }

      if (v149 && v123 == 1)
      {
        if (v51 < v146)
        {
          v123 = 1;
          goto LABEL_63;
        }

        LODWORD(v52) = v29;
        do
        {
          v25 = (*(v131 + 120))(a3, a4);
          if ((v25 & 0x80000000) != 0)
          {
            goto LABEL_257;
          }

          if (!v149)
          {
            v123 = 1;
            goto LABEL_63;
          }

          v144 = 0;
          v143 = 0;
          v25 = (*(v131 + 168))(a3, a4, v149, 0, 1, &v144, &v143);
          if ((v25 & 0x80000000) != 0)
          {
            goto LABEL_257;
          }
        }

        while (v144 != 6);
        v25 = (*(v131 + 168))(a3, a4, v149, 1, 1, &v146 + 4, &v143);
        if ((v25 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        v25 = (*(v131 + 168))(a3, a4, v149, 2, 1, &v146, &v143);
        if ((v25 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        v53 = (*(v131 + 184))(a3, a4, v149, 8, &v148 + 2);
        if ((v53 & 0x80000000) != 0)
        {
LABEL_235:
          v5 = v53;
LABEL_222:
          LODWORD(v29) = v52;
LABEL_146:
          v135 = v29;
          v12 = 1;
          v11 = v5;
LABEL_118:
          v73 = v137;
          if (!v137)
          {
            goto LABEL_120;
          }

LABEL_119:
          heap_Free(*(*a1 + 8), v73);
          goto LABEL_120;
        }

        if (HIWORD(v148) == 1)
        {
          v53 = (*(v131 + 168))(a3, a4, v149, 8, 1, &v151, &v143);
          v54 = v131;
          if ((v53 & 0x80000000) != 0)
          {
            goto LABEL_235;
          }
        }

        else
        {
          v151 = v146 - HIDWORD(v146);
          v54 = v131;
        }

        v53 = (*(v54 + 176))(a3, a4, v149, 4, &v150, &v143);
        if ((v53 & 0x80000000) != 0)
        {
          goto LABEL_235;
        }

        v123 = 0;
        v116 = cstdlib_strcmp(v150, "_PR_") == 0;
      }

LABEL_63:
      UTF8Char = utf8_getUTF8Char(v16, v129, __src);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_145;
      }

      v52 = v29;
      if (utf8_IsChineseLetter(__src))
      {
        v55 = 1;
        v56 = "ENG";
        v30 = v126;
        v31 = v51;
LABEL_68:
        v21 = v131;
        goto LABEL_69;
      }

      v31 = v51;
      v55 = 0;
      v56 = "NUM";
      if (__src[0] - 48 < 0xA)
      {
        v30 = v126;
        goto LABEL_68;
      }

      v30 = v126;
      v21 = v131;
      if ((__src[0] - 35 > 0x3C || ((1 << (__src[0] - 35)) & 0x1800000004000503) == 0) && __src[0] != 124)
      {
        v55 = (__src[0] & 0xDFu) - 65 >= 0x1A && (__src[0] - 38 > 0x1A || ((1 << (__src[0] - 38)) & 0x4000003) == 0);
        v56 = "ENG";
      }

LABEL_69:
      if (!v149 || v129 != HIDWORD(v146))
      {
        if (v55)
        {
          if (v124)
          {
            v124 = 1;
            v29 = v52;
          }

          else
          {
            v29 = v52;
            v68 = &v20[7 * v52];
            if (**v68 == 124)
            {
              v124 = 0;
            }

            else
            {
              *(v68 + 4) = v129 - v31;
              v29 = (v52 + 1);
              v124 = 1;
              LODWORD(v31) = v129;
            }
          }

          if (__src[0] == 32)
          {
            v31 = (v31 + 1);
            ++v127;
            ++v128;
            v129 = v31;
LABEL_104:
            v18 = v120;
            goto LABEL_105;
          }

          v69 = &v20[7 * v29];
          *(v69 + 9) = (v69[4] & 0xFFFFFFFE) == 2;
          *(v69 + 10) = 0;
          *(v69 + 2) = v31;
          *(v69 + 3) = v31;
          v70 = v31;
          LODWORD(v52) = v29;
          v60 = utf8_determineUTF8CharLength(v16[v31]);
          *(v69 + 4) = v60;
          v130 = *(v125 + 8);
          v71 = cstdlib_strlen(__src);
          v72 = heap_Calloc(v130, 1, v71 + 1);
          *v69 = v72;
          if (!v72)
          {
LABEL_228:
            log_OutPublic(*(v125 + 32), "FE_NNWS", 75000, 0);
            goto LABEL_222;
          }

          cstdlib_strcpy(v72, __src);
          v61 = *(v69 + 4);
          v58 = (v61 + v70);
          v52 = (v52 + 1);
          v129 = v58;
LABEL_102:
          v20 = v121;
          v30 = v126;
          v31 = v58;
          v21 = v131;
        }

        else
        {
          if (v124)
          {
            v57 = &v20[7 * v52];
            *(v57 + 2) = v31;
            *(v57 + 3) = v31;
            *(v57 + 4) = 1;
            v58 = v31;
            v59 = heap_Calloc(*(v125 + 8), 1, 4);
            *v57 = v59;
            if (!v59)
            {
              goto LABEL_228;
            }

            cstdlib_strcpy(v59, v56);
            v124 = 0;
            v129 = v58 + 1;
            v60 = 1;
            v61 = 1;
            goto LABEL_102;
          }

          v124 = 0;
          ++v129;
          v60 = 1;
          v61 = 1;
        }

        v127 += v60;
        v128 += v61;
        v29 = v52;
        goto LABEL_104;
      }

      if (v124)
      {
        LODWORD(v29) = v52;
      }

      else
      {
        LODWORD(v20[7 * v52 + 2]) = v129 - v31;
        LODWORD(v29) = v52 + 1;
        LODWORD(v31) = v129;
      }

      v62 = &v20[7 * v29];
      v18 = v120;
      if (v116)
      {
        *(v62 + 8) = 5;
        if (v29)
        {
          *(&v20[7 * (v29 - 1) + 4] + 4) = 0x100000001;
        }
      }

      else
      {
        *(v62 + 8) = 3;
      }

      v63 = &v20[7 * v29];
      *(v63 + 2) = v31;
      *(v63 + 3) = v31;
      *(v63 + 5) = v151;
      *(v63 + 4) = v146 - v129;
      *(v63 + 36) = 1;
      v64 = v31;
      v65 = heap_Calloc(*(v125 + 8), 1, 4);
      *v63 = v65;
      if (!v65)
      {
        goto LABEL_223;
      }

      cstdlib_strcpy(v65, "NUM");
      v66 = *(v63 + 4);
      v128 += v66;
      v30 = v126;
      v127 += v66;
      v67 = (v66 + v64);
      v29 = (v29 + 1);
      v123 = 1;
      v124 = 1;
      v129 = v67;
      v20 = v121;
      v31 = v67;
      v21 = v131;
LABEL_105:
      if (v29 >= v18)
      {
        goto LABEL_109;
      }
    }

    v30 = v126;
    v31 = v51;
    v21 = v131;
LABEL_109:
    if (!v124)
    {
      LODWORD(v20[7 * v29 + 2]) = v129 - v31;
      v29 = (v29 + 1);
      v31 = v129;
    }

LABEL_111:
    v32 = v118;
    v28 = v119;
    v33 = v117;
    if (v29)
    {
      *(&v20[7 * (v29 - 1) + 4] + 4) = 0x100000001;
    }

LABEL_113:
    ++v28;
    v27 = HIWORD(v149);
    ++v33;
    v32 += 32;
  }

  while (v28 < HIWORD(v149));
LABEL_148:
  LODWORD(v52) = v29;
  v135 = v29;
  v11 = (*(v21 + 104))(a3, a4, 3, v115, &v148);
  if ((v11 & 0x80000000) != 0)
  {
LABEL_221:
    v5 = v11;
    goto LABEL_222;
  }

  v81 = v148;
  if (v148)
  {
    while (1)
    {
      v144 = 0;
      v143 = 0;
      v25 = (*(v21 + 168))(a3, a4, v81, 0, 1, &v144, &v143);
      if ((v25 & 0x80000000) != 0)
      {
        goto LABEL_257;
      }

      if (v144 == 5)
      {
        v25 = (*(v21 + 168))(a3, a4, v148, 1, 1, &v146 + 4, &v143);
        if ((v25 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        v25 = (*(v21 + 168))(a3, a4, v148, 2, 1, &v146, &v143);
        if ((v25 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        v11 = (*(v21 + 176))(a3, a4, v148, 4, &v147, &v143);
        if ((v11 & 0x80000000) != 0)
        {
          goto LABEL_221;
        }

        if (!cstdlib_strcmp(v147, "phon"))
        {
          break;
        }
      }

      v11 = (*(v21 + 120))(a3, a4, v148, &v148);
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_258;
      }

      v81 = v148;
      if (!v148)
      {
        goto LABEL_158;
      }
    }

    v82 = 1;
    if (!v52)
    {
      goto LABEL_230;
    }
  }

  else
  {
LABEL_158:
    v82 = 0;
    if (!v52)
    {
LABEL_230:
      v105 = 0;
      v135 = 0;
LABEL_231:
      v25 = fe_nnws_writeLDB_v2(a1, a3, a4, v142, v121, v105, __s);
      if ((v25 & 0x80000000) != 0)
      {
LABEL_257:
        v11 = v25;
      }

      else
      {
        v73 = v137;
        v106 = fe_nnws_adjustTokenRecordBND(v121, v105, v137, v142, a3, a4, a1);
        if ((v106 & 0x80000000) != 0)
        {
          goto LABEL_251;
        }

        v107 = *(a1[6] + 160);
        v108 = v142;
        v109 = cstdlib_strlen(v73);
        v11 = v107(a3, a4, v108, 0, (v109 + 1), v73, &v141);
        if ((v11 & 0x80000000) == 0)
        {
          log_OutText(*(*a1 + 32), "FE_NNWS", 5, 0, v73, 0);
        }
      }

LABEL_258:
      v12 = 1;
      goto LABEL_118;
    }
  }

  v83 = 0;
  while (2)
  {
    if (v82 == 1)
    {
      v84 = &v121[7 * v83];
      v85 = *(v84 + 3);
      v86 = v146;
      if (v85 < HIDWORD(v146))
      {
        v87 = v121;
        goto LABEL_164;
      }

      v87 = v121;
      if (*(v84 + 4) + v85 <= v146)
      {
        v82 = 1;
        *(v84 + 11) = 1;
        goto LABEL_182;
      }
    }

    else
    {
      v87 = v121;
      v85 = HIDWORD(v121[7 * v83 + 1]);
      v86 = v146;
    }

LABEL_164:
    v88 = &v87[7 * v83];
    if (*(v88 + 4) + v85 > v86 && v148 != 0)
    {
      while (1)
      {
        v90 = (*(v21 + 120))(a3, a4);
        v11 = v90;
        if ((v90 & 0x80000000) != 0)
        {
          goto LABEL_258;
        }

        if (!v148)
        {
          goto LABEL_184;
        }

        v144 = 0;
        v143 = 0;
        v25 = (*(v21 + 168))(a3, a4, v148, 0, 1, &v144, &v143);
        if ((v25 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        if (v144 == 5)
        {
          v25 = (*(v21 + 168))(a3, a4, v148, 1, 1, &v146 + 4, &v143);
          if ((v25 & 0x80000000) != 0)
          {
            goto LABEL_257;
          }

          v25 = (*(v21 + 168))(a3, a4, v148, 2, 1, &v146, &v143);
          if ((v25 & 0x80000000) != 0)
          {
            goto LABEL_257;
          }

          v11 = (*(v21 + 176))(a3, a4, v148, 4, &v147, &v143);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_221;
          }

          if (!cstdlib_strcmp(v147, "phon"))
          {
            v82 = 1;
            goto LABEL_184;
          }

          v82 = 0;
        }
      }
    }

    *(v88 + 11) = 0;
LABEL_182:
    ++v83;
LABEL_184:
    if (v83 < v52)
    {
      continue;
    }

    break;
  }

  v135 = v52;
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_258;
  }

  v25 = (*(a1[16] + 40))(a1[19], a1[20], &v139);
  if ((v25 & 0x80000000) != 0)
  {
    goto LABEL_257;
  }

  v91 = *(a1 + 24);
  if (v91 != *(a1 + 25) + v139)
  {
    log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0);
    v11 = 2588942361;
    goto LABEL_258;
  }

  v92 = *(a1 + 50) ? v52 + 2 : v52;
  v93 = heap_Alloc(*(*a1 + 8), 4 * (v91 * v92));
  v133 = v93;
  if (!v93)
  {
LABEL_213:
    log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0);
    v12 = 1;
    goto LABEL_214;
  }

  v94 = v93;
  if (*(a1 + 50))
  {
    *v93 = 1120534528;
    v94 = &v93[v139];
  }

  v95 = 0;
  v96 = 0;
  do
  {
    if (*(a1 + 48))
    {
      v97 = (a1[16] + 64);
    }

    else
    {
      v98 = a1[16];
      if (*(a1 + 50))
      {
        v97 = (v98 + 72);
      }

      else
      {
        v97 = (v98 + 56);
      }
    }

    v11 = (*v97)(a1[19], a1[20], v134[v95], v94);
    if ((v11 & 0x1FFF) == 0x14)
    {
      log_OutText(*(*a1 + 32), "FE_NNWS", 5, 0, "No embedding vector for character %s . Fall back!", v134[v95]);
      if (*(a1 + 48))
      {
        v99 = (a1[16] + 64);
      }

      else
      {
        v100 = a1[16];
        if (*(a1 + 50))
        {
          v99 = (v100 + 72);
        }

        else
        {
          v99 = (v100 + 56);
        }
      }

      v11 = (*v99)(a1[19], a1[20], a1[14], v94);
    }

    v101 = &v94[v139];
    if (*(a1 + 48) || *(a1 + 50))
    {
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_258;
      }
    }

    else
    {
      fe_nnws_dynamic_feat(a1, v134, v135, v96, v101);
    }

    v94 = (v101 + 4 * *(a1 + 25));
    ++v96;
    v102 = v135;
    v95 += 7;
  }

  while (v96 < v135);
  if (*(a1 + 50))
  {
    *v94 = 1120665600;
    v110 = a1[10];
    v111 = (v102 + 2);
  }

  else
  {
    v110 = a1[10];
    v111 = v135;
  }

  v11 = fi_predict(v110, &v133, v111, &v136);
  if ((v11 & 0x80000000) != 0)
  {
    log_OutText(*(*a1 + 32), "FE_NNWS", 5, 0, "FI Word Segmentation Prediction Failed", 0);
    goto LABEL_258;
  }

  if (*(a1 + 50))
  {
    ++v136;
  }

  if ((paramc_ParamGetInt(*(*a1 + 40), "nnwsAddonEnable", &v132) & 0x80000000) != 0)
  {
    v112 = *(a1 + 49);
  }

  else
  {
    v112 = v132;
    *(a1 + 49) = v132;
  }

  if (v112 < 1 || (v73 = v137, v106 = fe_nnws_addon_lookup(a1, v134, v102, v137, &v136, a1[15], v112), (v106 & 0x80000000) == 0))
  {
    v113 = *a1;
    v121 = v134;
    v114 = a1[15];
    if (*(a1 + 50))
    {
      fe_nnws_adjustBMES_Edge(v113, v102, v134, v9, v114, &v136);
    }

    else
    {
      fe_nnws_adjustBMES(v113, v102, v134, v9, v114, &v136);
    }

    v25 = fe_nnws_IGTreeProcess(a1, v102, a1[15], v121, &v136);
    if ((v25 & 0x80000000) == 0)
    {
      fe_nnws_retag_word_under_phon(&v136, &v134, &v135, a1[15]);
      v25 = fe_nnws_group(*a1, v136, &v134, &v135, &v137);
      if ((v25 & 0x80000000) == 0)
      {
        v105 = v135;
        goto LABEL_231;
      }
    }

    goto LABEL_257;
  }

LABEL_251:
  v11 = v106;
  v12 = 1;
  if (v73)
  {
    goto LABEL_119;
  }

LABEL_120:
  v74 = v134;
  if (v134)
  {
    v75 = v135;
    if (v135)
    {
      v76 = v134;
      do
      {
        if (*v76)
        {
          heap_Free(*(*a1 + 8), *v76);
          *v76 = 0;
        }

        v76 += 7;
        --v75;
      }

      while (v75);
    }

    heap_Free(*(*a1 + 8), v74);
  }

  v77 = v12 ^ 1;
  if (v11 < 0)
  {
    v77 = 1;
  }

  if ((v77 & 1) == 0)
  {
    LODWORD(v150) = 0;
    LODWORD(v147) = 0;
    LODWORD(v145) = 0;
    *__src = 0;
    LOWORD(v151) = 0;
    v11 = (*(a1[6] + 104))(a3, a4, 3, v142, __src);
    if ((v11 & 0x80000000) == 0)
    {
      while (*__src)
      {
        v78 = (*(a1[6] + 168))(a3, a4, *__src, 0, 1, &v150, &v151);
        if ((v78 & 0x80000000) != 0)
        {
          return v78;
        }

        v78 = (*(a1[6] + 168))(a3, a4, *__src, 1, 1, &v147, &v151);
        if ((v78 & 0x80000000) != 0)
        {
          return v78;
        }

        v78 = (*(a1[6] + 168))(a3, a4, *__src, 2, 1, &v145, &v151);
        if ((v78 & 0x80000000) != 0)
        {
          return v78;
        }

        if ((v150 - 7) >= 0xFFFFFFFD)
        {
          v79 = 0;
        }

        else
        {
          v79 = *__src;
        }

        v11 = (*(a1[6] + 120))(a3, a4);
        if ((v11 & 0x80000000) != 0)
        {
          return v11;
        }

        if (v79)
        {
          v11 = (*(a1[6] + 192))(a3, a4, v79);
        }
      }
    }
  }

  return v11;
}

uint64_t fe_nnws_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62346, 208);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2588942344;
  }
}

uint64_t fe_nnws_loadCfg(uint64_t a1)
{
  memset(__c, 0, sizeof(__c));
  *(a1 + 192) = 0;
  if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_use_static_feat", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
  {
    v2 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v2)
    {
      *v2 = 0;
    }

    if (!cstdlib_strcmp(**&__c[3], "yes"))
    {
      *(a1 + 192) = 1;
    }
  }

  v3 = 2588943364;
  *&__c[1] = 0;
  if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_nn_null_fea", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
  {
    *(a1 + 112) = 0;
    v4 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v4)
    {
      *v4 = 0;
    }

    v5 = *(*a1 + 8);
    v6 = cstdlib_strlen(**&__c[3]);
    v7 = heap_Alloc(v5, v6 + 1);
    *(a1 + 112) = v7;
    if (v7)
    {
      v8 = v7;
      v9 = **&__c[3];
      v10 = cstdlib_strlen(**&__c[3]);
      cstdlib_strncpy(v8, v9, v10);
      v11 = *(a1 + 112);
      *(v11 + cstdlib_strlen(**&__c[3])) = 0;
      *&__c[1] = 0;
      if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_nn_indim", &__c[3], &__c[1], __c) & 0x80000000) == 0)
      {
        if (*&__c[1])
        {
          *(a1 + 96) = 0;
          *(a1 + 96) = LH_atou(**&__c[3]);
          *&__c[1] = 0;
          if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_nn_ddim", &__c[3], &__c[1], __c) & 0x80000000) == 0)
          {
            if (*&__c[1])
            {
              *(a1 + 100) = 0;
              *(a1 + 100) = LH_atou(**&__c[3]);
              *&__c[1] = 0;
              *(a1 + 196) = 0;
              if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_use_force_ws", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
              {
                *(a1 + 196) = LH_atou(**&__c[3]);
              }

              *&__c[1] = 0;
              *(a1 + 200) = 0;
              v12 = (*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_use_albert", &__c[3], &__c[1], __c);
              v3 = 0;
              if ((v12 & 0x80000000) == 0 && *&__c[1])
              {
                v13 = v12;
                v14 = cstdlib_strchr(**&__c[3], __c[0]);
                if (v14)
                {
                  *v14 = 0;
                }

                if (!cstdlib_strcmp(**&__c[3], "yes"))
                {
                  *(a1 + 200) = 1;
                }

                return v13;
              }
            }
          }
        }
      }
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0);
      return 2588942346;
    }
  }

  return v3;
}

uint64_t fe_nnws_CreateBrokerString(uint64_t a1, _BYTE *a2, const char *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = 0;
  __s2 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__s1 = 0u;
  v10 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v7);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, a3);
      cstdlib_strcat(__s1, __s2);
      cstdlib_strcat(__s1, "_");
      cstdlib_strcat(__s1, v7);
      return brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, a2, 0x100uLL);
    }
  }

  return result;
}

uint64_t fe_nnws_tagInit(uint64_t a1, uint64_t *a2)
{
  strcpy(v12, "SBME");
  v4 = heap_Calloc(*(a1 + 8), 4, 8);
  if (v4)
  {
    v5 = 0;
    v6 = v12;
    while (1)
    {
      v7 = heap_Calloc(*(a1 + 8), 2, 1);
      *(v4 + v5) = v7;
      if (!v7)
      {
        break;
      }

      cstdlib_strncpy(v7, v6, 1uLL);
      v5 += 8;
      ++v6;
      if (v5 == 32)
      {
        v8 = 0;
        goto LABEL_12;
      }
    }

    log_OutPublic(*(a1 + 32), "FE_NNWS", 75000, 0);
    for (i = 0; i != 32; i += 8)
    {
      v10 = *(v4 + i);
      if (v10)
      {
        heap_Free(*(a1 + 8), v10);
      }
    }

    v8 = 2588942346;
    heap_Free(*(a1 + 8), v4);
    v4 = 0;
  }

  else
  {
    v8 = 2588942346;
    log_OutPublic(*(a1 + 32), "FE_NNWS", 75000, 0);
  }

LABEL_12:
  *a2 = v4;
  return v8;
}

uint64_t fe_nnws_tryLoadingIGTree(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v16 = *MEMORY[0x277D85DE8];
  memset(v15, 0, sizeof(v15));
  *v14 = 0;
  *a4 = 0;
  BrokerString = fe_nnws_CreateBrokerString(a3, v15, "nnwsigrules_");
  if ((BrokerString & 0x80000000) != 0 || (BrokerString = ssftriff_reader_ObjOpen(a1, a2, 2, v15, "IGTR", 1031, v14), (BrokerString & 0x80000000) != 0))
  {
    v10 = BrokerString;
  }

  else
  {
    v9 = heap_Calloc(*(a3 + 8), 1, 1600);
    *a4 = v9;
    if (v9)
    {
      v10 = igtree_Init(a1, a2, *v14, v9);
      ssftriff_reader_CloseChunk(*v14);
      if ((v10 & 0x80001FFF) == 0x14)
      {
        ssftriff_reader_CloseChunk(*v14);
        v10 = 0;
      }
    }

    else
    {
      log_OutPublic(*(a3 + 32), "FE_NNWS", 37000, 0);
      v10 = 2588942346;
    }
  }

  if (*v14)
  {
    v11 = ssftriff_reader_ObjClose(*v14);
    if (v11 >= 0 || v10 <= -1)
    {
      return v10;
    }

    else
    {
      return v11;
    }
  }

  return v10;
}

void *fe_nnws_dynamic_feat(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v6 = a4;
  v70 = *MEMORY[0x277D85DE8];
  v69 = 0;
  *__s1 = 0u;
  v68 = 0u;
  v63 = 0;
  v64 = 0;
  v66 = 0;
  v65 = 0;
  v10 = (a2 + 56 * a4);
  result = cstdlib_strcmp(*v10, "NUM");
  if (result && (result = cstdlib_strcmp(*v10, "ENG"), result))
  {
    v61 = a1;
    v12 = (a2 + 56 * v6 - 56);
    v13 = 8;
    v14 = 1;
    do
    {
      if (v14 < v6)
      {
        result = cstdlib_strcmp(*v12, "NUM");
        if (result)
        {
          result = cstdlib_strcmp(*v12, "ENG");
          if (result)
          {
            *(&v63 + v13) = 1;
          }
        }
      }

      ++v14;
      v13 -= 4;
      v12 -= 7;
    }

    while (v13 != -4);
    v15 = v6 + 1;
    v16 = (a2 + 56 * v6 + 56);
    for (i = 16; i != 28; i += 4)
    {
      if (v15 < a3)
      {
        result = cstdlib_strcmp(*v16, "NUM");
        if (result)
        {
          result = cstdlib_strcmp(*v16, "ENG");
          if (result)
          {
            *(&v63 + i) = 1;
          }
        }
      }

      ++v15;
      v16 += 7;
    }

    v18 = v64;
    if (v64 == 1)
    {
      v20 = a5;
      v19 = v61;
      if (v6)
      {
        v21 = v6 - 1;
        do
        {
          cstdlib_strcat(__s1, *(a2 + 56 * v21++));
        }

        while (v6 >= v21);
      }

      v22 = (*(v61[16] + 56))(v61[21], v61[22], __s1, v62);
      v23 = 0.0;
      if (v22 >= 0)
      {
        v23 = 1.0;
      }

      *a5 = v23;
      result = cstdlib_memset(__s1, 0, 0x21uLL);
    }

    else
    {
      v20 = a5;
      v19 = v61;
      *a5 = 0;
    }

    v24 = v65;
    if (v65 == 1)
    {
      v25 = v6;
      do
      {
        cstdlib_strcat(__s1, *(a2 + 56 * v25++));
      }

      while (v6 + 2 > v25);
      v26 = (*(v19[16] + 56))(v19[21], v19[22], __s1, v62);
      v27 = 0.0;
      if (v26 >= 0)
      {
        v27 = 1.0;
      }

      *(v20 + 4) = v27;
      result = cstdlib_memset(__s1, 0, 0x21uLL);
    }

    else
    {
      *(v20 + 4) = 0;
    }

    v28 = v18 == 1 && HIDWORD(v63) == 1;
    v29 = v28;
    if (v28)
    {
      v30 = v6 - 2;
      if (v6 >= 2)
      {
        do
        {
          cstdlib_strcat(__s1, *(a2 + 56 * v30++));
        }

        while (v6 >= v30);
      }

      v31 = (*(v19[16] + 56))(v19[21], v19[22], __s1, v62);
      v32 = 0.0;
      if (v31 >= 0)
      {
        v32 = 1.0;
      }

      *(v20 + 8) = v32;
      result = cstdlib_memset(__s1, 0, 0x21uLL);
    }

    else
    {
      *(v20 + 8) = 0;
    }

    v33 = v18 == 1 && v24 == 1;
    v34 = v33;
    if (v33)
    {
      v35 = v6 - 1;
      if (v6 + 2 > (v6 - 1))
      {
        do
        {
          cstdlib_strcat(__s1, *(a2 + 56 * v35++));
        }

        while (v6 + 2 > v35);
      }

      v36 = (*(v19[16] + 56))(v19[21], v19[22], __s1, v62);
      v37 = 0.0;
      if (v36 >= 0)
      {
        v37 = 1.0;
      }

      *(v20 + 12) = v37;
      result = cstdlib_memset(__s1, 0, 0x21uLL);
    }

    else
    {
      *(v20 + 12) = 0;
    }

    v38 = HIDWORD(v65);
    v39 = v24 == 1 && HIDWORD(v65) == 1;
    v40 = v39;
    if (v39)
    {
      v41 = v6;
      do
      {
        cstdlib_strcat(__s1, *(a2 + 56 * v41++));
      }

      while (v6 + 3 > v41);
      v42 = (*(v61[16] + 56))(v61[21], v61[22], __s1, v62);
      v43 = 0.0;
      if (v42 >= 0)
      {
        v43 = 1.0;
      }

      v20 = a5;
      *(a5 + 16) = v43;
      result = cstdlib_memset(__s1, 0, 0x21uLL);
    }

    else
    {
      *(v20 + 16) = 0;
    }

    if (v63 == 1)
    {
      v44 = v29;
    }

    else
    {
      v44 = 0;
    }

    if (v44)
    {
      v45 = v6 - 3;
      if (v6 >= 3)
      {
        do
        {
          cstdlib_strcat(__s1, *(a2 + 56 * v45++));
        }

        while (v6 >= v45);
      }

      v46 = (*(v61[16] + 56))(v61[21], v61[22], __s1, v62);
      v47 = 0.0;
      if (v46 >= 0)
      {
        v47 = 1.0;
      }

      *(v20 + 20) = v47;
      result = cstdlib_memset(__s1, 0, 0x21uLL);
    }

    else
    {
      *(v20 + 20) = 0;
    }

    if (v24 == 1)
    {
      v48 = v29;
    }

    else
    {
      v48 = 0;
    }

    if (v48)
    {
      v49 = v6 - 2;
      if (v6 + 2 > (v6 - 2))
      {
        do
        {
          cstdlib_strcat(__s1, *(a2 + 56 * v49++));
        }

        while (v6 + 2 > v49);
      }

      v50 = (*(v61[16] + 56))(v61[21], v61[22], __s1, v62);
      v51 = 0.0;
      if (v50 >= 0)
      {
        v51 = 1.0;
      }

      *(v20 + 24) = v51;
      result = cstdlib_memset(__s1, 0, 0x21uLL);
    }

    else
    {
      *(v20 + 24) = 0;
    }

    if (v38 == 1)
    {
      v52 = v34;
    }

    else
    {
      v52 = 0;
    }

    if (v52)
    {
      v53 = v6 - 1;
      v54 = v61;
      if (v6 + 3 > (v6 - 1))
      {
        do
        {
          cstdlib_strcat(__s1, *(a2 + 56 * v53++));
        }

        while (v6 + 3 > v53);
      }

      v55 = (*(v61[16] + 56))(v61[21], v61[22], __s1, v62);
      v56 = 0.0;
      if (v55 >= 0)
      {
        v56 = 1.0;
      }

      *(v20 + 28) = v56;
      result = cstdlib_memset(__s1, 0, 0x21uLL);
    }

    else
    {
      *(v20 + 28) = 0;
      v54 = v61;
    }

    if (v66 == 1)
    {
      v57 = v40;
    }

    else
    {
      v57 = 0;
    }

    if (v57)
    {
      v58 = v6 + 4;
      do
      {
        cstdlib_strcat(__s1, *(a2 + 56 * v6++));
      }

      while (v58 > v6);
      v59 = (*(v54[16] + 56))(v54[21], v54[22], __s1, v62);
      v60 = 0.0;
      if (v59 >= 0)
      {
        v60 = 1.0;
      }

      *(v20 + 32) = v60;
      return cstdlib_memset(__s1, 0, 0x21uLL);
    }

    else
    {
      *(v20 + 32) = 0;
    }
  }

  else
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t fe_nnws_addon_lookup(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, void *a6, unsigned __int16 a7)
{
  v11 = *a5;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = a7;
  v38 = a7 + 1;
  v12 = heap_Calloc(*(*a1 + 8), 1, v38);
  if (v12)
  {
    v13 = v12;
    if (a3)
    {
      v34 = v11;
      v35 = a6;
      v14 = 0;
      v36 = a6 + 3;
      v15 = 1;
      while (1)
      {
        v16 = 0;
        v17 = *(a2 + 56 * v14 + 12);
        LODWORD(v18) = v14;
        while (1)
        {
          v19 = a2 + 56 * v18;
          if (!cstdlib_strcmp(*v19, "NUM"))
          {
            break;
          }

          if (!cstdlib_strcmp(*v19, "ENG"))
          {
            break;
          }

          v20 = *(v19 + 16) + v16;
          if (v20 > v39)
          {
            break;
          }

          LODWORD(v18) = v18 + 1;
          v16 = v20;
          if (v18 >= a3)
          {
            goto LABEL_11;
          }
        }

        v20 = v16;
LABEL_11:
        if (v14 >= v18)
        {
          v13[v20] = 0;
        }

        else
        {
          cstdlib_memcpy(v13, (a4 + v17), v20 + 1);
          v13[v20] = 0;
          if (v20)
          {
            v21 = (a2 - 40 + 56 * v18);
            v18 = v18;
            v22 = v18 - v14 - 3;
            while (1)
            {
              cstdlib_memset(&v13[v20], 0, v38 - v20);
              v13[v20] = 0;
              v42 = 0;
              v15 = (*(a1[7] + 232))(a1[8], a1[9], "force_ws", v13, &v41, &v42, &v40, 0);
              if ((v15 & 0x80000000) != 0)
              {
                goto LABEL_45;
              }

              if (v42)
              {
                break;
              }

              if (--v18 > v14)
              {
                v23 = *v21;
                v21 -= 14;
                --v22;
                v20 -= v23;
                if (v20)
                {
                  continue;
                }
              }

              goto LABEL_20;
            }

            if (v14)
            {
              v24 = **(v34 + 8 * (v14 - 1));
              v25 = v35;
              if (v24 == 66)
              {
                goto LABEL_29;
              }

              if (v24 == 77)
              {
                v25 = v36;
LABEL_29:
                *(v34 + 8 * (v14 - 1)) = *v25;
              }
            }

            v26 = v35[1];
            *(v34 + 8 * v14) = v26;
            if (v18 < a3)
            {
              v27 = **(v34 + 8 * v18);
              if (v27 == 77)
              {
                goto LABEL_34;
              }

              if (v27 == 69)
              {
                v26 = *v35;
LABEL_34:
                *(v34 + 8 * v18) = v26;
              }
            }

            *(v34 + 8 * (v18 - 1)) = *v36;
            if (v14 + 1 < v18 - 1)
            {
              v28 = 0;
              v29 = v35[2];
              v30 = vdupq_n_s64(v22);
              v31 = v34 + 8 * (v14 + 1);
              do
              {
                v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v28), xmmword_26ECC7980)));
                if (v32.i8[0])
                {
                  *(v31 + 8 * v28) = v29;
                }

                if (v32.i8[4])
                {
                  *(v31 + 8 * v28 + 8) = v29;
                }

                v28 += 2;
              }

              while (((v22 + 2) & 0x1FFFFFFFELL) != v28);
            }

            v15 = 1;
          }
        }

LABEL_20:
        if (v14 == v18)
        {
          v14 = v18 + 1;
        }

        else
        {
          v14 = v18;
        }

        if (v14 >= a3)
        {
          goto LABEL_45;
        }
      }
    }

    v15 = 1;
LABEL_45:
    heap_Free(*(*a1 + 8), v13);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0);
    return 2588942346;
  }

  return v15;
}

uint64_t fe_nnws_adjustBMES_Edge(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned __int8 **a5, const char ***a6)
{
  v7 = a2;
  v9 = *a6;
  v21 = *a6;
  if (a2 < 2)
  {
    goto LABEL_26;
  }

  v10 = a2 - 2;
  for (i = v9; ; ++i)
  {
    v12 = *i[1];
    if (v12 <= 0x4C)
    {
      if (v12 != 66)
      {
        if (v12 == 69)
        {
          v13 = **i;
          v14 = a5;
          if (v13 == 83)
          {
            goto LABEL_19;
          }

          v14 = a5;
          if (v13 == 69)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_20;
      }

      v15 = **i;
      v14 = a5 + 2;
      if (v15 == 66)
      {
        goto LABEL_19;
      }

      v14 = a5 + 2;
LABEL_15:
      if (v15 == 77)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (v12 != 77)
    {
      if (v12 != 83)
      {
        goto LABEL_20;
      }

      v15 = **i;
      v14 = a5 + 3;
      if (v15 == 66)
      {
LABEL_19:
        i[1] = *v14;
        goto LABEL_20;
      }

      v14 = a5 + 3;
      goto LABEL_15;
    }

    v16 = **i;
    v14 = a5 + 1;
    if (v16 == 69)
    {
      goto LABEL_19;
    }

    v14 = a5 + 1;
    if (v16 == 83)
    {
      goto LABEL_19;
    }

LABEL_20:
    if (!v10)
    {
      break;
    }

    --v10;
  }

  v17 = a5 + 3;
  if (**i == 77 || (v17 = a5, *i[1] == 66))
  {
    i[1] = *v17;
  }

LABEL_26:
  result = fe_nnws_adjust_ENP_labels(a2, a3, a5, &v21);
  if (a4 == 1 && v7)
  {
    v19 = v7;
    do
    {
      v20 = *v9++;
      result = log_OutText(*(a1 + 32), "FE_NNWS", 5, 0, "[NNWS][adjustBMES_Edge] Predicted Tag: %s", v20);
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t fe_nnws_adjustBMES(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned __int8 **a5, const char ***a6)
{
  v7 = a2;
  v9 = *a6;
  v19 = *a6;
  if (a2)
  {
    v10 = v9 + 1;
    for (i = a2; i; --i)
    {
      v12 = **(v10 - 1);
      if (i == 1)
      {
        v13 = a5 + 3;
        if (v12 != 77)
        {
          v13 = a5;
          if (v12 != 66)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_21;
      }

      if (**(v10 - 1) > 0x4Cu)
      {
        if (v12 == 77)
        {
          v15 = **v10;
          v13 = a5 + 3;
          if (v15 == 66)
          {
            goto LABEL_21;
          }

          v13 = a5 + 3;
LABEL_20:
          if (v15 == 83)
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        if (v12 == 83)
        {
          v14 = **v10 | 8;
          v13 = a5 + 1;
          goto LABEL_14;
        }
      }

      else
      {
        if (v12 == 66)
        {
          v15 = **v10;
          v13 = a5;
          if (v15 == 66)
          {
            goto LABEL_21;
          }

          v13 = a5;
          goto LABEL_20;
        }

        if (v12 == 69)
        {
          v14 = **v10 | 8;
          v13 = a5 + 2;
LABEL_14:
          if (v14 != 77)
          {
            goto LABEL_22;
          }

LABEL_21:
          *(v10 - 1) = *v13;
        }
      }

LABEL_22:
      ++v10;
    }
  }

  result = fe_nnws_adjust_ENP_labels(a2, a3, a5, &v19);
  if (a4 == 1 && v7)
  {
    v17 = v7;
    do
    {
      v18 = *v9++;
      result = log_OutText(*(a1 + 32), "FE_NNWS", 5, 0, "[NNWS] Predicted Tag: %s", v18);
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t fe_nnws_IGTreeProcess(uint64_t *a1, unsigned int a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[23];
  __s1 = 0;
  if (!a2 || !v6)
  {
    log_OutText(*(v5 + 32), "FE_NNWS", 5, 0, "IGTree model for NNWS does not exist");
    return 0;
  }

  v10 = heap_Alloc(*(v5 + 8), 8 * *(v6 + 1296) - 8);
  if (!v10)
  {
    v29 = 2588942346;
    log_OutPublic(*(v5 + 32), "FE_NNWS", 750000, 0);
    return v29;
  }

  v11 = v10;
  v40 = a5;
  if (*(v6 + 1296) != 1)
  {
    v12 = (*(v6 + 1296) - 1);
    v13 = v10;
    do
    {
      v14 = heap_Calloc(*(v5 + 8), 1, 65);
      *v13 = v14;
      if (!v14)
      {
        v29 = 2588942346;
        log_OutPublic(*(v5 + 32), "FE_NNWS", 750000, 0);
        goto LABEL_57;
      }

      cstdlib_strcpy(v14, "=");
      ++v13;
      --v12;
    }

    while (v12);
  }

  v15 = 0;
  v38 = a3 + 2;
  v39 = a3;
  v36 = a3 + 3;
  v37 = a3 + 1;
  do
  {
    v16 = *(v6 + 1312);
    v17 = *(v6 + 1296);
    v18 = fe_nnws_setFeature(v5, v16, v17, 0, v11, *(*a5 + 8 * v15));
    if ((v18 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v19 = "=";
    if (a2 > v15)
    {
      v19 = *(a4 + 56 * v15);
    }

    v18 = fe_nnws_setFeature(v5, v16, v17, 1, v11, v19);
    if ((v18 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v20 = "=";
    if (v15 - 1 < a2)
    {
      v20 = *(a4 + 56 * (v15 - 1));
    }

    v18 = fe_nnws_setFeature(v5, v16, v17, 2, v11, v20);
    if ((v18 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v21 = "=";
    if (v15 - 2 < a2)
    {
      v21 = *(a4 + 56 * (v15 - 2));
    }

    v18 = fe_nnws_setFeature(v5, v16, v17, 3, v11, v21);
    if ((v18 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v22 = "=";
    if (v15 - 3 < a2)
    {
      v22 = *(a4 + 56 * (v15 - 3));
    }

    v18 = fe_nnws_setFeature(v5, v16, v17, 4, v11, v22);
    if ((v18 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v23 = "=";
    if (v15 - 4 < a2)
    {
      v23 = *(a4 + 56 * (v15 - 4));
    }

    v18 = fe_nnws_setFeature(v5, v16, v17, 5, v11, v23);
    if ((v18 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v24 = "=";
    if (v15 + 1 < a2)
    {
      v24 = *(a4 + 56 * (v15 + 1));
    }

    v18 = fe_nnws_setFeature(v5, v16, v17, 6, v11, v24);
    if ((v18 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v25 = "=";
    if (v15 + 2 < a2)
    {
      v25 = *(a4 + 56 * (v15 + 2));
    }

    v18 = fe_nnws_setFeature(v5, v16, v17, 7, v11, v25);
    if ((v18 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v26 = "=";
    if (v15 + 3 < a2)
    {
      v26 = *(a4 + 56 * (v15 + 3));
    }

    v18 = fe_nnws_setFeature(v5, v16, v17, 8, v11, v26);
    if ((v18 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v27 = "=";
    if (v15 + 4 < a2)
    {
      v27 = *(a4 + 56 * (v15 + 4));
    }

    v18 = fe_nnws_setFeature(v5, v16, v17, 9, v11, v27);
    if ((v18 & 0x80000000) != 0)
    {
LABEL_55:
      v29 = v18;
      goto LABEL_57;
    }

    v28 = "=";
    if (v15 < a2)
    {
      v28 = v43;
      LH_itoa(v15 + 1, v43, 0xAu);
    }

    v29 = fe_nnws_setFeature(v5, v16, v17, 10, v11, v28);
    a5 = v40;
    if ((v29 & 0x80000000) != 0)
    {
      goto LABEL_57;
    }

    igtree_Process(v6, v11, &__s1);
    if (cstdlib_strcmp(__s1, "NOMATCH"))
    {
      v29 = 0;
      v30 = *__s1;
      if (v30 <= 0x4C)
      {
        v31 = v37;
        if (v30 != 66)
        {
          if (v30 != 69)
          {
            goto LABEL_48;
          }

          v31 = v36;
        }

LABEL_47:
        *(*v40 + 8 * v15) = *v31;
        fe_hlp_adjustBMES_basedSingleLabel(a2, v15, v39, v40);
        v29 = 0;
        goto LABEL_48;
      }

      v31 = v38;
      if (v30 == 77)
      {
        goto LABEL_47;
      }

      v31 = v39;
      if (v30 == 83)
      {
        goto LABEL_47;
      }
    }

LABEL_48:
    ++v15;
  }

  while (a2 != v15);
  if (*(v6 + 1296) != 1)
  {
    v32 = (*(v6 + 1296) - 1);
    v33 = v11;
    do
    {
      v34 = *v33++;
      heap_Free(*(v5 + 8), v34);
      --v32;
    }

    while (v32);
  }

LABEL_57:
  heap_Free(*(v5 + 8), v11);
  return v29;
}

uint64_t **fe_nnws_retag_word_under_phon(uint64_t **result, uint64_t *a2, unsigned int *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *result;
  if (v5 >= 2)
  {
    v7 = (v4 + 96);
    v8 = 8 * v5;
    v9 = 8;
    while (1)
    {
      if (*(v7 - 13) != 1 || v7[1] != 1)
      {
        goto LABEL_20;
      }

      v10 = *(v7 - 14);
      if (v10 == 1)
      {
        if (*v7)
        {
          if (*v7 != 1)
          {
            goto LABEL_20;
          }

          v12 = *a4;
          v6[v9 / 8] = *a4;
          if (v9 != 8)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        v6[v9 / 8] = a4[1];
        v13 = a4;
      }

      else
      {
        if (v10)
        {
          goto LABEL_20;
        }

        if (*v7)
        {
          if (*v7 != 1)
          {
            goto LABEL_20;
          }

          v11 = a4[3];
        }

        else
        {
          v11 = a4[2];
        }

        v6[v9 / 8] = v11;
        v13 = a4 + 1;
      }

      if (v9 == 8)
      {
        v12 = *v13;
LABEL_19:
        *v6 = v12;
      }

LABEL_20:
      v7 += 14;
      v9 += 8;
      if (v8 == v9)
      {
        return result;
      }
    }
  }

  if (*(v4 + 44) == 1)
  {
    *v6 = *a4;
  }

  return result;
}

uint64_t fe_nnws_group(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int *a4, const char **a5)
{
  v7 = *a3;
  v8 = *a5;
  v9 = *a4;
  v63 = cstdlib_strlen(*a5);
  if (!v9)
  {
    v13 = 0;
    v11 = 0;
LABEL_31:
    v39 = v13;
    if (v13 < v9)
    {
      v40 = (v7 + 56 * v13);
      v41 = v9 - v13;
      do
      {
        v42 = *v40;
        v40 += 7;
        heap_Free(*(a1 + 8), v42);
        --v41;
      }

      while (v41);
    }

    *a4 = v39;
    v43 = v11 + v39;
    if (v43 + 1 <= v63)
    {
      v45 = v39;
      if (v39)
      {
LABEL_37:
        v46 = 0;
        v47 = v45;
        v48 = (v7 + 16);
        v49 = v45;
        do
        {
          v50 = v46;
          cstdlib_memcpy(&v8[v46], *(v48 - 2), *v48);
          v8[*v48 + v50] = 32;
          v52 = *v48;
          v48 += 14;
          v51 = v52;
          v46 = v50 + v52 + 1;
          --v49;
        }

        while (v49);
        if (v46)
        {
          v8[v50 + v51] = 0;
        }

        v53 = 0;
        *a5 = v8;
        do
        {
          v54 = v7 + 56 * v53;
          if (*(v54 + 32) == 1)
          {
            v55 = v53;
            if (v53 < v39)
            {
              v56 = (v7 + 88 + 56 * v53);
              do
              {
                *(v56 - 14) = 4;
                ++v55;
                v57 = *v56;
                v56 += 14;
              }

              while (v57 != 2 && v55 < v47);
              v53 = v55;
            }

            *(v7 + 56 * v55 + 8) = *(v54 + 8);
          }

          else
          {
            ++v53;
          }
        }

        while (v53 < v39);
        return 0;
      }
    }

    else
    {
      v44 = heap_Realloc(*(a1 + 8), v8, v43);
      v45 = v39;
      v8 = v44;
      if (!v44)
      {
LABEL_57:
        v59 = 2588942346;
        v60 = *(a1 + 32);
        goto LABEL_60;
      }

      if (v39)
      {
        goto LABEL_37;
      }
    }

    v59 = 0;
    *a5 = v8;
    return v59;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = v7 + 32;
  v67 = a2;
  v65 = a1;
  while (1)
  {
    v15 = **(a2 + 8 * v10);
    if (v15 == 66)
    {
      v35 = v7 + 56 * v13;
      *(v35 + 8) = *(v14 - 24);
      *(v35 + 32) = *v14;
      v12 = v10;
      goto LABEL_28;
    }

    if (v15 == 83)
    {
      v66 = v12;
      v30 = v11;
      v31 = *(v14 - 16);
      v32 = v13;
      v33 = v7 + 56 * v13;
      if (cstdlib_strcmp(*v33, "NUM") && cstdlib_strcmp(*v33, "ENG"))
      {
        v34 = *(v14 - 16);
      }

      else
      {
        v34 = *(v14 - 16);
        if (v34 - 4 <= 0xFFFFFFFA)
        {
          v36 = v34 + 1;
          goto LABEL_21;
        }
      }

      v36 = v34 + 1;
      if (*(v33 + 16) >= v34 + 1)
      {
        v37 = *v33;
LABEL_27:
        cstdlib_strncpy(v37, &v8[*(v14 - 20)], v34);
        *(*v33 + *(v14 - 16)) = 0;
        v38 = *(v14 - 12);
        *(v33 + 16) = v31;
        *(v33 + 20) = v38;
        *(v33 + 8) = *(v14 - 24);
        *(v33 + 40) = *(v14 + 8);
        *(v33 + 32) = *v14;
        *(v33 + 48) = *(v14 + 16);
        v11 = v31 + v30;
        v13 = v32 + 1;
        v12 = v66;
        a2 = v67;
        goto LABEL_28;
      }

LABEL_21:
      v37 = heap_Realloc(*(a1 + 8), *v33, v36);
      *v33 = v37;
      if (!v37)
      {
        goto LABEL_57;
      }

      v34 = *(v14 - 16);
      goto LABEL_27;
    }

    if (v15 == 69)
    {
      break;
    }

LABEL_28:
    ++v10;
    v14 += 56;
    if (v9 == v10)
    {
      goto LABEL_31;
    }
  }

  v16 = v7 + 56 * v12;
  v18 = *(v16 + 12);
  v17 = (v16 + 12);
  v19 = *(v14 - 16) + *(v14 - 20);
  v20 = v19 - v18;
  if (v19 < v18)
  {
    log_OutPublic(*(a1 + 32), "FE_NNWS", 75000, 0);
    return 2588942343;
  }

  v21 = a1;
  v22 = v9;
  v23 = v11;
  v24 = v13;
  v25 = v7 + 56 * v13;
  v26 = heap_Realloc(*(v21 + 8), *v25, (v20 + 1));
  *v25 = v26;
  if (v26)
  {
    cstdlib_strncpy(v26, &v8[*v17], v20);
    *(*v25 + v20) = 0;
    *(v25 + 16) = v20;
    *(v25 + 36) = *(v14 + 4);
    v27 = *v14;
    if (*(v25 + 32) == 1 && v27 == 2)
    {
      v27 = 3;
      v29 = v24;
    }

    else
    {
      v29 = v24;
      if ((v27 & 0xFFFFFFFE) != 2)
      {
        goto LABEL_25;
      }
    }

    *(v25 + 32) = v27;
    *(v25 + 20) = *(v14 - 12);
LABEL_25:
    v11 = v20 + v23;
    v13 = v29 + 1;
    v12 = v10 + 1;
    v9 = v22;
    a1 = v65;
    a2 = v67;
    goto LABEL_28;
  }

  v59 = 2588942346;
  v60 = *(v65 + 32);
LABEL_60:
  log_OutPublic(v60, "FE_NNWS", 75000, 0, a5);
  return v59;
}

uint64_t fe_nnws_writeLDB_v2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v10 = a4;
  v132 = 0;
  v131 = 0;
  v13 = (*(a1[6] + 176))(a2, a3, a4, 1, &v132, &v131);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v128 = a3;
  v129 = v10;
  reorder_pMrk(&v132, v131, 40);
  reorder_pMrk(&v132, v131, 1);
  if (a6)
  {
    v14 = heap_Calloc(*(*a1 + 8), a6, 32);
    v15 = *a1;
    if (!v14)
    {
      v18 = 2588942346;
      log_OutPublic(*(v15 + 32), "FE_NNWS", 75000, 0);
      return v18;
    }

    v16 = v14;
    v17 = heap_Calloc(*(v15 + 8), a6, 4);
    if (!v17)
    {
      v18 = 2588942346;
      log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0);
      v19 = 0;
LABEL_182:
      heap_Free(*(*a1 + 8), v16);
      goto LABEL_183;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v20 = v131;
  v21 = v132;
  if (v131)
  {
    v22 = 0;
    v23 = v132;
    while (1)
    {
      v25 = *v23;
      v23 += 2;
      v24 = v25;
      if (v25 == 41 || v24 == 1)
      {
        break;
      }

      if (v131 == ++v22)
      {
        LODWORD(v22) = -1;
        break;
      }
    }

    v27 = 0;
    v28 = v22 & ~(v22 >> 31);
    v29 = v132;
    while (1)
    {
      v30 = *v29;
      v29 += 2;
      if (v30 == 40)
      {
        break;
      }

      if (v131 == ++v27)
      {
        goto LABEL_22;
      }
    }

    v31 = v27;
    if (a6)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v28 = 0;
LABEL_22:
    v31 = -1;
    if (a6)
    {
LABEL_25:
      v32 = 0;
      v33 = 0;
      v34 = v28;
      v35 = *(v132 + 3);
      v36 = &v132[2 * v34];
      while (1)
      {
        v37 = (a5 + 56 * v32);
        v38 = v37[8];
        v39 = (v16 + 32 * v32);
        if (v38 != 4)
        {
          break;
        }

        v33 += v37[4] + 1;
        *v39 = 0;
LABEL_54:
        if (++v32 == a6)
        {
          goto LABEL_55;
        }
      }

      v39[1] = *(v36 + 1) + v37[2];
      if ((v38 & 0xFFFFFFFE) == 2)
      {
        v40 = v37[5];
        v41 = v37[4] + v33;
      }

      else
      {
        v40 = v37[4];
        v41 = v40;
      }

      v39[2] = v40;
      v42 = v35;
      if (v32)
      {
        v42 = *(v39 - 5) + *(v39 - 4) + 1;
      }

      v39[3] = v42;
      v39[4] = v41;
      if (v38 != 5 || v31 == -1)
      {
        *v39 = 1;
      }

      else
      {
        v44 = &v21[2 * v31];
        v45 = v44[1];
        *v39 = *v44;
        *(v39 + 1) = v45;
        v46 = v37[4];
        v39[2] = v46;
        v47 = v35;
        if (v32)
        {
          v47 = *(v39 - 5) + *(v39 - 4) + 1;
        }

        v39[3] = v47;
        v39[4] = v46;
        if (v31 + 1 < v20)
        {
          v48 = &v21[2 * ++v31];
          while (1)
          {
            v49 = *v48;
            v48 += 2;
            if (v49 == 40)
            {
              break;
            }

            if (v20 == ++v31)
            {
              v31 = -1;
              break;
            }
          }
        }

        if (*v39 == 40)
        {
LABEL_49:
          *(v17 + 4 * v32) = 1;
LABEL_50:
          if ((v37[8] & 0xFFFFFFFE) == 2 && !v37[10])
          {
            *(v17 + 4 * v32) = 2;
          }

          v33 = 0;
          v50 = v39[3] - *(v21 + 3);
          v51 = v39[4] + v50;
          v37[6] = v50;
          v37[7] = v51;
          goto LABEL_54;
        }

        if (*v39 != 1)
        {
          goto LABEL_50;
        }
      }

      if (v37[9] != 1)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }
  }

LABEL_55:
  if (v20)
  {
    v52 = 0;
    v53 = v21 + 2;
    v54 = -1;
    v55 = v20;
    do
    {
      v56 = v55;
      v57 = *(v53 - 8);
      ++v52;
      if (v57 == 40)
      {
        if (v52 < v55 && *v53 == 1 && *(v53 - 5) == v53[3])
        {
          cstdlib_memmove(v53 - 8, v53, 32 * (v54 + v55--));
          v56 = v55;
        }
      }

      else if (v57 == 99 && v52 < v55)
      {
        v59 = *(v53 - 5);
        v60 = v53[3];
        if (v59 == v60 - 1 && *(a7 + (v59 - *(v21 + 3))) == 32)
        {
          *(v53 - 5) = v60;
          *(v53 - 7) = v53[1];
        }
      }

      v53 += 8;
      --v54;
    }

    while (v52 < v56);
    LOWORD(v131) = v55;
    if (v55)
    {
      v61 = 0;
      v20 = 0;
      v62 = v132;
      v63 = v55;
      do
      {
        v65 = *v62;
        v62 += 2;
        v64 = v65;
        if (v61)
        {
          v66 = v20;
        }

        else
        {
          v66 = v20 + 1;
        }

        if (v64 == 0x4000)
        {
          v67 = 1;
        }

        else
        {
          v66 = v20 + 1;
          v67 = v61;
        }

        if (v64 != 1)
        {
          v20 = v66;
          v61 = v67;
        }

        --v63;
      }

      while (v63);
    }

    else
    {
      v20 = 0;
    }
  }

  v68 = v20 + a6;
  v19 = heap_Alloc(*(*a1 + 8), 32 * (v20 + a6));
  if (v19)
  {
    v69 = v131;
    if (v131)
    {
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = v132;
      v79 = 1;
      v80 = 1;
      while (1)
      {
        v81 = &v78[2 * v77];
        if (*v81 == 0x4000)
        {
          if (!v71)
          {
            v82 = &v19[8 * v73];
            v83 = v81[1];
            *v82 = *v81;
            *(v82 + 1) = v83;
            v84 = v82[1];
            if (v84)
            {
              v84 = *(a1 + 27);
            }

            else
            {
              a1[13] = 0;
            }

            v82[3] = v84;
            v74 = v84 - *(v81 + 3);
            ++v73;
          }

          ++v77;
          v71 = 1;
          goto LABEL_117;
        }

        if (*v81 == 1)
        {
          if (v80 == 1)
          {
            v70 = *(v81 + 1);
          }

          v80 = 0;
          goto LABEL_113;
        }

        if (v76 < a6)
        {
          v85 = v16 + 32 * v76;
          if (*(v85 + 12) < (*(v81 + 3) + v75))
          {
            v86 = &v19[8 * v73];
            v87 = *(v85 + 16);
            *v86 = *v85;
            *(v86 + 1) = v87;
            v88 = *(v85 + 12) + v74;
            v86[3] = v88;
            if (v73)
            {
              v89 = v73 - 1;
              if (v73 == 1)
              {
                v90 = v19[1];
                goto LABEL_124;
              }

              v96 = &v19[8 * v89];
              if (*v96 <= 0x28u && ((1 << *v96) & 0x10020000002) != 0)
              {
                v90 = v96[2] + v96[1];
LABEL_124:
                v86[1] = v90;
                v97 = v86 + 1;
                v98 = *(v17 + 4 * v76);
                if (v98 == 2)
                {
                  if (*(v85 + 12) - v75 != *(v81 + 3))
                  {
                    ++v75;
                  }

                  if (!v73)
                  {
                    goto LABEL_138;
                  }

LABEL_128:
                  v99 = &v19[8 * v73 - 8];
                  if (*v99 == 29)
                  {
                    v100 = v99[3];
                    if (v88 > v100)
                    {
                      v99[3] = v100 + 1;
                    }
                  }

                  if (v79 == 1)
                  {
                    *v97 = v70;
                    if (v73 == 2)
                    {
                      v97 = v19 + 9;
                      if (v19[8] == 36)
                      {
LABEL_139:
                        *v97 = v70;
                      }
                    }
                  }
                }

                else
                {
                  if (!v98)
                  {
                    ++v75;
                  }

                  if (v73)
                  {
                    goto LABEL_128;
                  }

LABEL_138:
                  if (v79 == 1)
                  {
                    goto LABEL_139;
                  }
                }

                v79 = 0;
                if (++v76 == a6)
                {
                  v72 = v73;
                }

                ++v73;
                goto LABEL_117;
              }
            }

            else
            {
              v89 = 0xFFFFFFFFLL;
            }

            v90 = v19[8 * v89 + 1];
            goto LABEL_124;
          }
        }

        v91 = &v19[8 * v73];
        v92 = v81[1];
        *v91 = *v81;
        *(v91 + 1) = v92;
        v91[3] = v75 + v74 + *(v81 + 3);
        if (v76 == a6 && v72)
        {
          v91[3] = v19[8 * v72 + 4] + v19[8 * v72 + 3];
        }

        v93 = v73 - 1;
        if (v73 == 1)
        {
          break;
        }

        if (v76 != a6)
        {
          if (v73)
          {
            v95 = &v19[8 * v93];
            if (*v95 <= 0x28u && ((1 << *v95) & 0x10020000002) != 0)
            {
              v94 = v95[2] + v95[1];
              goto LABEL_111;
            }
          }
        }

        if (v76 != a6)
        {
          v94 = v19[8 * v93 + 1];
          goto LABEL_111;
        }

LABEL_112:
        ++v73;
LABEL_113:
        ++v77;
LABEL_117:
        if (v77 >= v69)
        {
          goto LABEL_145;
        }
      }

      v94 = v19[1];
LABEL_111:
      v91[1] = v94;
      goto LABEL_112;
    }

    v76 = 0;
    v74 = 0;
    v73 = 0;
LABEL_145:
    if (v76 < a6)
    {
      v101 = v76;
      v102 = a6 - v76;
      v103 = v16 + 32 * v101;
      while (1)
      {
        v104 = &v19[8 * v73];
        v105 = *(v103 + 16);
        *v104 = *v103;
        *(v104 + 1) = v105;
        v106 = *(v103 + 12) + v74;
        v104[3] = v106;
        if (v73 >= 3)
        {
          break;
        }

        if (v73)
        {
          v107 = v73 - 1;
          goto LABEL_151;
        }

LABEL_154:
        v103 += 32;
        ++v73;
        if (!--v102)
        {
          goto LABEL_155;
        }
      }

      v107 = v73 - 1;
      v104[1] = v19[8 * v107 + 2] + v19[8 * v107 + 1];
LABEL_151:
      v108 = &v19[8 * v107];
      if (*v108 == 29)
      {
        v109 = v108[3];
        if (v106 > v109)
        {
          v108[3] = v109 + 1;
        }
      }

      goto LABEL_154;
    }

LABEL_155:
    v110 = &v19[8 * v73 - 8];
    v19[4] = v110[4] + v110[3] - v19[3];
    v19[2] = v110[2] + v110[1] - v19[1];
    if (v68)
    {
      v111 = 0;
      LODWORD(v112) = -1;
      while (1)
      {
        v113 = &v19[8 * v111];
        v114 = *v113;
        if (*v113 != 51)
        {
          goto LABEL_162;
        }

        v115 = cstdlib_strcmp(v113[3], "R_CLASS");
        if (v68 - v111 < 2 || v115)
        {
          break;
        }

        LODWORD(v112) = v111++;
LABEL_177:
        if (++v111 >= v68)
        {
          goto LABEL_178;
        }
      }

      v114 = *v113;
LABEL_162:
      if (v114 != 57 || v112 == -1)
      {
        goto LABEL_177;
      }

      v117 = v111 - 1;
      do
      {
        v118 = v117;
        if (!v117)
        {
          break;
        }

        v119 = v19[8 * v117--];
      }

      while (v119 != 1);
      if (v112 >= v118)
      {
        if (!v112)
        {
LABEL_176:
          LODWORD(v112) = -1;
          goto LABEL_177;
        }
      }

      else
      {
        v120 = v112;
        v112 = v112 + 1;
        if (v112 < v118)
        {
          LODWORD(v112) = v118;
          v121 = &v19[8 * v120 + 8];
          v122 = ~v120 + v118;
          do
          {
            v124 = *(v121 - 16);
            v133 = *(v121 - 32);
            v123 = v133;
            v134 = v124;
            v125 = *(v121 + 16);
            *(v121 - 32) = *v121;
            *(v121 - 16) = v125;
            *v121 = v123;
            *(v121 + 16) = v124;
            *(v121 - 28) = *(v121 + 4);
            v121 += 32;
            --v122;
          }

          while (v122);
        }
      }

      v19[8 * (v112 - 1) + 3] = v19[8 * v112 + 3];
      goto LABEL_176;
    }

LABEL_178:
    v18 = (*(a1[6] + 160))(a2, v128, v129, 1, v68, v19, &v131 + 2);
    if ((v18 & 0x80000000) == 0)
    {
      v126 = v19[4] + v19[3];
      *(a1 + 26) = v19[2] + v19[1];
      *(a1 + 27) = v126;
      if (!v16)
      {
        goto LABEL_183;
      }

      goto LABEL_182;
    }
  }

  else
  {
    v18 = 2588942346;
  }

  log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0);
  if (v16)
  {
    goto LABEL_182;
  }

LABEL_183:
  if (v17)
  {
    heap_Free(*(*a1 + 8), v17);
  }

  if (v19)
  {
    heap_Free(*(*a1 + 8), v19);
  }

  return v18;
}

uint64_t fe_nnws_adjustTokenRecordBND(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  __s1 = 0;
  v41 = 0;
  result = (*(*(a7 + 48) + 176))(a5, a6, a4, 1, &v41, &v42);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*(a7 + 48) + 104))(a5, a6, 3, a4, &v43 + 2);
    if ((result & 0x80000000) == 0)
    {
      v15 = HIWORD(v43);
      if (HIWORD(v43))
      {
        v16 = 0;
        v17 = 0;
        v18 = a2;
        v36 = (a1 + 48);
        v37 = a1 + 32;
        v39 = a2;
        v38 = a1;
        while (1)
        {
          result = (*(*(a7 + 48) + 168))(a5, a6, v15, 0, 1, &v45 + 4, &v42 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (HIDWORD(v45) == 5)
          {
            break;
          }

          if (HIDWORD(v45) != 6)
          {
            v31 = HIWORD(v43);
LABEL_55:
            result = (*(*(a7 + 48) + 120))(a5, a6, HIWORD(v43), &v43 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (v31)
            {
              result = (*(*(a7 + 48) + 192))(a5, a6, v31);
            }

            goto LABEL_58;
          }

          if (v17 < a2)
          {
            v19 = v17;
            v20 = (v37 + 56 * v17);
            do
            {
              v21 = *v20;
              v20 += 14;
              v22 = (1 << v21) & 0x2C;
              if (v21 <= 5 && v22 != 0)
              {
                v17 = v19;
                goto LABEL_40;
              }

              ++v19;
            }

            while (v18 != v19);
            v17 = v18;
          }

LABEL_40:
          v32 = a1 + 56 * v17;
          v33 = *(v32 + 24);
          v44 = *(v32 + 28);
          LODWORD(v45) = v33;
          ++v17;
          v34 = *(a7 + 48);
          if (v44 > v33)
          {
            result = (*(v34 + 160))(a5, a6, HIWORD(v43), 1, 1, &v45, &v43);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(*(a7 + 48) + 160))(a5, a6, HIWORD(v43), 2, 1, &v44, &v43);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v31 = 0;
            goto LABEL_55;
          }

          result = (*(v34 + 120))(a5, a6, HIWORD(v43), &v43 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

LABEL_58:
          v15 = HIWORD(v43);
          if (!HIWORD(v43))
          {
            return result;
          }
        }

        result = (*(*(a7 + 48) + 168))(a5, a6, HIWORD(v43), 1, 1, &v45, &v42 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a7 + 48) + 168))(a5, a6, HIWORD(v43), 2, 1, &v44, &v42 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a7 + 48) + 176))(a5, a6, HIWORD(v43), 4, &__s1, &v42 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v24 = a3;
        v25 = v44;
        v26 = v45;
        if (v44 < *(v41 + 16) + v45)
        {
          LODWORD(v45) = v45 + v16;
          if (a2)
          {
            v27 = 0;
            v28 = v36;
            while (1)
            {
              if (*(v28 - 2) == 1)
              {
                if (cstdlib_strcmp(__s1, "prompt") || *(v28 - 4) == 5)
                {
                  v25 = v44;
                  if (*v28 != 1)
                  {
                    v29 = *(v28 - 9);
                    goto LABEL_32;
                  }
                }

                else
                {
                  v25 = v44;
                }
              }

              v29 = *(v28 - 9);
              if (v29 >= v26 && *(v28 - 8) + v29 < v25)
              {
                ++v16;
                goto LABEL_37;
              }

LABEL_32:
              v30 = *(v28 - 8) + v29;
              if (v30 >= v25)
              {
                if (*v28 != 1)
                {
LABEL_47:
                  v25 += v16;
                  v44 = v25;
                  a2 = v39;
                  goto LABEL_48;
                }

                v25 += ++v16;
                v44 = v25;
              }

              else if (v30 == *(v41 + 16) + *(v41 + 12))
              {
                goto LABEL_47;
              }

LABEL_37:
              ++v27;
              v28 += 14;
              if (v18 == v27)
              {
                goto LABEL_49;
              }
            }
          }

          LODWORD(v27) = 0;
LABEL_48:
          if (v27 == a2)
          {
LABEL_49:
            v44 = v25 + v16;
          }
        }

        a3 = v24;
        v35 = cstdlib_strlen(v24);
        if (v44 > v35)
        {
          v44 = v35;
        }

        result = (*(*(a7 + 48) + 160))(a5, a6, HIWORD(v43), 1, 1, &v45, &v43);
        a1 = v38;
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a7 + 48) + 160))(a5, a6, HIWORD(v43), 2, 1, &v44, &v43);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v31 = 0;
        a2 = v39;
        goto LABEL_55;
      }
    }
  }

  return result;
}

uint64_t fe_nnws_adjust_ENP_labels(uint64_t result, uint64_t a2, unsigned __int8 **a3, unsigned __int8 ***a4)
{
  if (result)
  {
    v7 = result;
    v22 = a3 + 1;
    v23 = a3 + 3;
    v8 = result;
    v9 = -result;
    v10 = *a4;
    v11 = 1;
    do
    {
      if (!cstdlib_strcmp(*a2, "ENG") || (result = cstdlib_strcmp(*a2, "NUM"), !result))
      {
        *v10 = *a3;
        result = fe_hlp_adjustBMES_basedSingleLabel(v7, v11 - 1, a3, a4);
        goto LABEL_13;
      }

      if (v11 != 1 && !*(a2 - 16) && *(a2 + 16) == 1)
      {
        result = cstdlib_strcmp(*a2, "/");
        if (result)
        {
          *v10 = a3[3];
          result = fe_hlp_adjustBMES_basedSingleLabel(v7, v11 - 1, a3, a4);
          v12 = *(a2 - 24);
          if (v12 == 3)
          {
            *(a2 - 24) = 1;
            goto LABEL_37;
          }

          if (v12 == 2)
          {
            *(a2 - 24) = 0;
LABEL_37:
            *(a2 + 32) = 2;
            *(a2 + 20) = *(a2 - 36) + 1;
            goto LABEL_13;
          }

          goto LABEL_13;
        }
      }

      if (!*(a2 + 36))
      {
        v13 = *(a2 + 32);
        if ((v13 - 2) >= 2)
        {
          if (v13 != 1)
          {
            goto LABEL_13;
          }

          v18 = **v10;
          v19 = a3;
          if (v18 == 69)
          {
LABEL_29:
            *v10 = *v19;
          }

          else if (v18 == 77)
          {
            v19 = v22;
            goto LABEL_29;
          }

          if (v11 != 1)
          {
            v20 = **(v10 - 1);
            if (v20 == 77)
            {
              v21 = *v23;
              goto LABEL_39;
            }

            if (v20 == 66)
            {
              v21 = *a3;
LABEL_39:
              *(v10 - 1) = v21;
              goto LABEL_13;
            }
          }

          goto LABEL_13;
        }
      }

      v14 = **v10;
      v15 = a3;
      if (v14 != 66)
      {
        if (v14 != 77)
        {
          goto LABEL_21;
        }

        v15 = v23;
      }

      *v10 = *v15;
LABEL_21:
      if (v11 < v8)
      {
        v16 = *v10[1];
        if (v16 == 69)
        {
          v17 = *a3;
          goto LABEL_35;
        }

        if (v16 == 77)
        {
          v17 = *v22;
LABEL_35:
          v10[1] = v17;
        }
      }

LABEL_13:
      ++v11;
      ++v10;
      a2 += 56;
    }

    while (v9 + v11 != 1);
  }

  return result;
}

uint64_t fe_hlp_adjustBMES_basedSingleLabel(uint64_t result, unsigned int a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = **(*a4 + 8 * a2);
  if (v5 > 0x4C)
  {
    if (v5 != 77)
    {
      if (v5 != 83)
      {
        return result;
      }

      if (a2)
      {
        v6 = a2 - 1;
        v9 = **(v4 + 8 * (a2 - 1));
        v10 = a3;
        if (v9 != 66)
        {
          if (v9 != 77)
          {
            goto LABEL_27;
          }

          v10 = a3 + 3;
        }

        v11 = *v10;
        goto LABEL_26;
      }

LABEL_27:
      if (a2 + 1 >= result)
      {
        return result;
      }

      v18 = (v4 + 8 * (a2 + 1));
      v19 = **v18;
      if (v19 != 69)
      {
        if (v19 != 77)
        {
          return result;
        }

        ++a3;
      }

      goto LABEL_40;
    }

    if (a2)
    {
      v12 = a2 - 1;
      v16 = **(v4 + 8 * (a2 - 1));
      if (v16 == 69)
      {
        v17 = 2;
      }

      else
      {
        if (v16 != 83)
        {
          goto LABEL_34;
        }

        v17 = 1;
      }

      v15 = a3[v17];
      goto LABEL_33;
    }
  }

  else
  {
    if (v5 != 66)
    {
      if (v5 != 69)
      {
        return result;
      }

      if (a2)
      {
        v6 = a2 - 1;
        v7 = **(v4 + 8 * (a2 - 1));
        if (v7 == 69)
        {
          v8 = 2;
        }

        else
        {
          if (v7 != 83)
          {
            goto LABEL_27;
          }

          v8 = 1;
        }

        v11 = a3[v8];
LABEL_26:
        *(v4 + 8 * v6) = v11;
        goto LABEL_27;
      }

      goto LABEL_27;
    }

    if (a2)
    {
      v12 = a2 - 1;
      v13 = **(v4 + 8 * (a2 - 1));
      v14 = a3;
      if (v13 == 66)
      {
LABEL_19:
        v15 = *v14;
LABEL_33:
        *(v4 + 8 * v12) = v15;
        goto LABEL_34;
      }

      if (v13 == 77)
      {
        v14 = a3 + 3;
        goto LABEL_19;
      }
    }
  }

LABEL_34:
  if (a2 + 1 >= result)
  {
    return result;
  }

  v18 = (v4 + 8 * (a2 + 1));
  v20 = **v18;
  if (v20 == 66)
  {
    v21 = 16;
  }

  else
  {
    if (v20 != 83)
    {
      return result;
    }

    v21 = 24;
  }

  a3 = (a3 + v21);
LABEL_40:
  *v18 = *a3;
  return result;
}

uint64_t fe_nnws_setFeature(uint64_t a1, const char **a2, unsigned int a3, int a4, char **a5, const char *a6)
{
  if (a3 < 2)
  {
    return 0;
  }

  v10 = nnws_g_featureNames[a4];
  v11 = (a3 - 1);
  while (cstdlib_strcmp(*a2, v10))
  {
    ++a5;
    ++a2;
    if (!--v11)
    {
      return 0;
    }
  }

  if (!cstdlib_strcmp(a6, ""))
  {
    v14 = *a5;
    v15 = "=";
LABEL_14:
    cstdlib_strcpy(v14, v15);
    return 0;
  }

  if (cstdlib_strlen(a6) <= 0x40)
  {
    v14 = *a5;
    goto LABEL_13;
  }

  v13 = cstdlib_strlen(a6);
  v14 = heap_Realloc(*(a1 + 8), *a5, v13 + 1);
  if (v14)
  {
    *a5 = v14;
LABEL_13:
    v15 = a6;
    goto LABEL_14;
  }

  log_OutPublic(*(a1 + 32), "FE_NNWS", 37000, 0);
  return 2588942346;
}

__int128 **reorder_pMrk(__int128 **result, unsigned int a2, int a3)
{
  if (a2)
  {
    v3 = *result;
    v4 = 1;
    do
    {
      if (v4 < a2 && *v3 == a3 && *(v3 + 11) == *(v3 + 3))
      {
        v5 = *v3;
        v7 = v3[1];
        v6 = v3[3];
        *v3 = v3[2];
        v3[1] = v6;
        v3[2] = v5;
        v3[3] = v7;
        *(v3 + 1) = *(v3 + 9);
      }

      ++v4;
      v3 += 2;
    }

    while (v4 - a2 != 1);
  }

  return result;
}

uint64_t fe_initlingdb_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  LowerCasedMainLng3 = 2307923975;
  v26 = 0;
  v27 = 0;
  if (!a5)
  {
    return LowerCasedMainLng3;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v31);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(*(v31 + 48), "LINGDB", &v29);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(*(v31 + 48), "SYNTHSTREAM", &v30);
  v13 = *(v31 + 48);
  if ((Object & 0x80000000) != 0)
  {
    v24 = "LINGDB";
LABEL_20:
    objc_ReleaseObject(v13, v24);
    return Object;
  }

  v14 = objc_GetObject(v13, "FE_DCTLKP", &v28);
  if ((v14 & 0x80000000) != 0)
  {
    Object = v14;
    objc_ReleaseObject(*(v31 + 48), "LINGDB");
    v13 = *(v31 + 48);
    v24 = "SYNTHSTREAM";
    goto LABEL_20;
  }

  v15 = heap_Calloc(*(v31 + 8), 1, 976);
  if (!v15)
  {
    log_OutPublic(*(v31 + 32), "FE_INITLINGDB", 30000, 0);
    objc_ReleaseObject(*(v31 + 48), "LINGDB");
    objc_ReleaseObject(*(v31 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(v31 + 48), "FE_DCTLKP");
    return 2307923978;
  }

  v16 = v15;
  *a5 = v15;
  *(a5 + 8) = 62336;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  v17 = v31;
  *v15 = v31;
  *(v15 + 8) = a1;
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v18 = *(v29 + 8);
  *(v15 + 80) = *(v30 + 8);
  v19 = v28;
  *(v15 + 64) = *(v28 + 8);
  *(v15 + 72) = v18;
  *(v15 + 48) = *(v19 + 16);
  v20 = objc_GetObject(*(v17 + 48), "CLMOBJECT", &v27);
  if ((v20 & 0x80000000) != 0 || (v21 = v27, *(v16 + 968) = *(v27 + 8), *(v16 + 952) = *(v21 + 16), v20 = (*(*(v16 + 64) + 88))(*(v16 + 48), *(v16 + 56), &v26 + 4, &v26), (v20 & 0x80000000) != 0))
  {
    LowerCasedMainLng3 = v20;
LABEL_22:
    fe_initlingdb_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return LowerCasedMainLng3;
  }

  v23 = v26 == 1 && HIDWORD(v26) == 1;
  *(v16 + 944) = v23;
  LowerCasedMainLng3 = hlp_GetLowerCasedMainLng3(*v16, (v16 + 948));
  if ((LowerCasedMainLng3 & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  return LowerCasedMainLng3;
}

uint64_t hlp_GetLowerCasedMainLng3(uint64_t a1, char *a2)
{
  __s = 0;
  Str = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v4 = 2307923968;
  if (__s && cstdlib_strlen(__s) == 3)
  {
    cstdlib_strcpy(a2, __s);
    if (cstdlib_strlen(a2))
    {
      v5 = 0;
      v6 = 0;
      do
      {
        a2[v5] = ssft_tolower(a2[v5]);
        v5 = ++v6;
      }

      while (cstdlib_strlen(a2) > v6);
    }

    return Str;
  }

  return v4;
}

uint64_t fe_initlingdb_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 62336, 976);
  if ((v3 & 0x80000000) != 0)
  {
    return 2307923976;
  }

  v4 = v3;
  if (a1)
  {
    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    objc_ReleaseObject(*(*a1 + 48), "CLMOBJECT");
    heap_Free(*(*a1 + 8), a1);
  }

  return v4;
}

uint64_t fe_initlingdb_ObjReopen(uint64_t a1, int a2)
{
  v6 = 0;
  result = safeh_HandleCheck(a1, a2, 62336, 976);
  if ((result & 0x80000000) != 0)
  {
    return 2307923976;
  }

  if (a1)
  {
    result = (*(*(a1 + 64) + 88))(*(a1 + 48), *(a1 + 56), &v6 + 4, &v6);
    if ((result & 0x80000000) == 0)
    {
      v5 = v6 == 1 && HIDWORD(v6) == 1;
      *(a1 + 944) = v5;
      return hlp_GetLowerCasedMainLng3(*a1, (a1 + 948));
    }
  }

  return result;
}

uint64_t fe_initlingdb_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62336, 976) & 0x80000000) != 0)
  {
    return 2307923976;
  }

  synstrmaux_InitStreamOpener(a1 + 88, *(*a1 + 32), "FE_INITLINGDB");
  synstrmaux_RegisterInStream((a1 + 88), "text/plain;charset=utf-8", 0, a1 + 912);
  synstrmaux_RegisterInStream((a1 + 88), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 928);
  v7 = synstrmaux_OpenStreams((a1 + 88), *(a1 + 80), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 88), *(a1 + 80));
  }

  return v7;
}

uint64_t fe_initlingdb_Process(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  memset(v199, 0, 12);
  v9 = 2307923978;
  v197 = 0;
  v198 = 0;
  v196 = 0;
  v194 = 0;
  v195 = 0;
  v191 = 0;
  v189 = 0;
  v188 = 0;
  *&__c[3] = 0;
  v187 = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  if ((safeh_HandleCheck(a1, a2, 62336, 976) & 0x80000000) != 0)
  {
    return 2307923976;
  }

  v192 = 0;
  v193 = 0;
  v190 = 0;
  *a5 = 1;
  v10 = (*(a1[10] + 144))(a1[114], a1[115], &v199[1], v199);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(a1[10] + 144))(a1[116], a1[117], v199 + 4, v199);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(a1[9] + 56))(a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(a1[9] + 104))(a3, a4, 1, 0, &v192 + 2);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (!LODWORD(v199[1]))
  {
    v18 = v199[0];
    if (v199[0])
    {
      if (HIDWORD(v199[0]))
      {
        v10 = (*(a1[10] + 88))(a1[116], a1[117], &v195, &v193);
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v19 = v193;
        if ((v193 & 0x1FFFE0) != 0 && (v193 >> 5))
        {
          v20 = 0;
          v21 = 0;
LABEL_23:
          v22 = (v195 + 32 * v20++);
          do
          {
            v24 = *v22;
            v22 += 8;
            v23 = v24;
            v25 = (1 << v24) & 0x1000001003070000;
            v26 = v24 > 0x3C || v25 == 0;
            if (v26 && v23 != 0x4000)
            {
              v21 = 1;
              if (v20 != (v193 >> 5))
              {
                goto LABEL_23;
              }

              goto LABEL_77;
            }

            ++v20;
          }

          while (v20 - (v193 >> 5) != 1);
          if ((v21 & 1) == 0)
          {
            goto LABEL_79;
          }

LABEL_77:
          v50 = (*(a1[9] + 160))(a3, a4, HIWORD(v192), 1, (v193 >> 5), v195, &v192);
          if ((v50 & 0x80000000) != 0)
          {
            v9 = v50;
            log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30002, 0);
            return v9;
          }

          v19 = v193;
        }

        else
        {
LABEL_79:
          *a5 = 1;
        }

        v10 = (*(a1[10] + 96))(a1[116], a1[117], v19);
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v18 = v199[0];
      }

      if (v18)
      {
        *a5 = 1;
        v189 = 1;
      }
    }

    else
    {
      *__s2 = 0;
      if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", __s2) & 0x80000000) != 0 || !*__s2 || !**__s2)
      {
        *a5 = 0;
      }
    }

    return (*(a1[9] + 160))(a3, a4, HIWORD(v192), 3, 1, &v189, &v192);
  }

  v10 = (*(a1[9] + 160))(a3, a4, HIWORD(v192), 3, 1, &v189, &v192);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(a1[10] + 88))(a1[114], a1[115], &v197, &v196);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = hlp_CopyString(*a1, &v198, v197, 0);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_73;
  }

  v12 = a1[10];
  if (v196 == 1)
  {
    v13 = (*(v12 + 96))(a1[114], a1[115], 1);
    if ((v13 & 0x80000000) != 0 || (v13 = (*(a1[10] + 88))(a1[116], a1[117], &v195, &v193), (v13 & 0x80000000) != 0))
    {
      v9 = v13;
LABEL_104:
      v16 = 0;
LABEL_105:
      v17 = 0;
      goto LABEL_106;
    }

    if (!HIDWORD(v199[0]) || (v191 = v193 >> 5, v14 = (*(a1[9] + 160))(a3, a4, HIWORD(v192), 1, v191, v195, &v192), (v14 & 0x80000000) == 0))
    {
      v15 = (*(a1[10] + 96))(a1[116], a1[117], v193);
      v16 = 0;
      v17 = 0;
      v9 = v15 & (v15 >> 31);
      goto LABEL_106;
    }

    v9 = v14;
    v52 = *(*a1 + 32);
    v53 = 30002;
LABEL_103:
    log_OutPublic(v52, "FE_INITLINGDB", v53, 0);
    goto LABEL_104;
  }

  v11 = (*(v12 + 88))(a1[116], a1[117], &v195, &v193);
  if ((v11 & 0x80000000) != 0)
  {
LABEL_73:
    v16 = 0;
    goto LABEL_74;
  }

  v27 = v193;
  v28 = v193 >> 5;
  v191 = v193 >> 5;
  v29 = heap_Alloc(*(*a1 + 8), v193);
  v194 = v29;
  if (!v29)
  {
LABEL_87:
    v52 = *(*a1 + 32);
    v53 = 30000;
    goto LABEL_103;
  }

  cstdlib_memcpy(v29, v195, v193);
  if ((v27 >> 5))
  {
    v30 = 0;
    v31 = 0;
    v32 = 0xFFFF;
    v33 = "normal";
    while (1)
    {
      v34 = v31;
      v35 = &v194[8 * v31];
      v36 = *v35;
      if (*v35 == 34)
      {
        v37 = v31;
      }

      else
      {
        v37 = v32;
      }

      if (v36 == 100)
      {
        if (*(v35 + 3))
        {
          if (v32 == 0xFFFF)
          {
            if (v28 <= (v31 + 1))
            {
              v38 = (v31 + 1);
            }

            else
            {
              v38 = v28;
            }

            v37 = v31;
            while (++v37 < v28)
            {
              if (v194[8 * v37] == 34)
              {
                goto LABEL_57;
              }
            }

            v37 = v38;
          }

LABEL_57:
          v39 = &v194[8 * v37];
          if (v39[3] == v35[3])
          {
            if ((hlp_ValidatePhoneticTranscription(a1, v33, *(v39 + 3)) & 0x80000000) != 0)
            {
              __s1 = v33;
              v40 = v198;
              v41 = cstdlib_strlen(v198);
              v42 = v194;
              v43 = &v194[8 * v34];
              v44 = v43[2];
              if (v41 >= v44)
              {
                if (v30 >= v37)
                {
                  v47 = v37;
                }

                else
                {
                  v47 = v30;
                }

                if (v30 <= v37)
                {
                  v48 = v37;
                }

                else
                {
                  v48 = v30;
                }

                cstdlib_memcpy(&v40[v43[3] - v194[3]], *(v43 + 3), v44);
                v49 = v191;
                cstdlib_memmove(&v42[8 * v48], &v42[8 * v48 + 8], 32 * (v191 + ~v48));
                cstdlib_memmove(&v42[8 * v47], &v42[8 * v47 + 8], 32 * (~v47 + (v49 - 1)));
                v28 = v49 - 2;
                v191 = v49 - 2;
                v46 = heap_Realloc(*(*a1 + 8), v42, 32 * (v49 - 2));
                if (!v46)
                {
                  goto LABEL_87;
                }
              }

              else
              {
                v45 = v191;
                cstdlib_memmove(v43, v43 + 8, 32 * (v191 + ~v30));
                v28 = v45 - 1;
                v191 = v45 - 1;
                v46 = heap_Realloc(*(*a1 + 8), v42, 32 * (v45 - 1));
                if (!v46)
                {
                  goto LABEL_87;
                }
              }

              v33 = __s1;
              v31 = 0;
              v194 = v46;
              v37 = 0xFFFF;
            }

            else
            {
              v37 = 0xFFFF;
              v28 = v191;
            }
          }
        }
      }

      else if (v36 == 36)
      {
        v33 = *(v35 + 3);
      }

      v30 = ++v31;
      v32 = v37;
      if (v31 == v28)
      {
        goto LABEL_89;
      }
    }
  }

  v28 = 0;
  v33 = "normal";
LABEL_89:
  __s1a = v33;
  v54 = *(a1[9] + 160);
  v55 = HIWORD(v192);
  v56 = v198;
  v57 = cstdlib_strlen(v198);
  v58 = v54(a3, a4, v55, 0, (v57 + 1), v56, &v192);
  v59 = *(*a1 + 32);
  if ((v58 & 0x80000000) != 0)
  {
    log_OutPublic(v59, "FE_INITLINGDB", 30002, 0);
    v16 = 0;
    v17 = 0;
    v9 = v58;
    goto LABEL_106;
  }

  log_OutText(v59, "FE_INITLINGDB", 5, 0, "Initializing LINGDB with %s", v56);
  v60 = heap_Alloc(*(*a1 + 8), 4 * v28);
  v16 = v60;
  if (!v60)
  {
    log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30000, 0);
    goto LABEL_105;
  }

  v61 = v194;
  if (v28)
  {
    v62 = v194 + 4;
    v63 = v28;
    do
    {
      if (*(v62 - 4) == 1)
      {
        *v62 = 0;
      }

      v62 += 8;
      --v63;
    }

    while (v63);
    v64 = v61 + 3;
    if (v28)
    {
      v65 = 0;
      v66 = v61 + 3;
      while (1)
      {
        v67 = *v66;
        v66 += 8;
        if (v67 != v61[3])
        {
          break;
        }

        if (v28 == ++v65)
        {
          LOWORD(v65) = v28;
          break;
        }
      }
    }

    else
    {
      LOWORD(v65) = 0;
    }
  }

  else
  {
    LOWORD(v65) = 0;
    v64 = v194 + 3;
  }

  v68 = v65;
  v69 = &v61[8 * v65];
  if (v65 == v28)
  {
    marker_sort(v69, v28 - v65);
  }

  else
  {
    v70 = 0;
    v71 = (v28 - v68);
    v72 = (v69 + 4);
    do
    {
      *(v60 + 4 * v70) = *v72;
      *v72 = v70;
      v72 += 8;
      ++v70;
    }

    while (v71 != v70);
    marker_sort(v69, v28 - v68);
    v73 = (v69 + 4);
    do
    {
      *v73 = *(v16 + 4 * *v73);
      v73 += 8;
      --v71;
    }

    while (v71);
  }

  v11 = (*(a1[8] + 56))(a1[6], a1[7], a3, a4, v61, v28);
  if ((v11 & 0x80000000) != 0 || (v11 = (*(a1[9] + 104))(a3, a4, 3, HIWORD(v192), &v190), (v11 & 0x80000000) != 0) || (v180 = *v64, v11 = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", "normal", &__c[3], &__c[1], __c), (v11 & 0x80000000) != 0))
  {
LABEL_74:
    v17 = 0;
    v9 = v11;
    goto LABEL_106;
  }

  if (*&__c[1])
  {
    v74 = cstdlib_strchr(**&__c[3], __c[0]);
    v75 = __s1a;
    if (v74)
    {
      *v74 = 0;
    }

    hlp_CreatePauseDurParam(*a1, "normal", **&__c[3]);
    v76 = **&__c[3];
  }

  else
  {
    v76 = "normal";
    v75 = __s1a;
  }

  v173 = v16;
  if (v28)
  {
    v77 = v61;
    v78 = 0;
    v179 = 0;
    v79 = 0;
    v178 = 0;
    v80 = 0;
    v81 = 0;
    v82 = v180;
    __s = "normal";
    while (1)
    {
      while (1)
      {
        v83 = v81;
        v84 = &v77[8 * v81];
        if (*v84 > 0x24 || ((1 << *v84) & 0x1400200000) == 0)
        {
          goto LABEL_273;
        }

        v86 = v81 + 1;
        if ((v81 + 1) < v28 && (v87 = v84[3], v88 = &v77[8 * (v81 + 1)], v88[3] == v87))
        {
          v89 = 0;
          v90 = 0;
          v91 = v81;
          v92 = v81 + 1;
          while (1)
          {
            v81 = v92;
            v93 = *v88;
            switch(v93)
            {
              case 36:
                v89 = v92;
                break;
              case 34:
                v81 = v91;
                goto LABEL_153;
              case 21:
                v90 = v92;
                break;
            }

            ++v92;
            if ((v81 + 1) >= v28)
            {
              break;
            }

            v88 = &v77[8 * v92];
            v91 = v81;
            if (v88[3] != v87)
            {
              goto LABEL_153;
            }
          }

          v81 = v28 - 1;
        }

        else
        {
          v89 = 0;
          v90 = 0;
        }

LABEL_153:
        if (!v78 || *v84 != 36 || v90)
        {
          break;
        }

        v80 = *(v84 + 3);
        v78 = 1;
        v81 = v86;
        if (v86 >= v28)
        {
          goto LABEL_276;
        }
      }

      v95 = v84[3];
      v94 = v84 + 3;
      v96 = v95 - v180;
      v177 = v83;
      if (v95 != v180)
      {
        v171 = v89;
        v172 = v80;
        v169 = v82;
        v168 = v76;
        v174 = v79;
        v170 = v77;
        __s1b = v75;
        v97 = v198;
        v98 = cstdlib_strlen(v198);
        while (v97[v96] == 95 || utf8_BelongsToSet(0, v97, v96, v98))
        {
          NextUtf8Offset = utf8_GetNextUtf8Offset(v97, v96);
          *v94 += NextUtf8Offset - v96;
          v96 = NextUtf8Offset;
        }

        v80 = v172;
        v16 = v173;
        v75 = __s1b;
        v83 = v177;
        v77 = v170;
        v89 = v171;
        if (v169 != *v94)
        {
          log_OutText(*(*a1 + 32), "FE_INITLINGDB", 5, 0, "Creating USER TN %s token at pos  %u,%u in lingdb", v168, (v169 - v180), (*v94 - v180));
          inserted = hlp_InsertUserTNToken(a1, a3, a4, HIWORD(v192), &v190, (v169 - v180), LOWORD(v194[8 * v177 + 3]) - v180, v168, v174, __s1b, v198, v179, v194, v191);
          if ((inserted & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          v77 = v194;
          v75 = __s1b;
          v83 = v177;
          v89 = v171;
          v80 = v172;
        }
      }

      v101 = &v77[8 * v83];
      v102 = *v101;
      if (*v101 == 36)
      {
        v75 = *(v101 + 3);
      }

      else if (v102 == 21)
      {
        __s = *(v101 + 3);
      }

      if (v89)
      {
        v75 = *&v77[8 * v89 + 6];
      }

      if (v90)
      {
        __s = *&v77[8 * v90 + 6];
      }

      if (v102 == 34)
      {
        v103 = v80;
        v104 = v75;
        v105 = *(*a1 + 8);
        v106 = cstdlib_strlen(*(v101 + 3)) + 1;
        v79 = heap_Realloc(v105, v178, v106);
        if (v79)
        {
          v107 = 0;
          v108 = 0;
          v77 = v194;
          v109 = v177;
          v110 = &v194[8 * v177];
          v75 = v104;
          v80 = v103;
          while (1)
          {
            v111 = *(*(v110 + 3) + v108);
            if (v111 != 32)
            {
              if (!*(*(v110 + 3) + v108))
              {
                v179 = 0;
                *(v79 + v107) = 0;
                v78 = 1;
                v76 = "phon";
                v178 = v79;
                goto LABEL_272;
              }

              v112 = v107++;
              *(v79 + v112) = v111;
            }

            ++v108;
          }
        }

        log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30000, 0);
        v17 = v178;
        goto LABEL_106;
      }

      if (v102 != 36 && v80 != 0)
      {
        v75 = v80;
      }

      v114 = *(*a1 + 8);
      v115 = v188;
      v116 = cstdlib_strlen(__s);
      v117 = cstdlib_strlen("normal");
      __s1c = v75;
      if (v117 <= cstdlib_strlen(v75))
      {
        v118 = cstdlib_strlen(v75);
      }

      else
      {
        v118 = cstdlib_strlen("normal");
      }

      v119 = heap_Realloc(v114, v115, (v116 + v118 + 2));
      if (!v119)
      {
        log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30000, 0);
        goto LABEL_297;
      }

      v188 = v119;
      if (cstdlib_strcmp(__s, "normal") || cstdlib_strcmp(v75, "normal"))
      {
        break;
      }

      v136 = v188;
      cstdlib_strcpy(v188, "normal");
      v179 = 0;
LABEL_265:
      *&__c[1] = -1;
      BestTNType = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", v136, &__c[3], &__c[1], __c);
      if ((BestTNType & 0x80000000) != 0)
      {
        goto LABEL_295;
      }

      if (*&__c[1])
      {
        v149 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v149)
        {
          *v149 = 0;
        }

        hlp_CreatePauseDurParam(*a1, v136, **&__c[3]);
        v150 = *&__c[3];
      }

      else
      {
        v150 = &v188;
      }

      v16 = v173;
      v75 = __s1c;
      v80 = 0;
      v79 = 0;
      v78 = 0;
      v76 = *v150;
      v77 = v194;
      v109 = v177;
LABEL_272:
      v82 = v77[8 * v109 + 3];
      v28 = v191;
LABEL_273:
      if (++v81 >= v28)
      {
        goto LABEL_276;
      }
    }

    *v188 = 0;
    if (!cstdlib_strcmp(__s, "normal"))
    {
      v124 = 0;
      goto LABEL_238;
    }

    v120 = *__s;
    v121 = v188;
    if (*__s)
    {
      v122 = 0;
      do
      {
        v121[v122++] = ssft_tolower(v120);
        v123 = v122;
        v120 = __s[v122];
      }

      while (v120);
    }

    else
    {
      v123 = 0;
    }

    v121[v123] = 0;
    if (*(a1 + 236) == 1 && cstdlib_strcmp(v121, "normal") && *v121)
    {
      *&__c[1] = -1;
      BestTNType = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", v121, &__c[3], &__c[1], __c);
      if ((BestTNType & 0x80000000) != 0)
      {
        goto LABEL_295;
      }

      if (*&__c[1])
      {
        v126 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v126)
        {
          *v126 = 0;
        }

        v127 = *a1;
        v128 = **&__c[3];
        v129 = cstdlib_strlen(__s1c);
        BestTNType = hlp_CopyString(v127, &v188, v128, v129 + 1);
        if ((BestTNType & 0x80000000) != 0)
        {
LABEL_295:
          v9 = BestTNType;
LABEL_297:
          v16 = v173;
          goto LABEL_287;
        }

        v121 = v188;
        cstdlib_strlen(v188);
      }
    }

    *&__c[1] = -1;
    BestTNType = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", "esctn", &__c[3], &__c[1], __c);
    if ((BestTNType & 0x80000000) != 0)
    {
      goto LABEL_295;
    }

    if (*&__c[1])
    {
      v130 = *a1;
      v131 = **&__c[3];
      v132 = __c[0];
      v133 = cstdlib_strlen(__s1c);
      BestTNType = hlp_FindBestTNType(v130, v131, v132, v121, &v187, v133 + 1);
      if ((BestTNType & 0x80000000) == 0)
      {
        v134 = v187;
        v135 = v188;
        if (v187 != v188)
        {
          if (hlp_LogUnsupportedTNType(*a1, v188))
          {
            log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30005, "%s%s%s%s", "OriginalTNType", v135, "BaseTNType", v134);
          }

          heap_Free(*(*a1 + 8), v135);
          v188 = v134;
        }

        goto LABEL_233;
      }

      if ((BestTNType & 0x1FFF) != 0)
      {
        goto LABEL_295;
      }

      v137 = v188;
      if (hlp_LogUnsupportedTNType(*a1, v188))
      {
        log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30004, "%s%s", "TNType", v137);
      }
    }

    else
    {
      if (!cstdlib_strcmp(v121, "normal") || !cstdlib_strcmp(v121, "sms") || !cstdlib_strcmp(v121, "address") || !cstdlib_strcmp(v121, "spell") || !cstdlib_strcmp(v121, "NOR") || !cstdlib_strcmp(v121, "SMS") || !cstdlib_strcmp(v121, "ADR"))
      {
LABEL_233:
        v140 = cstdlib_strlen(v188);
        if (cstdlib_strcmp(__s1c, "normal") && (v141 = v188, cstdlib_strcmp(v188, "normal")) && *v141)
        {
          v124 = v140 + 1;
          v141[v140] = 95;
        }

        else
        {
          v124 = v140;
        }

LABEL_238:
        v142 = cstdlib_strcmp(__s1c, "normal");
        v136 = v188;
        if (v142 && cstdlib_strcmp(v188, "normal"))
        {
          if (cstdlib_strlen(__s1c) == 7 && cstdlib_strstr(__s1c, "_lid"))
          {
            __s1c[3] = 0;
            v179 = 1;
          }

          else
          {
            v179 = 0;
          }

          if (cstdlib_strlen(__s1c) == 3)
          {
            for (i = 0; i != 3; ++i)
            {
              __s2[i] = ssft_tolower(__s1c[i]);
            }

            __s2[3] = 0;
            *&__c[1] = -1;
            BestTNType = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", "esclang", &__c[3], &__c[1], __c);
            if ((BestTNType & 0x80000000) != 0)
            {
              goto LABEL_295;
            }

            if (*&__c[1] && cstdlib_strstr(**&__c[3], __s2))
            {
              v144 = *__s1c;
              v136 = v188;
              if (*__s1c)
              {
                v145 = 0;
                do
                {
                  v136[v124++] = ssft_tolower(v144);
                  v144 = __s1c[++v145];
                }

                while (v144);
              }

              goto LABEL_262;
            }
          }

          else if (!cstdlib_strcmp(__s1c, "latin"))
          {
            v146 = *__s1c;
            v136 = v188;
            if (*__s1c)
            {
              v147 = 0;
              do
              {
                v136[v124++] = ssft_tolower(v146);
                v146 = __s1c[++v147];
              }

              while (v146);
            }

            goto LABEL_262;
          }

          v136 = v188;
          if (*v188)
          {
            v188[v124 - 1] = 0;
          }

          else
          {
            cstdlib_strcpy(v188, "normal");
          }
        }

        else
        {
          v179 = 0;
        }

LABEL_262:
        v148 = cstdlib_strlen("normal");
        if (cstdlib_strncmp(v136, "normal", v148) && *v136)
        {
          v136[v124] = 0;
        }

        goto LABEL_265;
      }

      if (hlp_LogUnsupportedTNType(*a1, v121))
      {
        log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30004, "%s%s", "TNType", v121);
      }
    }

    if (cstdlib_strcmp(__s1c, "normal"))
    {
      *v188 = 0;
    }

    else
    {
      v138 = *a1;
      v139 = cstdlib_strlen(__s1c);
      BestTNType = hlp_CopyString(v138, &v188, "normal", v139 + 1);
      if ((BestTNType & 0x80000000) != 0)
      {
        goto LABEL_295;
      }
    }

    goto LABEL_233;
  }

  v178 = 0;
  v79 = 0;
  v179 = 0;
  LOWORD(v82) = v180;
LABEL_276:
  v175 = v79;
  v151 = v76;
  v152 = v82;
  log_OutText(*(*a1 + 32), "FE_INITLINGDB", 5, 0, "Creating USER TN %s token in lingdb", v76);
  v153 = HIWORD(v192);
  v154 = v75;
  v155 = v198;
  v156 = cstdlib_strlen(v198);
  inserted = hlp_InsertUserTNToken(a1, a3, a4, v153, &v190, (v152 - v180), v156, v151, v175, v154, v155, v179, v194, v191);
  if ((inserted & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  v157 = v191;
  v158 = v194;
  if (!v191)
  {
LABEL_281:
    v162 = &v194[8 * v191];
    LODWORD(v160) = v191;
LABEL_282:
    marker_sort(v162, v191 - v160);
    goto LABEL_283;
  }

  v159 = 0;
  v160 = 0;
  v161 = v191;
  while (1)
  {
    v162 = &v194[v159];
    if (v194[v159 + 3] != v180)
    {
      break;
    }

    ++v160;
    --v161;
    v159 += 8;
    if (8 * v191 == v159)
    {
      goto LABEL_281;
    }
  }

  if (v191 == v160)
  {
    v16 = v173;
    goto LABEL_282;
  }

  v163 = 0;
  v164 = 0;
  v165 = v162 + 1;
  v16 = v173;
  do
  {
    v166 = &v158[v163 + v159];
    *(v173 + 4 * v164) = v166[1];
    v166[1] = v164++;
    v163 += 8;
  }

  while (v161 != v164);
  marker_sort(v162, v157 - v160);
  v167 = v161;
  do
  {
    *v165 = *(v173 + 4 * *v165);
    v165 += 8;
    --v167;
  }

  while (v167);
LABEL_283:
  inserted = hlp_ReplacePauseZeroWithNluBndNo_And_WriteMarkersToLingDB(*a1, a1[9], a3, a4, HIWORD(v192), &v194, &v191);
  if ((inserted & 0x80000000) == 0)
  {
    inserted = (*(a1[10] + 96))(a1[114], a1[115], v196);
    if ((inserted & 0x80000000) == 0)
    {
      inserted = (*(a1[10] + 96))(a1[116], a1[117], v193);
    }
  }

LABEL_286:
  v9 = inserted;
LABEL_287:
  v17 = v178;
LABEL_106:
  if (v188)
  {
    heap_Free(*(*a1 + 8), v188);
    v188 = 0;
  }

  if (v17)
  {
    heap_Free(*(*a1 + 8), v17);
  }

  if (v194)
  {
    heap_Free(*(*a1 + 8), v194);
  }

  if (v198)
  {
    heap_Free(*(*a1 + 8), v198);
  }

  if (v16)
  {
    heap_Free(*(*a1 + 8), v16);
  }

  return v9;
}

uint64_t hlp_CopyString(uint64_t a1, uint64_t *a2, char *__s, int a4)
{
  if (__s)
  {
    v8 = cstdlib_strlen(__s) + 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = heap_Realloc(*(a1 + 8), *a2, (v8 + a4));
  if (v9)
  {
    v10 = v9;
    if (__s)
    {
      v11 = __s;
    }

    else
    {
      v11 = "";
    }

    cstdlib_strcpy(v9, v11);
    result = 0;
    *a2 = v10;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_INITLINGDB", 30000, 0);
    return 2307923978;
  }

  return result;
}

uint64_t hlp_ValidatePhoneticTranscription(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v27 = *MEMORY[0x277D85DE8];
  v23 = 0;
  if (!a3)
  {
    return v3;
  }

  hlp_GetPhonSrcAndLanguageOfOriginFromPhonWithMetaData(a3, __dst, v24);
  hlp_GetLowerCasedLng3FromLangTag(a1, a2, __s);
  if (cstdlib_strlen(__s) != 3)
  {
    return 0;
  }

  v6 = *(a1 + 968);
  if (!v6 || !(*(v6 + 56))(*(a1 + 952), *(a1 + 960)))
  {
    if (cstdlib_strcmp(__s, (a1 + 948)))
    {
      return 2307923968;
    }

    else
    {
      return 0;
    }
  }

  v7 = cstdlib_strstr(v3, "_#_");
  if (v7)
  {
    v8 = v7;
    do
    {
      *v8 = 35;
      v9 = cstdlib_strlen(v3);
      cstdlib_memmove(v8 + 1, v8 + 3, v9 - (v8 - v3) - 2);
      v8 = cstdlib_strstr(v3, "_#_");
    }

    while (v8);
  }

  v10 = !hlp_checkDoClmInCurrentComponent(a1) || hlp_checkDoClmForLng3(a1, __s) == 0;
  v11 = cstdlib_strstr(v3, "\x14");
  v12 = v11;
  if (v11)
  {
    *v11 = 0;
  }

  if (v10)
  {
    v13 = cstdlib_strlen(v24) == 0;
    v14 = (*(*(a1 + 968) + 120))(*(a1 + 952), *(a1 + 960), __s, v24, v3, &v23, v13);
    v15 = 0;
    if (v23)
    {
      v16 = 1;
    }

    else
    {
      v16 = v14 <= -1;
    }

    if (v16)
    {
      v3 = v14;
    }

    else
    {
      v3 = 2307931781;
    }

    if (!v12)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v17 = *(*a1 + 8);
  v18 = cstdlib_strlen(v3);
  v15 = heap_Alloc(v17, (4 * v18 + 4));
  if (v15)
  {
    v19 = *(*(a1 + 968) + 64);
    v20 = cstdlib_strlen(v3);
    v3 = v19(*(a1 + 952), *(a1 + 960), __s, v3, v15, 0, 0, (4 * v20 + 4));
    if (!v12)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v3 = 2307923978;
  if (v12)
  {
LABEL_28:
    v21 = cstdlib_strlen("\x14");
    cstdlib_strncpy(v12, "\x14", v21);
  }

LABEL_29:
  if (v15)
  {
    heap_Free(*(*a1 + 8), v15);
  }

  return v3;
}

uint64_t hlp_CreatePauseDurParam(uint64_t a1, const char *a2, const char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0;
  cstdlib_strcpy(__dst, "tnpausedur");
  v6 = cstdlib_strlen(a2);
  result = cstdlib_strlen(__dst);
  if (v6 < 255 - result)
  {
    cstdlib_strcat(__dst, a2);
    result = paramc_ParamGetUInt(*(a1 + 40), __dst, &v8);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcpy(__dst, "tnpausedur");
      cstdlib_strcat(__dst, a3);
      return paramc_ParamSetUInt(*(a1 + 40), __dst, v8);
    }
  }

  return result;
}

uint64_t hlp_InsertUserTNToken(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int16 *a5, unsigned int a6, unsigned __int16 a7, const char *a8, char *a9, char *a10, const char *a11, int a12, uint64_t a13, unsigned __int16 a14)
{
  v112 = *MEMORY[0x277D85DE8];
  v109 = a7;
  v108 = 0;
  v106 = 0;
  v107 = 0;
  v21 = *a5;
  v22 = hlp_checkDoClmInCurrentComponent(a1);
  hlp_GetLowerCasedLng3FromLangTag(a1, a10, __s);
  if (*a5)
  {
    v99 = v21;
    v23 = *a5;
    v98 = v22;
    while (1)
    {
      v24 = (*(*(a1 + 9) + 168))(a2, a3, v23, 1, 1, &v107 + 2, &v108);
      if ((v24 & 0x80000000) != 0)
      {
LABEL_131:
        v28 = *(*a1 + 32);
        v90 = 30003;
        goto LABEL_136;
      }

      if (HIWORD(v107) < a6)
      {
        goto LABEL_8;
      }

      v24 = (*(*(a1 + 9) + 168))(a2, a3, *a5, 0, 1, &v106, &v108);
      if ((v24 & 0x80000000) != 0)
      {
        goto LABEL_131;
      }

      if (v106 == 3 || HIWORD(v107) == v109)
      {
LABEL_8:
        v25 = 1;
        goto LABEL_9;
      }

      v27 = (*(*(a1 + 9) + 80))(a2, a3, *a5, a5);
      if ((v27 & 0x80000000) != 0)
      {
        return v27;
      }

      v106 = 5;
      v24 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 0, 1, &v106, &v107);
      v28 = *(*a1 + 32);
      if ((v24 & 0x80000000) != 0)
      {
        goto LABEL_135;
      }

      log_OutText(v28, "FE_INITLINGDB", 5, 0, "Creating token %u %u in lingdb", HIWORD(v107), v109);
      v29 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 1, 1, &v107 + 2, &v107);
      if ((v29 & 0x80000000) != 0)
      {
        goto LABEL_133;
      }

      v29 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 2, 1, &v109, &v107);
      if ((v29 & 0x80000000) != 0)
      {
        goto LABEL_133;
      }

      v30 = *(*(a1 + 9) + 160);
      v31 = *a5;
      v32 = cstdlib_strlen(a8);
      v24 = v30(a2, a3, v31, 4, (v32 + 1), a8, &v107);
      if ((v24 & 0x80000000) != 0)
      {
        goto LABEL_134;
      }

      if (a12)
      {
        v24 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 6, 4, "lid", &v107);
        if ((v24 & 0x80000000) != 0)
        {
          return v24;
        }
      }

      if (a9)
      {
        break;
      }

LABEL_61:
      v25 = 0;
LABEL_9:
      if (HIWORD(v107) == v109)
      {
        return v24;
      }

      v24 = (*(*(a1 + 9) + 120))(a2, a3, *a5, a5);
      v26 = v24 >= 0 ? v25 : 0;
      if ((v26 & 1) == 0)
      {
        return v24;
      }

      v23 = *a5;
      if (!*a5)
      {
        if (HIWORD(v107) != a6)
        {
          return v24;
        }

        v27 = (*(*(a1 + 9) + 80))(a2, a3, v99, a5);
        if ((v27 & 0x80000000) != 0)
        {
          return v27;
        }

        v106 = 5;
        v24 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 0, 1, &v106, &v107);
        v28 = *(*a1 + 32);
        if ((v24 & 0x80000000) == 0)
        {
          log_OutText(v28, "FE_INITLINGDB", 5, 0, "Creating token %u %u in lingdb", HIWORD(v107), v109);
          v29 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 1, 1, &v107 + 2, &v107);
          if ((v29 & 0x80000000) != 0 || (v29 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 2, 1, &v109, &v107), (v29 & 0x80000000) != 0))
          {
LABEL_133:
            v24 = v29;
          }

          else
          {
            v87 = *(*(a1 + 9) + 160);
            v88 = *a5;
            v89 = cstdlib_strlen(a8);
            v24 = v87(a2, a3, v88, 4, (v89 + 1), a8, &v107);
            if ((v24 & 0x80000000) == 0)
            {
              return v24;
            }
          }

LABEL_134:
          v28 = *(*a1 + 32);
        }

LABEL_135:
        v90 = 30002;
LABEL_136:
        log_OutPublic(v28, "FE_INITLINGDB", v90, 0);
        return v24;
      }
    }

    v97 = a8;
    v103 = 0;
    v33 = cstdlib_strstr(a9, "_#_");
    if (v33)
    {
      v34 = v33;
      do
      {
        *v34 = 35;
        v35 = cstdlib_strlen(a9);
        cstdlib_memmove(v34 + 1, v34 + 3, v35 - (v34 - a9) - 2);
        v34 = cstdlib_strstr(a9, "_#_");
      }

      while (v34);
    }

    if (cstdlib_strlen(__s) != 3)
    {
      v37 = a9;
      goto LABEL_31;
    }

    v36 = !v98 || hlp_checkDoClmForLng3(a1, __s) == 0;
    v38 = *(*a1 + 8);
    v39 = cstdlib_strlen(a9);
    v40 = heap_Alloc(v38, 4 * v39 + 200);
    if (!v40)
    {
      log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 34000, 0);
      return 2307923978;
    }

    __s1 = v40;
    hlp_GetPhonSrcAndLanguageOfOriginFromPhonWithMetaData(a9, __s2, v104);
    cstdlib_strcpy(__dst, "");
    v41 = cstdlib_strstr(a9, "\x14");
    if (v41)
    {
      v42 = v41;
      cstdlib_strcat(__dst, v41);
      *v42 = 0;
    }

    v43 = *(a1 + 121);
    if (v43 && (*(v43 + 56))(*(a1 + 119), *(a1 + 120)))
    {
      if (v36)
      {
        v44 = cstdlib_strlen(v104);
        v45 = (*(*(a1 + 121) + 120))(*(a1 + 119), *(a1 + 120), __s, v104, a9, &v103, v44 == 0);
        if (v103)
        {
          v46 = 1;
        }

        else
        {
          v46 = v45 <= -1;
        }

        if (v46)
        {
          LODWORD(v24) = v45;
        }

        else
        {
          LODWORD(v24) = -1987035515;
        }

        if (!v44 && cstdlib_strlen(v104))
        {
          cstdlib_strcpy(__dst, "\x14");
          cstdlib_strcat(__dst, __s2);
          cstdlib_strcat(__dst, "\x14");
          cstdlib_strcat(__dst, v104);
        }

LABEL_50:
        if ((v24 & 0x80000000) == 0)
        {
          if (v36)
          {
            cstdlib_strcpy(__s1, a9);
            cstdlib_strcat(__s1, __dst);
            if (cstdlib_strcmp(__s, a1 + 948))
            {
              v47 = *(*(a1 + 9) + 160);
              v48 = *a5;
              v49 = cstdlib_strlen(__s);
              v27 = v47(a2, a3, v48, 6, (v49 + 1), __s, &v107);
              v37 = __s1;
              if ((v27 & 0x80000000) != 0)
              {
                return v27;
              }
            }

            else
            {
              v37 = __s1;
            }

            goto LABEL_57;
          }

LABEL_56:
          v37 = __s1;
          cstdlib_strcat(__s1, __dst);
LABEL_57:
          v52 = *(*(a1 + 9) + 160);
          v53 = *a5;
          v54 = cstdlib_strlen(v37);
          v24 = v52(a2, a3, v53, 3, (v54 + 1), v37, &v107);
          if (v37 != a9)
          {
            heap_Free(*(*a1 + 8), v37);
          }

          a8 = v97;
LABEL_60:
          if ((v24 & 0x80000000) != 0)
          {
            goto LABEL_134;
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }

      v50 = *(*(a1 + 121) + 64);
      v51 = cstdlib_strlen(a9);
      if ((v50(*(a1 + 119), *(a1 + 120), __s, a9, __s1, 0, 0, (4 * v51 + 4)) & 0x80000000) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (!cstdlib_strcmp(__s, a1 + 948))
    {
      goto LABEL_50;
    }

LABEL_62:
    v55 = cstdlib_strlen("§");
    v102 = v109;
    v56 = a11;
    v57 = cstdlib_strstr(&a11[HIWORD(v107)], "§");
    if (v57 == &a11[HIWORD(v107)])
    {
      v37 = __s1;
      cstdlib_strcpy(__s1, __dst);
      v24 = 0;
      a8 = v97;
    }

    else
    {
      v58 = v57;
      if (v57)
      {
        v93 = v55 - a11;
        v92 = v55;
        do
        {
          if (v58 - v56 >= v102 || v58 == &v56[HIWORD(v107)])
          {
            break;
          }

          if (v58 <= v56)
          {
            v94 = v58 - v56;
          }

          else
          {
            v60 = v93 + v58;
            v61 = v58;
            while (1)
            {
              v62 = *--v61;
              if (v62 != 32)
              {
                break;
              }

              ++v55;
              v58 = v61;
              if (v61 <= v56)
              {
                v55 = v60;
                v58 = v56;
                break;
              }
            }

            v94 = v58 - v56;
          }

          v102 -= v55;
          v63 = cstdlib_strlen(&v58[v55]);
          cstdlib_memmove(v58, &v58[v55], v63 + 1);
          v64 = *(*(a1 + 9) + 160);
          v65 = cstdlib_strlen(v56);
          v27 = v64(a2, a3, a4, 0, (v65 + 1), v56, &v107);
          if ((v27 & 0x80000000) != 0)
          {
            return v27;
          }

          v27 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 2, 1, &v102, &v107);
          if ((v27 & 0x80000000) != 0)
          {
            return v27;
          }

          v100 = 0;
          v101 = *a5;
          v27 = (*(*(a1 + 9) + 120))(a2, a3);
          if ((v27 & 0x80000000) != 0)
          {
            return v27;
          }

          v66 = v101;
          if (v101)
          {
            v95 = v55;
            v67 = v55 + v94;
            do
            {
              v27 = (*(*(a1 + 9) + 168))(a2, a3, v66, 1, 1, &v100 + 2, &v108);
              if ((v27 & 0x80000000) != 0)
              {
                return v27;
              }

              v27 = (*(*(a1 + 9) + 168))(a2, a3, v101, 2, 1, &v100, &v108);
              if ((v27 & 0x80000000) != 0)
              {
                return v27;
              }

              v68 = v94 <= HIWORD(v100) && v67 >= HIWORD(v100);
              if (v68 && v94 <= v100 && v67 >= v100)
              {
                v69 = v101;
                v70 = v101;
              }

              else
              {
                v69 = v101;
                if (v67 <= HIWORD(v100))
                {
                  HIWORD(v100) -= v95;
                  LOWORD(v100) = v100 - v95;
                  v27 = (*(*(a1 + 9) + 160))(a2, a3, v101, 1, 1, &v100 + 2, &v107);
                  if ((v27 & 0x80000000) != 0)
                  {
                    return v27;
                  }

                  v27 = (*(*(a1 + 9) + 160))(a2, a3, v101, 2, 1, &v100, &v107);
                  if ((v27 & 0x80000000) != 0)
                  {
                    return v27;
                  }

                  v70 = 0;
                  v69 = v101;
                }

                else
                {
                  v70 = 0;
                }
              }

              v27 = (*(*(a1 + 9) + 120))(a2, a3, v69, &v101);
              if ((v27 & 0x80000000) != 0)
              {
                return v27;
              }

              if (v70)
              {
                v27 = (*(*(a1 + 9) + 192))(a2, a3, v70);
                if ((v27 & 0x80000000) != 0)
                {
                  return v27;
                }
              }

              v66 = v101;
            }

            while (v101);
          }

          v56 = a11;
          v58 = cstdlib_strstr(&a11[HIWORD(v107)], "§");
          v55 = v92;
        }

        while (v58);
      }

      v71 = v102;
      v72 = v109;
      v73 = v109 - v102;
      a8 = v97;
      if (v109 > v102 && a14)
      {
        v75 = (a13 + 16);
        v74 = a14;
        do
        {
          v76 = *(v75 - 1);
          if (v76 <= v71)
          {
            v81 = *v75;
            if (*v75)
            {
              v82 = v81 + v76;
              if (v71 < v82)
              {
                v83 = (v82 - v71);
                if (v83 >= v73)
                {
                  v83 = v73;
                }

                *v75 = v81 - v83;
              }
            }
          }

          else
          {
            v77 = (v76 - v71);
            v78 = *v75;
            if (*v75)
            {
              v79 = *(v75 - 1) >= v72;
            }

            else
            {
              v79 = 1;
            }

            v80 = (v72 - v76);
            if (v79)
            {
              v80 = 0;
            }

            if (v77 >= v73)
            {
              v77 = v73;
            }

            *(v75 - 1) = v76 - v77;
            *v75 = v78 - v80;
          }

          v75 += 8;
          --v74;
        }

        while (v74);
      }

      v84 = *(*(a1 + 9) + 160);
      v85 = *a5;
      v86 = cstdlib_strlen("normal");
      v24 = v84(a2, a3, v85, 4, (v86 + 1), "normal", &v107);
      heap_Free(*(*a1 + 8), __s1);
      if ((v24 & 0x80000000) != 0)
      {
        goto LABEL_134;
      }

      v37 = 0;
    }

LABEL_31:
    if (!v37)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  return 0;
}

uint64_t hlp_LogUnsupportedTNType(uint64_t a1, char *__s)
{
  __s1 = 0;
  v4 = cstdlib_strlen(__s);
  if ((paramc_ParamGetStr(*(a1 + 40), "domainmngrtntypes", &__s1) & 0x80000000) != 0 || !__s1 || !*__s1 || (v5 = cstdlib_strstr(__s1, __s)) == 0 || (v6 = v5, v5 != __s1) && *(v5 - 1) != 124 || (result = 0, (v8 = v6[v4]) != 0) && v8 != 124)
  {
    if ((paramc_ParamGetStr(*(a1 + 40), "extraesctn", &__s1) & 0x80000000) != 0)
    {
      return 1;
    }

    if (!__s1)
    {
      return 1;
    }

    result = cstdlib_strcmp(__s1, __s);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t hlp_FindBestTNType(uint64_t a1, char *a2, int a3, char *__s1, const char **a5, int a6)
{
  *a5 = __s1;
  result = cstdlib_strcmp(__s1, "internal-nuance-system-norm");
  if (result)
  {
    while (1)
    {
      v13 = cstdlib_strstr(a2, *a5);
      if (v13)
      {
        v14 = v13[cstdlib_strlen(*a5)];
        if (a3 == v14)
        {
          return 0;
        }

        result = 0;
        if (!v14 || v14 == 124)
        {
          return result;
        }
      }

      v15 = cstdlib_strrchr(*a5, 58);
      v16 = *a5;
      if (!v15)
      {
        break;
      }

      if (v16 == __s1)
      {
        *a5 = 0;
        result = hlp_CopyString(a1, a5, __s1, a6);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v15 = cstdlib_strrchr(*a5, 58);
        if (!v15)
        {
          continue;
        }
      }

      *v15 = 0;
    }

    if (v16 != __s1)
    {
      heap_Free(*(a1 + 8), v16);
    }

    *a5 = 0;
    return 2307923968;
  }

  return result;
}

uint64_t hlp_ReplacePauseZeroWithNluBndNo_And_WriteMarkersToLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int **a6, unsigned __int16 *a7)
{
  v7 = a7;
  v55 = 0;
  v14 = *a7;
  if (!*a7)
  {
    goto LABEL_35;
  }

  v15 = 0;
  v16 = *a6;
  v17 = *a7;
  do
  {
    if (*v16 == 8 && v16[6] == 1)
    {
      ++v15;
    }

    v16 += 8;
    --v17;
  }

  while (v17);
  if (v15)
  {
    v18 = 2307923978;
    v19 = heap_Calloc(*(a1 + 8), 8, v15);
    if (!v19)
    {
      goto LABEL_45;
    }

    v20 = v19;
    v14 = *v7;
    if (*v7)
    {
      v49 = a3;
      v50 = a4;
      v51 = a5;
      v21 = 0;
      v53 = v7;
      v54 = 0;
      v22 = -1;
      v52 = v19;
      while (1)
      {
        v23 = *a6;
        v24 = &(*a6)[8 * v21];
        if (*v24 == 1)
        {
          v22 = v21;
        }

        else if ((v22 & 0x80000000) == 0 && *v24 == 8 && v24[6] == 1)
        {
          v25 = v22;
          v26 = &v23[8 * v22];
          v27 = v26[3];
          v28 = v22;
          if (v14)
          {
            v29 = 1;
            v30 = v14;
            v31 = *a6;
            v28 = v22;
            do
            {
              v32 = v31[3];
              v33 = v32 == v27;
              if (v32 > v27)
              {
                break;
              }

              v35 = *v31;
              v31 += 8;
              v34 = v35;
              if (v33 && v34 == 51)
              {
                v28 = v29;
              }

              ++v29;
              --v30;
            }

            while (v30);
            v25 = v28;
          }

          v37 = v26[1];
          if (v21 == v25)
          {
            v7 = v53;
          }

          else
          {
            if (v21 + 1 != v14)
            {
              cstdlib_memmove(v24, &v23[8 * v21 + 8], 32 * (~v21 + v14));
              v14 = *v53;
              v23 = *a6;
            }

            v38 = v14 - 1;
            *v53 = v38;
            v39 = &v23[8 * v28];
            v40 = v38 - v28;
            v7 = v53;
            cstdlib_memmove(v39 + 8, &v23[8 * v25], 32 * v40);
            ++*v53;
            v23 = *a6;
          }

          v41 = &v23[8 * v25];
          *v41 = 51;
          v41[1] = v37;
          v41[2] = 0;
          v41[3] = v27;
          v41[4] = 0;
          v42 = *(a1 + 8);
          v43 = cstdlib_strlen("BND:N");
          *&(*a6)[8 * v25 + 6] = heap_Alloc(v42, v43 + 1);
          v44 = *&(*a6)[8 * v25 + 6];
          if (!v44)
          {
            v20 = v52;
            v18 = 2307923978;
            v48 = v54;
            goto LABEL_39;
          }

          v20 = v52;
          *(v52 + 8 * v54) = v44;
          cstdlib_strcpy(*&(*a6)[8 * v25 + 6], "BND:N");
          v14 = *v7;
          ++v54;
        }

        if (++v21 >= v14)
        {
          a5 = v51;
          a3 = v49;
          a4 = v50;
          v48 = v54;
          goto LABEL_36;
        }
      }
    }

    v48 = 0;
  }

  else
  {
LABEL_35:
    v48 = 0;
    v20 = 0;
  }

LABEL_36:
  v18 = (*(a2 + 160))(a3, a4, a5, 1, v14, *a6, &v55);
  if ((v18 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "FE_INITLINGDB", 30002, 0);
  }

  if (v20)
  {
LABEL_39:
    if (v48)
    {
      v45 = v48;
      v46 = v20;
      do
      {
        if (*v46)
        {
          heap_Free(*(a1 + 8), *v46);
        }

        ++v46;
        --v45;
      }

      while (v45);
    }

    heap_Free(*(a1 + 8), v20);
  }

LABEL_45:
  heap_Free(*(a1 + 8), *a6);
  *a6 = 0;
  *v7 = 0;
  return v18;
}

uint64_t fe_initlingdb_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62336, 976) & 0x80000000) != 0)
  {
    return 2307923976;
  }

  v3 = *(a1 + 80);

  return synstrmaux_CloseStreams((a1 + 88), v3);
}

uint64_t fe_initlingdb_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2307923969;
  }

  result = 0;
  *a2 = &IFeInitlingdb;
  return result;
}

unint64_t hlp_GetPhonSrcAndLanguageOfOriginFromPhonWithMetaData(char *a1, char *__dst, _BYTE *a3)
{
  cstdlib_strcpy(__dst, "EXTMRKP");
  *a3 = 0;
  result = cstdlib_strstr(a1, "\x14");
  if (result)
  {
    v7 = (result + 1);
    result = cstdlib_strstr((result + 1), "\x14");
    v8 = result;
    if (result)
    {
      v9 = result - v7;
    }

    else
    {
      result = cstdlib_strlen(v7);
      v9 = result;
    }

    if (v9 <= 9)
    {
      result = cstdlib_strncpy(__dst, v7, v9);
      __dst[v9] = 0;
    }

    if (v8)
    {
      v10 = v8 + 1;
      if (cstdlib_strlen((v8 + 1)) == 3 || (result = cstdlib_strlen((v8 + 1)), result >= 4) && (result = cstdlib_strcmp((v8 + 4), "\x14"), !result))
      {
        for (i = 0; i != 3; ++i)
        {
          result = ssft_tolower(*(v10 + i));
          a3[i] = result;
        }

        a3[3] = 0;
      }
    }
  }

  return result;
}

char *hlp_GetLowerCasedLng3FromLangTag(uint64_t a1, char *a2, char *__dst)
{
  if (*a2 && LH_stricmp(a2, "normal"))
  {
    if (cstdlib_strlen(a2) == 3)
    {
      cstdlib_strcpy(__dst, a2);
      result = cstdlib_strlen(__dst);
      if (result)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          __dst[v7] = ssft_tolower(__dst[v7]);
          v7 = ++v8;
          result = cstdlib_strlen(__dst);
        }

        while (result > v8);
      }

      return result;
    }

    v9 = "";
  }

  else
  {
    v9 = (a1 + 948);
  }

  return cstdlib_strcpy(__dst, v9);
}

BOOL hlp_checkDoClmInCurrentComponent(void *a1)
{
  __s1 = 0;
  v3 = 0;
  return (((*(a1[121] + 96))(a1[119], a1[120], &v3) & 0x80000000) != 0 || !v3) && ((paramc_ParamGetStr(*(*a1 + 40), "clm", &__s1) & 0x80000000) != 0 || !__s1 || !cstdlib_strcmp(__s1, "yes"));
}

uint64_t hlp_checkDoClmForLng3(const char *a1, char *__s1)
{
  v9 = *MEMORY[0x277D85DE8];
  __s1a = 0;
  result = cstdlib_strcmp(__s1, a1 + 948);
  if (result)
  {
    cstdlib_strcpy(__dst, "clm");
    cstdlib_strcat(__dst, __s1);
    if ((paramc_ParamGetStr(*(*a1 + 40), __dst, &__s1a) & 0x80000000) != 0 || (v5 = __s1a) == 0)
    {
      __s1a = 0;
      Str = paramc_ParamGetStr(*(*a1 + 40), "noclmset", &__s1a);
      v5 = __s1a;
      if (Str < 0 || !__s1a)
      {
        if (!__s1a)
        {
          return 1;
        }
      }

      else
      {
        if (cstdlib_strstr(__s1a, __s1))
        {
          v5 = "no";
        }

        else
        {
          v5 = "yes";
        }

        __s1a = v5;
      }
    }

    return cstdlib_strcmp(v5, "yes") == 0;
  }

  return result;
}

uint64_t fe_initlingdb_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2307923975;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t CLM_InitFromCLMv2Lua(uint64_t a1, const char *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v44 = 0;
  Allocator = ooc_utils_createAllocator(v45, *(a1 + 32), *(a1 + 40));
  v5 = LH_ERROR_to_VERROR(Allocator);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_35;
  }

  v6 = luavmldoutil_initialize_lua_vm(*(a1 + 32), *(a1 + 40), v45, "getForeignLangSupportForCLMv2", "CLM", &v44, "clm");
  v7 = 0;
  v8 = v44;
  if ((v6 & 0x80000000) == 0 && v44)
  {
    *(a1 + 200) = 0;
    v9 = LuaVMLDO_RunFunctionReturningString(v8, "getForeignLangSupportForCLMv2", a2, 0x400u, __s);
    v5 = LH_ERROR_to_VERROR(v9);
    if ((v5 & 0x80000000) == 0)
    {
      if (cstdlib_strlen(__s) || (v42 = LuaVMLDO_RunFunctionReturningString(v8, "getFeClmSupportedLanguages", "all", 0x400u, __s), (LH_ERROR_to_VERROR(v42) & 0x80000000) == 0) && cstdlib_strstr(__s, a2))
      {
        *(a1 + 200) = 1;
      }

      v10 = v44;
      *__s = 0;
      v11 = PNEW_LDOObject_Con(v45, v45, __s);
      v12 = LH_ERROR_to_VERROR(v11);
      if ((v12 & 0x80000000) != 0)
      {
        v7 = v12;
        log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "Error creating LDOObject");
      }

      else
      {
        v13 = LuaVMLDO_RunFunctionWithStringArgumentReturningTableWithStrings(v10, "getLoanPhonemeSupport", a2, *__s);
        v14 = LH_ERROR_to_VERROR(v13);
        if ((v14 & 0x80000000) != 0)
        {
          v7 = 0;
        }

        else
        {
          v7 = v14;
          v16 = *(*__s + 32);
          v15 = *(*__s + 40);
          *(a1 + 204) = (v15 - v16) >> 5;
          if (((v15 - v16) & 0x1FFFE0) != 0)
          {
            v17 = heap_Calloc(*(*(a1 + 24) + 8), ((v15 - v16) >> 5), 16);
            *(a1 + 208) = v17;
            if (v17)
            {
              if (v16 < v15)
              {
                v18 = 0;
                v43 = v15;
                while (1)
                {
                  v19 = v16[3];
                  v20 = LHString_BorrowCPtr(*v16);
                  if (cstdlib_strlen(v20) != 3)
                  {
                    goto LABEL_49;
                  }

                  v21 = 16 * v18;
                  v22 = 3;
                  do
                  {
                    v23 = *v20++;
                    *(*(a1 + 208) + v21++) = cstdlib_tolower(v23);
                    --v22;
                  }

                  while (v22);
                  v24 = LHString_BorrowCPtr(v19);
                  if (!v24 || (v25 = v24, !cstdlib_strlen(v24)))
                  {
LABEL_49:
                    v7 = 2347769856;
                    goto LABEL_51;
                  }

                  v26 = cstdlib_strstr(v25, "||");
                  for (i = 1; v26; ++i)
                  {
                    v29 = v26[2];
                    v28 = v26 + 2;
                    if (!v29)
                    {
                      break;
                    }

                    v26 = cstdlib_strstr(v28, "||");
                  }

                  *(*(a1 + 208) + 16 * v18 + 4) = i;
                  v30 = heap_Calloc(*(*(a1 + 24) + 8), i, 24);
                  *(*(a1 + 208) + 16 * v18 + 8) = v30;
                  if (!v30)
                  {
                    goto LABEL_50;
                  }

                  v31 = cstdlib_strstr(v25, "|");
                  if (v31)
                  {
                    break;
                  }

LABEL_33:
                  ++v18;
                  v16 += 4;
                  if (v16 >= v43)
                  {
                    goto LABEL_51;
                  }
                }

                v32 = v31;
                v33 = 0;
                while (1)
                {
                  v34 = v33;
                  v35 = hlp_AllocAndCopy(*(a1 + 24), (*(*(a1 + 208) + 16 * v18 + 8) + 24 * v33), v25, v32);
                  if ((v35 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v36 = cstdlib_strstr(v32 + 1, "|");
                  if (!v36)
                  {
                    goto LABEL_32;
                  }

                  v37 = v36;
                  v35 = hlp_AllocAndCopy(*(a1 + 24), (*(*(a1 + 208) + 16 * v18 + 8) + 24 * v34 + 8), v32 + 1, v36);
                  if ((v35 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v38 = v37 + 1;
                  v39 = cstdlib_strstr(v38, "|");
                  if (!v39)
                  {
                    v39 = &v38[cstdlib_strlen(v38)];
                  }

                  v35 = hlp_AllocAndCopy(*(a1 + 24), (*(*(a1 + 208) + 16 * v18 + 8) + 24 * v34 + 16), v38, v39);
                  if ((v35 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v40 = cstdlib_strstr(v38, "||");
                  if (v40)
                  {
                    v25 = v40 + 2;
                    v32 = cstdlib_strstr(v40 + 2, "|");
                    v33 = v34 + 1;
                    if (v32)
                    {
                      continue;
                    }
                  }

LABEL_32:
                  v7 = 0;
                  goto LABEL_33;
                }

                v7 = v35;
              }
            }

            else
            {
LABEL_50:
              log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0);
              v7 = 2347769866;
            }
          }
        }
      }

LABEL_51:
      if (*__s)
      {
        OOC_PlacementDeleteObject(v45, *__s);
      }

      goto LABEL_36;
    }

LABEL_35:
    v7 = v5;
LABEL_36:
    v8 = v44;
  }

  if (v8)
  {
    luavmldoutil_destroy_lua_vm(v45, &v44);
  }

  OOCAllocator_Des();
  if ((v7 & 0x80000000) != 0)
  {
    CLM_DeInitFromCLMv2Lua(a1);
  }

  return v7;
}

void *CLM_DeInitFromCLMv2Lua(void *result)
{
  v1 = result;
  *(result + 50) = 0;
  v2 = result[26];
  if (v2)
  {
    v3 = *(result + 102);
    if (*(result + 102))
    {
      v4 = 0;
      do
      {
        v5 = v2 + 16 * v4;
        v6 = *(v5 + 8);
        if (v6)
        {
          if (*(v5 + 4))
          {
            v7 = 0;
            v8 = 0;
            do
            {
              v9 = *(v2 + 16 * v4 + 8);
              v10 = *(v9 + v7);
              if (v10)
              {
                heap_Free(*(v1[3] + 8), v10);
                v2 = v1[26];
                v9 = *(v2 + 16 * v4 + 8);
                *(v9 + v7) = 0;
              }

              v11 = *(v9 + v7 + 8);
              if (v11)
              {
                heap_Free(*(v1[3] + 8), v11);
                v2 = v1[26];
                v9 = *(v2 + 16 * v4 + 8);
                *(v9 + v7 + 8) = 0;
              }

              v12 = *(v9 + v7 + 16);
              if (v12)
              {
                heap_Free(*(v1[3] + 8), v12);
                v2 = v1[26];
                *(*(v2 + 16 * v4 + 8) + v7 + 16) = 0;
              }

              ++v8;
              v13 = v2 + 16 * v4;
              v7 += 24;
            }

            while (v8 < *(v13 + 4));
            v6 = *(v13 + 8);
          }

          heap_Free(*(v1[3] + 8), v6);
          v2 = v1[26];
          *(v2 + 16 * v4 + 8) = 0;
          v3 = *(v1 + 102);
        }

        ++v4;
      }

      while (v4 < v3);
    }

    result = heap_Free(*(v1[3] + 8), v2);
    v1[26] = 0;
  }

  *(v1 + 102) = 0;
  return result;
}

uint64_t hlp_AllocAndCopy(uint64_t a1, char **a2, char *__s, uint64_t a4)
{
  if (a4)
  {
    v7 = a4 - __s;
  }

  else
  {
    v7 = cstdlib_strlen(__s);
  }

  v8 = heap_Calloc(*(a1 + 8), v7 + 1, 1);
  *a2 = v8;
  if (v8)
  {
    cstdlib_strncpy(v8, __s, v7);
    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "CLM", 50000, 0);
    return 2347769866;
  }
}

uint64_t CLM_AlignPhonlists(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __b = 0;
  v49 = 0;
  cstdlib_memset(&__b, 0, 0x10uLL);
  if (!a3 || !a4 || (CountStrings = StringList_GetCountStrings(a3), v9 = StringList_GetCountStrings(a4), a2) && StringList_GetCountStrings(a2) != CountStrings)
  {
    v14 = 2347769856;
    goto LABEL_21;
  }

  v10 = StringList_GetCountStrings(a3);
  v11 = StringList_GetCountStrings(a4);
  v12 = v11;
  if (CountStrings && v9)
  {
    v13 = 0;
    if (v10)
    {
      v14 = 0;
      v47 = a2;
      while (v13 < v12)
      {
        v15 = StringList_GetAt(a3, v13);
        if (cstdlib_strcmp(v15, "*"))
        {
          v16 = StringList_GetAt(a3, v13);
          v17 = StringList_GetAt(a4, v13);
          v18 = v16;
          a2 = v47;
          if (cstdlib_strcmp(v18, v17))
          {
            break;
          }
        }

        else
        {
          v19 = StringList_InsertAt(a4, v13, "*");
          if (v19)
          {
            v14 = LH_ERROR_to_VERROR(v19);
            if ((v14 & 0x80000000) != 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v14 = 0;
          }

          LOWORD(v12) = v12 + 1;
        }

        if (v10 <= ++v13)
        {
          v13 = v10;
LABEL_66:
          v31 = v14;
          goto LABEL_69;
        }
      }

      if (v10 <= v13)
      {
        goto LABEL_66;
      }

      v32 = a4;
      while (1)
      {
        v33 = v12;
        v34 = v10;
        if (v12 <= v13)
        {
          break;
        }

        LOWORD(v10) = v10 - 1;
        v35 = StringList_GetAt(a3, (v34 - 1));
        if (cstdlib_strcmp(v35, "*"))
        {
          v36 = StringList_GetAt(a3, v10);
          LOWORD(v12) = v12 - 1;
          v37 = StringList_GetAt(v32, (v33 - 1));
          v38 = v36;
          a2 = v47;
          if (cstdlib_strcmp(v38, v37))
          {
            break;
          }
        }

        else
        {
          v39 = StringList_InsertAt(v32, v12, "*");
          if (v39)
          {
            v14 = LH_ERROR_to_VERROR(v39);
            if ((v14 & 0x80000000) != 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v14 = 0;
          }
        }

        if (v10 <= v13)
        {
          goto LABEL_68;
        }
      }

      LOWORD(v10) = v34;
      LOWORD(v12) = v33;
LABEL_68:
      v31 = v14;
      a4 = v32;
    }

    else
    {
      v31 = 0;
    }

LABEL_69:
    v40 = StringList_GetCountStrings(a3) - v10;
    v14 = 2347769856;
    if (v40 == StringList_GetCountStrings(a4) - v12)
    {
      if ((v31 & 0x80000000) != 0)
      {
        v14 = v31;
      }

      else if (v13 != v10 || (v14 = v31, v13 != v12))
      {
        v50 = 0;
        v41 = hlp_RecursiveAddBestAnchorsForSublist(a1, a3, v13, v10, a4, v13, v12, &__b, &v50);
        if ((v41 & 0x80000000) != 0)
        {
          v14 = v41;
        }

        else
        {
          if (v50 == 0xFFFF)
          {
            v42 = 0;
          }

          else
          {
            v42 = __b + 16 * v50;
          }

          v43 = hlp_Align(a2, a3, a4, v10, v12, v42);
          v44 = v43;
          if ((v43 & 0x80000000) != 0)
          {
            v14 = v43;
          }

          else
          {
            v45 = StringList_GetCountStrings(a3);
            v46 = StringList_GetCountStrings(a4);
            if (v45 == v46)
            {
              v14 = v44;
            }

            else
            {
              v14 = 2347769856;
            }

            if (a2 && v45 == v46)
            {
              if (StringList_GetCountStrings(a2) == v45)
              {
                v14 = v44;
              }

              else
              {
                v14 = 2347769856;
              }
            }
          }
        }
      }
    }

    goto LABEL_21;
  }

  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_52;
    }

    v28 = 0;
    while (1)
    {
      v29 = StringList_Append(a3, "*");
      if (v29)
      {
        v14 = LH_ERROR_to_VERROR(v29);
        if ((v14 & 0x80000000) != 0)
        {
          goto LABEL_21;
        }

        if (a2)
        {
LABEL_46:
          v30 = StringList_Append(a2, "*");
          if (v30)
          {
            v14 = LH_ERROR_to_VERROR(v30);
            if ((v14 & 0x80000000) != 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v14 = 0;
          }
        }
      }

      else
      {
        v14 = 0;
        if (a2)
        {
          goto LABEL_46;
        }
      }

      if (v12 <= ++v28)
      {
        goto LABEL_21;
      }
    }
  }

  if (v11)
  {
LABEL_52:
    v14 = 0;
    goto LABEL_21;
  }

  v26 = 0;
  do
  {
    v27 = StringList_Append(a4, "*");
    if (v27)
    {
      v14 = LH_ERROR_to_VERROR(v27);
      if ((v14 & 0x80000000) != 0)
      {
        break;
      }
    }

    else
    {
      v14 = 0;
    }

    ++v26;
  }

  while (v10 > v26);
LABEL_21:
  v20 = __b;
  if (__b)
  {
    v21 = v49;
    if (v49)
    {
      v22 = 0;
      v23 = 8;
      do
      {
        v24 = *(__b + v23);
        if (v24)
        {
          heap_Free(*(a1 + 8), v24);
          v21 = v49;
        }

        ++v22;
        v23 += 16;
      }

      while (v22 < v21);
      v20 = __b;
    }

    heap_Free(*(a1 + 8), v20);
  }

  return v14;
}