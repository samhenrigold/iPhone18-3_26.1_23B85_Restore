void *__abort_calloc()
{
  result = malloc_type_calloc(1uLL, 0x148uLL, 0x1A32276BuLL);
  if (!result)
  {
    abort();
  }

  return result;
}

_DWORD *glpDeserializeUniformBindings(uint64_t a1)
{
  v2 = malloc_type_malloc(0x38uLL, 0xCA0EF1E7uLL);
  if (!v2)
  {
LABEL_192:
    abort();
  }

  v3 = *(a1 + 260);
  v4 = *(a1 + 256);
  if (v3 >= v4)
  {
    goto LABEL_191;
  }

  v5 = v2;
  v6 = *(a1 + 248);
  v7 = *(v6 + v3);
  v8 = *(v6 + v3);
  v9 = v3 + 1;
  *(a1 + 260) = v3 + 1;
  if (v7 < 0)
  {
    v10 = (v8 >> 1) & 7;
    if (v10 > 3)
    {
      if (v10 > 5)
      {
        if (v10 == 6)
        {
          if (v3 + 5 > v4)
          {
            goto LABEL_191;
          }

          LODWORD(v11) = *(v6 + v9);
          *(a1 + 260) = v3 + 5;
          LODWORD(v9) = v3 + 8;
          if (v3 + 8 > v4)
          {
            goto LABEL_191;
          }
        }

        else
        {
          if (v3 + 9 > v4)
          {
            goto LABEL_191;
          }

          v11 = *(v6 + v9);
          LODWORD(v9) = v3 + 9;
        }
      }

      else
      {
        v12 = v3 + 5;
        if (v10 == 4)
        {
          if (v12 > v4)
          {
            goto LABEL_191;
          }

          LODWORD(v11) = *(v6 + v9);
          *(a1 + 260) = v3 + 5;
          if (v3 + 5 >= v4)
          {
            goto LABEL_191;
          }

          LODWORD(v9) = v3 + 6;
        }

        else
        {
          if (v12 > v4)
          {
            goto LABEL_191;
          }

          LODWORD(v11) = *(v6 + v9);
          v14 = (v3 + 5);
          *(a1 + 260) = v14;
          if (v14 + 2 > v4)
          {
            goto LABEL_191;
          }

          LODWORD(v9) = v3 + 7;
        }
      }
    }

    else if (v10 > 1)
    {
      if (v10 == 2)
      {
        v13 = v3 + 4;
        if (v13 > v4)
        {
          goto LABEL_191;
        }

        LODWORD(v11) = *(v6 + v9) | (*(v6 + v9 + 2) << 16);
        *(a1 + 260) = v13;
        LODWORD(v9) = v13;
        goto LABEL_31;
      }

      if (v3 + 5 > v4)
      {
        goto LABEL_191;
      }

      LODWORD(v11) = *(v6 + v9);
      LODWORD(v9) = v3 + 5;
    }

    else if (v10)
    {
      if (v3 + 3 > v4)
      {
        goto LABEL_191;
      }

      LODWORD(v11) = *(v6 + v9);
      LODWORD(v9) = v3 + 3;
    }

    else
    {
      if (v9 >= v4)
      {
        goto LABEL_191;
      }

      LODWORD(v11) = *(v6 + v9);
      LODWORD(v9) = v3 + 2;
    }

    *(a1 + 260) = v9;
LABEL_31:
    v8 = -256 << (8 * v10);
    if ((v7 & 1) == 0)
    {
      LODWORD(v8) = 0;
    }

    LODWORD(v8) = v11 | v8;
  }

  v2[8] = v8;
  if (v9 >= v4)
  {
    goto LABEL_191;
  }

  v15 = *(v6 + v9);
  v16 = *(v6 + v9);
  v17 = v9 + 1;
  *(a1 + 260) = v17;
  if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_67;
  }

  v18 = (v16 >> 1) & 7;
  if (v18 > 3)
  {
    if (v18 <= 5)
    {
      v20 = v9 + 5;
      if (v18 == 4)
      {
        if (v20 <= v4)
        {
          LODWORD(v6) = *(v6 + v17);
          *(a1 + 260) = v9 + 5;
          if (v9 + 5 < v4)
          {
            v19 = v9 + 6;
            goto LABEL_62;
          }
        }
      }

      else if (v20 <= v4)
      {
        LODWORD(v6) = *(v6 + v17);
        v22 = (v9 + 5);
        *(a1 + 260) = v22;
        if (v22 + 2 <= v4)
        {
          v19 = v9 + 7;
          goto LABEL_62;
        }
      }

LABEL_191:
      glpDeserialError(a1, 1u);
    }

    if (v18 != 6)
    {
      if (v9 + 9 <= v4)
      {
        v6 = *(v6 + v17);
        v19 = v9 + 9;
        goto LABEL_62;
      }

      goto LABEL_191;
    }

    if (v9 + 5 > v4)
    {
      goto LABEL_191;
    }

    LODWORD(v6) = *(v6 + v17);
    *(a1 + 260) = v9 + 5;
    v21 = v9 + 8;
    if (v21 > v4)
    {
      goto LABEL_191;
    }
  }

  else
  {
    if (v18 <= 1)
    {
      if (v18)
      {
        if (v9 + 3 <= v4)
        {
          LODWORD(v6) = *(v6 + v17);
          v19 = v9 + 3;
          goto LABEL_62;
        }
      }

      else if (v17 < v4)
      {
        LODWORD(v6) = *(v6 + v17);
        v19 = v9 + 2;
LABEL_62:
        *(a1 + 260) = v19;
        goto LABEL_63;
      }

      goto LABEL_191;
    }

    if (v18 != 2)
    {
      if (v9 + 5 <= v4)
      {
        LODWORD(v6) = *(v6 + v17);
        v19 = v9 + 5;
        goto LABEL_62;
      }

      goto LABEL_191;
    }

    v21 = v9 + 4;
    if (v21 > v4)
    {
      goto LABEL_191;
    }

    LODWORD(v6) = *(v6 + v17) | (*(v6 + v17 + 2) << 16);
  }

  *(a1 + 260) = v21;
LABEL_63:
  if (v15)
  {
    v23 = -256 << (8 * v18);
  }

  else
  {
    LODWORD(v23) = 0;
  }

  LODWORD(v16) = v6 | v23;
LABEL_67:
  v2[9] = v16;
  v24 = 32 * (v8 & 0x7FFFFFF);
  v25 = malloc_type_malloc(v24, 0xCA0EF1E7uLL);
  if (!v25)
  {
    goto LABEL_192;
  }

  *(v5 + 5) = v25;
  bzero(v25, v24);
  v26 = *&off_2819B9B78;
  *v5 = GLP_MALLOC_ALLOCATOR;
  *(v5 + 1) = v26;
  *(v5 + 48) = 1;
  if (v5[9])
  {
    v27 = 0;
    v28 = 0;
    v104 = *(v5 + 5);
    v29 = &GLP_MALLOC_ALLOCATOR;
    v103 = v5;
    while (1)
    {
      v30 = *(a1 + 260);
      v31 = *(a1 + 256);
      if (v30 >= v31)
      {
        goto LABEL_191;
      }

      v32 = *(a1 + 248);
      v33 = *(v32 + v30);
      v34 = *(v32 + v30);
      v35 = v30 + 1;
      *(a1 + 260) = v30 + 1;
      if (v33 < 0)
      {
        v36 = (v34 >> 1) & 7;
        if (((v34 >> 1) & 7) > 3)
        {
          if (((v34 >> 1) & 7) > 5)
          {
            if (v36 == 6)
            {
              if (v30 + 5 > v31)
              {
                goto LABEL_191;
              }

              LODWORD(v32) = *(v32 + v35);
              *(a1 + 260) = v30 + 5;
              v37 = v30 + 8;
              if (v37 > v31)
              {
                goto LABEL_191;
              }
            }

            else
            {
              if (v30 + 9 > v31)
              {
                goto LABEL_191;
              }

              v32 = *(v32 + v35);
              v37 = v30 + 9;
            }
          }

          else
          {
            v38 = v30 + 5;
            if (v36 == 4)
            {
              if (v38 > v31)
              {
                goto LABEL_191;
              }

              LODWORD(v32) = *(v32 + v35);
              *(a1 + 260) = v30 + 5;
              if (v30 + 5 >= v31)
              {
                goto LABEL_191;
              }

              v37 = v30 + 6;
            }

            else
            {
              if (v38 > v31)
              {
                goto LABEL_191;
              }

              LODWORD(v32) = *(v32 + v35);
              v39 = (v30 + 5);
              *(a1 + 260) = v39;
              if (v39 + 2 > v31)
              {
                goto LABEL_191;
              }

              v37 = v30 + 7;
            }
          }
        }

        else if (((v34 >> 1) & 7) > 1)
        {
          if (v36 == 2)
          {
            v37 = v30 + 4;
            if (v37 > v31)
            {
              goto LABEL_191;
            }

            LODWORD(v32) = *(v32 + v35) | (*(v32 + v35 + 2) << 16);
          }

          else
          {
            if (v30 + 5 > v31)
            {
              goto LABEL_191;
            }

            LODWORD(v32) = *(v32 + v35);
            v37 = v30 + 5;
          }
        }

        else if (v36)
        {
          if (v30 + 3 > v31)
          {
            goto LABEL_191;
          }

          LODWORD(v32) = *(v32 + v35);
          v37 = v30 + 3;
        }

        else
        {
          if (v35 >= v31)
          {
            goto LABEL_191;
          }

          LODWORD(v32) = *(v32 + v35);
          v37 = v30 + 2;
        }

        *(a1 + 260) = v37;
        v40 = -256 << (8 * v36);
        if (v33)
        {
          v41 = v40;
        }

        else
        {
          v41 = 0;
        }

        LODWORD(v34) = v32 | v41;
      }

      v42 = deserialize_GLPString(a1);
      v44 = v43;
      v45 = malloc_type_malloc(0x58uLL, 0xCA0EF1E7uLL);
      if (!v45)
      {
        goto LABEL_192;
      }

      v46 = v45;
      v45[10] = 0;
      *(v45 + 3) = 0u;
      *(v45 + 4) = 0u;
      *(v45 + 1) = 0u;
      *(v45 + 2) = 0u;
      *v45 = 0u;
      v47 = *(a1 + 260);
      v48 = *(a1 + 256);
      if (v47 + 4 > v48)
      {
        goto LABEL_191;
      }

      v49 = *(a1 + 248);
      v50 = *(v49 + v47);
      v51 = (v47 + 4);
      *(a1 + 260) = v51;
      *v45 = v50;
      if (v51 + 4 > v48)
      {
        goto LABEL_191;
      }

      v52 = *(v49 + v51);
      v53 = (v47 + 8);
      *(a1 + 260) = v53;
      *(v45 + 1) = v52;
      if (v53 + 4 > v48)
      {
        goto LABEL_191;
      }

      v54 = *(v49 + v53);
      v55 = (v47 + 12);
      *(a1 + 260) = v55;
      *(v45 + 2) = v54;
      if (v55 + 4 > v48)
      {
        goto LABEL_191;
      }

      v56 = *(v49 + v55);
      v57 = (v47 + 16);
      *(a1 + 260) = v57;
      *(v45 + 3) = v56;
      if (v57 + 4 > v48)
      {
        goto LABEL_191;
      }

      v58 = *(v49 + v57);
      *(a1 + 260) = v47 + 20;
      *(v45 + 80) = v58;
      v106 = 0;
      deserialize_GLPType(a1, &v106);
      v59 = glpDeepCopyType(v29, v106);
      v46[3] = v59;
      v105 = 0;
      deserialize_GLPValue(a1, v59, &v105);
      v65 = v105 ? glpCopyValue(v29, v46[3], v105, v60, v61, v62, v63, v64) : 0;
      v46[2] = v65;
      v66 = *(a1 + 260);
      v67 = *(a1 + 256);
      if (v66 >= v67)
      {
        goto LABEL_191;
      }

      v68 = *(a1 + 248);
      v69 = *(v68 + v66);
      v70 = *(v68 + v66);
      v71 = v66 + 1;
      *(a1 + 260) = v66 + 1;
      if ((v69 & 0x80000000) == 0)
      {
        if (v70)
        {
          goto LABEL_114;
        }

        goto LABEL_164;
      }

      v78 = (v70 >> 1) & 7;
      if (((v70 >> 1) & 7) > 3)
      {
        if (((v70 >> 1) & 7) > 5)
        {
          if (v78 == 6)
          {
            if (v66 + 5 > v67)
            {
              goto LABEL_191;
            }

            v79 = *(v68 + v71);
            *(a1 + 260) = v66 + 5;
            LODWORD(v71) = v66 + 8;
            if (v66 + 8 > v67)
            {
              goto LABEL_191;
            }
          }

          else
          {
            if (v66 + 9 > v67)
            {
              goto LABEL_191;
            }

            v79 = *(v68 + v71);
            LODWORD(v71) = v66 + 9;
          }
        }

        else
        {
          v80 = v66 + 5;
          if (v78 == 4)
          {
            if (v80 > v67)
            {
              goto LABEL_191;
            }

            v79 = *(v68 + v71);
            *(a1 + 260) = v66 + 5;
            if (v66 + 5 >= v67)
            {
              goto LABEL_191;
            }

            LODWORD(v71) = v66 + 6;
          }

          else
          {
            if (v80 > v67)
            {
              goto LABEL_191;
            }

            v79 = *(v68 + v71);
            v84 = (v66 + 5);
            *(a1 + 260) = v84;
            if (v84 + 2 > v67)
            {
              goto LABEL_191;
            }

            LODWORD(v71) = v66 + 7;
          }
        }

        goto LABEL_159;
      }

      if (((v70 >> 1) & 7) <= 1)
      {
        break;
      }

      if (v78 != 2)
      {
        if (v66 + 5 > v67)
        {
          goto LABEL_191;
        }

        v79 = *(v68 + v71);
        LODWORD(v71) = v66 + 5;
        goto LABEL_159;
      }

      v82 = v66 + 4;
      if (v82 > v67)
      {
        goto LABEL_191;
      }

      v79 = *(v68 + v71) | (*(v68 + v71 + 2) << 16);
      *(a1 + 260) = v82;
      LODWORD(v71) = v82;
LABEL_160:
      v85 = -256 << (8 * v78);
      if (v69)
      {
        v86 = v85;
      }

      else
      {
        v86 = 0;
      }

      v70 = v79 | v86;
      if (v79 | v86)
      {
LABEL_114:
        if (v71 >= v67)
        {
          goto LABEL_191;
        }

        v72 = v29;
        v73 = *(v68 + v71);
        v74 = *(v68 + v71);
        v75 = v71 + 1;
        *(a1 + 260) = v75;
        if (v73 < 0)
        {
          v76 = (v74 >> 1) & 7;
          if (((v74 >> 1) & 7) > 3)
          {
            if (((v74 >> 1) & 7) <= 5)
            {
              v81 = v71 + 5;
              if (v76 == 4)
              {
                if (v81 > v67)
                {
                  goto LABEL_191;
                }

                LODWORD(v68) = *(v68 + v75);
                *(a1 + 260) = v71 + 5;
                if (v71 + 5 >= v67)
                {
                  goto LABEL_191;
                }

                v77 = v71 + 6;
              }

              else
              {
                if (v81 > v67)
                {
                  goto LABEL_191;
                }

                LODWORD(v68) = *(v68 + v75);
                v88 = (v71 + 5);
                *(a1 + 260) = v88;
                if (v88 + 2 > v67)
                {
                  goto LABEL_191;
                }

                v77 = v71 + 7;
              }

              goto LABEL_174;
            }

            if (v76 != 6)
            {
              if (v71 + 9 > v67)
              {
                goto LABEL_191;
              }

              v68 = *(v68 + v75);
              v77 = v71 + 9;
              goto LABEL_174;
            }

            if (v71 + 5 > v67)
            {
              goto LABEL_191;
            }

            LODWORD(v68) = *(v68 + v75);
            *(a1 + 260) = v71 + 5;
            v83 = v71 + 8;
            if (v83 > v67)
            {
              goto LABEL_191;
            }

LABEL_149:
            *(a1 + 260) = v83;
          }

          else
          {
            if (((v74 >> 1) & 7) <= 1)
            {
              if (v76)
              {
                if (v71 + 3 > v67)
                {
                  goto LABEL_191;
                }

                LODWORD(v68) = *(v68 + v75);
                v77 = v71 + 3;
              }

              else
              {
                if (v75 >= v67)
                {
                  goto LABEL_191;
                }

                LODWORD(v68) = *(v68 + v75);
                v77 = v71 + 2;
              }

              goto LABEL_174;
            }

            if (v76 == 2)
            {
              v83 = v71 + 4;
              if (v83 > v67)
              {
                goto LABEL_191;
              }

              LODWORD(v68) = *(v68 + v75) | (*(v68 + v75 + 2) << 16);
              goto LABEL_149;
            }

            if (v71 + 5 > v67)
            {
              goto LABEL_191;
            }

            LODWORD(v68) = *(v68 + v75);
            v77 = v71 + 5;
LABEL_174:
            *(a1 + 260) = v77;
          }

          if (v73)
          {
            v89 = -256 << (8 * v76);
          }

          else
          {
            LODWORD(v89) = 0;
          }

          LODWORD(v74) = v68 | v89;
        }

        v87 = BitSetNew(v70);
        memcpy(*(v87 + 40), (*(a1 + 248) + *(a1 + 260)), v74);
        *(a1 + 260) += v74;
        v29 = v72;
        goto LABEL_180;
      }

LABEL_164:
      v87 = 0;
LABEL_180:
      v90 = (v27 + v34);
      v46[4] = v87;
      for (i = 40; i != 60; i += 4)
      {
        v92 = *(a1 + 260);
        if (v92 + 4 > *(a1 + 256))
        {
          goto LABEL_191;
        }

        v93 = *(*(a1 + 248) + v92);
        *(a1 + 260) = v92 + 4;
        *(v46 + i) = v93;
      }

      v94 = v44;
      v95 = malloc_type_malloc(v44, 0xCA0EF1E7uLL);
      if (!v95)
      {
        goto LABEL_192;
      }

      v96 = v95;
      memcpy(v95, v42, v44);
      v97 = (v104 + 32 * v90);
      *v97 = v46;
      if (v44)
      {
        v98 = v44 >> 5;
        LODWORD(v99) = v44;
        v100 = ~(v44 >> 5);
        do
        {
          v99 = (32 * v99 + (v99 >> 2) + v96[v44 - 1]) ^ v99;
          v44 += v100;
        }

        while (v44 > v98);
        v101 = v99 << 32;
      }

      else
      {
        v101 = 0;
      }

      v97[1] = v96;
      v97[2] = v101 | v94;
      v27 = v90 + 1;
      ++v28;
      v5 = v103;
      if (v28 >= v103[9])
      {
        return v5;
      }
    }

    if (v78)
    {
      if (v66 + 3 > v67)
      {
        goto LABEL_191;
      }

      v79 = *(v68 + v71);
      LODWORD(v71) = v66 + 3;
    }

    else
    {
      if (v71 >= v67)
      {
        goto LABEL_191;
      }

      v79 = *(v68 + v71);
      LODWORD(v71) = v66 + 2;
    }

LABEL_159:
    *(a1 + 260) = v71;
    goto LABEL_160;
  }

  return v5;
}

