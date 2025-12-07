@interface GLPType
@end

@implementation GLPType

void __deserialize_GLPType_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 260);
  v4 = *(v2 + 256);
  if (v3 >= v4)
  {
    goto LABEL_351;
  }

  v5 = *(v2 + 248);
  v6 = *(v5 + v3);
  v7 = *(v5 + v3);
  v8 = v3 + 1;
  *(v2 + 260) = v3 + 1;
  if (v6 < 0)
  {
    v9 = (v7 >> 1) & 7;
    if (v9 > 3)
    {
      if (v9 > 5)
      {
        if (v9 == 6)
        {
          if (v3 + 5 > v4)
          {
            goto LABEL_351;
          }

          LODWORD(v10) = *(v5 + v8);
          *(v2 + 260) = v3 + 5;
          LODWORD(v8) = v3 + 8;
          if (v3 + 8 > v4)
          {
            goto LABEL_351;
          }
        }

        else
        {
          if (v3 + 9 > v4)
          {
            goto LABEL_351;
          }

          v10 = *(v5 + v8);
          LODWORD(v8) = v3 + 9;
        }
      }

      else
      {
        v11 = v3 + 5;
        if (v9 == 4)
        {
          if (v11 > v4)
          {
            goto LABEL_351;
          }

          LODWORD(v10) = *(v5 + v8);
          *(v2 + 260) = v3 + 5;
          if (v3 + 5 >= v4)
          {
            goto LABEL_351;
          }

          LODWORD(v8) = v3 + 6;
        }

        else
        {
          if (v11 > v4)
          {
            goto LABEL_351;
          }

          LODWORD(v10) = *(v5 + v8);
          v13 = (v3 + 5);
          *(v2 + 260) = v13;
          if (v13 + 2 > v4)
          {
            goto LABEL_351;
          }

          LODWORD(v8) = v3 + 7;
        }
      }
    }

    else if (v9 > 1)
    {
      if (v9 == 2)
      {
        v12 = v3 + 4;
        if (v12 > v4)
        {
          goto LABEL_351;
        }

        LODWORD(v10) = *(v5 + v8) | (*(v5 + v8 + 2) << 16);
        *(v2 + 260) = v12;
        LODWORD(v8) = v12;
        goto LABEL_30;
      }

      if (v3 + 5 > v4)
      {
        goto LABEL_351;
      }

      LODWORD(v10) = *(v5 + v8);
      LODWORD(v8) = v3 + 5;
    }

    else if (v9)
    {
      if (v3 + 3 > v4)
      {
        goto LABEL_351;
      }

      LODWORD(v10) = *(v5 + v8);
      LODWORD(v8) = v3 + 3;
    }

    else
    {
      if (v8 >= v4)
      {
        goto LABEL_351;
      }

      LODWORD(v10) = *(v5 + v8);
      LODWORD(v8) = v3 + 2;
    }

    *(v2 + 260) = v8;
LABEL_30:
    v14 = -256 << (8 * v9);
    if (v6)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    LODWORD(v7) = v10 | v15;
  }

  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 != 4)
      {
        if (v7 == 5)
        {
          v24 = deserialize_GLPString(v2);
          v26 = v25;
          v27 = *(a1 + 32);
          v148 = 0;
          v149 = MEMORY[0x277D85DD0];
          v150 = 0x40000000;
          v151 = __deserialize_GLPFunctionObject_block_invoke;
          v152 = &__block_descriptor_tmp_5;
          v153 = v27;
          deserialize_pointer(v27, &v149, &v148);
          glpMakeSubroutineType(*(*(a1 + 32) + 240), v24, v26, v148);
          return;
        }

        goto LABEL_353;
      }

      if (v8 >= v4)
      {
        goto LABEL_351;
      }

      v34 = *(v5 + v8);
      v35 = *(v5 + v8);
      v36 = v8 + 1;
      *(v2 + 260) = v36;
      if (v34 < 0)
      {
        v37 = (v35 >> 1) & 7;
        if (((v35 >> 1) & 7) > 3)
        {
          if (((v35 >> 1) & 7) > 5)
          {
            if (v37 == 6)
            {
              if (v8 + 5 > v4)
              {
                goto LABEL_351;
              }

              v38 = *(v5 + v36);
              *(v2 + 260) = v8 + 5;
              v39 = v8 + 8;
              if (v39 > v4)
              {
                goto LABEL_351;
              }
            }

            else
            {
              if (v8 + 9 > v4)
              {
                goto LABEL_351;
              }

              v38 = *(v5 + v36);
              v39 = v8 + 9;
            }
          }

          else
          {
            v54 = v8 + 5;
            if (v37 == 4)
            {
              if (v54 > v4)
              {
                goto LABEL_351;
              }

              v38 = *(v5 + v36);
              *(v2 + 260) = v8 + 5;
              if (v8 + 5 >= v4)
              {
                goto LABEL_351;
              }

              v39 = v8 + 6;
            }

            else
            {
              if (v54 > v4)
              {
                goto LABEL_351;
              }

              v38 = *(v5 + v36);
              v61 = (v8 + 5);
              *(v2 + 260) = v61;
              if (v61 + 2 > v4)
              {
                goto LABEL_351;
              }

              v39 = v8 + 7;
            }
          }
        }

        else if (((v35 >> 1) & 7) > 1)
        {
          if (v37 == 2)
          {
            v39 = v8 + 4;
            if (v39 > v4)
            {
              goto LABEL_351;
            }

            v38 = *(v5 + v36) | (*(v5 + v36 + 2) << 16);
          }

          else
          {
            if (v8 + 5 > v4)
            {
              goto LABEL_351;
            }

            v38 = *(v5 + v36);
            v39 = v8 + 5;
          }
        }

        else if (v37)
        {
          if (v8 + 3 > v4)
          {
            goto LABEL_351;
          }

          v38 = *(v5 + v36);
          v39 = v8 + 3;
        }

        else
        {
          if (v36 >= v4)
          {
            goto LABEL_351;
          }

          v38 = *(v5 + v36);
          v39 = v8 + 2;
        }

        *(v2 + 260) = v39;
        if (v34)
        {
          v90 = -256 << (8 * v37);
        }

        else
        {
          v90 = 0;
        }

        v35 = v38 | v90;
      }

      v146 = (*(*(v2 + 240) + 8))(**(v2 + 240), 8 * v35, "Deserialized");
      v144 = (*(*(*(a1 + 32) + 240) + 8))(**(*(a1 + 32) + 240), 8 * v35, "Deserialized");
      v142 = (*(*(*(a1 + 32) + 240) + 8))(**(*(a1 + 32) + 240), 8 * v35, "Deserialized");
      if (!v35)
      {
LABEL_238:
        v114 = *(a1 + 32);
        v148 = 0;
        v149 = MEMORY[0x277D85DD0];
        v150 = 0x40000000;
        v151 = __deserialize_GLPType_block_invoke;
        v152 = &__block_descriptor_tmp_12;
        v153 = v114;
        deserialize_pointer(v114, &v149, &v148);
        glpMakeFunctionType(*(*(a1 + 32) + 240), v148, v35, v146, v144, v142);
        return;
      }

      v91 = MEMORY[0x277D85DD0];
      v92 = v146;
      v93 = v35;
      v94 = v142;
      v95 = v144;
      while (1)
      {
        v96 = *(a1 + 32);
        v149 = v91;
        v150 = 0x40000000;
        v151 = __deserialize_GLPType_block_invoke;
        v152 = &__block_descriptor_tmp_12;
        v153 = v96;
        deserialize_pointer(v96, &v149, v92);
        v2 = *(a1 + 32);
        v97 = *(v2 + 260);
        v98 = *(v2 + 256);
        if (v97 >= v98)
        {
          goto LABEL_351;
        }

        v99 = *(v2 + 248);
        v100 = *(v99 + v97);
        v101 = *(v99 + v97);
        v102 = v97 + 1;
        *(v2 + 260) = v97 + 1;
        if (v100 < 0)
        {
          break;
        }

LABEL_237:
        *v95++ = v101;
        v149 = MEMORY[0x277D85DD0];
        v150 = 0x40000000;
        v151 = __deserialize_GLPLayoutObject_block_invoke;
        v152 = &__block_descriptor_tmp_3;
        v153 = v2;
        deserialize_pointer(v2, &v149, v94);
        ++v92;
        ++v94;
        if (!--v93)
        {
          goto LABEL_238;
        }
      }

      v103 = (v101 >> 1) & 7;
      if (v103 <= 3)
      {
        if (v103 > 1)
        {
          if (v103 == 2)
          {
            v105 = v97 + 4;
            if (v105 > v98)
            {
              goto LABEL_351;
            }

            v104 = *(v99 + v102) | (*(v99 + v102 + 2) << 16);
          }

          else
          {
            if (v97 + 5 > v98)
            {
              goto LABEL_351;
            }

            v104 = *(v99 + v102);
            v105 = v97 + 5;
          }
        }

        else if (v103)
        {
          if (v97 + 3 > v98)
          {
            goto LABEL_351;
          }

          v104 = *(v99 + v102);
          v105 = v97 + 3;
        }

        else
        {
          if (v102 >= v98)
          {
            goto LABEL_351;
          }

          v104 = *(v99 + v102);
          v105 = v97 + 2;
        }

LABEL_232:
        *(v2 + 260) = v105;
        goto LABEL_233;
      }

      if (v103 > 5)
      {
        if (v103 != 6)
        {
          if (v97 + 9 > v98)
          {
            goto LABEL_351;
          }

          v104 = *(v99 + v102);
          v105 = v97 + 9;
          goto LABEL_232;
        }

        if (v97 + 5 > v98)
        {
          goto LABEL_351;
        }

        v107 = *(v99 + v102);
        v110 = v97 + 5;
        *(v2 + 260) = v97 + 5;
        v109 = v97 + 8;
        if (v109 > v98)
        {
          goto LABEL_351;
        }

        v108 = *(v99 + v110) | (*(v99 + v110 + 2) << 16);
      }

      else
      {
        v106 = v97 + 5;
        if (v103 == 4)
        {
          if (v106 > v98)
          {
            goto LABEL_351;
          }

          v107 = *(v99 + v102);
          *(v2 + 260) = v97 + 5;
          if (v97 + 5 >= v98)
          {
            goto LABEL_351;
          }

          v108 = *(v99 + (v97 + 5));
          v109 = v97 + 6;
        }

        else
        {
          if (v106 > v98)
          {
            goto LABEL_351;
          }

          v107 = *(v99 + v102);
          v111 = (v97 + 5);
          *(v2 + 260) = v111;
          if (v111 + 2 > v98)
          {
            goto LABEL_351;
          }

          v108 = *(v99 + v111);
          v109 = v97 + 7;
        }
      }

      *(v2 + 260) = v109;
      v104 = v107 | (v108 << 32);
