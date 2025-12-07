uint64_t rgb555_image_mark_RGB24(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v139 = result;
  v6 = *(a2 + 8);
  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v130 = *(a2 + 5) - a5;
  }

  else
  {
    v130 = 0;
  }

  v129 = *a2;
  v128 = *(a2 + 3) - a5;
  v140 = v8 != 0;
  v10 = *(a2 + 19);
  v9 = *(a2 + 20);
  v11 = *(a2 + 11);
  v125 = *(a2 + 13);
  v12 = *(a2 + 9) + v125 * a4;
  v122 = *(a2 + 6);
  v133 = *(a2 + 7);
  v13 = *(result + 32);
  v14 = &v13[(*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3)];
  v15 = *(result + 168);
  v123 = a5;
  v124 = v15;
  v126 = v11;
  v127 = v10;
  if (*(result + 176))
  {
    v136 = 0;
    v16 = 0;
    v121 = *(a2 + 15);
    v119 = ~(-1 << v11);
    v120 = *(a2 + 17);
    v118 = v11 - 4;
    v17 = v14 - 3;
    v116 = v9 + 16 * a3 + 8;
    v117 = -v10;
    while ((((v120 - v12) | (v12 - v121)) & 0x8000000000000000) == 0)
    {
      v18 = ((v12 & v119) >> v118) & 0xF;
      v19 = weights_21890[v18];
      v20 = (v18 - 7) >= 9;
      v21 = v117;
      if (!v20)
      {
        v21 = v10;
      }

      v137 = v21;
      v22 = v19 & 0xF;
      if (v15)
      {
        goto LABEL_10;
      }

LABEL_13:
      v25 = *(v139 + 32) + (v12 >> v11) * v10;
      v134 = a6;
      v132 = v12;
      if (v129 != 1)
      {
        if (a5 < 1)
        {
          goto LABEL_113;
        }

        v52 = v116;
        v53 = v123;
        while (2)
        {
          v54 = *(v52 - 1);
          v55 = *v52;
          v56 = v25 + v54;
          if (v17 >= v25 + v54)
          {
            v57 = (v25 + v54);
          }

          else
          {
            v57 = v17;
          }

          if (v57 < v13)
          {
            v57 = v13;
          }

          v58 = (*v57 << 24) | (v57[1] << 16) | (v57[2] << 8);
          v59 = v55 & 0xF;
          if ((v55 & 0xF) != 0)
          {
            v60 = (v56 + (v55 >> 4));
            if (v17 < v60)
            {
              v60 = v17;
            }

            if (v60 < v13)
            {
              v60 = v13;
            }

            v61 = (*v60 << 24) | (v60[1] << 16) | (v60[2] << 8);
            if (v22)
            {
              v62 = (v56 + v137);
              if (v17 >= v62)
              {
                v63 = v62;
              }

              else
              {
                v63 = v17;
              }

              if (v63 < v13)
              {
                v63 = v13;
              }

              v64 = (*v63 << 24) | (v63[1] << 16) | (v63[2] << 8);
              v65 = &v62[v55 >> 4];
              if (v17 < v65)
              {
                v65 = v17;
              }

              if (v65 < v13)
              {
                v65 = v13;
              }

              v66 = BLEND8_21892[v22];
              v58 = v58 - ((v66 & v58) >> v22) + ((v66 & v64) >> v22);
              v61 = v61 - ((v66 & v61) >> v22) + ((((*v65 << 24) | (v65[1] << 16) | (v65[2] << 8)) & v66) >> v22);
            }

            v67 = BLEND8_21892[*v52 & 0xF];
            v68 = v58 - ((v67 & v58) >> v59);
            v69 = (v67 & v61) >> v59;
            goto LABEL_90;
          }

          if (v22)
          {
            v70 = (v56 + v137);
            if (v17 < v56 + v137)
            {
              v70 = v17;
            }

            if (v70 < v13)
            {
              v70 = v13;
            }

            v71 = BLEND8_21892[v22];
            v68 = v58 - ((v71 & v58) >> v22);
            v69 = (((*v70 << 24) | (v70[1] << 16) | (v70[2] << 8)) & v71) >> v22;
LABEL_90:
            v58 = v68 + v69;
          }

          v72 = v58 | 0xFF;
          if (v16)
          {
            v73 = *v16;
            if ((v16 + 1) < v136)
            {
              ++v16;
            }

            else
            {
              v16 -= 15;
            }

            if (v6 == 255)
            {
              result = DITHERRGBA32(v72, v73);
            }

            else
            {
              result = DITHERRGBA32M(v72, v73, v6);
            }
          }

          else
          {
            v74 = (v58 >> 17) & 0x7C00 | (v58 >> 14) & 0x3E0 | (v58 >> 11) | 0xFF000000;
            v75 = ((v58 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v58 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v76 = (v72 & 0xFF00FF) * v6 + 65537 + ((((v72 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v77 = (v75 >> 17) & 0x7C00 | (v75 >> 11) & 0xFFFFFF | ((v76 >> 11) << 27) | ((v72 * v6 + 1 + ((v72 * v6) >> 8)) >> 13 << 24) | (32 * (v76 >> 27));
            if (v6 == 255)
            {
              result = v74;
            }

            else
            {
              result = v77;
            }

            v16 = 0;
          }

          v78 = result >> 27;
          if (v8)
          {
            if (result >> 27 == 31)
            {
              v79 = BYTE3(result);
              *v7 = result;
              goto LABEL_111;
            }

            if (v78)
            {
              result = PDAplusDAM(result, SBYTE3(result), *v7, *v8, BYTE3(result) ^ 0xFF);
              *v7 = result;
              v79 = BYTE3(result);
LABEL_111:
              *v8 = v79;
            }
          }

          else
          {
            if (result >> 27 != 31)
            {
              if (!v78)
              {
                goto LABEL_112;
              }

              result = PDplusDM(result, *v7, ~result >> 24);
            }

            *v7 = result;
          }

LABEL_112:
          v52 += 2;
          ++v7;
          v8 += v140;
          if (!--v53)
          {
            goto LABEL_113;
          }

          continue;
        }
      }

      if (a5 >= 1)
      {
        v26 = v116;
        v27 = v123;
        while (1)
        {
          v28 = *(v26 - 1);
          v29 = *v26;
          v30 = v25 + v28;
          if (v17 >= v25 + v28)
          {
            v31 = (v25 + v28);
          }

          else
          {
            v31 = v17;
          }

          if (v31 < v13)
          {
            v31 = v13;
          }

          v32 = (*v31 << 24) | (v31[1] << 16) | (v31[2] << 8);
          v33 = v29 & 0xF;
          if ((v29 & 0xF) != 0)
          {
            break;
          }

          if (v22)
          {
            v44 = (v30 + v137);
            if (v17 < v30 + v137)
            {
              v44 = v17;
            }

            if (v44 < v13)
            {
              v44 = v13;
            }

            v45 = BLEND8_21892[v22];
            v42 = v32 - ((v45 & v32) >> v22);
            v43 = (((*v44 << 24) | (v44[1] << 16) | (v44[2] << 8)) & v45) >> v22;
            goto LABEL_44;
          }

LABEL_45:
          v46 = v32 | 0xFF;
          if (v16)
          {
            v47 = *v16;
            if ((v16 + 1) < v136)
            {
              ++v16;
            }

            else
            {
              v16 -= 15;
            }

            if (v6 == 255)
            {
              result = DITHERRGBA32(v46, v47);
            }

            else
            {
              result = DITHERRGBA32M(v46, v47, v6);
            }
          }

          else
          {
            v48 = (v32 >> 17) & 0x7C00 | (v32 >> 14) & 0x3E0 | (v32 >> 11) | 0xFF000000;
            v49 = ((v32 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v32 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v50 = (v46 & 0xFF00FF) * v6 + 65537 + ((((v46 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v51 = (v49 >> 17) & 0x7C00 | (v49 >> 11) & 0xFFFFFF | ((v50 >> 11) << 27) | ((v46 * v6 + 1 + ((v46 * v6) >> 8)) >> 13 << 24) | (32 * (v50 >> 27));
            if (v6 == 255)
            {
              result = v48;
            }

            else
            {
              result = v51;
            }

            v16 = 0;
          }

          *v7 = result;
          if (v8)
          {
            *v8 = BYTE3(result);
          }

          v26 += 2;
          ++v7;
          v8 += v140;
          if (!--v27)
          {
            goto LABEL_113;
          }
        }

        v34 = (v30 + (v29 >> 4));
        if (v17 < v34)
        {
          v34 = v17;
        }

        if (v34 < v13)
        {
          v34 = v13;
        }

        v35 = (*v34 << 24) | (v34[1] << 16) | (v34[2] << 8);
        if (v22)
        {
          v36 = (v30 + v137);
          if (v17 >= v36)
          {
            v37 = v36;
          }

          else
          {
            v37 = v17;
          }

          if (v37 < v13)
          {
            v37 = v13;
          }

          v38 = (*v37 << 24) | (v37[1] << 16) | (v37[2] << 8);
          v39 = &v36[v29 >> 4];
          if (v17 < v39)
          {
            v39 = v17;
          }

          if (v39 < v13)
          {
            v39 = v13;
          }

          v40 = BLEND8_21892[v22];
          v32 = v32 - ((v40 & v32) >> v22) + ((v40 & v38) >> v22);
          v35 = v35 - ((v40 & v35) >> v22) + ((((*v39 << 24) | (v39[1] << 16) | (v39[2] << 8)) & v40) >> v22);
        }

        v41 = BLEND8_21892[*v26 & 0xF];
        v42 = v32 - ((v41 & v32) >> v33);
        v43 = (v41 & v35) >> v33;
LABEL_44:
        v32 = v42 + v43;
        goto LABEL_45;
      }

LABEL_113:
      v10 = v127;
      v7 += v128;
      v8 += v130;
      LOBYTE(v11) = v126;
      v12 = v132 + v125;
      a6 = v134 - 1;
      v15 = v124;
      if (v134 == 1)
      {
        return result;
      }
    }

    v22 = 0;
    v137 = 0;
    if (!v15)
    {
      goto LABEL_13;
    }

LABEL_10:
    v23 = v15 + 16 * v133;
    v136 = v23 + 16;
    v16 = (v23 + v122);
    v24 = (v133 + 1) & 0xF;
    if (v133 + 1 <= 0)
    {
      v24 = -(-(v133 + 1) & 0xF);
    }

    v133 = v24;
    goto LABEL_13;
  }

  v80 = 0;
  v81 = 0;
  v82 = v14 - 3;
  v138 = (v9 + 16 * a3);
  do
  {
    if (v15)
    {
      v83 = v15 + 16 * v133;
      v80 = v83 + 16;
      v81 = (v83 + v122);
      v84 = (v133 + 1) & 0xF;
      if (v133 + 1 <= 0)
      {
        v84 = -(-(v133 + 1) & 0xF);
      }

      v133 = v84;
    }

    v85 = *(v139 + 32) + (v12 >> v11) * v10;
    v135 = a6;
    if (v129 != 1)
    {
      v100 = v138;
      v101 = v123;
      if (a5 < 1)
      {
        goto LABEL_171;
      }

      while (1)
      {
        v102 = *v100;
        v100 += 2;
        v103 = (v85 + v102);
        if (v82 < v85 + v102)
        {
          v103 = v82;
        }

        if (v103 < *(v139 + 32))
        {
          v103 = *(v139 + 32);
        }

        v104 = *v103;
        v105 = v103[1];
        v106 = v103[2];
        v107 = (v104 << 24) | (v105 << 16) | (v106 << 8);
        v108 = v107 | 0xFF;
        if (v81)
        {
          v109 = *v81;
          if ((v81 + 1) < v80)
          {
            ++v81;
          }

          else
          {
            v81 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v108, v109);
          }

          else
          {
            result = DITHERRGBA32M(v108, v109, v6);
          }
        }

        else
        {
          v110 = (4 * v105) & 0x3E0 | (v104 >> 3 << 10) | (v106 >> 3) | 0xFF000000;
          v111 = ((v107 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v107 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v112 = (v108 & 0xFF00FF) * v6 + 65537 + ((((v108 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v113 = (v111 >> 17) & 0x7C00 | (v111 >> 11) & 0xFFFFFF | ((v112 >> 11) << 27) | ((v108 * v6 + 1 + ((v108 * v6) >> 8)) >> 13 << 24) | (32 * (v112 >> 27));
          if (v6 == 255)
          {
            result = v110;
          }

          else
          {
            result = v113;
          }

          v81 = 0;
        }

        v114 = result >> 27;
        if (v8)
        {
          if (result >> 27 == 31)
          {
            v115 = BYTE3(result);
            *v7 = result;
LABEL_169:
            *v8 = v115;
            goto LABEL_170;
          }

          if (v114)
          {
            result = PDAplusDAM(result, SBYTE3(result), *v7, *v8, BYTE3(result) ^ 0xFF);
            *v7 = result;
            v115 = BYTE3(result);
            goto LABEL_169;
          }
        }

        else
        {
          if (result >> 27 == 31)
          {
            goto LABEL_166;
          }

          if (v114)
          {
            result = PDplusDM(result, *v7, ~result >> 24);
LABEL_166:
            *v7 = result;
          }
        }

LABEL_170:
        ++v7;
        v8 += v140;
        if (!--v101)
        {
          goto LABEL_171;
        }
      }
    }

    if (a5 >= 1)
    {
      v86 = v138;
      v87 = v123;
      do
      {
        v88 = *v86;
        v86 += 2;
        v89 = (v85 + v88);
        if (v82 < v85 + v88)
        {
          v89 = v82;
        }

        if (v89 < *(v139 + 32))
        {
          v89 = *(v139 + 32);
        }

        v90 = *v89;
        v91 = v89[1];
        v92 = v89[2];
        v93 = (v90 << 24) | (v91 << 16) | (v92 << 8);
        v94 = v93 | 0xFF;
        if (v81)
        {
          v95 = *v81;
          if ((v81 + 1) < v80)
          {
            ++v81;
          }

          else
          {
            v81 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v94, v95);
          }

          else
          {
            result = DITHERRGBA32M(v94, v95, v6);
          }
        }

        else
        {
          v96 = (4 * v91) & 0x3E0 | (v90 >> 3 << 10) | (v92 >> 3) | 0xFF000000;
          v97 = ((v93 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v93 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v98 = (v94 & 0xFF00FF) * v6 + 65537 + ((((v94 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v99 = (v97 >> 17) & 0x7C00 | (v97 >> 11) & 0xFFFFFF | ((v98 >> 11) << 27) | ((v94 * v6 + 1 + ((v94 * v6) >> 8)) >> 13 << 24) | (32 * (v98 >> 27));
          if (v6 == 255)
          {
            result = v96;
          }

          else
          {
            result = v99;
          }

          v81 = 0;
        }

        *v7 = result;
        if (v8)
        {
          *v8 = BYTE3(result);
        }

        ++v7;
        v8 += v140;
        --v87;
      }

      while (v87);
    }

LABEL_171:
    v10 = v127;
    v7 += v128;
    v8 += v130;
    LOBYTE(v11) = v126;
    v12 += v125;
    a6 = v135 - 1;
    v15 = v124;
  }

  while (v135 != 1);
  return result;
}

uint64_t rgb555_image_mark_W8(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v129 = *(a2 + 5) - a5;
  }

  else
  {
    v129 = 0;
  }

  v128 = *a2;
  v127 = *(a2 + 3) - a5;
  v139 = v8 != 0;
  v10 = *(a2 + 19);
  v9 = *(a2 + 20);
  v11 = *(a2 + 11);
  v124 = *(a2 + 13);
  v12 = *(a2 + 9) + v124 * a4;
  v121 = *(a2 + 6);
  v132 = *(a2 + 7);
  v13 = *(a1 + 32);
  v14 = &v13[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  result = *(a1 + 168);
  v122 = a5;
  v123 = *(a1 + 168);
  v125 = v11;
  v126 = v10;
  if (*(a1 + 176))
  {
    v136 = 0;
    v16 = 0;
    v120 = *(a2 + 15);
    v119 = *(a2 + 17);
    v118 = ~(-1 << v11);
    v116 = -v10;
    v117 = v11 - 4;
    v17 = v14 - 4;
    v18 = vdup_n_s32(v6);
    v115 = v9 + 16 * a3 + 8;
    v19.i64[1] = 0x7000000F8000000;
    while ((((v119 - v12) | (v12 - v120)) & 0x8000000000000000) == 0)
    {
      v20 = ((v12 & v118) >> v117) & 0xF;
      v21 = weights_21890[v20];
      v22 = (v20 - 7) >= 9;
      v23 = v116;
      if (!v22)
      {
        v23 = v10;
      }

      v137 = v23;
      v24 = v21 & 0xF;
      if (result)
      {
        goto LABEL_10;
      }

LABEL_13:
      v27 = *(a1 + 32) + (v12 >> v11) * v10;
      v133 = a6;
      v131 = v12;
      if (v128 != 1)
      {
        if (a5 < 1)
        {
          goto LABEL_112;
        }

        v53 = v115;
        v54 = v122;
        while (2)
        {
          v55 = *(v53 - 1);
          v56 = *v53;
          v57 = v27 + v55;
          if (v17 >= v27 + v55)
          {
            v58 = (v27 + v55);
          }

          else
          {
            v58 = v17;
          }

          if (v58 < v13)
          {
            v58 = v13;
          }

          v59 = *v58;
          v60 = v56 & 0xF;
          if ((v56 & 0xF) != 0)
          {
            v61 = (v57 + (v56 >> 4));
            if (v17 < v61)
            {
              v61 = v17;
            }

            if (v61 < v13)
            {
              v61 = v13;
            }

            v62 = *v61;
            if (v24)
            {
              v63 = (v57 + v137);
              if (v17 >= v63)
              {
                v64 = v63;
              }

              else
              {
                v64 = v17;
              }

              if (v64 < v13)
              {
                v64 = v13;
              }

              v65 = *v64;
              v66 = &v63[v56 >> 4];
              if (v17 < v66)
              {
                v66 = v17;
              }

              if (v66 < v13)
              {
                v66 = v13;
              }

              v67 = BLEND8_21892[v24];
              v59 = v59 - ((v67 & v59) >> v24) + ((v67 & v65) >> v24);
              v62 = v62 - ((v67 & v62) >> v24) + ((v67 & *v66) >> v24);
            }

            v68 = BLEND8_21892[*v53 & 0xF];
            v59 -= (v68 & v59) >> v60;
            v69 = (v68 & v62) >> v60;
            goto LABEL_89;
          }

          if (v24)
          {
            v70 = (v57 + v137);
            if (v17 < v57 + v137)
            {
              v70 = v17;
            }

            if (v70 < v13)
            {
              v70 = v13;
            }

            v71 = BLEND8_21892[v24];
            v59 -= (v71 & v59) >> v24;
            v69 = (v71 & *v70) >> v24;
LABEL_89:
            LOBYTE(v59) = v59 + v69;
          }

          if (v16)
          {
            v72 = *v16;
            if ((v16 + 1) < v136)
            {
              ++v16;
            }

            else
            {
              v16 -= 15;
            }

            v73 = (16843008 * v59) | 0xFF;
            if (v6 == 255)
            {
              v74 = DITHERRGBA32(v73, v72);
            }

            else
            {
              v74 = DITHERRGBA32M(v73, v72, v6);
            }
          }

          else
          {
            v16 = 0;
            if (v6 == 255)
            {
              v74 = (v59 >> 3) & 0xFFFF801F | (32 * (v59 >> 3)) & 0x83FF | (v59 >> 3 << 10) | 0xFF000000;
            }

            else
            {
              *v19.i8 = vmul_s32(vorr_s8(vdup_n_s32(v59 << 16), (v59 | 0xFF00000000)), v18);
              *v19.i8 = vadd_s32(vadd_s32(*v19.i8, 0x1000100010001), (*&vshr_n_u32(*v19.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
              v75 = vzip1q_s32(v19, v19);
              v76.i64[0] = vshlq_u32(v75, xmmword_18439C930).u64[0];
              v76.i64[1] = vshlq_u32(v75, xmmword_18439C940).i64[1];
              v77 = vandq_s8(v76, xmmword_18439C950);
              *v77.i8 = vorr_s8(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
              v74 = v77.i32[0] | v77.i32[1] | (32 * (v19.i32[1] >> 27));
            }
          }

          v78 = v74 >> 27;
          if (v8)
          {
            if (v74 >> 27 == 31)
            {
              v79 = HIBYTE(v74);
              *v7 = v74;
              goto LABEL_108;
            }

            if (v78)
            {
              v80 = PDAplusDAM(v74, SHIBYTE(v74), *v7, *v8, HIBYTE(v74) ^ 0xFF);
              *v7 = v80;
              v79 = HIBYTE(v80);
LABEL_108:
              *v8 = v79;
            }
          }

          else
          {
            if (v74 >> 27 != 31)
            {
              if (!v78)
              {
                goto LABEL_109;
              }

              LOWORD(v74) = PDplusDM(v74, *v7, ~v74 >> 24);
            }

            *v7 = v74;
          }

LABEL_109:
          v53 += 2;
          ++v7;
          v8 += v139;
          if (!--v54)
          {
            goto LABEL_112;
          }

          continue;
        }
      }

      if (a5 >= 1)
      {
        v28 = v115;
        v29 = v122;
        while (1)
        {
          v30 = *(v28 - 1);
          v31 = *v28;
          v32 = v27 + v30;
          if (v17 >= v27 + v30)
          {
            v33 = (v27 + v30);
          }

          else
          {
            v33 = v17;
          }

          if (v33 < v13)
          {
            v33 = v13;
          }

          v34 = *v33;
          v35 = v31 & 0xF;
          if ((v31 & 0xF) != 0)
          {
            break;
          }

          if (v24)
          {
            v45 = (v32 + v137);
            if (v17 < v32 + v137)
            {
              v45 = v17;
            }

            if (v45 < v13)
            {
              v45 = v13;
            }

            v46 = BLEND8_21892[v24];
            v34 -= (v46 & v34) >> v24;
            v44 = (v46 & *v45) >> v24;
            goto LABEL_44;
          }

LABEL_45:
          if (v16)
          {
            v47 = *v16;
            if ((v16 + 1) < v136)
            {
              ++v16;
            }

            else
            {
              v16 -= 15;
            }

            v48 = (16843008 * v34) | 0xFF;
            if (v6 == 255)
            {
              v49 = DITHERRGBA32(v48, v47);
            }

            else
            {
              v49 = DITHERRGBA32M(v48, v47, v6);
            }
          }

          else
          {
            v16 = 0;
            if (v6 == 255)
            {
              v49 = (v34 >> 3) & 0xFFFF801F | (32 * (v34 >> 3)) & 0x83FF | (v34 >> 3 << 10) | 0xFF000000;
            }

            else
            {
              *v19.i8 = vmul_s32(vorr_s8(vdup_n_s32(v34 << 16), (v34 | 0xFF00000000)), v18);
              *v19.i8 = vadd_s32(vadd_s32(*v19.i8, 0x1000100010001), (*&vshr_n_u32(*v19.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
              v50 = vzip1q_s32(v19, v19);
              v51.i64[0] = vshlq_u32(v50, xmmword_18439C930).u64[0];
              v51.i64[1] = vshlq_u32(v50, xmmword_18439C940).i64[1];
              v52 = vandq_s8(v51, xmmword_18439C950);
              *v52.i8 = vorr_s8(*v52.i8, *&vextq_s8(v52, v52, 8uLL));
              v49 = v52.i32[0] | v52.i32[1] | (32 * (v19.i32[1] >> 27));
            }
          }

          *v7 = v49;
          if (v8)
          {
            *v8 = HIBYTE(v49);
          }

          v28 += 2;
          ++v7;
          v8 += v139;
          if (!--v29)
          {
            goto LABEL_112;
          }
        }

        v36 = (v32 + (v31 >> 4));
        if (v17 < v36)
        {
          v36 = v17;
        }

        if (v36 < v13)
        {
          v36 = v13;
        }

        v37 = *v36;
        if (v24)
        {
          v38 = (v32 + v137);
          if (v17 >= v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = v17;
          }

          if (v39 < v13)
          {
            v39 = v13;
          }

          v40 = *v39;
          v41 = &v38[v31 >> 4];
          if (v17 < v41)
          {
            v41 = v17;
          }

          if (v41 < v13)
          {
            v41 = v13;
          }

          v42 = BLEND8_21892[v24];
          v34 = v34 - ((v42 & v34) >> v24) + ((v42 & v40) >> v24);
          v37 = v37 - ((v42 & v37) >> v24) + ((v42 & *v41) >> v24);
        }

        v43 = BLEND8_21892[*v28 & 0xF];
        v34 -= (v43 & v34) >> v35;
        v44 = (v43 & v37) >> v35;
LABEL_44:
        LOBYTE(v34) = v34 + v44;
        goto LABEL_45;
      }

LABEL_112:
      v10 = v126;
      v7 += v127;
      v8 += v129;
      LOBYTE(v11) = v125;
      v12 = v131 + v124;
      a6 = v133 - 1;
      result = v123;
      if (v133 == 1)
      {
        return result;
      }
    }

    v24 = 0;
    v137 = 0;
    if (!result)
    {
      goto LABEL_13;
    }

LABEL_10:
    v25 = result + 16 * v132;
    v136 = v25 + 16;
    v16 = (v25 + v121);
    v26 = (v132 + 1) & 0xF;
    if (v132 + 1 <= 0)
    {
      v26 = -(-(v132 + 1) & 0xF);
    }

    v132 = v26;
    goto LABEL_13;
  }

  v81 = 0;
  v82 = 0;
  v83 = vdup_n_s32(v6);
  v84 = v14 - 4;
  v135 = (v9 + 16 * a3);
  v85.i64[1] = 0x7000000F8000000;
  do
  {
    if (result)
    {
      v86 = result + 16 * v132;
      v81 = v86 + 16;
      v82 = (v86 + v121);
      v87 = (v132 + 1) & 0xF;
      if (v132 + 1 <= 0)
      {
        v87 = -(-(v132 + 1) & 0xF);
      }

      v132 = v87;
    }

    v88 = *(a1 + 32) + (v12 >> v11) * v10;
    v134 = a6;
    v89 = v12;
    if (v128 != 1)
    {
      v101 = v135;
      v102 = v122;
      if (a5 < 1)
      {
        goto LABEL_168;
      }

      while (1)
      {
        v103 = *v101;
        v101 += 2;
        v104 = (v88 + v103);
        if (v84 < v88 + v103)
        {
          v104 = v84;
        }

        if (v104 < *(a1 + 32))
        {
          v104 = *(a1 + 32);
        }

        v105 = *v104;
        if (v82)
        {
          v106 = *v82;
          if ((v82 + 1) < v81)
          {
            ++v82;
          }

          else
          {
            v82 -= 15;
          }

          v107 = (16843008 * v105) | 0xFF;
          if (v6 == 255)
          {
            v108 = DITHERRGBA32(v107, v106);
          }

          else
          {
            v108 = DITHERRGBA32M(v107, v106, v6);
          }
        }

        else
        {
          v82 = 0;
          if (v6 == 255)
          {
            v108 = (v105 >> 3) & 0xFFFF801F | (32 * (v105 >> 3)) & 0x83FF | (v105 >> 3 << 10) | 0xFF000000;
          }

          else
          {
            *v85.i8 = vmul_s32(vorr_s8(vdup_n_s32(v105 << 16), (v105 | 0xFF00000000)), v83);
            *v85.i8 = vadd_s32(vadd_s32(*v85.i8, 0x1000100010001), (*&vshr_n_u32(*v85.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
            v109 = vzip1q_s32(v85, v85);
            v110.i64[0] = vshlq_u32(v109, xmmword_18439C930).u64[0];
            v110.i64[1] = vshlq_u32(v109, xmmword_18439C940).i64[1];
            v111 = vandq_s8(v110, xmmword_18439C950);
            *v111.i8 = vorr_s8(*v111.i8, *&vextq_s8(v111, v111, 8uLL));
            v108 = v111.i32[0] | v111.i32[1] | (32 * (v85.i32[1] >> 27));
          }
        }

        v112 = v108 >> 27;
        if (v8)
        {
          if (v108 >> 27 == 31)
          {
            v113 = HIBYTE(v108);
            *v7 = v108;
LABEL_166:
            *v8 = v113;
            goto LABEL_167;
          }

          if (v112)
          {
            v114 = PDAplusDAM(v108, SHIBYTE(v108), *v7, *v8, HIBYTE(v108) ^ 0xFF);
            *v7 = v114;
            v113 = HIBYTE(v114);
            goto LABEL_166;
          }
        }

        else
        {
          if (v108 >> 27 == 31)
          {
            goto LABEL_163;
          }

          if (v112)
          {
            LOWORD(v108) = PDplusDM(v108, *v7, ~v108 >> 24);
LABEL_163:
            *v7 = v108;
          }
        }

LABEL_167:
        ++v7;
        v8 += v139;
        if (!--v102)
        {
          goto LABEL_168;
        }
      }
    }

    if (a5 >= 1)
    {
      v90 = v135;
      v91 = v122;
      do
      {
        v92 = *v90;
        v90 += 2;
        v93 = (v88 + v92);
        if (v84 < v88 + v92)
        {
          v93 = v84;
        }

        if (v93 < *(a1 + 32))
        {
          v93 = *(a1 + 32);
        }

        v94 = *v93;
        if (v82)
        {
          v95 = *v82;
          if ((v82 + 1) < v81)
          {
            ++v82;
          }

          else
          {
            v82 -= 15;
          }

          v96 = (16843008 * v94) | 0xFF;
          if (v6 == 255)
          {
            v97 = DITHERRGBA32(v96, v95);
          }

          else
          {
            v97 = DITHERRGBA32M(v96, v95, v6);
          }
        }

        else
        {
          v82 = 0;
          if (v6 == 255)
          {
            v97 = (v94 >> 3) & 0xFFFF801F | (32 * (v94 >> 3)) & 0x83FF | (v94 >> 3 << 10) | 0xFF000000;
          }

          else
          {
            *v85.i8 = vmul_s32(vorr_s8(vdup_n_s32(v94 << 16), (v94 | 0xFF00000000)), v83);
            *v85.i8 = vadd_s32(vadd_s32(*v85.i8, 0x1000100010001), (*&vshr_n_u32(*v85.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
            v98 = vzip1q_s32(v85, v85);
            v99.i64[0] = vshlq_u32(v98, xmmword_18439C930).u64[0];
            v99.i64[1] = vshlq_u32(v98, xmmword_18439C940).i64[1];
            v100 = vandq_s8(v99, xmmword_18439C950);
            *v100.i8 = vorr_s8(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
            v97 = v100.i32[0] | v100.i32[1] | (32 * (v85.i32[1] >> 27));
          }
        }

        *v7 = v97;
        if (v8)
        {
          *v8 = HIBYTE(v97);
        }

        ++v7;
        v8 += v139;
        --v91;
      }

      while (v91);
    }

LABEL_168:
    v10 = v126;
    v7 += v127;
    v8 += v129;
    LOBYTE(v11) = v125;
    v12 = v89 + v124;
    a6 = v134 - 1;
    result = v123;
  }

  while (v134 != 1);
  return result;
}

uint64_t rgb555_colorlookup(int a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  if (a1 == 3)
  {
    v4 = *a2;
  }

  else
  {
    if (a3)
    {
      v5 = *a3 << 24;
    }

    else
    {
      v5 = 4278190080;
    }

    v4 = v5 | *a2;
  }

  pthread_mutex_lock(&rgb555_cacheColorLock);
  v6 = rgb555_cacheColor;
  if (rgb555_cacheColor && *(rgb555_cacheColor + 16) == v4)
  {
    v7 = rgb555_cacheColor;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      if (!v6)
      {
        goto LABEL_15;
      }

      v7 = v6;
      v9 = v8;
      if (*(v6 + 2) == v4)
      {
        break;
      }

      v6 = *v6;
      v8 = v7;
      if (!*v7)
      {
        if (rgb555_cacheColorCount > 6)
        {
          *v9 = 0;
          v12 = *(v7 + 1);
        }

        else
        {
LABEL_15:
          v10 = rgb555_cacheColorBase;
          if (rgb555_cacheColorBase)
          {
            v11 = rgb555_cacheColorCount;
          }

          else
          {
            v10 = malloc_type_calloc(1uLL, 0x1CA8uLL, 0x1020040A1C41DBCuLL);
            v11 = 0;
            rgb555_cacheColorBase = v10;
          }

          v7 = &v10[24 * v11];
          v12 = &v10[1024 * v11 + 168];
          *(v7 + 1) = v12;
          rgb555_cacheColorCount = v11 + 1;
        }

        *v7 = rgb555_cacheColor;
        rgb555_cacheColor = v7;
        *(v7 + 2) = v4;
        if (a1 == 3)
        {
          v13 = 0;
          v14 = 244;
          v15 = 188;
          do
          {
            v16 = pixel_dither_noise[v13 + 1];
            *(v12 + 4 * v13) = (4 * (v15 + HIDWORD(v4))) & 0x7C00 | ((v15 + WORD1(v4)) >> 3) & 0x3E0 | ((v15 + v4) >> 8) & 0x1F | ((((v14 + WORD1(v4)) >> 8) & 0x1F) << 21) & 0x83E0FFFF | ((((v14 + HIDWORD(v4)) >> 8) & 0x1F) << 26) | ((((v14 + v4) >> 8) & 0x1F) << 16);
            *(v12 + 2 * v13 + 512) = ((v15 + HIWORD(v4)) >> 5) & 0xF8 | ((v15 + HIWORD(v4)) >> 10) & 7 | ((v14 + HIWORD(v4)) >> 2) & 0x700 | ((((v14 + HIWORD(v4)) >> 8) & 0x1F) << 11);
            v14 = v16;
            v15 = v16 >> 8;
            ++v13;
          }

          while (v13 != 128);
        }

        else
        {
          v17 = 0;
          do
          {
            *(v12 + 4 * v17) = PDAM(v4, SBYTE3(v4), v17);
            ++v17;
          }

          while (v17 != 256);
        }

        goto LABEL_28;
      }
    }

    if (v8)
    {
      *v8 = *v6;
      *v6 = rgb555_cacheColor;
      rgb555_cacheColor = v6;
    }
  }

LABEL_28:
  pthread_mutex_unlock(&rgb555_cacheColorLock);
  return *(v7 + 1);
}

uint64_t rgb555_mark_constmask(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 28);
  v6 = *(a1 + 48);
  v217 = *(a1 + 40);
  v223 = *(a1 + 4);
  v7 = *(a1 + 136);
  result = rgb555_colorlookup(4, *(a1 + 88), *(a1 + 96));
  v9 = result;
  v10 = *(result + 1020);
  v11 = *(a1 + 12);
  v12 = *(a1 + 16);
  if (v6)
  {
    v13 = *(a1 + 32);
    v14 = (v6 + v13 * v12 + v11);
    v15 = 1;
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v15 = 0;
    if (!v7)
    {
      return result;
    }
  }

  v16 = v13 - v223;
  if (v6)
  {
    v13 -= v223;
  }

  v214 = v13;
  v17 = a2;
  v18 = v5 >> 1;
  v19 = BYTE3(v10);
  v20 = (v217 + 2 * v18 * v12 + 2 * v11);
  v21 = *(a1 + 124);
  v22 = v7 + *(a1 + 108) * v21 + *(a1 + 104);
  v218 = v21 - v223;
  v23 = v18 - v223;
  switch(v17)
  {
    case 0:
      if (v6)
      {
        while (1)
        {
          v24 = v223;
          do
          {
            v25 = *v22;
            if (v25 < 0xF8)
            {
              if (v25 < 8)
              {
                goto LABEL_15;
              }

              result = PDAM(v20->u16[0], *v14, ~v25);
              v20->i16[0] = result;
              v26 = BYTE3(result);
            }

            else
            {
              LOBYTE(v26) = 0;
              v20->i16[0] = 0;
            }

            *v14 = v26;
LABEL_15:
            ++v22;
            v20 = (v20 + 2);
            v14 += v15;
            --v24;
          }

          while (v24);
          v22 += v218;
          v20 = (v20 + 2 * v23);
          v14 += v214;
          if (!--v4)
          {
            return result;
          }
        }
      }

LABEL_229:
      v102 = v223;
      while (1)
      {
        v103 = *v22;
        if (v103 > 0xF7)
        {
          break;
        }

        if (v103 >= 8)
        {
          result = PDM(v20->u16[0], ~v103);
          goto LABEL_234;
        }

LABEL_235:
        ++v22;
        v20 = (v20 + 2);
        if (!--v102)
        {
          v22 += v218;
          v20 = (v20 + 2 * v23);
          if (!--v4)
          {
            return result;
          }

          goto LABEL_229;
        }
      }

      result = 0;
LABEL_234:
      v20->i16[0] = result;
      goto LABEL_235;
    case 1:
      v127 = v22 & 3;
      if (v6)
      {
        v128 = v127 + v223;
        v129 = v20 - (v22 & 3);
        if ((v22 & 3) != 0)
        {
          v130 = v22 & 0xFC;
        }

        else
        {
          v130 = v22;
        }

        if ((v22 & 3) != 0)
        {
          result = (-1 << (8 * v127));
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }

        if ((v22 & 3) != 0)
        {
          v131 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v131 = v22;
        }

        if ((v22 & 3) != 0)
        {
          v132 = &v14[-(v22 & 3)];
        }

        else
        {
          v132 = v14;
        }

        if (v127)
        {
          v20 = v129;
        }

        else
        {
          v128 = v223;
        }

        if (((v128 + v130) & 3) != 0)
        {
          v133 = 4 - ((v128 + v130) & 3);
          v127 += v133;
          v134 = 0xFFFFFFFF >> (8 * v133);
          if (v128 >= 4)
          {
            v135 = 0xFFFFFFFF >> (8 * v133);
          }

          else
          {
            v135 = 0;
          }

          v225 = v135;
          if (v128 >= 4)
          {
            v134 = -1;
          }

          result = v134 & result;
          v215 = result;
        }

        else
        {
          v215 = result;
          v225 = 0;
        }

        v220 = v218 - v127;
        v211 = v23 - v127;
        v209 = v128 >> 2;
        v207 = v16 - v127;
        while (1)
        {
          v183 = *v131 & v215;
          v184 = v209;
          v185 = v225;
          if (!v183)
          {
            goto LABEL_410;
          }

LABEL_408:
          if (v183 == -1)
          {
            v20->i16[0] = v10;
            *v132 = BYTE3(v10);
            v20->i16[1] = v10;
            v132[1] = BYTE3(v10);
            v20->i16[2] = v10;
            v132[2] = BYTE3(v10);
LABEL_431:
            v20->i16[3] = v10;
            v132[3] = BYTE3(v10);
            goto LABEL_410;
          }

          while (1)
          {
            if (v183 < 0xF8u)
            {
              if (v183 < 8u)
              {
                goto LABEL_420;
              }

              result = PDAplusDAM(*(v9 + 4 * v183), HIBYTE(*(v9 + 4 * v183)), v20->u16[0], *v132, ~v183);
              v20->i16[0] = result;
              v187 = BYTE3(result);
            }

            else
            {
              v20->i16[0] = v10;
              v187 = BYTE3(v10);
            }

            *v132 = v187;
LABEL_420:
            if (BYTE1(v183) < 0xF8u)
            {
              if (BYTE1(v183) < 8u)
              {
                goto LABEL_425;
              }

              result = PDAplusDAM(*(v9 + 4 * BYTE1(v183)), HIBYTE(*(v9 + 4 * BYTE1(v183))), v20->u16[1], v132[1], ~(v183 >> 8));
              v20->i16[1] = result;
              v188 = BYTE3(result);
            }

            else
            {
              v20->i16[1] = v10;
              v188 = BYTE3(v10);
            }

            v132[1] = v188;
LABEL_425:
            if (BYTE2(v183) < 0xF8u)
            {
              if (BYTE2(v183) < 8u)
              {
                goto LABEL_430;
              }

              result = PDAplusDAM(*(v9 + 4 * BYTE2(v183)), HIBYTE(*(v9 + 4 * BYTE2(v183))), v20->u16[2], v132[2], ~HIWORD(v183));
              v20->i16[2] = result;
              v189 = BYTE3(result);
            }

            else
            {
              v20->i16[2] = v10;
              v189 = BYTE3(v10);
            }

            v132[2] = v189;
LABEL_430:
            if (v183 >> 27 == 31)
            {
              goto LABEL_431;
            }

            if (v183 >> 27)
            {
              result = PDAplusDAM(*(v9 + 4 * HIBYTE(v183)), HIBYTE(*(v9 + 4 * HIBYTE(v183))), v20->u16[3], v132[3], ~v183 >> 24);
              v20->i16[3] = result;
              v132[3] = BYTE3(result);
            }

LABEL_410:
            while (1)
            {
              v186 = v184;
              ++v20;
              v132 += 4;
              --v184;
              ++v131;
              if (v186 < 2)
              {
                break;
              }

              v183 = *v131;
              if (*v131)
              {
                goto LABEL_408;
              }
            }

            if (!v185)
            {
              break;
            }

            v185 = 0;
            v183 = *v131 & v225;
          }

          v131 = (v131 + v220);
          v20 = (v20 + 2 * v211);
          v132 += v207;
          if (!--v4)
          {
            return result;
          }
        }
      }

      v159 = v18 - v223;
      v160 = v127 + v223;
      if ((v22 & 3) != 0)
      {
        v161 = v22 & 0xFC;
      }

      else
      {
        v161 = v22;
      }

      if ((v22 & 3) != 0)
      {
        v162 = -1 << (8 * v127);
      }

      else
      {
        v162 = -1;
      }

      if ((v22 & 3) != 0)
      {
        v163 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v163 = v22;
      }

      if ((v22 & 3) != 0)
      {
        v164 = (v20 - 2 * (v22 & 3));
      }

      else
      {
        v164 = v20;
      }

      if ((v22 & 3) == 0)
      {
        v160 = v223;
      }

      if (((v160 + v161) & 3) != 0)
      {
        v165 = 4 - ((v160 + v161) & 3);
        v127 += v165;
        v166 = 0xFFFFFFFF >> (8 * v165);
        if (v160 >= 4)
        {
          v167 = 0xFFFFFFFF >> (8 * v165);
        }

        else
        {
          v167 = 0;
        }

        if (v160 >= 4)
        {
          v166 = -1;
        }

        v227 = v166 & v162;
      }

      else
      {
        v227 = v162;
        v167 = 0;
      }

      v222 = v218 - v127;
      v216 = v160 >> 2;
      v198 = vdup_n_s16(v10);
      v213 = v159 - v127;
LABEL_459:
      v199 = *v163 & v227;
      v200 = v216;
      v201 = v167;
      if (!v199)
      {
        goto LABEL_462;
      }

LABEL_460:
      if (v199 == -1)
      {
        *v164 = v198;
        goto LABEL_462;
      }

      while (1)
      {
        v203 = v10;
        if (v199 <= 0xF7u)
        {
          if (v199 < 8u)
          {
            goto LABEL_471;
          }

          v203 = PDplusDM(*(v9 + 4 * v199), v164->u16[0], ~v199);
        }

        v164->i16[0] = v203;
LABEL_471:
        v204 = v10;
        if (BYTE1(v199) <= 0xF7u)
        {
          if (BYTE1(v199) < 8u)
          {
            goto LABEL_475;
          }

          v204 = PDplusDM(*(v9 + 4 * BYTE1(v199)), v164->u16[1], ~(v199 >> 8));
        }

        v164->i16[1] = v204;
LABEL_475:
        result = v10;
        if (BYTE2(v199) <= 0xF7u)
        {
          if (BYTE2(v199) < 8u)
          {
            goto LABEL_479;
          }

          result = PDplusDM(*(v9 + 4 * BYTE2(v199)), v164->u16[2], ~HIWORD(v199));
        }

        v164->i16[2] = result;
LABEL_479:
        if (v199 >> 27 == 31)
        {
          v164->i16[3] = v10;
        }

        else if (v199 >> 27)
        {
          result = PDplusDM(*(v9 + 4 * HIBYTE(v199)), v164->u16[3], ~v199 >> 24);
          v164->i16[3] = result;
        }

LABEL_462:
        while (1)
        {
          v202 = v200;
          ++v164;
          --v200;
          ++v163;
          if (v202 < 2)
          {
            break;
          }

          v199 = *v163;
          if (*v163)
          {
            goto LABEL_460;
          }
        }

        if (!v201)
        {
          v163 = (v163 + v222);
          v164 = (v164 + 2 * v213);
          if (!--v4)
          {
            return result;
          }

          goto LABEL_459;
        }

        v201 = 0;
        v199 = *v163 & v167;
      }

    case 2:
      v110 = v22 & 3;
      if (v6)
      {
        v111 = v110 + v223;
        v112 = v20 - (v22 & 3);
        v113 = &v14[-(v22 & 3)];
        if ((v22 & 3) != 0)
        {
          v114 = v22 & 0xFC;
        }

        else
        {
          v114 = v22;
        }

        if ((v22 & 3) != 0)
        {
          result = (-1 << (8 * v110));
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }

        if ((v22 & 3) != 0)
        {
          v22 &= 0xFFFFFFFFFFFFFFFCLL;
          v14 = v113;
          v20 = v112;
        }

        else
        {
          v111 = v223;
        }

        if (((v111 + v114) & 3) != 0)
        {
          v115 = 4 - ((v111 + v114) & 3);
          v110 += v115;
          v116 = 0xFFFFFFFF >> (8 * v115);
          if (v111 >= 4)
          {
            v117 = 0xFFFFFFFF >> (8 * v115);
          }

          else
          {
            v117 = 0;
          }

          v224 = v117;
          if (v111 >= 4)
          {
            v116 = -1;
          }

          result = v116 & result;
          v210 = result;
        }

        else
        {
          v210 = result;
          v224 = 0;
        }

        v219 = v218 - v110;
        v208 = v23 - v110;
        v206 = v111 >> 2;
        v205 = v16 - v110;
        while (1)
        {
          v168 = *v22 & v210;
          v169 = v206;
          v170 = v224;
          if (!v168)
          {
            goto LABEL_389;
          }

LABEL_387:
          if (v168 == -1)
          {
            break;
          }

          while (1)
          {
            if ((v168 & 0xF8) != 0)
            {
              v180 = HIBYTE(*(v9 + 4 * v168));
              result = PDAplusDAM(*(v9 + 4 * v168), v180, v20->u16[0], *v14, v180 ^ 0xFFu);
              v20->i16[0] = result;
              *v14 = BYTE3(result);
            }

            if ((v168 & 0xF800) != 0)
            {
              v181 = HIBYTE(*(v9 + 4 * BYTE1(v168)));
              result = PDAplusDAM(*(v9 + 4 * BYTE1(v168)), v181, v20->u16[1], v14[1], v181 ^ 0xFFu);
              v20->i16[1] = result;
              v14[1] = BYTE3(result);
            }

            if ((v168 & 0xF80000) != 0)
            {
              v182 = HIBYTE(*(v9 + 4 * BYTE2(v168)));
              result = PDAplusDAM(*(v9 + 4 * BYTE2(v168)), v182, v20->u16[2], v14[2], v182 ^ 0xFFu);
              v20->i16[2] = result;
              v14[2] = BYTE3(result);
            }

            if (v168 >> 27)
            {
              v178 = HIBYTE(*(v9 + 4 * HIBYTE(v168)));
              v174 = v20->u16[3];
              v175 = v14[3];
              v176 = *(v9 + 4 * HIBYTE(v168));
              v177 = v178 ^ 0xFF;
              goto LABEL_402;
            }

LABEL_389:
            while (1)
            {
              v179 = v169;
              ++v20;
              v14 += 4;
              --v169;
              v22 += 4;
              if (v179 < 2)
              {
                break;
              }

              v168 = *v22;
              if (*v22)
              {
                goto LABEL_387;
              }
            }

            if (!v170)
            {
              break;
            }

            v170 = 0;
            v168 = *v22 & v224;
          }

          v22 += v219;
          v20 = (v20 + 2 * v208);
          v14 += v205;
          if (!--v4)
          {
            return result;
          }
        }

        v171 = PDAplusDAM(v10, SBYTE3(v10), v20->u16[0], *v14, ~BYTE3(v10));
        v20->i16[0] = v171;
        *v14 = BYTE3(v171);
        v172 = PDAplusDAM(v10, SBYTE3(v10), v20->u16[1], v14[1], ~BYTE3(v10));
        v20->i16[1] = v172;
        v14[1] = BYTE3(v172);
        v173 = PDAplusDAM(v10, SBYTE3(v10), v20->u16[2], v14[2], ~BYTE3(v10));
        v20->i16[2] = v173;
        v14[2] = HIBYTE(v173);
        v174 = v20->u16[3];
        v175 = v14[3];
        v176 = v10;
        v177 = ~BYTE3(v10);
        v178 = BYTE3(v10);
LABEL_402:
        result = PDAplusDAM(v176, v178, v174, v175, v177);
        v20->i16[3] = result;
        v14[3] = BYTE3(result);
        goto LABEL_389;
      }

      v150 = v18 - v223;
      v151 = v110 + v223;
      if ((v22 & 3) != 0)
      {
        v152 = v22 & 0xFC;
      }

      else
      {
        v152 = v22;
      }

      if ((v22 & 3) != 0)
      {
        v153 = -1 << (8 * v110);
      }

      else
      {
        v153 = -1;
      }

      if ((v22 & 3) != 0)
      {
        v154 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v154 = v22;
      }

      if ((v22 & 3) != 0)
      {
        v155 = v20 - (v22 & 3);
      }

      else
      {
        v155 = v20;
      }

      if ((v22 & 3) == 0)
      {
        v151 = v223;
      }

      if (((v151 + v152) & 3) != 0)
      {
        v156 = 4 - ((v151 + v152) & 3);
        v110 += v156;
        v157 = 0xFFFFFFFF >> (8 * v156);
        if (v151 >= 4)
        {
          v158 = 0xFFFFFFFF >> (8 * v156);
        }

        else
        {
          v158 = 0;
        }

        if (v151 >= 4)
        {
          v157 = -1;
        }

        v226 = v157 & v153;
      }

      else
      {
        v226 = v153;
        v158 = 0;
      }

      v221 = v218 - v110;
      v190 = v151 >> 2;
      v212 = v150 - v110;
      do
      {
        v191 = *v154 & v226;
        v192 = v190;
        v193 = v158;
        if (!v191)
        {
          goto LABEL_441;
        }

LABEL_439:
        if (v191 == -1)
        {
          *v155 = PDplusDM(v10, *v155, ~BYTE3(v10));
          v155[1] = PDplusDM(v10, v155[1], ~BYTE3(v10));
          v155[2] = PDplusDM(v10, v155[2], ~BYTE3(v10));
          v194 = v155[3];
          v195 = v10;
          v196 = ~BYTE3(v10);
LABEL_454:
          result = PDplusDM(v195, v194, v196);
          v155[3] = result;
          goto LABEL_441;
        }

        while (1)
        {
          if ((v191 & 0xF8) != 0)
          {
            result = PDplusDM(*(v9 + 4 * v191), *v155, ~*(v9 + 4 * v191) >> 24);
            *v155 = result;
          }

          if ((v191 & 0xF800) != 0)
          {
            result = PDplusDM(*(v9 + 4 * BYTE1(v191)), v155[1], ~*(v9 + 4 * BYTE1(v191)) >> 24);
            v155[1] = result;
          }

          if ((v191 & 0xF80000) != 0)
          {
            result = PDplusDM(*(v9 + 4 * BYTE2(v191)), v155[2], ~*(v9 + 4 * BYTE2(v191)) >> 24);
            v155[2] = result;
          }

          if (v191 >> 27)
          {
            v194 = v155[3];
            v196 = ~*(v9 + 4 * HIBYTE(v191)) >> 24;
            v195 = *(v9 + 4 * HIBYTE(v191));
            goto LABEL_454;
          }

LABEL_441:
          while (1)
          {
            v197 = v192;
            v155 += 4;
            --v192;
            ++v154;
            if (v197 < 2)
            {
              break;
            }

            v191 = *v154;
            if (*v154)
            {
              goto LABEL_439;
            }
          }

          if (!v193)
          {
            break;
          }

          v193 = 0;
          v191 = *v154 & v158;
        }

        v154 = (v154 + v221);
        v155 += v212;
        --v4;
      }

      while (v4);
      return result;
    case 3:
      while (1)
      {
        v56 = v223;
        do
        {
          v57 = *v22;
          if (v57 < 0xF8)
          {
            if (v57 < 8)
            {
              goto LABEL_105;
            }

            v58 = *v14;
            result = PDAplusDAM(*(v9 + 4 * ((v58 * v57 + ((v58 * v57) >> 8) + 1) >> 8)), HIBYTE(*(v9 + 4 * ((v58 * v57 + ((v58 * v57) >> 8) + 1) >> 8))), v20->u16[0], v58, v57 ^ 0xFF);
          }

          else
          {
            result = *(v9 + 4 * *v14);
          }

          v20->i16[0] = result;
          *v14 = BYTE3(result);
LABEL_105:
          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v56;
        }

        while (v56);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        if (!--v4)
        {
          return result;
        }
      }

    case 4:
      while (1)
      {
        v39 = v223;
        do
        {
          v40 = *v22;
          if (v40 < 0xF8)
          {
            if (v40 < 8)
            {
              goto LABEL_57;
            }

            v41 = *v14;
            result = PDAplusDAM(*(v9 + 4 * (((v41 ^ 0xFF) * v40 + (((v41 ^ 0xFF) * v40) >> 8) + 1) >> 8)), HIBYTE(*(v9 + 4 * (((v41 ^ 0xFF) * v40 + (((v41 ^ 0xFF) * v40) >> 8) + 1) >> 8))), v20->u16[0], v41, v40 ^ 0xFF);
          }

          else
          {
            result = *(v9 + 4 * ~*v14);
          }

          v20->i16[0] = result;
          *v14 = BYTE3(result);
LABEL_57:
          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v39;
        }

        while (v39);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        if (!--v4)
        {
          return result;
        }
      }

    case 5:
      do
      {
        v67 = v223;
        do
        {
          v68 = *v22;
          if (v68 >= 8)
          {
            result = PDAMplusDAM(*(v9 + 4 * v68), HIBYTE(*(v9 + 4 * v68)), *v14, v20->u16[0], *v14, HIBYTE(*(v9 + 4 * v68)) ^ 0xFFu);
            v20->i16[0] = result;
            *v14 = BYTE3(result);
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v67;
        }

        while (v67);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 6:
      while (1)
      {
        v77 = v223;
        do
        {
          v78 = *v22;
          if (v78 < 8)
          {
            goto LABEL_165;
          }

          v79 = *v14;
          if (v79 > 7)
          {
            if (v79 > 0xF7)
            {
              goto LABEL_165;
            }

            result = PDAplusDAM(v20->u16[0], v79, *(v9 + 4 * v78), HIBYTE(*(v9 + 4 * v78)), ~v79);
          }

          else
          {
            result = *(v9 + 4 * v78);
          }

          v20->i16[0] = result;
          *v14 = BYTE3(result);
LABEL_165:
          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v77;
        }

        while (v77);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        if (!--v4)
        {
          return result;
        }
      }

    case 7:
      if (v6)
      {
        while (1)
        {
          v118 = v223;
          do
          {
            v119 = *v22;
            if (v119 < 0xF8)
            {
              if (v119 < 8)
              {
                goto LABEL_282;
              }

              v120 = v20->u16[0];
              v121 = *v14;
              LOBYTE(v122) = ~v119 + ((v19 * v119 + ((v19 * v119) >> 8) + 1) >> 8);
            }

            else
            {
              v120 = v20->u16[0];
              v121 = *v14;
              v122 = BYTE3(v10);
            }

            result = PDAM(v120, v121, v122);
            v20->i16[0] = result;
            *v14 = BYTE3(result);
LABEL_282:
            ++v22;
            v20 = (v20 + 2);
            v14 += v15;
            --v118;
          }

          while (v118);
          v22 += v218;
          v20 = (v20 + 2 * v23);
          v14 += v214;
          if (!--v4)
          {
            return result;
          }
        }
      }

LABEL_285:
      v123 = v223;
      while (1)
      {
        v124 = *v22;
        if (v124 >= 0xF8)
        {
          break;
        }

        if (v124 >= 8)
        {
          v125 = v20->u16[0];
          LOBYTE(v126) = ~v124 + ((v19 * v124 + ((v19 * v124) >> 8) + 1) >> 8);
          goto LABEL_290;
        }

LABEL_291:
        ++v22;
        v20 = (v20 + 2);
        if (!--v123)
        {
          v22 += v218;
          v20 = (v20 + 2 * v23);
          if (!--v4)
          {
            return result;
          }

          goto LABEL_285;
        }
      }

      v125 = v20->u16[0];
      v126 = BYTE3(v10);
LABEL_290:
      result = PDM(v125, v126);
      v20->i16[0] = result;
      goto LABEL_291;
    case 8:
      if (v6)
      {
        while (1)
        {
          v136 = v23;
          v137 = v223;
          do
          {
            v138 = *v22;
            if (v138 < 0xF8)
            {
              if (v138 < 8)
              {
                goto LABEL_324;
              }

              v139 = v20->u16[0];
              v140 = *v14;
              v141 = ~((v19 * v138 + ((v19 * v138) >> 8) + 1) >> 8);
            }

            else
            {
              v139 = v20->u16[0];
              v140 = *v14;
              v141 = ~BYTE3(v10);
            }

            result = PDAM(v139, v140, v141);
            v20->i16[0] = result;
            *v14 = BYTE3(result);
LABEL_324:
            ++v22;
            v20 = (v20 + 2);
            v14 += v15;
            --v137;
          }

          while (v137);
          v22 += v218;
          v23 = v136;
          v20 = (v20 + 2 * v136);
          v14 += v214;
          if (!--v4)
          {
            return result;
          }
        }
      }

      break;
    case 9:
      do
      {
        v42 = v223;
        do
        {
          v43 = *v22;
          if (v43 >= 8)
          {
            result = PDAMplusDAM(*(v9 + 4 * v43), HIBYTE(*(v9 + 4 * v43)), *v14 ^ 0xFFu, v20->u16[0], *v14, (~v43 + HIBYTE(*(v9 + 4 * v43))));
            v20->i16[0] = result;
            *v14 = BYTE3(result);
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v42;
        }

        while (v42);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 10:
      do
      {
        v84 = v223;
        do
        {
          v85 = *v22;
          if (v85 >= 8)
          {
            result = PDAMplusDAM(*(v9 + 4 * v85), HIBYTE(*(v9 + 4 * v85)), *v14 ^ 0xFFu, v20->u16[0], *v14, HIBYTE(*(v9 + 4 * v85)) ^ 0xFFu);
            v20->i16[0] = result;
            *v14 = BYTE3(result);
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v84;
        }

        while (v84);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 11:
      if (v6)
      {
        do
        {
          v104 = v223;
          do
          {
            v105 = *v22;
            if (v105 >= 8)
            {
              result = PDAplusdDA(v20->u16[0], *v14, *(v9 + 4 * v105), HIBYTE(*(v9 + 4 * v105)));
              v20->i16[0] = result;
              *v14 = BYTE3(result);
            }

            ++v22;
            v20 = (v20 + 2);
            v14 += v15;
            --v104;
          }

          while (v104);
          v22 += v218;
          v20 = (v20 + 2 * v23);
          v14 += v214;
          --v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v106 = v223;
          do
          {
            v107 = *v22;
            if (v107 >= 8)
            {
              result = PDplusdDA(v20->u16[0], *(v9 + 4 * v107), HIBYTE(*(v9 + 4 * v107)));
              v20->i16[0] = result;
            }

            ++v22;
            v20 = (v20 + 2);
            --v106;
          }

          while (v106);
          v22 += v218;
          v20 = (v20 + 2 * v23);
          --v4;
        }

        while (v4);
      }

      return result;
    case 12:
      if (v6)
      {
        do
        {
          v108 = v223;
          do
          {
            v109 = *v22;
            if (v109 >= 8)
            {
              result = PDApluslDA(v20->u16[0], *v14, *(v9 + 4 * v109), HIBYTE(*(v9 + 4 * v109)));
              v20->i16[0] = result;
              *v14 = BYTE3(result);
            }

            ++v22;
            v20 = (v20 + 2);
            v14 += v15;
            --v108;
          }

          while (v108);
          v22 += v218;
          v20 = (v20 + 2 * v23);
          v14 += v214;
          --v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v147 = v223;
          do
          {
            v148 = *v22;
            if (v148 >= 8)
            {
              v149 = ((v20->u16[0] | (v20->u16[0] << 15)) & 0x1F07C1F) + (*(result + 4 * v148) & 0x7C1F | (((*(result + 4 * v148) >> 5) & 0x1F) << 20));
              v20->i16[0] = (((30 * ((v149 >> 5) & 0x100401)) | (15 * ((v149 >> 5) & 0x100401)) | v149) >> 15) & 0x3E0 | ((30 * ((v149 >> 5) & 0x401)) | (15 * ((v149 >> 5) & 0x401)) | v149) & 0x7C1F;
            }

            ++v22;
            v20 = (v20 + 2);
            --v147;
          }

          while (v147);
          v22 += v218;
          v20 = (v20 + 2 * v23);
          --v4;
        }

        while (v4);
      }

      return result;
    case 13:
      do
      {
        v73 = v223;
        do
        {
          v74 = *v22;
          if (v74 >= 8)
          {
            result = *(v9 + 4 * v74);
            if (result >> 27)
            {
              v75 = BYTE3(result);
              if (v6)
              {
                v76 = *v14;
                if (v76 >= 8)
                {
                  result = PDAmultiplyPDA(v20->u16[0], v76, *(v9 + 4 * v74), v75);
                  v75 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v75;
              }

              else
              {
                result = PDAmultiplyPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v74), v75);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v73;
        }

        while (v73);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 14:
      do
      {
        v35 = v223;
        do
        {
          v36 = *v22;
          if (v36 >= 8)
          {
            result = *(v9 + 4 * v36);
            if (result >> 27)
            {
              v37 = BYTE3(result);
              if (v6)
              {
                v38 = *v14;
                if (v38 >= 8)
                {
                  result = PDAscreenPDA(v20->u16[0], v38, *(v9 + 4 * v36), v37);
                  v37 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v37;
              }

              else
              {
                result = PDAscreenPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v36), v37);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v35;
        }

        while (v35);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 15:
      do
      {
        v52 = v223;
        do
        {
          v53 = *v22;
          if (v53 >= 8)
          {
            result = *(v9 + 4 * v53);
            if (result >> 27)
            {
              v54 = BYTE3(result);
              if (v6)
              {
                v55 = *v14;
                if (v55 >= 8)
                {
                  result = PDAoverlayPDA(v20->u16[0], v55, *(v9 + 4 * v53), v54);
                  v54 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v54;
              }

              else
              {
                result = PDAoverlayPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v53), v54);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v52;
        }

        while (v52);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 16:
      do
      {
        v31 = v223;
        do
        {
          v32 = *v22;
          if (v32 >= 8)
          {
            result = *(v9 + 4 * v32);
            if (result >> 27)
            {
              v33 = BYTE3(result);
              if (v6)
              {
                v34 = *v14;
                if (v34 >= 8)
                {
                  result = PDAdarkenPDA(v20->u16[0], v34, *(v9 + 4 * v32), v33);
                  v33 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v33;
              }

              else
              {
                result = PDAdarkenPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v32), v33);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v31;
        }

        while (v31);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 17:
      do
      {
        v59 = v223;
        do
        {
          v60 = *v22;
          if (v60 >= 8)
          {
            result = *(v9 + 4 * v60);
            if (result >> 27)
            {
              v61 = BYTE3(result);
              if (v6)
              {
                v62 = *v14;
                if (v62 >= 8)
                {
                  result = PDAlightenPDA(v20->u16[0], v62, *(v9 + 4 * v60), v61);
                  v61 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v61;
              }

              else
              {
                result = PDAlightenPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v60), v61);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v59;
        }

        while (v59);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 18:
      do
      {
        v80 = v223;
        do
        {
          v81 = *v22;
          if (v81 >= 8)
          {
            result = *(v9 + 4 * v81);
            if (result >> 27)
            {
              v82 = BYTE3(result);
              if (v6)
              {
                v83 = *v14;
                if (v83 >= 8)
                {
                  result = PDAcolordodgePDA(v20->u16[0], v83, *(v9 + 4 * v81), v82);
                  v82 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v82;
              }

              else
              {
                result = PDAcolordodgePDA(v20->u16[0], 0xFFu, *(v9 + 4 * v81), v82);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v80;
        }

        while (v80);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 19:
      do
      {
        v90 = v223;
        do
        {
          v91 = *v22;
          if (v91 >= 8)
          {
            result = *(v9 + 4 * v91);
            if (result >> 27)
            {
              v92 = BYTE3(result);
              if (v6)
              {
                v93 = *v14;
                if (v93 >= 8)
                {
                  result = PDAcolorburnPDA(v20->u16[0], v93, *(v9 + 4 * v91), v92);
                  v92 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v92;
              }

              else
              {
                result = PDAcolorburnPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v91), v92);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v90;
        }

        while (v90);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 20:
      do
      {
        v63 = v223;
        do
        {
          v64 = *v22;
          if (v64 >= 8)
          {
            result = *(v9 + 4 * v64);
            if (result >> 27)
            {
              v65 = BYTE3(result);
              if (v6)
              {
                v66 = *v14;
                if (v66 >= 8)
                {
                  result = PDAsoftlightPDA(v20->u16[0], v66, *(v9 + 4 * v64), v65);
                  v65 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v65;
              }

              else
              {
                result = PDAsoftlightPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v64), v65);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v63;
        }

        while (v63);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 21:
      do
      {
        v69 = v223;
        do
        {
          v70 = *v22;
          if (v70 >= 8)
          {
            result = *(v9 + 4 * v70);
            if (result >> 27)
            {
              v71 = BYTE3(result);
              if (v6)
              {
                v72 = *v14;
                if (v72 >= 8)
                {
                  result = PDAhardlightPDA(v20->u16[0], v72, *(v9 + 4 * v70), v71);
                  v71 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v71;
              }

              else
              {
                result = PDAhardlightPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v70), v71);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v69;
        }

        while (v69);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 22:
      do
      {
        v86 = v223;
        do
        {
          v87 = *v22;
          if (v87 >= 8)
          {
            result = *(v9 + 4 * v87);
            if (result >> 27)
            {
              v88 = BYTE3(result);
              if (v6)
              {
                v89 = *v14;
                if (v89 >= 8)
                {
                  result = PDAdifferencePDA(v20->u16[0], v89, *(v9 + 4 * v87), v88);
                  v88 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v88;
              }

              else
              {
                result = PDAdifferencePDA(v20->u16[0], 0xFFu, *(v9 + 4 * v87), v88);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v86;
        }

        while (v86);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 23:
      do
      {
        v94 = v223;
        do
        {
          v95 = *v22;
          if (v95 >= 8)
          {
            result = *(v9 + 4 * v95);
            if (result >> 27)
            {
              v96 = BYTE3(result);
              if (v6)
              {
                v97 = *v14;
                if (v97 >= 8)
                {
                  result = PDAexclusionPDA(v20->u16[0], v97, *(v9 + 4 * v95), v96);
                  v96 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v96;
              }

              else
              {
                result = PDAexclusionPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v95), v96);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v94;
        }

        while (v94);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 24:
      do
      {
        v48 = v223;
        do
        {
          v49 = *v22;
          if (v49 >= 8)
          {
            result = *(v9 + 4 * v49);
            if (result >> 27)
            {
              v50 = BYTE3(result);
              if (v6)
              {
                v51 = *v14;
                if (v51 >= 8)
                {
                  result = PDAhuePDA(v20->u16[0], v51, *(v9 + 4 * v49), v50);
                  v50 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v50;
              }

              else
              {
                result = PDAhuePDA(v20->u16[0], 0xFFu, *(v9 + 4 * v49), v50);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v48;
        }

        while (v48);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 25:
      do
      {
        v44 = v223;
        do
        {
          v45 = *v22;
          if (v45 >= 8)
          {
            result = *(v9 + 4 * v45);
            if (result >> 27)
            {
              v46 = BYTE3(result);
              if (v6)
              {
                v47 = *v14;
                if (v47 >= 8)
                {
                  result = PDAsaturationPDA(v20->u16[0], v47, *(v9 + 4 * v45), v46);
                  v46 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v46;
              }

              else
              {
                result = PDAsaturationPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v45), v46);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v44;
        }

        while (v44);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 26:
      do
      {
        v98 = v223;
        do
        {
          v99 = *v22;
          if (v99 >= 8)
          {
            result = *(v9 + 4 * v99);
            if (result >> 27)
            {
              v100 = BYTE3(result);
              if (v6)
              {
                v101 = *v14;
                if (v101 >= 8)
                {
                  result = PDAluminosityPDA(*(v9 + 4 * v99), v100, v20->u16[0], v101);
                  v100 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v100;
              }

              else
              {
                result = PDAluminosityPDA(*(v9 + 4 * v99), v100, v20->u16[0], 0xFFu);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v98;
        }

        while (v98);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 27:
      do
      {
        v27 = v223;
        do
        {
          v28 = *v22;
          if (v28 >= 8)
          {
            result = *(v9 + 4 * v28);
            if (result >> 27)
            {
              v29 = BYTE3(result);
              if (v6)
              {
                v30 = *v14;
                if (v30 >= 8)
                {
                  result = PDAluminosityPDA(v20->u16[0], v30, *(v9 + 4 * v28), v29);
                  v29 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v29;
              }

              else
              {
                result = PDAluminosityPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v28), v29);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v27;
        }

        while (v27);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    default:
      return result;
  }

LABEL_327:
  v142 = v23;
  v143 = v223;
  while (1)
  {
    v144 = *v22;
    if (v144 >= 0xF8)
    {
      break;
    }

    if (v144 >= 8)
    {
      v145 = v20->u16[0];
      v146 = ~((v19 * v144 + ((v19 * v144) >> 8) + 1) >> 8);
      goto LABEL_332;
    }

LABEL_333:
    ++v22;
    v20 = (v20 + 2);
    if (!--v143)
    {
      v22 += v218;
      v23 = v142;
      v20 = (v20 + 2 * v142);
      if (!--v4)
      {
        return result;
      }

      goto LABEL_327;
    }
  }

  v145 = v20->u16[0];
  v146 = ~BYTE3(v10);
LABEL_332:
  result = PDM(v145, v146);
  v20->i16[0] = result;
  goto LABEL_333;
}

uint64_t rgb555_mark_pixelmask(uint64_t result, int a2)
{
  v3 = *(result + 48);
  v4 = *(result + 136);
  v5 = *(result + 12);
  v6 = *(result + 16);
  if (v3)
  {
    v7 = *(result + 32);
    v8 = (v3 + v7 * v6 + v5);
    v552 = -1;
    if (!v4)
    {
      return result;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v552 = 0;
    if (!v4)
    {
      return result;
    }
  }

  v9 = *(result + 4);
  v10 = *(result + 8);
  v12 = *(result + 88);
  v11 = *(result + 96);
  v13 = *(result + 28) >> 1;
  v14 = (*(result + 40) + 2 * v13 * v6 + 2 * v5);
  v15 = *(result + 124);
  v16 = (v4 + *(result + 108) * v15 + *(result + 104));
  v17 = *(result + 56);
  v18 = *(result + 60);
  v19 = BYTE1(*result);
  if (v19 == 3)
  {
    v572 = *(result + 124);
    v547 = *(result + 96);
    v22 = rgb555_colorlookup(3, v12, v11);
    v15 = v572;
    v12 = v22;
    v23 = (v22 + 512);
    result = v547;
    if (v547)
    {
      v11 = v23;
    }

    else
    {
      v11 = 0;
    }

    if (v547)
    {
      v24 = 16;
    }

    else
    {
      v24 = 0;
    }

    v526 = v24;
    v20 = 16;
    v21 = v547 != 0;
    v25 = 16;
    v26 = 16;
    goto LABEL_26;
  }

  if (v19 != 1)
  {
    v26 = *(result + 64);
    v25 = *(result + 68);
    v20 = *(result + 76) >> 1;
    if (v11)
    {
      v526 = *(result + 80);
      v21 = 1;
    }

    else
    {
      v526 = 0;
      v21 = 0;
    }

LABEL_26:
    v32 = v12 + 2 * v20 * v25;
    v552 &= 1u;
    v31 = 1;
    v549 = v12;
    v573 = v12;
    goto LABEL_27;
  }

  v20 = *(result + 76) >> 1;
  if (v11)
  {
    v526 = *(result + 80);
    v11 += v526 * v18 + v17;
    v21 = -1;
  }

  else
  {
    v526 = 0;
    v21 = 0;
  }

  v573 = (v12 + 2 * v20 * v18 + 2 * v17);
  if (v20 == v13)
  {
    v27 = v14 - v573;
    if (v27 >= 1)
    {
      if (v27 <= v9)
      {
        v14 += v9 - 1;
        v573 += v9 - 1;
        v16 += v9 - 1;
        v8 += v552 & (v9 - 1);
        v31 = -1;
        v20 = *(result + 28) >> 1;
        v11 += v21 & (v9 - 1);
        goto LABEL_24;
      }

      v28 = v10 - 1;
      v29 = v13 * v28;
      v30 = &v573[v13 * v28];
      if (v14 <= &v30[v9 - 1])
      {
        v20 = -v13;
        v16 += v15 * v28;
        v15 = -v15;
        v8 += v7 * v28;
        v7 = -v7;
        v552 &= 1u;
        v11 += v526 * v28;
        v526 = -v526;
        v21 &= 1u;
        v31 = 1;
        v573 = v30;
        v13 = -v13;
        v14 += v29;
        goto LABEL_24;
      }
    }
  }

  v552 &= 1u;
  v21 &= 1u;
  v31 = 1;
LABEL_24:
  v32 = 0;
  v549 = 0;
  v12 = -1;
  v25 = v526;
  v26 = v20;
LABEL_27:
  v33 = v31 * v9;
  v527 = v9;
  v550 = v32;
  v551 = v10;
  v561 = v21;
  if (v32)
  {
    v34 = v18 % v25;
    v523 = v20;
    v35 = &v573[v20 * v34];
    v36 = v17 % v26;
    v37 = v26;
    v12 = &v35[v26];
    if (v21)
    {
      v11 += v526 * v34 + v36;
    }

    v548 = v11;
    v549 = &v35[v36];
    v573 = v549;
  }

  else
  {
    v548 = v11;
    v523 = v20 - v33;
    v526 -= v21 * v9;
    v37 = v26;
  }

  v525 = v15 - v33;
  v524 = v13 - v33;
  v522 = v7 - v552 * v9;
  v571 = v31;
  switch(a2)
  {
    case 0:
      if (v552)
      {
        while (1)
        {
          v38 = v527;
          do
          {
            v39 = *v16;
            if (v39 < 0xF8)
            {
              if (v39 < 8)
              {
                goto LABEL_40;
              }

              result = PDAM(*v14, *v8, ~v39);
              *v14 = result;
              v40 = BYTE3(result);
            }

            else
            {
              LOBYTE(v40) = 0;
              *v14 = 0;
            }

            *v8 = v40;
LABEL_40:
            v16 += v571;
            v8 += v552;
            v14 += v571;
            --v38;
          }

          while (v38);
          v16 += v525;
          v14 += v524;
          v8 += v522;
          if (!--v551)
          {
            return result;
          }
        }
      }

LABEL_765:
      v445 = v9;
      while (1)
      {
        v446 = *v16;
        if (v446 > 0xF7)
        {
          break;
        }

        if (v446 >= 8)
        {
          result = PDM(*v14, ~v446);
          goto LABEL_770;
        }

LABEL_771:
        v16 += v571;
        v14 += v571;
        if (!--v445)
        {
          v16 += v525;
          v14 += v524;
          if (!--v551)
          {
            return result;
          }

          goto LABEL_765;
        }
      }

      result = 0;
LABEL_770:
      *v14 = result;
      goto LABEL_771;
    case 1:
      if (v552)
      {
        v207 = v552;
        if (v21)
        {
          v208 = v21;
          v209 = -v37;
          v535 = -(v526 * v25);
          v542 = -(v523 * v25);
          v210 = 2 * v31;
          v211 = v548;
          while (1)
          {
            v212 = v527;
            do
            {
              v213 = *v16;
              if (v213 < 0xF8)
              {
                if (v213 < 8)
                {
                  goto LABEL_361;
                }

                v215 = v12;
                result = PDAMplusDAM(*v573, *v211, v213, *v14, *v8, v213 ^ 0xFF);
                v210 = 2 * v571;
                v207 = v552;
                v12 = v215;
                *v14 = result;
                v214 = BYTE3(result);
              }

              else
              {
                *v14 = *v573;
                LOBYTE(v214) = *v211;
              }

              *v8 = v214;
LABEL_361:
              v16 += v571;
              v8 += v207;
              v216 = &v573[v571];
              if (v216 >= v12)
              {
                v217 = v209;
              }

              else
              {
                v217 = 0;
              }

              v211 += v208 + v217;
              v573 = &v216[v217];
              v14 = (v14 + v210);
              --v212;
            }

            while (v212);
            if (v550)
            {
              v218 = &v549[v523];
              v219 = v535;
              if (v218 < v550)
              {
                v219 = 0;
              }

              v211 = &v548[v526 + v219];
              v220 = v542;
              if (v218 < v550)
              {
                v220 = 0;
              }

              v12 += 2 * v220 + 2 * v523;
              v548 += v526 + v219;
              v549 = &v218[v220];
              v573 = v549;
            }

            else
            {
              v573 += v523;
              v211 += v526;
            }

            v16 += v525;
            v14 += v524;
            v8 += v522;
            if (!--v551)
            {
              return result;
            }
          }
        }

        v473 = -v37;
        v474 = -(v523 * v25);
LABEL_816:
        v475 = v527;
        v476 = v550;
        while (1)
        {
          v477 = *v16;
          if (v477 >= 0xF8)
          {
            break;
          }

          if (v477 >= 8)
          {
            v479 = v12;
            result = PDAMplusDAM(*v573, 255, v477, *v14, *v8, v477 ^ 0xFF);
            v207 = v552;
            v476 = v550;
            v12 = v479;
            *v14 = result;
            v478 = BYTE3(result);
            goto LABEL_821;
          }

LABEL_822:
          v16 += v571;
          v8 += v207;
          v480 = &v573[v571];
          if (v480 >= v12)
          {
            v481 = v473;
          }

          else
          {
            v481 = 0;
          }

          v573 = &v480[v481];
          v14 += v571;
          if (!--v475)
          {
            v16 += v525;
            v14 += v524;
            v8 += v522;
            v482 = v549;
            v483 = &v549[v523];
            if (v483 >= v476)
            {
              v484 = v474;
            }

            else
            {
              v484 = 0;
            }

            v485 = &v483[v484];
            v486 = v12 + 2 * v484 + 2 * v523;
            if (v476)
            {
              v12 = v486;
              v482 = v485;
            }

            v549 = v482;
            if (!v476)
            {
              v485 = &v573[v523];
            }

            v573 = v485;
            if (!--v551)
            {
              return result;
            }

            goto LABEL_816;
          }
        }

        *v14 = *v573;
        LOBYTE(v478) = -1;
LABEL_821:
        *v8 = v478;
        goto LABEL_822;
      }

      v447 = -v37;
      v448 = -(v523 * v25);
LABEL_775:
      v449 = v9;
      v450 = v550;
      while (1)
      {
        v451 = *v16;
        if (v451 >= 0xF8)
        {
          break;
        }

        if (v451 >= 8)
        {
          v452 = v12;
          result = PDMplusDM(*v573, v451, *v14, v451 ^ 0xFF);
          v450 = v550;
          v12 = v452;
          goto LABEL_780;
        }

LABEL_781:
        v16 += v571;
        v453 = &v573[v571];
        if (v453 >= v12)
        {
          v454 = v447;
        }

        else
        {
          v454 = 0;
        }

        v573 = &v453[v454];
        v14 += v571;
        if (!--v449)
        {
          v16 += v525;
          v14 += v524;
          v455 = v549;
          v456 = &v549[v523];
          if (v456 >= v450)
          {
            v457 = v448;
          }

          else
          {
            v457 = 0;
          }

          v458 = &v456[v457];
          v459 = v12 + 2 * v457 + 2 * v523;
          if (v450)
          {
            v12 = v459;
            v455 = v458;
          }

          v549 = v455;
          if (!v450)
          {
            v458 = &v573[v523];
          }

          v573 = v458;
          if (!--v551)
          {
            return result;
          }

          goto LABEL_775;
        }
      }

      result = *v573;
LABEL_780:
      *v14 = result;
      goto LABEL_781;
    case 2:
      if (v552)
      {
        v158 = v552;
        v159 = v21;
        v160 = -v37;
        v532 = -(v526 * v25);
        v540 = -(v523 * v25);
        v161 = v548;
        v563 = v552;
        while (1)
        {
          v162 = v527;
          v555 = v12;
          do
          {
            v163 = *v16;
            if (v163 < 0xF8)
            {
              if (v163 < 8)
              {
                goto LABEL_267;
              }

              result = PDAM(*v573, *v161, v163);
              v158 = v563;
              v12 = v555;
              if (!(result >> 27))
              {
                goto LABEL_267;
              }

              v164 = BYTE3(result);
              v165 = *v14;
              v166 = *v8;
              LODWORD(result) = result;
LABEL_265:
              result = PDAplusDAM(result, v164, v165, v166, v164 ^ 0xFF);
              v158 = v563;
              v12 = v555;
              *v14 = result;
              v164 = BYTE3(result);
              goto LABEL_266;
            }

            v164 = *v161;
            if (v164 < 0xF8)
            {
              if (v164 < 8)
              {
                goto LABEL_267;
              }

              LODWORD(result) = *v573;
              v165 = *v14;
              v166 = *v8;
              goto LABEL_265;
            }

            *v14 = *v573;
LABEL_266:
            *v8 = v164;
LABEL_267:
            v16 += v571;
            v8 += v158;
            v167 = &v573[v571];
            if (v167 >= v12)
            {
              v168 = v160;
            }

            else
            {
              v168 = 0;
            }

            v161 += v159 + v168;
            v573 = &v167[v168];
            v14 += v571;
            --v162;
          }

          while (v162);
          if (v550)
          {
            v169 = &v549[v523];
            v170 = v532;
            if (v169 < v550)
            {
              v170 = 0;
            }

            v161 = &v548[v526 + v170];
            v171 = v540;
            if (v169 < v550)
            {
              v171 = 0;
            }

            v12 += 2 * v171 + 2 * v523;
            v548 += v526 + v170;
            v549 = &v169[v171];
            v573 = v549;
          }

          else
          {
            v573 += v523;
            v161 += v526;
          }

          v16 += v525;
          v14 += v524;
          v8 += v522;
          if (!--v551)
          {
            return result;
          }
        }
      }

      v419 = v21;
      v420 = -v37;
      v568 = -(v523 * v25);
      v560 = -(v526 * v25);
      v421 = v548;
LABEL_720:
      v422 = v527;
      v423 = v12;
      while (1)
      {
        v424 = *v16;
        if (v424 < 0xF8)
        {
          if (v424 >= 8)
          {
            result = PDAM(*v573, *v421, v424);
            v12 = v423;
            if (result >> 27)
            {
              v426 = *v14;
              v427 = ~result >> 24;
              goto LABEL_729;
            }
          }
        }

        else
        {
          v425 = *v421;
          if (v425 >= 0xF8)
          {
            result = *v573;
            goto LABEL_730;
          }

          if (v425 >= 8)
          {
            LOWORD(result) = *v573;
            v426 = *v14;
            v427 = v425 ^ 0xFF;
LABEL_729:
            result = PDplusDM(result, v426, v427);
            v12 = v423;
LABEL_730:
            *v14 = result;
          }
        }

        v16 += v571;
        v428 = &v573[v571];
        if (v428 >= v12)
        {
          v429 = v420;
        }

        else
        {
          v429 = 0;
        }

        v421 += v419 + v429;
        v573 = &v428[v429];
        v14 += v571;
        if (!--v422)
        {
          if (v550)
          {
            v430 = &v549[v523];
            v431 = v560;
            if (v430 < v550)
            {
              v431 = 0;
            }

            v421 = &v548[v526 + v431];
            v432 = v568;
            if (v430 < v550)
            {
              v432 = 0;
            }

            v12 += 2 * v432 + 2 * v523;
            v548 += v526 + v431;
            v549 = &v430[v432];
            v573 = v549;
          }

          else
          {
            v573 += v523;
            v421 += v526;
          }

          v16 += v525;
          v14 += v524;
          if (!--v551)
          {
            return result;
          }

          goto LABEL_720;
        }
      }

    case 3:
      v185 = -v37;
      v533 = -(v523 * v25);
      v511 = -(v526 * v25);
      v186 = v548;
      while (1)
      {
        v187 = v527;
        v188 = v12;
        do
        {
          v189 = *v16;
          if (v189 < 0xF8)
          {
            if (v189 < 8)
            {
              goto LABEL_318;
            }

            if (v561)
            {
              v191 = *v186;
            }

            else
            {
              v191 = -1;
            }

            result = PDAMplusDAM(*v573, v191, ((*v8 * v189 + ((*v8 * v189) >> 8) + 1) >> 8), *v14, *v8, v189 ^ 0xFF);
          }

          else
          {
            if (v561)
            {
              v190 = *v186;
            }

            else
            {
              v190 = -1;
            }

            result = PDAM(*v573, v190, *v8);
          }

          *v14 = result;
          *v8 = BYTE3(result);
          v12 = v188;
LABEL_318:
          v16 += v571;
          v8 += v552;
          v192 = &v573[v571];
          if (v192 >= v12)
          {
            v193 = v185;
          }

          else
          {
            v193 = 0;
          }

          v186 += v561 + v193;
          v573 = &v192[v193];
          v14 += v571;
          --v187;
        }

        while (v187);
        if (v550)
        {
          v194 = &v549[v523];
          v195 = v511;
          if (v194 < v550)
          {
            v195 = 0;
          }

          v186 = &v548[v526 + v195];
          v196 = v533;
          if (v194 < v550)
          {
            v196 = 0;
          }

          v12 += 2 * v196 + 2 * v523;
          v548 += v526 + v195;
          v549 = &v194[v196];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v186 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        if (!--v551)
        {
          return result;
        }
      }

    case 4:
      v92 = -v37;
      v529 = -(v523 * v25);
      v506 = -(v526 * v25);
      v93 = v548;
      while (1)
      {
        v94 = v527;
        v95 = v12;
        do
        {
          v96 = *v16;
          if (v96 < 0xF8)
          {
            if (v96 < 8)
            {
              goto LABEL_153;
            }

            if (v561)
            {
              v98 = *v93;
            }

            else
            {
              v98 = -1;
            }

            result = PDAMplusDAM(*v573, v98, (((*v8 ^ 0xFF) * v96 + (((*v8 ^ 0xFF) * v96) >> 8) + 1) >> 8), *v14, *v8, v96 ^ 0xFF);
          }

          else
          {
            if (v561)
            {
              v97 = *v93;
            }

            else
            {
              v97 = -1;
            }

            result = PDAM(*v573, v97, ~*v8);
          }

          *v14 = result;
          *v8 = BYTE3(result);
          v12 = v95;
LABEL_153:
          v16 += v571;
          v8 += v552;
          v99 = &v573[v571];
          if (v99 >= v12)
          {
            v100 = v92;
          }

          else
          {
            v100 = 0;
          }

          v93 += v561 + v100;
          v573 = &v99[v100];
          v14 += v571;
          --v94;
        }

        while (v94);
        if (v550)
        {
          v101 = &v549[v523];
          v102 = v506;
          if (v101 < v550)
          {
            v102 = 0;
          }

          v93 = &v548[v526 + v102];
          v103 = v529;
          if (v101 < v550)
          {
            v103 = 0;
          }

          v12 += 2 * v103 + 2 * v523;
          v548 += v526 + v102;
          v549 = &v101[v103];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v93 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        if (!--v551)
        {
          return result;
        }
      }

    case 5:
      v247 = v552;
      v248 = v21;
      v249 = -v37;
      v565 = -(v523 * v25);
      v543 = -(v526 * v25);
      v250 = v548;
      do
      {
        v251 = v527;
        v556 = v12;
        do
        {
          v252 = *v16;
          if (v252 >= 8)
          {
            v253 = *v8;
            v254 = v249;
            v255 = PDAM(*v573, *v250, v252);
            result = PDAMplusDAM(v255, SHIBYTE(v255), v253, *v14, v253, HIBYTE(v255) ^ 0xFF);
            v249 = v254;
            v12 = v556;
            *v14 = result;
            *v8 = BYTE3(result);
          }

          v16 += v571;
          v8 += v247;
          v256 = &v573[v571];
          if (v256 >= v12)
          {
            v257 = v249;
          }

          else
          {
            v257 = 0;
          }

          v250 += v248 + v257;
          v573 = &v256[v257];
          v14 += v571;
          --v251;
        }

        while (v251);
        if (v550)
        {
          v258 = &v549[v523];
          v259 = v543;
          if (v258 < v550)
          {
            v259 = 0;
          }

          v250 = &v548[v526 + v259];
          v260 = v565;
          if (v258 < v550)
          {
            v260 = 0;
          }

          v12 += 2 * v260 + 2 * v523;
          v548 += v526 + v259;
          v549 = &v258[v260];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v250 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 6:
      v287 = v552;
      v288 = -v37;
      v536 = -(v523 * v25);
      v516 = -(v526 * v25);
      v289 = v548;
      v544 = v552;
      while (1)
      {
        v290 = v9;
        v557 = v12;
        do
        {
          v291 = *v16;
          if (v291 < 8)
          {
            goto LABEL_505;
          }

          v292 = *v8;
          if (v292 > 7)
          {
            if (v292 > 0xF7)
            {
              goto LABEL_505;
            }

            if (v561)
            {
              v294 = *v289;
            }

            else
            {
              v294 = -1;
            }

            result = PDAplusDAM(*v14, v292, *v573, v294, ((~v292 * v291 + ((~v292 * v291) >> 8) + 1) >> 8));
          }

          else
          {
            if (v561)
            {
              v293 = *v289;
            }

            else
            {
              v293 = -1;
            }

            result = PDAM(*v573, v293, v291);
          }

          *v14 = result;
          *v8 = BYTE3(result);
          v12 = v557;
          v287 = v544;
LABEL_505:
          v16 += v571;
          v8 += v287;
          v295 = &v573[v571];
          if (v295 >= v12)
          {
            v296 = v288;
          }

          else
          {
            v296 = 0;
          }

          v289 += v561 + v296;
          v573 = &v295[v296];
          v14 += v571;
          --v290;
        }

        while (v290);
        if (v550)
        {
          v297 = &v549[v523];
          v298 = v516;
          if (v297 < v550)
          {
            v298 = 0;
          }

          v289 = &v548[v526 + v298];
          v299 = v536;
          if (v297 < v550)
          {
            v299 = 0;
          }

          v12 += 2 * v299 + 2 * v523;
          v548 += v526 + v298;
          v549 = &v297[v299];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v289 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        if (!--v551)
        {
          return result;
        }
      }

    case 7:
      if (v552)
      {
        v564 = v21;
        v197 = -v37;
        v534 = -(v526 * v25);
        v541 = -(v523 * v25);
        v198 = v548;
        while (1)
        {
          v199 = v527;
          v200 = v12;
          do
          {
            v201 = *v16;
            if (v201 < 0xF8)
            {
              if (v201 < 8)
              {
                goto LABEL_339;
              }

              result = PDAMplusDAM(*v14, *v8, ((*v198 * v201 + ((*v198 * v201) >> 8) + 1) >> 8), *v14, *v8, v201 ^ 0xFF);
            }

            else
            {
              result = PDAM(*v14, *v8, *v198);
            }

            *v14 = result;
            *v8 = BYTE3(result);
            v12 = v200;
LABEL_339:
            v16 += v571;
            v8 += v552;
            v202 = &v573[v571];
            if (v202 >= v12)
            {
              v203 = v197;
            }

            else
            {
              v203 = 0;
            }

            v198 += v564 + v203;
            v573 = &v202[v203];
            v14 += v571;
            --v199;
          }

          while (v199);
          if (v550)
          {
            v204 = &v549[v523];
            v205 = v534;
            if (v204 < v550)
            {
              v205 = 0;
            }

            v198 = &v548[v526 + v205];
            v206 = v541;
            if (v204 < v550)
            {
              v206 = 0;
            }

            v12 += 2 * v206 + 2 * v523;
            v548 += v526 + v205;
            v549 = &v204[v206];
            v573 = v549;
          }

          else
          {
            v573 += v523;
            v198 += v526;
          }

          v16 += v525;
          v14 += v524;
          v8 += v522;
          if (!--v551)
          {
            return result;
          }
        }
      }

      v433 = v21;
      v434 = -v37;
      v435 = -(v523 * v25);
      v569 = -(v526 * v25);
      v436 = v548;
LABEL_745:
      v437 = v527;
      v438 = v12;
      while (1)
      {
        v439 = *v16;
        if (v439 == 248)
        {
          break;
        }

        if (v439 >= 8)
        {
          result = PDMplusDM(*v14, ((*v436 * v439 + ((*v436 * v439) >> 8) + 1) >> 8), *v14, v439 ^ 0xFF);
          goto LABEL_750;
        }

LABEL_751:
        v16 += v571;
        v440 = &v573[v571];
        if (v440 >= v12)
        {
          v441 = v434;
        }

        else
        {
          v441 = 0;
        }

        v436 += v433 + v441;
        v573 = &v440[v441];
        v14 += v571;
        if (!--v437)
        {
          if (v550)
          {
            v442 = &v549[v523];
            v443 = v569;
            if (v442 < v550)
            {
              v443 = 0;
            }

            v436 = &v548[v526 + v443];
            if (v442 >= v550)
            {
              v444 = v435;
            }

            else
            {
              v444 = 0;
            }

            v12 += 2 * v444 + 2 * v523;
            v548 += v526 + v443;
            v549 = &v442[v444];
            v573 = v549;
          }

          else
          {
            v573 += v523;
            v436 += v526;
          }

          v16 += v525;
          v14 += v524;
          if (!--v551)
          {
            return result;
          }

          goto LABEL_745;
        }
      }

      result = PDM(*v14, *v436);
LABEL_750:
      *v14 = result;
      v12 = v438;
      goto LABEL_751;
    case 8:
      if (v552)
      {
        v567 = v21;
        v327 = -v37;
        v537 = -(v526 * v25);
        v546 = -(v523 * v25);
        v328 = v548;
        while (1)
        {
          v329 = v527;
          v330 = v12;
          do
          {
            v331 = *v16;
            if (v331 < 0xF8)
            {
              if (v331 < 8)
              {
                goto LABEL_567;
              }

              v332 = *v14;
              v333 = *v8;
              v334 = ~((*v328 * v331 + ((*v328 * v331) >> 8) + 1) >> 8);
            }

            else
            {
              v332 = *v14;
              v333 = *v8;
              v334 = ~*v328;
            }

            result = PDAM(v332, v333, v334);
            *v14 = result;
            *v8 = BYTE3(result);
            v12 = v330;
LABEL_567:
            v16 += v571;
            v8 += v552;
            v335 = &v573[v571];
            if (v335 >= v12)
            {
              v336 = v327;
            }

            else
            {
              v336 = 0;
            }

            v328 += v567 + v336;
            v573 = &v335[v336];
            v14 += v571;
            --v329;
          }

          while (v329);
          if (v550)
          {
            v337 = &v549[v523];
            v338 = v537;
            if (v337 < v550)
            {
              v338 = 0;
            }

            v328 = &v548[v526 + v338];
            v339 = v546;
            if (v337 < v550)
            {
              v339 = 0;
            }

            v12 += 2 * v339 + 2 * v523;
            v548 += v526 + v338;
            v549 = &v337[v339];
            v573 = v549;
          }

          else
          {
            v573 += v523;
            v328 += v526;
          }

          v16 += v525;
          v14 += v524;
          v8 += v522;
          if (!--v551)
          {
            return result;
          }
        }
      }

      v460 = v21;
      v461 = -v37;
      v462 = -(v523 * v25);
      v570 = -(v526 * v25);
      v463 = v548;
      break;
    case 9:
      v118 = v552;
      v119 = v21;
      v120 = -v37;
      v562 = -(v523 * v25);
      v531 = -(v526 * v25);
      v121 = v548;
      v539 = v552;
      do
      {
        v122 = v527;
        v554 = v12;
        do
        {
          v123 = *v16;
          if (v123 >= 8)
          {
            v124 = *v8;
            v125 = v120;
            v126 = PDAM(*v573, *v121, *v16);
            result = PDAMplusDAM(v126, SBYTE3(v126), v124 ^ 0xFFu, *v14, v124, (~v123 + BYTE3(v126)));
            v120 = v125;
            v118 = v539;
            v12 = v554;
            *v14 = result;
            *v8 = BYTE3(result);
          }

          v16 += v571;
          v8 += v118;
          v127 = &v573[v571];
          if (v127 >= v12)
          {
            v128 = v120;
          }

          else
          {
            v128 = 0;
          }

          v121 += v119 + v128;
          v573 = &v127[v128];
          v14 += v571;
          --v122;
        }

        while (v122);
        if (v550)
        {
          v129 = &v549[v523];
          v130 = v531;
          if (v129 < v550)
          {
            v130 = 0;
          }

          v121 = &v548[v526 + v130];
          v131 = v562;
          if (v129 < v550)
          {
            v131 = 0;
          }

          v12 += 2 * v131 + 2 * v523;
          v548 += v526 + v130;
          v549 = &v129[v131];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v121 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 10:
      v313 = v552;
      v314 = v21;
      v566 = -v37;
      v558 = -(v523 * v25);
      v545 = -(v526 * v25);
      v315 = v548;
      do
      {
        v316 = v527;
        do
        {
          v317 = *v16;
          if (v317 >= 8)
          {
            v318 = *v8;
            v319 = v12;
            v320 = v314;
            v321 = PDAM(*v573, *v315, v317);
            result = PDAMplusDAM(v321, SHIBYTE(v321), v318 ^ 0xFFu, *v14, v318, HIBYTE(v321) ^ 0xFF);
            v314 = v320;
            v12 = v319;
            *v14 = result;
            *v8 = BYTE3(result);
          }

          v16 += v571;
          v8 += v313;
          v322 = &v573[v571];
          v323 = v566;
          if (v322 < v12)
          {
            v323 = 0;
          }

          v315 += v314 + v323;
          v573 = &v322[v323];
          v14 += v571;
          --v316;
        }

        while (v316);
        if (v550)
        {
          v324 = &v549[v523];
          v325 = v545;
          if (v324 < v550)
          {
            v325 = 0;
          }

          v315 = &v548[v526 + v325];
          v326 = v558;
          if (v324 < v550)
          {
            v326 = 0;
          }

          v12 += 2 * v326 + 2 * v523;
          v548 += v526 + v325;
          v549 = &v324[v326];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v315 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 11:
      if (v552)
      {
        v80 = v552;
        v81 = -v37;
        v528 = -(v523 * v25);
        v505 = -(v526 * v25);
        v82 = v548;
        v538 = v552;
        do
        {
          v83 = v9;
          v553 = v12;
          do
          {
            v84 = *v16;
            if (v84 >= 8)
            {
              if (v561)
              {
                v85 = *v82;
              }

              else
              {
                v85 = -1;
              }

              v86 = PDAM(*v573, v85, v84);
              result = PDAplusdDA(*v14, *v8, v86, HIBYTE(v86));
              *v14 = result;
              *v8 = BYTE3(result);
              v12 = v553;
              v80 = v538;
            }

            v16 += v571;
            v8 += v80;
            v87 = &v573[v571];
            if (v87 >= v12)
            {
              v88 = v81;
            }

            else
            {
              v88 = 0;
            }

            v82 += v561 + v88;
            v573 = &v87[v88];
            v14 += v571;
            --v83;
          }

          while (v83);
          if (v550)
          {
            v89 = &v549[v523];
            v90 = v505;
            if (v89 < v550)
            {
              v90 = 0;
            }

            v82 = &v548[v526 + v90];
            v91 = v528;
            if (v89 < v550)
            {
              v91 = 0;
            }

            v12 += 2 * v91 + 2 * v523;
            v548 += v526 + v90;
            v549 = &v89[v91];
            v573 = v549;
          }

          else
          {
            v573 += v523;
            v82 += v526;
          }

          v16 += v525;
          v14 += v524;
          v8 += v522;
          --v551;
        }

        while (v551);
      }

      else
      {
        v392 = -v37;
        v393 = -(v523 * v25);
        v559 = -(v526 * v25);
        v394 = v548;
        do
        {
          v395 = v527;
          v396 = v12;
          do
          {
            v397 = *v16;
            if (v397 >= 8)
            {
              if (v561)
              {
                v398 = *v394;
              }

              else
              {
                v398 = -1;
              }

              v399 = PDAM(*v573, v398, v397);
              result = PDplusdDA(*v14, v399, HIBYTE(v399));
              *v14 = result;
              v12 = v396;
            }

            v16 += v571;
            v400 = &v573[v571];
            if (v400 >= v12)
            {
              v401 = v392;
            }

            else
            {
              v401 = 0;
            }

            v394 += v561 + v401;
            v573 = &v400[v401];
            v14 += v571;
            --v395;
          }

          while (v395);
          if (v550)
          {
            v402 = &v549[v523];
            v403 = v559;
            if (v402 < v550)
            {
              v403 = 0;
            }

            v394 = &v548[v526 + v403];
            if (v402 >= v550)
            {
              v404 = v393;
            }

            else
            {
              v404 = 0;
            }

            v12 += 2 * v404 + 2 * v523;
            v548 += v526 + v403;
            v549 = &v402[v404];
            v573 = v549;
          }

          else
          {
            v573 += v523;
            v394 += v526;
          }

          v16 += v525;
          v14 += v524;
          --v551;
        }

        while (v551);
      }

      return result;
    case 12:
      if (v552)
      {
        v104 = v552;
        v105 = v21;
        v106 = -v37;
        v530 = -(v523 * v25);
        v507 = -(v526 * v25);
        v107 = v548;
        do
        {
          v108 = v527;
          v109 = v12;
          do
          {
            v110 = *v16;
            if (v110 >= 8)
            {
              if (v561)
              {
                v111 = *v107;
              }

              else
              {
                v111 = -1;
              }

              v112 = PDAM(*v573, v111, v110);
              result = PDApluslDA(*v14, *v8, v112, HIBYTE(v112));
              *v14 = result;
              *v8 = BYTE3(result);
              v12 = v109;
              v104 = v552;
              v105 = v561;
            }

            v16 += v571;
            v8 += v104;
            v113 = &v573[v571];
            if (v113 >= v12)
            {
              v114 = v106;
            }

            else
            {
              v114 = 0;
            }

            v107 += v105 + v114;
            v573 = &v113[v114];
            v14 += v571;
            --v108;
          }

          while (v108);
          if (v550)
          {
            v115 = &v549[v523];
            v116 = v507;
            if (v115 < v550)
            {
              v116 = 0;
            }

            v107 = &v548[v526 + v116];
            v117 = v530;
            if (v115 < v550)
            {
              v117 = 0;
            }

            v12 += 2 * v117 + 2 * v523;
            v548 += v526 + v116;
            v549 = &v115[v117];
            v573 = v549;
          }

          else
          {
            v573 += v523;
            v107 += v526;
          }

          v16 += v525;
          v14 += v524;
          v8 += v522;
          --v551;
        }

        while (v551);
      }

      else
      {
        v405 = -v37;
        v406 = -(v523 * v25);
        do
        {
          v407 = v9;
          v408 = v550;
          do
          {
            v409 = *v16;
            if (v409 >= 8)
            {
              v410 = v12;
              result = PDM(*v573, v409);
              v12 = v410;
              v411 = ((*v14 | (*v14 << 15)) & 0x1F07C1F) + ((result | (result << 15)) & 0x1F07C1F);
              v408 = v550;
              *v14 = (((30 * ((v411 >> 5) & 0x100401)) | (15 * ((v411 >> 5) & 0x100401)) | v411) >> 15) & 0x3E0 | ((30 * ((v411 >> 5) & 0x401)) | (15 * ((v411 >> 5) & 0x401)) | v411) & 0x7C1F;
            }

            v16 += v571;
            v412 = &v573[v571];
            if (v412 >= v12)
            {
              v413 = v405;
            }

            else
            {
              v413 = 0;
            }

            v573 = &v412[v413];
            v14 += v571;
            --v407;
          }

          while (v407);
          v16 += v525;
          v14 += v524;
          v414 = v549;
          v415 = &v549[v523];
          if (v415 >= v408)
          {
            v416 = v406;
          }

          else
          {
            v416 = 0;
          }

          v417 = &v415[v416];
          v418 = v12 + 2 * v416 + 2 * v523;
          if (v408)
          {
            v12 = v418;
            v414 = v417;
          }

          v549 = v414;
          if (!v408)
          {
            v417 = &v573[v523];
          }

          v573 = v417;
          --v551;
        }

        while (v551);
      }

      return result;
    case 13:
      v274 = -v37;
      v496 = -(v526 * v25);
      v515 = -(v523 * v25);
      v275 = v548;
      do
      {
        v276 = v527;
        v277 = v12;
        do
        {
          v278 = *v16;
          if (v278 >= 8)
          {
            v279 = v561 ? *v275 : -1;
            result = PDAM(*v573, v279, v278);
            v12 = v277;
            if (result >> 27)
            {
              if (v552)
              {
                v280 = BYTE3(result);
                v281 = *v8;
                if (v281 >= 8)
                {
                  result = PDAmultiplyPDA(*v14, v281, result, v280);
                  v12 = v277;
                  v280 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v280;
              }

              else
              {
                result = PDAmultiplyPDA(*v14, 0xFFu, result, BYTE3(result));
                v12 = v277;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v282 = &v573[v571];
          if (v282 >= v12)
          {
            v283 = v274;
          }

          else
          {
            v283 = 0;
          }

          v275 += v561 + v283;
          v573 = &v282[v283];
          v14 += v571;
          --v276;
        }

        while (v276);
        if (v550)
        {
          v284 = &v549[v523];
          v285 = v496;
          if (v284 < v550)
          {
            v285 = 0;
          }

          v275 = &v548[v526 + v285];
          v286 = v515;
          if (v284 < v550)
          {
            v286 = 0;
          }

          v12 += 2 * v286 + 2 * v523;
          v548 += v526 + v285;
          v549 = &v284[v286];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v275 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 14:
      v67 = -v37;
      v489 = -(v526 * v25);
      v504 = -(v523 * v25);
      v68 = v548;
      do
      {
        v69 = v527;
        v70 = v12;
        do
        {
          v71 = *v16;
          if (v71 >= 8)
          {
            v72 = v561 ? *v68 : -1;
            result = PDAM(*v573, v72, v71);
            v12 = v70;
            if (result >> 27)
            {
              if (v552)
              {
                v73 = BYTE3(result);
                v74 = *v8;
                if (v74 >= 8)
                {
                  result = PDAscreenPDA(*v14, v74, result, v73);
                  v12 = v70;
                  v73 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v73;
              }

              else
              {
                result = PDAscreenPDA(*v14, 0xFFu, result, BYTE3(result));
                v12 = v70;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v75 = &v573[v571];
          if (v75 >= v12)
          {
            v76 = v67;
          }

          else
          {
            v76 = 0;
          }

          v68 += v561 + v76;
          v573 = &v75[v76];
          v14 += v571;
          --v69;
        }

        while (v69);
        if (v550)
        {
          v77 = &v549[v523];
          v78 = v489;
          if (v77 < v550)
          {
            v78 = 0;
          }

          v68 = &v548[v526 + v78];
          v79 = v504;
          if (v77 < v550)
          {
            v79 = 0;
          }

          v12 += 2 * v79 + 2 * v523;
          v548 += v526 + v78;
          v549 = &v77[v79];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v68 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 15:
      v172 = -v37;
      v492 = -(v526 * v25);
      v510 = -(v523 * v25);
      v173 = v548;
      do
      {
        v174 = v527;
        v175 = v12;
        do
        {
          v176 = *v16;
          if (v176 >= 8)
          {
            v177 = v561 ? *v173 : -1;
            result = PDAM(*v573, v177, v176);
            v12 = v175;
            if (result >> 27)
            {
              if (v552)
              {
                v178 = BYTE3(result);
                v179 = *v8;
                if (v179 >= 8)
                {
                  result = PDAoverlayPDA(*v14, v179, result, v178);
                  v12 = v175;
                  v178 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v178;
              }

              else
              {
                result = PDAoverlayPDA(*v14, 0xFFu, result, BYTE3(result));
                v12 = v175;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v180 = &v573[v571];
          if (v180 >= v12)
          {
            v181 = v172;
          }

          else
          {
            v181 = 0;
          }

          v173 += v561 + v181;
          v573 = &v180[v181];
          v14 += v571;
          --v174;
        }

        while (v174);
        if (v550)
        {
          v182 = &v549[v523];
          v183 = v492;
          if (v182 < v550)
          {
            v183 = 0;
          }

          v173 = &v548[v526 + v183];
          v184 = v510;
          if (v182 < v550)
          {
            v184 = 0;
          }

          v12 += 2 * v184 + 2 * v523;
          v548 += v526 + v183;
          v549 = &v182[v184];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v173 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 16:
      v54 = -v37;
      v488 = -(v526 * v25);
      v503 = -(v523 * v25);
      v55 = v548;
      do
      {
        v56 = v527;
        v57 = v12;
        do
        {
          v58 = *v16;
          if (v58 >= 8)
          {
            v59 = v561 ? *v55 : -1;
            result = PDAM(*v573, v59, v58);
            v12 = v57;
            if (result >> 27)
            {
              if (v552)
              {
                v60 = BYTE3(result);
                v61 = *v8;
                if (v61 >= 8)
                {
                  result = PDAdarkenPDA(*v14, v61, result, v60);
                  v12 = v57;
                  v60 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v60;
              }

              else
              {
                result = PDAdarkenPDA(*v14, 0xFFu, result, BYTE3(result));
                v12 = v57;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v62 = &v573[v571];
          if (v62 >= v12)
          {
            v63 = v54;
          }

          else
          {
            v63 = 0;
          }

          v55 += v561 + v63;
          v573 = &v62[v63];
          v14 += v571;
          --v56;
        }

        while (v56);
        if (v550)
        {
          v64 = &v549[v523];
          v65 = v488;
          if (v64 < v550)
          {
            v65 = 0;
          }

          v55 = &v548[v526 + v65];
          v66 = v503;
          if (v64 < v550)
          {
            v66 = 0;
          }

          v12 += 2 * v66 + 2 * v523;
          v548 += v526 + v65;
          v549 = &v64[v66];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v55 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 17:
      v221 = -v37;
      v493 = -(v526 * v25);
      v512 = -(v523 * v25);
      v222 = v548;
      do
      {
        v223 = v527;
        v224 = v12;
        do
        {
          v225 = *v16;
          if (v225 >= 8)
          {
            v226 = v561 ? *v222 : -1;
            result = PDAM(*v573, v226, v225);
            v12 = v224;
            if (result >> 27)
            {
              v227 = BYTE3(result);
              if (v552)
              {
                v228 = *v8;
                if (v228 >= 8)
                {
                  result = PDAlightenPDA(*v14, v228, result, v227);
                  v12 = v224;
                  v227 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v227;
              }

              else
              {
                result = PDAlightenPDA(*v14, 0xFFu, result, v227);
                v12 = v224;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v229 = &v573[v571];
          if (v229 >= v12)
          {
            v230 = v221;
          }

          else
          {
            v230 = 0;
          }

          v222 += v561 + v230;
          v573 = &v229[v230];
          v14 += v571;
          --v223;
        }

        while (v223);
        if (v550)
        {
          v231 = &v549[v523];
          v232 = v493;
          if (v231 < v550)
          {
            v232 = 0;
          }

          v222 = &v548[v526 + v232];
          v233 = v512;
          if (v231 < v550)
          {
            v233 = 0;
          }

          v12 += 2 * v233 + 2 * v523;
          v548 += v526 + v232;
          v549 = &v231[v233];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v222 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 18:
      v300 = -v37;
      v497 = -(v526 * v25);
      v517 = -(v523 * v25);
      v301 = v548;
      do
      {
        v302 = v527;
        v303 = v12;
        do
        {
          v304 = *v16;
          if (v304 >= 8)
          {
            v305 = v561 ? *v301 : -1;
            result = PDAM(*v573, v305, v304);
            v12 = v303;
            if (result >> 27)
            {
              v306 = BYTE3(result);
              if (v552)
              {
                v307 = *v8;
                if (v307 >= 8)
                {
                  result = PDAcolordodgePDA(*v14, v307, result, v306);
                  v12 = v303;
                  v306 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v306;
              }

              else
              {
                result = PDAcolordodgePDA(*v14, 0xFFu, result, v306);
                v12 = v303;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v308 = &v573[v571];
          if (v308 >= v12)
          {
            v309 = v300;
          }

          else
          {
            v309 = 0;
          }

          v301 += v561 + v309;
          v573 = &v308[v309];
          v14 += v571;
          --v302;
        }

        while (v302);
        if (v550)
        {
          v310 = &v549[v523];
          v311 = v497;
          if (v310 < v550)
          {
            v311 = 0;
          }

          v301 = &v548[v526 + v311];
          v312 = v517;
          if (v310 < v550)
          {
            v312 = 0;
          }

          v12 += 2 * v312 + 2 * v523;
          v548 += v526 + v311;
          v549 = &v310[v312];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v301 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 19:
      v353 = -v37;
      v499 = -(v526 * v25);
      v519 = -(v523 * v25);
      v354 = v548;
      do
      {
        v355 = v527;
        v356 = v12;
        do
        {
          v357 = *v16;
          if (v357 >= 8)
          {
            v358 = v561 ? *v354 : -1;
            result = PDAM(*v573, v358, v357);
            v12 = v356;
            if (result >> 27)
            {
              if (v552)
              {
                v359 = BYTE3(result);
                v360 = *v8;
                if (v360 >= 8)
                {
                  result = PDAcolorburnPDA(*v14, v360, result, v359);
                  v12 = v356;
                  v359 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v359;
              }

              else
              {
                result = PDAcolorburnPDA(*v14, 0xFFu, result, BYTE3(result));
                v12 = v356;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v361 = &v573[v571];
          if (v361 >= v12)
          {
            v362 = v353;
          }

          else
          {
            v362 = 0;
          }

          v354 += v561 + v362;
          v573 = &v361[v362];
          v14 += v571;
          --v355;
        }

        while (v355);
        if (v550)
        {
          v363 = &v549[v523];
          v364 = v499;
          if (v363 < v550)
          {
            v364 = 0;
          }

          v354 = &v548[v526 + v364];
          v365 = v519;
          if (v363 < v550)
          {
            v365 = 0;
          }

          v12 += 2 * v365 + 2 * v523;
          v548 += v526 + v364;
          v549 = &v363[v365];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v354 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 20:
      v234 = -v37;
      v494 = -(v526 * v25);
      v513 = -(v523 * v25);
      v235 = v548;
      do
      {
        v236 = v527;
        v237 = v12;
        do
        {
          v238 = *v16;
          if (v238 >= 8)
          {
            v239 = v561 ? *v235 : -1;
            result = PDAM(*v573, v239, v238);
            v12 = v237;
            if (result >> 27)
            {
              v240 = BYTE3(result);
              if (v552)
              {
                v241 = *v8;
                if (v241 >= 8)
                {
                  result = PDAsoftlightPDA(*v14, v241, result, v240);
                  v12 = v237;
                  v240 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v240;
              }

              else
              {
                result = PDAsoftlightPDA(*v14, 0xFFu, result, v240);
                v12 = v237;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v242 = &v573[v571];
          if (v242 >= v12)
          {
            v243 = v234;
          }

          else
          {
            v243 = 0;
          }

          v235 += v561 + v243;
          v573 = &v242[v243];
          v14 += v571;
          --v236;
        }

        while (v236);
        if (v550)
        {
          v244 = &v549[v523];
          v245 = v494;
          if (v244 < v550)
          {
            v245 = 0;
          }

          v235 = &v548[v526 + v245];
          v246 = v513;
          if (v244 < v550)
          {
            v246 = 0;
          }

          v12 += 2 * v246 + 2 * v523;
          v548 += v526 + v245;
          v549 = &v244[v246];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v235 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 21:
      v261 = -v37;
      v495 = -(v526 * v25);
      v514 = -(v523 * v25);
      v262 = v548;
      do
      {
        v263 = v527;
        v264 = v12;
        do
        {
          v265 = *v16;
          if (v265 >= 8)
          {
            v266 = v561 ? *v262 : -1;
            result = PDAM(*v573, v266, v265);
            v12 = v264;
            if (result >> 27)
            {
              if (v552)
              {
                v267 = BYTE3(result);
                v268 = *v8;
                if (v268 >= 8)
                {
                  result = PDAhardlightPDA(*v14, v268, result, v267);
                  v12 = v264;
                  v267 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v267;
              }

              else
              {
                result = PDAhardlightPDA(*v14, 0xFFu, result, BYTE3(result));
                v12 = v264;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v269 = &v573[v571];
          if (v269 >= v12)
          {
            v270 = v261;
          }

          else
          {
            v270 = 0;
          }

          v262 += v561 + v270;
          v573 = &v269[v270];
          v14 += v571;
          --v263;
        }

        while (v263);
        if (v550)
        {
          v271 = &v549[v523];
          v272 = v495;
          if (v271 < v550)
          {
            v272 = 0;
          }

          v262 = &v548[v526 + v272];
          v273 = v514;
          if (v271 < v550)
          {
            v273 = 0;
          }

          v12 += 2 * v273 + 2 * v523;
          v548 += v526 + v272;
          v549 = &v271[v273];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v262 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 22:
      v340 = -v37;
      v498 = -(v526 * v25);
      v518 = -(v523 * v25);
      v341 = v548;
      do
      {
        v342 = v527;
        v343 = v12;
        do
        {
          v344 = *v16;
          if (v344 >= 8)
          {
            v345 = v561 ? *v341 : -1;
            result = PDAM(*v573, v345, v344);
            v12 = v343;
            if (result >> 27)
            {
              if (v552)
              {
                v346 = BYTE3(result);
                v347 = *v8;
                if (v347 >= 8)
                {
                  result = PDAdifferencePDA(*v14, v347, result, v346);
                  v12 = v343;
                  v346 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v346;
              }

              else
              {
                result = PDAdifferencePDA(*v14, 0xFFu, result, BYTE3(result));
                v12 = v343;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v348 = &v573[v571];
          if (v348 >= v12)
          {
            v349 = v340;
          }

          else
          {
            v349 = 0;
          }

          v341 += v561 + v349;
          v573 = &v348[v349];
          v14 += v571;
          --v342;
        }

        while (v342);
        if (v550)
        {
          v350 = &v549[v523];
          v351 = v498;
          if (v350 < v550)
          {
            v351 = 0;
          }

          v341 = &v548[v526 + v351];
          v352 = v518;
          if (v350 < v550)
          {
            v352 = 0;
          }

          v12 += 2 * v352 + 2 * v523;
          v548 += v526 + v351;
          v549 = &v350[v352];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v341 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 23:
      v366 = -v37;
      v500 = -(v526 * v25);
      v520 = -(v523 * v25);
      v367 = v548;
      do
      {
        v368 = v527;
        v369 = v12;
        do
        {
          v370 = *v16;
          if (v370 >= 8)
          {
            v371 = v561 ? *v367 : -1;
            result = PDAM(*v573, v371, v370);
            v12 = v369;
            if (result >> 27)
            {
              v372 = BYTE3(result);
              if (v552)
              {
                v373 = *v8;
                if (v373 >= 8)
                {
                  result = PDAexclusionPDA(*v14, v373, result, v372);
                  v12 = v369;
                  v372 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v372;
              }

              else
              {
                result = PDAexclusionPDA(*v14, 0xFFu, result, v372);
                v12 = v369;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v374 = &v573[v571];
          if (v374 >= v12)
          {
            v375 = v366;
          }

          else
          {
            v375 = 0;
          }

          v367 += v561 + v375;
          v573 = &v374[v375];
          v14 += v571;
          --v368;
        }

        while (v368);
        if (v550)
        {
          v376 = &v549[v523];
          v377 = v500;
          if (v376 < v550)
          {
            v377 = 0;
          }

          v367 = &v548[v526 + v377];
          v378 = v520;
          if (v376 < v550)
          {
            v378 = 0;
          }

          v12 += 2 * v378 + 2 * v523;
          v548 += v526 + v377;
          v549 = &v376[v378];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v367 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 24:
      v145 = -v37;
      v491 = -(v526 * v25);
      v509 = -(v523 * v25);
      v146 = v548;
      do
      {
        v147 = v527;
        v148 = v12;
        do
        {
          v149 = *v16;
          if (v149 >= 8)
          {
            v150 = v561 ? *v146 : -1;
            result = PDAM(*v573, v150, v149);
            v12 = v148;
            if (result >> 27)
            {
              if (v552)
              {
                v151 = BYTE3(result);
                v152 = *v8;
                if (v152 >= 8)
                {
                  result = PDAhuePDA(*v14, v152, result, v151);
                  v12 = v148;
                  v151 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v151;
              }

              else
              {
                result = PDAhuePDA(*v14, 0xFFu, result, BYTE3(result));
                v12 = v148;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v153 = &v573[v571];
          if (v153 >= v12)
          {
            v154 = v145;
          }

          else
          {
            v154 = 0;
          }

          v146 += v561 + v154;
          v573 = &v153[v154];
          v14 += v571;
          --v147;
        }

        while (v147);
        if (v550)
        {
          v155 = &v549[v523];
          v156 = v491;
          if (v155 < v550)
          {
            v156 = 0;
          }

          v146 = &v548[v526 + v156];
          v157 = v509;
          if (v155 < v550)
          {
            v157 = 0;
          }

          v12 += 2 * v157 + 2 * v523;
          v548 += v526 + v156;
          v549 = &v155[v157];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v146 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 25:
      v132 = -v37;
      v490 = -(v526 * v25);
      v508 = -(v523 * v25);
      v133 = v548;
      do
      {
        v134 = v527;
        v135 = v12;
        do
        {
          v136 = *v16;
          if (v136 >= 8)
          {
            v137 = v561 ? *v133 : -1;
            result = PDAM(*v573, v137, v136);
            v12 = v135;
            if (result >> 27)
            {
              if (v552)
              {
                v138 = BYTE3(result);
                v139 = *v8;
                if (v139 >= 8)
                {
                  result = PDAsaturationPDA(*v14, v139, result, v138);
                  v12 = v135;
                  v138 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v138;
              }

              else
              {
                result = PDAsaturationPDA(*v14, 0xFFu, result, BYTE3(result));
                v12 = v135;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v140 = &v573[v571];
          if (v140 >= v12)
          {
            v141 = v132;
          }

          else
          {
            v141 = 0;
          }

          v133 += v561 + v141;
          v573 = &v140[v141];
          v14 += v571;
          --v134;
        }

        while (v134);
        if (v550)
        {
          v142 = &v549[v523];
          v143 = v490;
          if (v142 < v550)
          {
            v143 = 0;
          }

          v133 = &v548[v526 + v143];
          v144 = v508;
          if (v142 < v550)
          {
            v144 = 0;
          }

          v12 += 2 * v144 + 2 * v523;
          v548 += v526 + v143;
          v549 = &v142[v144];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v133 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 26:
      v379 = -v37;
      v501 = -(v526 * v25);
      v521 = -(v523 * v25);
      v380 = v548;
      do
      {
        v381 = v527;
        v382 = v12;
        do
        {
          v383 = *v16;
          if (v383 >= 8)
          {
            v384 = v561 ? *v380 : -1;
            result = PDAM(*v573, v384, v383);
            v12 = v382;
            if (result >> 27)
            {
              if (v552)
              {
                v385 = BYTE3(result);
                v386 = *v8;
                if (v386 >= 8)
                {
                  result = PDAluminosityPDA(result, v385, *v14, v386);
                  v12 = v382;
                  v385 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v385;
              }

              else
              {
                result = PDAluminosityPDA(result, BYTE3(result), *v14, 0xFFu);
                v12 = v382;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v387 = &v573[v571];
          if (v387 >= v12)
          {
            v388 = v379;
          }

          else
          {
            v388 = 0;
          }

          v380 += v561 + v388;
          v573 = &v387[v388];
          v14 += v571;
          --v381;
        }

        while (v381);
        if (v550)
        {
          v389 = &v549[v523];
          v390 = v501;
          if (v389 < v550)
          {
            v390 = 0;
          }

          v380 = &v548[v526 + v390];
          v391 = v521;
          if (v389 < v550)
          {
            v391 = 0;
          }

          v12 += 2 * v391 + 2 * v523;
          v548 += v526 + v390;
          v549 = &v389[v391];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v380 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 27:
      v41 = -v37;
      v487 = -(v526 * v25);
      v502 = -(v523 * v25);
      v42 = v548;
      do
      {
        v43 = v527;
        v44 = v12;
        do
        {
          v45 = *v16;
          if (v45 >= 8)
          {
            v46 = v561 ? *v42 : -1;
            result = PDAM(*v573, v46, v45);
            v12 = v44;
            if (result >> 27)
            {
              v47 = BYTE3(result);
              if (v552)
              {
                v48 = *v8;
                if (v48 >= 8)
                {
                  result = PDAluminosityPDA(*v14, v48, result, v47);
                  v12 = v44;
                  v47 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v47;
              }

              else
              {
                result = PDAluminosityPDA(*v14, 0xFFu, result, v47);
                v12 = v44;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v49 = &v573[v571];
          if (v49 >= v12)
          {
            v50 = v41;
          }

          else
          {
            v50 = 0;
          }

          v42 += v561 + v50;
          v573 = &v49[v50];
          v14 += v571;
          --v43;
        }

        while (v43);
        if (v550)
        {
          v51 = &v549[v523];
          v52 = v487;
          if (v51 < v550)
          {
            v52 = 0;
          }

          v42 = &v548[v526 + v52];
          v53 = v502;
          if (v51 < v550)
          {
            v53 = 0;
          }

          v12 += 2 * v53 + 2 * v523;
          v548 += v526 + v52;
          v549 = &v51[v53];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v42 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    default:
      return result;
  }

  do
  {
    v464 = v527;
    v465 = v12;
    do
    {
      v466 = *v16;
      if (v466 < 0xF8)
      {
        if (v466 < 8)
        {
          goto LABEL_801;
        }

        v467 = (*v463 * v466 + ((*v463 * v466) >> 8) + 1) >> 8;
      }

      else
      {
        LOBYTE(v467) = *v463;
      }

      result = PDM(*v14, ~v467);
      *v14 = result;
      v12 = v465;
LABEL_801:
      v16 += v571;
      v468 = &v573[v571];
      if (v468 >= v12)
      {
        v469 = v461;
      }

      else
      {
        v469 = 0;
      }

      v463 += v460 + v469;
      v573 = &v468[v469];
      v14 += v571;
      --v464;
    }

    while (v464);
    if (v550)
    {
      v470 = &v549[v523];
      v471 = v570;
      if (v470 < v550)
      {
        v471 = 0;
      }

      v463 = &v548[v526 + v471];
      if (v470 >= v550)
      {
        v472 = v462;
      }

      else
      {
        v472 = 0;
      }

      v12 += 2 * v472 + 2 * v523;
      v548 += v526 + v471;
      v549 = &v470[v472];
      v573 = v549;
    }

    else
    {
      v573 += v523;
      v463 += v526;
    }

    v16 += v525;
    v14 += v524;
    --v551;
  }

  while (v551);
  return result;
}

void *rgb555_pattern(uint64_t a1, void *a2, unsigned int a3, int a4, float *a5, int a6, float a7)
{
  v11 = *(*a1 + 64);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[3];
  if (a2 && a3 > 7 || (a2 = malloc_type_malloc(0x38uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    v15 = v13;
    if (v13 >= a7)
    {
      v15 = a7;
      if (v12 > a7)
      {
        v15 = v12;
      }
    }

    v16 = v15 * v11[2];
    if (a5)
    {
      v17 = a4;
    }

    else
    {
      v17 = 0;
    }

    if (v17 == 1)
    {
      if (*a5 < v12)
      {
        v47 = v12;
      }

      else
      {
        v47 = *a5;
      }

      if (*a5 <= v13)
      {
        v48 = v47;
      }

      else
      {
        v48 = v13;
      }

      v18 = (v14 + (v48 * v16));
      v19 = (v14 + (v48 * v16));
      v20 = v19;
      goto LABEL_74;
    }

    if (v17 == 4)
    {
      v30 = a5[4];
      v31 = *a5;
      v32 = a5[1];
      v33 = a5[2];
      if (v30 < v12)
      {
        v34 = v12;
      }

      else
      {
        v34 = a5[4];
      }

      if (v30 <= v13)
      {
        v35 = v34;
      }

      else
      {
        v35 = v13;
      }

      if (v31 < v12)
      {
        v36 = v12;
      }

      else
      {
        v36 = *a5;
      }

      if (v31 <= v13)
      {
        v37 = v36;
      }

      else
      {
        v37 = v13;
      }

      if (v32 < v12)
      {
        v38 = v12;
      }

      else
      {
        v38 = a5[1];
      }

      if (v32 <= v13)
      {
        v39 = v38;
      }

      else
      {
        v39 = v13;
      }

      if (v33 < v12)
      {
        v40 = v12;
      }

      else
      {
        v40 = a5[2];
      }

      if (v33 <= v13)
      {
        v41 = v40;
      }

      else
      {
        v41 = v13;
      }

      v42 = (v13 - v37) - v35;
      v43 = (v13 - v39) - v35;
      v44 = (v13 - v41) - v35;
      if (v42 >= v12)
      {
        v45 = v14 + (v42 * v16);
      }

      else
      {
        v45 = v12;
      }

      if (v43 >= v12)
      {
        v46 = v14 + (v43 * v16);
      }

      else
      {
        v46 = v12;
      }

      if (v44 >= v12)
      {
        v29 = v14 + (v44 * v16);
      }

      else
      {
        v29 = v12;
      }

      v18 = v45;
      v19 = v46;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      if (v17 != 3)
      {
LABEL_74:
        v49 = (v14 + v16);
        if (a6 && (v18 | v49) | (v19 | v20))
        {
          *a2 = xmmword_18439C960;
          a2[2] = 0x2000000010;
          a2[6] = (v18 << 32) | (v49 << 48) | (v19 << 16) | v20;
          *(a2 + 6) = 16 * (v49 < 7936);
          if (v49 >= 7936)
          {
            v50 = 0;
          }

          else
          {
            v50 = a2 + 6;
          }

          a2[4] = a2 + 6;
          a2[5] = v50;
        }

        else
        {
          v51 = (4 * v18 + 512) & 0x7C00 | ((v19 + 128) >> 3) & 0x3E0 | ((v20 + 128) >> 8) & 0x1F;
          *a2 = xmmword_18439C970;
          *(a2 + 6) = 0;
          a2[2] = 1;
          *(a2 + 12) = v51 | (v51 << 16);
          a2[4] = a2 + 6;
          if (v49 > 7807)
          {
            a2[5] = 0;
          }

          else
          {
            *(a2 + 13) = 16843009 * (((v49 + 128) >> 5) & 0xF8 | ((v49 + 128) >> 10) & 7);
            a2[5] = a2 + 52;
          }
        }

        return a2;
      }

      v21 = a5[1];
      v22 = a5[2];
      if (*a5 < v12)
      {
        v23 = v12;
      }

      else
      {
        v23 = *a5;
      }

      if (*a5 <= v13)
      {
        v24 = v23;
      }

      else
      {
        v24 = v13;
      }

      if (v21 < v12)
      {
        v25 = v12;
      }

      else
      {
        v25 = a5[1];
      }

      if (v21 <= v13)
      {
        v26 = v25;
      }

      else
      {
        v26 = v13;
      }

      if (v22 < v12)
      {
        v27 = v12;
      }

      else
      {
        v27 = a5[2];
      }

      if (v22 <= v13)
      {
        v28 = v27;
      }

      else
      {
        v28 = v13;
      }

      v18 = (v14 + (v24 * v16));
      v19 = (v14 + (v26 * v16));
      v29 = v14 + (v28 * v16);
    }

    v20 = v29;
    goto LABEL_74;
  }

  return a2;
}

uint64_t RGB555_shade(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v2;
  v45 = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  *v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  v7 = *(v6 + 56);
  v8 = *v2;
  v9 = !*(v2 + 12) && !*(v3 + 72) && *(v3 + 4) >= 1.0;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v10 = *(v7 + 16 * v8 + 8 * v9 + 4 * (*(v2 + 6) == 0));
  if (v10 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v2 + 1) < 1 || *(v2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v2, v3, v15, v40) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*v4 & 0xF000000) == 0x3000000)
  {
    if (*(v4 + 16))
    {
      v12 = rgb555_shade_radial_RGB;
    }

    else if (*(v4 + 24))
    {
      v12 = rgb555_shade_conic_RGB;
    }

    else if (*(&v17 + 1) < 2)
    {
      v12 = rgb555_shade_axial_RGB;
    }

    else
    {
      v12 = rgb555_shade_custom_RGB;
    }

    *&v15[0] = v12;
    if (v38)
    {
      *(&v37 + 1) = v44;
      _blt_shade_samples_16(v44, 1, 3, v38, *(&v38 + 1), 1uLL);
    }

    v13 = *(&v17 + 1) * v17;
    if ((*(&v17 + 1) * v17) <= 480)
    {
      v14 = v42;
      v36[1] = v42;
LABEL_27:
      _blt_shade_samples_16(v14, 1, 3, v16, *(&v16 + 1), v13);
      if (*(v4 + 1))
      {
        *&v37 = &_blt_shade_samples_noise;
      }

      goto LABEL_29;
    }

    v14 = malloc_type_malloc(8 * v13 + 32, 0x8C254358uLL);
    if (v14)
    {
      v36[1] = v14;
      v13 = *(&v17 + 1) * v17;
      goto LABEL_27;
    }

    return 0xFFFFFFFFLL;
  }

  if (!*&v15[0])
  {
    return 0xFFFFFFFFLL;
  }

LABEL_29:
  DWORD2(v15[0]) = *v6;
  HIDWORD(v15[0]) = DWORD2(v15[0]);
  RGB555_image_mark(v5, v15, v10);
  if (v36[1] && (v36[1] < v42 || &v43 < v36[1]))
  {
    free(v36[1]);
  }

  return 1;
}

void RGB555_image_mark(uint64_t a1, uint64_t a2, int a3)
{
  v362 = a3;
  v383 = *MEMORY[0x1E69E9840];
  v381 = *(a1 + 4);
  v361 = v381;
  v3 = (v381 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v3 <= 0x1FFFFFF)
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *(a2 + 184);
    v378 = *(a1 + 136);
    v379 = v5;
    v8 = *(a2 + 96);
    v375 = *(a2 + 104);
    v376 = v8;
    v10 = *(a1 + 24);
    v9 = *(a1 + 28);
    v11 = *(a1 + 16);
    v12 = *(a1 + 20);
    v13 = *(a1 + 12);
    v374 = *(a1 + 8);
    v373 = a2;
    v14 = *(a2 + 16);
    v15 = (v14 + 6) * v3;
    if (v15 > 65439)
    {
      v18 = malloc_type_calloc(1uLL, v15 + 96, 0xF5B4F9ABuLL);
      v17 = v18;
      v20 = v18;
      v21 = v373;
      if (!v18)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1);
      v17 = &v355 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v17, v16);
      v20 = 0;
      v21 = v373;
    }

    v22 = v12;
    v357 = v20;
    v380 = ((v7 * 255.0) + 0.5);
    v23 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
    v24 = v23 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21[20] = v24;
    if (v14)
    {
      v25 = 4 * v3;
    }

    else
    {
      v25 = 0;
    }

    v26 = v24 + v25;
    v27 = v6 + (v10 - 1) * v9;
    v28 = v9 >> 1;
    v21[18] = v23;
    v21[19] = v26;
    if (v379)
    {
      v29 = *(a1 + 32);
      v30 = a1;
      v31 = (v379 + v29 * v11 + v13);
      v372 = v29 - v361;
      v32 = v361;
      v382 = 1;
    }

    else
    {
      v30 = a1;
      v31 = 0;
      v372 = 0;
      v382 = 0;
      v32 = v361;
    }

    v33 = v27 + 2 * v22;
    v34 = (v6 + 2 * v28 * v11 + 2 * v13);
    v371 = v28 - v32;
    v35 = *(v30 + 104);
    v36 = *(v30 + 108);
    v369 = v30;
    v37 = *(v30 + 2);
    v38 = v362;
    if (v37 == 6 || v37 == 1)
    {
      v39 = v373;
      v41 = v375;
      v40 = v376;
      if (!v378)
      {
        goto LABEL_715;
      }

      v355 = v28;
      v42 = 0;
      v43 = 0;
      v44 = *(v369 + 124);
      v45 = v378 + v44 * v36 + v35;
      v32 = v361;
      v370 = v44 - v361;
      goto LABEL_21;
    }

    v41 = v375;
    v40 = v376;
    if (!v378)
    {
      v355 = v28;
      v45 = 0;
      v42 = 0;
      v370 = 0;
      v43 = 0;
      v39 = v373;
LABEL_21:
      v50 = v381;
LABEL_22:
      v51 = vdup_n_s32(v380);
      v359 = (v50 - 1);
      v358 = -v32;
      v356 = v33;
      v360 = v33 - 2;
      v368 = xmmword_18439C830;
      v367 = xmmword_18439C840;
      v366 = xmmword_18439C850;
      v365 = xmmword_18439C800;
      v364 = xmmword_18439C810;
      v363 = xmmword_18439C820;
      v52 = v42;
      while (2)
      {
        v42 = v52;
        v53 = *v39;
        v375 = v41;
        v376 = v40;
        v53(v39, v40, v41, v50);
        v55 = *(v39 + 160);
        v56 = *(v39 + 144);
        v57 = *(v39 + 8);
        v58 = *(v39 + 12);
        v377 = v42;
        LODWORD(v378) = v43;
        if (v57 == v58)
        {
          if (v380 > 0xF7)
          {
            goto LABEL_155;
          }

          v59 = v50;
          v60 = v56;
          do
          {
            if (*v60 >= 8u)
            {
              *v55 = PDAM(*v55, HIBYTE(*v55), v380);
            }

            ++v60;
            v55 += 2;
            --v59;
          }

          while (v59);
          v55 += 2 * v358;
          v56 += v359 + v358 + 1;
          goto LABEL_30;
        }

        v61 = v43;
        v62 = *(v39 + 152);
        v63 = *(v369 + 12);
        v64 = *(v369 + 16) + v61;
        v65 = HIWORD(v57) & 0x3F;
        v66 = *(v39 + 168);
        if (v65 == 16)
        {
          if (!v66)
          {
            if (v380 >= 0xF8)
            {
              v286 = 0;
              do
              {
                if (v56[v286] >= 8u)
                {
                  v287 = *(v62 + 8 * v286);
                  *&v55[2 * v286] = (v287 >> 1) & 0x7C00 | (32 * (v287 >> 27)) & 0xFFFFFF | (v287 >> 43) & 0x1F | (HIBYTE(v287) >> 3 << 27) | (((HIBYTE(v287) >> 5) & 7) << 24);
                }

                ++v286;
              }

              while (v50 != v286);
            }

            else
            {
              v104 = 0;
              do
              {
                if (v56[v104] >= 8u)
                {
                  *&v55[2 * v104] = PDAM((*(v62 + 8 * v104) >> 1) & 0x7C00 | (32 * (*(v62 + 8 * v104) >> 27)) | (*(v62 + 8 * v104) >> 43) & 0x1F, HIBYTE(*(v62 + 8 * v104)), v380);
                }

                ++v104;
              }

              while (v50 != v104);
              v39 = v373;
            }

            goto LABEL_154;
          }

          if (v63 <= 0)
          {
            v83 = -(-v63 & 0xF);
          }

          else
          {
            v83 = *(v369 + 12) & 0xF;
          }

          v68 = -v64 < 0;
          v84 = -v64 & 0xF;
          v85 = v64 & 0xF;
          if (!v68)
          {
            v85 = -v84;
          }

          v86 = v66 + 16 * v85;
          if (v380 >= 0xF8)
          {
            v120 = 0;
            do
            {
              if (v56[v120] >= 8u)
              {
                *&v55[2 * v120] = DITHERRGBA32((HIBYTE(*(v62 + 8 * v120)) | (BYTE3(*(v62 + 8 * v120)) << 16)) & 0xFFFFFF | (BYTE1(*(v62 + 8 * v120)) << 24) | HIDWORD(*(v62 + 8 * v120)) & 0xFF00, *(v86 + v83));
              }

              v83 = (v83 + 1) & 0xF;
              ++v120;
            }

            while (v381 != v120);
          }

          else
          {
            v87 = 0;
            do
            {
              if (v56[v87] >= 8u)
              {
                *&v55[2 * v87] = DITHERRGBA32M((HIBYTE(*(v62 + 8 * v87)) | (BYTE3(*(v62 + 8 * v87)) << 16)) & 0xFFFFFF | (BYTE1(*(v62 + 8 * v87)) << 24) | HIDWORD(*(v62 + 8 * v87)) & 0xFF00, *(v86 + v83), v380);
              }

              v83 = (v83 + 1) & 0xF;
              ++v87;
            }

            while (v381 != v87);
          }
        }

        else
        {
          if (v65 != 32)
          {
            if (!v66)
            {
              if (v380 >= 0xF8)
              {
                v288 = 0;
                do
                {
                  if (v56[v288] >= 8u)
                  {
                    v289 = *(v62 + 4 * v288);
                    v290 = vdupq_n_s32(v289);
                    v291 = vshlq_u32(v290, v365);
                    v291.i32[3] = vshlq_u32(v290, v364).i32[3];
                    v292 = vandq_s8(v291, v363);
                    *v292.i8 = vorr_s8(*v292.i8, *&vextq_s8(v292, v292, 8uLL));
                    *&v55[2 * v288] = v292.i32[0] | (v289 << 19) & 0x7000000 | v292.i32[1];
                  }

                  ++v288;
                }

                while (v50 != v288);
              }

              else
              {
                v105 = 0;
                do
                {
                  if (v56[v105] >= 8u)
                  {
                    v54.i16[0] = *(v62 + 4 * v105);
                    v54.i16[1] = BYTE2(*(v62 + 4 * v105));
                    v54.i16[2] = BYTE1(*(v62 + 4 * v105));
                    v54.i16[3] = (*(v62 + 4 * v105) >> 8 >> 16);
                    *v54.i8 = vmul_s32(*v54.i8, v51);
                    *v54.i8 = vadd_s32(vadd_s32(*v54.i8, 0x1000100010001), (*&vshr_n_u32(*v54.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
                    v106 = vshlq_u32(v54, v368).u32[0];
                    v107 = (v54.i32[0] << 11) & 0x7000000;
                    v108 = vshlq_u32(vzip1q_s32(v54, v54), v367);
                    v108.i32[0] = v106;
                    v54 = vandq_s8(v108, v366);
                    *v54.i8 = vorr_s8(*v54.i8, *&vextq_s8(v54, v54, 8uLL));
                    *&v55[2 * v105] = v54.i32[0] | v107 | v54.i32[1];
                  }

                  ++v105;
                }

                while (v50 != v105);
              }

              goto LABEL_154;
            }

            if (v63 <= 0)
            {
              v88 = -(-v63 & 0xF);
            }

            else
            {
              v88 = *(v369 + 12) & 0xF;
            }

            v68 = -v64 < 0;
            v89 = -v64 & 0xF;
            v90 = v64 & 0xF;
            if (!v68)
            {
              v90 = -v89;
            }

            v91 = v66 + 16 * v90;
            if (v380 >= 0xF8)
            {
              v121 = 0;
              do
              {
                if (v56[v121] >= 8u)
                {
                  *&v55[2 * v121] = DITHERRGBA32(*(v62 + 4 * v121), *(v91 + v88));
                }

                v88 = (v88 + 1) & 0xF;
                ++v121;
              }

              while (v50 != v121);
            }

            else
            {
              v92 = 0;
              do
              {
                if (v56[v92] >= 8u)
                {
                  *&v55[2 * v92] = DITHERRGBA32M(*(v62 + 4 * v92), *(v91 + v88), v380);
                }

                v88 = (v88 + 1) & 0xF;
                ++v92;
              }

              while (v50 != v92);
            }

            v38 = v362;
            v39 = v373;
LABEL_153:
            v42 = v377;
LABEL_154:
            v43 = v378;
            goto LABEL_155;
          }

          if (!v66)
          {
            if (v380 < 0xF8)
            {
              v93 = 0;
              v94 = (v62 + 8);
              v43 = v378;
              do
              {
                if (v56[v93] >= 8u)
                {
                  v95 = v94[1];
                  if (v95 <= 0.0)
                  {
                    v103 = 0;
                  }

                  else
                  {
                    v96 = *(v94 - 2);
                    v97 = *(v94 - 1);
                    v98 = ((v95 * 255.0) + 0.5);
                    v99 = *v94;
                    if (v95 > 1.0)
                    {
                      v98 = 255;
                      v95 = 1.0;
                    }

                    v100 = ((v96 * 255.0) + 0.5);
                    if (v96 < 0.0)
                    {
                      v100 = 0;
                    }

                    if (v96 > v95)
                    {
                      v100 = v98;
                    }

                    v101 = ((v97 * 255.0) + 0.5);
                    if (v97 < 0.0)
                    {
                      LOWORD(v101) = 0;
                    }

                    if (v97 > v95)
                    {
                      LOWORD(v101) = v98;
                    }

                    v102 = ((v99 * 255.0) + 0.5);
                    if (v99 < 0.0)
                    {
                      LOBYTE(v102) = 0;
                    }

                    if (v99 > v95)
                    {
                      LOBYTE(v102) = v98;
                    }

                    v103 = PDAM((v100 << 7) & 0x7C00 | (4 * v101) & 0x3E0 | (v102 >> 3), v98, v380);
                  }

                  *&v55[2 * v93] = v103;
                }

                ++v93;
                v94 += 4;
              }

              while (v50 != v93);
LABEL_30:
              v39 = v373;
              v42 = v377;
              goto LABEL_155;
            }

            v275 = 0;
            v276 = (v62 + 8);
            v43 = v378;
            do
            {
              if (v56[v275] >= 8u)
              {
                v277 = v276[1];
                if (v277 <= 0.0)
                {
                  v285 = 0;
                }

                else
                {
                  v278 = *(v276 - 2);
                  v279 = *(v276 - 1);
                  v280 = *v276;
                  v281 = ((v277 * 255.0) + 0.5);
                  if (v277 > 1.0)
                  {
                    v281 = 255;
                    v277 = 1.0;
                  }

                  v282 = ((v278 * 255.0) + 0.5);
                  if (v278 < 0.0)
                  {
                    v282 = 0;
                  }

                  if (v278 > v277)
                  {
                    v282 = v281;
                  }

                  v283 = ((v279 * 255.0) + 0.5);
                  if (v279 < 0.0)
                  {
                    v283 = 0;
                  }

                  if (v279 > v277)
                  {
                    v283 = v281;
                  }

                  v284 = ((v280 * 255.0) + 0.5);
                  if (v280 < 0.0)
                  {
                    LOBYTE(v284) = 0;
                  }

                  if (v280 > v277)
                  {
                    LOBYTE(v284) = v281;
                  }

                  v285 = (v281 << 24) & 0xF8000000 | (v281 >> 5 << 24) | (v282 << 7) & 0x7C00 | (4 * v283) & 0x3E0 | (v284 >> 3);
                }

                *&v55[2 * v275] = v285;
              }

              ++v275;
              v276 += 4;
            }

            while (v50 != v275);
LABEL_155:
            switch(v38)
            {
              case 0:
                v122 = v45 != 0;
                if (v379)
                {
                  v123 = v50;
                  v124 = v45;
                  while (1)
                  {
                    v125 = *v56;
                    if (*v56)
                    {
                      if (v45)
                      {
                        v125 = (*v124 * v125 + ((*v124 * v125) >> 8) + 1) >> 8;
                      }

                      if (v125 >= 0xF8u)
                      {
                        LOBYTE(v126) = 0;
                        *v34 = 0;
LABEL_165:
                        *v31 = v126;
                        goto LABEL_166;
                      }

                      if (v125 >= 8u)
                      {
                        v127 = PDAM(bswap32(*v34) >> 16, *v31, ~v125);
                        *v34 = bswap32(v127) >> 16;
                        v126 = HIBYTE(v127);
                        goto LABEL_165;
                      }
                    }

LABEL_166:
                    ++v56;
                    v124 += v122;
                    ++v34;
                    ++v31;
                    if (!--v123)
                    {
                      goto LABEL_620;
                    }
                  }
                }

                v312 = v50;
                v124 = v45;
                while (1)
                {
                  v313 = *v56;
                  if (*v56)
                  {
                    if (v45)
                    {
                      v313 = (*v124 * v313 + ((*v124 * v313) >> 8) + 1) >> 8;
                    }

                    if (v313 > 0xF7u)
                    {
                      v314 = 0;
LABEL_618:
                      *v34 = v314;
                      goto LABEL_619;
                    }

                    if (v313 >= 8u)
                    {
                      v314 = __rev16(PDM(bswap32(*v34) >> 16, ~v313));
                      goto LABEL_618;
                    }
                  }

LABEL_619:
                  ++v56;
                  v124 += v122;
                  ++v34;
                  if (!--v312)
                  {
LABEL_620:
                    v45 = &v124[v370];
                    v34 += v371;
                    goto LABEL_698;
                  }
                }

              case 1:
                v202 = *v56;
                if (v379)
                {
                  if (v45)
                  {
                    v203 = 0;
                    v204 = v56 + 1;
                    v205 = v34 - 1;
                    while (1)
                    {
                      if (v202)
                      {
                        v206 = v202 * v45[v203] + ((v202 * v45[v203]) >> 8) + 1;
                        if (v206 >> 11 >= 0x1F)
                        {
                          v207 = *&v55[2 * v203];
LABEL_348:
                          v34[v203] = bswap32(v207) >> 16;
                          v31[v203] = HIBYTE(v207);
                          goto LABEL_349;
                        }

                        if (v206 >= 0x800)
                        {
                          v207 = PDAMplusDAM(*&v55[2 * v203], HIBYTE(*&v55[2 * v203]), BYTE1(v206), bswap32(v34[v203]) >> 16, v31[v203], ~(v206 >> 8));
                          goto LABEL_348;
                        }
                      }

LABEL_349:
                      v202 = v204[v203++];
                      ++v205;
                      if (v50 == v203)
                      {
                        v208 = &v31[v203 - 1];
                        v45 += v203 + v370;
LABEL_671:
                        v34 = &v205[v371 + 1];
                        v31 = (v208 + v372 + 1);
                        goto LABEL_699;
                      }
                    }
                  }

                  v337 = v56 + 1;
                  v208 = (v31 - 1);
                  v205 = v34 - 1;
                  v338 = v50;
                  while (v202 < 0xF8)
                  {
                    if (v202 >= 8)
                    {
                      v339 = PDAMplusDAM(*v55, HIBYTE(*v55), v202, bswap32(v205[1]) >> 16, *(v208 + 1), ~v202);
                      goto LABEL_668;
                    }

LABEL_669:
                    v340 = *v337++;
                    v202 = v340;
                    v55 += 2;
                    ++v208;
                    ++v205;
                    if (!--v338)
                    {
                      v45 = 0;
                      goto LABEL_671;
                    }
                  }

                  v339 = *v55;
LABEL_668:
                  v205[1] = bswap32(v339) >> 16;
                  *(v208 + 1) = HIBYTE(v339);
                  goto LABEL_669;
                }

                if (!v45)
                {
                  v345 = *(v369 + 40);
                  v346 = v56 + 1;
                  v347 = v50;
                  while (1)
                  {
                    v348 = v360;
                    if (v360 >= v34)
                    {
                      v348 = v34;
                    }

                    v319 = v348 >= v345 ? v348 : v345;
                    if (v202 >= 0xF8)
                    {
                      break;
                    }

                    if (v202 >= 8)
                    {
                      v349 = PDMplusDM(*v55, v202, bswap32(*v319) >> 16, ~v202);
                      goto LABEL_694;
                    }

LABEL_695:
                    v350 = *v346++;
                    v202 = v350;
                    v55 += 2;
                    v34 = v319 + 1;
                    if (!--v347)
                    {
                      v45 = 0;
                      goto LABEL_697;
                    }
                  }

                  v349 = *v55;
LABEL_694:
                  *v319 = bswap32(v349) >> 16;
                  goto LABEL_695;
                }

                v315 = v56 + 1;
                v316 = v50;
                do
                {
                  if (!v202)
                  {
                    v319 = v34;
                    goto LABEL_635;
                  }

                  v317 = v202 * *v45 + ((v202 * *v45) >> 8) + 1;
                  v318 = v360;
                  if (v360 >= v34)
                  {
                    v318 = v34;
                  }

                  if (v318 >= *(v369 + 40))
                  {
                    v319 = v318;
                  }

                  else
                  {
                    v319 = *(v369 + 40);
                  }

                  if (v317 >> 11 < 0x1F)
                  {
                    if (v317 < 0x800)
                    {
                      goto LABEL_635;
                    }

                    v320 = PDMplusDM(*v55, BYTE1(v317), bswap32(*v319) >> 16, ~(v317 >> 8));
                  }

                  else
                  {
                    v320 = *v55;
                  }

                  *v319 = bswap32(v320) >> 16;
LABEL_635:
                  v321 = *v315++;
                  v202 = v321;
                  v55 += 2;
                  ++v45;
                  v34 = v319 + 1;
                  --v316;
                }

                while (v316);
                v45 += v370;
LABEL_697:
                v34 = &v319[v371 + 1];
LABEL_698:
                v31 += v372;
LABEL_699:
                v39 = v373;
LABEL_700:
                v268 = v375;
                v267 = v376;
                v42 = v377;
LABEL_701:
                if (!--v374)
                {
                  if (v42)
                  {
LABEL_714:
                    free(v42);
                  }

                  goto LABEL_715;
                }

                v52 = 0;
                ++v43;
                v40 = *(v39 + 128) + v267;
                v41 = *(v39 + 136) + v268;
                if (!v42)
                {
                  continue;
                }

                v47 = v43;
                v49 = v361;
LABEL_704:
                v351 = v372 + v49;
                while (1)
                {
                  while (1)
                  {
                    v352 = *(v45 - 4);
                    v353 = v352 - v47;
                    if (v352 <= v47)
                    {
                      break;
                    }

                    v374 -= v353;
                    if (v374 < 1)
                    {
                      goto LABEL_714;
                    }

                    v40 += *(v373 + 128) * v353;
                    v41 += *(v373 + 136) * v353;
                    v34 += v355 * v353;
                    v354 = v351 * v353;
                    if (!v379)
                    {
                      v354 = 0;
                    }

                    v31 += v354;
                    v47 = v352;
                  }

                  if (v47 < *(v45 - 3) + v352)
                  {
                    break;
                  }

                  if (!shape_enum_clip_scan(v42, v45 - 4))
                  {
                    goto LABEL_714;
                  }
                }

                v39 = v373;
                v32 = v361;
                v33 = v356;
                v43 = v47;
                v38 = v362;
                goto LABEL_22;
              case 2:
                v177 = *v56;
                if (v379)
                {
                  if (v45)
                  {
                    v178 = 0;
                    v179 = v56 + 1;
                    v180 = v34 - 1;
                    while (1)
                    {
                      if (v177)
                      {
                        v181 = v177 * v45[v178] + ((v177 * v45[v178]) >> 8) + 1;
                        if (v181 >> 11 < 0x1F)
                        {
                          if (v181 < 0x800)
                          {
                            goto LABEL_299;
                          }

                          v184 = PDAM(*&v55[2 * v178], HIBYTE(*&v55[2 * v178]), SBYTE1(v181));
                          if (!(v184 >> 27))
                          {
                            goto LABEL_299;
                          }

                          v185 = HIBYTE(v184);
                          v186 = bswap32(v34[v178]) >> 16;
                          v187 = v31[v178];
                          v184 = v184;
LABEL_297:
                          v188 = PDAplusDAM(v184, v185, v186, v187, v185 ^ 0xFF);
                          v34[v178] = bswap32(v188) >> 16;
                          v183 = HIBYTE(v188);
LABEL_298:
                          v31[v178] = v183;
                          goto LABEL_299;
                        }

                        v182 = *&v55[2 * v178];
                        if (v182 >> 27 == 31)
                        {
                          v183 = HIBYTE(v182);
                          v34[v178] = bswap32(v182) >> 16;
                          goto LABEL_298;
                        }

                        if (v182 >> 27)
                        {
                          v185 = HIBYTE(v182);
                          v186 = bswap32(v34[v178]) >> 16;
                          v187 = v31[v178];
                          v184 = *&v55[2 * v178];
                          goto LABEL_297;
                        }
                      }

LABEL_299:
                      v177 = v179[v178++];
                      ++v180;
                      if (v381 == v178)
                      {
                        v189 = &v31[v178 - 1];
                        v45 += v178 + v370;
                        v50 = v381;
LABEL_662:
                        v34 = &v180[v371 + 1];
                        v31 = (v189 + v372 + 1);
                        goto LABEL_700;
                      }
                    }
                  }

                  v327 = v56 + 1;
                  v189 = (v31 - 1);
                  v180 = v34 - 1;
                  v328 = v50;
                  while (v177 >= 0xF8)
                  {
                    v329 = *v55;
                    if (*v55 >> 27 == 31)
                    {
                      v330 = HIBYTE(v329);
                      v180[1] = bswap32(v329) >> 16;
                      goto LABEL_659;
                    }

                    if (*v55 >> 27)
                    {
                      v332 = HIBYTE(v329);
                      v333 = bswap32(v180[1]) >> 16;
                      v334 = *(v189 + 1);
                      v331 = *v55;
                      goto LABEL_658;
                    }

LABEL_660:
                    v336 = *v327++;
                    v177 = v336;
                    v55 += 2;
                    ++v189;
                    ++v180;
                    if (!--v328)
                    {
                      v45 = 0;
                      v39 = v373;
                      goto LABEL_662;
                    }
                  }

                  if (v177 < 8)
                  {
                    goto LABEL_660;
                  }

                  v331 = PDAM(*v55, HIBYTE(*v55), v177);
                  if (!(v331 >> 27))
                  {
                    goto LABEL_660;
                  }

                  v332 = HIBYTE(v331);
                  v333 = bswap32(v180[1]) >> 16;
                  v334 = *(v189 + 1);
                  v331 = v331;
LABEL_658:
                  v335 = PDAplusDAM(v331, v332, v333, v334, v332 ^ 0xFF);
                  v180[1] = bswap32(v335) >> 16;
                  v330 = HIBYTE(v335);
LABEL_659:
                  *(v189 + 1) = v330;
                  goto LABEL_660;
                }

                if (v45)
                {
                  v301 = v56 + 1;
                  v302 = v34 - 1;
                  v303 = v50;
                  while (!v177)
                  {
LABEL_597:
                    v306 = *v301++;
                    v177 = v306;
                    v55 += 2;
                    ++v45;
                    ++v302;
                    if (!--v303)
                    {
                      v45 += v370;
                      v268 = v375;
LABEL_683:
                      v34 = &v302[v371 + 1];
                      v31 += v372;
                      v267 = v376;
                      v42 = v377;
                      goto LABEL_701;
                    }
                  }

                  v304 = v177 * *v45 + ((v177 * *v45) >> 8) + 1;
                  if (v304 >> 11 < 0x1F)
                  {
                    if (v304 < 0x800)
                    {
                      goto LABEL_597;
                    }

                    v305 = PDAM(*v55, HIBYTE(*v55), SBYTE1(v304));
                    if (!(v305 >> 27))
                    {
                      goto LABEL_597;
                    }
                  }

                  else
                  {
                    v305 = *v55;
                    if (*v55 >> 27 == 31)
                    {
LABEL_596:
                      v302[1] = bswap32(v305) >> 16;
                      goto LABEL_597;
                    }

                    if (!(*v55 >> 27))
                    {
                      goto LABEL_597;
                    }
                  }

                  v305 = PDplusDM(v305, bswap32(v302[1]) >> 16, ~v305 >> 24);
                  goto LABEL_596;
                }

                v341 = v56 + 1;
                v302 = v34 - 1;
                v342 = v50;
                v268 = v375;
                while (v177 >= 0xF8)
                {
                  v343 = *v55;
                  if (*v55 >> 27 != 31)
                  {
                    if (!(*v55 >> 27))
                    {
                      goto LABEL_681;
                    }

                    goto LABEL_679;
                  }

LABEL_680:
                  v302[1] = bswap32(v343) >> 16;
LABEL_681:
                  v344 = *v341++;
                  v177 = v344;
                  v55 += 2;
                  ++v302;
                  if (!--v342)
                  {
                    v45 = 0;
                    v39 = v373;
                    goto LABEL_683;
                  }
                }

                if (v177 < 8)
                {
                  goto LABEL_681;
                }

                v343 = PDAM(*v55, HIBYTE(*v55), v177);
                if (!(v343 >> 27))
                {
                  goto LABEL_681;
                }

LABEL_679:
                v343 = PDplusDM(v343, bswap32(v302[1]) >> 16, ~v343 >> 24);
                goto LABEL_680;
              case 3:
                v135 = v45;
                while (1)
                {
                  v194 = *v56;
                  if (*v56)
                  {
                    if (v45)
                    {
                      v194 = (*v135 * v194 + ((*v135 * v194) >> 8) + 1) >> 8;
                    }

                    if (v194 >= 0xF8u)
                    {
                      v195 = PDAM(*v55, HIBYTE(*v55), *v31);
LABEL_325:
                      *v34 = bswap32(v195) >> 16;
                      *v31 = HIBYTE(v195);
                      goto LABEL_326;
                    }

                    if (v194 >= 8u)
                    {
                      v195 = PDAMplusDAM(*v55, HIBYTE(*v55), ((*v31 * v194 + ((*v31 * v194) >> 8) + 1) >> 8), bswap32(*v34) >> 16, *v31, ~v194);
                      goto LABEL_325;
                    }
                  }

LABEL_326:
                  ++v56;
                  v55 += 2;
                  v135 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  LODWORD(v50) = v50 - 1;
                  if (!v50)
                  {
                    goto LABEL_502;
                  }
                }

              case 4:
                v135 = v45;
                while (1)
                {
                  v150 = *v56;
                  if (*v56)
                  {
                    if (v45)
                    {
                      v150 = (*v135 * v150 + ((*v135 * v150) >> 8) + 1) >> 8;
                    }

                    if (v150 >= 0xF8u)
                    {
                      v151 = PDAM(*v55, HIBYTE(*v55), ~*v31);
LABEL_233:
                      *v34 = bswap32(v151) >> 16;
                      *v31 = HIBYTE(v151);
                      goto LABEL_234;
                    }

                    if (v150 >= 8u)
                    {
                      v151 = PDAMplusDAM(*v55, HIBYTE(*v55), (((*v31 ^ 0xFF) * v150 + (((*v31 ^ 0xFF) * v150) >> 8) + 1) >> 8), bswap32(*v34) >> 16, *v31, ~v150);
                      goto LABEL_233;
                    }
                  }

LABEL_234:
                  ++v56;
                  v55 += 2;
                  v135 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  LODWORD(v50) = v50 - 1;
                  if (!v50)
                  {
                    goto LABEL_502;
                  }
                }

              case 5:
                v217 = v50;
                v146 = v45;
                do
                {
                  v218 = *v56;
                  if (*v56)
                  {
                    if (v45)
                    {
                      v218 = (*v146 * v218 + ((*v146 * v218) >> 8) + 1) >> 8;
                    }

                    if (v218 >= 8u)
                    {
                      v219 = *v31;
                      v220 = PDAM(*v55, HIBYTE(*v55), v218);
                      v221 = v219;
                      v222 = v219;
                      v43 = v378;
                      v223 = PDAMplusDAM(v220, SHIBYTE(v220), v221, bswap32(*v34) >> 16, v222, HIBYTE(v220) ^ 0xFF);
                      *v34 = bswap32(v223) >> 16;
                      *v31 = HIBYTE(v223);
                    }
                  }

                  ++v56;
                  v55 += 2;
                  v146 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  --v217;
                }

                while (v217);
                goto LABEL_575;
              case 6:
                v135 = v45;
                while (1)
                {
                  v232 = *v56;
                  if (!*v56)
                  {
                    goto LABEL_433;
                  }

                  if (v45)
                  {
                    v232 = (*v135 * v232 + ((*v135 * v232) >> 8) + 1) >> 8;
                  }

                  if (v232 < 8u)
                  {
                    goto LABEL_433;
                  }

                  v233 = *v31;
                  if (v233 <= 7)
                  {
                    break;
                  }

                  if (v233 <= 0xF7)
                  {
                    v234 = PDAplusDAM(bswap32(*v34) >> 16, v233, *v55, HIBYTE(*v55), ((~v233 * v232 + ((~v233 * v232) >> 8) + 1) >> 8));
                    goto LABEL_432;
                  }

LABEL_433:
                  ++v56;
                  v55 += 2;
                  v135 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  LODWORD(v50) = v50 - 1;
                  if (!v50)
                  {
                    goto LABEL_502;
                  }
                }

                v234 = PDAM(*v55, HIBYTE(*v55), v232);
LABEL_432:
                *v34 = bswap32(v234) >> 16;
                *v31 = HIBYTE(v234);
                goto LABEL_433;
              case 7:
                v196 = v45 != 0;
                if (v379)
                {
                  v197 = v50;
                  v129 = v45;
                  while (1)
                  {
                    v198 = *v56;
                    if (*v56)
                    {
                      if (v45)
                      {
                        v198 = (*v129 * v198 + ((*v129 * v198) >> 8) + 1) >> 8;
                      }

                      if (v198 >= 0xF8u)
                      {
                        v199 = PDAM(bswap32(*v34) >> 16, *v31, *(v55 + 3));
LABEL_337:
                        *v34 = bswap32(v199) >> 16;
                        *v31 = HIBYTE(v199);
                        goto LABEL_338;
                      }

                      if (v198 >= 8u)
                      {
                        v200 = *(v55 + 3) * v198;
                        v201 = bswap32(*v34) >> 16;
                        v199 = PDAMplusDAM(v201, *v31, ((v200 + (v200 >> 8) + 1) >> 8), v201, *v31, ~v198);
                        goto LABEL_337;
                      }
                    }

LABEL_338:
                    ++v56;
                    v55 += 2;
                    v129 += v196;
                    ++v34;
                    ++v31;
                    if (!--v197)
                    {
                      goto LABEL_647;
                    }
                  }
                }

                v307 = v50;
                v129 = v45;
                while (1)
                {
                  v308 = *v56;
                  if (*v56)
                  {
                    if (v45)
                    {
                      v308 = (*v129 * v308 + ((*v129 * v308) >> 8) + 1) >> 8;
                    }

                    if (v308 >= 0xF8u)
                    {
                      v309 = PDM(bswap32(*v34) >> 16, *(v55 + 3));
LABEL_607:
                      *v34 = __rev16(v309);
                      goto LABEL_608;
                    }

                    if (v308 >= 8u)
                    {
                      v310 = *(v55 + 3) * v308;
                      v311 = bswap32(*v34) >> 16;
                      v309 = PDMplusDM(v311, ((v310 + (v310 >> 8) + 1) >> 8), v311, ~v308);
                      goto LABEL_607;
                    }
                  }

LABEL_608:
                  ++v56;
                  v55 += 2;
                  v129 += v196;
                  ++v34;
                  if (!--v307)
                  {
                    goto LABEL_647;
                  }
                }

              case 8:
                v246 = v45 != 0;
                if (v379)
                {
                  v247 = v50;
                  v129 = v45;
                  while (1)
                  {
                    v248 = *v56;
                    if (*v56)
                    {
                      if (v45)
                      {
                        v248 = (*v129 * v248 + ((*v129 * v248) >> 8) + 1) >> 8;
                      }

                      if (v248 >= 0xF8u)
                      {
                        v249 = PDAM(bswap32(*v34) >> 16, *v31, ~*(v55 + 3));
LABEL_468:
                        *v34 = bswap32(v249) >> 16;
                        *v31 = HIBYTE(v249);
                        goto LABEL_469;
                      }

                      if (v248 >= 8u)
                      {
                        v250 = (~*v55 >> 24) * v248;
                        v251 = bswap32(*v34) >> 16;
                        v249 = PDAMplusDAM(v251, *v31, ((v250 + (v250 >> 8) + 1) >> 8), v251, *v31, ~v248);
                        goto LABEL_468;
                      }
                    }

LABEL_469:
                    ++v56;
                    v55 += 2;
                    v129 += v246;
                    ++v34;
                    ++v31;
                    if (!--v247)
                    {
                      goto LABEL_647;
                    }
                  }
                }

                v322 = v50;
                v129 = v45;
                while (1)
                {
                  v323 = *v56;
                  if (*v56)
                  {
                    if (v45)
                    {
                      v323 = (*v129 * v323 + ((*v129 * v323) >> 8) + 1) >> 8;
                    }

                    if (v323 >= 0xF8u)
                    {
                      v324 = PDM(bswap32(*v34) >> 16, ~*(v55 + 3));
LABEL_645:
                      *v34 = __rev16(v324);
                      goto LABEL_646;
                    }

                    if (v323 >= 8u)
                    {
                      v325 = (~*v55 >> 24) * v323;
                      v326 = bswap32(*v34) >> 16;
                      v324 = PDMplusDM(v326, ((v325 + (v325 >> 8) + 1) >> 8), v326, ~v323);
                      goto LABEL_645;
                    }
                  }

LABEL_646:
                  ++v56;
                  v55 += 2;
                  v129 += v246;
                  ++v34;
                  if (!--v322)
                  {
                    goto LABEL_647;
                  }
                }

              case 9:
                v158 = v45;
                do
                {
                  v159 = *v56;
                  if (*v56)
                  {
                    if (v45)
                    {
                      v159 = (*v158 * v159 + ((*v158 * v159) >> 8) + 1) >> 8;
                    }

                    if (v159 >= 8u)
                    {
                      v160 = *v31;
                      v161 = PDAM(*v55, HIBYTE(*v55), v159);
                      v162 = v160 ^ 0xFF;
                      v163 = v160;
                      v43 = v378;
                      v164 = PDAMplusDAM(v161, SBYTE3(v161), v162, bswap32(*v34) >> 16, v163, (~v159 + BYTE3(v161)));
                      *v34 = bswap32(v164) >> 16;
                      *v31 = HIBYTE(v164);
                    }
                  }

                  ++v56;
                  v55 += 2;
                  v158 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  LODWORD(v50) = v50 - 1;
                }

                while (v50);
                v45 = &v158[v370];
                v34 += v371;
                v31 += v372;
                v38 = v362;
                goto LABEL_585;
              case 10:
                v239 = v50;
                v146 = v45;
                do
                {
                  v240 = *v56;
                  if (*v56)
                  {
                    if (v45)
                    {
                      v240 = (*v146 * v240 + ((*v146 * v240) >> 8) + 1) >> 8;
                    }

                    if (v240 >= 8u)
                    {
                      v241 = *v31;
                      v242 = PDAM(*v55, HIBYTE(*v55), v240);
                      v243 = v241 ^ 0xFF;
                      v244 = v241;
                      v43 = v378;
                      v245 = PDAMplusDAM(v242, SHIBYTE(v242), v243, bswap32(*v34) >> 16, v244, HIBYTE(v242) ^ 0xFF);
                      *v34 = bswap32(v245) >> 16;
                      *v31 = HIBYTE(v245);
                    }
                  }

                  ++v56;
                  v55 += 2;
                  v146 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  --v239;
                }

                while (v239);
                goto LABEL_575;
              case 11:
                v144 = v45 != 0;
                if (v379)
                {
                  v145 = v50;
                  v146 = v45;
                  do
                  {
                    v147 = *v56;
                    if (*v56)
                    {
                      if (v45)
                      {
                        v147 = (*v146 * v147 + ((*v146 * v147) >> 8) + 1) >> 8;
                      }

                      if (v147 >= 8u)
                      {
                        v148 = PDAM(*v55, HIBYTE(*v55), v147);
                        v149 = PDAplusdDA(bswap32(*v34) >> 16, *v31, v148, HIBYTE(v148));
                        *v34 = bswap32(v149) >> 16;
                        *v31 = HIBYTE(v149);
                      }
                    }

                    ++v56;
                    v55 += 2;
                    v146 += v144;
                    ++v34;
                    ++v31;
                    --v145;
                  }

                  while (v145);
                }

                else
                {
                  v293 = v50;
                  v146 = v45;
                  do
                  {
                    v294 = *v56;
                    if (*v56)
                    {
                      if (v45)
                      {
                        v294 = (*v146 * v294 + ((*v146 * v294) >> 8) + 1) >> 8;
                      }

                      if (v294 >= 8u)
                      {
                        v295 = PDAM(*v55, HIBYTE(*v55), v294);
                        *v34 = __rev16(PDplusdDA(bswap32(*v34) >> 16, v295, HIBYTE(v295)));
                      }
                    }

                    ++v56;
                    v55 += 2;
                    v146 += v144;
                    ++v34;
                    --v293;
                  }

                  while (v293);
                }

LABEL_575:
                v45 = &v146[v370];
                goto LABEL_584;
              case 12:
                v152 = v45 != 0;
                if (v379)
                {
                  v153 = v381;
                  v154 = v45;
                  do
                  {
                    v155 = *v56;
                    if (*v56)
                    {
                      if (v45)
                      {
                        v155 = (*v154 * v155 + ((*v154 * v155) >> 8) + 1) >> 8;
                      }

                      if (v155 >= 8u)
                      {
                        v156 = PDAM(*v55, HIBYTE(*v55), v155);
                        v157 = PDApluslDA(bswap32(*v34) >> 16, *v31, v156, HIBYTE(v156));
                        *v34 = bswap32(v157) >> 16;
                        *v31 = HIBYTE(v157);
                      }
                    }

                    ++v56;
                    v55 += 2;
                    v154 += v152;
                    ++v34;
                    ++v31;
                    --v153;
                  }

                  while (v153);
                }

                else
                {
                  v296 = v381;
                  v154 = v45;
                  do
                  {
                    v297 = *v56;
                    if (*v56)
                    {
                      if (v45)
                      {
                        v297 = (*v154 * v297 + ((*v154 * v297) >> 8) + 1) >> 8;
                      }

                      if (v297 >= 8u)
                      {
                        v298 = PDM(*v55, v297);
                        v299 = bswap32(*v34);
                        v300 = (((HIWORD(v299) << 15) | HIWORD(v299)) & 0x1F07C1F) + ((v298 | (v298 << 15)) & 0x1F07C1F);
                        *v34 = __rev16((((30 * ((v300 >> 5) & 0x100401)) | (15 * ((v300 >> 5) & 0x100401)) | v300) >> 15) & 0x3E0 | ((30 * ((v300 >> 5) & 0x100401)) | (15 * ((v300 >> 5) & 0x100401)) | v300) & 0x7C1F);
                      }
                    }

                    ++v56;
                    v55 += 2;
                    v154 += v152;
                    ++v34;
                    --v296;
                  }

                  while (v296);
                }

                v45 = &v154[v370];
LABEL_584:
                v34 += v371;
                v31 += v372;
LABEL_585:
                v39 = v373;
                v50 = v381;
                goto LABEL_700;
              case 13:
                v135 = v45;
                while (1)
                {
                  v228 = *v56;
                  if (!*v56)
                  {
                    goto LABEL_421;
                  }

                  if (v45)
                  {
                    v228 = (*v135 * v228 + ((*v135 * v228) >> 8) + 1) >> 8;
                  }

                  if (v228 < 8u)
                  {
                    goto LABEL_421;
                  }

                  v229 = PDAM(*v55, HIBYTE(*v55), v228);
                  if (!(v229 >> 27))
                  {
                    goto LABEL_421;
                  }

                  v230 = HIBYTE(v229);
                  if (v379)
                  {
                    v231 = *v31;
                    if (v231 < 8)
                    {
                      goto LABEL_419;
                    }
                  }

                  else
                  {
                    v231 = 255;
                  }

                  v229 = PDAmultiplyPDA(bswap32(*v34) >> 16, v231, v229, v230);
                  if (!v379)
                  {
                    *v34 = bswap32(v229) >> 16;
                    goto LABEL_421;
                  }

                  v230 = HIBYTE(v229);
LABEL_419:
                  *v34 = bswap32(v229) >> 16;
                  *v31 = v230;
LABEL_421:
                  ++v56;
                  v55 += 2;
                  v135 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  LODWORD(v50) = v50 - 1;
                  if (!v50)
                  {
                    goto LABEL_502;
                  }
                }

              case 14:
                v135 = v45;
                while (1)
                {
                  v140 = *v56;
                  if (!*v56)
                  {
                    goto LABEL_214;
                  }

                  if (v45)
                  {
                    v140 = (*v135 * v140 + ((*v135 * v140) >> 8) + 1) >> 8;
                  }

                  if (v140 < 8u)
                  {
                    goto LABEL_214;
                  }

                  v141 = PDAM(*v55, HIBYTE(*v55), v140);
                  if (!(v141 >> 27))
                  {
                    goto LABEL_214;
                  }

                  v142 = HIBYTE(v141);
                  if (v379)
                  {
                    v143 = *v31;
                    if (v143 < 8)
                    {
                      goto LABEL_212;
                    }
                  }

                  else
                  {
                    v143 = 255;
                  }

                  v141 = PDAscreenPDA(bswap32(*v34) >> 16, v143, v141, v142);
                  if (!v379)
                  {
                    *v34 = bswap32(v141) >> 16;
                    goto LABEL_214;
                  }

                  v142 = HIBYTE(v141);
LABEL_212:
                  *v34 = bswap32(v141) >> 16;
                  *v31 = v142;
LABEL_214:
                  ++v56;
                  v55 += 2;
                  v135 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  LODWORD(v50) = v50 - 1;
                  if (!v50)
                  {
                    goto LABEL_502;
                  }
                }

              case 15:
                v135 = v45;
                while (1)
                {
                  v190 = *v56;
                  if (!*v56)
                  {
                    goto LABEL_315;
                  }

                  if (v45)
                  {
                    v190 = (*v135 * v190 + ((*v135 * v190) >> 8) + 1) >> 8;
                  }

                  if (v190 < 8u)
                  {
                    goto LABEL_315;
                  }

                  v191 = PDAM(*v55, HIBYTE(*v55), v190);
                  if (!(v191 >> 27))
                  {
                    goto LABEL_315;
                  }

                  v192 = HIBYTE(v191);
                  if (v379)
                  {
                    v193 = *v31;
                    if (v193 < 8)
                    {
                      goto LABEL_313;
                    }
                  }

                  else
                  {
                    v193 = 255;
                  }

                  v191 = PDAoverlayPDA(bswap32(*v34) >> 16, v193, v191, v192);
                  if (!v379)
                  {
                    *v34 = bswap32(v191) >> 16;
                    goto LABEL_315;
                  }

                  v192 = HIBYTE(v191);
LABEL_313:
                  *v34 = bswap32(v191) >> 16;
                  *v31 = v192;
LABEL_315:
                  ++v56;
                  v55 += 2;
                  v135 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  LODWORD(v50) = v50 - 1;
                  if (!v50)
                  {
                    goto LABEL_502;
                  }
                }

              case 16:
                v135 = v45;
                while (1)
                {
                  v136 = *v56;
                  if (!*v56)
                  {
                    goto LABEL_198;
                  }

                  if (v45)
                  {
                    v136 = (*v135 * v136 + ((*v135 * v136) >> 8) + 1) >> 8;
                  }

                  if (v136 < 8u)
                  {
                    goto LABEL_198;
                  }

                  v137 = PDAM(*v55, HIBYTE(*v55), v136);
                  if (!(v137 >> 27))
                  {
                    goto LABEL_198;
                  }

                  v138 = HIBYTE(v137);
                  if (v379)
                  {
                    v139 = *v31;
                    if (v139 < 8)
                    {
                      goto LABEL_196;
                    }
                  }

                  else
                  {
                    v139 = 255;
                  }

                  v137 = PDAdarkenPDA(bswap32(*v34) >> 16, v139, v137, v138);
                  if (!v379)
                  {
                    *v34 = bswap32(v137) >> 16;
                    goto LABEL_198;
                  }

                  v138 = HIBYTE(v137);
LABEL_196:
                  *v34 = bswap32(v137) >> 16;
                  *v31 = v138;
LABEL_198:
                  ++v56;
                  v55 += 2;
                  v135 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  LODWORD(v50) = v50 - 1;
                  if (!v50)
                  {
                    goto LABEL_502;
                  }
                }

              case 17:
                v135 = v45;
                while (1)
                {
                  v209 = *v56;
                  if (!*v56)
                  {
                    goto LABEL_365;
                  }

                  if (v45)
                  {
                    v209 = (*v135 * v209 + ((*v135 * v209) >> 8) + 1) >> 8;
                  }

                  if (v209 < 8u)
                  {
                    goto LABEL_365;
                  }

                  v210 = PDAM(*v55, HIBYTE(*v55), v209);
                  if (!(v210 >> 27))
                  {
                    goto LABEL_365;
                  }

                  v211 = HIBYTE(v210);
                  if (v379)
                  {
                    v212 = *v31;
                    if (v212 < 8)
                    {
                      goto LABEL_363;
                    }
                  }

                  else
                  {
                    v212 = 255;
                  }

                  v210 = PDAlightenPDA(bswap32(*v34) >> 16, v212, v210, v211);
                  if (!v379)
                  {
                    *v34 = bswap32(v210) >> 16;
                    goto LABEL_365;
                  }

                  v211 = HIBYTE(v210);
LABEL_363:
                  *v34 = bswap32(v210) >> 16;
                  *v31 = v211;
LABEL_365:
                  ++v56;
                  v55 += 2;
                  v135 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  LODWORD(v50) = v50 - 1;
                  if (!v50)
                  {
                    goto LABEL_502;
                  }
                }

              case 18:
                v135 = v45;
                while (1)
                {
                  v235 = *v56;
                  if (!*v56)
                  {
                    goto LABEL_449;
                  }

                  if (v45)
                  {
                    v235 = (*v135 * v235 + ((*v135 * v235) >> 8) + 1) >> 8;
                  }

                  if (v235 < 8u)
                  {
                    goto LABEL_449;
                  }

                  v236 = PDAM(*v55, HIBYTE(*v55), v235);
                  if (!(v236 >> 27))
                  {
                    goto LABEL_449;
                  }

                  v237 = HIBYTE(v236);
                  if (v379)
                  {
                    v238 = *v31;
                    if (v238 < 8)
                    {
                      goto LABEL_447;
                    }
                  }

                  else
                  {
                    v238 = 255;
                  }

                  v236 = PDAcolordodgePDA(bswap32(*v34) >> 16, v238, v236, v237);
                  if (!v379)
                  {
                    *v34 = bswap32(v236) >> 16;
                    goto LABEL_449;
                  }

                  v237 = HIBYTE(v236);
LABEL_447:
                  *v34 = bswap32(v236) >> 16;
                  *v31 = v237;
LABEL_449:
                  ++v56;
                  v55 += 2;
                  v135 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  LODWORD(v50) = v50 - 1;
                  if (!v50)
                  {
                    goto LABEL_502;
                  }
                }

              case 19:
                v135 = v45;
                while (1)
                {
                  v257 = *v56;
                  if (!*v56)
                  {
                    goto LABEL_501;
                  }

                  if (v45)
                  {
                    v257 = (*v135 * v257 + ((*v135 * v257) >> 8) + 1) >> 8;
                  }

                  if (v257 < 8u)
                  {
                    goto LABEL_501;
                  }

                  v258 = PDAM(*v55, HIBYTE(*v55), v257);
                  if (!(v258 >> 27))
                  {
                    goto LABEL_501;
                  }

                  v259 = HIBYTE(v258);
                  if (v379)
                  {
                    v260 = *v31;
                    if (v260 < 8)
                    {
                      goto LABEL_499;
                    }
                  }

                  else
                  {
                    v260 = 255;
                  }

                  v258 = PDAcolorburnPDA(bswap32(*v34) >> 16, v260, v258, v259);
                  if (!v379)
                  {
                    *v34 = bswap32(v258) >> 16;
                    goto LABEL_501;
                  }

                  v259 = HIBYTE(v258);
LABEL_499:
                  *v34 = bswap32(v258) >> 16;
                  *v31 = v259;
LABEL_501:
                  ++v56;
                  v55 += 2;
                  v135 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  LODWORD(v50) = v50 - 1;
                  if (!v50)
                  {
                    goto LABEL_502;
                  }
                }

              case 20:
                v135 = v45;
                while (1)
                {
                  v213 = *v56;
                  if (!*v56)
                  {
                    goto LABEL_381;
                  }

                  if (v45)
                  {
                    v213 = (*v135 * v213 + ((*v135 * v213) >> 8) + 1) >> 8;
                  }

                  if (v213 < 8u)
                  {
                    goto LABEL_381;
                  }

                  v214 = PDAM(*v55, HIBYTE(*v55), v213);
                  if (!(v214 >> 27))
                  {
                    goto LABEL_381;
                  }

                  v215 = HIBYTE(v214);
                  if (v379)
                  {
                    v216 = *v31;
                    if (v216 < 8)
                    {
                      goto LABEL_379;
                    }
                  }

                  else
                  {
                    v216 = 255;
                  }

                  v214 = PDAsoftlightPDA(bswap32(*v34) >> 16, v216, v214, v215);
                  if (!v379)
                  {
                    *v34 = bswap32(v214) >> 16;
                    goto LABEL_381;
                  }

                  v215 = HIBYTE(v214);
LABEL_379:
                  *v34 = bswap32(v214) >> 16;
                  *v31 = v215;
LABEL_381:
                  ++v56;
                  v55 += 2;
                  v135 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  LODWORD(v50) = v50 - 1;
                  if (!v50)
                  {
                    goto LABEL_502;
                  }
                }

              case 21:
                v135 = v45;
                while (1)
                {
                  v224 = *v56;
                  if (!*v56)
                  {
                    goto LABEL_405;
                  }

                  if (v45)
                  {
                    v224 = (*v135 * v224 + ((*v135 * v224) >> 8) + 1) >> 8;
                  }

                  if (v224 < 8u)
                  {
                    goto LABEL_405;
                  }

                  v225 = PDAM(*v55, HIBYTE(*v55), v224);
                  if (!(v225 >> 27))
                  {
                    goto LABEL_405;
                  }

                  v226 = HIBYTE(v225);
                  if (v379)
                  {
                    v227 = *v31;
                    if (v227 < 8)
                    {
                      goto LABEL_403;
                    }
                  }

                  else
                  {
                    v227 = 255;
                  }

                  v225 = PDAhardlightPDA(bswap32(*v34) >> 16, v227, v225, v226);
                  if (!v379)
                  {
                    *v34 = bswap32(v225) >> 16;
                    goto LABEL_405;
                  }

                  v226 = HIBYTE(v225);
LABEL_403:
                  *v34 = bswap32(v225) >> 16;
                  *v31 = v226;
LABEL_405:
                  ++v56;
                  v55 += 2;
                  v135 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  LODWORD(v50) = v50 - 1;
                  if (!v50)
                  {
LABEL_502:
                    v45 = &v135[v370];
LABEL_648:
                    v34 += v371;
                    v31 += v372;
                    v50 = v381;
                    v268 = v375;
                    v267 = v376;
                    v42 = v377;
                    v43 = v378;
                    goto LABEL_701;
                  }
                }

              case 22:
                v252 = v50;
                v129 = v45;
                while (1)
                {
                  v253 = *v56;
                  if (!*v56)
                  {
                    goto LABEL_485;
                  }

                  if (v45)
                  {
                    v253 = (*v129 * v253 + ((*v129 * v253) >> 8) + 1) >> 8;
                  }

                  if (v253 < 8u)
                  {
                    goto LABEL_485;
                  }

                  v254 = PDAM(*v55, HIBYTE(*v55), v253);
                  if (!(v254 >> 27))
                  {
                    goto LABEL_485;
                  }

                  v255 = HIBYTE(v254);
                  if (v379)
                  {
                    v256 = *v31;
                    if (v256 < 8)
                    {
                      goto LABEL_483;
                    }
                  }

                  else
                  {
                    v256 = 255;
                  }

                  v254 = PDAdifferencePDA(bswap32(*v34) >> 16, v256, v254, v255);
                  if (!v379)
                  {
                    *v34 = bswap32(v254) >> 16;
                    goto LABEL_485;
                  }

                  v255 = HIBYTE(v254);
LABEL_483:
                  *v34 = bswap32(v254) >> 16;
                  *v31 = v255;
LABEL_485:
                  ++v56;
                  v55 += 2;
                  v129 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  if (!--v252)
                  {
                    goto LABEL_647;
                  }
                }

              case 23:
                v261 = v50;
                v129 = v45;
                v262 = v261;
                while (1)
                {
                  v263 = *v56;
                  if (!*v56)
                  {
                    goto LABEL_517;
                  }

                  if (v45)
                  {
                    v263 = (*v129 * v263 + ((*v129 * v263) >> 8) + 1) >> 8;
                  }

                  if (v263 < 8u)
                  {
                    goto LABEL_517;
                  }

                  v264 = PDAM(*v55, HIBYTE(*v55), v263);
                  if (!(v264 >> 27))
                  {
                    goto LABEL_517;
                  }

                  v265 = HIBYTE(v264);
                  if (v379)
                  {
                    v266 = *v31;
                    if (v266 < 8)
                    {
                      goto LABEL_515;
                    }
                  }

                  else
                  {
                    v266 = 255;
                  }

                  v264 = PDAexclusionPDA(bswap32(*v34) >> 16, v266, v264, v265);
                  if (!v379)
                  {
                    *v34 = bswap32(v264) >> 16;
                    goto LABEL_517;
                  }

                  v265 = HIBYTE(v264);
LABEL_515:
                  *v34 = bswap32(v264) >> 16;
                  *v31 = v265;
LABEL_517:
                  ++v56;
                  v55 += 2;
                  v129 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  if (!--v262)
                  {
                    goto LABEL_647;
                  }
                }

              case 24:
                v171 = v50;
                v129 = v45;
                v172 = v171;
                while (1)
                {
                  v173 = *v56;
                  if (!*v56)
                  {
                    goto LABEL_283;
                  }

                  if (v45)
                  {
                    v173 = (*v129 * v173 + ((*v129 * v173) >> 8) + 1) >> 8;
                  }

                  if (v173 < 8u)
                  {
                    goto LABEL_283;
                  }

                  v174 = PDAM(*v55, HIBYTE(*v55), v173);
                  if (!(v174 >> 27))
                  {
                    goto LABEL_283;
                  }

                  v175 = HIBYTE(v174);
                  if (v379)
                  {
                    v176 = *v31;
                    if (v176 < 8)
                    {
                      goto LABEL_281;
                    }
                  }

                  else
                  {
                    v176 = 255;
                  }

                  v174 = PDAhuePDA(bswap32(*v34) >> 16, v176, v174, v175);
                  if (!v379)
                  {
                    *v34 = bswap32(v174) >> 16;
                    goto LABEL_283;
                  }

                  v175 = HIBYTE(v174);
LABEL_281:
                  *v34 = bswap32(v174) >> 16;
                  *v31 = v175;
LABEL_283:
                  ++v56;
                  v55 += 2;
                  v129 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  if (!--v172)
                  {
                    goto LABEL_647;
                  }
                }

              case 25:
                v165 = v50;
                v129 = v45;
                v166 = v165;
                while (1)
                {
                  v167 = *v56;
                  if (!*v56)
                  {
                    goto LABEL_267;
                  }

                  if (v45)
                  {
                    v167 = (*v129 * v167 + ((*v129 * v167) >> 8) + 1) >> 8;
                  }

                  if (v167 < 8u)
                  {
                    goto LABEL_267;
                  }

                  v168 = PDAM(*v55, HIBYTE(*v55), v167);
                  if (!(v168 >> 27))
                  {
                    goto LABEL_267;
                  }

                  v169 = HIBYTE(v168);
                  if (v379)
                  {
                    v170 = *v31;
                    if (v170 < 8)
                    {
                      goto LABEL_265;
                    }
                  }

                  else
                  {
                    v170 = 255;
                  }

                  v168 = PDAsaturationPDA(bswap32(*v34) >> 16, v170, v168, v169);
                  if (!v379)
                  {
                    *v34 = bswap32(v168) >> 16;
                    goto LABEL_267;
                  }

                  v169 = HIBYTE(v168);
LABEL_265:
                  *v34 = bswap32(v168) >> 16;
                  *v31 = v169;
LABEL_267:
                  ++v56;
                  v55 += 2;
                  v129 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  if (!--v166)
                  {
                    goto LABEL_647;
                  }
                }

              case 26:
                v269 = v50;
                v129 = v45;
                v270 = v269;
                while (1)
                {
                  v271 = *v56;
                  if (!*v56)
                  {
                    goto LABEL_534;
                  }

                  if (v45)
                  {
                    v271 = (*v129 * v271 + ((*v129 * v271) >> 8) + 1) >> 8;
                  }

                  if (v271 < 8u)
                  {
                    goto LABEL_534;
                  }

                  v272 = PDAM(*v55, HIBYTE(*v55), v271);
                  if (!(v272 >> 27))
                  {
                    goto LABEL_534;
                  }

                  v273 = HIBYTE(v272);
                  if (v379)
                  {
                    v274 = *v31;
                    if (v274 < 8)
                    {
                      goto LABEL_532;
                    }
                  }

                  else
                  {
                    v274 = 255;
                  }

                  v272 = PDAluminosityPDA(v272, v273, bswap32(*v34) >> 16, v274);
                  if (!v379)
                  {
                    *v34 = bswap32(v272) >> 16;
                    goto LABEL_534;
                  }

                  v273 = HIBYTE(v272);
LABEL_532:
                  *v34 = bswap32(v272) >> 16;
                  *v31 = v273;
LABEL_534:
                  ++v56;
                  v55 += 2;
                  v129 += v45 != 0;
                  ++v34;
                  v31 += v382;
                  if (!--v270)
                  {
                    goto LABEL_647;
                  }
                }

              case 27:
                v128 = v50;
                v129 = v45;
                v130 = v128;
                break;
              default:
                v268 = v375;
                v267 = v376;
                goto LABEL_701;
            }

            while (1)
            {
              v131 = *v56;
              if (!*v56)
              {
                goto LABEL_182;
              }

              if (v45)
              {
                v131 = (*v129 * v131 + ((*v129 * v131) >> 8) + 1) >> 8;
              }

              if (v131 < 8u)
              {
                goto LABEL_182;
              }

              v132 = PDAM(*v55, HIBYTE(*v55), v131);
              if (!(v132 >> 27))
              {
                goto LABEL_182;
              }

              v133 = HIBYTE(v132);
              if (v379)
              {
                v134 = *v31;
                if (v134 < 8)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                v134 = 255;
              }

              v132 = PDAluminosityPDA(bswap32(*v34) >> 16, v134, v132, v133);
              if (!v379)
              {
                *v34 = bswap32(v132) >> 16;
                goto LABEL_182;
              }

              v133 = HIBYTE(v132);
LABEL_180:
              *v34 = bswap32(v132) >> 16;
              *v31 = v133;
LABEL_182:
              ++v56;
              v55 += 2;
              v129 += v45 != 0;
              ++v34;
              v31 += v382;
              if (!--v130)
              {
LABEL_647:
                v45 = &v129[v370];
                goto LABEL_648;
              }
            }
          }

          if (v63 <= 0)
          {
            v67 = -(-v63 & 0xF);
          }

          else
          {
            v67 = *(v369 + 12) & 0xF;
          }

          v68 = -v64 < 0;
          v69 = -v64 & 0xF;
          v70 = v64 & 0xF;
          if (!v68)
          {
            v70 = -v69;
          }

          v71 = v66 + 16 * v70;
          if (v380 >= 0xF8)
          {
            v109 = 0;
            v110 = (v62 + 8);
            do
            {
              if (v56[v109] >= 8u)
              {
                v111 = v110[1];
                if (v111 <= 0.0)
                {
                  v119 = 0;
                }

                else
                {
                  v112 = *(v110 - 2);
                  v113 = *(v110 - 1);
                  v114 = *v110;
                  v115 = ((v111 * 255.0) + 0.5);
                  if (v111 > 1.0)
                  {
                    v115 = 255;
                    v111 = 1.0;
                  }

                  v116 = ((v112 * 255.0) + 0.5);
                  if (v112 < 0.0)
                  {
                    v116 = 0;
                  }

                  if (v112 > v111)
                  {
                    v116 = v115;
                  }

                  v117 = ((v113 * 255.0) + 0.5);
                  if (v113 < 0.0)
                  {
                    v117 = 0;
                  }

                  if (v113 > v111)
                  {
                    v117 = v115;
                  }

                  v118 = ((v114 * 255.0) + 0.5);
                  if (v114 < 0.0)
                  {
                    v118 = 0;
                  }

                  if (v114 > v111)
                  {
                    v118 = v115;
                  }

                  v119 = DITHERRGBA32((v116 << 24) | (v117 << 16) | (v118 << 8) | v115, *(v71 + v67));
                }

                *&v55[2 * v109] = v119;
              }

              v67 = (v67 + 1) & 0xF;
              ++v109;
              v110 += 4;
            }

            while (v381 != v109);
          }

          else
          {
            v72 = 0;
            v73 = (v62 + 8);
            do
            {
              if (v56[v72] >= 8u)
              {
                v74 = v73[1];
                if (v74 <= 0.0)
                {
                  v82 = 0;
                }

                else
                {
                  v75 = *(v73 - 2);
                  v76 = *(v73 - 1);
                  v77 = *v73;
                  v78 = ((v74 * 255.0) + 0.5);
                  if (v74 > 1.0)
                  {
                    v78 = 255;
                    v74 = 1.0;
                  }

                  v79 = ((v75 * 255.0) + 0.5);
                  if (v75 < 0.0)
                  {
                    v79 = 0;
                  }

                  if (v75 > v74)
                  {
                    v79 = v78;
                  }

                  v80 = ((v76 * 255.0) + 0.5);
                  if (v76 < 0.0)
                  {
                    v80 = 0;
                  }

                  if (v76 > v74)
                  {
                    v80 = v78;
                  }

                  v81 = ((v77 * 255.0) + 0.5);
                  if (v77 < 0.0)
                  {
                    v81 = 0;
                  }

                  if (v77 > v74)
                  {
                    v81 = v78;
                  }

                  v82 = DITHERRGBA32M((v79 << 24) | (v80 << 16) | (v81 << 8) | v78, *(v71 + v67), v380);
                }

                *&v55[2 * v72] = v82;
              }

              v67 = (v67 + 1) & 0xF;
              ++v72;
              v73 += 4;
            }

            while (v381 != v72);
          }
        }

        break;
      }

      v39 = v373;
      v50 = v381;
      goto LABEL_153;
    }

    v356 = v33;
    shape_enum_clip_alloc(v18, v19, v378, 1, 1, 1, v35, v36, v381, v374);
    if (v46)
    {
      v355 = v28;
      v47 = 0;
      v48 = ((v14 * v3 + 15) & 0xFFFFFFF0);
      if (!v14)
      {
        v48 = 4 * v3;
      }

      v49 = v361;
      v370 = -v361;
      v45 = (v26 + v48 + 16);
      v50 = v381;
      v42 = v46;
      goto LABEL_704;
    }

LABEL_715:
    if (v357)
    {
      free(v357);
    }
  }
}