void *glpLinkProgram(void *a1)
{
  v506[7] = *MEMORY[0x277D85DE8];
  bzero(v484, 0x230uLL);
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  memset(v462, 0, sizeof(v462));
  v432 = a1 + 23;
  v459 = a1;
  v441 = a1 + 13;
  v437 = 1;
  do
  {
    v8 = &v441[2 * v2];
    v9 = *(v8 + 1);
    if (v9)
    {
      v446 = v7;
      v452 = v4;
      v10 = &v484[14 * v2];
      memset(v506, 0, 56);
      v504 = 0u;
      v505 = 0u;
      v502 = 0u;
      v503 = 0u;
      v500 = 0u;
      v501 = 0u;
      v498 = 0u;
      v499 = 0u;
      v496 = 0u;
      v497 = 0u;
      v494 = 0u;
      v495 = 0u;
      v492 = 0u;
      v493 = 0u;
      v491 = 0u;
      glpASTMergeInitContext(&v491, v459, v2);
      v11 = 0;
      v12 = 8 * v9;
      do
      {
        v13 = glpDeserializeAST(v459, *(*(v8[1] + v11) + 16), *(*(v8[1] + v11) + 8));
        if (!v13)
        {
          v432[v2] = 0;
          v20 = v459[8];
          v21 = glpLanguageToString(v2);
          *&v481 = "-1";
          *(&v481 + 1) = 0xEDA00000002;
          *&v482 = 0xFFFFFFFFLL;
          glpLogMessage(v20, 0, &v481, "Compiled %s shader was corrupt.", v21);
          goto LABEL_13;
        }

        if (!glpASTMergePhase1AddTopLevelNode(&v491, v13))
        {
          goto LABEL_13;
        }

        v11 += 8;
      }

      while (v12 != v11);
      v14 = glpASTMergePhase2(&v491);
      if (v14 != -1)
      {
        v432[v2] = v14;
        v15 = vextq_s8(v504, v504, 8uLL);
        *v10 = v503;
        *(v10 + 1) = v15;
        *(v10 + 2) = v505;
        v16 = v501;
        v10[6] = v506[0];
        v10[7] = v16;
        v17 = *(&v493 + 1);
        v10[8] = v500;
        v10[9] = v17;
        v18 = *&v506[3];
        *(v10 + 5) = *&v506[1];
        *(v10 + 6) = v18;
        goto LABEL_14;
      }

LABEL_13:
      v437 = 0;
LABEL_14:
      v19 = *(v8 + 1);
      v4 = v452;
      if (v446)
      {
LABEL_10:
        if (v19)
        {
          goto LABEL_17;
        }

LABEL_28:
        v7 = 1;
        goto LABEL_29;
      }
    }

    else
    {
      v19 = 0;
      v432[v2] = 0;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    if (v19)
    {
      glpPopulatePrecisionWidths(*(*v8[1] + 4), v462);
      v19 = *(v8 + 1);
      if (*(v8 + 1))
      {
LABEL_17:
        v22 = v8[1];
        while (1)
        {
          v23 = *(*v22 + 4);
          if (v23 > 9)
          {
            break;
          }

          if (((1 << v23) & 0x3B8) != 0)
          {
            v6 = 1;
          }

          else if (((1 << v23) & 6) != 0)
          {
            v5 = 1;
          }

          else
          {
            if (v23 != 6)
            {
              break;
            }

            v3 = 1;
          }

LABEL_27:
          v22 += 8;
          if (!--v19)
          {
            goto LABEL_28;
          }
        }

        if (v23)
        {
LABEL_509:
          abort();
        }

        v4 = 1;
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    v7 = 0;
LABEL_29:
    ++v2;
  }

  while (v2 != 5);
  if (!v437)
  {
    return 0;
  }

  if (v3 && v4)
  {
    v24 = v459[8];
    *&v491 = "-1";
    *(&v491 + 1) = 0xEDA00000002;
    *&v492 = 0xFFFFFFFFLL;
    glpLogMessage(v24, 0, &v491, "Error: Version 100 and Version 300 shaders may not be linked together.");
    return 0;
  }

  v27 = v3 | v4;
  v28 = v459;
  if (v27)
  {
    v29 = v432;
    if (v5 | v6)
    {
      v30 = v459[8];
      *&v491 = "-1";
      *(&v491 + 1) = 0xEDA00000002;
      *&v492 = 0xFFFFFFFFLL;
      glpLogMessage(v30, 0, &v491, "Error: Linking ES shaders with non-ES shaders is not supported.");
      return 0;
    }
  }

  else
  {
    v29 = v432;
    if (v5 && v6)
    {
      v31 = v459[8];
      *&v491 = "-1";
      *(&v491 + 1) = 0xEDA00000002;
      *&v492 = 0xFFFFFFFFLL;
      glpLogMessage(v31, 0, &v491, "Error: Linking legacy shaders with core profile shaders is not supported.");
      return 0;
    }
  }

  v32 = v459[24];
  if (v32)
  {
    GlobalTypeQualifier = glpTopLevelNodeGetGlobalTypeQualifier(v32, 0x40000000);
    if (GlobalTypeQualifier)
    {
      Layout = glpGlobalTypeQualifierNodeGetLayout(GlobalTypeQualifier);
      if (glpLayoutObjectFind(Layout, 18))
      {
        *(v459 + 80) = *(glpLayoutObjectFind(Layout, 18) + 4);
      }
    }
  }

  v35 = v459[25];
  if (v35)
  {
    v36 = glpTopLevelNodeGetGlobalTypeQualifier(v35, 0x20000000);
    if (!v36)
    {
      goto LABEL_79;
    }

    v37 = glpGlobalTypeQualifierNodeGetLayout(v36);
    if (glpLayoutObjectFind(v37, 3))
    {
      *(v459 + 81) = 4;
      v38 = 1;
    }

    else
    {
      v38 = 0;
    }

    if (glpLayoutObjectFind(v37, 10))
    {
      *(v459 + 81) = 7;
      v38 = 1;
    }

    if (glpLayoutObjectFind(v37, 11))
    {
      *(v459 + 81) = 36474;
      v38 = 1;
    }

    if (glpLayoutObjectFind(v37, 12))
    {
      *(v459 + 82) = 514;
    }

    if (glpLayoutObjectFind(v37, 13))
    {
      *(v459 + 82) = 36476;
    }

    if (glpLayoutObjectFind(v37, 14))
    {
      *(v459 + 82) = 36475;
    }

    if (glpLayoutObjectFind(v37, 15))
    {
      *(v459 + 83) = 2304;
    }

    if (glpLayoutObjectFind(v37, 16))
    {
      *(v459 + 83) = 2305;
    }

    if (glpLayoutObjectFind(v37, 17))
    {
      *(v459 + 84) = 1;
    }

    if (!v38)
    {
LABEL_79:
      v46 = v459[8];
      *&v491 = "-1";
      *(&v491 + 1) = 0xEDA00000002;
      *&v492 = 0xFFFFFFFFLL;
      glpLogMessage(v46, 0, &v491, "Tessellation evaluation shader must specify triangles, quads or isolines.");
      return 0;
    }
  }

  v39 = v459[26];
  if (v39)
  {
    v40 = glpTopLevelNodeGetGlobalTypeQualifier(v39, 0x20000000);
    v41 = glpTopLevelNodeGetGlobalTypeQualifier(v459[26], 0x40000000);
    if (v40)
    {
      v42 = glpGlobalTypeQualifierNodeGetLayout(v40);
      glpLayoutObjectGetGeomInOut(v42, 0, 0, v459 + 77, 0, v459 + 79);
    }

    if (v41)
    {
      v43 = glpGlobalTypeQualifierNodeGetLayout(v41);
      glpLayoutObjectGetGeomInOut(v43, 0, v459 + 76, 0, v459 + 78, 0);
      v44 = *(v459 + 39);
      if (v44)
      {
        v45 = v459[20];
        while ((*(*v45 + 12) & 1) == 0)
        {
          v45 += 8;
          if (!--v44)
          {
            goto LABEL_82;
          }
        }

        if (*(v459 + 78))
        {
          v47 = v459[8];
          *&v491 = "-1";
          *(&v491 + 1) = 0xEDA00000002;
          *&v492 = 0xFFFFFFFFLL;
          glpLogMessage(v47, 0, &v491, "Use of EmitStreamVertex or EndStreamPrimitive requires layout(points) out.");
          return 0;
        }
      }
    }
  }

LABEL_82:
  if (!glpIsLegalStageCombination(v459, v459[23] != 0, v459[24] != 0, v459[25] != 0, v459[26] != 0, v459[27] != 0))
  {
    return 0;
  }

  if (*v29 && v459[27] && !*(*v459[14] + 4))
  {
    v255 = *v487;
    v256 = v490;
    v257 = glpStringHashGet(*v487, "gl_Position", 0x64C66BD10000000BuLL);
    v258 = glpStringHashGet(v256, "gl_FragCoord", 0xFCBC8470000000CuLL);
    if (v258 && (*(v258 + 52) & 0x80) != 0 && (!v257 || (*(v257 + 52) & 0x80) == 0))
    {
      v259 = v459[8];
      *&v491 = "-1";
      *(&v491 + 1) = 0xEDA00000002;
      *&v492 = 0xFFFFFFFFLL;
      glpLogMessage(v259, 0, &v491, "gl_FragCoord can be declared invariant if and only if gl_Position is declared invariant.");
      return 0;
    }

    v260 = glpStringHashGet(v255, "gl_PointSize", 0x3BD84BA50000000CuLL);
    v261 = glpStringHashGet(v256, "gl_PointCoord", 0x15E256410000000DuLL);
    if (v261)
    {
      if ((*(v261 + 52) & 0x80) != 0 && (!v260 || (*(v260 + 52) & 0x80) == 0))
      {
        v262 = v459[8];
        *&v491 = "-1";
        *(&v491 + 1) = 0xEDA00000002;
        *&v492 = 0xFFFFFFFFLL;
        glpLogMessage(v262, 0, &v491, "gl_PointCoord can be declared invariant if and only if gl_PointSize is declared invariant.");
        return 0;
      }
    }
  }

  for (i = 0; i != 5; ++i)
  {
    if (v459[i + 23])
    {
      break;
    }
  }

  v49 = 4;
  do
  {
    if (v29[v49])
    {
      break;
    }

    --v49;
  }

  while (v49);
  StringHash = glpMakeStringHash(v459);
  v51 = glpMakeStringHash(v459);
  *&v493 = 0;
  v491 = 0u;
  v492 = 0u;
  v483 = 0;
  v481 = 0u;
  v482 = 0u;
  memset(v480, 0, 40);
  v479 = 0;
  memset(v478, 0, sizeof(v478));
  memset(v477, 0, 40);
  v476 = 0;
  memset(v475, 0, sizeof(v475));
  v473[0] = 0;
  v473[1] = 0;
  v474 = 0;
  if (!i && !glpMakeVertexInputBindings(v459, v484[0], &v491, v480, v477))
  {
    return 0;
  }

  v408 = v51;
  v414 = StringHash;
  if (i <= v49)
  {
    v52 = i;
    v423 = &v480[v49];
    v419 = &v477[v49];
    v425 = &v478[v49];
    v53 = &v488[7 * i + 2];
    v54 = i;
    v55 = v49 + 1;
    v56 = &v491 + 8;
    v57 = &v480[1];
    v58 = &v477[1];
    v59 = v459 + 24;
    v421 = &v475[v49];
    do
    {
      if (v29[v52])
      {
        v442 = v59;
        v447 = v58;
        *v453 = v57;
        v60 = &v484[14 * v52];
        if (!glpMergeUniforms(*(v28 + 64), StringHash, v60[3]) || !glpMergeInterfaceBlocks(*(v28 + 64), v52, v51, v60[6], 0))
        {
          return 0;
        }

        v433 = &v484[14 * v52];
        v435 = v56;
        v59 = v442;
        v58 = v447;
        v61 = v442;
        v62 = v447;
        v57 = *v453;
        v63 = *v453;
        v64 = v56;
        v438 = v53;
        v65 = v53;
        v66 = v52;
        do
        {
          v67 = v66;
          v68 = v65;
          v69 = v64;
          v70 = v63;
          v71 = v62;
          if (v66 > 3)
          {
            break;
          }

          v72 = v61[v54];
          v65 += 14;
          v64 += 8;
          ++v63;
          ++v62;
          ++v61;
          ++v66;
        }

        while (!v72);
        v73 = 0;
        if (v52 != 4 && v67 >= 3)
        {
          v73 = *(v459[12] + 4) != 0;
        }

        *(v473 + v52) = v73;
        if (v52 == v49)
        {
          v28 = v459;
          v29 = v432;
          StringHash = v414;
          v56 = v435;
          v53 = v438;
          if (!v49)
          {
            goto LABEL_512;
          }

          if (!*v423 && !*v419)
          {
            v428 = v73;
            InterstageBindings = glpMakeInterstageBindings(v459, v49, v49, 0, 0, 0, *v433, 0, &v491 + v49, 0, v423, 0, v419);
            v73 = v428;
            v59 = v442;
            v58 = v447;
            v57 = *v453;
            if (!InterstageBindings)
            {
              return 0;
            }
          }

          if (v52 != 4)
          {
LABEL_512:
            if (!*v425 && !*v421)
            {
              v75 = glpMakeInterstageBindings(v459, v49, v49, v73, v433[1], v433[2], 0, &v481 + v49, 0, v425, 0, v421, 0);
              v59 = v442;
              v58 = v447;
              v57 = *v453;
              if (!v75)
              {
                return 0;
              }
            }
          }
        }

        else
        {
          v429 = v73;
          v76 = glpMakeStringHash(v459);
          if (!glpMergeInterfaceBlocks(v459[8], v52, v76, v433[4], 0))
          {
            return 0;
          }

          if (!glpMergeInterfaceBlocks(v459[8], v52, v76, v433[5], v52 == 3))
          {
            return 0;
          }

          v77 = v67 + 1;
          v28 = v459;
          v78 = glpMakeInterstageBindings(v459, v52, v77, v429, v433[1], v433[2], *v68, &v481 + v52, &v69[v54 * 8], &v478[v52], &v70[v54], &v475[v52], &v71[v54]);
          v29 = v432;
          v51 = v408;
          StringHash = v414;
          v55 = v49 + 1;
          v56 = v435;
          v53 = v438;
          v58 = v447;
          v57 = *v453;
          v59 = v442;
          if (!v78)
          {
            return 0;
          }
        }
      }

      ++v52;
      v53 += 7;
      v56 += 8;
      ++v57;
      ++v58;
      ++v59;
    }

    while (v52 != v55);
  }

  if (v49 == 4 && !glpMakeFragmentOutputBindings(v28, v489, &v483, &v479, &v476))
  {
    return 0;
  }

  if (!v491)
  {
    v79 = *(v28 + 80);
    v80 = *(v79 + 32);
    if (v80)
    {
      v81 = 0;
      for (j = 0; j < v80; ++j)
      {
        v83 = *(v79 + 40);
        if (*(v83 + v81))
        {
          v84 = v83 + v81;
          v85 = *(v83 + v81 + 8);
          v86 = *(v28 + 64);
          LODWORD(v84) = *(v84 + 16);
          *v463 = "-1";
          *&v463[8] = 0xEDA00000002;
          *&v463[16] = 0xFFFFFFFFLL;
          glpLogMessage(v86, 1, v463, "Do not have an attached vertex shader to match BindAttributeLocation request for '%.*s'.", v84, v85);
          v80 = *(v79 + 32);
        }

        v81 += 32;
      }
    }
  }

  v87 = 0;
  v88 = v488;
  do
  {
    if (v432[v87])
    {
      v89 = *(v473 + v87);
      if (v89)
      {
        v90 = v28 + 224;
      }

      else
      {
        v90 = 0;
      }

      if (v89)
      {
        v91 = v28 + 240;
      }

      else
      {
        v91 = 0;
      }

      glpGenerateCopyInOut(v459, v87, v477[v87], v480[v87], v475[v87], v478[v87], v90, v91, v432[v87], *v88);
    }

    ++v87;
    v88 += 14;
  }

  while (v87 != 5);
  v92 = v459;
  v93 = v432;
  if (!v483)
  {
    v94 = v459[11];
    v95 = *(v94 + 32);
    if (v95)
    {
      v96 = 0;
      for (k = 0; k < v95; ++k)
      {
        v98 = *(v94 + 40);
        if (*(v98 + v96))
        {
          v99 = v98 + v96;
          v100 = *(v98 + v96 + 8);
          v101 = v459[8];
          LODWORD(v99) = *(v99 + 16);
          *v463 = "-1";
          *&v463[8] = 0xEDA00000002;
          *&v463[16] = 0xFFFFFFFFLL;
          glpLogMessage(v101, 1, v463, "Do not have an attached fragment shader to match FragDataBinding request for '%.*s'.", v99, v100);
          v95 = *(v94 + 32);
        }

        v96 += 32;
      }
    }
  }

  if (v481)
  {
    v102 = 0;
  }

  else
  {
    v102 = v482 == 0;
  }

  if (v102 && *(&v482 + 1) == 0)
  {
    v104 = v459[12];
    if (*(v104 + 4))
    {
      v105 = 0;
      v106 = 0;
      do
      {
        v107 = *(v104 + 8) + v105;
        v108 = *v107;
        v109 = v459[8];
        LODWORD(v107) = *(v107 + 8);
        *v463 = "-1";
        *&v463[8] = 0xEDA00000002;
        *&v463[16] = 0xFFFFFFFFLL;
        glpLogMessage(v109, 0, v463, "Do not have an attached vertex or evaluation or geometry shader to match transform feedback binding for '%.*s.'. ", v107, v108);
        ++v106;
        v104 = v459[12];
        v105 += 16;
      }

      while (v106 < *(v104 + 4));
      return 0;
    }
  }

  v436 = __abort_calloc();
  v471[0] = 0;
  v471[1] = 0;
  v472 = 0;
  v469[0] = 0;
  v469[1] = 0;
  v470 = 0;
  v436[10] = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
  v436[25] = 4;
  v436[26] = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 16, "Vector Storage (int)");
  v415 = 0;
  __src = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 32, "Vector Storage (GLPVariableObject *)");
  v443 = 0;
  v417 = 0;
  v411 = 0;
  v412 = 0;
  v111 = v414;
  v112 = *(v414 + 32);
  v113 = v112;
  v413 = 4;
  while (2)
  {
    if (v113)
    {
      v114 = 0;
      while (1)
      {
        v115 = (*(v111 + 40) + 32 * v114);
        v116 = *v115;
        if (*v115)
        {
          break;
        }

LABEL_292:
        ++v114;
        v113 = v112;
        if (v114 >= v112)
        {
          goto LABEL_298;
        }
      }

      v117 = 0;
      v118 = 0;
      v119 = v115[1];
      v120 = v115[2];
      v420 = v114;
      ArrayType = *v116;
      v424 = *(v116 + 120);
      v121 = *(v116 + 128);
      memset(v463, 0, 20);
      v122 = v485;
      do
      {
        if (v92[v117 + 23])
        {
          v123 = glpStringHashGet(*v122, v119, v120);
          v124 = 1 << v117;
          if (!v123)
          {
            v124 = 0;
          }

          v118 |= v124;
        }

        ++v117;
        v122 += 14;
      }

      while (v117 != 5);
      v125 = v436;
      if (v118 != 1 << v412)
      {
        if (v412 != 5)
        {
          goto LABEL_186;
        }

        v110.i32[0] = v118;
        v110 = vcnt_s8(v110);
        v110.i16[0] = vaddlv_u8(v110);
        if (v110.i32[0] < 2u)
        {
          goto LABEL_186;
        }
      }

      *v454 = v119;
      if (!*(v116 + 88))
      {
        v137 = v463;
        v138 = v485;
        v139 = 23;
        v140 = v424;
        do
        {
          if (v459[v139])
          {
            v141 = glpStringHashGet(*v138, v119, v120);
            if (v141)
            {
              v142 = v141;
              v140 = BitSetOr(v140, *(v141 + 120));
              v143 = *(v142 + 128);
              if (v121 <= v143)
              {
                v121 = *(v142 + 128);
              }

              *v137 = v143;
              if (glpTypeGetKind(*v142) == 2 && *(v142 + 120))
              {
                ElementType = glpArrayTypeGetElementType(*v142);
                glpABIGetTypeSize(0, ElementType, 0);
                glpTypeSizeGetSize();
                v146 = *(v142 + 128);
                v147 = v146 % v145 ? v146 / v145 + 1 : v146 / v145;
                if (glpArrayTypeGetElementCount(*v142) != v147)
                {
                  v148 = glpArrayTypeGetElementType(*v142);
                  *v142 = glpMakeArrayType(v459, v148, v147, -1);
                }
              }
            }

            v125 = v436;
          }

          ++v139;
          ++v137;
          v138 += 14;
        }

        while (v139 != 28);
        v424 = v140;
        if (glpTypeGetKind(ArrayType) == 2)
        {
          v92 = v459;
          v93 = v432;
          if (v424)
          {
            v149 = glpArrayTypeGetElementType(ArrayType);
            glpABIGetTypeSize(0, v149, 0);
            glpTypeSizeGetSize();
            v151 = v121 % v150 ? v121 / v150 + 1 : v121 / v150;
            if (glpArrayTypeGetElementCount(ArrayType) != v151)
            {
              v152 = glpArrayTypeGetElementType(ArrayType);
              ArrayType = glpMakeArrayType(v459, v152, v151, -1);
            }
          }
        }

        else
        {
          v92 = v459;
          v93 = v432;
        }
      }

      v126 = v120;
      if (v120 && *v119 == 36)
      {
        if (v120 < 9 || (v127 = strncmp("$ib$", v119, 4uLL), v126 = v120, v127) || (v128 = strncmp("$gl_", v119 + 5, 4uLL), v126 = v120, v128))
        {
          if ((v92[5] & 2) != 0 && (*(v116 + 52) & 0xC) == 0)
          {
            v153 = 0;
            v154 = v485;
            do
            {
              if (v93[v153])
              {
                glpStringHashGet(*v154, v119, v120);
              }

              ++v153;
              v154 += 14;
            }

            while (v153 != 5);
            if (v415 + 1 <= v413)
            {
              v159 = v415;
              v111 = v414;
              v160 = __src;
            }

            else
            {
              if (v413 <= 1)
              {
                v155 = 1;
              }

              else
              {
                v155 = v413;
              }

              v156 = 2 * v155;
              if (v156 <= (v415 + 1))
              {
                v157 = v415 + 1;
              }

              else
              {
                v157 = v156;
              }

              v158 = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 8 * v157, "Vector Storage (GLPVariableObject *, growth)");
              v159 = v415;
              memcpy(v158, __src, 8 * v415);
              off_2819B9B80(GLP_MALLOC_ALLOCATOR, __src);
              v160 = v158;
              v413 = v157;
              v111 = v414;
            }

            v114 = v420;
            __src = v160;
            *(v160 + v159) = v116;
            ++v415;
          }

          else
          {
            if (v120 >= 9)
            {
              goto LABEL_177;
            }

LABEL_186:
            v111 = v414;
            v114 = v420;
          }

LABEL_291:
          v112 = *(v111 + 32);
          goto LABEL_292;
        }

LABEL_177:
        v129 = v126;
        if (strncmp("$ib$", v119, 4uLL))
        {
          goto LABEL_186;
        }

        v130 = strncmp("$gl_", v119 + 5, 4uLL);
        v126 = v129;
        if (v130)
        {
          goto LABEL_186;
        }
      }

      if ((*(v116 + 52) & 4) != 0)
      {
        goto LABEL_186;
      }

      v131 = v126;
      v132 = malloc_type_malloc(v126, 0xCA0EF1E7uLL);
      if (!v132)
      {
        goto LABEL_509;
      }

      v409 = v132;
      v410 = v131;
      memcpy(v132, v119, v131);
      v133 = malloc_type_malloc(0x58uLL, 0xCA0EF1E7uLL);
      if (!v133)
      {
        goto LABEL_509;
      }

      v134 = v133;
      v133[10] = 0;
      *(v133 + 3) = 0u;
      *(v133 + 4) = 0u;
      *(v133 + 1) = 0u;
      *(v133 + 2) = 0u;
      *v133 = 0u;
      if (v120 < 3)
      {
LABEL_226:
        v161 = 1;
      }

      else
      {
        v135 = *v119;
        if (v135 == 103)
        {
          v135 = *(v119 + 1);
          if (v135 == 108)
          {
            v135 = *(v119 + 2);
            v136 = 95;
          }

          else
          {
            v136 = 108;
          }
        }

        else
        {
          v136 = 103;
        }

        if (v136 == v135)
        {
          v161 = 0;
          goto LABEL_229;
        }

        if (v120 < 9 || strncmp("$ib$", v119, 4uLL))
        {
          goto LABEL_226;
        }

        v216 = strncmp("$gl_", v119 + 5, 4uLL);
        v161 = v216 != 0;
        if (!v216)
        {
LABEL_229:
          v162 = -1;
LABEL_230:
          v431 = v162;
          v163 = 0;
          v448 = 0;
          v439 = v120;
          v427 = v134;
          v426 = v161;
          do
          {
            if (v93[v163])
            {
              v164 = glpStringHashGet(v484[14 * v163 + 3], v119, v120);
              if (v164)
              {
                v165 = v164;
                v434 = v163;
                *v134 |= 1 << v163;
                *(v164 + 156) = v431;
                if (v161)
                {
                  glpABIGetTypeSize(0, *v164, 0);
                  glpTypeSizeGetSize();
                }

                else
                {
                  v166 = 0;
                }

                *(v471 + v163) += v166;
                SamplerCount = glpTypeGetSamplerCount(*v165);
                *(v469 + v163) += SamplerCount;
                if (!v161 && (v92[5] & 2) != 0)
                {
                  v173 = v165[1];
                  if (!v173 || (v174 = SamplerCount, v175 = glpLayoutObjectFind(v173, 28), SamplerCount = v174, !v175))
                  {
                    if (v415 + 1 <= v413)
                    {
                      v181 = v415;
                      v180 = __src;
                    }

                    else
                    {
                      if (v413 <= 1)
                      {
                        v176 = 1;
                      }

                      else
                      {
                        v176 = v413;
                      }

                      v177 = 2 * v176;
                      if (v177 <= (v415 + 1))
                      {
                        v178 = v415 + 1;
                      }

                      else
                      {
                        v178 = v177;
                      }

                      v413 = v178;
                      v179 = SamplerCount;
                      v180 = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 8 * v178, "Vector Storage (GLPVariableObject *, growth)");
                      v181 = v415;
                      memcpy(v180, __src, 8 * v415);
                      v119 = *v454;
                      off_2819B9B80(GLP_MALLOC_ALLOCATOR, __src);
                      SamplerCount = v179;
                      v93 = v432;
                    }

                    *(v180 + v181) = v165;
                    ++v415;
                    __src = v180;
                    v134 = v427;
                    v161 = v426;
                  }
                }

                v182 = v165[9];
                if (v182 && !*(v134 + 16))
                {
                  v183 = SamplerCount;
                  v184 = glpCopyValue(&GLP_MALLOC_ALLOCATOR, *v165, v182, v167, v168, v169, v170, v171);
                  SamplerCount = v183;
                  *(v134 + 16) = v184;
                }

                if ((v92[5] & 2) != 0 && SamplerCount >= 1)
                {
                  v430 = SamplerCount;
                  glpLLVMAllocVariableExtra(v92, v165);
                  glpABIGetTypeSize(0, *v165, 0);
                  glpTypeSizeGetSize();
                  v186 = v185;
                  v187 = v92;
                  v188 = v185;
                  v189 = (v92[1])(*v92, 4 * v185, "Primitive Types");
                  v190 = (v92[1])(*v92, v188, "Flags");
                  glpTypeGetAppleVec4Types(*v165, v189, 1, 0, 0, v190, 0, 0, 0);
                  v191 = (v92[1])(*v92, 16, "Sampler Uniform");
                  *(v165[18] + 8) = v191;
                  *v191 = v448;
                  *(v191 + 8) = (v187[1])(*v187, 16 * v448, "Vector Storage (GLPLLVMSampler)");
                  if (v186)
                  {
                    v192 = 0;
                    v193 = v417;
                    do
                    {
                      if (glpPrimitiveTypeGetCategory(*v189) == 4)
                      {
                        if (!v448)
                        {
                          v194 = *(v125 + 50);
                          v195 = *(v125 + 51);
                          if (v195 + 1 <= v194)
                          {
                            v198 = v125[26];
                            v199 = *(v125 + 51);
                          }

                          else
                          {
                            if (v194 <= 1)
                            {
                              v194 = 1;
                            }

                            v196 = 2 * v194;
                            if (v196 <= v195 + 1)
                            {
                              v197 = v195 + 1;
                            }

                            else
                            {
                              v197 = v196;
                            }

                            v198 = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 4 * v197, "Vector Storage (int, growth)");
                            memcpy(v198, v125[26], 4 * *(v125 + 51));
                            off_2819B9B80(GLP_MALLOC_ALLOCATOR, v125[26]);
                            *(v125 + 50) = v197;
                            v125[26] = v198;
                            v199 = *(v125 + 51);
                          }

                          memmove(&v198[4 * v195 + 4], &v198[4 * v195], 4 * (v199 - v195));
                          *(v125[26] + 4 * v195) = v193;
                          ++*(v125 + 51);
                        }

                        v200 = *v189;
                        v201 = *v191;
                        v202 = *(v191 + 4);
                        if ((v202 + 1) <= *v191)
                        {
                          v205 = *(v191 + 8);
                          v206 = *(v191 + 4);
                        }

                        else
                        {
                          if (v201 <= 1)
                          {
                            v201 = 1;
                          }

                          v203 = 2 * v201;
                          if (v203 <= v202 + 1)
                          {
                            v204 = v202 + 1;
                          }

                          else
                          {
                            v204 = v203;
                          }

                          v205 = (v459[1])(*v459, 16 * v204, "Vector Storage (GLPLLVMSampler, growth)");
                          memcpy(v205, *(v191 + 8), 16 * *(v191 + 4));
                          v125 = v436;
                          (v459[3])(*v459, *(v191 + 8));
                          *v191 = v204;
                          *(v191 + 8) = v205;
                          v206 = *(v191 + 4);
                        }

                        memmove(&v205[16 * v202 + 16], &v205[16 * v202], 16 * (v206 - v202));
                        v207 = (*(v191 + 8) + 16 * v202);
                        *v207 = v192 + v443;
                        v207[1] = -1;
                        v207[2] = v193;
                        v207[3] = v200;
                        ++*(v191 + 4);
                        ++v192;
                        v120 = v439;
                        v119 = *v454;
                      }

                      ++v193;
                      ++v189;
                      --v188;
                    }

                    while (v188);
                  }

                  v448 = v430;
                  v92 = v459;
                  v93 = v432;
                  v134 = v427;
                  v161 = v426;
                }

                v163 = v434;
              }
            }

            ++v163;
          }

          while (v163 != 5);
          *(v134 + 4) = v431;
          *(v134 + 8) = 0xFFFFFFFFLL;
          *(v134 + 24) = glpDeepCopyType(&GLP_MALLOC_ALLOCATOR, ArrayType);
          v208 = v424;
          if (v424)
          {
            v208 = BitSetCloneWithAllocator(v424, GLP_MALLOC_ALLOCATOR, *(&GLP_MALLOC_ALLOCATOR + 1), off_2819B9B78, off_2819B9B80);
          }

          *(v134 + 32) = v208;
          *(v134 + 80) = 0;
          v209 = *v463;
          *(v134 + 40) = *v463;
          *(v134 + 56) = *&v463[16];
          v210 = v125[10];
          if (v120)
          {
            v211 = v120 >> 5;
            LODWORD(v212) = v120;
            v213 = ~(v120 >> 5);
            v111 = v414;
            v114 = v420;
            do
            {
              v212 = (32 * v212 + (v212 >> 2) + v409[(v120 - 1)]) ^ v212;
              LODWORD(v120) = v120 + v213;
            }

            while (v120 > v211);
            v214 = v212 << 32;
          }

          else
          {
            v214 = 0;
            v111 = v414;
            v114 = v420;
          }

          glpStringHashPut(v210, v409, v214 | v410, v209, v134);
          if (v161)
          {
            glpABIGetTypeSize(0, ArrayType, 0);
            glpTypeSizeGetSize();
            v417 += v215;
          }

          v443 += v448;
          v411 += glpTypeGetSamplerCount(ArrayType);
          goto LABEL_291;
        }
      }

      v162 = v417;
      goto LABEL_230;
    }