LABEL_233:
      v112 = -256 << (8 * v103);
      if (v100)
      {
        v113 = v112;
      }

      else
      {
        v113 = 0;
      }

      v101 = v104 | v113;
      goto LABEL_237;
    }

    v148 = 0;
    v149 = MEMORY[0x277D85DD0];
    v150 = 0x40000000;
    v151 = __deserialize_GLPType_block_invoke;
    v152 = &__block_descriptor_tmp_12;
    v153 = v2;
    deserialize_pointer(v2, &v149, &v148);
    v2 = *(a1 + 32);
    v45 = *(v2 + 260);
    v46 = *(v2 + 256);
    if (v45 >= v46)
    {
      goto LABEL_351;
    }

    v47 = *(v2 + 248);
    v48 = *(v47 + v45);
    v49 = *(v47 + v45);
    v50 = v45 + 1;
    *(v2 + 260) = v45 + 1;
    if ((v48 & 0x80000000) == 0)
    {
LABEL_302:
      if (v50 >= v46)
      {
        goto LABEL_351;
      }

      v129 = *(v47 + v50);
      v130 = *(v47 + v50);
      v131 = v50 + 1;
      *(v2 + 260) = v131;
      if ((v129 & 0x80000000) == 0)
      {
        goto LABEL_350;
      }

      v132 = (v130 >> 1) & 7;
      if (((v130 >> 1) & 7) > 3)
      {
        if (((v130 >> 1) & 7) <= 5)
        {
          v134 = v50 + 5;
          if (v132 == 4)
          {
            if (v134 > v46)
            {
              goto LABEL_351;
            }

            LODWORD(v47) = *(v47 + v131);
            *(v2 + 260) = v50 + 5;
            if (v50 + 5 >= v46)
            {
              goto LABEL_351;
            }

            v133 = v50 + 6;
          }

          else
          {
            if (v134 > v46)
            {
              goto LABEL_351;
            }

            LODWORD(v47) = *(v47 + v131);
            v138 = (v50 + 5);
            *(v2 + 260) = v138;
            if (v138 + 2 > v46)
            {
              goto LABEL_351;
            }

            v133 = v50 + 7;
          }

          goto LABEL_345;
        }

        if (v132 != 6)
        {
          if (v50 + 9 > v46)
          {
            goto LABEL_351;
          }

          v47 = *(v47 + v131);
          v133 = v50 + 9;
          goto LABEL_345;
        }

        if (v50 + 5 > v46)
        {
          goto LABEL_351;
        }

        LODWORD(v47) = *(v47 + v131);
        *(v2 + 260) = v50 + 5;
        v135 = v50 + 8;
        if (v135 > v46)
        {
          goto LABEL_351;
        }
      }

      else
      {
        if (((v130 >> 1) & 7) <= 1)
        {
          if (v132)
          {
            if (v50 + 3 > v46)
            {
              goto LABEL_351;
            }

            LODWORD(v47) = *(v47 + v131);
            v133 = v50 + 3;
          }

          else
          {
            if (v131 >= v46)
            {
              goto LABEL_351;
            }

            LODWORD(v47) = *(v47 + v131);
            v133 = v50 + 2;
          }

LABEL_345:
          *(v2 + 260) = v133;
          goto LABEL_346;
        }

        if (v132 != 2)
        {
          if (v50 + 5 > v46)
          {
            goto LABEL_351;
          }

          LODWORD(v47) = *(v47 + v131);
          v133 = v50 + 5;
          goto LABEL_345;
        }

        v135 = v50 + 4;
        if (v135 > v46)
        {
          goto LABEL_351;
        }

        LODWORD(v47) = *(v47 + v131) | (*(v47 + v131 + 2) << 16);
      }

      *(v2 + 260) = v135;
LABEL_346:
      if (v129)
      {
        v139 = -256 << (8 * v132);
      }

      else
      {
        LODWORD(v139) = 0;
      }

      LODWORD(v130) = v47 | v139;
LABEL_350:
      glpMakeBankType(*(v2 + 240), v130, v148, v49);
      return;
    }

    v51 = (v49 >> 1) & 7;
    if (((v49 >> 1) & 7) > 3)
    {
      if (((v49 >> 1) & 7) > 5)
      {
        if (v51 == 6)
        {
          if (v45 + 5 > v46)
          {
            goto LABEL_351;
          }

          LODWORD(v52) = *(v47 + v50);
          *(v2 + 260) = v45 + 5;
          LODWORD(v50) = v45 + 8;
          if (v45 + 8 > v46)
          {
            goto LABEL_351;
          }
        }

        else
        {
          if (v45 + 9 > v46)
          {
            goto LABEL_351;
          }

          v52 = *(v47 + v50);
          LODWORD(v50) = v45 + 9;
        }
      }

      else
      {
        v57 = v45 + 5;
        if (v51 == 4)
        {
          if (v57 > v46)
          {
            goto LABEL_351;
          }

          LODWORD(v52) = *(v47 + v50);
          *(v2 + 260) = v45 + 5;
          if (v45 + 5 >= v46)
          {
            goto LABEL_351;
          }

          LODWORD(v50) = v45 + 6;
        }

        else
        {
          if (v57 > v46)
          {
            goto LABEL_351;
          }

          LODWORD(v52) = *(v47 + v50);
          v126 = (v45 + 5);
          *(v2 + 260) = v126;
          if (v126 + 2 > v46)
          {
            goto LABEL_351;
          }

          LODWORD(v50) = v45 + 7;
        }
      }
    }

    else if (((v49 >> 1) & 7) > 1)
    {
      if (v51 == 2)
      {
        v59 = v45 + 4;
        if (v59 > v46)
        {
          goto LABEL_351;
        }

        LODWORD(v52) = *(v47 + v50) | (*(v47 + v50 + 2) << 16);
        *(v2 + 260) = v59;
        LODWORD(v50) = v59;
        goto LABEL_298;
      }

      if (v45 + 5 > v46)
      {
        goto LABEL_351;
      }

      LODWORD(v52) = *(v47 + v50);
      LODWORD(v50) = v45 + 5;
    }

    else if (v51)
    {
      if (v45 + 3 > v46)
      {
        goto LABEL_351;
      }

      LODWORD(v52) = *(v47 + v50);
      LODWORD(v50) = v45 + 3;
    }

    else
    {
      if (v50 >= v46)
      {
        goto LABEL_351;
      }

      LODWORD(v52) = *(v47 + v50);
      LODWORD(v50) = v45 + 2;
    }

    *(v2 + 260) = v50;
LABEL_298:
    v127 = -256 << (8 * v51);
    if (v48)
    {
      v128 = v127;
    }

    else
    {
      v128 = 0;
    }

    LODWORD(v49) = v52 | v128;
    goto LABEL_302;
  }

  if (v7)
  {
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v148 = 0;
        v149 = MEMORY[0x277D85DD0];
        v150 = 0x40000000;
        v151 = __deserialize_GLPType_block_invoke;
        v152 = &__block_descriptor_tmp_12;
        v153 = v2;
        deserialize_pointer(v2, &v149, &v148);
        v2 = *(a1 + 32);
        v16 = *(v2 + 260);
        v17 = *(v2 + 256);
        if (v16 >= v17)
        {
          goto LABEL_351;
        }

        v18 = *(v2 + 248);
        v19 = *(v18 + v16);
        v20 = *(v18 + v16);
        v21 = v16 + 1;
        *(v2 + 260) = v16 + 1;
        if ((v19 & 0x80000000) == 0)
        {
LABEL_253:
          if (v21 >= v17)
          {
            goto LABEL_351;
          }

          v118 = *(v18 + v21);
          v119 = *(v18 + v21);
          v120 = v21 + 1;
          *(v2 + 260) = v120;
          if ((v118 & 0x80000000) == 0)
          {
LABEL_335:
            glpMakeArrayType(*(v2 + 240), v148, v20, v119);
            return;
          }

          v121 = (v119 >> 1) & 7;
          if (((v119 >> 1) & 7) > 3)
          {
            if (((v119 >> 1) & 7) <= 5)
            {
              v123 = v21 + 5;
              if (v121 == 4)
              {
                if (v123 <= v17)
                {
                  LODWORD(v18) = *(v18 + v120);
                  *(v2 + 260) = v21 + 5;
                  if (v21 + 5 < v17)
                  {
                    v122 = v21 + 6;
                    goto LABEL_330;
                  }
                }
              }

              else if (v123 <= v17)
              {
                LODWORD(v18) = *(v18 + v120);
                v136 = (v21 + 5);
                *(v2 + 260) = v136;
                if (v136 + 2 <= v17)
                {
                  v122 = v21 + 7;
                  goto LABEL_330;
                }
              }

LABEL_351:
              glpDeserialError(v2, 1u);
            }

            if (v121 != 6)
            {
              if (v21 + 9 <= v17)
              {
                v18 = *(v18 + v120);
                v122 = v21 + 9;
                goto LABEL_330;
              }

              goto LABEL_351;
            }

            if (v21 + 5 > v17)
            {
              goto LABEL_351;
            }

            LODWORD(v18) = *(v18 + v120);
            *(v2 + 260) = v21 + 5;
            v124 = v21 + 8;
            if (v124 > v17)
            {
              goto LABEL_351;
            }
          }

          else
          {
            if (((v119 >> 1) & 7) <= 1)
            {
              if (v121)
              {
                if (v21 + 3 <= v17)
                {
                  LODWORD(v18) = *(v18 + v120);
                  v122 = v21 + 3;
                  goto LABEL_330;
                }
              }

              else if (v120 < v17)
              {
                LODWORD(v18) = *(v18 + v120);
                v122 = v21 + 2;
LABEL_330:
                *(v2 + 260) = v122;
                goto LABEL_331;
              }

              goto LABEL_351;
            }

            if (v121 != 2)
            {
              if (v21 + 5 <= v17)
              {
                LODWORD(v18) = *(v18 + v120);
                v122 = v21 + 5;
                goto LABEL_330;
              }

              goto LABEL_351;
            }

            v124 = v21 + 4;
            if (v124 > v17)
            {
              goto LABEL_351;
            }

            LODWORD(v18) = *(v18 + v120) | (*(v18 + v120 + 2) << 16);
          }

          *(v2 + 260) = v124;
LABEL_331:
          if (v118)
          {
            v137 = -256 << (8 * v121);
          }

          else
          {
            LODWORD(v137) = 0;
          }

          LODWORD(v119) = v18 | v137;
          goto LABEL_335;
        }

        v22 = (v20 >> 1) & 7;
        if (((v20 >> 1) & 7) > 3)
        {
          if (((v20 >> 1) & 7) > 5)
          {
            if (v22 == 6)
            {
              if (v16 + 5 > v17)
              {
                goto LABEL_351;
              }

              LODWORD(v23) = *(v18 + v21);
              *(v2 + 260) = v16 + 5;
              LODWORD(v21) = v16 + 8;
              if (v16 + 8 > v17)
              {
                goto LABEL_351;
              }
            }

            else
            {
              if (v16 + 9 > v17)
              {
                goto LABEL_351;
              }

              v23 = *(v18 + v21);
              LODWORD(v21) = v16 + 9;
            }
          }

          else
          {
            v55 = v16 + 5;
            if (v22 == 4)
            {
              if (v55 > v17)
              {
                goto LABEL_351;
              }

              LODWORD(v23) = *(v18 + v21);
              *(v2 + 260) = v16 + 5;
              if (v16 + 5 >= v17)
              {
                goto LABEL_351;
              }

              LODWORD(v21) = v16 + 6;
            }

            else
            {
              if (v55 > v17)
              {
                goto LABEL_351;
              }

              LODWORD(v23) = *(v18 + v21);
              v115 = (v16 + 5);
              *(v2 + 260) = v115;
              if (v115 + 2 > v17)
              {
                goto LABEL_351;
              }

              LODWORD(v21) = v16 + 7;
            }
          }
        }

        else if (((v20 >> 1) & 7) > 1)
        {
          if (v22 == 2)
          {
            v58 = v16 + 4;
            if (v58 > v17)
            {
              goto LABEL_351;
            }

            LODWORD(v23) = *(v18 + v21) | (*(v18 + v21 + 2) << 16);
            *(v2 + 260) = v58;
            LODWORD(v21) = v58;
            goto LABEL_249;
          }

          if (v16 + 5 > v17)
          {
            goto LABEL_351;
          }

          LODWORD(v23) = *(v18 + v21);
          LODWORD(v21) = v16 + 5;
        }

        else if (v22)
        {
          if (v16 + 3 > v17)
          {
            goto LABEL_351;
          }

          LODWORD(v23) = *(v18 + v21);
          LODWORD(v21) = v16 + 3;
        }

        else
        {
          if (v21 >= v17)
          {
            goto LABEL_351;
          }

          LODWORD(v23) = *(v18 + v21);
          LODWORD(v21) = v16 + 2;
        }

        *(v2 + 260) = v21;
LABEL_249:
        v116 = -256 << (8 * v22);
        if (v19)
        {
          v117 = v116;
        }

        else
        {
          v117 = 0;
        }

        LODWORD(v20) = v23 | v117;
        goto LABEL_253;
      }