LABEL_298:
    if (++v412 != 6)
    {
      continue;
    }

    break;
  }

  v460 = 4;
  v217 = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 64, "Vector Storage (GLPContextStateUniformEntry)");
  v461 = v217;
  if (v415)
  {
    v218 = v217;
    LODWORD(v219) = 0;
    v220 = 0;
    v221 = v417;
    do
    {
      *v455 = v220;
      v222 = *(__src + v220);
      *(v222 + 156) = v221;
      glpABIGetTypeSize(0, *v222, 0);
      glpTypeSizeGetSize();
      v418 = v221;
      if (v223)
      {
        v224 = v223;
        v225 = 0;
        for (m = 0; m != v224; ++m)
        {
          *v463 = v221;
          v227 = glpLayoutObjectFind(*(v222 + 8), 46);
          if (!v227 || *(v227 + 4) != 9)
          {
            v228 = glpLayoutObjectFind(*(v222 + 8), 46);
            if (v228)
            {
              *&v463[8] = *&v463[8] & 0xFFFFFFFFFFFFE0FFLL | ((v228[2] & 0x1F) << 8);
            }

            v229 = glpLayoutObjectFind(*(v222 + 8), 48);
            if (v229)
            {
              *&v463[8] = *&v463[8] & 0xFFFFFFF8FFFFFFFFLL | ((v229[2] & 7) << 32);
            }

            v230 = glpLayoutObjectFind(*(v222 + 8), 49);
            if (v230)
            {
              *&v463[8] = *&v463[8] & 0xFFFFFF07FFFFFFFFLL | ((v230[2] & 0x1F) << 35);
            }

            v231 = glpLayoutObjectFind(*(v222 + 8), 51);
            if (v231)
            {
              *&v463[8] = *&v463[8] & 0xFFFFF0FFFFFFFFFFLL | ((v231[2] & 0xF) << 40);
            }

            v232 = glpLayoutObjectFind(*(v222 + 8), 53);
            if (v232)
            {
              *&v463[8] = *&v463[8] & 0xFFFFFEFFFFFFFFFFLL | ((v232[2] & 1) << 40);
            }

            v233 = glpLayoutObjectFind(*(v222 + 8), 54);
            if (v233)
            {
              *&v463[8] = *&v463[8] & 0xFFFFF9FFFFFFFFFFLL | ((v233[2] & 3) << 41);
            }

            v234 = glpLayoutObjectFind(*(v222 + 8), 55);
            if (v234)
            {
              *&v463[8] = *&v463[8] & 0xFFFFFFFEFFFFFFFFLL | ((v234[2] & 1) << 32);
            }

            v235 = glpLayoutObjectFind(*(v222 + 8), 56);
            if (v235)
            {
              *&v463[8] = *&v463[8] & 0xFFFFFFF1FFFFFFFFLL | ((v235[2] & 7) << 33);
            }

            v236 = glpLayoutObjectFind(*(v222 + 8), 58);
            if (v236)
            {
              *&v463[8] = *&v463[8] & 0xFFFFFC7FFFFFFFFFLL | ((v236[2] & 7) << 39);
            }

            v237 = glpLayoutObjectFind(*(v222 + 8), 62);
            if (v237)
            {
              *&v463[8] = *&v463[8] & 0xFFFFFCFFFFFFFFFFLL | ((v237[2] & 3) << 40);
            }

            v238 = glpLayoutObjectFind(*(v222 + 8), 64);
            if (v238)
            {
              *&v463[8] = *&v463[8] & 0xFFFF8FFFFFFFFFFFLL | ((v238[2] & 7) << 44);
            }

            v239 = glpLayoutObjectFind(*(v222 + 8), 65);
            if (v239)
            {
              *&v463[8] = *&v463[8] & 0xFFFFFFF0FFFFFFFFLL | ((v239[2] & 0xF) << 32);
            }

            v240 = glpLayoutObjectFind(*(v222 + 8), 66);
            if (v240)
            {
              *&v463[8] = *&v463[8] & 0xFFFFFF0FFFFFFFFFLL | ((v240[2] & 0xF) << 36);
            }

            v241 = glpLayoutObjectFind(*(v222 + 8), 67);
            if (v241)
            {
              *&v463[8] = *&v463[8] & 0xFFFFFFFFFFLL | (*(v241 + 4) << 40);
            }

            v242 = glpLayoutObjectFind(*(v222 + 8), 47);
            if (v242)
            {
              *&v463[8] = *&v463[8] & 0xFFFFFFFF0000FFFFLL | (v225 + (*(v242 + 4) << 16));
            }

            v243 = glpLayoutObjectFind(*(v222 + 8), 50);
            if (v243)
            {
              v463[12] = m + *(v243 + 16);
            }

            v244 = glpLayoutObjectFind(*(v222 + 8), 52);
            if (v244)
            {
              v463[12] = m + *(v244 + 16);
            }

            v245 = glpLayoutObjectFind(*(v222 + 8), 57);
            if (v245)
            {
              *&v463[8] = *&v463[8] & 0xFFFFFF80FFFFFFFFLL | (((m + *(v245 + 4)) & 0x7F) << 32);
            }

            v246 = glpLayoutObjectFind(*(v222 + 8), 59);
            if (v246)
            {
              *&v463[8] = *&v463[8] & 0xFFFFFF80FFFFFFFFLL | (((m + *(v246 + 4)) & 0x7F) << 32);
            }

            v247 = glpLayoutObjectFind(*(v222 + 8), 60);
            if (v247)
            {
              v463[12] = m + *(v247 + 16);
            }

            v248 = glpLayoutObjectFind(*(v222 + 8), 61);
            if (v248)
            {
              v463[12] = *(v248 + 16) + (m >> 2);
            }

            v249 = glpLayoutObjectFind(*(v222 + 8), 63);
            if (v249)
            {
              *&v463[8] = *&v463[8] & 0xFFFFF3FFFFFFFFFFLL | (((m + *(v249 + 4)) & 3) << 42);
            }

            PPStreamTokenConvertParamBindingsToGeneric(&v463[8], 1);
            v467 = *v463;
            v250 = v460;
            if (v219 + 1 <= v460)
            {
              v219 = v219;
            }

            else
            {
              if (v460 <= 1)
              {
                v250 = 1;
              }

              v251 = 2 * v250;
              if (v251 <= v219 + 1)
              {
                v252 = v219 + 1;
              }

              else
              {
                v252 = v251;
              }

              v253 = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 16 * v252, "Vector Storage (GLPContextStateUniformEntry, growth)");
              v219 = v219;
              memcpy(v253, v218, 16 * v219);
              off_2819B9B80(GLP_MALLOC_ALLOCATOR, v218);
              LODWORD(v460) = v252;
              v461 = v253;
            }

            v218 = v461;
            *(v461 + v219) = v467;
            LODWORD(v219) = ++HIDWORD(v460);
          }

          v225 += 0x40000;
          ++v221;
        }
      }

      glpABIGetTypeSize(0, *v222, 0);
      glpTypeSizeGetSize();
      v221 = v254 + v418;
      v220 = *v455 + 1;
    }

    while (*v455 + 1 != v415);
  }

  else
  {
    v221 = v417;
  }

  off_2819B9B80(GLP_MALLOC_ALLOCATOR, __src);
  v436[27] = glpCopyContextState(&v460);
  off_2819B9B80(GLP_MALLOC_ALLOCATOR, v461);
  v263 = 0;
  *(v436 + 56) = v221;
  v264 = v408;
  do
  {
    if (*(v469 + v263) >= 17)
    {
      v267 = v459[8];
      glpLanguageToString(v263);
      glpLanguageToString(v263);
      *v463 = "-1";
      *&v463[8] = 0xEDA00000002;
      *&v463[16] = 0xFFFFFFFFLL;
      glpLogMessage(v267, 0, v463, "Implementation limit of %d active %s shader samplers (e.g., maximum number of supported image units) exceeded, %s shader uses %d samplers");
      goto LABEL_380;
    }

    v265 = *(v471 + v263);
    if (v265 >= 1025)
    {
      v268 = v459[8];
      glpLanguageToString(v263);
      *v463 = "-1";
      *&v463[8] = 0xEDA00000002;
      *&v463[16] = 0xFFFFFFFFLL;
      glpLogMessage(v268, 0, v463, "Implementation limit of %d (e.g., number of built-in plus user defined active uniforms components) exceeded, %s shader uses %d total uniforms.");
      goto LABEL_380;
    }

    ++v263;
  }

  while (v263 != 5);
  if (v411 >= 33)
  {
    v266 = v459[8];
    *v463 = "-1";
    *&v463[8] = 0xEDA00000002;
    *&v463[16] = 0xFFFFFFFFLL;
    glpLogMessage(v266, 0, v463, "Implementation limit of %d active samplers (e.g., maximum number of supported image units) exceeded, linked shaders use %d samplers");
LABEL_380:
    v269 = v436;
    goto LABEL_381;
  }

  v467 = 0uLL;
  v468 = 0;
  v25 = v436;
  v436[11] = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
  v270 = *(v414 + 32);
  if (v270)
  {
    v271 = 0;
    v272 = 0;
    v273 = 0;
    do
    {
      v274 = (*(v414 + 40) + 32 * v271);
      v275 = *v274;
      if (*v274 && (*(v275 + 52) & 4) != 0)
      {
        v276 = v274[1];
        v277 = v274[2];
        v278 = __abort_malloc_0(v277);
        memcpy(v278, v276, v277);
        v279 = __abort_malloc_0(0x58uLL);
        *v279 = 0u;
        v279[1] = 0u;
        v279[2] = 0u;
        v279[3] = 0u;
        v279[4] = 0u;
        *(v279 + 10) = 0;
        v444 = v272;
        *(v279 + 1) = v272;
        *(v279 + 2) = v273;
        v456 = v273;
        *(v279 + 3) = 0;
        v280 = 0;
        *(v279 + 3) = glpDeepCopyType(&GLP_MALLOC_ALLOCATOR, *v275);
        *(v279 + 4) = 0;
        *(v279 + 80) = 0;
        *v279 = 0;
        v282 = v485;
        do
        {
          if (v432[v280])
          {
            v283 = glpStringHashGet(*v282, v276, v277);
            if (v283)
            {
              *v279 |= 1 << v280;
              *(*(v283 + 88) + 28) = *(v279 + 2);
              *(v279 + v280 + 10) = 0;
              ++*(&v467 + v280);
            }
          }

          ++v280;
          v282 += 14;
        }

        while (v280 != 5);
        if (v277)
        {
          v284 = v277;
          LODWORD(v285) = v277;
          v264 = v408;
          v286 = v456;
          do
          {
            v285 = (32 * v285 + (v285 >> 2) + v278[v284 - 1]) ^ v285;
            v284 += ~(v277 >> 5);
          }

          while (v284 > v277 >> 5);
          v287 = v285 << 32;
        }

        else
        {
          v287 = 0;
          v264 = v408;
          v286 = v456;
        }

        glpStringHashPut(v436[11], v278, v287 | v277, v281, v279);
        glpTypeGetVec4s_1(*v275);
        v289 = v288;
        glpTypeGetVec4s_1(*v275);
        if ((16 * v290) > 0x4000)
        {
          v402 = v459[8];
          glpTypeGetVec4s_1(*v275);
          *v463 = "-1";
          *&v463[8] = 0xEDA00000002;
          *&v463[16] = 0xFFFFFFFFLL;
          glpLogMessage(v402, 0, v463, "Bindable uniform %.*s too large (%d exceeds max %d)");
          goto LABEL_380;
        }

        if (glpTypeGetSamplerCount(*v275))
        {
          v403 = v459[8];
          *v463 = "-1";
          *&v463[8] = 0xEDA00000002;
          *&v463[16] = 0xFFFFFFFFLL;
          glpLogMessage(v403, 0, v463, "Bindable uniform %.*s not allowed to have samplers");
          goto LABEL_380;
        }

        v272 = v289 + v444;
        v273 = v286 + 1;
        v270 = *(v414 + 32);
        v25 = v436;
      }

      ++v271;
    }

    while (v271 < v270);
  }

  v291 = 0;
  v292 = v459;
  do
  {
    if (*(&v467 + v291) > dword_23A29C788[v291])
    {
      v400 = v459[8];
      glpLanguageToString(v291);
      *v463 = "-1";
      *&v463[8] = 0xEDA00000002;
      *&v463[16] = 0xFFFFFFFFLL;
      glpLogMessage(v400, 0, v463, "Too many bindable uniforms in %s shader (%d exceeds max %d)");
      goto LABEL_502;
    }

    ++v291;
  }

  while (v291 != 5);
  v465[0] = 0;
  v465[1] = 0;
  v466 = 0;
  v25[12] = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
  v293 = *(v264 + 32);
  if (v293)
  {
    v294 = 0;
    v295 = 0;
    do
    {
      v296 = (*(v264 + 40) + 32 * v294);
      v297 = *v296;
      if (*v296)
      {
        v298 = v296[1];
        v299 = v296[2];
        v300 = __abort_malloc_0(v299);
        memcpy(v300, v298, v299);
        v301 = __abort_malloc_0(0x58uLL);
        *v301 = 0u;
        v301[1] = 0u;
        v301[2] = 0u;
        v301[3] = 0u;
        v301[4] = 0u;
        *(v301 + 10) = 0;
        *(v301 + 1) = -1;
        *(v301 + 2) = v295;
        v449 = v295;
        v302 = 0;
        *(v301 + 3) = glpDeepCopyType(&GLP_MALLOC_ALLOCATOR, *(v297 + 64));
        *(v301 + 4) = 0;
        *(v301 + 80) = *(v297 + 32) == 0;
        *v301 = 0;
        v304 = &v486;
        do
        {
          if (v432[v302])
          {
            v305 = glpStringHashGet(*v304, v298, v299);
            if (v305)
            {
              *v301 |= 1 << v302;
              v306 = *(v305 + 80);
              *(v301 + 3) = *(v306 + 8);
              *(v306 + 28) = *(v301 + 2);
              *(v301 + v302 + 10) = 0;
              *(v465 + v302) += *(*(v297 + 80) + 12);
            }
          }

          ++v302;
          v304 += 14;
        }

        while (v302 != 5);
        v25 = v436;
        if (v299)
        {
          v307 = v299;
          LODWORD(v308) = v299;
          v309 = v299;
          do
          {
            v308 = (32 * v308 + (v308 >> 2) + v300[v307 - 1]) ^ v308;
            v307 += ~(v299 >> 5);
          }

          while (v307 > v299 >> 5);
          v310 = v308 << 32;
        }

        else
        {
          v310 = 0;
          v309 = v299;
        }

        glpStringHashPut(v436[12], v300, v310 | v309, v303, v301);
        v311 = *(v297 + 80);
        v312 = *(v311 + 12);
        if (glpBufferObjectGetMinimumBufferSize(v311) > 0x4000)
        {
          v404 = v459[8];
          glpBufferObjectGetMinimumBufferSize(*(v297 + 80));
          *v463 = "-1";
          *&v463[8] = 0xEDA00000002;
          *&v463[16] = 0xFFFFFFFFLL;
          glpLogMessage(v404, 0, v463, "Uniform interface block %.*s too large (%d exceeds max %d)");
          goto LABEL_502;
        }

        v292 = v459;
        if (glpTypeGetSamplerCount(*(v297 + 64)))
        {
          v405 = v459[8];
          *v463 = "-1";
          *&v463[8] = 0xEDA00000002;
          *&v463[16] = 0xFFFFFFFFLL;
          glpLogMessage(v405, 0, v463, "Uniform interface block %.*s not allowed to have samplers");
LABEL_502:
          v269 = v25;
LABEL_381:
          glpDestroyLinkedProgram(v269);
          return 0;
        }

        v295 = v312 + v449;
        v264 = v408;
        v293 = *(v408 + 32);
      }

      ++v294;
    }

    while (v294 < v293);
  }

  for (n = 0; n != 5; ++n)
  {
    if (*(v465 + n) > dword_23A29C79C[n])
    {
      v401 = *(v292 + 64);
      glpLanguageToString(n);
      *v463 = "-1";
      *&v463[8] = 0xEDA00000002;
      *&v463[16] = 0xFFFFFFFFLL;
      glpLogMessage(v401, 0, v463, "Too many uniform interface blocks in %s shader (%d exceeds max %d)");
      goto LABEL_502;
    }
  }

  v314 = 0;
  v315 = (v25 + 13);
  *v457 = v25 + 18;
  v440 = (v25 + 13);
  do
  {
    *&v315[8 * v314] = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
    v316 = v432[v314];
    if (v316 && glpTopLevelNodeGetDefCount(v316))
    {
      v317 = 0;
      v318 = 0;
      v319 = v432;
      do
      {
        Def = glpTopLevelNodeGetDef(v319[v314], v317);
        if (Def)
        {
          v321 = Def;
          if (glpASTNodeGetKind(Def) == 51)
          {
            Prototype = glpFunctionDefinitionNodeGetPrototype(v321);
            Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
            if ((*(Extra + 10) & 0x10) != 0)
            {
              v324 = Extra;
              *(Extra + 160) = v318;
              v325 = __abort_malloc_0(0x10uLL);
              *v325 = 0;
              v325[1] = 0;
              *v325 = -1;
              *(v325 + 1) = *(v324 + 160);
              v325[1] = 0;
              v326 = __abort_malloc_0(*(v324 + 32));
              memcpy(v326, *(v324 + 24), *(v324 + 32));
              v328 = *(v324 + 32);
              if (v328)
              {
                v329 = *(v324 + 32);
                LODWORD(v330) = v329;
                do
                {
                  v330 = (32 * v330 + (v330 >> 2) + v326[v329 - 1]) ^ v330;
                  v329 += ~(v328 >> 5);
                }

                while (v329 > v328 >> 5);
                v331 = v330 << 32;
              }

              else
              {
                v331 = 0;
              }

              glpStringHashPut(*&v315[8 * v314], v326, v331 | v328, v327, v325);
              ++v318;
            }
          }
        }

        ++v317;
        v319 = v432;
      }

      while (v317 < glpTopLevelNodeGetDefCount(v432[v314]));
      if (v318 > 4096)
      {
        v406 = *(v292 + 64);
        *v463 = "-1";
        *&v463[8] = 0xEDA00000002;
        *&v463[16] = 0xFFFFFFFFLL;
        glpLogMessage(v406, 0, v463, "Too many subroutines (%d exceeds max %d)");
        goto LABEL_502;
      }
    }

    *(*v457 + 8 * v314) = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
    if (v432[v314])
    {
      v450 = &v484[14 * v314];
      v332 = v450[7];
      v333 = *(v332 + 32);
      if (v333)
      {
        v334 = 0;
        v335 = 0;
        do
        {
          v336 = *(v332 + 40) + 32 * v334;
          v337 = *v336;
          if (*v336)
          {
            v338 = *(v336 + 8);
            v339 = *(v336 + 16);
            v340 = *(v337 + 16);
            if (glpTypeGetKind(v340) == 2)
            {
              v340 = glpArrayTypeGetElementType(v340);
            }

            v341 = __abort_malloc_0(v339);
            memcpy(v341, v338, v339);
            v342 = __abort_malloc_0(0x58uLL);
            *v342 = 0u;
            v342[1] = 0u;
            v342[2] = 0u;
            v342[3] = 0u;
            v342[4] = 0u;
            *(v342 + 10) = 0;
            *(v342 + 1) = v335;
            *(v342 + 1) = 0xFFFFFFFFLL;
            *(v342 + 3) = glpDeepCopyType(&GLP_MALLOC_ALLOCATOR, *(v337 + 16));
            *(v342 + 4) = 0;
            *(v342 + 80) = 0;
            *v342 = 1 << v314;
            v343 = glpPointerHashGet(v450[8], v340);
            v344 = *(v343 + 4);
            *(v342 + 8) = v344;
            *(v342 + 9) = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 4 * v344, "Vector Storage (int)");
            if (*(v343 + 4))
            {
              v346 = 0;
              do
              {
                v347 = glpFunctionDefinitionNodeGetPrototype(*(*(v343 + 8) + 8 * v346));
                *(*(v342 + 9) + 4 * (*(v342 + 17))++) = *(glpFunctionPrototypeNodeGetExtra(v347) + 160);
                ++v346;
              }

              while (v346 < *(v343 + 4));
            }

            *(v337 + 40) = *(v342 + 1);
            if (v339)
            {
              v348 = v339;
              LODWORD(v349) = v339;
              v292 = v459;
              do
              {
                v349 = (32 * v349 + (v349 >> 2) + v341[v348 - 1]) ^ v349;
                v348 += ~(v339 >> 5);
              }

              while (v348 > v339 >> 5);
              v350 = v349 << 32;
            }

            else
            {
              v350 = 0;
              v292 = v459;
            }

            glpStringHashPut(*(*v457 + 8 * v314), v341, v350 | v339, v345, v342);
            glpTypeGetVec4s_1(*(v337 + 16));
            v335 += v351;
            v333 = *(v332 + 32);
          }

          ++v334;
        }

        while (v334 < v333);
        v315 = v440;
        if (v335 > 4096)
        {
          v407 = *(v292 + 64);
          *v463 = "-1";
          *&v463[8] = 0xEDA00000002;
          *&v463[16] = 0xFFFFFFFFLL;
          glpLogMessage(v407, 0, v463, "Too many subroutine uniforms (%d exceeds max %d)");
          goto LABEL_380;
        }
      }
    }

    ++v314;
    v25 = v436;
  }

  while (v314 != 5);
  v436[23] = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
  v352 = v491;
  if (v491)
  {
    v353 = *(v491 + 32);
    if (v353)
    {
      for (ii = 0; ii < v353; ++ii)
      {
        v355 = *(v352 + 40) + 32 * ii;
        v356 = *v355;
        if (*v355)
        {
          v357 = *(v355 + 8);
          v358 = *(v355 + 16);
          v359 = __abort_malloc_0(0x10uLL);
          *v359 = 0;
          v359[1] = 0;
          *v359 = *v356;
          v359[1] = glpDeepCopyType(&GLP_MALLOC_ALLOCATOR, *(v356 + 8));
          v360 = __abort_malloc_0(v358);
          memcpy(v360, v357, v358);
          if (v358)
          {
            v362 = v358;
            LODWORD(v363) = v358;
            do
            {
              v363 = (32 * v363 + (v363 >> 2) + v360[v362 - 1]) ^ v363;
              v362 += ~(v358 >> 5);
            }

            while (v362 > v358 >> 5);
            v364 = v363 << 32;
          }

          else
          {
            v364 = 0;
          }

          v365 = v364 | v358;
          v25 = v436;
          glpStringHashPut(v436[23], v360, v365, v361, v359);
          v353 = *(v352 + 32);
        }
      }
    }
  }

  v25[24] = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
  v366 = v483;
  if (v483)
  {
    v367 = *(v483 + 32);
    if (v367)
    {
      for (jj = 0; jj < v367; ++jj)
      {
        v369 = *(v366 + 40) + 32 * jj;
        v370 = *v369;
        if (*v369)
        {
          v371 = *(v369 + 8);
          v372 = *(v369 + 16);
          v373 = __abort_malloc_0(0x10uLL);
          *v373 = 0;
          v373[1] = 0;
          *v373 = *v370;
          v373[1] = glpDeepCopyType(&GLP_MALLOC_ALLOCATOR, v370[1]);
          v374 = __abort_malloc_0(v372);
          memcpy(v374, v371, v372);
          if (v372)
          {
            v376 = v372;
            LODWORD(v377) = v372;
            do
            {
              v377 = (32 * v377 + (v377 >> 2) + v374[v376 - 1]) ^ v377;
              v376 += ~(v372 >> 5);
            }

            while (v376 > v372 >> 5);
            v378 = v377 << 32;
          }

          else
          {
            v378 = 0;
          }

          v379 = v378 | v372;
          v25 = v436;
          glpStringHashPut(v436[24], v374, v379, v375, v373);
          v367 = *(v366 + 32);
        }
      }
    }
  }

  v380 = 0;
  v381 = *(v292 + 296);
  v382 = *(v292 + 328);
  *(v25 + 18) = *(v292 + 312);
  *(v25 + 19) = v382;
  *(v25 + 17) = v381;
  v383 = (v25 + 5);
  v384 = v292 + 256;
  v385 = (v25 + 29);
  v386 = v292 + 276;
  v387 = v25 + 252;
  v25[40] = *(v292 + 344);
  *(v292 + 344) = 0;
  v451 = (v25 + 29);
  *v458 = v292 + 256;
  v445 = v25 + 252;
  do
  {
    v25[v380] = 0;
    *&v383[8 * v380] = 0;
    v388 = v432[v380];
    if (v388)
    {
      *v463 = v292;
      *&v463[8] = *(v292 + 64);
      v464 = v388;
      v432[v380] = glpPPTNode(v463, v388);
      *&v385[4 * v380] = *(v384 + 4 * v380);
      *&v387[4 * v380] = *(v386 + 4 * v380);
      v389 = *(v292 + 40);
      if ((v389 & 2) != 0)
      {
        v390 = v386;
        glpCreateShaderByteCode();
        *&v383[8 * v380] = v391;
        if ((*(v292 + 40) & 8) != 0)
        {
          if (*(v473 + v380))
          {
            v392 = 2;
          }

          else
          {
            v392 = 1;
          }
        }

        else
        {
          v392 = 1;
        }

        v393 = 0;
        v394 = *(v473 + v380);
        do
        {
          if (v393)
          {
            v395 = 1;
          }

          else
          {
            v395 = v394 == 0;
          }

          v396 = !v395;
          LLVMCodeGenContext = glpMakeLLVMCodeGenContext(v459, v436, *&v383[8 * v380], v380, v462, v393, v396);
          glpLLVMCGTopLevel(LLVMCodeGenContext, v432[v380]);
          glpDestroyLLVMCodeGenContext(LLVMCodeGenContext);
          ++v393;
        }

        while (v392 != v393);
        v389 = *(v459 + 10);
        v292 = v459;
        v25 = v436;
        v385 = v451;
        v384 = *v458;
        v386 = v390;
        v387 = v445;
      }

      if (v389)
      {
        v398 = PPStreamCreate();
        v25[v380] = v398;
        CodeGenContext = glpMakeCodeGenContext(v292, v398, v380);
        if (glpCGTopLevel(CodeGenContext, v432[v380], &v488[7 * v380]) == -1)
        {
          goto LABEL_502;
        }

        glpDestroyCodeGenContext(CodeGenContext);
      }
    }

    ++v380;
  }

  while (v380 != 5);
  return v25;
}

void glpTypeGetVec4s_1(uint64_t a1)
{
  glpABIGetTypeSize(0, a1, 0);

  glpTypeSizeGetSize();
}

_DWORD *glpCopyContextState(uint64_t a1)
{
  v2 = *(a1 + 4);
  v3 = malloc_type_malloc((16 * v2) | 8, 0xCA0EF1E7uLL);
  if (!v3)
  {
    abort();
  }

  v4 = v3;
  bzero(v3, (16 * v2) | 8);
  *v4 = v2;
  if (v2 >= 1)
  {
    v5 = 0;
    do
    {
      *&v4[v5 + 2] = *(*(a1 + 8) + v5 * 4);
      v5 += 4;
    }

    while (4 * v2 != v5);
  }

  return v4;
}

void glpDestroyLinkedProgram(uint64_t a1)
{
  for (i = 0; i != 40; i += 8)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      PPStreamFree(v3);
      *(a1 + i) = 0;
    }
  }

  for (j = 40; j != 80; j += 8)
  {
    v5 = *(a1 + j);
    if (v5)
    {
      if (*v5)
      {
        free(*v5);
        *v5 = 0;
      }

      v6 = *(v5 + 8);
      if (v6)
      {
        free(v6);
        *(v5 + 8) = 0;
      }

      v7 = *(v5 + 32);
      if (v7)
      {
        free(v7);
        *(v5 + 32) = 0;
      }

      v8 = *(v5 + 40);
      if (v8)
      {
        free(v8);
        *(v5 + 40) = 0;
      }

      v9 = *(v5 + 16);
      if (v9)
      {
        free(v9);
        *(v5 + 16) = 0;
      }

      v10 = *(v5 + 24);
      if (v10)
      {
        free(v10);
      }

      free(v5);
      *(a1 + j) = 0;
    }
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    v12 = *(v11 + 32);
    if (v12)
    {
      v13 = 0;
      for (k = 0; k < v12; ++k)
      {
        v15 = *(v11 + 40);
        v16 = *(v15 + v13);
        if (v16)
        {
          free(*(v15 + v13 + 8));
          glpDestroyType(&GLP_MALLOC_ALLOCATOR, *(v16 + 24));
          v17 = *(v16 + 32);
          if (v17)
          {
            BitSetFree(v17);
          }

          free(*(v16 + 16));
          free(v16);
          v12 = *(v11 + 32);
        }

        v13 += 32;
      }

      v11 = *(a1 + 80);
    }

    glpDestroyStringHash(v11);
  }

  off_2819B9B80(GLP_MALLOC_ALLOCATOR, *(a1 + 208));
  v18 = *(a1 + 216);
  if (v18)
  {
    free(v18);
    *(a1 + 216) = 0;
  }

  v19 = *(a1 + 88);
  if (v19)
  {
    v20 = *(v19 + 32);
    if (v20)
    {
      v21 = 0;
      for (m = 0; m < v20; ++m)
      {
        v23 = *(v19 + 40);
        v24 = *(v23 + v21);
        if (v24)
        {
          free(*(v23 + v21 + 8));
          glpDestroyType(&GLP_MALLOC_ALLOCATOR, v24[3]);
          free(v24);
          v20 = *(v19 + 32);
        }

        v21 += 32;
      }

      v19 = *(a1 + 88);
    }

    glpDestroyStringHash(v19);
  }

  v25 = *(a1 + 96);
  if (v25)
  {
    v26 = *(v25 + 32);
    if (v26)
    {
      v27 = 0;
      for (n = 0; n < v26; ++n)
      {
        v29 = *(v25 + 40);
        v30 = *(v29 + v27);
        if (v30)
        {
          free(*(v29 + v27 + 8));
          glpDestroyType(&GLP_MALLOC_ALLOCATOR, v30[3]);
          free(v30);
          v26 = *(v25 + 32);
        }

        v27 += 32;
      }

      v25 = *(a1 + 96);
    }

    glpDestroyStringHash(v25);
  }

  v31 = 0;
  v32 = a1 + 104;
  v33 = a1 + 144;
  do
  {
    v34 = *(v32 + 8 * v31);
    if (v34)
    {
      v35 = *(v34 + 32);
      if (v35)
      {
        v36 = 0;
        for (ii = 0; ii < v35; ++ii)
        {
          v38 = *(v34 + 40);
          v39 = *(v38 + v36);
          if (v39)
          {
            free(*(v38 + v36 + 8));
            free(v39);
            v35 = *(v34 + 32);
          }

          v36 += 32;
        }

        v34 = *(v32 + 8 * v31);
      }

      glpDestroyStringHash(v34);
    }

    v40 = *(v33 + 8 * v31);
    if (v40)
    {
      v41 = *(v40 + 32);
      if (v41)
      {
        v42 = 0;
        for (jj = 0; jj < v41; ++jj)
        {
          v44 = *(v40 + 40);
          v45 = *(v44 + v42);
          if (v45)
          {
            free(*(v44 + v42 + 8));
            glpDestroyType(&GLP_MALLOC_ALLOCATOR, *(v45 + 24));
            off_2819B9B80(GLP_MALLOC_ALLOCATOR, *(v45 + 72));
            free(v45);
            v41 = *(v40 + 32);
          }

          v42 += 32;
        }

        v40 = *(v33 + 8 * v31);
      }

      glpDestroyStringHash(v40);
    }

    ++v31;
  }

  while (v31 != 5);
  v46 = *(a1 + 184);
  if (v46)
  {
    v47 = *(v46 + 32);
    if (v47)
    {
      v48 = 0;
      for (kk = 0; kk < v47; ++kk)
      {
        v50 = *(v46 + 40);
        v51 = *(v50 + v48);
        if (v51)
        {
          free(*(v50 + v48 + 8));
          glpDestroyType(&GLP_MALLOC_ALLOCATOR, v51[1]);
          free(v51);
          v47 = *(v46 + 32);
        }

        v48 += 32;
      }

      v46 = *(a1 + 184);
    }

    glpDestroyStringHash(v46);
  }

  v52 = *(a1 + 192);
  if (v52)
  {
    v53 = *(v52 + 32);
    if (v53)
    {
      v54 = 0;
      for (mm = 0; mm < v53; ++mm)
      {
        v56 = *(v52 + 40);
        v57 = *(v56 + v54);
        if (v57)
        {
          free(*(v56 + v54 + 8));
          glpDestroyType(&GLP_MALLOC_ALLOCATOR, v57[1]);
          free(v57);
          v53 = *(v52 + 32);
        }

        v54 += 32;
      }

      v52 = *(a1 + 192);
    }

    glpDestroyStringHash(v52);
  }

  v58 = *(a1 + 320);
  if (v58)
  {
    v59 = *(v58 + 32);
    if (v59)
    {
      v60 = 0;
      for (nn = 0; nn < v59; ++nn)
      {
        v62 = *(*(v58 + 40) + v60);
        if (v62)
        {
          free(*v62);
          free(v62);
          v59 = *(v58 + 32);
        }

        v60 += 16;
      }

      v58 = *(a1 + 320);
    }

    glpDestroyIntHash(v58);
  }

  free(a1);
}

uint64_t glpLinkedProgramGetSubroutineUniformLocationCount(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8 * a2 + 144);
  v3 = *(v2 + 32);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = *(*(v2 + 40) + v4);
    if (v7)
    {
      glpABIGetTypeSize(0, *(v7 + 24), 0);
      glpTypeSizeGetSize();
      v6 = (v8 + v6);
      v3 = *(v2 + 32);
    }

    ++v5;
    v4 += 32;
  }

  while (v5 < v3);
  return v6;
}

__n128 glpLinkedProgramGetOverrides(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 272);
  v3 = *(a1 + 304);
  *(a2 + 16) = *(a1 + 288);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

void glpDestroyCompiledShader(void **a1)
{
  free(a1[2]);

  free(a1);
}

void glpCleanUpLinkedProgram(uint64_t a1)
{
  for (i = 0; i != 40; i += 8)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      PPStreamFree(v3);
      *(a1 + i) = 0;
    }
  }
}

double glpCreateShaderByteCode()
{
  v0 = malloc_type_malloc(0x58uLL, 0xCA0EF1E7uLL);
  if (!v0)
  {
    abort();
  }

  v0[10] = 0;
  result = 0.0;
  *(v0 + 3) = 0u;
  *(v0 + 4) = 0u;
  *(v0 + 1) = 0u;
  *(v0 + 2) = 0u;
  *v0 = 0u;
  return result;
}

void *glpGenerateCopyInOut(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v258 = a8;
  v255 = a7;
  v264 = a6;
  v254 = a5;
  v260 = a2;
  v11 = a1;
  v279 = a10;
  v297 = *MEMORY[0x277D85DE8];
  SlotVars = generateSlotVars(a1, a3, "$in%u", v253);
  PrimitiveType = glpGetPrimitiveType(5u);
  *&v289[0] = 0;
  v261 = a9;
  CopyFunction = makeCopyFunction(v11, a9, "$copy_in", 0x2CF8B77300000008uLL, v289);
  v13 = *(a4 + 32);
  v280 = v11;
  if (v13)
  {
    v14 = 0;
    v257 = a4;
    do
    {
      v15 = *(a4 + 40) + 32 * v14;
      v16 = *v15;
      if (*v15)
      {
        v18 = *(v15 + 8);
        v17 = *(v15 + 16);
        v273 = v18;
        v272 = v17;
        v274 = v16;
        ElementType = **v16;
        if (glpTypeGetKind(ElementType))
        {
          LODWORD(v271) = 0;
        }

        else
        {
          v20 = glpPrimitiveTypeGetPrimitiveType(ElementType);
          LODWORD(v271) = glpPrimitiveTypeGetCategory(v20) != 3;
        }

        if (glpTypeGetKind(ElementType) == 3)
        {
          LODWORD(v263) = glpBankTypeGetElementCount(ElementType);
          ElementType = glpBankTypeGetElementType(ElementType);
        }

        else
        {
          LODWORD(v263) = 0;
        }

        glpABIGetTypeSize(0, ElementType, 0);
        glpTypeSizeGetSize();
        v22 = v21;
        v23 = (v11[1])(*v11, 4 * v21, "Array of vec4 types for Copy In (why not stack alloc'd?)");
        v24 = (v11[1])(*v11, v22, "Array of flags for Copy In (why not stack alloc'd?)");
        v278 = v23;
        glpTypeGetAppleVec4Types(ElementType, v23, 1, 0, 0, v24, 0, 0, 0);
        if (*(v274 + 2))
        {
          v259 = v14;
          v30 = 0;
          v31 = v263;
          if (v263 <= 1)
          {
            v31 = 1;
          }

          LODWORD(v262) = v31;
          v270 = v274 + 2;
          v32 = v274;
          v266 = v22;
          do
          {
            if (v263)
            {
              MutableValue = glpMakeMutableValue(v11, PrimitiveType, 1, v25, v26, v27, v28, v29, v30);
              v34 = glpTypedValueHashCache(v279, PrimitiveType, MutableValue, MutableValue);
              v290.n128_u64[0] = "-1";
              v290.n128_u64[1] = 0xEDA00000002;
              v291 = 0xFFFFFFFFLL;
              glpMakeConstantNode(v11, &v290, PrimitiveType, v34);
              v36 = v35;
              glpASTNodeSetSaType(v35, PrimitiveType);
              v290.n128_u64[0] = "-1";
              v290.n128_u64[1] = 0xEDA00000002;
              v291 = 0xFFFFFFFFLL;
              VRLFunctionFragment = glpMakeVRLFunctionFragment(v11, &v290, v36);
              glpBlockNodeAddStatement(v11, *&v289[0], VRLFunctionFragment);
              v38 = glpGetPrimitiveType(0);
              glpASTNodeSetSaType(VRLFunctionFragment, v38);
            }

            v265 = v30;
            if (v22)
            {
              v39 = 0;
              v40 = 0;
              LODWORD(v267) = v265 * v22;
              do
              {
                if (BitSetGetEquals(*(*v32 + 120), v39))
                {
                  ScalarCount = glpPrimitiveTypeGetScalarCount(v278[v39]);
                  v42 = (v24[v39] >> 1) & 2;
                  LODWORD(v277) = ScalarCount;
                  v43 = ScalarCount + v42;
                  v44 = v39 + 1;
                  if (v39 + 1 < v22 && (v24[v44] & 4) != 0)
                  {
                    v43 += glpPrimitiveTypeGetScalarCount(v278[v44]);
                  }

                  ScalarType = glpPrimitiveTypeGetScalarType(v278[v39]);
                  LODWORD(v276) = glpGetVectorType(ScalarType, v43);
                  if (v277)
                  {
                    v268 = v39 + 1;
                    v46 = 0;
                    LODWORD(v275) = v267 + v39;
                    do
                    {
                      v47 = &v270[v40];
                      v48 = glpIntHashGet(SlotVars, *v47);
                      Extra = glpVariableDeclarationNodeGetExtra(v48);
                      v287 = 0;
                      *&v288[0] = 0;
                      v281.n128_u64[0] = 0;
                      v286 = 0;
                      v285 = 0;
                      v55 = glpMakeMutableValue(v11, PrimitiveType, 1, v50, v51, v52, v53, v54, v275 - ((v24[v39] >> 2) & 1));
                      v56 = glpTypedValueHashCache(v279, PrimitiveType, v55, v55);
                      v57 = *v32;
                      v290.n128_u64[0] = "-1";
                      v290.n128_u64[1] = 0xEDA00000002;
                      v291 = 0xFFFFFFFFLL;
                      CopyInAssignFragment = glpMakeCopyInAssignFragment(v11, &v290, v288, v273, v272, v57, &v281, &v285, v56, &v287, Extra[2], Extra[3], Extra, &v286);
                      v59 = glpPrimitiveTypeGetScalarType(v278[v39]);
                      v60 = glpGetPrimitiveType(v59);
                      glpASTNodeSetSaType(*&v288[0], v60);
                      glpASTNodeSetSaFlags(*&v288[0], Extra[6] & 0x1F);
                      glpOffsetNodeSetPreSwizzlePrimitiveType(v281.n128_i64[0], v276);
                      glpASTNodeSetSaType(v287, v60);
                      glpASTNodeSetSaFlags(v287, Extra[6] & 0x1F);
                      v61 = v286;
                      v62 = glpPrimitiveTypeGetPrimitiveType(*Extra);
                      glpOffsetNodeSetPreSwizzlePrimitiveType(v61, v62);
                      glpASTNodeSetSaType(v285, PrimitiveType);
                      v63 = v60;
                      v11 = v280;
                      glpASTNodeSetSaType(CopyInAssignFragment, v63);
                      glpASTNodeSetSaFlags(CopyInAssignFragment, Extra[6] & 0x1F);
                      v64 = v281.n128_u64[0];
                      glpMakeOffsetObject(v280);
                      v66 = glpOffsetNodeSetExtra(v64, v65);
                      if (v271)
                      {
                        v66 = glpOffsetNodeSetOffsetExpr(v281.n128_i64[0], 0);
                      }

                      v74 = v281.n128_u64[0];
                      Swizzle_1 = glpMakeSwizzle_1(v66, v67, v68, v69, v70, v71, v72, v73, v46 + ((v24[v39] >> 1) & 2u));
                      glpOffsetNodeSetSwizzle(v74, Swizzle_1);
                      v76 = v286;
                      glpMakeOffsetObject(v280);
                      v78 = glpOffsetNodeSetExtra(v76, v77);
                      v79 = v286;
                      v87 = glpMakeSwizzle_1(v78, v80, v81, v82, v83, v84, v85, v86, *(v47 + 1));
                      glpOffsetNodeSetSwizzle(v79, v87);
                      glpBlockNodeAddStatement(v280, *&v289[0], CopyInAssignFragment);
                      ++v40;
                      ++v46;
                      v32 = v274;
                    }

                    while (v277 != v46);
                    v22 = v266;
                    v44 = v268;
                  }
                }

                else
                {
                  v44 = v39 + 1;
                }

                v39 = v44;
              }

              while (v44 != v22);
            }

            v30 = (v265 + 1);
          }

          while (v30 != v262);
          (v11[3])(*v11, v278);
          a4 = v257;
          v14 = v259;
        }
      }

      ++v14;
    }

    while (v14 < *(a4 + 32));
  }

  v88 = *(SlotVars + 8);
  v89 = v261;
  if (v88)
  {
    v90 = 0;
    for (i = 0; i < v88; ++i)
    {
      v92 = SlotVars[5][v90];
      if (v92)
      {
        glpTopLevelNodeInsertDef(v11, v261, v92, 0);
        v88 = *(SlotVars + 8);
      }

      v90 += 2;
    }
  }

  glpFixInterpolateAt(v11, v261, a4, SlotVars);
  if (v260 == 1)
  {
    v93 = 0;
  }

  else
  {
    v93 = generateSlotVars(v11, v254, "$out%u", v253);
  }

  v94 = 0;
  memset(v289, 0, sizeof(v289));
  memset(v288, 0, sizeof(v288));
  v268 = v93;
  do
  {
    v277 = glpGetPrimitiveType(5u);
    v290.n128_u64[0] = "$copy_out_0";
    v290.n128_u64[1] = 0x825A57630000000BLL;
    v291 = "$copy_out_1";
    v292 = 0xB37B1E010000000BLL;
    v293 = "$copy_out_2";
    v294 = 0xF3BAF9AE0000000BLL;
    v295 = "$copy_out_3";
    v296 = 0xDFDE69E90000000BLL;
    *(v288 + v94) = 0;
    v263 = v94;
    v95 = &v290 + v94;
    v96 = v95->n128_u64[0];
    v97 = v95->n128_u64[1];
    v272 = v288 + v94;
    v262 = makeCopyFunction(v11, v89, v96, v97, v272);
    if (v260 != 1 && !v263)
    {
      v98 = v264;
      if (*(v264 + 32))
      {
        v99 = 0;
        do
        {
          v100 = *(v98 + 40) + 32 * v99;
          v101 = *v100;
          if (*v100)
          {
            v103 = *(v100 + 8);
            v102 = *(v100 + 16);
            v271 = v103;
            v270 = v102;
            v104 = **v101;
            glpABIGetTypeSize(0, v104, 0);
            glpTypeSizeGetSize();
            v106 = v105;
            LODWORD(v273) = 0;
            if (!glpTypeGetKind(v104))
            {
              v107 = glpPrimitiveTypeGetPrimitiveType(v104);
              LODWORD(v273) = glpPrimitiveTypeGetCategory(v107) != 3;
            }

            v108 = v106;
            v109 = (v11[1])(*v11, 4 * v106, "Array of vec4 types for Copy Out (why not stack alloc'd?)");
            v110 = (v11[1])(*v11, v106, "Array of flags for Copy Out (why not stack alloc'd?)");
            v276 = v109;
            v111 = v109;
            v112 = v110;
            glpTypeGetAppleVec4Types(v104, v111, 1, 0, 0, v110, 0, 0, 0);
            if (*(v101 + 2))
            {
              v265 = v99;
              if (v106)
              {
                v113 = 0;
                v114 = 0;
                SlotVars = v101 + 2;
                v278 = v112;
                v266 = v108;
                do
                {
                  if (BitSetGetEquals((*v101)[15], v113))
                  {
                    v115 = glpPrimitiveTypeGetScalarCount(*(v276 + 4 * v113));
                    v116 = (v112[v113] >> 1) & 2;
                    LODWORD(v275) = v115;
                    v117 = v115 + v116;
                    v118 = v113 + 1;
                    if (v113 + 1 < v108 && (v112[v118] & 4) != 0)
                    {
                      v117 += glpPrimitiveTypeGetScalarCount(*(v276 + 4 * v118));
                    }

                    v119 = glpPrimitiveTypeGetScalarType(*(v276 + 4 * v113));
                    LODWORD(v274) = glpGetVectorType(v119, v117);
                    if (v275)
                    {
                      v267 = v113 + 1;
                      v120 = 0;
                      do
                      {
                        v121 = &SlotVars[v114];
                        v122 = glpIntHashGet(v93, *v121);
                        v123 = glpVariableDeclarationNodeGetExtra(v122);
                        v286 = 0;
                        v287 = 0;
                        v285 = 0;
                        v284 = 0;
                        v283 = 0;
                        v129 = glpMakeMutableValue(v11, v277, 1, v124, v125, v126, v127, v128, v113 - ((v112[v113] >> 2) & 1));
                        v130 = glpTypedValueHashCache(v279, v277, v129, v129);
                        v131 = *v101;
                        v281.n128_u64[0] = "-1";
                        v281.n128_u64[1] = 0xEDA00000002;
                        v282 = 0xFFFFFFFFLL;
                        v132 = v112;
                        CopyOutAssignFragment = glpMakeCopyOutAssignFragment(v11, &v281, &v287, v123[2], v123[3], v123, &v286, &v285, v271, v270, v131, &v284, &v283, v130);
                        v134 = glpPrimitiveTypeGetScalarType(*(v276 + 4 * v113));
                        v135 = glpGetPrimitiveType(v134);
                        glpASTNodeSetSaType(v287, v135);
                        glpASTNodeSetSaFlags(v287, v123[6] & 0x1F);
                        v136 = v286;
                        v137 = glpPrimitiveTypeGetPrimitiveType(*v123);
                        glpOffsetNodeSetPreSwizzlePrimitiveType(v136, v137);
                        glpASTNodeSetSaType(v285, v135);
                        v138 = v285;
                        if (glpTypeGetKind(**v101) == 1)
                        {
                          v139 = v132[v113] >> 3;
                        }

                        else
                        {
                          v139 = (*v101)[6] & 0x1F;
                        }

                        glpASTNodeSetSaFlags(v138, v139);
                        glpOffsetNodeSetPreSwizzlePrimitiveType(v284, v274);
                        glpASTNodeSetSaType(CopyOutAssignFragment, v135);
                        glpASTNodeSetSaFlags(CopyOutAssignFragment, v123[6] & 0x1F);
                        glpASTNodeSetSaType(v283, v277);
                        v140 = v286;
                        glpMakeOffsetObject(v280);
                        v142 = glpOffsetNodeSetExtra(v140, v141);
                        v143 = v286;
                        v151 = glpMakeSwizzle_1(v142, v144, v145, v146, v147, v148, v149, v150, *(v121 + 1));
                        glpOffsetNodeSetSwizzle(v143, v151);
                        v152 = v284;
                        glpMakeOffsetObject(v280);
                        v154 = glpOffsetNodeSetExtra(v152, v153);
                        if (v273)
                        {
                          v154 = glpOffsetNodeSetOffsetExpr(v284, 0);
                        }

                        v162 = v284;
                        v163 = glpMakeSwizzle_1(v154, v155, v156, v157, v158, v159, v160, v161, v120 + ((*(v278 + v113) >> 1) & 2u));
                        glpOffsetNodeSetSwizzle(v162, v163);
                        v164 = v123[6] & 0x1F;
                        if (((*v101)[6] & 0x1F) != v164)
                        {
                          v281.n128_u64[0] = "-1";
                          v281.n128_u64[1] = 0xEDA00000002;
                          v282 = 0xFFFFFFFFLL;
                          glpMakeTypeConversionNode(v280, &v281, v135, v164);
                          v166 = v165;
                          glpUnaryOperatorNodeSetExpr(v165, v285);
                          glpASTNodeSetSaType(v166, v135);
                          SaFlags = glpASTNodeGetSaFlags(v285);
                          glpASTNodeSetSaFlags(v166, SaFlags & 0xFFFFFFFFFFFFFFE0 | v164);
                          glpBinaryOperatorNodeSetRhs(CopyOutAssignFragment, v166);
                        }

                        v11 = v280;
                        glpBlockNodeAddStatement(v280, *v272, CopyOutAssignFragment);
                        ++v114;
                        ++v120;
                        v93 = v268;
                        v112 = v278;
                      }

                      while (v275 != v120);
                      v108 = v266;
                      v118 = v267;
                    }
                  }

                  else
                  {
                    v118 = v113 + 1;
                  }

                  v113 = v118;
                }

                while (v118 != v108);
              }

              (v11[3])(*v11, v276);
              v99 = v265;
            }
          }

          ++v99;
          v98 = v264;
        }

        while (v99 < *(v264 + 32));
      }

      v168 = *(v93 + 32);
      v89 = v261;
      if (v168)
      {
        v169 = 0;
        for (j = 0; j < v168; ++j)
        {
          v171 = *(*(v93 + 40) + v169);
          if (v171)
          {
            v281.n128_u64[0] = "-1";
            v281.n128_u64[1] = 0xEDA00000002;
            v282 = 0xFFFFFFFFLL;
            glpMakeWriteOutputNode(v11, &v281);
            v173 = v172;
            v174 = glpVariableDeclarationNodeGetExtra(v171);
            glpWriteOutputNodeSetExtra(v173, v174);
            v175 = v173;
            v89 = v261;
            glpBlockNodeAddStatement(v11, *v272, v175);
            glpTopLevelNodeInsertDef(v11, v261, v171, 0);
            v168 = *(v93 + 32);
          }

          v169 += 16;
        }
      }
    }

    v176 = v263;
    *(v289 + v263) = v262;
    v94 = v176 + 1;
  }

  while (v94 != 4);
  v177 = v255;
  if (v255 && v258)
  {
    v178 = glpGetPrimitiveType(5u);
    v272 = &v253;
    MEMORY[0x28223BE20](v178);
    v277 = (&v253 - ((v179 + 15) & 0xFFFFFFFF0));
    bzero(v277, v179);
    if (*(v177 + 4))
    {
      v180 = v89;
      v181 = 0;
      do
      {
        v182 = *(*(v177 + 8) + 8 * v181);
        StringBuffer = glpMakeStringBuffer(v11);
        glpStringBufferAppendFormat(StringBuffer, "TFBuffer%u", v181);
        String = glpStringBufferGetString(StringBuffer);
        v186 = v185;
        v187 = glpMakeStringBuffer(v280);
        glpStringBufferAppendCString(v187, "<TFBuffer ");
        glpStringBufferAppendString(v187, String, v186);
        glpStringBufferAppendCString(v187, ">");
        v188 = glpStringBufferGetString(v187);
        v190 = v189;
        v290.n128_u64[0] = "-1";
        v290.n128_u64[1] = 0xEDA00000002;
        v291 = 0xFFFFFFFFLL;
        CopyVarDeclFragment = glpMakeCopyVarDeclFragment(v280, &v290, String, v186);
        glpMakeVariableObject(v280, v178, *v182, 0x80000000, String, v186, v188, v190, 0, 0, 0);
        v193 = v192;
        glpABIGetTypeSize(0, v178, 0);
        glpTypeSizeGetSize();
        *(v193 + 128) = v194;
        glpASTNodeSetSaType(CopyVarDeclFragment, v178);
        glpASTNodeSetSaFlags(CopyVarDeclFragment, 0x80000000);
        glpVariableDeclarationNodeSetExtra(CopyVarDeclFragment, v193);
        *&v277[2 * v181] = v193;
        v11 = v280;
        glpTopLevelNodeInsertDef(v280, v180, CopyVarDeclFragment, 0);
        ++v181;
      }

      while (v181 < *(v177 + 4));
    }

    v195 = v258;
    if (*(v258 + 4))
    {
      v196 = 0;
      do
      {
        v197 = *(v195 + 8);
        v273 = v196;
        v198 = *(v197 + 8 * v196);
        glpABIGetTypeSize(0, **v198, 0);
        glpTypeSizeGetSize();
        v200 = v199;
        Kind = glpTypeGetKind(**v198);
        LODWORD(v278) = 0;
        if (!Kind)
        {
          v202 = glpPrimitiveTypeGetPrimitiveType(**v198);
          LODWORD(v278) = glpPrimitiveTypeGetCategory(v202) != 3;
        }

        v203 = (v11[1])(*v11, 4 * v200, "Primitive Types");
        v204 = (v11[1])(*v11, v200, "Flags");
        glpTypeGetAppleVec4Types(**v198, v203, 1, 0, 0, v204, 0, 0, 0);
        if (*(v198 + 12))
        {
          v205 = *(v198 + 8);
          v206 = *(v198 + 20);
          v276 = v200;
          v274 = v204;
          v275 = v203;
          do
          {
            v207 = glpPrimitiveTypeGetScalarCount(v203[v205]);
            v208 = (*(v204 + v205) >> 2) & 1;
            v209 = v207 + 2 * v208;
            v210 = v205 + 1;
            if (v205 + 1 < v200 && (*(v204 + v210) & 4) != 0)
            {
              ++v208;
              v209 += glpPrimitiveTypeGetScalarCount(v203[v210]);
            }

            v211 = glpPrimitiveTypeGetScalarType(v203[v205]);
            VectorType = glpGetVectorType(v211, v209);
            v281.n128_u64[0] = 0;
            v213 = v280;
            v219 = glpMakeMutableValue(v280, v178, 1, v214, v215, v216, v217, v218, v206);
            v220 = v279;
            v221 = glpTypedValueHashCache(v279, v178, v219, v219);
            v286 = 0;
            v287 = 0;
            v285 = 0;
            v284 = 0;
            v227 = glpMakeMutableValue(v213, v178, 1, v222, v223, v224, v225, v226, v205);
            v228 = glpTypedValueHashCache(v220, v178, v227, v227);
            v229 = *&v277[2 * *(v198 + 16)];
            v230 = *v198;
            v290.n128_u64[0] = "-1";
            v290.n128_u64[1] = 0xEDA00000002;
            v291 = 0xFFFFFFFFLL;
            StoreFragment = glpMakeStoreFragment(v213, &v290, VectorType, &v281, v221, &v287, *(v229 + 16), *(v229 + 24), v229, &v286, v230[2], v230[3], v230, &v285, &v284, v228);
            glpASTNodeSetSaType(v281.n128_i64[0], v178);
            glpASTNodeSetSaType(v287, v178);
            v232 = v286;
            v233 = glpGetPrimitiveType(VectorType);
            glpASTNodeSetSaType(v232, v233);
            glpASTNodeSetSaFlags(v286, *(*v198 + 48));
            v234 = v285;
            glpMakeOffsetObject(v213);
            glpOffsetNodeSetExtra(v234, v235);
            if (v278)
            {
              glpOffsetNodeSetOffsetExpr(v285, 0);
            }

            glpASTNodeSetSaType(v284, v178);
            v236 = glpGetPrimitiveType(0);
            glpASTNodeSetSaType(StoreFragment, v236);
            glpBlockNodeAddStatement(v280, *(v288 + *(v198 + 24)), StoreFragment);
            v237 = glpPrimitiveTypeGetScalarCount(VectorType);
            v206 = v206 + glpPrimitiveTypeGetBytesPerComponent(VectorType) * v237;
            v205 = v210 + v208;
            LODWORD(v200) = v276;
            v203 = v275;
            v204 = v274;
          }

          while (v210 + v208 - *(v198 + 8) < *(v198 + 12));
        }

        v196 = v273 + 1;
        v195 = v258;
        v11 = v280;
      }

      while (v273 + 1 < *(v258 + 4));
    }

    v89 = v261;
  }

  DefCount = glpTopLevelNodeGetDefCount(v89);
  Def = glpTopLevelNodeGetDef(v89, DefCount - 1);
  glpFunctionDefinitionNodeGetPrototype(Def);
  Body = glpFunctionDefinitionNodeGetBody(Def);
  StatementCount = glpBlockNodeGetStatementCount(Body);
  while (StatementCount)
  {
    if (glpBlockNodeGetStatement(Body, --StatementCount))
    {
      Statement = glpBlockNodeGetStatement(Body, StatementCount);
      if (Statement)
      {
        Expr = Statement;
        while (glpIsCommaExprNode(Expr))
        {
          ExprCount = glpCommaExprNodeGetExprCount(Expr);
          Expr = glpCommaExprNodeGetExpr(Expr, ExprCount - 1);
          if (!Expr)
          {
            goto LABEL_106;
          }
        }

        if (glpIsReturnStatementNode(Expr))
        {
          glpBlockNodeSetStatement(Body, StatementCount, 0);
        }
      }

      break;
    }
  }

LABEL_106:
  v290.n128_u64[0] = "-1";
  v290.n128_u64[1] = 0xEDA00000002;
  v291 = 0xFFFFFFFFLL;
  glpMakeRawCallNode(v11, &v290, *(CopyFunction + 24), *(CopyFunction + 32), CopyFunction);
  v246 = v245;
  v247 = glpGetPrimitiveType(0);
  glpASTNodeSetSaType(v246, v247);
  result = glpBlockNodeInsertStatement(v11, Body, v246, 0);
  if (v260 != 3)
  {
    v249 = *&v289[0];
    copyOutBeforeReturnsIn(v11, *&v289[0], Def);
    v290.n128_u64[0] = "-1";
    v290.n128_u64[1] = 0xEDA00000002;
    v291 = 0xFFFFFFFFLL;
    glpMakeRawCallNode(v11, &v290, *(v249 + 24), *(v249 + 32), v249);
    v251 = v250;
    v252 = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(v251, v252);
    return glpBlockNodeAddStatement(v11, Body, v251);
  }

  return result;
}

uint64_t generateSlotVars(void *a1, uint64_t a2, char *a3, ...)
{
  IntHash = glpMakeIntHash(a1);
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v27 = a2;
    do
    {
      v7 = *(a2 + 40);
      v8 = *(v7 + v5);
      if ((v8 + 1) >= 2)
      {
        v9 = *(v7 + v5 + 8);
        v32 = v9;
        StringBuffer = glpMakeStringBuffer(a1);
        glpStringBufferAppendFormat(StringBuffer, a3, v9);
        String = glpStringBufferGetString(StringBuffer);
        v13 = v12;
        v14 = glpMakeStringBuffer(a1);
        glpStringBufferAppendCString(v14, "<Compiler Temporary ");
        glpStringBufferAppendString(v14, String, v13);
        glpStringBufferAppendCString(v14, ">");
        v31 = glpStringBufferGetString(v14);
        v16 = v15;
        v33.n128_u64[0] = "-1";
        v33.n128_u64[1] = 0xEDA00000002;
        v34 = 0xFFFFFFFFLL;
        CopyVarDeclFragment = glpMakeCopyVarDeclFragment(a1, &v33, String, v13);
        v18 = *(v8 + 24);
        PrimitiveType = glpGetPrimitiveType(*(v8 + 4));
        v20 = *(v8 + 8);
        glpMakeVariableObject(a1, PrimitiveType, v18, v20 | 0x80000000, String, v13, v31, v16, 0, 0, 0);
        v22 = v21;
        glpABIGetTypeSize(0, PrimitiveType, 0);
        glpTypeSizeGetSize();
        *(v22 + 128) = v23;
        glpASTNodeSetSaType(CopyVarDeclFragment, PrimitiveType);
        glpASTNodeSetSaFlags(CopyVarDeclFragment, v20 | 0x80000000);
        v24 = v22;
        a2 = v27;
        glpVariableDeclarationNodeSetExtra(CopyVarDeclFragment, v24);
        glpIntHashPut(IntHash, v32, CopyVarDeclFragment, v25);
        v4 = *(v27 + 32);
      }

      ++v6;
      v5 += 16;
    }

    while (v6 < v4);
  }

  return IntHash;
}

uint64_t makeCopyFunction(void *a1, uint64_t a2, const char *a3, size_t a4, uint64_t *a5)
{
  PrimitiveType = glpGetPrimitiveType(0);
  FunctionType = glpMakeFunctionType(a1, PrimitiveType, 0, 0, 0, 0);
  if (!glpTopLevelNodeGetDefCount(a2))
  {
    goto LABEL_9;
  }

  v12 = 0;
  Extra = 0;
  v14 = 0;
  do
  {
    Def = glpTopLevelNodeGetDef(a2, v14);
    if (Def)
    {
      v16 = Def;
      if (glpIsFunctionPrototypeNode(Def))
      {
        Name = glpFunctionPrototypeNodeGetName(v16);
        if (glpStringsEqual(a3, a4, Name, v18))
        {
          Extra = glpFunctionPrototypeNodeGetExtra(v16);
          glpTopLevelNodeSetDef(a2, v14, 0);
          v12 = v16;
        }
      }
    }

    ++v14;
  }

  while (v14 < glpTopLevelNodeGetDefCount(a2));
  if (!v12)
  {
LABEL_9:
    v19 = glpAggregateTypeMangleName(FunctionType, a3, a4, a1);
    glpMakeFunctionObject(a1, FunctionType, 139264, a3, a4, v19, v20);
    Extra = v21;
    v25.n128_u64[0] = "-1";
    v25.n128_u64[1] = 0xEDA00000002;
    v26 = 0xFFFFFFFFLL;
    glpMakeFunctionPrototypeNode(a1, &v25, a3, a4);
    v12 = v22;
    glpASTNodeSetSaType(v22, FunctionType);
    glpFunctionPrototypeNodeSetExtra(v12, Extra);
    glpFunctionPrototypeNodeSetReturnOutParam(v12, 0);
  }

  v25.n128_u64[0] = "-1";
  v25.n128_u64[1] = 0xEDA00000002;
  v26 = 0xFFFFFFFFLL;
  CopyFunctionDefinitionFragment = glpMakeCopyFunctionDefinitionFragment(a1, &v25, v12, a5);
  glpTopLevelNodeInsertDef(a1, a2, CopyFunctionDefinitionFragment, 0);
  return Extra;
}

uint64_t copyOutBeforeReturnsIn(void *a1, uint64_t a2, uint64_t a3)
{
  MainReturnFragment = a3;
  if (a3)
  {
    if (glpIsReturnStatementNode(a3))
    {
      v14 = 0;
      v12.n128_u64[0] = "-1";
      v12.n128_u64[1] = 0xEDA00000002;
      v13 = 0xFFFFFFFFLL;
      MainReturnFragment = glpMakeMainReturnFragment(a1, &v12, &v14, *(a2 + 24), *(a2 + 32), a2);
      v6 = v14;
      PrimitiveType = glpGetPrimitiveType(0);
      glpASTNodeSetSaType(v6, PrimitiveType);
    }

    else if (glpASTNodeGetChildCount(MainReturnFragment))
    {
      v8 = 0;
      do
      {
        Child = glpASTNodeGetChild(MainReturnFragment, v8);
        v10 = copyOutBeforeReturnsIn(a1, a2, Child);
        glpASTNodeSetChild(MainReturnFragment, v8++, v10);
      }

      while (v8 < glpASTNodeGetChildCount(MainReturnFragment));
    }
  }

  return MainReturnFragment;
}

uint64_t glpIsLegalStageCombination(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a1 + 296);
  if (!a2 && a5 && !v6)
  {
    InfoLog = glpLinkerGetInfoLog(a1);
    v16 = "-1";
    v17 = 0xEDA00000002;
    v18 = 0xFFFFFFFFLL;
    glpLogMessage(InfoLog, 0, &v16, "Can't have a geometry shader without a vertex shader");
    return 0;
  }

  if (!a2 && a4 && !v6)
  {
    v8 = glpLinkerGetInfoLog(a1);
    v16 = "-1";
    v17 = 0xEDA00000002;
    v18 = 0xFFFFFFFFLL;
    glpLogMessage(v8, 0, &v16, "Can't have a tessellation evaluation shader without a vertex shader");
    return 0;
  }

  if (a3)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = !v9;
  if (!a2 && (v10 & 1) == 0)
  {
    v11 = glpLinkerGetInfoLog(a1);
    v16 = "-1";
    v17 = 0xEDA00000002;
    v18 = 0xFFFFFFFFLL;
    glpLogMessage(v11, 0, &v16, "Can't have a tessellation control shader without a vertex shader");
    return 0;
  }

  if (a4)
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    v13 = glpLinkerGetInfoLog(a1);
    v16 = "-1";
    v17 = 0xEDA00000002;
    v18 = 0xFFFFFFFFLL;
    glpLogMessage(v13, 0, &v16, "Can't have a tessellation control shader without a tessellation evaluation shader");
    return 0;
  }

  if ((!a2 || !a6) && !v6 && (*(a1 + 60) - 3) <= 1)
  {
    v15 = glpLinkerGetInfoLog(a1);
    v16 = "-1";
    v17 = 0xEDA00000002;
    v18 = 0xFFFFFFFFLL;
    glpLogMessage(v15, 0, &v16, "OpenGL ES requires exactly one vertex and one fragment shader to validly link.");
    return 0;
  }

  if (!(a6 | a2) && (*(a1 + 60) - 3) <= 1)
  {
    v12 = glpLinkerGetInfoLog(a1);
    v16 = "-1";
    v17 = 0xEDA00000002;
    v18 = 0xFFFFFFFFLL;
    glpLogMessage(v12, 0, &v16, "Must have at least one shader stage in a program");
    return 0;
  }

  return 1;
}

uint64_t glpMergeUniforms(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 32))
  {
    v6 = 0;
    v7 = 0;
    v8 = 1;
    while (1)
    {
      v9 = *(a3 + 40);
      v10 = *(v9 + v6);
      if (v10)
      {
        v11 = v9 + v6;
        v12 = *(v11 + 8);
        v13 = *(v11 + 16);
        v14 = glpStringHashGet(a2, v12, v13);
        if (v14)
        {
          v16 = v14;
          if (!glpTypesEqual(*v10, *v14))
          {
            v20 = "-1";
            v21 = 0xEDA00000002;
            v22 = 0xFFFFFFFFLL;
            glpLogMessage(a1, 0, &v20, "Uniform type mismatch '%.*s'");
            goto LABEL_14;
          }

          v17 = *(v10 + 72);
          if (v17)
          {
            v18 = v16[9];
            if (v18)
            {
              if (glpCompareValues(v17, *v10, v18))
              {
                v20 = "-1";
                v21 = 0xEDA00000002;
                v22 = 0xFFFFFFFFLL;
                glpLogMessage(a1, 0, &v20, "Uniform initializer mismatch '%.*s'");
LABEL_14:
                v8 = 0;
                goto LABEL_15;
              }
            }
          }

          if (((*(v16 + 12) ^ *(v10 + 48)) & 0x1FLL) != 0)
          {
            v20 = "-1";
            v21 = 0xEDA00000002;
            v22 = 0xFFFFFFFFLL;
            glpLogMessage(a1, 0, &v20, "Uniform precision mismatch '%.*s'");
            goto LABEL_14;
          }
        }

        glpStringHashPut(a2, v12, v13, v15, v10);
      }

LABEL_15:
      ++v7;
      v6 += 32;
      if (v7 >= *(a3 + 32))
      {
        return v8;
      }
    }
  }

  return 1;
}

uint64_t glpMergeInterfaceBlocks(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!*(a4 + 32))
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  v10 = 1;
  do
  {
    v11 = *(a4 + 40);
    v12 = *(v11 + v8);
    if (v12)
    {
      v13 = v11 + v8;
      v15 = *(v13 + 8);
      v14 = *(v13 + 16);
      v16 = glpStringHashGet(a3, v15, v14);
      if (!v16 || ((*(**(v16 + 72) + 48) ^ *(**(v12 + 72) + 48)) & 0x160000000) != 0)
      {
        goto LABEL_9;
      }

      ElementType = *(v16 + 64);
      if (a5)
      {
        ElementType = glpArrayTypeGetElementType(*(v16 + 64));
      }

      if (glpTypesEqual(*(v12 + 64), ElementType))
      {
LABEL_9:
        glpStringHashPut(a3, v15, v14, v17, v12);
      }

      else
      {
        v19 = glpLanguageToString(a2);
        v23[0] = "-1";
        v23[1] = 0xEDA00000002;
        v23[2] = 0xFFFFFFFFLL;
        glpLogMessage(a1, 0, v23, "Multiple declarations of interface block '%.*s' in %s shader do not match", v14, v15, v19);
        v10 = 0;
      }
    }

    ++v9;
    v8 += 32;
  }

  while (v9 < *(a4 + 32));
  return v10;
}

uint64_t glpMakeVertexInputBindings(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  glpLinkerGetAllocator();
  v195 = a3;
  *a3 = glpMakeStringHash(v10);
  glpLinkerGetAllocator();
  *a4 = glpMakeStringHash(v11);
  glpLinkerGetAllocator();
  *a5 = glpMakeIntHash(v12);
  LODWORD(v13) = *(a2 + 32);
  v219 = a1;
  v196 = a4;
  v215 = a5;
  v186 = a2;
  if (v13)
  {
    v14 = 0;
    v220 = 0;
    v201 = 1;
    while (1)
    {
      v15 = (*(a2 + 40) + 32 * v14);
      v16 = *v15;
      if (*v15)
      {
        v17 = v15[1];
        v18 = v15[2];
        v19 = *(v16 + 8);
        if (v19)
        {
          v20 = glpLayoutObjectFind(v19, 26);
          if (!v18)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v20 = 0;
          if (!v18)
          {
            goto LABEL_12;
          }
        }

        if (*v17 != 36 || v18 >= 9 && !strncmp("$ib$", v17, 4uLL) && !strncmp("$gl_", v17 + 5, 4uLL))
        {
LABEL_12:
          if (v20)
          {
            v21 = *(v16 + 8);
            v205 = v20;
            if (v21)
            {
              v187 = glpLayoutObjectFind(v21, 79) != 0;
            }

            else
            {
              v187 = 0;
            }

            glpABIGetTypeSize(0, *v16, 0);
            glpTypeSizeGetSize();
            v23 = v22;
            v24 = v22;
            v25 = glpLinkerPoolAlloc(a1);
            v216 = glpLinkerPoolAlloc(a1);
            glpTypeGetAppleVec4Types(*v16, v25, 1, 0, 0, v216, 0, 0, 0);
            v26 = glpLinkerPoolAlloc(a1);
            *v26 = v16;
            v26[1] = 0;
            __n = v17;
            v191 = v18;
            glpStringHashPut(*v196, v17, v18, v27, v26);
            if (v23)
            {
              v28 = 0;
              v29 = *(v205 + 16) - 1;
              v30 = v24;
              v209 = v16;
              do
              {
                v31 = (v216[v28] >> 2) & 1;
                v29 += (v216[v28] & 4) == 0;
                if (glpIntHashGet(*v215, v29 | (v31 << 16)))
                {
                  InfoLog = glpLinkerGetInfoLog(v219);
                  v33 = *(v16 + 32);
                  v34 = *(v16 + 40);
                  v221 = "-1";
                  v222 = 0xEDA00000002;
                  v223 = 0xFFFFFFFFLL;
                  glpLogMessage(InfoLog, 0, &v221, "Active attribute aliasing. Slot %d unavailable for '%.*s' from layout location request.", v29, v34, v33);
                  v201 = 0;
                }

                else
                {
                  v35 = glpLinkerPoolAlloc(v219);
                  *v35 = 0u;
                  *(v35 + 16) = 0u;
                  glpIntHashPut(*v215, v29 | (v31 << 16), v35, 0.0);
                  if (v220 <= v29)
                  {
                    v36 = v29;
                  }

                  else
                  {
                    v36 = v220;
                  }

                  v220 = v36;
                  if (BitSetGetEquals(*(v16 + 120), v28) && glpPrimitiveTypeGetScalarCount(v25[v28]))
                  {
                    v37 = 0;
                    do
                    {
                      v38 = *(v26 + 2);
                      v39 = &v26[v38 + 2];
                      *v39 = v29 | (v31 << 16);
                      v39[1] = v37;
                      *(v26 + 2) = v38 + 1;
                      *v35 |= 1 << v37++;
                    }

                    while (v37 < glpPrimitiveTypeGetScalarCount(v25[v28]));
                  }

                  v16 = v209;
                  *(v35 + 8) = *(v209 + 48) & 0x7F00000001FLL | (v216[v28] >> 3);
                  *(v35 + 4) = v25[v28];
                  v40 = *(v209 + 8);
                  if (v40 && glpLayoutObjectFind(v40, 33))
                  {
                    *(v35 + 24) = offsetLayout(v219, *(v209 + 8), v31);
                  }

                  else
                  {
                    glpLinkerGetAllocator();
                    *(v35 + 24) = glpMakeLayoutObject(v41);
                    glpLinkerGetAllocator();
                    v42 = *(v35 + 24);
                    v221 = "-1";
                    v222 = 0xEDA00000002;
                    v223 = 0xFFFFFFFFLL;
                    glpLayoutObjectAppendInteger(v43, 0, &v221, 0, 0, v42, 33, 0);
                    glpLinkerGetAllocator();
                    v44 = *(v35 + 24);
                    v221 = "-1";
                    v222 = 0xEDA00000002;
                    v223 = 0xFFFFFFFFLL;
                    glpLayoutObjectAppendInteger(v45, 0, &v221, 0, 0, v44, 34, 28);
                    glpLinkerGetAllocator();
                    v47 = *(v35 + 24);
                    if (v29 >= 15)
                    {
                      v48 = 15;
                    }

                    else
                    {
                      v48 = v29;
                    }

                    v221 = "-1";
                    v222 = 0xEDA00000002;
                    v223 = 0xFFFFFFFFLL;
                    glpLayoutObjectAppendInteger(v46, 0, &v221, 0, 0, v47, 35, v48 + 16);
                    glpLinkerGetAllocator();
                    v49 = *(v35 + 24);
                    v221 = "-1";
                    v222 = 0xEDA00000002;
                    v223 = 0xFFFFFFFFLL;
                    glpLayoutObjectAppendInteger(v50, 0, &v221, 0, 0, v49, 37, v31);
                  }

                  v30 = v24;
                }

                ++v28;
              }

              while (v28 != v30);
            }

            a1 = v219;
            if (!v187)
            {
              *(v219 + 256) += *(v26 + 2);
            }

            v51 = glpLinkerPoolAlloc(v219);
            *v51 = 0;
            v51[1] = 0;
            *v51 = *(v205 + 16);
            v51[1] = *v16;
            glpStringHashPut(*v195, __n, v191, v52, v51);
            a2 = v186;
          }
        }
      }

      ++v14;
      v13 = *(a2 + 32);
      if (v14 >= v13)
      {
        goto LABEL_42;
      }
    }
  }

  v220 = 0;
  v201 = 1;
LABEL_42:
  v53 = *(a1 + 80);
  if (!*(v53 + 32))
  {
    goto LABEL_77;
  }

  v54 = 0;
  v184 = *(a1 + 80);
  do
  {
    v55 = (*(v53 + 40) + 32 * v54);
    v56 = *v55;
    if (!*v55)
    {
      goto LABEL_75;
    }

    v58 = v55[1];
    v57 = v55[2];
    v59 = glpStringHashGet(a2, v58, v57);
    if (v59)
    {
      v210 = v59;
      v60 = *(v59 + 8);
      if (v60)
      {
        if (glpLayoutObjectFind(v60, 26))
        {
          a1 = v219;
          goto LABEL_75;
        }

        v62 = v210[1];
        v206 = v56;
        if (v62)
        {
          v188 = glpLayoutObjectFind(v62, 79) != 0;
        }

        else
        {
          v188 = 0;
        }
      }

      else
      {
        v206 = v56;
        v188 = 0;
      }

      v202 = v54;
      glpABIGetTypeSize(0, *v210, 0);
      glpTypeSizeGetSize();
      v64 = v63;
      v65 = v63;
      v66 = glpLinkerPoolAlloc(v219);
      v217 = glpLinkerPoolAlloc(v219);
      glpTypeGetAppleVec4Types(*v210, v66, 1, 0, 0, v217, 0, 0, 0);
      v67 = glpLinkerPoolAlloc(v219);
      *v67 = v210;
      v67[1] = 0;
      v192 = v58;
      __na = v57;
      glpStringHashPut(*v196, v58, v57, v68, v67);
      if (v64)
      {
        v69 = 0;
        v70 = v210;
        v71 = *v206 - 1;
        do
        {
          v72 = (v217[v69] >> 2) & 1;
          v71 += (v217[v69] & 4) == 0;
          if (glpIntHashGet(*v215, v71 | (v72 << 16)))
          {
            v73 = glpLinkerGetInfoLog(v219);
            v74 = v70[4];
            v75 = *(v70 + 10);
            v221 = "-1";
            v222 = 0xEDA00000002;
            v223 = 0xFFFFFFFFLL;
            glpLogMessage(v73, 0, &v221, "Active attribute aliasing. Slot %d unavailable for '%.*s' from BindAttributeLocation request.", v71, v75, v74);
            v201 = 0;
          }

          else
          {
            v76 = glpLinkerPoolAlloc(v219);
            *v76 = 0u;
            *(v76 + 16) = 0u;
            glpIntHashPut(*v215, v71 | (v72 << 16), v76, 0.0);
            if (v220 <= v71)
            {
              v77 = v71;
            }

            else
            {
              v77 = v220;
            }

            v220 = v77;
            if (BitSetGetEquals(v70[15], v69) && glpPrimitiveTypeGetScalarCount(v66[v69]))
            {
              v78 = 0;
              do
              {
                v79 = *(v67 + 2);
                v80 = &v67[v79 + 2];
                *v80 = v71 | (v72 << 16);
                v80[1] = v78;
                *(v67 + 2) = v79 + 1;
                *v76 |= 1 << v78++;
              }

              while (v78 < glpPrimitiveTypeGetScalarCount(v66[v69]));
            }

            *(v76 + 8) = v210[6] & 0x7F00000001FLL | (v217[v69] >> 3);
            *(v76 + 4) = v66[v69];
            glpLinkerGetAllocator();
            *(v76 + 24) = glpMakeLayoutObject(v81);
            glpLinkerGetAllocator();
            v82 = *(v76 + 24);
            v221 = "-1";
            v222 = 0xEDA00000002;
            v223 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v83, 0, &v221, 0, 0, v82, 33, 0);
            glpLinkerGetAllocator();
            v84 = *(v76 + 24);
            v221 = "-1";
            v222 = 0xEDA00000002;
            v223 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v85, 0, &v221, 0, 0, v84, 34, 28);
            glpLinkerGetAllocator();
            v87 = *(v76 + 24);
            if (v71 >= 15)
            {
              v88 = 15;
            }

            else
            {
              v88 = v71;
            }

            v221 = "-1";
            v222 = 0xEDA00000002;
            v223 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v86, 0, &v221, 0, 0, v87, 35, v88 + 16);
            glpLinkerGetAllocator();
            v89 = *(v76 + 24);
            v70 = v210;
            v221 = "-1";
            v222 = 0xEDA00000002;
            v223 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v90, 0, &v221, 0, 0, v89, 37, v72);
          }

          ++v69;
        }

        while (v69 != v65);
      }

      else
      {
        v70 = v210;
      }

      if (!v188)
      {
        *(v219 + 256) += *(v67 + 2);
      }

      a1 = v219;
      v91 = glpLinkerPoolAlloc(v219);
      *v91 = 0;
      v91[1] = 0;
      *v91 = *v206;
      v91[1] = *v70;
      glpStringHashPut(*v195, v192, __na, v92, v91);
      v53 = v184;
      a2 = v186;
      v54 = v202;
    }

    else
    {
      a1 = v219;
      v61 = glpLinkerGetInfoLog(v219);
      v221 = "-1";
      v222 = 0xEDA00000002;
      v223 = 0xFFFFFFFFLL;
      glpLogMessage(v61, 1, &v221, "Could not find vertex shader attribute '%.*s' to match BindAttributeLocation request.", v57, v58);
    }