LABEL_353:
      glpDeserialError(v2, 7u);
    }

    if (v8 >= v4)
    {
      goto LABEL_351;
    }

    v28 = *(v5 + v8);
    v29 = *(v5 + v8);
    v30 = v8 + 1;
    *(v2 + 260) = v30;
    if (v28 < 0)
    {
      v31 = (v29 >> 1) & 7;
      if (((v29 >> 1) & 7) > 3)
      {
        if (((v29 >> 1) & 7) > 5)
        {
          if (v31 == 6)
          {
            if (v8 + 5 > v4)
            {
              goto LABEL_351;
            }

            v32 = *(v5 + v30);
            *(v2 + 260) = v8 + 5;
            v33 = v8 + 8;
            if (v33 > v4)
            {
              goto LABEL_351;
            }
          }

          else
          {
            if (v8 + 9 > v4)
            {
              goto LABEL_351;
            }

            v32 = *(v5 + v30);
            v33 = v8 + 9;
          }
        }

        else
        {
          v53 = v8 + 5;
          if (v31 == 4)
          {
            if (v53 > v4)
            {
              goto LABEL_351;
            }

            v32 = *(v5 + v30);
            *(v2 + 260) = v8 + 5;
            if (v8 + 5 >= v4)
            {
              goto LABEL_351;
            }

            v33 = v8 + 6;
          }

          else
          {
            if (v53 > v4)
            {
              goto LABEL_351;
            }

            v32 = *(v5 + v30);
            v60 = (v8 + 5);
            *(v2 + 260) = v60;
            if (v60 + 2 > v4)
            {
              goto LABEL_351;
            }

            v33 = v8 + 7;
          }
        }
      }

      else if (((v29 >> 1) & 7) > 1)
      {
        if (v31 == 2)
        {
          v33 = v8 + 4;
          if (v33 > v4)
          {
            goto LABEL_351;
          }

          v32 = *(v5 + v30) | (*(v5 + v30 + 2) << 16);
        }

        else
        {
          if (v8 + 5 > v4)
          {
            goto LABEL_351;
          }

          v32 = *(v5 + v30);
          v33 = v8 + 5;
        }
      }

      else if (v31)
      {
        if (v8 + 3 > v4)
        {
          goto LABEL_351;
        }

        v32 = *(v5 + v30);
        v33 = v8 + 3;
      }

      else
      {
        if (v30 >= v4)
        {
          goto LABEL_351;
        }

        v32 = *(v5 + v30);
        v33 = v8 + 2;
      }

      *(v2 + 260) = v33;
      if (v28)
      {
        v62 = -256 << (8 * v31);
      }

      else
      {
        v62 = 0;
      }

      v29 = v32 | v62;
    }

    v63 = v29;
    v147 = (*(*(v2 + 240) + 8))(**(v2 + 240), 8 * v29, "Deserialized");
    v145 = (*(*(*(a1 + 32) + 240) + 8))(**(*(a1 + 32) + 240), 8 * v29, "Deserialized");
    v143 = (*(*(*(a1 + 32) + 240) + 8))(**(*(a1 + 32) + 240), 8 * v29, "Deserialized");
    v140 = v29;
    v141 = (*(*(*(a1 + 32) + 240) + 8))(**(*(a1 + 32) + 240), 16 * v29, "Deserialized");
    if (!v29)
    {
LABEL_194:
      v88 = deserialize_GLPString(*(a1 + 32));
      glpMakeStructType(*(*(a1 + 32) + 240), v88, v89, v140, v141, v147, v145, v143);
      return;
    }

    v64 = MEMORY[0x277D85DD0];
    v65 = v143;
    v66 = (v141 + 8);
    v67 = v145;
    v68 = v147;
    while (1)
    {
      v69 = *(a1 + 32);
      v149 = v64;
      v150 = 0x40000000;
      v151 = __deserialize_GLPType_block_invoke;
      v152 = &__block_descriptor_tmp_12;
      v153 = v69;
      deserialize_pointer(v69, &v149, v68);
      v2 = *(a1 + 32);
      v70 = *(v2 + 260);
      v71 = *(v2 + 256);
      if (v70 >= v71)
      {
        goto LABEL_351;
      }

      v72 = *(v2 + 248);
      v73 = *(v72 + v70);
      v74 = *(v72 + v70);
      v75 = v70 + 1;
      *(v2 + 260) = v70 + 1;
      if (v73 < 0)
      {
        break;
      }

LABEL_193:
      *v67++ = v74;
      v149 = MEMORY[0x277D85DD0];
      v150 = 0x40000000;
      v151 = __deserialize_GLPLayoutObject_block_invoke;
      v152 = &__block_descriptor_tmp_3;
      v153 = v2;
      deserialize_pointer(v2, &v149, v65);
      *(v66 - 1) = deserialize_GLPString(*(a1 + 32));
      *v66 = v87;
      ++v68;
      ++v65;
      v66 += 2;
      if (!--v63)
      {
        goto LABEL_194;
      }
    }

    v76 = (v74 >> 1) & 7;
    if (v76 <= 3)
    {
      if (v76 > 1)
      {
        if (v76 == 2)
        {
          v78 = v70 + 4;
          if (v78 > v71)
          {
            goto LABEL_351;
          }

          v77 = *(v72 + v75) | (*(v72 + v75 + 2) << 16);
        }

        else
        {
          if (v70 + 5 > v71)
          {
            goto LABEL_351;
          }

          v77 = *(v72 + v75);
          v78 = v70 + 5;
        }
      }

      else if (v76)
      {
        if (v70 + 3 > v71)
        {
          goto LABEL_351;
        }

        v77 = *(v72 + v75);
        v78 = v70 + 3;
      }

      else
      {
        if (v75 >= v71)
        {
          goto LABEL_351;
        }

        v77 = *(v72 + v75);
        v78 = v70 + 2;
      }

LABEL_188:
      *(v2 + 260) = v78;
      goto LABEL_189;
    }

    if (v76 > 5)
    {
      if (v76 != 6)
      {
        if (v70 + 9 > v71)
        {
          goto LABEL_351;
        }

        v77 = *(v72 + v75);
        v78 = v70 + 9;
        goto LABEL_188;
      }

      if (v70 + 5 > v71)
      {
        goto LABEL_351;
      }

      v80 = *(v72 + v75);
      v83 = v70 + 5;
      *(v2 + 260) = v70 + 5;
      v82 = v70 + 8;
      if (v82 > v71)
      {
        goto LABEL_351;
      }

      v81 = *(v72 + v83) | (*(v72 + v83 + 2) << 16);
    }

    else
    {
      v79 = v70 + 5;
      if (v76 == 4)
      {
        if (v79 > v71)
        {
          goto LABEL_351;
        }

        v80 = *(v72 + v75);
        *(v2 + 260) = v70 + 5;
        if (v70 + 5 >= v71)
        {
          goto LABEL_351;
        }

        v81 = *(v72 + (v70 + 5));
        v82 = v70 + 6;
      }

      else
      {
        if (v79 > v71)
        {
          goto LABEL_351;
        }

        v80 = *(v72 + v75);
        v84 = (v70 + 5);
        *(v2 + 260) = v84;
        if (v84 + 2 > v71)
        {
          goto LABEL_351;
        }

        v81 = *(v72 + v84);
        v82 = v70 + 7;
      }
    }

    *(v2 + 260) = v82;
    v77 = v80 | (v81 << 32);