LABEL_75:
    ++v54;
  }

  while (v54 < *(v53 + 32));
  LODWORD(v13) = *(a2 + 32);
LABEL_77:
  v93 = 8;
  v94 = v13;
  while (2)
  {
    if (!v94)
    {
      goto LABEL_133;
    }

    v95 = 0;
    while (2)
    {
      v96 = *(a2 + 40) + 32 * v95;
      v97 = *v96;
      if (*v96)
      {
        v98 = *(v96 + 8);
        v213 = *(v96 + 16);
        v99 = glpStringHashGet(*(a1 + 80), v98, v213);
        v100 = v97[1];
        if (v100)
        {
          v101 = glpLayoutObjectFind(v100, 26) != 0;
          if (v99)
          {
            goto LABEL_131;
          }

LABEL_85:
          if (v213 < 3)
          {
            goto LABEL_96;
          }

          v102 = *v98;
          if (v102 == 103)
          {
            v103 = *(v98 + 1);
            if (v103 == 108)
            {
              v103 = *(v98 + 2);
              v104 = 95;
            }

            else
            {
              v104 = 108;
            }

            if (v104 != v103)
            {
LABEL_93:
              if (v213 < 9 || strncmp("$ib$", v98, 4uLL) || strncmp("$gl_", v98 + 5, 4uLL))
              {
LABEL_96:
                if (v213 && *v98 == 36)
                {
                  if (v213 < 9 || strncmp("$ib$", v98, 4uLL) || strncmp("$gl_", v98 + 5, 4uLL) != 0 || v101)
                  {
                    goto LABEL_131;
                  }
                }

                else if (v101)
                {
                  goto LABEL_131;
                }

                glpABIGetTypeSize(0, *v97, 0);
                glpTypeSizeGetSize();
                if (v105 == v93)
                {
                  v106 = v97[1];
                  __nb = v98;
                  if (v106)
                  {
                    v193 = glpLayoutObjectFind(v106, 79) != 0;
                  }

                  else
                  {
                    v193 = 0;
                  }

                  glpABIGetTypeSize(0, *v97, 0);
                  glpTypeSizeGetSize();
                  v108 = v107;
                  v109 = v107;
                  v110 = v97;
                  v111 = glpLinkerPoolAlloc(a1);
                  v112 = glpLinkerPoolAlloc(a1);
                  glpTypeGetAppleVec4Types(*v110, v111, 1, 0, 0, v112, 0, 0, 0);
                  v113 = glpLinkerPoolAlloc(a1);
                  *v113 = v110;
                  v113[1] = 0;
                  glpStringHashPut(*v196, __nb, v213, v114, v113);
                  if (v108)
                  {
                    v115 = 0;
                    v116 = v109;
                    v117 = v112;
                    v118 = v109;
                    do
                    {
                      v119 = *v117++;
                      if ((v119 & 4) == 0)
                      {
                        ++v115;
                      }

                      --v116;
                    }

                    while (v116);
                    AttribForSize = allocateAttribForSize(*v215, v115);
                    v189 = AttribForSize;
                    if (v109)
                    {
                      v185 = v93;
                      v121 = 0;
                      v122 = AttribForSize - 1;
                      v123 = v110;
                      v203 = v118;
                      v211 = v112;
                      do
                      {
                        v122 += (v112[v121] & 4) == 0;
                        v207 = (v112[v121] >> 2) & 1;
                        v124 = v122 | (v207 << 16);
                        v125 = glpLinkerPoolAlloc(a1);
                        *v125 = 0u;
                        *(v125 + 16) = 0u;
                        glpIntHashPut(*v215, v124, v125, 0.0);
                        if (v220 <= v122)
                        {
                          v126 = v122;
                        }

                        else
                        {
                          v126 = v220;
                        }

                        v220 = v126;
                        if (BitSetGetEquals(v123[15], v121) && glpPrimitiveTypeGetScalarCount(v111[v121]))
                        {
                          v127 = 0;
                          do
                          {
                            v128 = *(v113 + 2);
                            v129 = &v113[v128 + 2];
                            *v129 = v124;
                            v129[1] = v127;
                            *(v113 + 2) = v128 + 1;
                            *v125 |= 1 << v127++;
                          }

                          while (v127 < glpPrimitiveTypeGetScalarCount(v111[v121]));
                        }

                        a1 = v219;
                        *(v125 + 8) = v110[6] & 0x7F00000001FLL | (v211[v121] >> 3);
                        *(v125 + 4) = v111[v121];
                        glpLinkerGetAllocator();
                        *(v125 + 24) = glpMakeLayoutObject(v130);
                        glpLinkerGetAllocator();
                        v131 = *(v125 + 24);
                        v221 = "-1";
                        v222 = 0xEDA00000002;
                        v223 = 0xFFFFFFFFLL;
                        glpLayoutObjectAppendInteger(v132, 0, &v221, 0, 0, v131, 33, 0);
                        glpLinkerGetAllocator();
                        v133 = *(v125 + 24);
                        v221 = "-1";
                        v222 = 0xEDA00000002;
                        v223 = 0xFFFFFFFFLL;
                        glpLayoutObjectAppendInteger(v134, 0, &v221, 0, 0, v133, 34, 28);
                        glpLinkerGetAllocator();
                        v136 = *(v125 + 24);
                        if (v122 >= 15)
                        {
                          v137 = 15;
                        }

                        else
                        {
                          v137 = v122;
                        }

                        v221 = "-1";
                        v222 = 0xEDA00000002;
                        v223 = 0xFFFFFFFFLL;
                        glpLayoutObjectAppendInteger(v135, 0, &v221, 0, 0, v136, 35, v137 + 16);
                        glpLinkerGetAllocator();
                        v138 = *(v125 + 24);
                        v221 = "-1";
                        v222 = 0xEDA00000002;
                        v123 = v110;
                        v112 = v211;
                        v223 = 0xFFFFFFFFLL;
                        glpLayoutObjectAppendInteger(v139, 0, &v221, 0, 0, v138, 37, v207);
                        ++v121;
                      }

                      while (v121 != v203);
                      a2 = v186;
                      v93 = v185;
                    }

                    else
                    {
                      a2 = v186;
                    }
                  }

                  else
                  {
                    v189 = allocateAttribForSize(*v215, 0);
                  }

                  if (!v193)
                  {
                    *(a1 + 256) += *(v113 + 2);
                  }

                  v140 = glpLinkerPoolAlloc(a1);
                  *v140 = 0;
                  v140[1] = 0;
                  *v140 = v189;
                  v140[1] = *v110;
                  glpStringHashPut(*v195, __nb, v213, v141, v140);
                }
              }
            }
          }

          else if (103 != v102)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v101 = 0;
          if (!v99)
          {
            goto LABEL_85;
          }
        }
      }

LABEL_131:
      ++v95;
      v13 = *(a2 + 32);
      if (v95 < v13)
      {
        continue;
      }

      break;
    }

    v94 = *(a2 + 32);
LABEL_133:
    if (--v93)
    {
      continue;
    }

    break;
  }

  v142 = 8;
  while (2)
  {
    if (v13)
    {
      for (i = 0; i < v13; ++i)
      {
        v144 = (*(a2 + 40) + 32 * i);
        if (!*v144)
        {
          goto LABEL_180;
        }

        v145 = v144[1];
        v146 = v144[2];
        v218 = *v144;
        v147 = (*v144)[1];
        v148 = v147 && glpLayoutObjectFind(v147, 26) != 0;
        if (v146 < 3)
        {
          goto LABEL_180;
        }

        v149 = *v145;
        if (v149 == 103)
        {
          v150 = *(v145 + 1);
          if (v150 == 108)
          {
            if (95 == v145[2])
            {
              goto LABEL_152;
            }
          }

          else if (108 == v150)
          {
LABEL_152:
            if (!v148)
            {
              goto LABEL_153;
            }

            goto LABEL_180;
          }
        }

        else if (103 == v149)
        {
          goto LABEL_152;
        }

        if (v146 >= 9 && !strncmp("$ib$", v145, 4uLL) && strncmp("$gl_", v145 + 5, 4uLL) == 0 && !v148)
        {
LABEL_153:
          v208 = v146;
          glpABIGetTypeSize(0, *v218, 0);
          glpTypeSizeGetSize();
          if (v151 == v142)
          {
            v204 = v145;
            v152 = v218[1];
            if (v152)
            {
              __nc = glpLayoutObjectFind(v152, 79) != 0;
            }

            else
            {
              __nc = 0;
            }

            glpABIGetTypeSize(0, *v218, 0);
            glpTypeSizeGetSize();
            v154 = v153;
            v155 = v153;
            v156 = glpLinkerPoolAlloc(a1);
            v157 = a1;
            v158 = glpLinkerPoolAlloc(a1);
            glpTypeGetAppleVec4Types(*v218, v156, 1, 0, 0, v158, 0, 0, 0);
            v159 = glpLinkerPoolAlloc(v157);
            *v159 = v218;
            v159[1] = 0;
            glpStringHashPut(*v196, v145, v146, v160, v159);
            if (v154)
            {
              v161 = 0;
              v162 = v155;
              v214 = v158;
              v163 = v155;
              do
              {
                v164 = *v158++;
                if ((v164 & 4) == 0)
                {
                  ++v161;
                }

                --v162;
              }

              while (v162);
              v165 = allocateAttribForSize(*v215, v161);
              v166 = v165;
              a1 = v219;
              if (v163)
              {
                v190 = v165;
                v194 = v142;
                v167 = 0;
                v168 = v219;
                v169 = v166 - 1;
                v170 = v214;
                v212 = v163;
                do
                {
                  v169 += (*(v170 + v167) & 4) == 0;
                  v171 = v169 | (((*(v170 + v167) >> 2) & 1) << 16);
                  v172 = glpLinkerPoolAlloc(v168);
                  *v172 = 0u;
                  *(v172 + 16) = 0u;
                  glpIntHashPut(*v215, v171, v172, 0.0);
                  if (v220 <= v169)
                  {
                    v173 = v169;
                  }

                  else
                  {
                    v173 = v220;
                  }

                  v220 = v173;
                  if (BitSetGetEquals(v218[15], v167) && glpPrimitiveTypeGetScalarCount(v156[v167]))
                  {
                    v174 = 0;
                    do
                    {
                      v175 = *(v159 + 2);
                      v176 = &v159[v175 + 2];
                      *v176 = v171;
                      v176[1] = v174;
                      *(v159 + 2) = v175 + 1;
                      *v172 |= 1 << v174++;
                    }

                    while (v174 < glpPrimitiveTypeGetScalarCount(v156[v167]));
                  }

                  v170 = v214;
                  *(v172 + 8) = v218[6] & 0x7F00000001FLL | (*(v214 + v167) >> 3);
                  *(v172 + 4) = v156[v167];
                  *(v172 + 24) = offsetLayout(v219, v218[1], v167);
                  v177 = v218[1];
                  if (v177)
                  {
                    glpLayoutObjectFind(v177, 33);
                  }

                  ++v167;
                  v168 = v219;
                }

                while (v167 != v212);
                a2 = v186;
                a1 = v219;
                v166 = v190;
                v142 = v194;
                v145 = v204;
              }

              else
              {
                a2 = v186;
              }
            }

            else
            {
              v166 = allocateAttribForSize(*v215, 0);
              a1 = v219;
            }

            if (!__nc)
            {
              *(a1 + 256) += *(v159 + 2);
            }

            v178 = glpLinkerPoolAlloc(a1);
            *v178 = 0;
            v178[1] = 0;
            *v178 = v166;
            v178[1] = *v218;
            glpStringHashPut(*v195, v145, v208, v179, v178);
          }
        }

LABEL_180:
        v13 = *(a2 + 32);
      }
    }

    if (--v142)
    {
      continue;
    }

    break;
  }

  v180 = *(*v196 + 32);
  result = v201;
  if (v180)
  {
    v182 = *(*v196 + 40);
    do
    {
      if (*v182)
      {
        *(**v182 + 8) = 0;
      }

      v182 += 32;
      --v180;
    }

    while (v180);
  }

  if (v220 >= 0x10)
  {
    v183 = glpLinkerGetInfoLog(a1);
    v221 = "-1";
    v222 = 0xEDA00000002;
    v223 = 0xFFFFFFFFLL;
    glpLogMessage(v183, 0, &v221, "Implementation limit of %d MAX_VERTEX_ATTRIBS (e.g., number of generic plus conventional active vec4 attributes) exceeded, shader uses up to vec4 attribute %d.", 16, v220);
    return 0;
  }

  return result;
}

uint64_t *offsetLayout(uint64_t a1, void **a2, unsigned int a3)
{
  glpLinkerGetAllocator();
  v6 = glpCopyLayoutObject(v5, a2);
  v7 = glpLayoutObjectFind(v6, 35);
  if (v7)
  {
    *(v7 + 4) += a3;
  }

  v8 = glpLayoutObjectFind(v6, 43);
  if (v8)
  {
    *(v8 + 4) += a3;
  }

  v9 = glpLayoutObjectFind(v6, 45);
  if (v9)
  {
    *(v9 + 4) += a3;
  }

  v10 = glpLayoutObjectFind(v6, 47);
  if (v10)
  {
    *(v10 + 4) += 4 * a3;
  }

  v11 = glpLayoutObjectFind(v6, 50);
  if (v11)
  {
    *(v11 + 4) += a3;
  }

  v12 = glpLayoutObjectFind(v6, 52);
  if (v12)
  {
    *(v12 + 4) += a3;
  }

  v13 = glpLayoutObjectFind(v6, 57);
  if (v13)
  {
    *(v13 + 4) += a3;
  }

  v14 = glpLayoutObjectFind(v6, 59);
  if (v14)
  {
    *(v14 + 4) += a3;
  }

  v15 = glpLayoutObjectFind(v6, 60);
  if (v15)
  {
    *(v15 + 4) += a3;
  }

  v16 = glpLayoutObjectFind(v6, 61);
  if (v16)
  {
    *(v16 + 4) += a3 >> 2;
  }

  v17 = glpLayoutObjectFind(v6, 63);
  if (v17)
  {
    *(v17 + 4) += a3 & 3;
  }

  v18 = glpLayoutObjectFind(v6, 69);
  if (v18)
  {
    *(v18 + 4) += a3;
  }

  v19 = glpLayoutObjectFind(v6, 72);
  if (v19)
  {
    *(v19 + 4) += a3;
  }

  v20 = glpLayoutObjectFind(v6, 75);
  if (v20)
  {
    *(v20 + 4) += a3;
  }

  return v6;
}

BOOL isBuiltinName(char *__s2, unsigned int a2)
{
  if (a2 < 3)
  {
    return 0;
  }

  v3 = *__s2;
  if (v3 == 103)
  {
    v3 = __s2[1];
    if (v3 == 108)
    {
      v3 = __s2[2];
      v4 = 95;
    }

    else
    {
      v4 = 108;
    }
  }

  else
  {
    v4 = 103;
  }

  if (v4 == v3)
  {
    return 1;
  }

  if (a2 >= 9 && !strncmp("$ib$", __s2, 4uLL))
  {
    return strncmp("$gl_", __s2 + 5, 4uLL) == 0;
  }

  return 0;
}

uint64_t allocateAttribForSize(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = a2;
    for (i = v4; !glpIntHashGet(a1, i); ++i)
    {
      if (!--v5)
      {
        return v4;
      }
    }

    v4 = (v4 + 1);
  }

  while (v4 < v4 + a2);
  return v4;
}