LABEL_189:
    v85 = -256 << (8 * v76);
    if (v73)
    {
      v86 = v85;
    }

    else
    {
      v86 = 0;
    }

    v74 = v77 | v86;
    goto LABEL_193;
  }

  if (v8 >= v4)
  {
    goto LABEL_351;
  }

  v40 = *(v5 + v8);
  v41 = *(v5 + v8);
  v42 = v8 + 1;
  *(v2 + 260) = v42;
  if (v40 < 0)
  {
    v43 = (v41 >> 1) & 7;
    if (v43 > 3)
    {
      if (v43 > 5)
      {
        if (v43 == 6)
        {
          if (v8 + 5 > v4)
          {
            goto LABEL_351;
          }

          LODWORD(v5) = *(v5 + v42);
          *(v2 + 260) = v8 + 5;
          v44 = v8 + 8;
          if (v44 > v4)
          {
            goto LABEL_351;
          }
        }

        else
        {
          if (v8 + 9 > v4)
          {
            goto LABEL_351;
          }

          v5 = *(v5 + v42);
          v44 = v8 + 9;
        }
      }

      else
      {
        v56 = v8 + 5;
        if (v43 == 4)
        {
          if (v56 > v4)
          {
            goto LABEL_351;
          }

          LODWORD(v5) = *(v5 + v42);
          *(v2 + 260) = v8 + 5;
          if (v8 + 5 >= v4)
          {
            goto LABEL_351;
          }

          v44 = v8 + 6;
        }

        else
        {
          if (v56 > v4)
          {
            goto LABEL_351;
          }

          LODWORD(v5) = *(v5 + v42);
          v125 = (v8 + 5);
          *(v2 + 260) = v125;
          if (v125 + 2 > v4)
          {
            goto LABEL_351;
          }

          v44 = v8 + 7;
        }
      }
    }

    else if (v43 > 1)
    {
      if (v43 == 2)
      {
        v44 = v8 + 4;
        if (v44 > v4)
        {
          goto LABEL_351;
        }

        LODWORD(v5) = *(v5 + v42) | (*(v5 + v42 + 2) << 16);
      }

      else
      {
        if (v8 + 5 > v4)
        {
          goto LABEL_351;
        }

        LODWORD(v5) = *(v5 + v42);
        v44 = v8 + 5;
      }
    }

    else if (v43)
    {
      if (v8 + 3 > v4)
      {
        goto LABEL_351;
      }

      LODWORD(v5) = *(v5 + v42);
      v44 = v8 + 3;
    }

    else
    {
      if (v42 >= v4)
      {
        goto LABEL_351;
      }

      LODWORD(v5) = *(v5 + v42);
      v44 = v8 + 2;
    }

    *(v2 + 260) = v44;
    v41 = -256 << (8 * v43);
    if ((v40 & 1) == 0)
    {
      LODWORD(v41) = 0;
    }

    LODWORD(v41) = v5 | v41;
  }

  if (v41 >= 0x4F)
  {
    glpDeserialError(v2, 8u);
  }

  glpGetPrimitiveType(v41);
}

@end