uint64_t glpMakeFragmentOutputBindings(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  glpLinkerGetAllocator();
  v212 = a3;
  *a3 = glpMakeStringHash(v10);
  glpLinkerGetAllocator();
  v213 = a4;
  *a4 = glpMakeStringHash(v11);
  glpLinkerGetAllocator();
  v237 = a5;
  *a5 = glpMakeIntHash(v12);
  v13 = *(a2 + 32);
  v235 = 1;
  v234 = a1;
  v211 = a2;
  if (!v13)
  {
    v48 = 0;
    LODWORD(v96) = 0;
    v47 = 0;
    v221 = 0;
    v45 = 0;
    goto LABEL_103;
  }

  v14 = 0;
  v226 = 0;
  v232 = 0;
  v15 = 0x80000000;
  while (1)
  {
    v16 = (*(a2 + 40) + 32 * v14);
    v236 = *v16;
    if (!*v16)
    {
      goto LABEL_46;
    }

    v17 = v16[2];
    if (v17 < 3)
    {
      goto LABEL_46;
    }

    v18 = v16[1];
    v19 = *v18;
    if (v19 == 103)
    {
      v20 = *(v18 + 1);
      if (v20 == 108)
      {
        v20 = *(v18 + 2);
        v21 = 95;
      }

      else
      {
        v21 = 108;
      }

      if (v21 == v20)
      {
        goto LABEL_15;
      }
    }

    else if (103 == v19)
    {
      goto LABEL_15;
    }

    if (v17 < 9 || strncmp("$ib$", v18, 4uLL) || strncmp("$gl_", v18 + 5, 4uLL))
    {
      goto LABEL_46;
    }

LABEL_15:
    if (v19 != 36 || v17 >= 9 && !strncmp("$ib$", v18, 4uLL) && !strncmp("$gl_", v18 + 5, 4uLL))
    {
      break;
    }

LABEL_46:
    if (++v14 >= v13)
    {
      v235 = 1;
      goto LABEL_48;
    }
  }

  __n = v18;
  v22 = *(v236 + 8);
  if (v22)
  {
    v23 = glpLayoutObjectFind(v22, 79) != 0;
    v22 = *(v236 + 8);
  }

  else
  {
    v23 = 0;
  }

  v24 = v232;
  v25 = glpLayoutObjectFind(v22, 72);
  v26 = glpLayoutObjectFind(*(v236 + 8), 77);
  if (!v232 || !v26)
  {
    v199 = v23;
    v220 = v26;
    if (v26)
    {
      v24 = v236;
    }

    v232 = v24;
    glpABIGetTypeSize(0, *v236, 0);
    glpTypeSizeGetSize();
    v28 = v27;
    v29 = glpLinkerPoolAlloc(a1);
    v217 = glpLinkerPoolAlloc(a1);
    glpTypeGetAppleVec4Types(*v236, v29, 1, 0, 0, v217, 0, 0, 0);
    v30 = v236;
    v31 = glpLinkerPoolAlloc(a1);
    v32 = v17;
    v33 = v31;
    *v31 = v236;
    v31[1] = 0;
    v203 = v32;
    glpStringHashPut(*v213, v18, v32, v34, v31);
    v222 = v15;
    if (v25)
    {
      v222 = *(v25 + 4);
    }

    if (v28)
    {
      for (i = 0; i != v28; ++i)
      {
        if (BitSetGetEquals(v30[15], i))
        {
          v36 = v15;
          v37 = glpLinkerPoolAlloc(v234);
          *v37 = 0u;
          *(v37 + 16) = 0u;
          glpIntHashPut(*v237, v222 + i, v37, 0.0);
          if (v226 <= v222 + i)
          {
            v38 = v222 + i;
          }

          else
          {
            v38 = v226;
          }

          if (v220)
          {
            v39 = v38;
          }

          else
          {
            v39 = v226;
          }

          v226 = v39;
          if (glpPrimitiveTypeGetScalarCount(v29[i]))
          {
            v40 = 0;
            do
            {
              v41 = *(v33 + 2);
              v42 = &v33[v41 + 2];
              *v42 = v222 + i;
              v42[1] = v40;
              *(v33 + 2) = v41 + 1;
              *v37 |= 1 << v40++;
            }

            while (v40 < glpPrimitiveTypeGetScalarCount(v29[i]));
          }

          v30 = v236;
          *(v37 + 8) = *(v236 + 48) & 0x7F00000001FLL | (v217[i] >> 3);
          *(v37 + 4) = v29[i];
          *(v37 + 24) = offsetLayout(v234, *(v236 + 8), i);
          v15 = v36 + (v220 == 0);
        }
      }
    }

    a1 = v234;
    if (!v199)
    {
      *(v234 + 292) += *(v33 + 2);
    }

    v43 = glpLinkerPoolAlloc(v234);
    *v43 = 0;
    v43[1] = 0;
    *v43 = v222;
    v43[1] = *v30;
    glpStringHashPut(*v212, __n, v203, v44, v43);
    a2 = v211;
    v13 = *(v211 + 32);
    goto LABEL_46;
  }

  InfoLog = glpLinkerGetInfoLog(a1);
  v191 = *(v236 + 32);
  v192 = *(v232 + 32);
  v193 = *(v236 + 40);
  v194 = *(v232 + 40);
  v238 = "-1";
  v239 = 0xEDA00000002;
  v240 = 0xFFFFFFFFLL;
  glpLogMessage(InfoLog, 0, &v238, "Cannot mix builtin fragment outputs '%.*s' and '%.*s'.", v193, v191, v194, v192);
  v235 = 0;
  v13 = *(a2 + 32);
LABEL_48:
  v45 = v226;
  if (v13)
  {
    v46 = 0;
    v221 = 0;
    v47 = 0;
    v48 = v232;
    do
    {
      v49 = *(a2 + 40) + 32 * v46;
      v50 = *v49;
      if (*v49)
      {
        v52 = *(v49 + 8);
        v51 = *(v49 + 16);
        v53 = v50[1];
        if (v53)
        {
          v54 = *(v49 + 16);
          v55 = glpLayoutObjectFind(v53, 26);
          v51 = v54;
          v229 = v55;
        }

        else
        {
          v229 = 0;
        }

        if (v51 < 3 || ((v56 = *v52, v56 != 103) ? (v57 = 103) : (v56 = *(v52 + 1), v56 != 108) ? (v57 = 108) : (v56 = *(v52 + 2), v57 = 95), v57 != v56 && (v51 < 9 || (v58 = v51, v59 = strncmp("$ib$", v52, 4uLL), v51 = v58, v59) || (v60 = strncmp("$gl_", v52 + 5, 4uLL), v51 = v58, v60))))
        {
          if (!v51 || *v52 != 36 || v51 >= 9 && (v61 = v51, !strncmp("$ib$", v52, 4uLL)) && (v62 = strncmp("$gl_", v52 + 5, 4uLL) == 0, v51 = v61, v62))
          {
            if (v229)
            {
              __na = v51;
              v63 = v50[1];
              v218 = v47;
              if (v63)
              {
                v195 = glpLayoutObjectFind(v63, 79) != 0;
              }

              else
              {
                v195 = 0;
              }

              glpABIGetTypeSize(0, *v50, 0);
              glpTypeSizeGetSize();
              v65 = v64;
              v66 = glpLinkerPoolAlloc(a1);
              v67 = a1;
              v68 = v66;
              v204 = glpLinkerPoolAlloc(v67);
              glpTypeGetAppleVec4Types(*v50, v68, 1, 0, 0, v204, 0, 0, 0);
              v69 = v50[1];
              v200 = v46;
              if (v69 && (v70 = glpLayoutObjectFind(v69, 27)) != 0)
              {
                v214 = *(v70 + 4);
              }

              else
              {
                v214 = 0;
              }

              v71 = glpLinkerPoolAlloc(v234);
              *v71 = v50;
              v71[1] = 0;
              v196 = v52;
              glpStringHashPut(*v213, v52, __na, v72, v71);
              if (v65)
              {
                v73 = 0;
                v74 = v214 << 16;
                do
                {
                  v75 = (*(v229 + 4) + v73) | v74;
                  v76 = glpIntHashGet(*v237, (*(v229 + 4) + v73) | v74);
                  if (v48)
                  {
                    v77 = glpLinkerGetInfoLog(v234);
                    v238 = "-1";
                    v239 = 0xEDA00000002;
                    v240 = 0xFFFFFFFFLL;
                    glpLogMessage(v77, 0, &v238, "Cannot mix builtin and user defined fragment outputs '%.*s' and '%.*s'.");
                  }

                  else
                  {
                    if (!v76)
                    {
                      if (BitSetGetEquals(v50[15], v73))
                      {
                        v79 = glpLinkerPoolAlloc(v234);
                        *v79 = 0u;
                        *(v79 + 16) = 0u;
                        glpIntHashPut(*v237, v75, v79, 0.0);
                        if (v226 <= *(v229 + 4) + v73)
                        {
                          v80 = *(v229 + 4) + v73;
                        }

                        else
                        {
                          v80 = v226;
                        }

                        v226 = v80;
                        v81 = v221;
                        if (v221 <= v214)
                        {
                          v81 = v214;
                        }

                        v221 = v81;
                        if (glpPrimitiveTypeGetScalarCount(v68[v73]))
                        {
                          v82 = 0;
                          do
                          {
                            v83 = *(v71 + 2);
                            v84 = &v71[v83 + 2];
                            *v84 = v75;
                            v84[1] = v82;
                            *(v71 + 2) = v83 + 1;
                            *v79 |= 1 << v82++;
                          }

                          while (v82 < glpPrimitiveTypeGetScalarCount(v68[v73]));
                        }

                        *(v79 + 8) = v50[6] & 0x7F00000001FLL | (v204[v73] >> 3);
                        *(v79 + 4) = v68[v73];
                        *(v79 + 24) = addPPDrawBuffersToLayout(v234, *(v79 + 24));
                        glpLinkerGetAllocator();
                        v85 = *(v79 + 24);
                        v238 = "-1";
                        v239 = 0xEDA00000002;
                        v240 = 0xFFFFFFFFLL;
                        glpLayoutObjectAppendInteger(v86, 0, &v238, 0, 0, v85, 33, 3);
                        glpLinkerGetAllocator();
                        v87 = *(v79 + 24);
                        v238 = "-1";
                        v239 = 0xEDA00000002;
                        v240 = 0xFFFFFFFFLL;
                        glpLayoutObjectAppendInteger(v88, 0, &v238, 0, 0, v87, 68, 4);
                        glpLinkerGetAllocator();
                        v89 = *(v79 + 24);
                        v90 = *(v229 + 4);
                        v238 = "-1";
                        v239 = 0xEDA00000002;
                        v240 = 0xFFFFFFFFLL;
                        glpLayoutObjectAppendInteger(v91, 0, &v238, 0, 0, v89, 72, v90 + v73);
                        glpLinkerGetAllocator();
                        v92 = *(v79 + 24);
                        v238 = "-1";
                        v239 = 0xEDA00000002;
                        v240 = 0xFFFFFFFFLL;
                        glpLayoutObjectAppendInteger(v93, 0, &v238, 0, 0, v92, 73, v214);
                        v48 = v232;
                      }

                      goto LABEL_84;
                    }

                    v78 = glpLinkerGetInfoLog(v234);
                    v238 = "-1";
                    v239 = 0xEDA00000002;
                    v240 = 0xFFFFFFFFLL;
                    glpLogMessage(v78, 0, &v238, "Active output aliasing. Slot %d unavailable for '%.*s' from layout location request.");
                  }

                  v235 = 0;
LABEL_84:
                  ++v73;
                }

                while (v73 != v65);
              }

              a1 = v234;
              if (!v195)
              {
                *(v234 + 292) += *(v71 + 2);
              }

              v94 = glpLinkerPoolAlloc(v234);
              *v94 = 0;
              *(v94 + 8) = 0;
              *v94 = *(v229 + 4);
              *(v94 + 4) = v214;
              *(v94 + 8) = *v50;
              glpStringHashPut(*v212, v196, __na, v95, v94);
              v47 = v218 + 1;
              a2 = v211;
              v46 = v200;
            }
          }
        }
      }

      ++v46;
      v96 = *(a2 + 32);
    }

    while (v46 < v96);
    v45 = v226;
  }

  else
  {
    LODWORD(v96) = 0;
    v47 = 0;
    v221 = 0;
    v48 = v232;
  }

LABEL_103:
  v233 = v48;
  v97 = *(a1 + 88);
  if (!*(v97 + 32))
  {
    goto LABEL_138;
  }

  v227 = v45;
  v98 = 0;
  *v197 = *(a1 + 88);
  while (2)
  {
    v99 = *(v97 + 40) + 32 * v98;
    v100 = *v99;
    if (*v99)
    {
      v101 = *(v99 + 8);
      v102 = *(v99 + 16);
      v103 = glpStringHashGet(a2, v101, v102);
      if (v103)
      {
        v104 = v103;
        v105 = *(v103 + 8);
        if (!v105)
        {
          v223 = v101;
          __nb = v98;
          goto LABEL_113;
        }

        if (!glpLayoutObjectFind(v105, 26))
        {
          v106 = v104[1];
          __nb = v98;
          v223 = v101;
          if (v106)
          {
            v201 = glpLayoutObjectFind(v106, 79) != 0;
            goto LABEL_114;
          }

LABEL_113:
          v201 = 0;
LABEL_114:
          v219 = v47;
          glpABIGetTypeSize(0, *v104, 0);
          glpTypeSizeGetSize();
          v109 = v108;
          v110 = v108;
          v111 = glpLinkerPoolAlloc(a1);
          v215 = glpLinkerPoolAlloc(a1);
          glpTypeGetAppleVec4Types(*v104, v111, 1, 0, 0, v215, 0, 0, 0);
          v230 = v110;
          v112 = a1;
          v113 = glpLinkerPoolAlloc(a1);
          *v113 = v104;
          v113[1] = 0;
          v205 = v102;
          glpStringHashPut(*v213, v223, v102, v114, v113);
          if (v109)
          {
            for (j = 0; j != v230; ++j)
            {
              v116 = (*v100 + j) | (*(v100 + 1) << 16);
              v117 = glpIntHashGet(*v237, (*v100 + j) | (*(v100 + 1) << 16));
              if (v233)
              {
                v118 = glpLinkerGetInfoLog(v112);
                v238 = "-1";
                v239 = 0xEDA00000002;
                v240 = 0xFFFFFFFFLL;
                glpLogMessage(v118, 0, &v238, "Cannot mix builtin and user defined fragment outputs '%.*s' and '%.*s'.");
              }

              else
              {
                if (!v117)
                {
                  if (BitSetGetEquals(v104[15], j))
                  {
                    v120 = glpLinkerPoolAlloc(v112);
                    *v120 = 0u;
                    *(v120 + 16) = 0u;
                    glpIntHashPut(*v237, v116, v120, 0.0);
                    if (v227 <= *v100 + j)
                    {
                      v121 = *v100 + j;
                    }

                    else
                    {
                      v121 = v227;
                    }

                    v227 = v121;
                    v122 = v221;
                    if (v221 <= *(v100 + 1))
                    {
                      v122 = *(v100 + 1);
                    }

                    v221 = v122;
                    if (glpPrimitiveTypeGetScalarCount(v111[j]))
                    {
                      v123 = 0;
                      do
                      {
                        v124 = *(v113 + 2);
                        v125 = &v113[v124 + 2];
                        *v125 = v116;
                        v125[1] = v123;
                        *(v113 + 2) = v124 + 1;
                        *v120 |= 1 << v123++;
                      }

                      while (v123 < glpPrimitiveTypeGetScalarCount(v111[j]));
                    }

                    *(v120 + 8) = v104[6] & 0x7F00000001FLL | (v215[j] >> 3);
                    *(v120 + 4) = v111[j];
                    *(v120 + 24) = addPPDrawBuffersToLayout(v234, *(v120 + 24));
                    glpLinkerGetAllocator();
                    v126 = *(v120 + 24);
                    v238 = "-1";
                    v239 = 0xEDA00000002;
                    v240 = 0xFFFFFFFFLL;
                    glpLayoutObjectAppendInteger(v127, 0, &v238, 0, 0, v126, 33, 3);
                    glpLinkerGetAllocator();
                    v128 = *(v120 + 24);
                    v238 = "-1";
                    v239 = 0xEDA00000002;
                    v240 = 0xFFFFFFFFLL;
                    glpLayoutObjectAppendInteger(v129, 0, &v238, 0, 0, v128, 68, 4);
                    glpLinkerGetAllocator();
                    v130 = *(v120 + 24);
                    v131 = *v100;
                    v238 = "-1";
                    v239 = 0xEDA00000002;
                    v240 = 0xFFFFFFFFLL;
                    glpLayoutObjectAppendInteger(v132, 0, &v238, 0, 0, v130, 72, v131 + j);
                    v112 = v234;
                    glpLinkerGetAllocator();
                    v133 = *(v120 + 24);
                    v134 = *(v100 + 1);
                    v238 = "-1";
                    v239 = 0xEDA00000002;
                    v240 = 0xFFFFFFFFLL;
                    glpLayoutObjectAppendInteger(v135, 0, &v238, 0, 0, v133, 73, v134);
                  }

                  continue;
                }

                v119 = glpLinkerGetInfoLog(v112);
                v238 = "-1";
                v239 = 0xEDA00000002;
                v240 = 0xFFFFFFFFLL;
                glpLogMessage(v119, 0, &v238, "Active output aliasing. Slot %d unavailable for '%.*s' from FragDataBinding request.");
              }

              v235 = 0;
            }
          }

          a1 = v112;
          if (!v201)
          {
            *(v112 + 292) += *(v113 + 2);
          }

          v136 = glpLinkerPoolAlloc(v112);
          *v136 = 0;
          v136[1] = 0;
          v137 = *v100;
          *v136 = *v100;
          v136[1] = *v104;
          glpStringHashPut(*v212, v223, v205, v137, v136);
          v47 = v219 + 1;
          v98 = __nb;
          a2 = v211;
          v97 = *v197;
        }
      }

      else
      {
        v107 = glpLinkerGetInfoLog(a1);
        v238 = "-1";
        v239 = 0xEDA00000002;
        v240 = 0xFFFFFFFFLL;
        glpLogMessage(v107, 1, &v238, "Could not find fragment shader output '%.*s' to match FragDataBinding request.", v102, v101);
      }
    }

    if (++v98 < *(v97 + 32))
    {
      continue;
    }

    break;
  }

  LODWORD(v96) = *(a2 + 32);
  v45 = v227;
LABEL_138:
  if (!v96)
  {
LABEL_197:
    result = v235;
    goto LABEL_198;
  }

  v228 = v45;
  v138 = 0;
  v139 = 0;
  while (2)
  {
    v140 = (*(a2 + 40) + 32 * v138);
    v141 = *v140;
    if (!*v140)
    {
      goto LABEL_165;
    }

    v143 = v140[1];
    v142 = v140[2];
    v144 = glpStringHashGet(*(a1 + 88), v143, v142);
    v145 = *(v141 + 8);
    if (!v145)
    {
      v146 = 0;
LABEL_146:
      if (v144)
      {
        goto LABEL_165;
      }

      goto LABEL_147;
    }

    v146 = glpLayoutObjectFind(v145, 26) != 0;
    v147 = *(v141 + 8);
    if (!v147)
    {
      goto LABEL_146;
    }

    if (glpLayoutObjectFind(v147, 29) | v144)
    {
      goto LABEL_165;
    }

LABEL_147:
    if (v142 < 3 || ((v148 = *v143, v148 != 103) ? (v149 = 103) : (v148 = *(v143 + 1), v148 != 108) ? (v149 = 108) : (v148 = *(v143 + 2), v149 = 95), v149 != v148 && (v142 < 9 || strncmp("$ib$", v143, 4uLL) || strncmp("$gl_", v143 + 5, 4uLL))))
    {
      if (v142 && *v143 == 36)
      {
        if (v142 >= 9 && !strncmp("$ib$", v143, 4uLL) && strncmp("$gl_", v143 + 5, 4uLL) == 0 && !v146)
        {
          goto LABEL_162;
        }
      }

      else
      {
        if (v146)
        {
          goto LABEL_165;
        }

LABEL_162:
        v150 = *(v141 + 8);
        v206 = v139;
        __nc = v142;
        if (v150)
        {
          v151 = glpLayoutObjectFind(v150, 79) != 0;
        }

        else
        {
          v151 = 0;
        }

        glpABIGetTypeSize(0, *v141, 0);
        glpTypeSizeGetSize();
        v153 = v152;
        v154 = v152;
        v155 = glpLinkerPoolAlloc(a1);
        v216 = glpLinkerPoolAlloc(a1);
        glpTypeGetAppleVec4Types(*v141, v155, 1, 0, 0, v216, 0, 0, 0);
        v231 = v154;
        v156 = glpLinkerPoolAlloc(a1);
        *v156 = v141;
        v156[1] = 0;
        glpStringHashPut(*v213, v143, __nc, v157, v156);
        if (v153)
        {
          v198 = v151;
          v202 = v143;
          v158 = 0;
          v159 = *v237;
          do
          {
            v160 = v153;
            v224 = v158;
            while (!glpIntHashGet(v159, v158))
            {
              ++v158;
              if (!--v160)
              {
                v158 = v224;
                goto LABEL_175;
              }
            }

            v158 = v224 + 1;
          }

          while (v224 + 1 < v224 + 1 + v153);
LABEL_175:
          v225 = v158;
          v161 = 0;
          v162 = v233;
          do
          {
            if (v162)
            {
              v163 = glpLinkerGetInfoLog(v234);
              v164 = *(v141 + 32);
              v165 = *(v162 + 32);
              v166 = *(v141 + 40);
              v167 = *(v162 + 40);
              v238 = "-1";
              v239 = 0xEDA00000002;
              v240 = 0xFFFFFFFFLL;
              glpLogMessage(v163, 0, &v238, "Cannot mix builtin and user defined fragment outputs '%.*s' and '%.*s'.", v166, v164, v167, v165);
              v235 = 0;
            }

            else if (BitSetGetEquals(*(v141 + 120), v161))
            {
              v168 = glpLinkerPoolAlloc(v234);
              *v168 = 0u;
              *(v168 + 16) = 0u;
              v169 = v225 + v161;
              glpIntHashPut(*v237, v225 + v161, v168, 0.0);
              if (v228 <= v225 + v161)
              {
                v170 = v225 + v161;
              }

              else
              {
                v170 = v228;
              }

              v228 = v170;
              if (glpPrimitiveTypeGetScalarCount(v155[v161]))
              {
                v171 = 0;
                do
                {
                  v172 = *(v156 + 2);
                  v173 = &v156[v172 + 2];
                  *v173 = v169;
                  v173[1] = v171;
                  *(v156 + 2) = v172 + 1;
                  *v168 |= 1 << v171++;
                }

                while (v171 < glpPrimitiveTypeGetScalarCount(v155[v161]));
              }

              *(v168 + 8) = *(v141 + 48) & 0x7F00000001FLL | (v216[v161] >> 3);
              *(v168 + 4) = v155[v161];
              *(v168 + 24) = addPPDrawBuffersToLayout(v234, *(v168 + 24));
              glpLinkerGetAllocator();
              v174 = *(v168 + 24);
              v238 = "-1";
              v239 = 0xEDA00000002;
              v240 = 0xFFFFFFFFLL;
              glpLayoutObjectAppendInteger(v175, 0, &v238, 0, 0, v174, 33, 3);
              glpLinkerGetAllocator();
              v176 = *(v168 + 24);
              v238 = "-1";
              v239 = 0xEDA00000002;
              v240 = 0xFFFFFFFFLL;
              glpLayoutObjectAppendInteger(v177, 0, &v238, 0, 0, v176, 68, 4);
              glpLinkerGetAllocator();
              v178 = *(v168 + 24);
              v238 = "-1";
              v239 = 0xEDA00000002;
              v240 = 0xFFFFFFFFLL;
              glpLayoutObjectAppendInteger(v179, 0, &v238, 0, 0, v178, 72, v169);
              glpLinkerGetAllocator();
              v180 = *(v168 + 24);
              v238 = "-1";
              v239 = 0xEDA00000002;
              v240 = 0xFFFFFFFFLL;
              glpLayoutObjectAppendInteger(v181, 0, &v238, 0, 0, v180, 73, 0);
              v162 = v233;
            }

            ++v161;
          }

          while (v161 != v231);
          a1 = v234;
          a2 = v211;
          v143 = v202;
          v151 = v198;
        }

        else
        {
          v225 = 0;
        }

        if (!v151)
        {
          *(a1 + 292) += *(v156 + 2);
        }

        v182 = glpLinkerPoolAlloc(a1);
        *v182 = 0;
        v182[1] = 0;
        *v182 = v225;
        v182[1] = *v141;
        glpStringHashPut(*v212, v143, __nc, v183, v182);
        ++v47;
        v139 = v206 + 1;
      }
    }

LABEL_165:
    if (++v138 < *(a2 + 32))
    {
      continue;
    }

    break;
  }

  if (v47 < 2)
  {
    v45 = v228;
    goto LABEL_197;
  }

  v45 = v228;
  result = v235;
  if (v139 && *(**(a1 + 176) + 4) == 6)
  {
    v185 = glpLinkerGetInfoLog(a1);
    v238 = "-1";
    v239 = 0xEDA00000002;
    v240 = 0xFFFFFFFFLL;
    glpLogMessage(v185, 0, &v238, "GLSL 300 requires that all fragment shader outputs have a location if there is more than one output.");
    result = 0;
  }

LABEL_198:
  v186 = *(*v213 + 32);
  if (v186)
  {
    v187 = *(*v213 + 40);
    do
    {
      if (*v187)
      {
        *(**v187 + 8) = 0;
      }

      v187 += 32;
      --v186;
    }

    while (v186);
  }

  if (v221 && v45)
  {
    v188 = glpLinkerGetInfoLog(a1);
    v238 = "-1";
    v239 = 0xEDA00000002;
    v240 = 0xFFFFFFFFLL;
    glpLogMessage(v188, 0, &v238, "Exceeded max dual source draw buffers of %d, shader uses up to %d.");
    return 0;
  }

  if (v45 >= glpBuiltInConstantValues[8 * (*(a1 + 60) == 4) + 7])
  {
    v189 = glpLinkerGetInfoLog(a1);
    v238 = "-1";
    v239 = 0xEDA00000002;
    v240 = 0xFFFFFFFFLL;
    glpLogMessage(v189, 0, &v238, "Exceeded max draw buffers of %d, shader uses up to %d.");
    return 0;
  }

  return result;
}

void *addPPDrawBuffersToLayout(uint64_t a1, void **a2)
{
  glpLinkerGetAllocator();
  LayoutObject = glpCopyLayoutObject(v3, a2);
  if (!LayoutObject)
  {
    glpLinkerGetAllocator();
    LayoutObject = glpMakeLayoutObject(v5);
  }

  glpLinkerGetAllocator();
  v8[0] = "-1";
  v8[1] = 0xEDA00000002;
  v8[2] = 0xFFFFFFFFLL;
  glpLayoutObjectAppendInteger(v6, 0, v8, 0, 0, LayoutObject, 77, 2);
  return LayoutObject;
}

uint64_t glpMakeInterstageBindings(uint64_t StringHash, unsigned int a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13)
{
  v480 = a8;
  v13 = a7;
  v492 = a3;
  v484 = a2;
  v17 = StringHash;
  v510[1] = *MEMORY[0x277D85DE8];
  if (a7)
  {
    glpLinkerGetAllocator();
    StringHash = glpMakeStringHash(v18);
    *a9 = StringHash;
  }

  v481 = a11;
  if (a5)
  {
    glpLinkerGetAllocator();
    StringHash = glpMakeStringHash(v19);
    *v480 = StringHash;
  }

  v478 = a10;
  if (v13)
  {
    glpLinkerGetAllocator();
    StringHash = glpMakeStringHash(v20);
    *v481 = StringHash;
  }

  v491 = a13;
  if (a5)
  {
    glpLinkerGetAllocator();
    StringHash = glpMakeStringHash(v21);
    *v478 = StringHash;
  }

  v486 = a12;
  if (v13)
  {
    glpLinkerGetAllocator();
    StringHash = glpMakeIntHash(v22);
    *v491 = StringHash;
  }

  if (a5)
  {
    glpLinkerGetAllocator();
    StringHash = glpMakeIntHash(v23);
    *v486 = StringHash;
  }

  v24 = 1;
  v489 = v13;
  v490 = a5;
  v493 = v17;
  v482 = a9;
  if (a4 && a6)
  {
    LODWORD(v488) = *(v17 + 60);
    glpLinkerGetAllocator();
    v26 = glpMakeStringHash(v25);
    *(v17 + 344) = glpMakeIntHash(&GLP_MALLOC_ALLOCATOR);
    v27 = *(v17 + 96);
    LODWORD(v28) = *(v27 + 4);
    if (v28)
    {
      v475 = a6;
      v29 = 0;
      LODWORD(v479) = 0;
      LODWORD(v477) = 0;
      v483 = 0;
      v30 = 0;
      LODWORD(v476) = -1;
      v485 = v26;
      v31 = v488;
      while (1)
      {
        v32 = v29 == v28 - 1 || *(v17 + 300) == 35981;
        v33 = *(v27 + 8) + 16 * v29;
        v34 = *v33;
        v35 = *(v33 + 8);
        if (glpStringsEqual("gl_NextBuffer", 0xD22C7DA40000000DLL, *v33, v35) && v31 == 1)
        {
          break;
        }

        if (glpStringsEqual("gl_SkipComponents1", 0x17BA0E7C00000012uLL, v34, v35) && v31 == 1)
        {
          v30 += 4;
          ElementCount = 1;
          goto LABEL_43;
        }

        if (glpStringsEqual("gl_SkipComponents2", 0xB5F2691B00000012, v34, v35) && v31 == 1)
        {
          v30 += 8;
          ElementCount = 2;
          goto LABEL_43;
        }

        if (glpStringsEqual("gl_SkipComponents3", 0x74D9376D00000012uLL, v34, v35) && v31 == 1)
        {
          v30 += 12;
          ElementCount = 3;
          goto LABEL_43;
        }

        if (glpStringsEqual("gl_SkipComponents4", 0x635B431500000012uLL, v34, v35) && v31 == 1)
        {
          v30 += 16;
          ElementCount = 4;
LABEL_43:
          if (*(v17 + 300) != 35980)
          {
            InfoLog = glpLinkerGetInfoLog(v17);
            *&v499 = "-1";
            *(&v499 + 1) = 0xEDA00000002;
            *&v500 = 0xFFFFFFFFLL;
            glpLogMessage(InfoLog, 0, &v499, "Usage of '%.*s' disallowed if transformFeedbackBufferMode != GL_INTERLEAVED_ATTRIBS.", v35, v34);
            v24 = 0;
            a5 = v490;
LABEL_58:
            v31 = v488;
            goto LABEL_59;
          }

          LODWORD(v487) = v24;
          PrimitiveType = 0;
          goto LABEL_45;
        }

        v495 = 0;
        v494 = 0;
        v509 = 0;
        v510[0] = 0;
        if (!glpTypeParseDeref(v475, topLevelLookUpObjectTypeFromStringHash, v34, v35, &v494, v510, &v509))
        {
          v85 = glpLinkerGetInfoLog(v17);
          *&v499 = "-1";
          *(&v499 + 1) = 0xEDA00000002;
          *&v500 = 0xFFFFFFFFLL;
          glpLogMessage(v85, 0, &v499, "Could not find transform feedback binding for '%.*s.'");
          goto LABEL_88;
        }

        v79 = glpStringHashGet(v475, v494, v495);
        v80 = *(v79 + 8);
        if (v80)
        {
          v81 = glpLayoutObjectFind(v80, 9);
          if (v81)
          {
            if (*(v81 + 4))
            {
              v82 = glpLinkerGetInfoLog(v493);
              *&v499 = "-1";
              *(&v499 + 1) = 0xEDA00000002;
              *&v500 = 0xFFFFFFFFLL;
              v17 = v493;
              glpLogMessage(v82, 0, &v499, "Exceeded max vertex streams of %d, with %d.");
              goto LABEL_88;
            }
          }
        }

        v476 = v79;
        Kind = glpTypeGetKind(v510[0]);
        ElementType = v510[0];
        if (Kind == 2)
        {
          ElementCount = glpArrayTypeGetElementCount(v510[0]);
          ElementType = glpArrayTypeGetElementType(v510[0]);
          v510[0] = ElementType;
        }

        else
        {
          ElementCount = 1;
        }

        v17 = v493;
        if (glpTypeGetKind(ElementType))
        {
          v86 = glpLinkerGetInfoLog(v493);
          *&v499 = "-1";
          *(&v499 + 1) = 0xEDA00000002;
          *&v500 = 0xFFFFFFFFLL;
          glpLogMessage(v86, 0, &v499, "Type of '%.*s' not valid for transform feedback.");
          goto LABEL_87;
        }

        LODWORD(v487) = v24;
        PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v510[0]);
        if (glpStringHashGet(v26, v34, v35))
        {
          v88 = glpLinkerGetInfoLog(v493);
          *&v499 = "-1";
          *(&v499 + 1) = 0xEDA00000002;
          *&v500 = 0xFFFFFFFFLL;
          glpLogMessage(v88, 0, &v499, "Duplicate transform feedback bindings specified for '%.*s.'");
LABEL_87:
          LODWORD(v476) = 0;
LABEL_88:
          v31 = v488;
          goto LABEL_56;
        }

        glpStringHashPut(v26, v34, v35, v87, 1);
        v89 = v493;
        v90 = glpLinkerPoolAlloc(v493);
        *v90 = v476;
        *(v90 + 8) = v509;
        *(v90 + 16) = v483;
        *(v90 + 20) = v30;
        *(v90 + 24) = 0;
        v91 = *(v89 + 240);
        v92 = *(v89 + 244);
        LODWORD(v93) = v92 + 1;
        if (v92 + 1 <= v91)
        {
          v96 = *(v89 + 248);
          v97 = *(v89 + 244);
        }

        else
        {
          if (v91 <= 1)
          {
            v91 = 1;
          }

          v94 = 2 * v91;
          if (v94 <= v93)
          {
            v93 = v93;
          }

          else
          {
            v93 = v94;
          }

          v474 = v93;
          glpLinkerGetAllocator();
          v473 = v95;
          v472 = (*(v95 + 8))(*v95, 8 * v474, "Vector Storage (GLPTFStore *, growth)");
          memcpy(v472, *(v89 + 248), 8 * *(v89 + 244));
          (*(v473 + 24))(*v473, *(v89 + 248));
          v96 = v472;
          *(v89 + 240) = v474;
          *(v89 + 248) = v96;
          v97 = *(v89 + 244);
        }

        memmove(&v96[8 * v92 + 8], &v96[8 * v92], 8 * (v97 - v92));
        *(*(v89 + 248) + 8 * v92) = v90;
        ++*(v89 + 244);
        v98 = v476;
        *(v476 + 112) = 1;
        glpABIGetTypeSize(0, *v98, 0);
        glpTypeSizeGetSize();
        v474 = v99;
        v100 = glpLinkerPoolAlloc(v89);
        v101 = glpLinkerPoolAlloc(v89);
        glpTypeGetAppleVec4Types(*v98, v100, 1, 0, 0, v101, 0, 0, 0);
        if (HIDWORD(v509))
        {
          v102 = v509;
          do
          {
            ScalarCount = glpPrimitiveTypeGetScalarCount(v100[v102]);
            v30 += glpPrimitiveTypeGetBytesPerComponent(v100[v102++]) * ScalarCount;
          }

          while ((v102 - v509) < HIDWORD(v509));
        }

        LODWORD(v476) = 0;
LABEL_45:
        v42 = malloc_type_malloc(0x18uLL, 0xCA0EF1E7uLL);
        if (!v42 || (v43 = v42, *v42 = 0, v42[1] = 0, v44 = v35, v42[2] = 0, (v45 = malloc_type_malloc(v35, 0xCA0EF1E7uLL)) == 0))
        {
          abort();
        }

        v46 = v45;
        memcpy(v45, v34, v35);
        if (v35)
        {
          v48 = v35 >> 5;
          LODWORD(v49) = v35;
          v50 = ~(v35 >> 5);
          do
          {
            v49 = (32 * v49 + (v49 >> 2) + v46[(v35 - 1)]) ^ v49;
            LODWORD(v35) = v35 + v50;
          }

          while (v35 > v48);
          v51 = v49 << 32;
        }

        else
        {
          v51 = 0;
        }

        *v43 = v46;
        *(v43 + 8) = v51 | v44;
        *(v43 + 16) = ElementCount;
        *(v43 + 20) = PrimitiveType;
        glpIntHashPut(*(v493 + 344), v29, v43, v47);
        if (!v32)
        {
          v13 = v489;
          a5 = v490;
          v17 = v493;
          v24 = v487;
          v26 = v485;
          goto LABEL_58;
        }

        v53 = v483;
        v13 = v489;
        v26 = v485;
        v31 = v488;
        if (v483 < 4)
        {
          v55 = v493;
          v56 = glpLinkerPoolAlloc(v493);
          glpLinkerGetAllocator();
          *v56 = glpMakeLayoutObject(v57);
          a5 = v490;
          if (v30)
          {
            glpLinkerGetAllocator();
            v58 = *v56;
            *&v499 = "-1";
            *(&v499 + 1) = 0xEDA00000002;
            *&v500 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v59, 0, &v499, 0, 0, v58, 33, 2);
            glpLinkerGetAllocator();
            v60 = *v56;
            *&v499 = "-1";
            *(&v499 + 1) = 0xEDA00000002;
            *&v500 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v61, 0, &v499, 0, 0, v60, 46, 10);
            glpLinkerGetAllocator();
            v62 = *v56;
            *&v499 = "-1";
            *(&v499 + 1) = 0xEDA00000002;
            *&v500 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v63, 0, &v499, 0, 0, v62, 65, v53);
            glpLinkerGetAllocator();
            v64 = *v56;
            *&v499 = "-1";
            *(&v499 + 1) = 0xEDA00000002;
            *&v500 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v65, 0, &v499, 0, 0, v64, 66, v476);
            glpLinkerGetAllocator();
            v66 = *v56;
            *&v499 = "-1";
            *(&v499 + 1) = 0xEDA00000002;
            *&v500 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v67, 0, &v499, 0, 0, v66, 67, v30);
          }

          v68 = *(v55 + 224);
          v69 = *(v55 + 228);
          if (v69 + 1 <= v68)
          {
            v74 = v55;
            v75 = *(v55 + 232);
            v76 = v69;
          }

          else
          {
            if (v68 <= 1)
            {
              v68 = 1;
            }

            v70 = 2 * v68;
            if (v70 <= v69 + 1)
            {
              v71 = v69 + 1;
            }

            else
            {
              v71 = v70;
            }

            glpLinkerGetAllocator();
            v73 = v72;
            v74 = v55;
            v75 = (*(v72 + 8))(*v72, 8 * v71, "Vector Storage (GLPTFBuffer *, growth)");
            memcpy(v75, *(v74 + 232), 8 * *(v74 + 228));
            (*(v73 + 24))(*v73, *(v74 + 232));
            *(v74 + 224) = v71;
            v31 = v488;
            *(v74 + 232) = v75;
            v76 = *(v74 + 228);
          }

          memmove(&v75[8 * v69 + 8], &v75[8 * v69], 8 * (v76 - v69));
          *(*(v74 + 232) + 8 * v69) = v56;
          v77 = *(v74 + 228) + 1;
          v78 = v479;
          if (v479 <= v30)
          {
            v78 = v30;
          }

          LODWORD(v479) = v78;
          *(v74 + 228) = v77;
          LODWORD(v477) = v30 + v477;
          v483 = (v483 + 1);
          LODWORD(v476) = -1;
          v30 = 0;
          v17 = v74;
          v24 = v487;
          v26 = v485;
          goto LABEL_59;
        }

        v17 = v493;
        v54 = glpLinkerGetInfoLog(v493);
        *&v499 = "-1";
        *(&v499 + 1) = 0xEDA00000002;
        *&v500 = 0xFFFFFFFFLL;
        glpLogMessage(v54, 0, &v499, "Exceeded max transform feedback buffers of %d, with %d.", 4, v483);
LABEL_56:
        v24 = 0;
        a5 = v490;
LABEL_59:
        ++v29;
        v27 = *(v17 + 96);
        v28 = *(v27 + 4);
        if (v29 >= v28)
        {
          goto LABEL_102;
        }
      }

      ElementCount = 0;
      v32 = 1;
      goto LABEL_43;
    }

    LODWORD(v477) = 0;
    LODWORD(v479) = 0;
LABEL_102:
    StringHash = glpDestroyStringHash(v26);
    v104 = *(v17 + 300);
    if (v104 == 35980)
    {
      if (v477 >= 0x104)
      {
        v106 = glpLinkerGetInfoLog(v17);
        *&v499 = "-1";
        *(&v499 + 1) = 0xEDA00000002;
        *&v500 = 0xFFFFFFFFLL;
        glpLogMessage(v106, 0, &v499, "Exceeded max transform feedback interleaved components of %d, with %d.");
        return 0;
      }
    }

    else if (v104 == 35981 && v479 >= 0x14)
    {
      v105 = glpLinkerGetInfoLog(v17);
      *&v499 = "-1";
      *(&v499 + 1) = 0xEDA00000002;
      *&v500 = 0xFFFFFFFFLL;
      glpLogMessage(v105, 0, &v499, "Exceeded max transform feedback separate components of %d, with %d.");
      return 0;
    }

    if (!v24)
    {
      return v24;
    }
  }

  if (!a5 || (v107 = *(a5 + 32), !v107))
  {
    v109 = 0x80000000;
    if (v13)
    {
      goto LABEL_204;
    }

LABEL_201:
    if (!a5)
    {
      goto LABEL_507;
    }

LABEL_332:
    v301 = v24;
    v469 = &v469;
    MEMORY[0x28223BE20](StringHash);
    v488 = &v469 - ((v302 + 15) & 0xFFFFFFFF0);
    bzero(v488, v302);
    v303 = *(a5 + 32);
    if (v303)
    {
      v304 = 0;
      v305 = (*(a5 + 40) + 16);
      while (1)
      {
        v306 = *(v305 - 2);
        if (v306)
        {
          break;
        }

LABEL_357:
        v305 += 4;
        if (!--v303)
        {
          goto LABEL_360;
        }
      }

      v308 = *(v305 - 1);
      v307 = *v305;
      if (*v305 < 3)
      {
        goto LABEL_346;
      }

      v309 = *v308;
      if (v309 == 103)
      {
        v310 = *(v308 + 1);
        if (v310 == 108)
        {
          v310 = *(v308 + 2);
          v311 = 95;
        }

        else
        {
          v311 = 108;
        }

        if (v311 == v310)
        {
          goto LABEL_356;
        }
      }

      else if (103 == v309)
      {
        goto LABEL_356;
      }

      if (v307 < 9 || (StringHash = strncmp("$ib$", *(v305 - 1), 4uLL), StringHash) || (StringHash = strncmp("$gl_", v308 + 5, 4uLL), StringHash))
      {
LABEL_346:
        if (!v307)
        {
          goto LABEL_355;
        }

        if (*v308 != 36)
        {
          goto LABEL_355;
        }

        if (v307 >= 9)
        {
          StringHash = strncmp("$ib$", v308, 4uLL);
          if (!StringHash)
          {
            StringHash = strncmp("$gl_", v308 + 5, 4uLL);
            if (!StringHash)
            {
              goto LABEL_355;
            }
          }
        }

        if ((v307 & 0xFFFFFFFC) != 0)
        {
          v17 = v493;
          if (v308[1] != 105 || v308[2] != 98)
          {
            goto LABEL_357;
          }

          if (v308[3] == 36)
          {
LABEL_355:
            *&v488[8 * v304++] = v306;
          }
        }
      }

LABEL_356:
      v17 = v493;
      goto LABEL_357;
    }

    v304 = 0;
LABEL_360:
    if (*(v17 + 296))
    {
      qsort(v488, v304, 8uLL, compareVariableObjectsLocationFirstNameSecond);
    }

    v13 = v489;
    if (!v304)
    {
      v24 = v301;
LABEL_437:
      a5 = v490;
      if (v13)
      {
        goto LABEL_438;
      }

      goto LABEL_507;
    }

    v312 = 0;
    if (v484 == 1)
    {
      v313 = 5;
    }

    else
    {
      v313 = 3;
    }

    LODWORD(v472) = v313;
    v470 = v17 + 276;
    v485 = v304;
    v24 = v301;
    while (1)
    {
      v314 = *&v488[8 * v312];
      v510[0] = *(v314 + 15);
      v509 = *v314;
      v507 = 0u;
      v508 = 0u;
      v505 = 0u;
      v506 = 0u;
      v503 = 0u;
      v504 = 0u;
      v502 = 0u;
      v501 = 0u;
      v500 = 0u;
      v499 = 0u;
      v315 = *v314;
      v500 = v314[1];
      v316 = v314[2];
      v317 = v314[3];
      v318 = v314[5];
      v503 = v314[4];
      v504 = v318;
      v502 = v317;
      v501 = v316;
      v319 = v314[6];
      v320 = v314[7];
      v321 = v314[9];
      v507 = v314[8];
      v508 = v321;
      v505 = v319;
      v506 = v320;
      v499 = v315;
      v322 = *(v314 + 2);
      v323 = *(v314 + 3);
      v324 = *(v314 + 1);
      if (v324)
      {
        v325 = glpLayoutObjectFind(v324, 79) != 0;
        if (!v13)
        {
          break;
        }
      }

      else
      {
        v325 = 0;
        if (!v13)
        {
          break;
        }
      }

      if (*(v17 + 296))
      {
        break;
      }

      v326 = inputForOutput(v13, v322, v323);
      if (!v326)
      {
        break;
      }

      v327 = v326;
      v498 = *(v326 + 120);
      v497 = *v326;
      InputOutputBitsType = getInputOutputBitsType(v17, v492, v326, &v498, &v497, v484, v510, &v509);
      StringHash = v509;
      *(&v506 + 1) = v510[0];
      *&v499 = v509;
      if (v24)
      {
        v329 = InputOutputBitsType == 0;
      }

      else
      {
        v329 = 1;
      }

      v24 = !v329;
      if (InputOutputBitsType)
      {
        if (!glpTypesEqual(v509, v497) || ((*(v327 + 48) ^ *(v314 + 6)) & 0x6F000000000) != 0)
        {
          v330 = v325;
          v331 = glpLinkerGetInfoLog(v17);
          glpLanguageToString(v492);
          glpLanguageToString(v484);
          v494 = "-1";
          v495 = 0xEDA00000002;
          v496 = 0xFFFFFFFFLL;
          v13 = v489;
          v17 = v493;
          v332 = v331;
          v325 = v330;
          glpLogMessage(v332, 0, &v494, "Input of %s shader '%.*s' differs in type/qualifiers to that written by %s shader");
          goto LABEL_383;
        }

        if (v24)
        {
          LODWORD(v483) = v325;
          SizeInBits = BitSetGetSizeInBits(*(&v506 + 1));
          if (SizeInBits < BitSetGetSizeInBits(v498))
          {
            glpLinkerGetAllocator();
            v383 = v382;
            v384 = BitSetGetSizeInBits(v498);
            v385 = BitSetNewWithAllocator(v384, *v383, *(v383 + 8), *(v383 + 16), *(v383 + 24));
            if (BitSetGetSizeInBits(*(&v506 + 1)))
            {
              v386 = 0;
              do
              {
                if (BitSetGetEquals(*(&v506 + 1), v386))
                {
                  BitSetSetEquals(v385, v386);
                }

                ++v386;
              }

              while (v386 < BitSetGetSizeInBits(*(&v506 + 1)));
            }

            *(&v506 + 1) = v385;
            *(v314 + 15) = v385;
            v17 = v493;
          }

          BitSetAndEquals(*(&v506 + 1), v498);
          v387 = BitSetEqualsTest(*(&v506 + 1), v498);
          v325 = v483;
          if (!v387)
          {
            v388 = glpLinkerGetInfoLog(v17);
            glpLanguageToString(v492);
            glpLanguageToString(v484);
            v494 = "-1";
            v495 = 0xEDA00000002;
            v496 = 0xFFFFFFFFLL;
            v13 = v489;
            v17 = v493;
            v389 = v388;
            v325 = v483;
            glpLogMessage(v389, 0, &v494, "Input of %s shader '%.*s' not properly written by %s shader");
            goto LABEL_383;
          }
        }

        else
        {
LABEL_383:
          v24 = 0;
        }

        v333 = 1;
LABEL_387:
        StringHash = *(v314 + 1);
        v334 = StringHash && (StringHash = glpLayoutObjectFind(StringHash, 9)) != 0 && *(StringHash + 16) != 0;
        if (*(v17 + 296))
        {
          v335 = 1;
        }

        else
        {
          v335 = v333;
        }

        if (v335)
        {
          if (!v334 && v24)
          {
            LODWORD(v483) = v325;
            glpABIGetTypeSize(0, v499, 0);
            glpTypeSizeGetSize();
            v336 = glpLinkerPoolAlloc(v17);
            *v336 = 0;
            *(v336 + 8) = 0;
            *v336 = &v499;
            v474 = *(v314 + 6);
            v337 = v474 & 0x7F00000001FLL;
            v477 = (v474 & 0x7F00000001FLL);
            if (v333)
            {
              v337 = *(v327 + 48) & 0x7F00000001FLL;
            }

            v476 = v337;
            v338 = *(v314 + 1);
            LODWORD(v487) = v24;
            v479 = v323;
            if (v338 && (v339 = glpLayoutObjectFind(v338, 26)) != 0)
            {
              LODWORD(v473) = 0;
              v471 = v339;
              v340 = remapSlotToCode[*(v339 + 4)];
              v341 = &v503;
            }

            else
            {
              v471 = 0;
              LODWORD(v475) = -1;
              v340 = 1;
              v341 = &v502;
            }

            *(v341 - 64) = v340;
            glpLinkerGetAllocator();
            LayoutObject = glpMakeLayoutObject(v349);
            glpLinkerGetAllocator();
            v494 = "-1";
            v495 = 0xEDA00000002;
            v496 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v351, 0, &v494, 0, 0, LayoutObject, 33, v472);
            glpLinkerGetAllocator();
            v494 = "-1";
            v495 = 0xEDA00000002;
            v496 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v352, 0, &v494, 0, 0, LayoutObject, 68, 17);
            glpLinkerGetAllocator();
            v494 = "-1";
            v495 = 0xEDA00000002;
            v496 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v353, 0, &v494, 0, 0, LayoutObject, 69, 0);
            glpLinkerGetAllocator();
            v494 = "-1";
            v495 = 0xEDA00000002;
            v496 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v354, 0, &v494, 0, 0, LayoutObject, 70, 1);
            glpLinkerGetAllocator();
            v356 = glpMakeLayoutObject(v355);
            glpLinkerGetAllocator();
            v494 = "-1";
            v495 = 0xEDA00000002;
            v496 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v357, 0, &v494, 0, 0, v356, 33, 0);
            glpLinkerGetAllocator();
            v494 = "-1";
            v495 = 0xEDA00000002;
            v496 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v358, 0, &v494, 0, 0, v356, 34, 28);
            glpLinkerGetAllocator();
            v494 = "-1";
            v495 = 0xEDA00000002;
            v496 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v359, 0, &v494, 0, 0, v356, 35, 0);
            glpLinkerGetAllocator();
            v494 = "-1";
            v495 = 0xEDA00000002;
            v496 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v360, 0, &v494, 0, 0, v356, 38, 1);
            v361 = 0;
            v362 = v333 ^ 1;
            if (!v491)
            {
              v362 = 1;
            }

            if ((v362 & 1) == 0)
            {
              v361 = *v491;
            }

            v363 = v475;
            SlotsWithGLPType = allocateSlotsWithGLPType(v493, *v486, v361, v336, v476, v477, LayoutObject, v356, v475, glpBuiltInConstantValues[8 * (*(v493 + 60) == 4) + 2]);
            v366 = SlotsWithGLPType;
            v24 = v487;
            v367 = v479;
            if (v484 == 1)
            {
              if (SlotsWithGLPType)
              {
                v368 = glpIntHashGet(*v486, v363);
                if (v368)
                {
                  *(v314 + 1) = *(v368 + 24);
                }
              }
            }

            v13 = v489;
            if ((v483 & 1) == 0)
            {
              *(v470 + 4 * v484) += *(v336 + 8);
            }

            v369 = v493;
            if (!v366)
            {
              v370 = glpLinkerGetInfoLog(v493);
              v371 = 4 * glpBuiltInConstantValues[8 * (*(v369 + 60) == 4) + 2];
              v372 = *(v314 + 4);
              v373 = *(v314 + 10);
              v374 = "patch";
              if ((v474 & 0x20000000000) == 0)
              {
                v374 = "varying";
              }

              v494 = "-1";
              v495 = 0xEDA00000002;
              v496 = 0xFFFFFFFFLL;
              v365 = glpLogMessage(v370, 0, &v494, "Implementation limit of %d %s components exceeded. Unable to allocate '%.*s'.", v371, v374, v373, v372);
              v24 = 0;
              if ((v473 & 1) == 0)
              {
                v375 = glpLinkerGetInfoLog(v369);
                v376 = *(v314 + 4);
                v377 = *(v471 + 4);
                v378 = *(v314 + 10);
                v494 = "-1";
                v495 = 0xEDA00000002;
                v496 = 0xFFFFFFFFLL;
                v365 = glpLogMessage(v375, 0, &v494, "Or active varying aliasing. One or more slots starting at %d unavailable for '%.*s' from layout location request.", v377, v378, v376);
                v24 = 0;
              }
            }

            *v336 = v314;
            glpStringHashPut(*v478, v322, v367, v365, v336);
            v379 = glpLinkerPoolAlloc(v369);
            *v379 = 0;
            v379[1] = 0;
            *v379 = -1;
            v379[1] = *v314;
            StringHash = glpStringHashPut(*v480, v322, v367, v380, v379);
            v17 = v369;
          }
        }

        else if (*(v314 + 112) == 0 && !v334)
        {
          v342 = v24;
          v343 = glpLinkerGetInfoLog(v17);
          v344 = glpLanguageToString(v484);
          v345 = *(v314 + 10);
          v346 = *(v314 + 4);
          if (v13)
          {
            v347 = glpLanguageToString(v492);
            v348 = "shader";
          }

          else
          {
            v348 = "stage";
            v347 = "next";
          }

          v494 = "-1";
          v495 = 0xEDA00000002;
          v496 = 0xFFFFFFFFLL;
          glpLogMessage(v343, 1, &v494, "Output of %s shader '%.*s' not read by %s %s", v344, v345, v346, v347, v348);
          v17 = v493;
          v24 = v342;
        }
      }

      if (++v312 == v485)
      {
        goto LABEL_437;
      }
    }

    v333 = 0;
    v327 = 0;
    if (glpTypeGetKind(v499) == 3)
    {
      *&v499 = glpBankTypeGetElementType(v499);
    }

    goto LABEL_387;
  }

  v108 = 0;
  v473 = v17 + 276;
  v109 = 0x80000000;
  do
  {
    v110 = (*(a5 + 40) + 32 * v108);
    v111 = *v110;
    if (!*v110)
    {
      goto LABEL_199;
    }

    v113 = v110[1];
    v112 = v110[2];
    v510[0] = *(v111 + 120);
    StringHash = *(v111 + 8);
    v509 = *v111;
    if (StringHash)
    {
      StringHash = glpLayoutObjectFind(StringHash, 28);
      if (StringHash)
      {
        goto LABEL_198;
      }

      StringHash = glpLayoutObjectFind(*(v111 + 8), 29);
      if (StringHash)
      {
        goto LABEL_198;
      }
    }

    v507 = 0u;
    v508 = 0u;
    v505 = 0u;
    v506 = 0u;
    v503 = 0u;
    v504 = 0u;
    v502 = 0u;
    v501 = 0u;
    v500 = 0u;
    v499 = 0u;
    v114 = *v111;
    v500 = *(v111 + 16);
    v499 = v114;
    v115 = *(v111 + 32);
    v116 = *(v111 + 48);
    v117 = *(v111 + 80);
    v503 = *(v111 + 64);
    v504 = v117;
    v502 = v116;
    v501 = v115;
    v118 = *(v111 + 96);
    v119 = *(v111 + 112);
    v120 = *(v111 + 144);
    v507 = *(v111 + 128);
    v508 = v120;
    v505 = v118;
    v506 = v119;
    if (v112 < 3)
    {
      goto LABEL_198;
    }

    v477 = v112;
    v121 = *v113;
    if (v121 == 103)
    {
      v122 = v113[1];
      if (v122 == 108)
      {
        v122 = v113[2];
        v123 = 95;
      }

      else
      {
        v123 = 108;
      }

      if (v123 == v122)
      {
        goto LABEL_128;
      }
    }

    else if (103 == v121)
    {
      goto LABEL_128;
    }

    if (v477 < 9)
    {
      goto LABEL_198;
    }

    StringHash = strncmp("$ib$", v113, 4uLL);
    if (StringHash)
    {
      goto LABEL_198;
    }

    StringHash = strncmp("$gl_", v113 + 5, 4uLL);
    if (StringHash)
    {
      goto LABEL_198;
    }

LABEL_128:
    if (v477)
    {
      if (v121 == 36)
      {
        if (v477 < 9)
        {
          goto LABEL_198;
        }

        StringHash = strncmp("$ib$", v113, 4uLL);
        if (StringHash)
        {
          goto LABEL_198;
        }

        StringHash = strncmp("$gl_", v113 + 5, 4uLL);
        if (StringHash)
        {
          goto LABEL_198;
        }
      }
    }

    v124 = *(v111 + 8);
    if (!v124)
    {
      LODWORD(v474) = 0;
LABEL_138:
      v126 = 0;
      if (!v13)
      {
        goto LABEL_153;
      }

      goto LABEL_139;
    }

    LODWORD(v474) = glpLayoutObjectFind(v124, 79) != 0;
    v125 = *(v111 + 8);
    if (!v125)
    {
      goto LABEL_138;
    }

    v126 = glpLayoutObjectFind(v125, 80) != 0;
    if (!v13)
    {
      goto LABEL_153;
    }

LABEL_139:
    if (*(v493 + 296) || (v127 = inputForOutput(v13, v113, v477), v127 == 0 || !v126) || !*(v111 + 128) || (v128 = v127, !*(v127 + 128)))
    {
LABEL_153:
      if (glpTypeGetKind(v499) == 3)
      {
        *&v499 = glpBankTypeGetElementType(v499);
      }

LABEL_155:
      glpABIGetTypeSize(0, v499, 0);
      glpTypeSizeGetSize();
      v137 = v136;
      StringHash = glpLinkerPoolAlloc(v493);
      *StringHash = 0;
      *(StringHash + 8) = 0;
      v488 = StringHash;
      *StringHash = &v499;
      if (v24)
      {
        v138 = *(v111 + 48);
        v139 = glpLayoutObjectFind(*(v111 + 8), 78);
        if (v139)
        {
          glpIntHashPut(*v486, *(v139 + 4), -1, v140);
        }

        LODWORD(v487) = v24;
        v141 = glpLayoutObjectFind(*(v111 + 8), 69);
        v483 = v111;
        v472 = v108;
        if (v141)
        {
          v142 = v493;
          glpLinkerGetAllocator();
          v144 = glpCopyLayoutObject(v143, *(v111 + 8));
          v145 = glpLayoutObjectFind(v144, 69);
          v146 = *(v145 + 4);
          *(v145 + 4) = 0;
          v147 = allocateSlotsWithGLPType(v142, *v486, 0, v488, v138 & 0x7F00000001FLL, v138 & 0x7F00000001FLL, v144, 0, v146, 0x20u);
          if (v484 == 1 && v147)
          {
            *(v111 + 8) = *(glpIntHashGet(*v486, v146) + 24);
          }
        }

        else
        {
          v149 = glpLinkerPoolAlloc(v493);
          v476 = v137;
          v479 = glpLinkerPoolAlloc(v493);
          glpTypeGetAppleVec4Types(v499, v149, 1, 0, 0, v479, 0, 0, 0);
          if (glpLayoutObjectFind(*(v111 + 8), 31))
          {
            if (v137)
            {
              v150 = 0;
              v151 = 0;
              v152 = 0;
              v153 = 0;
              v154 = 0;
              v485 = (v488 + 16);
              v475 = v113;
              do
              {
                if (glpPrimitiveTypeGetScalarCount(v149[v150]))
                {
                  v155 = 0;
                  do
                  {
                    if (v153 <= 3)
                    {
                      v156 = v154;
                    }

                    else
                    {
                      v156 = 0;
                    }

                    if (v153 <= 3)
                    {
                      v157 = v153;
                    }

                    else
                    {
                      v157 = 0;
                    }

                    if (v153 > 3)
                    {
                      ++v152;
                    }

                    if (BitSetGetEquals(*(&v506 + 1), v150))
                    {
                      if (v156)
                      {
                        v158 = v151;
                      }

                      else
                      {
                        v159 = v493;
                        v154 = glpLinkerPoolAlloc(v493);
                        *v154 = 0u;
                        *(v154 + 16) = 0u;
                        glpIntHashPut(*v486, v109, v154, 0.0);
                        v160 = v483;
                        *(v154 + 8) = *(v483 + 48) & 0x7F00000001FLL | (v479[v150] >> 3);
                        *(v154 + 4) = glpPrimitiveTypeGetScalarType(v149[v150]);
                        *(v154 + 24) = offsetLayout(v159, *(v160 + 8), v152);
                        v158 = v109;
                        v109 = (v109 + 1);
                      }

                      v161 = v488;
                      v162 = *(v488 + 2);
                      v163 = (v485 + 8 * v162);
                      v151 = v158;
                      *v163 = v158;
                      v163[1] = v157;
                      *(v161 + 2) = v162 + 1;
                      *v154 |= 1 << v157;
                      ScalarType = glpPrimitiveTypeGetScalarType(v149[v150]);
                      v165 = componentCountForSet(*v154);
                      *(v154 + 4) = glpGetVectorType(ScalarType, v165);
                      v156 = v154;
                    }

                    else
                    {
                      v154 = v156;
                    }

                    ++v155;
                    v153 = v157 + 1;
                  }

                  while (v155 < glpPrimitiveTypeGetScalarCount(v149[v150]));
                }

                else
                {
                  v156 = v154;
                }

                ++v150;
                v154 = v156;
                a5 = v490;
                v113 = v475;
              }

              while (v150 != v476);
            }
          }

          else if (v137)
          {
            v166 = 0;
            v167 = v488 + 16;
            v475 = v113;
            do
            {
              if (BitSetGetEquals(*(&v506 + 1), v166))
              {
                v168 = glpLinkerPoolAlloc(v493);
                *v168 = 0u;
                *(v168 + 16) = 0u;
                glpIntHashPut(*v486, v109, v168, 0.0);
                v169 = v488;
                if (glpPrimitiveTypeGetScalarCount(v149[v166]))
                {
                  v170 = 0;
                  do
                  {
                    v171 = *(v169 + 2);
                    v172 = &v167[8 * v171];
                    *v172 = v109;
                    *(v172 + 1) = v170;
                    *(v169 + 2) = v171 + 1;
                    *v168 |= 1 << v170++;
                  }

                  while (v170 < glpPrimitiveTypeGetScalarCount(v149[v166]));
                }

                v173 = v483;
                *(v168 + 8) = *(v483 + 48) & 0x7F00000001FLL | (v479[v166] >> 3);
                *(v168 + 4) = v149[v166];
                *(v168 + 24) = offsetLayout(v493, *(v173 + 8), v166);
                v109 = (v109 + 1);
                v113 = v475;
              }

              ++v166;
            }

            while (v166 != v476);
          }
        }

        v174 = v488;
        v175 = v483;
        *v488 = v483;
        v176 = v477;
        glpStringHashPut(*v478, v113, v477, v148, v174);
        if ((v474 & 1) == 0)
        {
          *(v473 + 4 * v484) += *(v174 + 2);
        }

        v17 = v493;
        v177 = glpLinkerPoolAlloc(v493);
        *v177 = 0;
        v177[1] = 0;
        *v177 = -1;
        v177[1] = *v175;
        StringHash = glpStringHashPut(*v480, v113, v176, v178, v177);
        v13 = v489;
        v24 = v487;
        v108 = v472;
      }

      else
      {
        v17 = v493;
      }

      goto LABEL_198;
    }

    v498 = *(v127 + 120);
    v497 = *v127;
    v17 = v493;
    v129 = getInputOutputBitsType(v493, v492, v127, &v498, &v497, v484, v510, &v509);
    StringHash = v509;
    *(&v506 + 1) = v510[0];
    *&v499 = v509;
    if (v24)
    {
      v130 = v129 == 0;
    }

    else
    {
      v130 = 1;
    }

    v24 = !v130;
    if (v129)
    {
      if (!glpTypesEqual(v509, v497) || ((*(v128 + 48) ^ *(v111 + 48)) & 0x6F000000000) != 0)
      {
        v131 = glpLinkerGetInfoLog(v493);
        v132 = glpLanguageToString(v492);
        v133 = *(v128 + 32);
        v134 = *(v128 + 40);
        v135 = glpLanguageToString(v484);
        v494 = "-1";
        v495 = 0xEDA00000002;
        v496 = 0xFFFFFFFFLL;
        glpLogMessage(v131, 0, &v494, "Input of %s shader '%.*s' differs in type/qualifiers to that written by %s shader", v132, v134, v133, v135);
        v24 = 0;
      }

      goto LABEL_155;
    }

LABEL_198:
    v107 = *(a5 + 32);
LABEL_199:
    ++v108;
  }

  while (v108 < v107);
  if (!v13)
  {
    goto LABEL_201;
  }

LABEL_204:
  if (*(v13 + 32))
  {
    v179 = 0;
    v473 = v17 + 256;
    while (1)
    {
      v180 = *(v13 + 40) + 32 * v179;
      v181 = *v180;
      if (!*v180)
      {
        goto LABEL_265;
      }

      v182 = *(v180 + 8);
      v183 = *(v180 + 16);
      StringHash = v181[1];
      if (StringHash)
      {
        v184 = *(v180 + 8);
        StringHash = glpLayoutObjectFind(StringHash, 28);
        if (StringHash)
        {
          goto LABEL_265;
        }

        StringHash = glpLayoutObjectFind(v181[1], 29);
        v182 = v184;
        if (StringHash)
        {
          goto LABEL_265;
        }
      }

      v488 = v181;
      if (v183 >= 3)
      {
        break;
      }

LABEL_225:
      if (v492 != 4 || (v181[6] & 0x40000000) == 0)
      {
        goto LABEL_265;
      }

      v477 = v182;
      v190 = v181[1];
      if (v190)
      {
        LODWORD(v475) = glpLayoutObjectFind(v190, 79) != 0;
      }

      else
      {
        LODWORD(v475) = 0;
      }

      v191 = v181[15];
      v192 = *v181;
      LODWORD(v479) = v24 != 0;
      v507 = 0u;
      v508 = 0u;
      v505 = 0u;
      v506 = 0u;
      v503 = 0u;
      v504 = 0u;
      v502 = 0u;
      v501 = 0u;
      v500 = 0u;
      v499 = 0u;
      v193 = *(v181 + 8);
      v194 = *(v181 + 9);
      v195 = *(v181 + 6);
      v506 = *(v181 + 7);
      v196 = *(v181 + 1);
      v499 = *v181;
      v500 = v196;
      v197 = *(v181 + 2);
      v198 = *(v181 + 3);
      v199 = *(v181 + 5);
      v503 = *(v181 + 4);
      v504 = v199;
      v502 = v198;
      v501 = v197;
      v507 = v193;
      v508 = v194;
      v505 = v195;
      *(&v506 + 1) = v191;
      *&v499 = v192;
      v200 = glpTypeGetKind(v192);
      v201 = v499;
      if (v200 == 3)
      {
        v201 = glpBankTypeGetElementType(v499);
      }

      glpABIGetTypeSize(0, v201, 0);
      glpTypeSizeGetSize();
      v203 = v202;
      StringHash = glpLinkerPoolAlloc(v493);
      *StringHash = &v499;
      *(StringHash + 8) = 0;
      if (v24)
      {
        v204 = StringHash;
        v474 = v179;
        v205 = v181[1];
        if (v205)
        {
          v206 = glpLayoutObjectFind(v205, 78);
          if (v206)
          {
            glpIntHashPut(*v491, *(v206 + 4), -1, v207);
          }
        }

        v208 = glpLinkerPoolAlloc(v493);
        v487 = v203;
        v485 = glpLinkerPoolAlloc(v493);
        v209 = v499;
        if (glpTypeGetKind(v499) == 3)
        {
          v209 = glpBankTypeGetElementType(v209);
        }

        glpTypeGetAppleVec4Types(v209, v208, 1, 0, 0, v485, 0, 0, 0);
        v210 = v181[1];
        if (v210)
        {
          v211 = glpLayoutObjectFind(v210, 26);
        }

        else
        {
          v211 = 0;
        }

        v214 = glpStringHashGet(*(v493 + 80), v181[2], v181[3]);
        if (v211)
        {
          v214 = v211 + 2;
          goto LABEL_247;
        }

        if (v214)
        {
LABEL_247:
          LODWORD(v483) = *v214;
        }

        else
        {
          LODWORD(v483) = 0;
        }

        v476 = v183;
        if (v203)
        {
          v215 = 0;
          do
          {
            if (BitSetGetEquals(*(&v506 + 1), v215))
            {
              v216 = glpLinkerPoolAlloc(v493);
              *v216 = 0u;
              *(v216 + 16) = 0u;
              glpIntHashPut(*v491, v109, v216, 0.0);
              if (glpPrimitiveTypeGetScalarCount(v208[v215]))
              {
                v217 = 0;
                do
                {
                  v218 = *(v204 + 8);
                  v219 = (v204 + 16 + 8 * v218);
                  *v219 = v109;
                  v219[1] = v217;
                  *(v204 + 8) = v218 + 1;
                  *v216 |= 1 << v217++;
                }

                while (v217 < glpPrimitiveTypeGetScalarCount(v208[v215]));
              }

              *(v216 + 8) = v181[6] & 0x7F00000001FLL | (*(v485 + v215) >> 3);
              *(v216 + 4) = v208[v215];
              glpLinkerGetAllocator();
              v221 = glpCopyLayoutObject(v220, *(v216 + 24));
              *(v216 + 24) = v221;
              if (!v221)
              {
                glpLinkerGetAllocator();
                *(v216 + 24) = glpMakeLayoutObject(v222);
              }

              glpLinkerGetAllocator();
              v223 = *(v216 + 24);
              v494 = "-1";
              v495 = 0xEDA00000002;
              v496 = 0xFFFFFFFFLL;
              glpLayoutObjectAppendInteger(v224, 0, &v494, 0, 0, v223, 33, 0);
              glpLinkerGetAllocator();
              v225 = *(v216 + 24);
              v494 = "-1";
              v495 = 0xEDA00000002;
              v496 = 0xFFFFFFFFLL;
              glpLayoutObjectAppendInteger(v226, 0, &v494, 0, 0, v225, 34, 27);
              glpLinkerGetAllocator();
              v227 = *(v216 + 24);
              v494 = "-1";
              v495 = 0xEDA00000002;
              v496 = 0xFFFFFFFFLL;
              glpLayoutObjectAppendInteger(v228, 0, &v494, 0, 0, v227, 45, v483 + v215);
              v109 = (v109 + 1);
              v181 = v488;
            }

            ++v215;
          }

          while (v215 != v487);
        }

        v17 = v493;
        v229 = propagateCopyBindings(v493, v181, v204);
        v230 = v476;
        glpStringHashPut(*v481, v477, v476, v231, v229);
        v13 = v489;
        v179 = v474;
        if ((v475 & 1) == 0)
        {
          if (glpTypeGetKind(v499) == 3)
          {
            v232 = glpBankTypeGetElementCount(v499);
          }

          else
          {
            v232 = 1;
          }

          *(v493 + 272) += *(v229 + 2) * v232;
        }

        v233 = glpLinkerPoolAlloc(v17);
        *v233 = 0;
        v233[1] = 0;
        *v233 = -1;
        v233[1] = *v181;
        StringHash = glpStringHashPut(*v482, v477, v230, v234, v233);
        goto LABEL_264;
      }

      v17 = v493;
LABEL_264:
      v24 = v479;
LABEL_265:
      if (++v179 >= *(v13 + 32))
      {
        goto LABEL_318;
      }
    }

    v185 = *v182;
    if (v185 == 103)
    {
      v186 = *(v182 + 1);
      if (v186 == 108)
      {
        v186 = *(v182 + 2);
        v187 = 95;
      }

      else
      {
        v187 = 108;
      }

      if (v187 != v186)
      {
        goto LABEL_218;
      }
    }

    else if (103 != v185)
    {
LABEL_218:
      if (v183 < 9)
      {
        goto LABEL_225;
      }

      v188 = v182;
      StringHash = strncmp("$ib$", v182, 4uLL);
      v182 = v188;
      if (StringHash)
      {
        goto LABEL_225;
      }

      StringHash = strncmp("$gl_", v188 + 5, 4uLL);
      v182 = v188;
      if (StringHash)
      {
        goto LABEL_225;
      }
    }

    if (v185 != 36 || v183 >= 9 && (v189 = v182, StringHash = strncmp("$ib$", v182, 4uLL), v182 = v189, !StringHash) && (StringHash = strncmp("$gl_", v189 + 5, 4uLL), v182 = v189, !StringHash))
    {
      v477 = v182;
      v212 = v181[1];
      if (v212)
      {
        v213 = glpLayoutObjectFind(v212, 79) != 0;
      }

      else
      {
        v213 = 0;
      }

      v235 = v181[15];
      v494 = v235;
      v236 = *v181;
      v510[0] = *v181;
      if (v24)
      {
        v24 = getInputOutputBitsType(v17, v492, v181, &v494, v510, 5, 0, 0) != 0;
        v235 = v494;
        v236 = v510[0];
      }

      v507 = 0u;
      v508 = 0u;
      v505 = 0u;
      v506 = 0u;
      v503 = 0u;
      v504 = 0u;
      v502 = 0u;
      v501 = 0u;
      v500 = 0u;
      v499 = 0u;
      v237 = *(v181 + 8);
      v238 = *(v181 + 9);
      v239 = *(v181 + 6);
      v506 = *(v181 + 7);
      v240 = *(v181 + 1);
      v499 = *v181;
      v500 = v240;
      v241 = *(v181 + 2);
      v242 = *(v181 + 3);
      v243 = *(v181 + 5);
      v503 = *(v181 + 4);
      v504 = v243;
      v502 = v242;
      v501 = v241;
      v507 = v237;
      v508 = v238;
      v505 = v239;
      *(&v506 + 1) = v235;
      *&v499 = v236;
      v244 = glpTypeGetKind(v236);
      v245 = v499;
      if (v244 == 3)
      {
        v245 = glpBankTypeGetElementType(v499);
      }

      glpABIGetTypeSize(0, v245, 0);
      glpTypeSizeGetSize();
      v247 = v246;
      StringHash = glpLinkerPoolAlloc(v493);
      *StringHash = 0;
      *(StringHash + 8) = 0;
      v485 = StringHash;
      *StringHash = &v499;
      if (v24)
      {
        LODWORD(v472) = v213;
        v248 = v181[6];
        v249 = glpLayoutObjectFind(v181[1], 78);
        if (v249)
        {
          glpIntHashPut(*v491, *(v249 + 4), -1, v250);
        }

        v474 = v179;
        if (glpLayoutObjectFind(v181[1], 35))
        {
          v251 = v493;
          glpLinkerGetAllocator();
          v253 = glpCopyLayoutObject(v252, v181[1]);
          v254 = glpLayoutObjectFind(v253, 35);
          v255 = *(v254 + 4);
          *(v254 + 4) = 0;
          allocateSlotsWithGLPType(v251, 0, *v491, v485, v248 & 0x7F00000001FLL, v248 & 0x7F00000001FLL, 0, v253, v255, 0x20u);
        }

        else
        {
          v260 = glpLinkerPoolAlloc(v493);
          v475 = v247;
          v479 = glpLinkerPoolAlloc(v493);
          v261 = v499;
          if (glpTypeGetKind(v499) == 3)
          {
            v261 = glpBankTypeGetElementType(v261);
          }

          glpTypeGetAppleVec4Types(v261, v260, 1, 0, 0, v479, 0, 0, 0);
          v262 = glpLayoutObjectFind(v181[1], 31);
          LODWORD(v487) = v24;
          if (v262)
          {
            if (v247)
            {
              v263 = 0;
              v264 = 0;
              v265 = 0;
              v266 = 0;
              v267 = 0;
              v483 = v485 + 16;
              v476 = v183;
              do
              {
                if (glpPrimitiveTypeGetScalarCount(v260[v263]))
                {
                  v268 = 0;
                  do
                  {
                    v269 = v266 > 3;
                    if (v266 <= 3)
                    {
                      v270 = v267;
                    }

                    else
                    {
                      v270 = 0;
                    }

                    if (v266 > 3)
                    {
                      v266 = 0;
                    }

                    if (v269)
                    {
                      ++v265;
                    }

                    if (BitSetGetEquals(*(&v506 + 1), v263))
                    {
                      if (!v270)
                      {
                        v271 = v493;
                        v267 = glpLinkerPoolAlloc(v493);
                        *v267 = 0u;
                        *(v267 + 16) = 0u;
                        glpIntHashPut(*v491, v109, v267, 0.0);
                        v272 = v488;
                        *(v267 + 8) = *(v488 + 6) & 0x7F00000001FLL | (v479[v263] >> 3);
                        *(v267 + 4) = glpPrimitiveTypeGetScalarType(v260[v263]);
                        *(v267 + 24) = offsetLayout(v271, *(v272 + 1), v265);
                        v264 = v109;
                        v109 = (v109 + 1);
                      }

                      v273 = v485;
                      v274 = *(v485 + 8);
                      v275 = (v483 + 8 * v274);
                      *v275 = v264;
                      v275[1] = v266;
                      *(v273 + 8) = v274 + 1;
                      *v267 |= 1 << v266;
                      v276 = glpPrimitiveTypeGetScalarType(v260[v263]);
                      v277 = componentCountForSet(*v267);
                      *(v267 + 4) = glpGetVectorType(v276, v277);
                      v270 = v267;
                    }

                    else
                    {
                      v267 = v270;
                    }

                    ++v268;
                    ++v266;
                  }

                  while (v268 < glpPrimitiveTypeGetScalarCount(v260[v263]));
                }

                else
                {
                  v270 = v267;
                }

                ++v263;
                v267 = v270;
                v24 = v487;
                v183 = v476;
              }

              while (v263 != v475);
            }
          }

          else if (v247)
          {
            v280 = 0;
            v281 = (v485 + 16);
            do
            {
              if (BitSetGetEquals(*(&v506 + 1), v280))
              {
                v282 = glpLinkerPoolAlloc(v493);
                *v282 = 0u;
                *(v282 + 16) = 0u;
                glpIntHashPut(*v491, v109, v282, 0.0);
                v283 = v485;
                if (glpPrimitiveTypeGetScalarCount(v260[v280]))
                {
                  v284 = 0;
                  do
                  {
                    v285 = *(v283 + 8);
                    v286 = &v281[8 * v285];
                    *v286 = v109;
                    v286[1] = v284;
                    *(v283 + 8) = v285 + 1;
                    *v282 |= 1 << v284++;
                  }

                  while (v284 < glpPrimitiveTypeGetScalarCount(v260[v280]));
                }

                v287 = v488;
                *(v282 + 8) = *(v488 + 6) & 0x7F00000001FLL | (v479[v280] >> 3);
                *(v282 + 4) = v260[v280];
                *(v282 + 24) = offsetLayout(v493, *(v287 + 1), v280);
                v109 = (v109 + 1);
                v24 = v487;
              }

              ++v280;
            }

            while (v280 != v475);
          }
        }

        v17 = v493;
        v256 = v488;
        v257 = propagateCopyBindings(v493, v488, v485);
        glpStringHashPut(*v481, v477, v183, v258, v257);
        v13 = v489;
        v179 = v474;
        if ((v472 & 1) == 0)
        {
          if (glpTypeGetKind(v499) == 3)
          {
            v259 = glpBankTypeGetElementCount(v499);
          }

          else
          {
            v259 = 1;
          }

          *(v473 + 4 * v492) += *(v257 + 2) * v259;
        }

        v278 = glpLinkerPoolAlloc(v17);
        *v278 = 0;
        v278[1] = 0;
        *v278 = -1;
        v278[1] = *v256;
        StringHash = glpStringHashPut(*v482, v477, v183, v279, v278);
      }

      else
      {
        v17 = v493;
      }

      goto LABEL_265;
    }

    goto LABEL_225;
  }

LABEL_318:
  a5 = v490;
  if (v490)
  {
    v288 = v24;
    v289 = *v486;
    if (*(*v486 + 32))
    {
      v290 = 0;
      v291 = 0;
      do
      {
        v292 = *(v289 + 40);
        if (*(v292 + v290))
        {
          v293 = *(v292 + v290 + 8);
          StringHash = glpIntHashGet(*v491, *(v292 + v290 + 8));
          if (!StringHash)
          {
            StringHash = glpIntHashPut(*v491, v293, -1, v294);
          }
        }

        ++v291;
        v290 += 16;
      }

      while (v291 < *(v289 + 32));
    }

    v295 = *v491;
    if (*(*v491 + 32))
    {
      v296 = 0;
      v297 = 0;
      do
      {
        v298 = *(v295 + 40);
        if (*(v298 + v296))
        {
          v299 = *(v298 + v296 + 8);
          StringHash = glpIntHashGet(*v486, *(v298 + v296 + 8));
          if (!StringHash)
          {
            StringHash = glpIntHashPut(*v486, v299, -1, v300);
          }
        }

        ++v297;
        v296 += 16;
      }

      while (v297 < *(v295 + 32));
    }

    v17 = v493;
    v24 = v288;
    goto LABEL_332;
  }

LABEL_438:
  v390 = v24;
  v477 = &v469;
  MEMORY[0x28223BE20](StringHash);
  v392 = &v469 - ((v391 + 15) & 0xFFFFFFFF0);
  bzero(v392, v391);
  v393 = *(v13 + 32);
  if (v393)
  {
    v394 = 0;
    v395 = (*(v13 + 40) + 16);
    do
    {
      v396 = *(v395 - 2);
      if (v396)
      {
        v397 = *(v395 - 1);
        v398 = *v395;
        if (*v395 < 3 || ((v399 = *v397, v399 != 103) ? (v400 = 103) : (v399 = *(v397 + 1), v399 != 108) ? (v400 = 108) : (v399 = *(v397 + 2), v400 = 95), v400 != v399 && (v398 < 9 || strncmp("$ib$", *(v395 - 1), 4uLL) || strncmp("$gl_", v397 + 5, 4uLL))))
        {
          if ((!v398 || *v397 != 36 || v398 >= 9 && !strncmp("$ib$", v397, 4uLL) && !strncmp("$gl_", v397 + 5, 4uLL) || (v398 & 0xFFFFFFFC) != 0 && v397[1] == 105 && v397[2] == 98 && v397[3] == 36) && (v492 != 4 || (*(v396 + 51) & 0x40) == 0))
          {
            *&v392[8 * v394++] = v396;
          }
        }
      }

      v395 += 4;
      --v393;
    }

    while (v393);
  }

  else
  {
    v394 = 0;
  }

  v401 = v493;
  if (*(v493 + 296))
  {
    qsort(v392, v394, 8uLL, compareVariableObjectsLocationFirstNameSecond);
  }

  v13 = v489;
  v402 = v482;
  if (v394)
  {
    v403 = v394;
    v479 = (v401 + 256);
    do
    {
      v404 = *v392;
      v406 = *(*v392 + 16);
      v405 = *(*v392 + 24);
      v407 = *(*v392 + 8);
      if (v407)
      {
        v408 = glpLayoutObjectFind(v407, 79) != 0;
      }

      else
      {
        v408 = 0;
      }

      if (!*(v401 + 296))
      {
        if (v490 && (v412 = outputForInput(*v480, v406, v405)) != 0)
        {
          if (v390)
          {
            glpStringHashPut(*v402, v406, v405, v413, v412);
            v414 = outputForInput(*v478, v406, v405);
            v415 = propagateCopyBindings(v401, v404, v414);
            glpStringHashPut(*v481, v406, v405, v416, v415);
            if (!v408)
            {
              *&v479[4 * v492] += *(v415 + 2);
            }
          }
        }

        else
        {
          v448 = glpLinkerGetInfoLog(v401);
          v449 = glpLanguageToString(v492);
          v450 = *(v404 + 40);
          v451 = *(v404 + 32);
          if (v490)
          {
            v452 = glpLanguageToString(v484);
            v453 = "shader";
          }

          else
          {
            v453 = "stage";
            v452 = "previous";
          }

          *&v499 = "-1";
          *(&v499 + 1) = 0xEDA00000002;
          *&v500 = 0xFFFFFFFFLL;
          glpLogMessage(v448, 0, &v499, "Input of %s shader '%.*s' not written by %s %s", v449, v450, v451, v452, v453);
          v390 = 0;
          v401 = v493;
        }

        goto LABEL_505;
      }

      LODWORD(v488) = v408;
      v409 = *(v404 + 120);
      v510[0] = v409;
      v410 = *v404;
      v509 = *v404;
      if (v390)
      {
        v411 = getInputOutputBitsType(v401, v492, v404, v510, &v509, 5, 0, 0) != 0;
        v410 = v509;
        v409 = v510[0];
      }

      else
      {
        v411 = 0;
      }

      v507 = 0u;
      v508 = 0u;
      v505 = 0u;
      v506 = 0u;
      v503 = 0u;
      v504 = 0u;
      v502 = 0u;
      v501 = 0u;
      v500 = 0u;
      v499 = 0u;
      v417 = *(v404 + 128);
      v418 = *(v404 + 144);
      v419 = *(v404 + 96);
      v506 = *(v404 + 112);
      v420 = *(v404 + 16);
      v499 = *v404;
      v500 = v420;
      v421 = *(v404 + 32);
      v422 = *(v404 + 48);
      v423 = *(v404 + 80);
      v503 = *(v404 + 64);
      v504 = v423;
      v502 = v422;
      v501 = v421;
      v507 = v417;
      v508 = v418;
      v505 = v419;
      *(&v506 + 1) = v409;
      *&v499 = v410;
      v424 = glpTypeGetKind(v410);
      v425 = v499;
      if (v424 == 3)
      {
        v425 = glpBankTypeGetElementType(v499);
      }

      glpABIGetTypeSize(0, v425, 0);
      glpTypeSizeGetSize();
      v426 = glpLinkerPoolAlloc(v401);
      *v426 = 0;
      *(v426 + 8) = 0;
      *v426 = &v499;
      v427 = *(v404 + 48);
      v428 = *(v404 + 8);
      if (v428)
      {
        v429 = glpLayoutObjectFind(v428, 26);
        v430 = v429;
        if (v429)
        {
          v431 = 0;
          v432 = remapSlotToCode[*(v429 + 4)];
          if (!v411)
          {
            goto LABEL_487;
          }

          goto LABEL_490;
        }
      }

      else
      {
        v430 = 0;
      }

      v432 = -1;
      v431 = 1;
      if (!v411)
      {
LABEL_487:
        v390 = 0;
        v401 = v493;
LABEL_501:
        v402 = v482;
        goto LABEL_502;
      }

LABEL_490:
      LODWORD(v483) = v431;
      v486 = v406;
      v487 = v405;
      v433 = v493;
      LODWORD(v485) = v432;
      glpLinkerGetAllocator();
      v435 = glpMakeLayoutObject(v434);
      glpLinkerGetAllocator();
      v494 = "-1";
      v495 = 0xEDA00000002;
      v496 = 0xFFFFFFFFLL;
      glpLayoutObjectAppendInteger(v436, 0, &v494, 0, 0, v435, 33, 0);
      glpLinkerGetAllocator();
      v494 = "-1";
      v495 = 0xEDA00000002;
      v496 = 0xFFFFFFFFLL;
      glpLayoutObjectAppendInteger(v437, 0, &v494, 0, 0, v435, 34, 28);
      glpLinkerGetAllocator();
      v494 = "-1";
      v495 = 0xEDA00000002;
      v496 = 0xFFFFFFFFLL;
      glpLayoutObjectAppendInteger(v438, 0, &v494, 0, 0, v435, 35, 0);
      glpLinkerGetAllocator();
      v494 = "-1";
      v495 = 0xEDA00000002;
      v496 = 0xFFFFFFFFLL;
      glpLayoutObjectAppendInteger(v439, 0, &v494, 0, 0, v435, 38, 1);
      v440 = allocateSlotsWithGLPType(v433, 0, *v491, v426, v427 & 0x7F00000001FLL, v427 & 0x7F00000001FLL, 0, v435, v485, glpBuiltInConstantValues[8 * (*(v433 + 60) == 4) + 2]);
      if ((v488 & 1) == 0)
      {
        *&v479[4 * v492] += *(v426 + 8);
      }

      v441 = v487;
      v442 = v486;
      if (!v440)
      {
        v401 = v493;
        v454 = glpLinkerGetInfoLog(v493);
        v455 = 4 * glpBuiltInConstantValues[8 * (*(v401 + 60) == 4) + 2];
        v456 = *(v404 + 32);
        v457 = *(v404 + 40);
        v458 = "patch";
        if ((v427 & 0x20000000000) == 0)
        {
          v458 = "varying";
        }

        v494 = "-1";
        v495 = 0xEDA00000002;
        v496 = 0xFFFFFFFFLL;
        glpLogMessage(v454, 0, &v494, "Implementation limit of %d %s components exceeded. Unable to allocate '%.*s'.", v455, v458, v457, v456);
        if ((v483 & 1) == 0)
        {
          v459 = glpLinkerGetInfoLog(v401);
          v460 = *(v404 + 32);
          v461 = *(v430 + 4);
          v462 = *(v404 + 40);
          v494 = "-1";
          v495 = 0xEDA00000002;
          v496 = 0xFFFFFFFFLL;
          glpLogMessage(v459, 0, &v494, "Or active varying aliasing. One or more slots starting at %d unavailable for '%.*s' from layout location request.", v461, v462, v460);
        }

        v390 = 0;
        goto LABEL_501;
      }

      v443 = v426;
      v401 = v493;
      v444 = propagateCopyBindings(v493, v404, v443);
      glpStringHashPut(*v481, v442, v441, v445, v444);
      v446 = glpLinkerPoolAlloc(v401);
      *v446 = 0;
      v446[1] = 0;
      *v446 = -1;
      v446[1] = *v404;
      v402 = v482;
      glpStringHashPut(*v482, v442, v441, v447, v446);
      v390 = 1;
LABEL_502:
      v13 = v489;
LABEL_505:
      v392 += 8;
      --v403;
    }

    while (v403);
  }

  a5 = v490;
  v24 = v390;
LABEL_507:
  if (v484 != 1)
  {
    if (a5)
    {
      v463 = *(*v478 + 32);
      if (v463)
      {
        v464 = *(*v478 + 40);
        do
        {
          if (*v464)
          {
            *(**v464 + 8) = 0;
          }

          v464 += 32;
          --v463;
        }

        while (v463);
      }
    }
  }

  if (v13)
  {
    v465 = *(*v481 + 32);
    if (v465)
    {
      v466 = *(*v481 + 40);
      do
      {
        if (*v466)
        {
          v467 = **v466;
          if (v492 != 4 || (*(v467 + 48) & 0x40000000) == 0)
          {
            *(v467 + 8) = 0;
          }
        }

        v466 += 4;
        --v465;
      }

      while (v465);
    }
  }

  return v24;
}

uint64_t inputForOutput(uint64_t a1, _BYTE *a2, size_t __n)
{
  v3 = __n;
  v13[1] = *MEMORY[0x277D85DE8];
  if ((__n & 0xFFFFFFFC) != 0 && *a2 == 36 && a2[1] == 105 && a2[2] == 98 && a2[3] == 36)
  {
    v6 = __n;
    MEMORY[0x28223BE20](a1);
    v7 = v13 - ((v3 + 15) & 0x1FFFFFFF0);
    bzero(v7, v3);
    memcpy(v13 - ((v6 + 15) & 0x1FFFFFFF0), a2, v3);
    v7[4] = 105;
    if (v3)
    {
      v8 = v3 >> 5;
      v9 = ~(v3 >> 5);
      LODWORD(v10) = v3;
      do
      {
        v10 = (32 * v10 + (v10 >> 2) + v7[v3 - 1]) ^ v10;
        v3 += v9;
      }

      while (v3 > v8);
      v11 = v10 << 32;
    }

    else
    {
      v11 = 0;
    }

    return glpStringHashGet(a1, v13 - ((v6 + 15) & 0x1FFFFFFF0), v11 | v6);
  }

  else
  {

    return glpStringHashGet(a1, a2, __n);
  }
}

uint64_t getInputOutputBitsType(uint64_t a1, unsigned int a2, uint64_t a3, void *a4, uint64_t *a5, int a6, uint64_t *a7, uint64_t *a8)
{
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0;
  }

  if (a2 - 1 > 2)
  {
    return 1;
  }

  v17 = *a5;
  if (glpTypeGetKind(*a5) != 3 && isBuiltinName(*(a3 + 16), *(a3 + 24)))
  {
    return 1;
  }

  if ((*(a3 + 53) & 2) != 0)
  {
    return 1;
  }

  if (a2 != 3)
  {
    v19 = 32;
    goto LABEL_14;
  }

  v18 = *(a1 + 308);
  if (v18 > 3)
  {
    if (v18 == 4)
    {
      v19 = 3;
      goto LABEL_14;
    }

    if (v18 == 10)
    {
      v19 = 4;
      goto LABEL_14;
    }

LABEL_34:
    v19 = 6;
    goto LABEL_14;
  }

  if (!v18)
  {
    v19 = 1;
    goto LABEL_14;
  }

  if (v18 != 1)
  {
    goto LABEL_34;
  }

  v19 = 2;
LABEL_14:
  v26 = v19;
  if (glpTypeGetKind(v17) != 3)
  {
    InfoLog = glpLinkerGetInfoLog(a1);
    glpLanguageToString(a2);
    v27 = "-1";
    v28 = 0xEDA00000002;
    v29 = 0xFFFFFFFFLL;
    glpLogMessage(InfoLog, 0, &v27, "Input of %s shader '%.*s' not an array");
    return 0;
  }

  if (glpBankTypeGetElementCount(v17) != v26 && glpBankTypeGetElementCount(v17) != -1)
  {
    v20 = glpLinkerGetInfoLog(a1);
    if (a2 == 3)
    {
      v21 = glpLanguageToString(3u);
      glpBankTypeGetElementCount(v17);
      v27 = "-1";
      v28 = 0xEDA00000002;
      v29 = 0xFFFFFFFFLL;
      glpLogMessage(v20, 0, &v27, "Input of %s shader '%.*s' must be an array, with size matching input type (input type expects %u, got %u)", v21);
    }

    else
    {
      v25 = glpLanguageToString(a2);
      glpBankTypeGetElementCount(v17);
      v27 = "-1";
      v28 = 0xEDA00000002;
      v29 = 0xFFFFFFFFLL;
      glpLogMessage(v20, 0, &v27, "Input of %s shader '%.*s' must be an array, with size matching gl_MaxPatchVertices (expected %u, got %u)", v25);
    }

    return 0;
  }

  *a5 = glpBankTypeGetElementType(v17);
  if (a8)
  {
    Kind = glpTypeGetKind(*a8);
    if (a6 == 1 && Kind == 3)
    {
      *a8 = glpBankTypeGetElementType(*a8);
    }
  }

  if (a4)
  {
    *a4 = *(a3 + 120);
  }

  if (a7)
  {
    *a7 = v16;
  }

  return 1;
}

uint64_t allocateSlotsWithGLPType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, unint64_t a6, uint64_t *a7, void **a8, int a9, unsigned int a10)
{
  v12 = a4;
  glpABIGetTypeSize(0, **a4, 0);
  glpTypeSizeGetSize();
  v17 = v16;
  v18 = v16;
  v19 = glpLinkerPoolAlloc(a1);
  v101 = a1;
  v97 = v18;
  v92 = glpLinkerPoolAlloc(a1);
  v93 = v19;
  glpTypeGetAppleVec4Types(**v12, v19, 1, 0, 0, v92, 0, 0, 0);
  v94 = a5;
  if ((a5 & 0x1Fu) >= (a6 & 0x1F))
  {
    v20 = a6;
  }

  else
  {
    v20 = a6 & 0xFFFFFFFFFFFFFFE0 | a5 & 0x1F;
  }

  if (!v17)
  {
    return 1;
  }

  v21 = 0;
  v90 = v20;
  v96 = v12 + 2;
  v23 = 1;
  v102 = v12;
  v107 = (v20 >> 11) & 0x40000000;
  do
  {
    Equals = BitSetGetEquals((*v12)[15], v21);
    if (!Equals && !*(v101 + 296) || !v23)
    {
      goto LABEL_9;
    }

    v24 = v92[v21];
    v104 = v90 | (v24 >> 3);
    v105 = v94 | (v24 >> 3);
    v106 = v93[v21];
    v100 = v21;
    v25 = a10;
    if (!a10)
    {
      v23 = 0;
      v36 = a9;
      v37 = a7;
      if (a7)
      {
        goto LABEL_71;
      }

      goto LABEL_73;
    }

    v26 = remapSlotToCode;
    while (1)
    {
      v28 = *v26++;
      v27 = v28;
      v29 = v28 | v107;
      if (a2)
      {
        v30 = glpIntHashGet(a2, v29);
        if (a3)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v30 = 0;
        if (a3)
        {
LABEL_18:
          v31 = glpIntHashGet(a3, v29);
          goto LABEL_21;
        }
      }

      v31 = 0;
LABEL_21:
      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = v31;
      }

      if (v32 == -1)
      {
        goto LABEL_37;
      }

      if (v32)
      {
        break;
      }

      if (a9 == -1 || v29 == a9)
      {
        goto LABEL_41;
      }

LABEL_37:
      if (!--v25)
      {
        goto LABEL_38;
      }
    }

    v33 = *v32;
    v34 = a9 == -1 || v29 == a9;
    v35 = v34;
    if (v33 || (v35 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_41:
    if (!(v30 | v31))
    {
      if (a2)
      {
        v30 = glpLinkerPoolAlloc(v101);
        *v30 = 0u;
        *(v30 + 16) = 0u;
        glpIntHashPut(a2, v29, v30, 0.0);
        if (!a3)
        {
          if (v30)
          {
            v31 = 0;
            goto LABEL_50;
          }

LABEL_38:
          v23 = 0;
          v36 = a9;
          goto LABEL_70;
        }
      }

      else
      {
        if (!a3)
        {
          goto LABEL_38;
        }

        v30 = 0;
      }

      v31 = glpLinkerPoolAlloc(v101);
      *v31 = 0u;
      *(v31 + 16) = 0u;
      glpIntHashPut(a3, v29, v31, 0.0);
    }

    if (v30)
    {
LABEL_50:
      *(v30 + 8) = v104;
      ScalarType = glpPrimitiveTypeGetScalarType(v106);
      *(v30 + 4) = glpGetVectorType(ScalarType, 4);
      *(v30 + 24) = offsetLayout(v101, a7, v27);
      if (!v31)
      {
        v39 = 0;
        goto LABEL_55;
      }
    }

    else
    {
      if (!v31)
      {
        goto LABEL_38;
      }

      v30 = 0;
    }

    *(v31 + 8) = v105;
    v40 = glpPrimitiveTypeGetScalarType(v106);
    *(v31 + 4) = glpGetVectorType(v40, 4);
    *(v31 + 24) = offsetLayout(v101, a8, v27);
    v39 = 1;
    if (v30)
    {
LABEL_55:
      v98 = a9;
      v41 = 1;
      v42 = v30;
    }

    else
    {
      v98 = a9;
      v41 = 0;
      v42 = v31;
    }

    v43 = *v42;
    if (glpPrimitiveTypeGetScalarCount(v106))
    {
      v44 = 0;
      do
      {
        if (Equals)
        {
          v45 = *(v102 + 2);
          v46 = &v96[v45];
          *v46 = v29;
          *(v46 + 1) = v44;
          *(v102 + 2) = v45 + 1;
        }

        v43 |= 1 << v44;
        if (v41)
        {
          *v30 = v43;
          v47 = glpPrimitiveTypeGetScalarType(*(v30 + 4));
          v48 = componentCountForSet(*v30);
          *(v30 + 4) = glpGetVectorType(v47, v48);
        }

        if (v39)
        {
          *v31 = v43;
          v49 = glpPrimitiveTypeGetScalarType(*(v31 + 4));
          v50 = componentCountForSet(*v31);
          *(v31 + 4) = glpGetVectorType(v49, v50);
        }

        ++v44;
      }

      while (v44 < glpPrimitiveTypeGetScalarCount(v106));
    }

    a9 = v98;
    if (v98 == -1)
    {
      v36 = -1;
    }

    else
    {
      v36 = v98 + 1;
    }

    v23 = 1;
    v12 = v102;
LABEL_70:
    v37 = a7;
    v21 = v100;
    if (a7)
    {
LABEL_71:
      v51 = glpLayoutObjectFind(v37, 33);
      if (v51)
      {
        v52 = *(v51 + 4) == 5;
        goto LABEL_74;
      }
    }

LABEL_73:
    v52 = 0;
LABEL_74:
    if (*(v101 + 296))
    {
      v53 = 1;
    }

    else
    {
      v53 = v23;
    }

    if (v53)
    {
      goto LABEL_9;
    }

    if (v52)
    {
      goto LABEL_9;
    }

    if (v36 != -1)
    {
      goto LABEL_9;
    }

    v54 = v107;
    if (glpPrimitiveTypeGetScalarType(v106) == 62)
    {
      goto LABEL_9;
    }

    if (!glpPrimitiveTypeGetScalarCount(v106))
    {
      v23 = 1;
      goto LABEL_9;
    }

    v55 = 0;
    v99 = a9;
    while (2)
    {
      if (!a10)
      {
        v65 = 0;
        v23 = 0;
        goto LABEL_138;
      }

      v56 = remapSlotToCode;
      v57 = a10;
      while (2)
      {
        v59 = *v56++;
        v58 = v59;
        v60 = v59 | v54;
        if (a2)
        {
          v23 = glpIntHashGet(a2, v60);
          if (a3)
          {
            goto LABEL_87;
          }

LABEL_89:
          v61 = 0;
        }

        else
        {
          v23 = 0;
          if (!a3)
          {
            goto LABEL_89;
          }

LABEL_87:
          v61 = glpIntHashGet(a3, v60);
        }

        if (v23)
        {
          v62 = v23;
        }

        else
        {
          v62 = v61;
        }

        if (v62 == -1)
        {
          goto LABEL_105;
        }

        if (!v62)
        {
          goto LABEL_108;
        }

        if (*v62 == 15)
        {
          goto LABEL_105;
        }

        if (!*v62)
        {
          goto LABEL_108;
        }

        v63 = v104;
        if (!v23)
        {
          v63 = v105;
        }

        if (*(v62 + 8) != v63 || (v64 = glpPrimitiveTypeGetScalarType(*(v62 + 4)), v34 = v64 == glpPrimitiveTypeGetScalarType(v106), v54 = v107, !v34))
        {
LABEL_105:
          if (!--v57)
          {
            v65 = 0;
            v23 = 0;
            v12 = v102;
            v21 = v100;
            a9 = v99;
            goto LABEL_138;
          }

          continue;
        }

        break;
      }

      if (v23 && v61)
      {
        if (*(v61 + 8) == v105)
        {
          goto LABEL_117;
        }

        goto LABEL_105;
      }

LABEL_108:
      v12 = v102;
      a9 = v99;
      if (v23 | v61)
      {
        goto LABEL_116;
      }

      if (!a2)
      {
        if (a3)
        {
          v23 = 0;
LABEL_115:
          v61 = glpLinkerPoolAlloc(v101);
          *v61 = 0u;
          *(v61 + 16) = 0u;
          glpIntHashPut(a3, v60, v61, 0.0);
LABEL_116:
          if (v23)
          {
LABEL_117:
            *(v23 + 8) = v104;
            *(v23 + 4) = glpPrimitiveTypeGetScalarType(v106);
            *(v23 + 24) = offsetLayout(v101, a7, v58);
            if (v61)
            {
              v12 = v102;
              a9 = v99;
              goto LABEL_121;
            }

            v66 = 0;
            v12 = v102;
            a9 = v99;
LABEL_124:
            v67 = 1;
            v68 = v23;
            goto LABEL_126;
          }

          if (v61)
          {
            v23 = 0;
LABEL_121:
            *(v61 + 8) = v105;
            *(v61 + 4) = glpPrimitiveTypeGetScalarType(v106);
            *(v61 + 24) = offsetLayout(v101, a8, v58);
            v66 = 1;
            if (v23)
            {
              goto LABEL_124;
            }

            v67 = 0;
            v68 = v61;
LABEL_126:
            v69 = 0;
            v70 = *v68;
            while (((1 << v69) & v70) != 0)
            {
              if (++v69 == 4)
              {
                goto LABEL_136;
              }
            }

            if (Equals)
            {
              v71 = *(v12 + 2);
              v72 = &v96[v71];
              *v72 = v60;
              *(v72 + 1) = v69;
              *(v12 + 2) = v71 + 1;
            }

            v73 = (1 << v69) | v70;
            if (v67)
            {
              *v23 = v73;
              v74 = glpPrimitiveTypeGetScalarType(*(v23 + 4));
              v75 = componentCountForSet(*v23);
              *(v23 + 4) = glpGetVectorType(v74, v75);
            }

            if (v66)
            {
              *v61 = v73;
              v76 = glpPrimitiveTypeGetScalarType(*(v61 + 4));
              v77 = componentCountForSet(*v61);
              *(v61 + 4) = glpGetVectorType(v76, v77);
            }

LABEL_136:
            v65 = 1;
            v23 = 1;
            goto LABEL_137;
          }
        }

        v65 = 0;
        v23 = 0;
        goto LABEL_137;
      }

      v23 = glpLinkerPoolAlloc(v101);
      *v23 = 0u;
      *(v23 + 16) = 0u;
      glpIntHashPut(a2, v60, v23, 0.0);
      if (a3)
      {
        goto LABEL_115;
      }

      if (v23)
      {
        v61 = 0;
        goto LABEL_117;
      }

      v65 = 0;
LABEL_137:
      v21 = v100;
LABEL_138:
      ScalarCount = glpPrimitiveTypeGetScalarCount(v106);
      if (v65)
      {
        ++v55;
        v54 = v107;
        if (v55 < ScalarCount)
        {
          continue;
        }
      }

      break;
    }

LABEL_9:
    if (a9 == -1)
    {
      a9 = -1;
    }

    else
    {
      ++a9;
    }

    ++v21;
  }

  while (v21 != v97);
  if (!v23)
  {
    if (*(v12 + 2))
    {
      v79 = 0;
      v80 = v12 + 5;
      do
      {
        if (a2)
        {
          v81 = glpIntHashGet(a2, *(v80 - 1));
          if (a3)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v81 = 0;
          if (a3)
          {
LABEL_149:
            v82 = glpIntHashGet(a3, *(v80 - 1));
            if (v81)
            {
              goto LABEL_153;
            }

            goto LABEL_156;
          }
        }

        v82 = 0;
        if (v81)
        {
LABEL_153:
          v83 = 1;
          v84 = v81[1];
          *v81 &= ~(1 << *v80);
          v85 = glpPrimitiveTypeGetScalarType(v84);
          if (*v81)
          {
            v83 = componentCountForSet(*v81);
          }

          v81[1] = glpGetVectorType(v85, v83);
        }

LABEL_156:
        if (v82)
        {
          v86 = 1;
          v87 = v82[1];
          *v82 &= ~(1 << *v80);
          v88 = glpPrimitiveTypeGetScalarType(v87);
          if (*v82)
          {
            v86 = componentCountForSet(*v82);
          }

          v82[1] = glpGetVectorType(v88, v86);
        }

        ++v79;
        v80 += 2;
      }

      while (v79 < *(v12 + 2));
    }

    *(v12 + 2) = 0;
  }

  return v23;
}