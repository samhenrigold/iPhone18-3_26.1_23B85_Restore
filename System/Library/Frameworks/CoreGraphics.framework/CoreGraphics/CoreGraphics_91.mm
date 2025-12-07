uint64_t CMYKf_image_mark_rgb32(uint64_t result, int *a2, int a3, int a4, unsigned int a5, int a6)
{
  if (*(result + 40))
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v132 = *(a2 + 5) - a5;
  }

  else
  {
    v132 = 0;
  }

  v9 = *(a2 + 2);
  v10 = a2[1];
  v131 = *a2;
  v130 = *(a2 + 3) - a5;
  v11 = *(a2 + 17);
  v12 = *(a2 + 18);
  v13 = *(a2 + 9);
  v14 = *(a2 + 11);
  v15 = *(a2 + 7) + v14 * a4;
  v16 = *(result + 32);
  v17 = (v16 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3));
  v18 = 4 * (v8 != 0);
  if (*(result + 176))
  {
    v129 = *(a2 + 13);
    v128 = *(a2 + 15);
    v127 = v12 + 16 * a3 + 8;
    while (1)
    {
      if (((v128 - v15) | (v15 - v129)) < 0)
      {
        v21 = 0;
        v20 = 0;
      }

      else
      {
        v19 = ((v15 & ~(-1 << v13)) >> (v13 - 4)) & 0xF;
        v20 = v19 - 7 >= 9 ? -v11 : v11;
        v21 = weights_21890[v19] & 0xF;
      }

      v22 = v16 + (v15 >> v13) * v11;
      if (v131 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        result = v127;
        v23 = a5;
        while (1)
        {
          v24 = *(result - 8);
          v25 = *result;
          v26 = &v22[v24];
          if (v17 >= &v22[v24])
          {
            v27 = &v22[v24];
          }

          else
          {
            v27 = v17;
          }

          if (v16 > v27)
          {
            v27 = v16;
          }

          v28 = *v27;
          v29 = v25 & 0xF;
          if ((v25 & 0xF) != 0)
          {
            break;
          }

          if (v21)
          {
            v40 = &v26[v20];
            if (v17 < &v26[v20])
            {
              v40 = v17;
            }

            if (v16 > v40)
            {
              v40 = v16;
            }

            v41 = BLEND8_21892[v21];
            v38 = v28 - ((v41 & v28) >> v21);
            v39 = (v41 & *v40) >> v21;
            goto LABEL_46;
          }

LABEL_47:
          v42 = __ROL4__(v28, v10);
          v43 = v42 | v6;
          v44 = *&_blt_float[HIBYTE(v42)];
          v45 = BYTE2(v42);
          v46 = BYTE1(v42);
          if (v9 >= 1.0)
          {
            v47 = *&_blt_float[v45];
            v48 = *&_blt_float[v46];
            v49 = *&_blt_float[v43];
          }

          else
          {
            v44 = v9 * v44;
            v47 = v9 * *&_blt_float[v45];
            v48 = v9 * *&_blt_float[v46];
            v49 = v9 * *&_blt_float[v43];
          }

          if (v44 <= v47)
          {
            v50 = v47;
          }

          else
          {
            v50 = v44;
          }

          if (v48 > v50)
          {
            v50 = v48;
          }

          *v7 = v50 - v44;
          v7[1] = v50 - v47;
          v7[2] = v50 - v48;
          v7[3] = v49 - v50;
          if (v8)
          {
            *v8 = v49;
          }

          result += 16;
          v7 += 4;
          v8 = (v8 + v18);
          if (!--v23)
          {
            goto LABEL_110;
          }
        }

        v30 = &v26[v25 >> 4];
        if (v17 < v30)
        {
          v30 = v17;
        }

        if (v16 > v30)
        {
          v30 = v16;
        }

        v31 = *v30;
        if (v21)
        {
          v32 = &v26[v20];
          if (v17 >= v32)
          {
            v33 = v32;
          }

          else
          {
            v33 = v17;
          }

          if (v16 > v33)
          {
            v33 = v16;
          }

          v34 = *v33;
          v35 = (v32 + (v25 >> 4));
          if (v17 < v35)
          {
            v35 = v17;
          }

          if (v16 > v35)
          {
            v35 = v16;
          }

          v36 = BLEND8_21892[v21];
          v28 = v28 - ((v36 & v28) >> v21) + ((v36 & v34) >> v21);
          v31 = v31 - ((v36 & v31) >> v21) + ((v36 & *v35) >> v21);
        }

        v37 = BLEND8_21892[*result & 0xFLL];
        v38 = v28 - ((v37 & v28) >> v29);
        v39 = (v37 & v31) >> v29;
LABEL_46:
        v28 = v38 + v39;
        goto LABEL_47;
      }

LABEL_110:
      v7 += 4 * v130;
      v15 += v14;
      v8 += v132;
      if (!--a6)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_110;
    }

    v51 = v127;
    result = a5;
    while (1)
    {
      v52 = *(v51 - 1);
      v53 = *v51;
      v54 = &v22[v52];
      if (v17 >= &v22[v52])
      {
        v55 = &v22[v52];
      }

      else
      {
        v55 = v17;
      }

      if (v16 > v55)
      {
        v55 = v16;
      }

      v56 = *v55;
      v57 = v53 & 0xF;
      if ((v53 & 0xF) != 0)
      {
        v58 = &v54[v53 >> 4];
        if (v17 < v58)
        {
          v58 = v17;
        }

        if (v16 > v58)
        {
          v58 = v16;
        }

        v59 = *v58;
        if (v21)
        {
          v60 = &v54[v20];
          if (v17 >= v60)
          {
            v61 = v60;
          }

          else
          {
            v61 = v17;
          }

          if (v16 > v61)
          {
            v61 = v16;
          }

          v62 = *v61;
          v63 = (v60 + (v53 >> 4));
          if (v17 < v63)
          {
            v63 = v17;
          }

          if (v16 > v63)
          {
            v63 = v16;
          }

          v64 = BLEND8_21892[v21];
          v56 = v56 - ((v64 & v56) >> v21) + ((v64 & v62) >> v21);
          v59 = v59 - ((v64 & v59) >> v21) + ((v64 & *v63) >> v21);
        }

        v65 = BLEND8_21892[*v51 & 0xF];
        v66 = v56 - ((v65 & v56) >> v57);
        v67 = (v65 & v59) >> v57;
      }

      else
      {
        if (!v21)
        {
          goto LABEL_90;
        }

        v68 = &v54[v20];
        if (v17 < &v54[v20])
        {
          v68 = v17;
        }

        if (v16 > v68)
        {
          v68 = v16;
        }

        v69 = BLEND8_21892[v21];
        v66 = v56 - ((v69 & v56) >> v21);
        v67 = (v69 & *v68) >> v21;
      }

      v56 = v66 + v67;
LABEL_90:
      v70 = __ROL4__(v56, v10);
      v71 = v70 | v6;
      v72 = *&_blt_float[HIBYTE(v70)];
      v73 = BYTE2(v70);
      v74 = BYTE1(v70);
      if (v9 >= 1.0)
      {
        v75 = *&_blt_float[v73];
        v76 = *&_blt_float[v74];
        v77 = *&_blt_float[v71];
      }

      else
      {
        v72 = v9 * v72;
        v75 = v9 * *&_blt_float[v73];
        v76 = v9 * *&_blt_float[v74];
        v77 = v9 * *&_blt_float[v71];
      }

      if (v72 <= v75)
      {
        v78 = v75;
      }

      else
      {
        v78 = v72;
      }

      if (v76 <= v78)
      {
        v79 = v78;
      }

      else
      {
        v79 = v76;
      }

      v80 = v79 - v72;
      v81 = v79 - v75;
      v82 = v79 - v76;
      v83 = v77 - v79;
      if (!v8)
      {
        if (v77 < 1.0)
        {
          if (v77 > 0.0)
          {
            v86 = 1.0 - v77;
            v87 = v7[1];
            *v7 = v80 + (*v7 * v86);
            v7[1] = v81 + (v87 * v86);
            v88 = v82 + (v7[2] * v86);
            v89 = v83 + (v7[3] * v86);
            v7[2] = v88;
            v7[3] = v89;
          }
        }

        else
        {
          *v7 = v80;
          v7[1] = v81;
          v7[2] = v82;
          v7[3] = v83;
        }

        goto LABEL_109;
      }

      if (v77 >= 1.0)
      {
        *v7 = v80;
        v7[1] = v81;
        v7[2] = v82;
        v7[3] = v83;
LABEL_108:
        *v8 = v77;
        goto LABEL_109;
      }

      if (v77 > 0.0)
      {
        v84 = v7[1];
        *v7 = v80 + (*v7 * (1.0 - v77));
        v7[1] = v81 + (v84 * (1.0 - v77));
        v85 = v7[3];
        v7[2] = v82 + (v7[2] * (1.0 - v77));
        v7[3] = v83 + (v85 * (1.0 - v77));
        v77 = v77 + (*v8 * (1.0 - v77));
        goto LABEL_108;
      }

LABEL_109:
      v51 += 2;
      v7 += 4;
      v8 = (v8 + v18);
      if (!--result)
      {
        goto LABEL_110;
      }
    }
  }

  v90 = v12 + 16 * a3;
  do
  {
    v91 = v16 + (v15 >> v13) * v11;
    if (v131 != 1)
    {
      result = v90;
      v104 = a5;
      if (a5 < 1)
      {
        goto LABEL_157;
      }

      while (1)
      {
        v105 = *result;
        result += 16;
        v106 = &v91[v105];
        if (v17 < &v91[v105])
        {
          v106 = v17;
        }

        if (v16 > v106)
        {
          v106 = v16;
        }

        v107 = __ROL4__(*v106, v10);
        v108 = v107 | v6;
        v109 = *&_blt_float[HIBYTE(v107)];
        v110 = BYTE2(v107);
        v111 = BYTE1(v107);
        if (v9 >= 1.0)
        {
          v112 = *&_blt_float[v110];
          v113 = *&_blt_float[v111];
          v114 = *&_blt_float[v108];
        }

        else
        {
          v109 = v9 * v109;
          v112 = v9 * *&_blt_float[v110];
          v113 = v9 * *&_blt_float[v111];
          v114 = v9 * *&_blt_float[v108];
        }

        if (v109 <= v112)
        {
          v115 = v112;
        }

        else
        {
          v115 = v109;
        }

        if (v113 <= v115)
        {
          v116 = v115;
        }

        else
        {
          v116 = v113;
        }

        v117 = v116 - v109;
        v118 = v116 - v112;
        v119 = v116 - v113;
        v120 = v114 - v116;
        if (!v8)
        {
          if (v114 < 1.0)
          {
            if (v114 > 0.0)
            {
              v123 = 1.0 - v114;
              v124 = v7[1];
              *v7 = v117 + (*v7 * v123);
              v7[1] = v118 + (v124 * v123);
              v125 = v119 + (v7[2] * v123);
              v126 = v120 + (v7[3] * v123);
              v7[2] = v125;
              v7[3] = v126;
            }
          }

          else
          {
            *v7 = v117;
            v7[1] = v118;
            v7[2] = v119;
            v7[3] = v120;
          }

          goto LABEL_156;
        }

        if (v114 >= 1.0)
        {
          break;
        }

        if (v114 > 0.0)
        {
          v121 = v7[1];
          *v7 = v117 + (*v7 * (1.0 - v114));
          v7[1] = v118 + (v121 * (1.0 - v114));
          v122 = v7[3];
          v7[2] = v119 + (v7[2] * (1.0 - v114));
          v7[3] = v120 + (v122 * (1.0 - v114));
          v114 = v114 + (*v8 * (1.0 - v114));
          goto LABEL_155;
        }

LABEL_156:
        v7 += 4;
        v8 = (v8 + v18);
        if (!--v104)
        {
          goto LABEL_157;
        }
      }

      *v7 = v117;
      v7[1] = v118;
      v7[2] = v119;
      v7[3] = v120;
LABEL_155:
      *v8 = v114;
      goto LABEL_156;
    }

    if (a5 >= 1)
    {
      result = v90;
      v92 = a5;
      do
      {
        v93 = *result;
        result += 16;
        v94 = &v91[v93];
        if (v17 < &v91[v93])
        {
          v94 = v17;
        }

        if (v16 > v94)
        {
          v94 = v16;
        }

        v95 = __ROL4__(*v94, v10);
        v96 = v95 | v6;
        v97 = *&_blt_float[HIBYTE(v95)];
        v98 = BYTE2(v95);
        v99 = BYTE1(v95);
        if (v9 >= 1.0)
        {
          v100 = *&_blt_float[v98];
          v101 = *&_blt_float[v99];
          v102 = *&_blt_float[v96];
        }

        else
        {
          v97 = v9 * v97;
          v100 = v9 * *&_blt_float[v98];
          v101 = v9 * *&_blt_float[v99];
          v102 = v9 * *&_blt_float[v96];
        }

        if (v97 <= v100)
        {
          v103 = v100;
        }

        else
        {
          v103 = v97;
        }

        if (v101 > v103)
        {
          v103 = v101;
        }

        *v7 = v103 - v97;
        v7[1] = v103 - v100;
        v7[2] = v103 - v101;
        v7[3] = v102 - v103;
        if (v8)
        {
          *v8 = v102;
        }

        v7 += 4;
        v8 = (v8 + v18);
        --v92;
      }

      while (v92);
    }

LABEL_157:
    v7 += 4 * v130;
    v15 += v14;
    v8 += v132;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t CMYKf_image_mark_RGB32(uint64_t result, int *a2, int a3, int a4, unsigned int a5, int a6)
{
  if (*(result + 40))
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v132 = *(a2 + 5) - a5;
  }

  else
  {
    v132 = 0;
  }

  v9 = *(a2 + 2);
  v10 = a2[1];
  v131 = *a2;
  v130 = *(a2 + 3) - a5;
  v11 = *(a2 + 17);
  v12 = *(a2 + 18);
  v13 = *(a2 + 9);
  v14 = *(a2 + 11);
  v15 = *(a2 + 7) + v14 * a4;
  v16 = *(result + 32);
  v17 = (v16 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3));
  v18 = 4 * (v8 != 0);
  if (*(result + 176))
  {
    v129 = *(a2 + 13);
    v128 = *(a2 + 15);
    v127 = v12 + 16 * a3 + 8;
    while (1)
    {
      if (((v128 - v15) | (v15 - v129)) < 0)
      {
        v21 = 0;
        v20 = 0;
      }

      else
      {
        v19 = ((v15 & ~(-1 << v13)) >> (v13 - 4)) & 0xF;
        v20 = v19 - 7 >= 9 ? -v11 : v11;
        v21 = weights_21890[v19] & 0xF;
      }

      v22 = v16 + (v15 >> v13) * v11;
      if (v131 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        result = v127;
        v23 = a5;
        while (1)
        {
          v24 = *(result - 8);
          v25 = *result;
          v26 = &v22[v24];
          if (v17 >= &v22[v24])
          {
            v27 = &v22[v24];
          }

          else
          {
            v27 = v17;
          }

          if (v16 > v27)
          {
            v27 = v16;
          }

          v28 = bswap32(*v27);
          v29 = v25 & 0xF;
          if ((v25 & 0xF) != 0)
          {
            break;
          }

          if (v21)
          {
            v40 = &v26[v20];
            if (v17 < &v26[v20])
            {
              v40 = v17;
            }

            if (v16 > v40)
            {
              v40 = v16;
            }

            v41 = BLEND8_21892[v21];
            v38 = v28 - ((v41 & v28) >> v21);
            v39 = (bswap32(*v40) & v41) >> v21;
            goto LABEL_46;
          }

LABEL_47:
          v42 = __ROL4__(v28, v10);
          v43 = v42 | v6;
          v44 = *&_blt_float[HIBYTE(v42)];
          v45 = BYTE2(v42);
          v46 = BYTE1(v42);
          if (v9 >= 1.0)
          {
            v47 = *&_blt_float[v45];
            v48 = *&_blt_float[v46];
            v49 = *&_blt_float[v43];
          }

          else
          {
            v44 = v9 * v44;
            v47 = v9 * *&_blt_float[v45];
            v48 = v9 * *&_blt_float[v46];
            v49 = v9 * *&_blt_float[v43];
          }

          if (v44 <= v47)
          {
            v50 = v47;
          }

          else
          {
            v50 = v44;
          }

          if (v48 > v50)
          {
            v50 = v48;
          }

          *v7 = v50 - v44;
          v7[1] = v50 - v47;
          v7[2] = v50 - v48;
          v7[3] = v49 - v50;
          if (v8)
          {
            *v8 = v49;
          }

          result += 16;
          v7 += 4;
          v8 = (v8 + v18);
          if (!--v23)
          {
            goto LABEL_110;
          }
        }

        v30 = &v26[v25 >> 4];
        if (v17 < v30)
        {
          v30 = v17;
        }

        if (v16 > v30)
        {
          v30 = v16;
        }

        v31 = bswap32(*v30);
        if (v21)
        {
          v32 = &v26[v20];
          if (v17 >= v32)
          {
            v33 = v32;
          }

          else
          {
            v33 = v17;
          }

          if (v16 > v33)
          {
            v33 = v16;
          }

          v34 = bswap32(*v33);
          v35 = (v32 + (v25 >> 4));
          if (v17 < v35)
          {
            v35 = v17;
          }

          if (v16 > v35)
          {
            v35 = v16;
          }

          v36 = BLEND8_21892[v21];
          v28 = v28 - ((v36 & v28) >> v21) + ((v36 & v34) >> v21);
          v31 = v31 - ((v36 & v31) >> v21) + ((bswap32(*v35) & v36) >> v21);
        }

        v37 = BLEND8_21892[*result & 0xFLL];
        v38 = v28 - ((v37 & v28) >> v29);
        v39 = (v37 & v31) >> v29;
LABEL_46:
        v28 = v38 + v39;
        goto LABEL_47;
      }

LABEL_110:
      v7 += 4 * v130;
      v15 += v14;
      v8 += v132;
      if (!--a6)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_110;
    }

    v51 = v127;
    result = a5;
    while (1)
    {
      v52 = *(v51 - 1);
      v53 = *v51;
      v54 = &v22[v52];
      if (v17 >= &v22[v52])
      {
        v55 = &v22[v52];
      }

      else
      {
        v55 = v17;
      }

      if (v16 > v55)
      {
        v55 = v16;
      }

      v56 = bswap32(*v55);
      v57 = v53 & 0xF;
      if ((v53 & 0xF) != 0)
      {
        v58 = &v54[v53 >> 4];
        if (v17 < v58)
        {
          v58 = v17;
        }

        if (v16 > v58)
        {
          v58 = v16;
        }

        v59 = bswap32(*v58);
        if (v21)
        {
          v60 = &v54[v20];
          if (v17 >= v60)
          {
            v61 = v60;
          }

          else
          {
            v61 = v17;
          }

          if (v16 > v61)
          {
            v61 = v16;
          }

          v62 = bswap32(*v61);
          v63 = (v60 + (v53 >> 4));
          if (v17 < v63)
          {
            v63 = v17;
          }

          if (v16 > v63)
          {
            v63 = v16;
          }

          v64 = BLEND8_21892[v21];
          v56 = v56 - ((v64 & v56) >> v21) + ((v64 & v62) >> v21);
          v59 = v59 - ((v64 & v59) >> v21) + ((bswap32(*v63) & v64) >> v21);
        }

        v65 = BLEND8_21892[*v51 & 0xF];
        v66 = v56 - ((v65 & v56) >> v57);
        v67 = (v65 & v59) >> v57;
      }

      else
      {
        if (!v21)
        {
          goto LABEL_90;
        }

        v68 = &v54[v20];
        if (v17 < &v54[v20])
        {
          v68 = v17;
        }

        if (v16 > v68)
        {
          v68 = v16;
        }

        v69 = BLEND8_21892[v21];
        v66 = v56 - ((v69 & v56) >> v21);
        v67 = (bswap32(*v68) & v69) >> v21;
      }

      v56 = v66 + v67;
LABEL_90:
      v70 = __ROL4__(v56, v10);
      v71 = v70 | v6;
      v72 = *&_blt_float[HIBYTE(v70)];
      v73 = BYTE2(v70);
      v74 = BYTE1(v70);
      if (v9 >= 1.0)
      {
        v75 = *&_blt_float[v73];
        v76 = *&_blt_float[v74];
        v77 = *&_blt_float[v71];
      }

      else
      {
        v72 = v9 * v72;
        v75 = v9 * *&_blt_float[v73];
        v76 = v9 * *&_blt_float[v74];
        v77 = v9 * *&_blt_float[v71];
      }

      if (v72 <= v75)
      {
        v78 = v75;
      }

      else
      {
        v78 = v72;
      }

      if (v76 <= v78)
      {
        v79 = v78;
      }

      else
      {
        v79 = v76;
      }

      v80 = v79 - v72;
      v81 = v79 - v75;
      v82 = v79 - v76;
      v83 = v77 - v79;
      if (!v8)
      {
        if (v77 < 1.0)
        {
          if (v77 > 0.0)
          {
            v86 = 1.0 - v77;
            v87 = v7[1];
            *v7 = v80 + (*v7 * v86);
            v7[1] = v81 + (v87 * v86);
            v88 = v82 + (v7[2] * v86);
            v89 = v83 + (v7[3] * v86);
            v7[2] = v88;
            v7[3] = v89;
          }
        }

        else
        {
          *v7 = v80;
          v7[1] = v81;
          v7[2] = v82;
          v7[3] = v83;
        }

        goto LABEL_109;
      }

      if (v77 >= 1.0)
      {
        *v7 = v80;
        v7[1] = v81;
        v7[2] = v82;
        v7[3] = v83;
LABEL_108:
        *v8 = v77;
        goto LABEL_109;
      }

      if (v77 > 0.0)
      {
        v84 = v7[1];
        *v7 = v80 + (*v7 * (1.0 - v77));
        v7[1] = v81 + (v84 * (1.0 - v77));
        v85 = v7[3];
        v7[2] = v82 + (v7[2] * (1.0 - v77));
        v7[3] = v83 + (v85 * (1.0 - v77));
        v77 = v77 + (*v8 * (1.0 - v77));
        goto LABEL_108;
      }

LABEL_109:
      v51 += 2;
      v7 += 4;
      v8 = (v8 + v18);
      if (!--result)
      {
        goto LABEL_110;
      }
    }
  }

  v90 = v12 + 16 * a3;
  do
  {
    v91 = v16 + (v15 >> v13) * v11;
    if (v131 != 1)
    {
      result = v90;
      v104 = a5;
      if (a5 < 1)
      {
        goto LABEL_157;
      }

      while (1)
      {
        v105 = *result;
        result += 16;
        v106 = &v91[v105];
        if (v17 < &v91[v105])
        {
          v106 = v17;
        }

        if (v16 > v106)
        {
          v106 = v16;
        }

        v107 = __ROL4__(bswap32(*v106), v10);
        v108 = v107 | v6;
        v109 = *&_blt_float[HIBYTE(v107)];
        v110 = BYTE2(v107);
        v111 = BYTE1(v107);
        if (v9 >= 1.0)
        {
          v112 = *&_blt_float[v110];
          v113 = *&_blt_float[v111];
          v114 = *&_blt_float[v108];
        }

        else
        {
          v109 = v9 * v109;
          v112 = v9 * *&_blt_float[v110];
          v113 = v9 * *&_blt_float[v111];
          v114 = v9 * *&_blt_float[v108];
        }

        if (v109 <= v112)
        {
          v115 = v112;
        }

        else
        {
          v115 = v109;
        }

        if (v113 <= v115)
        {
          v116 = v115;
        }

        else
        {
          v116 = v113;
        }

        v117 = v116 - v109;
        v118 = v116 - v112;
        v119 = v116 - v113;
        v120 = v114 - v116;
        if (!v8)
        {
          if (v114 < 1.0)
          {
            if (v114 > 0.0)
            {
              v123 = 1.0 - v114;
              v124 = v7[1];
              *v7 = v117 + (*v7 * v123);
              v7[1] = v118 + (v124 * v123);
              v125 = v119 + (v7[2] * v123);
              v126 = v120 + (v7[3] * v123);
              v7[2] = v125;
              v7[3] = v126;
            }
          }

          else
          {
            *v7 = v117;
            v7[1] = v118;
            v7[2] = v119;
            v7[3] = v120;
          }

          goto LABEL_156;
        }

        if (v114 >= 1.0)
        {
          break;
        }

        if (v114 > 0.0)
        {
          v121 = v7[1];
          *v7 = v117 + (*v7 * (1.0 - v114));
          v7[1] = v118 + (v121 * (1.0 - v114));
          v122 = v7[3];
          v7[2] = v119 + (v7[2] * (1.0 - v114));
          v7[3] = v120 + (v122 * (1.0 - v114));
          v114 = v114 + (*v8 * (1.0 - v114));
          goto LABEL_155;
        }

LABEL_156:
        v7 += 4;
        v8 = (v8 + v18);
        if (!--v104)
        {
          goto LABEL_157;
        }
      }

      *v7 = v117;
      v7[1] = v118;
      v7[2] = v119;
      v7[3] = v120;
LABEL_155:
      *v8 = v114;
      goto LABEL_156;
    }

    if (a5 >= 1)
    {
      result = v90;
      v92 = a5;
      do
      {
        v93 = *result;
        result += 16;
        v94 = &v91[v93];
        if (v17 < &v91[v93])
        {
          v94 = v17;
        }

        if (v16 > v94)
        {
          v94 = v16;
        }

        v95 = __ROL4__(bswap32(*v94), v10);
        v96 = v95 | v6;
        v97 = *&_blt_float[HIBYTE(v95)];
        v98 = BYTE2(v95);
        v99 = BYTE1(v95);
        if (v9 >= 1.0)
        {
          v100 = *&_blt_float[v98];
          v101 = *&_blt_float[v99];
          v102 = *&_blt_float[v96];
        }

        else
        {
          v97 = v9 * v97;
          v100 = v9 * *&_blt_float[v98];
          v101 = v9 * *&_blt_float[v99];
          v102 = v9 * *&_blt_float[v96];
        }

        if (v97 <= v100)
        {
          v103 = v100;
        }

        else
        {
          v103 = v97;
        }

        if (v101 > v103)
        {
          v103 = v101;
        }

        *v7 = v103 - v97;
        v7[1] = v103 - v100;
        v7[2] = v103 - v101;
        v7[3] = v102 - v103;
        if (v8)
        {
          *v8 = v102;
        }

        v7 += 4;
        v8 = (v8 + v18);
        --v92;
      }

      while (v92);
    }

LABEL_157:
    v7 += 4 * v130;
    v15 += v14;
    v8 += v132;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t CMYKf_image_mark_RGB24(uint64_t a1, int *a2, int a3, int a4, unsigned int a5, int a6)
{
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  if (v7)
  {
    v132 = *(a2 + 5) - a5;
  }

  else
  {
    v132 = 0;
  }

  v8 = *(a2 + 2);
  v9 = *a2;
  v10 = *(a2 + 3) - a5;
  v11 = *(a2 + 17);
  v12 = *(a2 + 18);
  v13 = *(a2 + 9);
  v14 = *(a2 + 11);
  v15 = *(a2 + 7) + v14 * a4;
  v16 = *(a1 + 32);
  v17 = &v16[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  result = *(a1 + 176);
  v19 = 4 * (v7 != 0);
  if (result)
  {
    v131 = *(a2 + 13);
    v130 = *(a2 + 15);
    v129 = v12 + 16 * a3 + 8;
    while (1)
    {
      if (((v130 - v15) | (v15 - v131)) < 0)
      {
        v22 = 0;
        v21 = 0;
      }

      else
      {
        v20 = ((v15 & ~(-1 << v13)) >> (v13 - 4)) & 0xF;
        if (v20 - 7 >= 9)
        {
          v21 = -v11;
        }

        else
        {
          v21 = v11;
        }

        v22 = weights_21890[v20] & 0xF;
      }

      result = v15 >> v13;
      v23 = &v16[(v15 >> v13) * v11];
      if (v9 == 1)
      {
        if (a5 >= 1)
        {
          v24 = v129;
          v25 = a5;
          do
          {
            v26 = *(v24 - 1);
            v27 = *v24;
            v28 = &v23[v26];
            if (v17 >= &v23[v26])
            {
              v29 = &v23[v26];
            }

            else
            {
              v29 = v17;
            }

            if (v16 > v29)
            {
              v29 = v16;
            }

            v30 = (*v29 << 24) | (v29[1] << 16) | (v29[2] << 8);
            if ((v27 & 0xF) != 0)
            {
              v31 = &v28[v27 >> 4];
              if (v17 < v31)
              {
                v31 = v17;
              }

              if (v16 > v31)
              {
                v31 = v16;
              }

              v32 = (*v31 << 24) | (v31[1] << 16) | (v31[2] << 8);
              if (v22)
              {
                if (v17 >= &v28[v21])
                {
                  v33 = &v28[v21];
                }

                else
                {
                  v33 = v17;
                }

                if (v16 > v33)
                {
                  v33 = v16;
                }

                v34 = &v28[v21 + (v27 >> 4)];
                if (v17 < v34)
                {
                  v34 = v17;
                }

                if (v16 > v34)
                {
                  v34 = v16;
                }

                v35 = BLEND8_21892[v22];
                v30 = v30 - ((v35 & v30) >> v22) + ((v35 & ((*v33 << 24) | (v33[1] << 16) | (v33[2] << 8))) >> v22);
                v32 = v32 - ((v35 & v32) >> v22) + ((((*v34 << 24) | (v34[1] << 16) | (v34[2] << 8)) & v35) >> v22);
              }

              v30 = v30 - ((BLEND8_21892[*v24 & 0xF] & v30) >> (*v24 & 0xF)) + ((BLEND8_21892[*v24 & 0xF] & v32) >> (*v24 & 0xF));
            }

            else if (v22)
            {
              v36 = &v28[v21];
              if (v17 < &v28[v21])
              {
                v36 = v17;
              }

              if (v16 > v36)
              {
                v36 = v16;
              }

              v30 = v30 - ((BLEND8_21892[v22] & v30) >> v22) + ((((*v36 << 24) | (v36[1] << 16) | (v36[2] << 8)) & BLEND8_21892[v22]) >> v22);
            }

            v37 = *&_blt_float[HIBYTE(v30)];
            result = BYTE1(v30);
            if (v8 >= 1.0)
            {
              v47 = *&_blt_float[BYTE2(v30)];
              v48 = *&_blt_float[BYTE1(v30)];
              if (v37 <= v47)
              {
                v49 = *&_blt_float[BYTE2(v30)];
              }

              else
              {
                v49 = *&_blt_float[HIBYTE(v30)];
              }

              if (v48 > v49)
              {
                v49 = *&_blt_float[BYTE1(v30)];
              }

              v42 = v49 - v37;
              v43 = v49 - v47;
              v44 = v49 - v48;
              v46 = 1.0;
              v45 = 1.0 - v49;
            }

            else
            {
              v38 = v8 * v37;
              v39 = v8 * *&_blt_float[BYTE2(v30)];
              v40 = v8 * *&_blt_float[BYTE1(v30)];
              if (v38 <= v39)
              {
                v41 = v8 * *&_blt_float[BYTE2(v30)];
              }

              else
              {
                v41 = v38;
              }

              if (v40 > v41)
              {
                v41 = v8 * *&_blt_float[BYTE1(v30)];
              }

              v42 = v41 - v38;
              v43 = v41 - v39;
              v44 = v41 - v40;
              v45 = v8 - v41;
              v46 = v8;
            }

            *v6 = v42;
            v6[1] = v43;
            v6[2] = v44;
            v6[3] = v45;
            if (v7)
            {
              *v7 = v46;
            }

            v24 += 2;
            v6 += 4;
            v7 = (v7 + v19);
            --v25;
          }

          while (v25);
        }

        goto LABEL_116;
      }

      if (a5 >= 1)
      {
        break;
      }

LABEL_116:
      v6 += 4 * v10;
      v15 += v14;
      v7 += v132;
      if (!--a6)
      {
        return result;
      }
    }

    v50 = v129;
    v51 = a5;
    while (1)
    {
      v52 = *(v50 - 1);
      v53 = *v50;
      v54 = &v23[v52];
      if (v17 >= &v23[v52])
      {
        v55 = &v23[v52];
      }

      else
      {
        v55 = v17;
      }

      if (v16 > v55)
      {
        v55 = v16;
      }

      v56 = (*v55 << 24) | (v55[1] << 16) | (v55[2] << 8);
      if ((v53 & 0xF) != 0)
      {
        v57 = &v54[v53 >> 4];
        if (v17 < v57)
        {
          v57 = v17;
        }

        if (v16 > v57)
        {
          v57 = v16;
        }

        v58 = (*v57 << 24) | (v57[1] << 16) | (v57[2] << 8);
        if (v22)
        {
          if (v17 >= &v54[v21])
          {
            v59 = &v54[v21];
          }

          else
          {
            v59 = v17;
          }

          if (v16 > v59)
          {
            v59 = v16;
          }

          v60 = (*v59 << 24) | (v59[1] << 16) | (v59[2] << 8);
          v61 = &v54[v21 + (v53 >> 4)];
          if (v17 < v61)
          {
            v61 = v17;
          }

          if (v16 > v61)
          {
            v61 = v16;
          }

          v62 = BLEND8_21892[v22];
          v56 = v56 - ((v62 & v56) >> v22) + ((v62 & v60) >> v22);
          v58 = v58 - ((v62 & v58) >> v22) + ((((*v61 << 24) | (v61[1] << 16) | (v61[2] << 8)) & v62) >> v22);
        }

        v56 = v56 - ((BLEND8_21892[*v50 & 0xF] & v56) >> (*v50 & 0xF)) + ((BLEND8_21892[*v50 & 0xF] & v58) >> (*v50 & 0xF));
      }

      else if (v22)
      {
        v63 = &v54[v21];
        if (v17 < &v54[v21])
        {
          v63 = v17;
        }

        if (v16 > v63)
        {
          v63 = v16;
        }

        v56 = v56 - ((BLEND8_21892[v22] & v56) >> v22) + ((((*v63 << 24) | (v63[1] << 16) | (v63[2] << 8)) & BLEND8_21892[v22]) >> v22);
      }

      v64 = *&_blt_float[HIBYTE(v56)];
      result = BYTE1(v56);
      if (v8 >= 1.0)
      {
        v75 = *&_blt_float[BYTE2(v56)];
        v76 = *&_blt_float[BYTE1(v56)];
        if (v64 <= v75)
        {
          v77 = *&_blt_float[BYTE2(v56)];
        }

        else
        {
          v77 = *&_blt_float[HIBYTE(v56)];
        }

        if (v76 <= v77)
        {
          v78 = v77;
        }

        else
        {
          v78 = *&_blt_float[BYTE1(v56)];
        }

        v70 = v78 - v64;
        v71 = v78 - v75;
        v72 = v78 - v76;
        v74 = 1.0;
        v73 = 1.0 - v78;
      }

      else
      {
        v65 = v8 * v64;
        v66 = v8 * *&_blt_float[BYTE2(v56)];
        v67 = v8 * *&_blt_float[BYTE1(v56)];
        if (v65 <= v66)
        {
          v68 = v8 * *&_blt_float[BYTE2(v56)];
        }

        else
        {
          v68 = v65;
        }

        if (v67 <= v68)
        {
          v69 = v68;
        }

        else
        {
          v69 = v8 * *&_blt_float[BYTE1(v56)];
        }

        v70 = v69 - v65;
        v71 = v69 - v66;
        v72 = v69 - v67;
        v73 = v8 - v69;
        v74 = v8;
      }

      if (v7)
      {
        if (v74 < 1.0)
        {
          if (v74 > 0.0)
          {
            v79 = v6[1];
            *v6 = v70 + (*v6 * (1.0 - v74));
            v6[1] = v71 + (v79 * (1.0 - v74));
            v80 = v6[3];
            v6[2] = v72 + (v6[2] * (1.0 - v74));
            v6[3] = v73 + (v80 * (1.0 - v74));
            *v7 = v74 + (*v7 * (1.0 - v74));
          }
        }

        else
        {
          *v6 = v70;
          v6[1] = v71;
          v6[2] = v72;
          v6[3] = v73;
          *v7 = v74;
        }

        goto LABEL_115;
      }

      if (v74 >= 1.0)
      {
        break;
      }

      if (v74 > 0.0)
      {
        v81 = 1.0 - v74;
        v82 = v6[1];
        *v6 = v70 + (*v6 * v81);
        v6[1] = v71 + (v82 * v81);
        v72 = v72 + (v6[2] * v81);
        v73 = v73 + (v6[3] * v81);
        goto LABEL_114;
      }

LABEL_115:
      v50 += 2;
      v6 += 4;
      v7 = (v7 + v19);
      if (!--v51)
      {
        goto LABEL_116;
      }
    }

    *v6 = v70;
    v6[1] = v71;
LABEL_114:
    v6[2] = v72;
    v6[3] = v73;
    goto LABEL_115;
  }

  v83 = (v12 + 16 * a3);
  do
  {
    v84 = &v16[(v15 >> v13) * v11];
    if (v9 != 1)
    {
      v105 = v83;
      v106 = a5;
      if (a5 < 1)
      {
        goto LABEL_176;
      }

      while (1)
      {
        v107 = *v105;
        v105 += 2;
        v108 = &v84[v107];
        if (v17 < &v84[v107])
        {
          v108 = v17;
        }

        if (v16 > v108)
        {
          v108 = v16;
        }

        v109 = v108[1];
        result = v108[2];
        v110 = *&_blt_float[*v108];
        if (v8 >= 1.0)
        {
          v121 = *&_blt_float[v109];
          v122 = *&_blt_float[result];
          if (v110 <= v121)
          {
            v123 = *&_blt_float[v109];
          }

          else
          {
            v123 = *&_blt_float[*v108];
          }

          if (v122 <= v123)
          {
            v124 = v123;
          }

          else
          {
            v124 = *&_blt_float[result];
          }

          v116 = v124 - v110;
          v117 = v124 - v121;
          v118 = v124 - v122;
          v120 = 1.0;
          v119 = 1.0 - v124;
        }

        else
        {
          v111 = v8 * v110;
          v112 = v8 * *&_blt_float[v109];
          v113 = v8 * *&_blt_float[result];
          if (v111 <= v112)
          {
            v114 = v8 * *&_blt_float[v109];
          }

          else
          {
            v114 = v111;
          }

          if (v113 <= v114)
          {
            v115 = v114;
          }

          else
          {
            v115 = v8 * *&_blt_float[result];
          }

          v116 = v115 - v111;
          v117 = v115 - v112;
          v118 = v115 - v113;
          v119 = v8 - v115;
          v120 = v8;
        }

        if (v7)
        {
          if (v120 < 1.0)
          {
            if (v120 > 0.0)
            {
              v125 = v6[1];
              *v6 = v116 + (*v6 * (1.0 - v120));
              v6[1] = v117 + (v125 * (1.0 - v120));
              v126 = v6[3];
              v6[2] = v118 + (v6[2] * (1.0 - v120));
              v6[3] = v119 + (v126 * (1.0 - v120));
              *v7 = v120 + (*v7 * (1.0 - v120));
            }
          }

          else
          {
            *v6 = v116;
            v6[1] = v117;
            v6[2] = v118;
            v6[3] = v119;
            *v7 = v120;
          }

          goto LABEL_175;
        }

        if (v120 >= 1.0)
        {
          break;
        }

        if (v120 > 0.0)
        {
          v127 = 1.0 - v120;
          v128 = v6[1];
          *v6 = v116 + (*v6 * v127);
          v6[1] = v117 + (v128 * v127);
          v118 = v118 + (v6[2] * v127);
          v119 = v119 + (v6[3] * v127);
          goto LABEL_174;
        }

LABEL_175:
        v6 += 4;
        v7 = (v7 + v19);
        if (!--v106)
        {
          goto LABEL_176;
        }
      }

      *v6 = v116;
      v6[1] = v117;
LABEL_174:
      v6[2] = v118;
      v6[3] = v119;
      goto LABEL_175;
    }

    if (a5 >= 1)
    {
      v85 = v83;
      v86 = a5;
      do
      {
        v87 = *v85;
        v85 += 2;
        v88 = &v84[v87];
        if (v17 < &v84[v87])
        {
          v88 = v17;
        }

        if (v16 > v88)
        {
          v88 = v16;
        }

        v89 = v88[1];
        result = v88[2];
        v90 = *&_blt_float[*v88];
        if (v8 >= 1.0)
        {
          v101 = *&_blt_float[v89];
          v102 = *&_blt_float[result];
          if (v90 <= v101)
          {
            v103 = *&_blt_float[v89];
          }

          else
          {
            v103 = *&_blt_float[*v88];
          }

          if (v102 <= v103)
          {
            v104 = v103;
          }

          else
          {
            v104 = *&_blt_float[result];
          }

          v96 = v104 - v90;
          v97 = v104 - v101;
          v98 = v104 - v102;
          v100 = 1.0;
          v99 = 1.0 - v104;
        }

        else
        {
          v91 = v8 * v90;
          v92 = v8 * *&_blt_float[v89];
          v93 = v8 * *&_blt_float[result];
          if (v91 <= v92)
          {
            v94 = v8 * *&_blt_float[v89];
          }

          else
          {
            v94 = v91;
          }

          if (v93 <= v94)
          {
            v95 = v94;
          }

          else
          {
            v95 = v8 * *&_blt_float[result];
          }

          v96 = v95 - v91;
          v97 = v95 - v92;
          v98 = v95 - v93;
          v99 = v8 - v95;
          v100 = v8;
        }

        *v6 = v96;
        v6[1] = v97;
        v6[2] = v98;
        v6[3] = v99;
        if (v7)
        {
          *v7 = v100;
        }

        v6 += 4;
        v7 = (v7 + v19);
        --v86;
      }

      while (v86);
    }

LABEL_176:
    v6 += 4 * v10;
    v15 += v14;
    v7 += v132;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t CMYKf_image_mark_W8(uint64_t a1, int *a2, int a3, int a4, unsigned int a5, int a6, double a7, int32x4_t _Q1, float32x2_t a9, double a10, double a11)
{
  v12 = *(a2 + 2);
  v13 = *(a2 + 4);
  if (v13)
  {
    v14 = *(a2 + 5) - a5;
  }

  else
  {
    v14 = 0;
  }

  LODWORD(a7) = a2[2];
  v15 = *a2;
  v16 = *(a2 + 3) - a5;
  v17 = *(a2 + 17);
  v18 = *(a2 + 18);
  v19 = *(a2 + 9);
  v20 = *(a2 + 11);
  v21 = *(a2 + 7) + v20 * a4;
  v22 = *(a1 + 32);
  v23 = &v22[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  v24 = 4 * (v13 != 0);
  __asm { FMOV            V1.2S, #1.0 }

  if (*(a1 + 176))
  {
    v88 = *(a2 + 15);
    v89 = *(a2 + 13);
    a9.i32[0] = 1.0;
    if (*&a7 >= 1.0)
    {
      v29 = 1.0;
    }

    else
    {
      v29 = *(a2 + 2);
    }

    *&a11 = 1.0 - v29;
    v30 = vdupq_lane_s32(*&a11, 0);
    v87 = v18 + 16 * a3 + 8;
    v31 = vcltz_s32(vshl_n_s32(vdup_n_s32(*&a7 < 1.0), 0x1FuLL));
    v32 = vdup_lane_s32(vcgt_f32(a9, *&a7), 0);
    while (1)
    {
      if (((v88 - v21) | (v21 - v89)) < 0)
      {
        v35 = 0;
        v34 = 0;
      }

      else
      {
        v33 = ((v21 & ~(-1 << v19)) >> (v19 - 4)) & 0xF;
        if (v33 - 7 >= 9)
        {
          v34 = -v17;
        }

        else
        {
          v34 = v17;
        }

        v35 = weights_21890[v33] & 0xF;
      }

      result = v21 >> v19;
      v37 = &v22[(v21 >> v19) * v17];
      if (v15 == 1)
      {
        if (a5 >= 1)
        {
          v38 = v87;
          v39 = a5;
          do
          {
            v40 = *(v38 - 1);
            v41 = *v38;
            v42 = &v37[v40];
            if (v23 >= &v37[v40])
            {
              v43 = &v37[v40];
            }

            else
            {
              v43 = v23;
            }

            if (v22 > v43)
            {
              v43 = v22;
            }

            v44 = *v43;
            if ((v41 & 0xF) != 0)
            {
              v45 = &v42[v41 >> 4];
              if (v23 < v45)
              {
                v45 = v23;
              }

              if (v22 > v45)
              {
                v45 = v22;
              }

              v46 = *v45;
              if (v35)
              {
                v47 = &v42[v34];
                if (v23 >= v47)
                {
                  v48 = v47;
                }

                else
                {
                  v48 = v23;
                }

                if (v22 > v48)
                {
                  v48 = v22;
                }

                v49 = *v48;
                v50 = &v47[v41 >> 4];
                if (v23 < v50)
                {
                  v50 = v23;
                }

                if (v22 > v50)
                {
                  v50 = v22;
                }

                v51 = BLEND8_21892[v35];
                v44 = v44 - ((v51 & v44) >> v35) + ((v51 & v49) >> v35);
                v46 = v46 - ((v51 & v46) >> v35) + ((v51 & *v50) >> v35);
              }

              v44 = v44 - ((BLEND8_21892[*v38 & 0xF] & v44) >> (*v38 & 0xF)) + ((BLEND8_21892[*v38 & 0xF] & v46) >> (*v38 & 0xF));
            }

            else if (v35)
            {
              v52 = &v42[v34];
              if (v23 < &v42[v34])
              {
                v52 = v23;
              }

              if (v22 > v52)
              {
                v52 = v22;
              }

              v44 = v44 - ((BLEND8_21892[v35] & v44) >> v35) + ((BLEND8_21892[v35] & *v52) >> v35);
            }

            result = v44;
            v11.i32[0] = _blt_float[v44];
            *v11.f32 = vsub_f32(__PAIR64__(_Q1.u32[1], v11.u32[0]), vdup_lane_s32(*v11.f32, 0));
            *v11.f32 = vbsl_s8(v31, vmul_n_f32(*v11.f32, *&a7), *v11.f32);
            v53 = vzip1q_s32(v11, v11);
            v53.i32[2] = v11.i32[0];
            *v12 = v53;
            if (v13)
            {
              *v13 = v29;
            }

            v38 += 2;
            ++v12;
            v13 = (v13 + v24);
            --v39;
          }

          while (v39);
        }

        goto LABEL_90;
      }

      if (a5 >= 1)
      {
        break;
      }

LABEL_90:
      v12 += v16;
      v21 += v20;
      v13 += v14;
      if (!--a6)
      {
        return result;
      }
    }

    v54 = v87;
    v55 = a5;
    while (1)
    {
      v56 = *(v54 - 1);
      v57 = *v54;
      v58 = &v37[v56];
      if (v23 >= &v37[v56])
      {
        v59 = &v37[v56];
      }

      else
      {
        v59 = v23;
      }

      if (v22 > v59)
      {
        v59 = v22;
      }

      v60 = *v59;
      if ((v57 & 0xF) != 0)
      {
        v61 = &v58[v57 >> 4];
        if (v23 < v61)
        {
          v61 = v23;
        }

        if (v22 > v61)
        {
          v61 = v22;
        }

        v62 = *v61;
        if (v35)
        {
          if (v23 >= &v58[v34])
          {
            v63 = &v58[v34];
          }

          else
          {
            v63 = v23;
          }

          if (v22 > v63)
          {
            v63 = v22;
          }

          v64 = *v63;
          v65 = &v58[v34 + (v57 >> 4)];
          if (v23 < v65)
          {
            v65 = v23;
          }

          if (v22 > v65)
          {
            v65 = v22;
          }

          v66 = BLEND8_21892[v35];
          v60 = v60 - ((v66 & v60) >> v35) + ((v66 & v64) >> v35);
          v62 = v62 - ((v66 & v62) >> v35) + ((v66 & *v65) >> v35);
        }

        v60 = v60 - ((BLEND8_21892[*v54 & 0xF] & v60) >> (*v54 & 0xF)) + ((BLEND8_21892[*v54 & 0xF] & v62) >> (*v54 & 0xF));
      }

      else if (v35)
      {
        v67 = &v58[v34];
        if (v23 < &v58[v34])
        {
          v67 = v23;
        }

        if (v22 > v67)
        {
          v67 = v22;
        }

        v60 = v60 - ((BLEND8_21892[v35] & v60) >> v35) + ((BLEND8_21892[v35] & *v67) >> v35);
      }

      result = v60;
      v11.i32[0] = _blt_float[v60];
      v68 = _Q1;
      v68.i32[0] = v11.i32[0];
      v69 = vsub_f32(*v68.i8, vdup_lane_s32(*v11.f32, 0));
      *v68.i8 = vbsl_s8(v32, vmul_n_f32(v69, *&a7), v69);
      v11 = vzip1q_s32(v68, v68);
      v11.i32[2] = v68.i32[0];
      if (v13)
      {
        if (v29 < 1.0)
        {
          if (v29 > 0.0)
          {
            v11 = vmlaq_f32(v11, v30, *v12);
            *v12 = v11;
            *v13 = v29 + (*v13 * *&a11);
          }
        }

        else
        {
          *v12 = v11;
          *v13 = v29;
        }

        goto LABEL_89;
      }

      if (v29 >= 1.0)
      {
        goto LABEL_88;
      }

      if (v29 > 0.0)
      {
        break;
      }

LABEL_89:
      v54 += 2;
      ++v12;
      v13 = (v13 + v24);
      if (!--v55)
      {
        goto LABEL_90;
      }
    }

    v11 = vmlaq_f32(v11, v30, *v12);
LABEL_88:
    *v12 = v11;
    goto LABEL_89;
  }

  a9.i32[0] = 1.0;
  if (*&a7 >= 1.0)
  {
    v70 = 1.0;
  }

  else
  {
    v70 = *(a2 + 2);
  }

  *&a11 = 1.0 - v70;
  v71 = vdupq_lane_s32(*&a11, 0);
  v72 = (v18 + 16 * a3);
  v73 = vcltz_s32(vshl_n_s32(vdup_n_s32(*&a7 < 1.0), 0x1FuLL));
  v74 = vdup_lane_s32(vcgt_f32(a9, *&a7), 0);
  do
  {
    result = v21 >> v19;
    v75 = &v22[(v21 >> v19) * v17];
    if (v15 != 1)
    {
      v81 = v72;
      v82 = a5;
      if (a5 < 1)
      {
        goto LABEL_122;
      }

      while (1)
      {
        v83 = *v81;
        v81 += 2;
        v84 = &v75[v83];
        if (v23 < &v75[v83])
        {
          v84 = v23;
        }

        if (v22 > v84)
        {
          v84 = v22;
        }

        result = *v84;
        v11.i32[0] = _blt_float[result];
        v85 = _Q1;
        v85.i32[0] = v11.i32[0];
        v86 = vsub_f32(*v85.i8, vdup_lane_s32(*v11.f32, 0));
        *v85.i8 = vbsl_s8(v74, vmul_n_f32(v86, *&a7), v86);
        v11 = vzip1q_s32(v85, v85);
        v11.i32[2] = v85.i32[0];
        if (v13)
        {
          if (v70 < 1.0)
          {
            if (v70 > 0.0)
            {
              v11 = vmlaq_f32(v11, v71, *v12);
              *v12 = v11;
              *v13 = v70 + (*v13 * *&a11);
            }
          }

          else
          {
            *v12 = v11;
            *v13 = v70;
          }

          goto LABEL_121;
        }

        if (v70 >= 1.0)
        {
          goto LABEL_120;
        }

        if (v70 > 0.0)
        {
          break;
        }

LABEL_121:
        ++v12;
        v13 = (v13 + v24);
        if (!--v82)
        {
          goto LABEL_122;
        }
      }

      v11 = vmlaq_f32(v11, v71, *v12);
LABEL_120:
      *v12 = v11;
      goto LABEL_121;
    }

    if (a5 >= 1)
    {
      v76 = v72;
      v77 = a5;
      do
      {
        v78 = *v76;
        v76 += 2;
        v79 = &v75[v78];
        if (v23 < &v75[v78])
        {
          v79 = v23;
        }

        if (v22 > v79)
        {
          v79 = v22;
        }

        result = *v79;
        v11.i32[0] = _blt_float[result];
        *v11.f32 = vsub_f32(__PAIR64__(_Q1.u32[1], v11.u32[0]), vdup_lane_s32(*v11.f32, 0));
        *v11.f32 = vbsl_s8(v73, vmul_n_f32(*v11.f32, *&a7), *v11.f32);
        v80 = vzip1q_s32(v11, v11);
        v80.i32[2] = v11.i32[0];
        *v12 = v80;
        if (v13)
        {
          *v13 = v70;
        }

        ++v12;
        v13 = (v13 + v24);
        --v77;
      }

      while (v77);
    }

LABEL_122:
    v12 += v16;
    v21 += v20;
    v13 += v14;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t CMYKf_shade(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v2;
  v19[482] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v7 = !*(v2 + 12) && !*(v3 + 72) && *(v3 + 4) >= 1.0;
  v8 = *(*(*v1 + 56) + 16 * *v2 + 8 * v7 + 4 * (*(v2 + 6) == 0));
  if (v8 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v2 + 1) < 1 || *(v2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v2, v3, &v12, v17) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*v4 & 0xF000000) != 0x4000000)
  {
    if (v12)
    {
      goto LABEL_22;
    }

    return 0xFFFFFFFFLL;
  }

  if (*(v4 + 16))
  {
    v11 = CMYKf_shade_radial_CMYK;
  }

  else if (*(v4 + 24))
  {
    v11 = CMYKf_shade_conic_CMYK;
  }

  else if (v15 < 2)
  {
    v11 = CMYKf_shade_axial_CMYK;
  }

  else
  {
    v11 = CMYKf_shade_custom_CMYK;
  }

  v12 = v11;
LABEL_22:
  v13 = *v6;
  v14 = v13;
  CMYKf_image_mark(v5, &v12, v8, v10);
  if (v16 && (v16 < &v18 || v19 < v16))
  {
    free(v16);
  }

  return 1;
}

void CMYKf_shade_axial_CMYK(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 280);
  v6 = *(a1 + 272);
  v7 = *(a1 + 296) + ((*(a1 + 288) * (v6[1] * a3)) + (v5 * (v6[1] * a2)));
  v8 = *(a1 + 336);
  v9 = *(a1 + 344);
  v10 = *(a1 + 304);
  v11 = *(a1 + 308);
  LODWORD(v12) = *(a1 + 320);
  v13 = *(a1 + 324);
  v16 = a1 + 144;
  v14 = *(a1 + 144);
  v15 = *(v16 + 8);
  v17 = *(a1 + 384);
  if (*(a1 + 392))
  {
    v18 = *(a1 + 392);
  }

  else
  {
    v18 = v6;
  }

  v20 = *(a1 + 32);
  v19 = *(a1 + 40);
  if (v19)
  {
    v6 = v19;
  }

  if (v5 != 0.0)
  {
    for (i = (v15 + 16); ; i = (i + 20))
    {
      LODWORD(v23) = v12;
      if (v7 >= v10)
      {
        LODWORD(v23) = v13;
        if (v7 <= v11)
        {
          LODWORD(v23) = (v9 * (v7 - v8));
        }
      }

      if ((v23 & 0x80000000) != 0)
      {
        if (!v17)
        {
          v27 = 0;
          goto LABEL_29;
        }

        v25 = *v18;
        v26 = *v17;
      }

      else
      {
        v24 = 4 * (4 * v23);
        v23 = v23;
        if (!v19)
        {
          v23 = 0;
        }

        v25 = v6[v23];
        v26 = *(v20 + v24);
        if (!v19)
        {
          goto LABEL_28;
        }
      }

      v26 = vmulq_n_f32(v26, v25);
LABEL_28:
      i[-1] = v26;
      i->f32[0] = v25;
      v27 = -1;
LABEL_29:
      v7 = v5 + v7;
      *v14 = v27;
      v14 = (v14 + 1);
      if (!--a4)
      {
        return;
      }
    }
  }

  if (v7 >= v10)
  {
    LODWORD(v12) = v13;
    if (v7 <= v11)
    {
      LODWORD(v12) = (v9 * (v7 - v8));
    }
  }

  if ((v12 & 0x80000000) == 0 || v17)
  {
    if ((v12 & 0x80000000) != 0)
    {
      v29 = *v18;
      v30 = *v17;
    }

    else
    {
      v28 = 4 * (4 * v12);
      v12 = v12;
      if (!v19)
      {
        v12 = 0;
      }

      v29 = v6[v12];
      v30 = *(v20 + v28);
      if (!v19)
      {
        goto LABEL_39;
      }
    }

    v30 = vmulq_n_f32(v30, v29);
LABEL_39:
    v31 = a4 + 4;
    do
    {
      *v15 = v30;
      *(v15 + 16) = v29;
      *(v15 + 20) = v30;
      *(v15 + 36) = v29;
      *(v15 + 40) = v30;
      *(v15 + 56) = v29;
      *(v15 + 60) = v30;
      *(v15 + 76) = v29;
      v15 += 80;
      v31 -= 4;
      *v14++ = -1;
    }

    while (v31 > 4);
    return;
  }

  if (a4 >= 4)
  {
    v21 = 4;
  }

  else
  {
    v21 = a4;
  }

  bzero(v14, ((a4 - v21 + 3) & 0xFFFFFFFC) + 4);
}

uint64_t CMYKf_shade_custom_CMYK(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6)
{
  v6 = *(result + 272);
  v7 = *(result + 280);
  *a6.i8 = vadd_f32(*(result + 296), vmla_n_f32(vmul_n_f32(*(result + 288), *(v6 + 4) * a3), v7, *(v6 + 4) * a2));
  v8 = *(result + 304);
  v9 = *(result + 336);
  v10 = *(result + 348);
  v11 = *(result + 344);
  v12 = *(result + 356);
  v13 = *(result + 144);
  v14 = *(result + 384);
  v15 = *(result + 392);
  if (!v15)
  {
    v15 = *(result + 272);
  }

  v16 = *(result + 32);
  v17 = *(result + 40);
  if (v17)
  {
    v18 = *(result + 48);
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v6 = *(result + 40);
  }

  v19 = 4 * *(result + 48);
  v20 = (*(result + 152) + 16);
  do
  {
    v21 = vzip1q_s32(a6, a6);
    if ((vmaxv_u16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgtq_f32(v8, v21))), vmovn_s32(vcgtq_f32(v21, v8)))) & 1) == 0)
    {
      v24 = (v12 * (*&a6.i32[1] - v10));
      v25 = v11 * (*a6.i32 - v9);
      v26 = v16 + 4 * v19 * v24;
      v27 = 16 * v25;
      v28 = v6 + 4 * v18 * v24;
      result = v25;
      if (!v17)
      {
        result = 0;
      }

      v22 = *(v28 + 4 * result);
      v23 = *(v26 + v27);
      if (!v17)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v14)
    {
      v22 = *v15;
      v23 = *v14;
LABEL_15:
      v23 = vmulq_n_f32(v23, v22);
LABEL_16:
      v20[-1] = v23;
      v20->f32[0] = v22;
      v29 = -1;
      goto LABEL_18;
    }

    v29 = 0;
LABEL_18:
    *a6.i8 = vadd_f32(v7, *a6.i8);
    *v13++ = v29;
    v20 = (v20 + 20);
    --a4;
  }

  while (a4);
  return result;
}

void CMYKf_shade_conic_CMYK(float32x2_t *a1, uint64_t a2, uint64_t a3, int a4, int64x2_t a5, __n128 a6, int64x2_t a7)
{
  a5.i64[0] = 0;
  v8 = a1[35];
  a6.n128_u64[0] = vadd_f32(a1[37], vmla_n_f32(vmul_n_f32(a1[36], *(*&a1[34] + 4) * a3), v8, *(*&a1[34] + 4) * a2));
  v9 = a1[42].f32[0];
  v10 = a1[43].f32[0];
  v11 = a1[38].f32[0];
  v13 = a1[18];
  v12 = a1[19];
  v14 = a1[4];
  v15 = a1[5];
  if (v15)
  {
    v16 = a1[5];
  }

  else
  {
    v16 = a1[34];
  }

  v17 = a1[38].f32[1] - v11;
  *a7.i8 = a1[5];
  v32 = vdupq_lane_s64(vceqq_s64(a7, a5).i64[0], 0);
  do
  {
    v33 = a6;
    v18 = v10 * ((v11 + (((atan2f(a6.n128_f32[1], a6.n128_f32[0]) * 0.15915) + 0.5) * v17)) - v9);
    v19 = ceilf(v18);
    LODWORD(v20) = vcvtms_s32_f32(v18);
    v21 = vcvtms_s32_f32(v10 + v18);
    if (v18 < 0.0)
    {
      LODWORD(v20) = v21;
    }

    v22 = ceilf(v18 - v10);
    if (v18 > v10)
    {
      v19 = v22;
    }

    v20 = v20;
    v23 = 16 * v20;
    if (!*&v15)
    {
      v20 = 0;
    }

    v24 = *(*&v14 + v23);
    v25 = *(*&v16 + 4 * v20);
    v26 = vmulq_n_f32(v24, v25);
    v27 = 16 * v19;
    v28 = v19;
    if (!*&v15)
    {
      v28 = 0;
    }

    v29 = *(*&v16 + 4 * v28);
    v30 = vbslq_s8(v32, v24, v26);
    v31 = v18 - floorf(v18);
    *v12 = vmlaq_n_f32(v30, vsubq_f32(vbslq_s8(v32, *(*&v14 + v27), vmulq_n_f32(*(*&v14 + v27), v29)), v30), v31);
    a6.n128_u64[1] = v33.n128_u64[1];
    v12[1].f32[0] = v25 + (v31 * (v29 - v25));
    a6.n128_u64[0] = vadd_f32(v8, v33.n128_u64[0]);
    v12 = (v12 + 20);
    *v13++ = -1;
    --a4;
  }

  while (a4);
}

void CMYKf_shade_radial_CMYK(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a1 + 400);
  v8 = *(a1 + 280);
  v9 = *(a1 + 284);
  v10 = *(a1 + 272);
  v11 = v10[1];
  v12 = v11 * a2;
  v13 = v11 * a3;
  v14 = *(a1 + 296) + ((*(a1 + 288) * v13) + (v8 * v12));
  v15 = *(a1 + 300) + ((v13 * *(a1 + 292)) + (v9 * v12));
  v16 = *(a1 + 336);
  v17 = *(a1 + 344);
  v18 = *(a1 + 304);
  v19 = *(a1 + 308);
  v20 = *(a1 + 324);
  v21 = v7[2];
  v22 = v7[4];
  v23 = v7[5];
  v24 = v7[7];
  v27 = a1 + 144;
  v25 = *(a1 + 144);
  v26 = *(v27 + 8);
  v28 = *(a1 + 384);
  if (*(a1 + 392))
  {
    v29 = *(a1 + 392);
  }

  else
  {
    v29 = v10;
  }

  v30 = *(a1 + 32);
  v31 = *(a1 + 40);
  if (v31)
  {
    v32 = *(a1 + 40);
  }

  else
  {
    v32 = v10;
  }

  if (v21 != 0.0 || v24 != 0.0 || v9 != 0.0)
  {
    v36 = *(a1 + 320);
    v37 = v7[3];
    v38 = v7[8];
    v39 = -v7[6];
    v40 = v19 - v18;
    for (i = (v26 + 16); ; i = (i + 20))
    {
      v42 = v39 + ((v14 + v14) * v21);
      v43 = ((v15 * v15) + (v14 * v14)) - v24;
      if (v23 == 0.0)
      {
        v50 = v43 / v42;
      }

      else
      {
        v44 = ((v23 * -4.0) * v43) + (v42 * v42);
        if (v44 < 0.0)
        {
          goto LABEL_48;
        }

        v45 = sqrtf(v44);
        v46 = v38 * (v42 - v45);
        v47 = v42 + v45;
        v48 = v38 * v47;
        v49 = (v38 * v47) <= v46;
        if ((v38 * v47) <= v46)
        {
          v50 = v38 * v47;
        }

        else
        {
          v50 = v46;
        }

        if (v49)
        {
          v48 = v46;
        }

        if (v48 < 0.0)
        {
          v51 = v48 < v37;
LABEL_31:
          LODWORD(v52) = v36;
          if (v51)
          {
            goto LABEL_48;
          }

LABEL_32:
          if ((v52 & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_48;
        }

        if (v48 <= 1.0)
        {
          v53 = v18 + (v48 * v40);
          goto LABEL_43;
        }

        if ((v20 & 0x80000000) == 0)
        {
          LODWORD(v52) = v20;
          if (v48 <= v22)
          {
LABEL_44:
            v54 = 4 * (4 * v52);
            v52 = v52;
            if (!v31)
            {
              v52 = 0;
            }

            v55 = v32[v52];
            v56 = *(v30 + v54);
            if (!v31)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          }
        }
      }

      if (v50 < 0.0)
      {
        v51 = v50 < v37;
        goto LABEL_31;
      }

      if (v50 > 1.0)
      {
        LODWORD(v52) = v20;
        if (v50 > v22)
        {
          goto LABEL_48;
        }

        goto LABEL_32;
      }

      v53 = v18 + (v50 * v40);
LABEL_43:
      LODWORD(v52) = (v17 * (v53 - v16));
      if ((v52 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

LABEL_48:
      if (!v28)
      {
        v57 = 0;
        goto LABEL_53;
      }

      v55 = *v29;
      v56 = *v28;
LABEL_50:
      v56 = vmulq_n_f32(v56, v55);
LABEL_51:
      i[-1] = v56;
      i->f32[0] = v55;
      v57 = -1;
LABEL_53:
      v14 = v8 + v14;
      v15 = v9 + v15;
      *v25++ = v57;
      if (!--a4)
      {
        return;
      }
    }
  }

  v33 = v15 * v15;
  v34 = -v23;
  if (v33 <= -v23)
  {
    v58 = fabsf(v7[8]);
    v59 = v23 * -4.0;
    v60 = v19 - v18;
    if (v31)
    {
      v61 = v20;
    }

    else
    {
      v61 = 0;
    }

    v62 = a4 + 2;
    v4.i64[0] = *(a1 + 40);
    while (1)
    {
      v63 = v33 + (v14 * v14);
      v64 = v8 + v14;
      v65 = v33 + (v64 * v64);
      if (v63 > v34 && v65 > v34)
      {
        if ((v20 & 0x80000000) != 0)
        {
          if (!v28)
          {
            v83 = 0;
            v81 = 0;
            goto LABEL_106;
          }

          v5.i32[0] = *v29;
          v75 = vmulq_n_f32(*v28, *v29);
        }

        else
        {
          v5.i64[0] = 0;
          v5 = vceqq_s64(v4, v5);
          v74 = vdupq_lane_s64(v5.i64[0], 0);
          *v5.i32 = v32[v61];
          v75 = vbslq_s8(v74, *(v30 + 4 * (4 * v20)), vmulq_n_f32(*(v30 + 4 * (4 * v20)), *v5.i32));
        }

        *v26 = v75;
        *(v26 + 16) = v5.i32[0];
        goto LABEL_104;
      }

      v67 = sqrtf(v59 * v65);
      v68 = v58 * sqrtf(v59 * v63);
      v69 = v58 * v67;
      v70 = (v17 * ((v18 + (v68 * v60)) - v16));
      v71 = (v17 * ((v18 + ((v58 * v67) * v60)) - v16));
      if (v68 <= 1.0 && v69 <= 1.0)
      {
        v76 = 16 * v70;
        v70 = v70;
        if (!v31)
        {
          v70 = 0;
        }

        v77 = v32[v70];
        v78 = *(v30 + v76);
        if (v31)
        {
          v78 = vmulq_n_f32(v78, v77);
          v5.i32[0] = *(v31 + 4 * v71);
          v75 = vmulq_n_f32(*(v30 + 16 * v71), *v5.i32);
        }

        else
        {
          v5.i32[0] = *v10;
          v75 = *(v30 + 16 * v71);
        }

        *v26 = v78;
        *(v26 + 16) = v77;
LABEL_104:
        v81 = -1;
        goto LABEL_105;
      }

      if (v68 <= 1.0)
      {
        if ((v70 & 0x80000000) == 0)
        {
          v73 = (4 * v70);
          if (!v31)
          {
            v70 = 0;
          }

LABEL_84:
          v79 = v32[v70];
          v80 = *(v30 + 4 * v73);
          if (v31)
          {
LABEL_88:
            v80 = vmulq_n_f32(v80, v79);
          }

          *v26 = v80;
          *(v26 + 16) = v79;
          v81 = -1;
          goto LABEL_90;
        }
      }

      else if (v68 <= v22)
      {
        v70 = v61;
        v73 = (4 * v20);
        if ((v20 & 0x80000000) == 0)
        {
          goto LABEL_84;
        }
      }

      if (v28)
      {
        v79 = *v29;
        v80 = *v28;
        goto LABEL_88;
      }

      v81 = 0;
LABEL_90:
      if (v69 <= 1.0)
      {
        if ((v71 & 0x80000000) == 0)
        {
          v82 = (4 * v71);
          if (!v31)
          {
            v71 = 0;
          }

LABEL_97:
          *v5.i32 = v32[v71];
          v75 = *(v30 + 4 * v82);
          if (!v31)
          {
            goto LABEL_105;
          }

          goto LABEL_101;
        }
      }

      else if (v69 <= v22)
      {
        v71 = v61;
        v82 = (4 * v20);
        if ((v20 & 0x80000000) == 0)
        {
          goto LABEL_97;
        }
      }

      if (!v28)
      {
        v83 = 0;
        goto LABEL_106;
      }

      v5.i32[0] = *v29;
      v75 = *v28;
LABEL_101:
      v75 = vmulq_n_f32(v75, *v5.i32);
LABEL_105:
      *(v26 + 20) = v75;
      *(v26 + 36) = v5.i32[0];
      v83 = -1;
LABEL_106:
      v14 = v8 + v64;
      v26 += 40;
      *v25 = v81;
      v25[1] = v83;
      v25 += 2;
      v62 -= 2;
      if (v62 <= 2)
      {
        return;
      }
    }
  }

  if (v28 || (v20 & 0x80000000) == 0)
  {
    if ((v20 & 0x80000000) != 0)
    {
      v85 = *v29;
      v86 = *v28;
    }

    else
    {
      v84 = 4 * (4 * v20);
      if (!v31)
      {
        v20 = 0;
      }

      v85 = v32[v20];
      v86 = *(v30 + v84);
      if (!v31)
      {
        goto LABEL_118;
      }
    }

    v86 = vmulq_n_f32(v86, v85);
LABEL_118:
    v87 = a4 + 4;
    do
    {
      *v26 = v86;
      *(v26 + 16) = v85;
      *(v26 + 20) = v86;
      *(v26 + 36) = v85;
      *(v26 + 40) = v86;
      *(v26 + 56) = v85;
      *(v26 + 60) = v86;
      *(v26 + 76) = v85;
      v26 += 80;
      v87 -= 4;
      *v25 = -1;
      v25 += 4;
    }

    while (v87 > 4);
    return;
  }

  if (a4 >= 4)
  {
    v35 = 4;
  }

  else
  {
    v35 = a4;
  }

  bzero(v25, ((a4 - v35 + 3) & 0xFFFFFFFC) + 4);
}

int8x16_t *CMYKF_pattern(uint64_t a1, int8x16_t *a2, unsigned int a3, int a4, float32x4_t *a5, float a6, double a7, double a8, int32x4_t a9, double a10, double a11)
{
  v14 = *(*a1 + 64);
  a9.i32[0] = *v14;
  LODWORD(a11) = v14[1];
  if (a2 && a3 > 0x13 || (v25 = a9, v26 = a11, v15 = malloc_type_malloc(0x44uLL, 0x1080040E00A32E4uLL), a9 = v25, a11 = v26, (a2 = v15) != 0))
  {
    if (*a9.i32 <= a6)
    {
      v16 = a6;
    }

    else
    {
      v16 = *a9.i32;
    }

    if (*&a11 < a6)
    {
      v16 = *&a11;
    }

    if (a5)
    {
      v17 = a4;
    }

    else
    {
      v17 = 0;
    }

    switch(v17)
    {
      case 1:
        v22 = a9;
        *&v22.i32[1] = v16 * (v16 * (*&a11 - a5->f32[0]));
        v21 = vzip1q_s32(v22, v22);
        v21.i32[2] = a9.i32[0];
        break;
      case 4:
        v21 = vmulq_n_f32(*a5, v16);
        break;
      case 3:
        v18 = v16 * (*&a11 - a5->f32[2]);
        v20 = vdup_lane_s32(*&a11, 0);
        v19 = vmul_n_f32(vsub_f32(v20, *a5->f32), v16);
        v20.i32[0] = v19.i32[1];
        if (v19.f32[0] < v19.f32[1])
        {
          v20.f32[0] = v19.f32[0];
        }

        if (v20.f32[0] < v18)
        {
          v20.f32[0] = v16 * (*&a11 - a5->f32[2]);
        }

        *v21.i8 = vsub_f32(v19, vdup_lane_s32(v20, 0));
        *&v21.i32[2] = v18 - v20.f32[0];
        v21.i32[3] = v20.i32[0];
        break;
      default:
        v21 = vdupq_lane_s32(*a9.i8, 0);
        break;
    }

    *a2 = xmmword_18439CB10;
    a2[1].i32[2] = 0;
    a2[1].i64[0] = 1;
    a2[4].i32[0] = bswap32(LODWORD(v16));
    v23 = a2 + 4;
    a2[3] = vrev32q_s8(v21);
    if (v16 >= *&a11)
    {
      v23 = 0;
    }

    a2[2].i64[0] = a2[3].i64;
    a2[2].i64[1] = v23;
  }

  return a2;
}

uint64_t CMYKF_mark_inner(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v765 = *MEMORY[0x1E69E9840];
  v17 = *(v2 + 96);
  v18 = *(v2 + 48);
  v19 = *(v1 + 16 * *v2 + 8 * (v17 == 0) + 4 * (v18 == 0));
  if (v19 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = v2;
  v22 = *(v2 + 4);
  v23 = v22 - 1;
  if (v22 < 1)
  {
    return 0;
  }

  v24 = *(v2 + 8);
  if (v24 < 1)
  {
    return 0;
  }

  v25 = *(v2 + 136);
  if ((*v2 & 0xFF0000) == 0x50000 || !v25)
  {
    v27 = *v2 & 0xFF00;
    v715 = *(v1 + 16 * *v2 + 8 * (v17 == 0) + 4 * (v18 == 0));
    v713 = v2;
    if (v27 == 1024)
    {
      LODWORD(v756[0]) = *(v2 + 4);
      v762 = v24;
      v16.i32[0] = 1.0;
      if (v17)
      {
        v16.i32[0] = bswap32(*v17);
      }

      v28 = **(v2 + 88);
      v29 = *(v2 + 28) >> 4;
      v30 = *(v2 + 12);
      v31 = *(v2 + 16);
      if (v18)
      {
        v32 = *(v2 + 32) >> 2;
        v33 = v18 + 4 * v32 * v31 + 4 * v30;
        v741 = 1;
      }

      else
      {
        v33 = 0;
        v32 = 0;
        v741 = 0;
      }

      v45 = vrev32q_s8(v28);
      v11.f32[0] = 1.0 - v16.f32[0];
      v46 = *(v2 + 40) + 16 * v31 * v29;
      v47 = v46 + 16 * v30;
      v752 = v45;
      v754 = v16;
      v750 = **(v2 + 88);
      v745 = v11.i64[0];
      v738 = *(v2 + 28) >> 4;
      v740 = v33;
      v743 = v47;
      if (v25)
      {
        shape_enum_clip_alloc(v1, v2, v25, 1, 1, 1, *(v2 + 104), *(v2 + 108), v22, v24);
        v49 = v48;
        v50 = v33;
        v51 = v32;
        if (v48)
        {
          goto LABEL_1260;
        }

        return 1;
      }

      v747 = 0;
      if (v18)
      {
        v57 = v22;
      }

      else
      {
        v57 = 0;
      }

      v51 = v32 - v57;
      v50 = v33;
      v58 = (v46 + 16 * v30);
      v59 = v22;
LABEL_929:
      v47 = v29 - v59;
      switch(v19)
      {
        case 0:
          v518 = v32;
          v519 = v33;
          v520 = v47 + v22;
          v521 = v762;
          v522 = v762 - 1;
          i8 = v58[(v520 * v522) & (v520 >> 63)].i8;
          if (v520 < 0)
          {
            v520 = -v520;
          }

          v524 = v22;
          CGBlt_fillBytes(16 * v22, v762, 0, i8, 16 * v520);
          if (v18)
          {
            v525 = v51 + v524;
            v50 += 4 * ((v525 * v522) & (v525 >> 63));
            if (v525 >= 0)
            {
              v51 += v524;
            }

            else
            {
              v51 = -v525;
            }

            CGBlt_fillBytes(4 * v524, v521, 0, v50, 4 * v51);
          }

          v33 = v519;
          v32 = v518;
          goto LABEL_1256;
        case 1:
          v600 = v22;
          v601 = v47 + v22;
          if (v601 < 0)
          {
            v58 += v601 * (v762 - 1);
            v601 = -v601;
          }

          v602 = *(v713 + 88);
          v603 = v22;
          v604 = v762;
          if (v602)
          {
            CGSFillDRAM64(v58, 16 * v601, 16 * v22, v762, v602, 16, 16, 1, 0, 0);
          }

          else
          {
            CGBlt_fillBytes(16 * v22, v762, 0, v58->i8, 16 * v601);
          }

          v49 = v747;
          if (v18)
          {
            v699 = *(v713 + 96);
            if (!v699)
            {
              v699 = &unk_1845638A4;
            }

            v50 += 4 * (((v51 + v600) * (v604 - 1)) & ((v51 + v600) >> 63));
            if ((v51 + v600) >= 0)
            {
              v51 += v600;
            }

            else
            {
              v51 = -(v51 + v600);
            }

            CGBlt_fillBytes(4 * v603, v604, *v699, v50, 4 * v51);
          }

          v33 = v740;
          v47 = v743;
          goto LABEL_1258;
        case 2:
          v577 = 4 * v741;
          v578 = 16 * v741;
          if (v18)
          {
            v579 = vdupq_lane_s32(*v11.f32, 0);
            do
            {
              v580 = v756[0];
              if (SLODWORD(v756[0]) >= 4)
              {
                v581 = (LODWORD(v756[0]) >> 2) + 1;
                do
                {
                  v582 = bswap32(COERCE_UNSIGNED_INT(v16.f32[0] + (COERCE_FLOAT(bswap32(*v50)) * v11.f32[0])));
                  *v58 = vrev32q_s8(vmlaq_f32(v45, v579, vrev32q_s8(*v58)));
                  *v50 = v582;
                  v583 = bswap32(COERCE_UNSIGNED_INT(v16.f32[0] + (COERCE_FLOAT(bswap32(*(v50 + 4))) * v11.f32[0])));
                  v58[1] = vrev32q_s8(vmlaq_f32(v45, v579, vrev32q_s8(v58[1])));
                  *(v50 + 4) = v583;
                  v584 = bswap32(COERCE_UNSIGNED_INT(v16.f32[0] + (COERCE_FLOAT(bswap32(*(v50 + 8))) * v11.f32[0])));
                  v58[2] = vrev32q_s8(vmlaq_f32(v45, v579, vrev32q_s8(v58[2])));
                  *(v50 + 8) = v584;
                  v585 = bswap32(COERCE_UNSIGNED_INT(v16.f32[0] + (COERCE_FLOAT(bswap32(*(v50 + 12))) * v11.f32[0])));
                  v58[3] = vrev32q_s8(vmlaq_f32(v45, v579, vrev32q_s8(v58[3])));
                  *(v50 + 12) = v585;
                  v58 += 4;
                  --v581;
                  v50 += v578;
                }

                while (v581 > 1);
                v580 = v756[0] & 3;
              }

              if (v580 >= 1)
              {
                v586 = v580 + 1;
                do
                {
                  v587 = bswap32(COERCE_UNSIGNED_INT(v16.f32[0] + (COERCE_FLOAT(bswap32(*v50)) * v11.f32[0])));
                  *v58 = vrev32q_s8(vmlaq_f32(v45, v579, vrev32q_s8(*v58)));
                  ++v58;
                  *v50 = v587;
                  v50 += v577;
                  --v586;
                }

                while (v586 > 1);
              }

              v58 += v47;
              v50 += 4 * v51;
              --v762;
            }

            while (v762);
            goto LABEL_1256;
          }

          v690 = vdupq_lane_s32(*v11.f32, 0);
          v691 = v762;
          do
          {
            if (v22 < 4)
            {
              v695 = v22;
            }

            else
            {
              v692 = (v22 >> 2) + 1;
              do
              {
                v693 = vrev32q_s8(vmlaq_f32(v45, v690, vrev32q_s8(v58[1])));
                *v58 = vrev32q_s8(vmlaq_f32(v45, v690, vrev32q_s8(*v58)));
                v58[1] = v693;
                v694 = vrev32q_s8(vmlaq_f32(v45, v690, vrev32q_s8(v58[3])));
                v58[2] = vrev32q_s8(vmlaq_f32(v45, v690, vrev32q_s8(v58[2])));
                v58[3] = v694;
                v58 += 4;
                --v692;
                v50 += v578;
              }

              while (v692 > 1);
              v695 = v22 & 3;
            }

            if (v695 >= 1)
            {
              v696 = v695 + 1;
              do
              {
                *v58 = vrev32q_s8(vmlaq_f32(v45, v690, vrev32q_s8(*v58)));
                ++v58;
                v50 += v577;
                --v696;
              }

              while (v696 > 1);
            }

            v58 += v47;
            v50 += 4 * v51;
            --v691;
          }

          while (v691);
          goto LABEL_1255;
        case 3:
          v595 = bswap32(v16.u32[0]);
          do
          {
            v596 = v756[0];
            do
            {
              v597 = COERCE_FLOAT(bswap32(*v50));
              if (v597 <= 0.0)
              {
                v58->i64[0] = 0;
                v58->i64[1] = 0;
                *v50 = 0;
              }

              else if (v597 >= 1.0)
              {
                *v58 = v28;
                *v50 = v595;
              }

              else
              {
                *v58 = vrev32q_s8(vmulq_n_f32(v45, v597));
                *v50 = bswap32(COERCE_UNSIGNED_INT(v16.f32[0] * v597));
              }

              ++v58;
              v50 += 4 * v741;
              --v596;
            }

            while (v596);
            v58 += v47;
            v50 += 4 * v51;
            --v762;
          }

          while (v762);
          goto LABEL_1256;
        case 4:
          v555 = bswap32(v16.u32[0]);
          do
          {
            v556 = v756[0];
            do
            {
              v557 = 1.0 - COERCE_FLOAT(bswap32(*v50));
              if (v557 <= 0.0)
              {
                v58->i64[0] = 0;
                v58->i64[1] = 0;
                *v50 = 0;
              }

              else if (v557 >= 1.0)
              {
                *v58 = v28;
                *v50 = v555;
              }

              else
              {
                *v58 = vrev32q_s8(vmulq_n_f32(v45, v557));
                *v50 = bswap32(COERCE_UNSIGNED_INT(v16.f32[0] * v557));
              }

              ++v58;
              v50 += 4 * v741;
              --v556;
            }

            while (v556);
            v58 += v47;
            v50 += 4 * v51;
            --v762;
          }

          while (v762);
          goto LABEL_1256;
        case 5:
          do
          {
            v622 = v756[0];
            do
            {
              v623 = COERCE_FLOAT(bswap32(*v50));
              *v58 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v58), v11.f32[0]), v45, v623));
              ++v58;
              *v50 = bswap32(COERCE_UNSIGNED_INT((v11.f32[0] * v623) + (v16.f32[0] * v623)));
              v50 += 4 * v741;
              --v622;
            }

            while (v622);
            v58 += v47;
            v50 += 4 * v51;
            --v762;
          }

          while (v762);
          goto LABEL_1256;
        case 6:
          v640 = bswap32(v16.u32[0]);
          while (1)
          {
            v641 = v756[0];
            do
            {
              v642 = COERCE_FLOAT(bswap32(*v50));
              v643 = 1.0 - v642;
              v644 = v28;
              v645 = v640;
              if ((1.0 - v642) < 1.0)
              {
                if (v643 <= 0.0)
                {
                  goto LABEL_1138;
                }

                v645 = bswap32(COERCE_UNSIGNED_INT(v642 + (v16.f32[0] * v643)));
                v644 = vrev32q_s8(vmlaq_n_f32(vrev32q_s8(*v58), v45, v643));
              }

              *v58 = v644;
              *v50 = v645;
LABEL_1138:
              ++v58;
              v50 += 4 * v741;
              --v641;
            }

            while (v641);
            v58 += v47;
            v50 += 4 * v51;
            if (!--v762)
            {
              goto LABEL_1256;
            }
          }

        case 7:
          if (v18)
          {
            do
            {
              v598 = v756[0];
              do
              {
                v599 = bswap32(COERCE_UNSIGNED_INT(v16.f32[0] * COERCE_FLOAT(bswap32(*v50))));
                *v58 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v58), v16.f32[0]));
                ++v58;
                *v50 = v599;
                v50 += 4 * v741;
                --v598;
              }

              while (v598);
              v58 += v47;
              v50 += 4 * v51;
              --v762;
            }

            while (v762);
            goto LABEL_1256;
          }

          v697 = v762;
          do
          {
            v698 = v22;
            do
            {
              *v58 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v58), v16.f32[0]));
              ++v58;
              v50 += 4 * v741;
              --v698;
            }

            while (v698);
            v58 += v47;
            v50 += 4 * v51;
            --v697;
          }

          while (v697);
          goto LABEL_1255;
        case 8:
          if (v18)
          {
            do
            {
              v655 = v756[0];
              do
              {
                v656 = bswap32(COERCE_UNSIGNED_INT(v11.f32[0] * COERCE_FLOAT(bswap32(*v50))));
                *v58 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v58), v11.f32[0]));
                ++v58;
                *v50 = v656;
                v50 += 4 * v741;
                --v655;
              }

              while (v655);
              v58 += v47;
              v50 += 4 * v51;
              --v762;
            }

            while (v762);
            goto LABEL_1256;
          }

          v700 = v762;
          do
          {
            v701 = v22;
            do
            {
              *v58 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v58), v11.f32[0]));
              ++v58;
              v50 += 4 * v741;
              --v701;
            }

            while (v701);
            v58 += v47;
            v50 += 4 * v51;
            --v700;
          }

          while (v700);
          goto LABEL_1255;
        case 9:
          do
          {
            v561 = v756[0];
            do
            {
              v562 = COERCE_FLOAT(bswap32(*v50));
              *v58 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v58), v16.f32[0]), v45, 1.0 - v562));
              ++v58;
              *v50 = bswap32(COERCE_UNSIGNED_INT((v16.f32[0] * v562) + (v16.f32[0] * (1.0 - v562))));
              v50 += 4 * v741;
              --v561;
            }

            while (v561);
            v58 += v47;
            v50 += 4 * v51;
            --v762;
          }

          while (v762);
          goto LABEL_1256;
        case 10:
          do
          {
            v653 = v756[0];
            do
            {
              v654 = COERCE_FLOAT(bswap32(*v50));
              *v58 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v58), v11.f32[0]), v45, 1.0 - v654));
              ++v58;
              *v50 = bswap32(COERCE_UNSIGNED_INT((v11.f32[0] * v654) + (v16.f32[0] * (1.0 - v654))));
              v50 += 4 * v741;
              --v653;
            }

            while (v653);
            v58 += v47;
            v50 += 4 * v51;
            --v762;
          }

          while (v762);
          goto LABEL_1256;
        case 11:
          v550 = vsubq_f32(vdupq_lane_s32(*v16.f32, 0), v45);
          v551 = 4 * v741;
          if (!v18)
          {
            v686 = v762;
            do
            {
              v687 = v22;
              do
              {
                *v58 = vrev32q_s8(vaddq_f32(v550, vrev32q_s8(*v58)));
                ++v58;
                v50 += v551;
                --v687;
              }

              while (v687);
              v58 += v47;
              v50 += 4 * v51;
              --v686;
            }

            while (v686);
            goto LABEL_1255;
          }

          do
          {
            v552 = v756[0];
            do
            {
              v10.i32[0] = bswap32(*v50);
              v11.f32[0] = v16.f32[0] + v10.f32[0];
              if ((v16.f32[0] + v10.f32[0]) > 1.0)
              {
                v11.f32[0] = 1.0;
              }

              v553 = vdupq_lane_s32(*v11.f32, 0);
              v554 = bswap32(v11.u32[0]);
              v11 = vrev32q_s8(*v58);
              v10 = vrev32q_s8(vaddq_f32(v550, vsubq_f32(v553, vsubq_f32(vdupq_lane_s32(*v10.f32, 0), v11))));
              *v58++ = v10;
              *v50 = v554;
              v50 += v551;
              --v552;
            }

            while (v552);
            v58 += v47;
            v50 += 4 * v51;
            --v762;
          }

          while (v762);
          goto LABEL_1256;
        case 12:
          v558 = 4 * v741;
          if (v18)
          {
            do
            {
              v559 = v756[0];
              do
              {
                v560 = v16.f32[0] + COERCE_FLOAT(bswap32(*v50));
                if (v560 > 1.0)
                {
                  v560 = 1.0;
                }

                *v58 = vrev32q_s8(vaddq_f32(v45, vrev32q_s8(*v58)));
                ++v58;
                *v50 = bswap32(LODWORD(v560));
                v50 += v558;
                --v559;
              }

              while (v559);
              v58 += v47;
              v50 += 4 * v51;
              --v762;
            }

            while (v762);
          }

          else
          {
            v688 = v762;
            do
            {
              v689 = v22;
              do
              {
                *v58 = vrev32q_s8(vaddq_f32(v45, vrev32q_s8(*v58)));
                ++v58;
                v50 += v558;
                --v689;
              }

              while (v689);
              v58 += v47;
              v50 += 4 * v51;
              --v688;
            }

            while (v688);
LABEL_1255:
            v762 = 0;
          }

          goto LABEL_1256;
        case 13:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v631 = bswap32(v16.u32[0]);
          v632 = vsubq_f32(vdupq_lane_s32(*v16.f32, 0), v45);
          v633 = vdupq_lane_s32(*v11.f32, 0);
          v10.i32[0] = 1.0;
          v634 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v16, v10)), 0);
          while (1)
          {
            v635 = v756[0];
            do
            {
              if (v18)
              {
                v12.i32[0] = bswap32(*v50);
                if (v12.f32[0] <= 0.0)
                {
                  *v58 = v28;
                  *v50 = v631;
                  goto LABEL_1129;
                }
              }

              else
              {
                v12.i32[0] = 1.0;
              }

              v636 = vsubq_f32(vdupq_lane_s32(*v12.f32, 0), vrev32q_s8(*v58));
              v637 = vmulq_f32(v636, v632);
              v639 = vbslq_s8(v634, vmlaq_f32(v637, v633, v636), v637);
              v638 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v12, v10)), 0), vmlaq_n_f32(v639, v632, 1.0 - v12.f32[0]), v639);
              v639.f32[0] = (v12.f32[0] + v16.f32[0]) - (v12.f32[0] * v16.f32[0]);
              v12 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v639.f32, 0), v638));
              *v58 = v12;
              if (v18)
              {
                *v50 = bswap32(v639.u32[0]);
              }

LABEL_1129:
              ++v58;
              v50 += 4 * v741;
              --v635;
            }

            while (v635);
            v58 += v47;
            v50 += 4 * v51;
            if (!--v762)
            {
              goto LABEL_1256;
            }
          }

        case 14:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v545 = bswap32(v16.u32[0]);
          v546 = vsubq_f32(vdupq_lane_s32(*v16.f32, 0), v45);
          __asm { FMOV            V1.4S, #1.0 }

          while (1)
          {
            v548 = v756[0];
            do
            {
              if (v18)
              {
                v11.i32[0] = bswap32(*v50);
                if (v11.f32[0] <= 0.0)
                {
                  *v58 = v28;
                  *v50 = v545;
                  goto LABEL_973;
                }
              }

              else
              {
                v11.i32[0] = 1.0;
              }

              v10.f32[0] = (v16.f32[0] + v11.f32[0]) - (v11.f32[0] * v16.f32[0]);
              v549 = vsubq_f32(vdupq_lane_s32(*v11.f32, 0), vrev32q_s8(*v58));
              v11 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vmlaq_f32(v549, vsubq_f32(_Q1, v549), v546)));
              *v58 = v11;
              if (v18)
              {
                *v50 = bswap32(v10.u32[0]);
              }

LABEL_973:
              ++v58;
              v50 += 4 * v741;
              --v548;
            }

            while (v548);
            v58 += v47;
            v50 += 4 * v51;
            if (!--v762)
            {
              goto LABEL_1256;
            }
          }

        case 15:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v588 = bswap32(v16.u32[0]);
          v589 = v45.f32[1];
          v590 = v45.i64[1];
          while (1)
          {
            v591 = v756[0];
            do
            {
              if (v18)
              {
                v592 = COERCE_FLOAT(bswap32(*v50));
                if (v592 <= 0.0)
                {
                  *v58 = v750;
                  *v50 = v588;
                  goto LABEL_1054;
                }
              }

              else
              {
                v592 = 1.0;
              }

              v763 = 0uLL;
              v764 = 0;
              v593 = vrev32q_s8(*v58);
              PDAoverlayPDA(v763.i32, *v593.i32, *&v593.i32[1], *&v593.i32[2], *&v593.i32[3], v592, *v45.i64, v14, v15, v45.f32[0], v589, *&v590, *(&v590 + 1), v16.f32[0]);
              if (v18)
              {
                v594 = bswap32(v764);
                *v58 = vrev32q_s8(v763);
                *v50 = v594;
              }

              else
              {
                *v58 = vrev32q_s8(v763);
              }

              v45.i64[0] = v752.i64[0];
              v16.i32[0] = v754.i32[0];
LABEL_1054:
              ++v58;
              v50 += 4 * v741;
              --v591;
            }

            while (v591);
            v58 += v47;
            v50 += 4 * v51;
            if (!--v762)
            {
              goto LABEL_1215;
            }
          }

        case 16:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v534 = bswap32(v16.u32[0]);
          v535 = vsubq_f32(vdupq_lane_s32(*v16.f32, 0), v45);
          v536 = vdupq_lane_s32(*v11.f32, 0);
          v10.i32[0] = 1.0;
          v537 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v16, v10)), 0);
          while (1)
          {
            v538 = v756[0];
            do
            {
              if (v18)
              {
                v12.i32[0] = bswap32(*v50);
                if (v12.f32[0] <= 0.0)
                {
                  *v58 = v28;
                  *v50 = v534;
                  goto LABEL_961;
                }
              }

              else
              {
                v12.i32[0] = 1.0;
              }

              v539 = vsubq_f32(vdupq_lane_s32(*v12.f32, 0), vrev32q_s8(*v58));
              v540 = vmulq_n_f32(v539, v16.f32[0]);
              v541 = vmulq_n_f32(v535, v12.f32[0]);
              v542 = vbslq_s8(vcgtq_f32(v540, v541), v541, v540);
              v543 = vbslq_s8(v537, vmlaq_f32(v542, v536, v539), v542);
              v544 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v12, v10)), 0), vmlaq_n_f32(v543, v535, 1.0 - v12.f32[0]), v543);
              v12.f32[0] = (v12.f32[0] + v16.f32[0]) - (v12.f32[0] * v16.f32[0]);
              *v58 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v12.f32, 0), v544));
              if (v18)
              {
                *v50 = bswap32(v12.u32[0]);
              }

LABEL_961:
              ++v58;
              v50 += 4 * v741;
              --v538;
            }

            while (v538);
            v58 += v47;
            v50 += 4 * v51;
            if (!--v762)
            {
              goto LABEL_1256;
            }
          }

        case 17:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v605 = bswap32(v16.u32[0]);
          v606 = vsubq_f32(vdupq_lane_s32(*v16.f32, 0), v45);
          v607 = vdupq_lane_s32(*v11.f32, 0);
          v10.i32[0] = 1.0;
          v608 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v16, v10)), 0);
          while (1)
          {
            v609 = v756[0];
            do
            {
              if (v18)
              {
                v12.i32[0] = bswap32(*v50);
                if (v12.f32[0] <= 0.0)
                {
                  *v58 = v28;
                  *v50 = v605;
                  goto LABEL_1085;
                }
              }

              else
              {
                v12.i32[0] = 1.0;
              }

              v610 = vsubq_f32(vdupq_lane_s32(*v12.f32, 0), vrev32q_s8(*v58));
              v611 = vmulq_n_f32(v610, v16.f32[0]);
              v612 = vmulq_n_f32(v606, v12.f32[0]);
              v613 = vbslq_s8(vcgtq_f32(v612, v611), v612, v611);
              v614 = vbslq_s8(v608, vmlaq_f32(v613, v607, v610), v613);
              v615 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v12, v10)), 0), vmlaq_n_f32(v614, v606, 1.0 - v12.f32[0]), v614);
              v12.f32[0] = (v12.f32[0] + v16.f32[0]) - (v12.f32[0] * v16.f32[0]);
              *v58 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v12.f32, 0), v615));
              if (v18)
              {
                *v50 = bswap32(v12.u32[0]);
              }

LABEL_1085:
              ++v58;
              v50 += 4 * v741;
              --v609;
            }

            while (v609);
            v58 += v47;
            v50 += 4 * v51;
            if (!--v762)
            {
              goto LABEL_1256;
            }
          }

        case 18:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v646 = bswap32(v16.u32[0]);
          v647 = v45.f32[1];
          v648 = v45.i64[1];
          while (1)
          {
            v649 = v756[0];
            do
            {
              if (v18)
              {
                v650 = COERCE_FLOAT(bswap32(*v50));
                if (v650 <= 0.0)
                {
                  *v58 = v750;
                  *v50 = v646;
                  goto LABEL_1152;
                }
              }

              else
              {
                v650 = 1.0;
              }

              v763 = 0uLL;
              v764 = 0;
              v651 = vrev32q_s8(*v58);
              PDAcolordodgePDA(v763.i32, *v651.i32, *&v651.i32[1], *&v651.i32[2], *&v651.i32[3], v650, *v45.i64, v14, v15, v45.f32[0], v647, *&v648, *(&v648 + 1), v16.f32[0]);
              if (v18)
              {
                v652 = bswap32(v764);
                *v58 = vrev32q_s8(v763);
                *v50 = v652;
              }

              else
              {
                *v58 = vrev32q_s8(v763);
              }

              v45.i64[0] = v752.i64[0];
              v16.i32[0] = v754.i32[0];
LABEL_1152:
              ++v58;
              v50 += 4 * v741;
              --v649;
            }

            while (v649);
            v58 += v47;
            v50 += 4 * v51;
            if (!--v762)
            {
              goto LABEL_1215;
            }
          }

        case 19:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v667 = bswap32(v16.u32[0]);
          v668 = v45.f32[1];
          v669 = v45.i64[1];
          while (1)
          {
            v670 = v756[0];
            do
            {
              if (v18)
              {
                v671 = COERCE_FLOAT(bswap32(*v50));
                if (v671 <= 0.0)
                {
                  *v58 = v750;
                  *v50 = v667;
                  goto LABEL_1187;
                }
              }

              else
              {
                v671 = 1.0;
              }

              v763 = 0uLL;
              v764 = 0;
              v672 = vrev32q_s8(*v58);
              PDAcolorburnPDA(v763.i32, *v672.i32, *&v672.i32[1], *&v672.i32[2], *&v672.i32[3], v671, *v45.i64, v14, v15, v45.f32[0], v668, *&v669, *(&v669 + 1), v16.f32[0]);
              if (v18)
              {
                v673 = bswap32(v764);
                *v58 = vrev32q_s8(v763);
                *v50 = v673;
              }

              else
              {
                *v58 = vrev32q_s8(v763);
              }

              v45.i64[0] = v752.i64[0];
              v16.i32[0] = v754.i32[0];
LABEL_1187:
              ++v58;
              v50 += 4 * v741;
              --v670;
            }

            while (v670);
            v58 += v47;
            v50 += 4 * v51;
            if (!--v762)
            {
              goto LABEL_1215;
            }
          }

        case 20:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v616 = bswap32(v16.u32[0]);
          v617 = v45.i32[1];
          v618 = v45.i64[1];
          while (1)
          {
            v619 = v756[0];
            do
            {
              if (v18)
              {
                v12.i32[0] = bswap32(*v50);
                if (v12.f32[0] <= 0.0)
                {
                  *v58 = v750;
                  *v50 = v616;
                  goto LABEL_1099;
                }
              }

              else
              {
                v12.i32[0] = 1.0;
              }

              v763 = 0uLL;
              v764 = 0;
              v620 = vrev32q_s8(*v58);
              PDAsoftlightPDA(&v763, *v620.i8, *&v620.i32[1], *&v620.i32[2], *&v620.i32[3], *v12.i64, *v45.f32, v14, v15, v2, v25, v3, v4, v5, v6, v7, __PAIR64__(v617, v45.u32[0]), *&v618, *(&v618 + 1), v16.f32[0]);
              if (v18)
              {
                v621 = bswap32(v764);
                *v58 = vrev32q_s8(v763);
                *v50 = v621;
              }

              else
              {
                *v58 = vrev32q_s8(v763);
              }

              v45.i64[0] = v752.i64[0];
              v16.i32[0] = v754.i32[0];
LABEL_1099:
              ++v58;
              v50 += 4 * v741;
              --v619;
            }

            while (v619);
            v58 += v47;
            v50 += 4 * v51;
            if (!--v762)
            {
LABEL_1215:
              LODWORD(v19) = v715;
              v29 = v738;
              v33 = v740;
LABEL_1256:
              v47 = v743;
LABEL_1257:
              v49 = v747;
LABEL_1258:
              if (!v49)
              {
                return 1;
              }

              v761 = 0;
              v760 = 0;
LABEL_1260:
              if (!shape_enum_clip_next(v49, &v761, &v760, v756, &v762))
              {
                goto LABEL_1264;
              }

              v747 = v49;
              v58 = (v47 + 16 * v29 * v760 + 16 * v761);
              v59 = SLODWORD(v756[0]);
              if (v18)
              {
                v50 = v33 + 4 * v32 * v760 + 4 * v761;
                v51 = v32 - SLODWORD(v756[0]);
              }

              LODWORD(v22) = v756[0];
              v45 = v752;
              v16 = v754;
              v28 = v750;
              v11.i64[0] = v745;
              goto LABEL_929;
            }
          }

        case 21:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v624 = bswap32(v16.u32[0]);
          v625 = v45.f32[1];
          v626 = v45.i64[1];
          while (1)
          {
            v627 = v756[0];
            do
            {
              if (v18)
              {
                v628 = COERCE_FLOAT(bswap32(*v50));
                if (v628 <= 0.0)
                {
                  *v58 = v750;
                  *v50 = v624;
                  goto LABEL_1117;
                }
              }

              else
              {
                v628 = 1.0;
              }

              v763 = 0uLL;
              v764 = 0;
              v629 = vrev32q_s8(*v58);
              PDAhardlightPDA(v763.i32, *v629.i32, *&v629.i32[1], *&v629.i32[2], *&v629.i32[3], v628, *v45.i64, v14, v15, v45.f32[0], v625, *&v626, *(&v626 + 1), v16.f32[0]);
              if (v18)
              {
                v630 = bswap32(v764);
                *v58 = vrev32q_s8(v763);
                *v50 = v630;
              }

              else
              {
                *v58 = vrev32q_s8(v763);
              }

              v45.i64[0] = v752.i64[0];
              v16.i32[0] = v754.i32[0];
LABEL_1117:
              ++v58;
              v50 += 4 * v741;
              --v627;
            }

            while (v627);
            v58 += v47;
            v50 += 4 * v51;
            if (!--v762)
            {
              goto LABEL_1215;
            }
          }

        case 22:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v657 = bswap32(v16.u32[0]);
          v658 = vsubq_f32(vdupq_lane_s32(*v16.f32, 0), v45);
          while (1)
          {
            v659 = v756[0];
            do
            {
              if (v18)
              {
                v10.i32[0] = bswap32(*v50);
                if (v10.f32[0] <= 0.0)
                {
                  *v58 = v28;
                  *v50 = v657;
                  goto LABEL_1173;
                }
              }

              else
              {
                v10.i32[0] = 1.0;
              }

              v660 = *v58;
              *v660.i32 = (v10.f32[0] + v16.f32[0]) - (v10.f32[0] * v16.f32[0]);
              v661 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vrev32q_s8(*v58));
              v662 = vaddq_f32(v661, v658);
              v663 = vmulq_n_f32(v661, v16.f32[0]);
              v664 = vmulq_n_f32(v658, v10.f32[0]);
              v665 = vsubq_f32(v662, v663);
              v666 = vsubq_f32(v663, v664);
              v10 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v660.i8, 0), vaddq_f32(vsubq_f32(v665, v664), vbslq_s8(vcltzq_f32(v666), vnegq_f32(v666), v666))));
              *v58 = v10;
              if (v18)
              {
                *v50 = bswap32(v660.u32[0]);
              }

LABEL_1173:
              ++v58;
              v50 += 4 * v741;
              --v659;
            }

            while (v659);
            v58 += v47;
            v50 += 4 * v51;
            if (!--v762)
            {
              goto LABEL_1256;
            }
          }

        case 23:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v674 = bswap32(v16.u32[0]);
          v675 = vsubq_f32(vdupq_lane_s32(*v16.f32, 0), v45);
          v676.i64[0] = 0xC0000000C0000000;
          v676.i64[1] = 0xC0000000C0000000;
          while (1)
          {
            v677 = v756[0];
            do
            {
              if (v18)
              {
                v10.i32[0] = bswap32(*v50);
                if (v10.f32[0] <= 0.0)
                {
                  *v58 = v28;
                  *v50 = v674;
                  goto LABEL_1199;
                }
              }

              else
              {
                v10.i32[0] = 1.0;
              }

              v678 = *v58;
              *v678.i32 = (v10.f32[0] + v16.f32[0]) - (v10.f32[0] * v16.f32[0]);
              v679 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vrev32q_s8(*v58));
              v10 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v678.i8, 0), vmlaq_f32(vaddq_f32(v679, v675), v676, vmulq_f32(v675, v679))));
              *v58 = v10;
              if (v18)
              {
                *v50 = bswap32(v678.u32[0]);
              }

LABEL_1199:
              ++v58;
              v50 += 4 * v741;
              --v677;
            }

            while (v677);
            v58 += v47;
            v50 += 4 * v51;
            if (!--v762)
            {
              goto LABEL_1256;
            }
          }

        case 24:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v570 = bswap32(v16.u32[0]);
          v571 = v45.f32[1];
          v572 = v45.i64[1];
          while (1)
          {
            v573 = v756[0];
            do
            {
              if (v18)
              {
                v574 = COERCE_FLOAT(bswap32(*v50));
                if (v574 <= 0.0)
                {
                  *v58 = v750;
                  *v50 = v570;
                  goto LABEL_1029;
                }
              }

              else
              {
                v574 = 1.0;
              }

              v763 = 0uLL;
              v764 = 0;
              v575 = vrev32q_s8(*v58);
              PDAhuePDA(v763.i32, *v575.i32, *&v575.i32[1], *&v575.i32[2], *&v575.i32[3], v574, *v45.i64, v14, v15, v45.f32[0], v571, *&v572, *(&v572 + 1), v16.f32[0]);
              if (v18)
              {
                v576 = bswap32(v764);
                *v58 = vrev32q_s8(v763);
                *v50 = v576;
              }

              else
              {
                *v58 = vrev32q_s8(v763);
              }

              v45.i64[0] = v752.i64[0];
              v16.i32[0] = v754.i32[0];
LABEL_1029:
              ++v58;
              v50 += 4 * v741;
              --v573;
            }

            while (v573);
            v58 += v47;
            v50 += 4 * v51;
            if (!--v762)
            {
              goto LABEL_1215;
            }
          }

        case 25:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v563 = bswap32(v16.u32[0]);
          v564 = v45.f32[1];
          v565 = v45.i64[1];
          while (1)
          {
            v566 = v756[0];
            do
            {
              if (v18)
              {
                v567 = COERCE_FLOAT(bswap32(*v50));
                if (v567 <= 0.0)
                {
                  *v58 = v750;
                  *v50 = v563;
                  goto LABEL_1015;
                }
              }

              else
              {
                v567 = 1.0;
              }

              v763 = 0uLL;
              v764 = 0;
              v568 = vrev32q_s8(*v58);
              PDAsaturationPDA(v763.i32, *v568.i32, *&v568.i32[1], *&v568.i32[2], *&v568.i32[3], v567, *v45.i64, v14, v15, v45.f32[0], v564, *&v565, *(&v565 + 1), v16.f32[0]);
              if (v18)
              {
                v569 = bswap32(v764);
                *v58 = vrev32q_s8(v763);
                *v50 = v569;
              }

              else
              {
                *v58 = vrev32q_s8(v763);
              }

              v45.i64[0] = v752.i64[0];
              v16.i32[0] = v754.i32[0];
LABEL_1015:
              ++v58;
              v50 += 4 * v741;
              --v566;
            }

            while (v566);
            v58 += v47;
            v50 += 4 * v51;
            if (!--v762)
            {
              goto LABEL_1215;
            }
          }

        case 26:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v680 = bswap32(v16.u32[0]);
          v681 = v45.f32[1];
          v682 = v45.i64[1];
          while (1)
          {
            v683 = v756[0];
            do
            {
              if (v18)
              {
                v684 = COERCE_FLOAT(bswap32(*v50));
                if (v684 <= 0.0)
                {
                  *v58 = v750;
                  *v50 = v680;
                  goto LABEL_1213;
                }
              }

              else
              {
                v684 = 1.0;
              }

              v763 = 0uLL;
              v764 = 0;
              v711 = vrev32q_s8(*v58);
              PDAluminosityPDA(v763.i32, v45.f32[0], v681, *&v682, *(&v682 + 1), v16.f32[0], *v45.i64, v14, v15, *v711.i32, *&v711.i32[1], *&v711.i32[2], *&v711.i32[3], v684);
              if (v18)
              {
                v685 = bswap32(v764);
                *v58 = vrev32q_s8(v763);
                *v50 = v685;
              }

              else
              {
                *v58 = vrev32q_s8(v763);
              }

              v45.i64[0] = v752.i64[0];
              v16.i32[0] = v754.i32[0];
LABEL_1213:
              ++v58;
              v50 += 4 * v741;
              --v683;
            }

            while (v683);
            v58 += v47;
            v50 += 4 * v51;
            if (!--v762)
            {
              goto LABEL_1215;
            }
          }

        case 27:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v526 = bswap32(v16.u32[0]);
          v527 = v45.f32[1];
          v528 = v45.i64[1];
          break;
        default:
          goto LABEL_1257;
      }

LABEL_940:
      v529 = v756[0];
      while (v18)
      {
        v530 = COERCE_FLOAT(bswap32(*v50));
        if (v530 > 0.0)
        {
          goto LABEL_945;
        }

        *v58 = v750;
        *v50 = v526;
LABEL_949:
        ++v58;
        v50 += 4 * v741;
        if (!--v529)
        {
          v58 += v47;
          v50 += 4 * v51;
          if (!--v762)
          {
            goto LABEL_1215;
          }

          goto LABEL_940;
        }
      }

      v530 = 1.0;
LABEL_945:
      v763 = 0uLL;
      v764 = 0;
      v531 = vrev32q_s8(*v58);
      PDAluminosityPDA(v763.i32, *v531.i32, *&v531.i32[1], *&v531.i32[2], *&v531.i32[3], v530, *v45.i64, v14, v15, v45.f32[0], v527, *&v528, *(&v528 + 1), v16.f32[0]);
      v532 = vrev32q_s8(v763);
      if (v18)
      {
        v533 = bswap32(v764);
        *v58 = v532;
        *v50 = v533;
      }

      else
      {
        *v58 = v532;
      }

      v45.i64[0] = v752.i64[0];
      v16.i32[0] = v754.i32[0];
      goto LABEL_949;
    }

    LODWORD(v756[0]) = *(v2 + 4);
    v762 = v24;
    v34 = *(v2 + 12);
    v35 = *(v2 + 16);
    v36 = *(v2 + 28) >> 4;
    v37 = v22;
    if (v18)
    {
      v728 = *(v2 + 32) >> 2;
      v729 = v18 + 4 * v728 * v35 + 4 * v34;
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      v728 = 0;
      v729 = 0;
      v38 = 0;
    }

    v52 = *(v2 + 88);
    v727 = *(v2 + 40) + 16 * v36 * v35 + 16 * v34;
    v53 = *(v2 + 56);
    v54 = *(v2 + 60);
    v744 = *(v2 + 76) >> 4;
    if (v27 != 256)
    {
      v732 = *(v2 + 64);
      v731 = *(v2 + 68);
      if (v17)
      {
        v55 = *(v2 + 80) >> 2;
        v56 = 1;
      }

      else
      {
        v55 = 0;
        v56 = 0;
      }

      v82 = &v52[v744 * v731];
      v38 &= 1u;
      if (v25)
      {
        v716 = *(v2 + 60);
        v717 = *(v2 + 56);
        v753 = v56;
        v755 = v38;
        LODWORD(v3) = 1;
        i64 = *(v2 + 88);
        v83 = i64;
        goto LABEL_53;
      }

      v87 = v37;
      v88 = v37;
      v751 = v728 - v38 * v37;
      if (v82)
      {
        v91 = v54 % v731;
        v716 = v54 % v731;
        v734 = *(v2 + 88);
        v92 = &v52[v744 * v91];
        v93 = v53 % v732;
        v52 = &v92[v93];
        v89 = &v92[v732];
        v717 = v93;
        i64 = v52;
        if (v56)
        {
          v733 = 0;
          v94 = &v17[v55 * v91 + v93];
          v730 = 1;
          v85 = v94;
          goto LABEL_63;
        }

        v733 = 0;
        v730 = 1;
LABEL_62:
        v94 = v17;
        v85 = v17;
LABEL_63:
        v86 = v729;
        v95 = v727;
        goto LABEL_66;
      }

      v716 = *(v2 + 60);
      v717 = *(v2 + 56);
      v730 = 1;
      v89 = *(v2 + 88);
      i64 = v89;
      v90 = *(v2 + 76) >> 4;
LABEL_61:
      v733 = 0;
      v734 = v52;
      v744 = v90 - v88;
      v55 -= v56 * v87;
      goto LABEL_62;
    }

    if (v17)
    {
      v55 = *(v2 + 80) >> 2;
      v17 += v55 * v54 + v53;
      v56 = 0xFFFFFFFFLL;
    }

    else
    {
      v55 = 0;
      v56 = 0;
    }

    v52 += v744 * v54 + v53;
    if (v744 == v36)
    {
      v79 = (v727 - v52) >> 4;
      if (v79 >= 1)
      {
        if (v79 <= v37)
        {
          v727 += 16 * v23;
          v52 += v23;
          v729 += 4 * (v38 & v23);
          v3 = 0xFFFFFFFFLL;
          v744 = *(v2 + 28) >> 4;
          v17 += (v56 & v23);
          goto LABEL_48;
        }

        v80 = v24 - 1;
        v81 = &v52[v36 * v80];
        if (v727 <= &v81[v37 - 1])
        {
          v727 += 16 * v36 * v80;
          v36 = -v36;
          v96 = v729 + 4 * v728 * v80;
          v728 = -v728;
          v729 = v96;
          v17 += v55 * v80;
          v38 &= 1u;
          v55 = -v55;
          v56 &= 1u;
          v3 = 1;
          v52 = v81;
          v744 = v36;
          goto LABEL_48;
        }
      }
    }

    v38 &= 1u;
    v56 &= 1u;
    v3 = 1;
LABEL_48:
    v716 = *(v2 + 60);
    v717 = *(v2 + 56);
    if (v25)
    {
      v753 = v56;
      v755 = v38;
      i64 = 0;
      v82 = 0;
      v83 = -1;
      v732 = v744;
      v731 = v55;
LABEL_53:
      v730 = v3;
      v735 = v36;
      shape_enum_clip_alloc(v1, v2, v25, v3, v36, 1, *(v2 + 104), *(v2 + 108), v37, v24);
      v49 = v84;
      v739 = v17;
      v85 = v17;
      v86 = v729;
      v751 = v728;
      if (!v84)
      {
        return 1;
      }

      while (2)
      {
        if (!shape_enum_clip_next(v49, &v761, &v760, v756, &v762))
        {
LABEL_1264:
          v78 = v49;
LABEL_1265:
          free(v78);
          return 1;
        }

        v733 = v49;
        v734 = v52;
        if (v82)
        {
          v36 = v735;
          v95 = (v727 + 16 * v735 * v760 + 16 * v761);
          v492 = (v760 + *(v21 + 60)) % v731;
          v88 = SLODWORD(v756[0]);
          v493 = (v761 + *(v21 + 56)) % v732;
          v494 = &v52[v744 * v492];
          v52 = &v494[v493];
          v89 = &v494[v732];
          v38 = v755;
          if (v755)
          {
            v86 = (v729 + 4 * v728 * v760 + 4 * v761);
          }

          v495 = v751;
          if (v755)
          {
            v495 = v728 - SLODWORD(v756[0]);
          }

          v751 = v495;
          v56 = v753;
          v94 = v739;
          if (v753)
          {
            v94 = &v17[v55 * v492 + v493];
            v85 = v94;
          }

          v87 = LODWORD(v756[0]);
          i64 = v494[v493].i64;
          v716 = (v760 + *(v21 + 60)) % v731;
          v717 = (v761 + *(v21 + 56)) % v732;
        }

        else
        {
          v496 = v761 * v730;
          v87 = LODWORD(v756[0]);
          v497 = LODWORD(v756[0]) * v730;
          v36 = v735;
          v95 = (v727 + 16 * v735 * v760 + 16 * v761 * v730);
          v88 = LODWORD(v756[0]) * v730;
          v52 += v760 * v732 + v761 * v730;
          v744 = v732 - LODWORD(v756[0]) * v730;
          v38 = v755;
          if (v755)
          {
            v86 = (v729 + 4 * v728 * v760 + 4 * v496);
          }

          v498 = v751;
          if (v755)
          {
            v498 = v728 - v497;
          }

          v751 = v498;
          v499 = &v17[v760 * v731 + v496];
          v500 = v731 - v497;
          v56 = v753;
          if (v753)
          {
            v85 = v499;
            v55 = v500;
          }

          v89 = v83;
          v94 = v739;
        }

LABEL_66:
        v755 = v38;
        v753 = v56;
        v735 = v36;
        v748 = v36 - v88;
        v736 = v55;
        v737 = v82;
        switch(v19)
        {
          case 0:
            v739 = v94;
            v712 = v89;
            v97 = v87;
            v98 = v748 - v87;
            v99 = v95[-v87 + 1].i64;
            if (v730 >= 0)
            {
              v99 = v95;
              v98 = v748 + v87;
            }

            v100 = v762;
            v101 = v762 - 1;
            v102 = (v99 + 16 * ((v98 * v101) & (v98 >> 63)));
            if (v98 < 0)
            {
              v98 = -v98;
            }

            v103 = v87;
            CGBlt_fillBytes(16 * v87, v762, 0, v102, 16 * v98);
            if (v38)
            {
              if (v730 < 0)
              {
                v104 = v751 - v97;
                v86 = &v86[-4 * v103 + 4];
              }

              else
              {
                v104 = v751 + v97;
              }

              v86 += 4 * ((v104 * v101) & (v104 >> 63));
              if (v104 < 0)
              {
                v104 = -v104;
              }

              v751 = v104;
              CGBlt_fillBytes(4 * v103, v100, 0, v86, 4 * v104);
            }

            goto LABEL_845;
          case 1:
            v258 = *(v21 + 1);
            v742 = v87;
            if (v258 == 2)
            {
              if (v87 >= 2 && (16 * v732) <= 0x40)
              {
                v8.i32[0] = 16 * v732;
                v469 = vcnt_s8(*v8.f32);
                v469.i16[0] = vaddlv_u8(v469);
                if (v469.i32[0] <= 1u)
                {
                  v739 = v94;
                  v712 = v89;
                  v470 = v762;
                  v52 = v734;
                  CGSFillDRAM64(v95, 16 * (v87 + v748), 16 * v87, v762, v734, 16 * v744, 16 * v732, v731, 16 * v717, v716);
                  if (v38)
                  {
                    v49 = v733;
                    if (v753)
                    {
                      CGSFillDRAM64(v86, 4 * (v742 + v751), 4 * v742, v470, v17, 4 * v55, 4 * v732, v731, 4 * v717, v716);
                    }

                    else
                    {
                      CGBlt_fillBytes(4 * v742, v470, 32831, v86, 4 * (v742 + v751));
                    }

                    goto LABEL_847;
                  }

LABEL_846:
                  v49 = v733;
LABEL_847:
                  v89 = v712;
                  goto LABEL_886;
                }
              }
            }

            else if (v258 == 1)
            {
              v739 = v94;
              v712 = v89;
              if (v730 < 0)
              {
                v259 = v744 - v87;
                v501 = 16 * v87 - 16;
                v52 = (v52 - v501);
                v260 = v748 - v87;
                v95 = (v95 - v501);
              }

              else
              {
                v259 = v744 + v87;
                v260 = v748 + v87;
              }

              v502 = v762 - 1;
              v503 = v52[(v259 * v502) & (v259 >> 63)].i8;
              if (v259 >= 0)
              {
                v504 = v259;
              }

              else
              {
                v504 = -v259;
              }

              if (v260 >= 0)
              {
                LODWORD(v505) = v260;
              }

              else
              {
                v505 = -v260;
              }

              v744 = v504;
              v749 = v762;
              CGBlt_copyBytes(16 * v87, v762, v503, v95[(v260 * v502) & (v260 >> 63)].i8, 16 * v504, 16 * v505);
              if (v38)
              {
                v506 = 4 * v742;
                v49 = v733;
                v52 = v734;
                if (v753)
                {
                  v507 = v55 - v742;
                  v508 = 4 * v742 - 4;
                  v509 = (v85 - v508);
                  v510 = v751 - v742;
                  v511 = &v86[-v508];
                  if (v730 >= 0)
                  {
                    v509 = v85;
                    v511 = v86;
                    v507 = v55 + v742;
                    v510 = v751 + v742;
                  }

                  v512 = (v507 * v502) & (v507 >> 63);
                  v85 = &v509[v512];
                  if (v507 >= 0)
                  {
                    v513 = v507;
                  }

                  else
                  {
                    v513 = -v507;
                  }

                  v86 = &v511[4 * ((v510 * v502) & (v510 >> 63))];
                  if (v510 >= 0)
                  {
                    v514 = v510;
                  }

                  else
                  {
                    v514 = -v510;
                  }

                  v751 = v514;
                  CGBlt_copyBytes(v506, v749, &v509[v512], v86, 4 * v513, 4 * v514);
                  v55 = v513;
                }

                else
                {
                  v515 = v751 - v742;
                  v516 = &v86[-4 * v742 + 4];
                  if (v730 >= 0)
                  {
                    v516 = v86;
                    v515 = v751 + v742;
                  }

                  v517 = (v515 * v502) & (v515 >> 63);
                  v86 = (v516 + 4 * v517);
                  if (v515 < 0)
                  {
                    v515 = -v515;
                  }

                  v751 = v515;
                  CGBlt_fillBytes(v506, v749, 32831, (v516 + 4 * v517), 4 * v515);
                }

                v82 = v737;
                goto LABEL_847;
              }

LABEL_845:
              v52 = v734;
              v55 = v736;
              v82 = v737;
              goto LABEL_846;
            }

            if (!v38)
            {
              v479 = v762;
              v427 = i64;
              do
              {
                v480 = v87;
                do
                {
                  *v95 = *v52;
                  v481 = &v52[v730];
                  if (v481 >= v89)
                  {
                    v482 = -v732;
                  }

                  else
                  {
                    v482 = 0;
                  }

                  v85 += v56 + v482;
                  v52 = &v481[v482];
                  v95 += v730;
                  --v480;
                }

                while (v480);
                if (v82)
                {
                  v483 = &v427[v744];
                  if (v483 >= v82)
                  {
                    v484 = -(v55 * v731);
                  }

                  else
                  {
                    v484 = 0;
                  }

                  v94 += 4 * v55 + 4 * v484;
                  if (v483 >= v82)
                  {
                    v485 = -(v744 * v731);
                  }

                  else
                  {
                    v485 = 0;
                  }

                  v427 = &v483[v485];
                  v89 += 16 * v485 + 16 * v744;
                  v85 = v94;
                  v52 = v427;
                }

                else
                {
                  v52 += v744;
                  v85 += v55;
                }

                v95 += v748;
                v86 += 4 * v751;
                --v479;
              }

              while (v479);
LABEL_864:
              i64 = v427;
              goto LABEL_865;
            }

            if (v56)
            {
              v471 = v762;
              v472 = i64;
              do
              {
                v473 = v87;
                do
                {
                  *v95 = *v52;
                  *v86 = *v85;
                  v474 = &v52[v730];
                  if (v474 >= v89)
                  {
                    v475 = -v732;
                  }

                  else
                  {
                    v475 = 0;
                  }

                  v85 += v56 + v475;
                  v52 = &v474[v475];
                  v86 += 4 * v38;
                  v95 += v730;
                  --v473;
                }

                while (v473);
                if (v82)
                {
                  v476 = &v472[v744];
                  if (v476 >= v82)
                  {
                    v477 = -(v55 * v731);
                  }

                  else
                  {
                    v477 = 0;
                  }

                  v94 += 4 * v55 + 4 * v477;
                  if (v476 >= v82)
                  {
                    v478 = -(v744 * v731);
                  }

                  else
                  {
                    v478 = 0;
                  }

                  v472 = &v476[v478];
                  v89 += 16 * v478 + 16 * v744;
                  v85 = v94;
                  v52 = v472;
                }

                else
                {
                  v52 += v744;
                  v85 += v55;
                }

                v95 += v748;
                v86 += 4 * v751;
                --v471;
              }

              while (v471);
              i64 = v472;
LABEL_865:
              v739 = v94;
              v762 = 0;
              goto LABEL_884;
            }

            v176 = i64;
            do
            {
              v486 = v756[0];
              do
              {
                *v95 = *v52;
                *v86 = 32831;
                v487 = &v52[v730];
                if (v487 >= v89)
                {
                  v488 = -v732;
                }

                else
                {
                  v488 = 0;
                }

                v85 += v488;
                v52 = &v487[v488];
                v86 += 4 * v38;
                v95 += v730;
                --v486;
              }

              while (v486);
              if (v82)
              {
                v489 = &v176[v744];
                if (v489 >= v82)
                {
                  v490 = -(v55 * v731);
                }

                else
                {
                  v490 = 0;
                }

                v94 += 4 * v55 + 4 * v490;
                if (v489 >= v82)
                {
                  v491 = -(v744 * v731);
                }

                else
                {
                  v491 = 0;
                }

                v176 = &v489[v491];
                v89 += 16 * v491 + 16 * v744;
                v85 = v94;
                v52 = v176;
              }

              else
              {
                v52 += v744;
                v85 += v55;
              }

              v95 += v748;
              v86 += 4 * v751;
              --v762;
            }

            while (v762);
LABEL_882:
            i64 = v176;
            goto LABEL_883;
          case 2:
            v213 = 16 * v730;
            if (!v38)
            {
              v148 = i64;
              v435 = v762;
              while (1)
              {
                v436 = v87;
                do
                {
                  v437 = COERCE_FLOAT(bswap32(*v85));
                  if (v437 >= 1.0)
                  {
                    v438 = *v52;
                  }

                  else
                  {
                    if (v437 <= 0.0)
                    {
                      goto LABEL_736;
                    }

                    v438 = vrev32q_s8(vmlaq_n_f32(vrev32q_s8(*v52), vrev32q_s8(*v95), 1.0 - v437));
                  }

                  *v95 = v438;
LABEL_736:
                  v439 = &v52[v730];
                  if (v439 >= v89)
                  {
                    v440 = -v732;
                  }

                  else
                  {
                    v440 = 0;
                  }

                  v85 += v56 + v440;
                  v52 = &v439[v440];
                  v95 = (v95 + v213);
                  --v436;
                }

                while (v436);
                if (v82)
                {
                  v441 = &v148[v744];
                  if (v441 >= v82)
                  {
                    v442 = -(v55 * v731);
                  }

                  else
                  {
                    v442 = 0;
                  }

                  v94 += 4 * v55 + 4 * v442;
                  if (v441 >= v82)
                  {
                    v443 = -(v744 * v731);
                  }

                  else
                  {
                    v443 = 0;
                  }

                  v148 = &v441[v443];
                  v89 += 16 * v443 + 16 * v744;
                  v85 = v94;
                  v52 = v148;
                }

                else
                {
                  v52 += v744;
                  v85 += v55;
                }

                v95 += v748;
                v86 += 4 * v751;
                v762 = --v435;
                if (!v435)
                {
                  goto LABEL_815;
                }
              }
            }

            v148 = i64;
            do
            {
              v214 = v756[0];
              do
              {
                v215 = COERCE_FLOAT(bswap32(*v85));
                v216 = v215;
                if (v215 >= 1.0)
                {
                  *v95 = *v52;
                  *v86 = *v85;
                }

                else if (v215 > 0.0)
                {
                  v217 = bswap32(COERCE_UNSIGNED_INT(v215 + (COERCE_FLOAT(bswap32(*v86)) * (1.0 - v215))));
                  *v95 = vrev32q_s8(vmlaq_n_f32(vrev32q_s8(*v52), vrev32q_s8(*v95), 1.0 - v216));
                  *v86 = v217;
                }

                v218 = &v52[v730];
                if (v218 >= v89)
                {
                  v219 = -v732;
                }

                else
                {
                  v219 = 0;
                }

                v85 += v56 + v219;
                v52 = &v218[v219];
                v86 += 4 * v38;
                v95 = (v95 + v213);
                --v214;
              }

              while (v214);
              if (v82)
              {
                v220 = &v148[v744];
                if (v220 >= v82)
                {
                  v221 = -(v55 * v731);
                }

                else
                {
                  v221 = 0;
                }

                v94 += 4 * v55 + 4 * v221;
                if (v220 >= v82)
                {
                  v222 = -(v744 * v731);
                }

                else
                {
                  v222 = 0;
                }

                v148 = &v220[v222];
                v89 += 16 * v222 + 16 * v744;
                v85 = v94;
                v52 = v148;
              }

              else
              {
                v52 += v744;
                v85 += v55;
              }

              v95 += v748;
              v86 += 4 * v751;
              --v762;
            }

            while (v762);
LABEL_815:
            i64 = v148;
LABEL_883:
            v739 = v94;
LABEL_884:
            v52 = v734;
LABEL_885:
            v49 = v733;
LABEL_886:
            if (!v49)
            {
              return 1;
            }

            v83 = v89;
            v761 = 0;
            v760 = 0;
            continue;
          case 3:
            v238 = 4 * v38;
            v239 = 16 * v730;
            if (v56)
            {
              v148 = i64;
              do
              {
                v240 = v756[0];
                do
                {
                  v241 = COERCE_FLOAT(bswap32(*v86));
                  v242 = v241;
                  if (v241 <= 0.0)
                  {
                    v95->i64[0] = 0;
                    v95->i64[1] = 0;
                    *v86 = 0;
                  }

                  else if (v241 >= 1.0)
                  {
                    *v95 = *v52;
                    *v86 = *v85;
                  }

                  else
                  {
                    v243 = bswap32(COERCE_UNSIGNED_INT(v241 * COERCE_FLOAT(bswap32(*v85))));
                    *v95 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v52), v242));
                    *v86 = v243;
                  }

                  v244 = &v52[v730];
                  if (v244 >= v89)
                  {
                    v245 = -v732;
                  }

                  else
                  {
                    v245 = 0;
                  }

                  v85 += v56 + v245;
                  v52 = &v244[v245];
                  v86 += v238;
                  v95 = (v95 + v239);
                  --v240;
                }

                while (v240);
                if (v82)
                {
                  v246 = &v148[v744];
                  if (v246 >= v82)
                  {
                    v247 = -(v55 * v731);
                  }

                  else
                  {
                    v247 = 0;
                  }

                  v94 += 4 * v55 + 4 * v247;
                  if (v246 >= v82)
                  {
                    v248 = -(v744 * v731);
                  }

                  else
                  {
                    v248 = 0;
                  }

                  v148 = &v246[v248];
                  v89 += 16 * v248 + 16 * v744;
                  v85 = v94;
                  v52 = v148;
                }

                else
                {
                  v52 += v744;
                  v85 += v55;
                }

                v95 += v748;
                v86 += 4 * v751;
                --v762;
              }

              while (v762);
              goto LABEL_815;
            }

            v176 = i64;
            v444 = v762;
            do
            {
              v445 = v87;
              do
              {
                v446 = COERCE_FLOAT(bswap32(*v86));
                if (v446 <= 0.0)
                {
                  v95->i64[0] = 0;
                  v95->i64[1] = 0;
                }

                else
                {
                  if (v446 >= 1.0)
                  {
                    v447 = *v52;
                  }

                  else
                  {
                    v447 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v52), v446));
                  }

                  *v95 = v447;
                }

                v448 = &v52[v730];
                if (v448 >= v89)
                {
                  v449 = -v732;
                }

                else
                {
                  v449 = 0;
                }

                v85 += v449;
                v52 = &v448[v449];
                v86 += v238;
                v95 = (v95 + v239);
                --v445;
              }

              while (v445);
              if (v82)
              {
                v450 = &v176[v744];
                if (v450 >= v82)
                {
                  v451 = -(v55 * v731);
                }

                else
                {
                  v451 = 0;
                }

                v94 += 4 * v55 + 4 * v451;
                if (v450 >= v82)
                {
                  v452 = -(v744 * v731);
                }

                else
                {
                  v452 = 0;
                }

                v176 = &v450[v452];
                v89 += 16 * v452 + 16 * v744;
                v85 = v94;
                v52 = v176;
              }

              else
              {
                v52 += v744;
                v85 += v55;
              }

              v95 += v748;
              v86 += 4 * v751;
              v762 = --v444;
            }

            while (v444);
            goto LABEL_882;
          case 4:
            v148 = i64;
            do
            {
              v157 = v756[0];
              do
              {
                v158 = 1.0 - COERCE_FLOAT(bswap32(*v86));
                if (v158 <= 0.0)
                {
                  v95->i64[0] = 0;
                  v95->i64[1] = 0;
                  *v86 = 0;
                }

                else
                {
                  if (v158 >= 1.0)
                  {
                    if (v56)
                    {
                      v160 = bswap32(*v85);
                    }

                    else
                    {
                      v160 = 1065353216;
                    }

                    v161 = bswap32(v160);
                  }

                  else
                  {
                    if (v56)
                    {
                      v159 = COERCE_FLOAT(bswap32(*v85));
                    }

                    else
                    {
                      v159 = 1.0;
                    }

                    v161 = bswap32(COERCE_UNSIGNED_INT(v158 * v159));
                    *v95 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v52), v158));
                  }

                  *v86 = v161;
                }

                v162 = &v52[v730];
                if (v162 >= v89)
                {
                  v163 = -v732;
                }

                else
                {
                  v163 = 0;
                }

                v85 += v56 + v163;
                v52 = &v162[v163];
                v86 += 4 * v38;
                v95 += v730;
                --v157;
              }

              while (v157);
              if (v82)
              {
                v164 = &v148[v744];
                if (v164 >= v82)
                {
                  v165 = -(v55 * v731);
                }

                else
                {
                  v165 = 0;
                }

                v94 += 4 * v55 + 4 * v165;
                if (v164 >= v82)
                {
                  v166 = -(v744 * v731);
                }

                else
                {
                  v166 = 0;
                }

                v148 = &v164[v166];
                v89 += 16 * v166 + 16 * v744;
                v85 = v94;
                v52 = v148;
              }

              else
              {
                v52 += v744;
                v85 += v55;
              }

              v95 += v748;
              v86 += 4 * v751;
              --v762;
            }

            while (v762);
            goto LABEL_815;
          case 5:
            v176 = i64;
            do
            {
              v289 = v756[0];
              do
              {
                v290 = COERCE_FLOAT(bswap32(*v86));
                v291 = COERCE_FLOAT(bswap32(*v85));
                *v95 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v95), 1.0 - v291), vrev32q_s8(*v52), v290));
                *v86 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v291) * v290) + (v291 * v290)));
                v292 = &v52[v730];
                if (v292 >= v89)
                {
                  v293 = -v732;
                }

                else
                {
                  v293 = 0;
                }

                v85 += v56 + v293;
                v52 = &v292[v293];
                v86 += 4 * v38;
                v95 += v730;
                --v289;
              }

              while (v289);
              if (v82)
              {
                v294 = &v176[v744];
                if (v294 >= v82)
                {
                  v295 = -(v55 * v731);
                }

                else
                {
                  v295 = 0;
                }

                v94 += 4 * v55 + 4 * v295;
                if (v294 >= v82)
                {
                  v296 = -(v744 * v731);
                }

                else
                {
                  v296 = 0;
                }

                v176 = &v294[v296];
                v89 += 16 * v296 + 16 * v744;
                v85 = v94;
                v52 = v176;
              }

              else
              {
                v52 += v744;
                v85 += v55;
              }

              v95 += v748;
              v86 += 4 * v751;
              --v762;
            }

            while (v762);
            goto LABEL_882;
          case 6:
            v148 = i64;
            while (1)
            {
              v323 = v756[0];
              do
              {
                v324 = COERCE_FLOAT(bswap32(*v86));
                v325 = 1.0 - v324;
                if ((1.0 - v324) >= 1.0)
                {
                  if (v56)
                  {
                    v327 = bswap32(*v85);
                  }

                  else
                  {
                    v327 = 1065353216;
                  }

                  v328 = *v52;
                  v329 = bswap32(v327);
                }

                else
                {
                  if (v325 <= 0.0)
                  {
                    goto LABEL_515;
                  }

                  if (v56)
                  {
                    v326 = COERCE_FLOAT(bswap32(*v85));
                  }

                  else
                  {
                    v326 = 1.0;
                  }

                  v329 = bswap32(COERCE_UNSIGNED_INT(v324 + (v326 * v325)));
                  v328 = vrev32q_s8(vmlaq_n_f32(vrev32q_s8(*v95), vrev32q_s8(*v52), v325));
                }

                *v95 = v328;
                *v86 = v329;
LABEL_515:
                v330 = &v52[v730];
                if (v330 >= v89)
                {
                  v331 = -v732;
                }

                else
                {
                  v331 = 0;
                }

                v85 += v56 + v331;
                v52 = &v330[v331];
                v86 += 4 * v38;
                v95 += v730;
                --v323;
              }

              while (v323);
              if (v82)
              {
                v332 = &v148[v744];
                if (v332 >= v82)
                {
                  v333 = -(v55 * v731);
                }

                else
                {
                  v333 = 0;
                }

                v94 += 4 * v55 + 4 * v333;
                if (v332 >= v82)
                {
                  v334 = -(v744 * v731);
                }

                else
                {
                  v334 = 0;
                }

                v148 = &v332[v334];
                v89 += 16 * v334 + 16 * v744;
                v85 = v94;
                v52 = v148;
              }

              else
              {
                v52 += v744;
                v85 += v55;
              }

              v95 += v748;
              v86 += 4 * v751;
              if (!--v762)
              {
                goto LABEL_815;
              }
            }

          case 7:
            if (v38)
            {
              v148 = i64;
              do
              {
                v249 = v756[0];
                do
                {
                  v250 = COERCE_FLOAT(bswap32(*v85));
                  v251 = v250;
                  if (v250 <= 0.0)
                  {
                    v95->i64[0] = 0;
                    v95->i64[1] = 0;
                    *v86 = 0;
                  }

                  else if (v250 < 1.0)
                  {
                    v252 = bswap32(COERCE_UNSIGNED_INT(v250 * COERCE_FLOAT(bswap32(*v86))));
                    *v95 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v95), v251));
                    *v86 = v252;
                  }

                  v253 = &v52[v730];
                  if (v253 >= v89)
                  {
                    v254 = -v732;
                  }

                  else
                  {
                    v254 = 0;
                  }

                  v85 += v56 + v254;
                  v52 = &v253[v254];
                  v86 += 4 * v38;
                  v95 += v730;
                  --v249;
                }

                while (v249);
                if (v82)
                {
                  v255 = &v148[v744];
                  if (v255 >= v82)
                  {
                    v256 = -(v55 * v731);
                  }

                  else
                  {
                    v256 = 0;
                  }

                  v94 += 4 * v55 + 4 * v256;
                  if (v255 >= v82)
                  {
                    v257 = -(v744 * v731);
                  }

                  else
                  {
                    v257 = 0;
                  }

                  v148 = &v255[v257];
                  v89 += 16 * v257 + 16 * v744;
                  v85 = v94;
                  v52 = v148;
                }

                else
                {
                  v52 += v744;
                  v85 += v55;
                }

                v95 += v748;
                v86 += 4 * v751;
                --v762;
              }

              while (v762);
            }

            else
            {
              v148 = i64;
              v453 = v762;
              do
              {
                v454 = v87;
                do
                {
                  v455 = COERCE_FLOAT(bswap32(*v85));
                  if (v455 <= 0.0)
                  {
                    v95->i64[0] = 0;
                    v95->i64[1] = 0;
                  }

                  else if (v455 < 1.0)
                  {
                    *v95 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v95), v455));
                  }

                  v456 = &v52[v730];
                  if (v456 >= v89)
                  {
                    v457 = -v732;
                  }

                  else
                  {
                    v457 = 0;
                  }

                  v85 += v56 + v457;
                  v52 = &v456[v457];
                  v95 += v730;
                  --v454;
                }

                while (v454);
                if (v82)
                {
                  v458 = &v148[v744];
                  if (v458 >= v82)
                  {
                    v459 = -(v55 * v731);
                  }

                  else
                  {
                    v459 = 0;
                  }

                  v94 += 4 * v55 + 4 * v459;
                  if (v458 >= v82)
                  {
                    v460 = -(v744 * v731);
                  }

                  else
                  {
                    v460 = 0;
                  }

                  v148 = &v458[v460];
                  v89 += 16 * v460 + 16 * v744;
                  v85 = v94;
                  v52 = v148;
                }

                else
                {
                  v52 += v744;
                  v85 += v55;
                }

                v95 += v748;
                v86 += 4 * v751;
                v762 = --v453;
              }

              while (v453);
            }

            goto LABEL_815;
          case 8:
            if (v38)
            {
              v148 = i64;
              do
              {
                v358 = v756[0];
                do
                {
                  v359 = 1.0 - COERCE_FLOAT(bswap32(*v85));
                  if (v359 <= 0.0)
                  {
                    v95->i64[0] = 0;
                    v95->i64[1] = 0;
                    *v86 = 0;
                  }

                  else if (v359 < 1.0)
                  {
                    v360 = bswap32(COERCE_UNSIGNED_INT(v359 * COERCE_FLOAT(bswap32(*v86))));
                    *v95 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v95), v359));
                    *v86 = v360;
                  }

                  v361 = &v52[v730];
                  if (v361 >= v89)
                  {
                    v362 = -v732;
                  }

                  else
                  {
                    v362 = 0;
                  }

                  v85 += v56 + v362;
                  v52 = &v361[v362];
                  v86 += 4 * v38;
                  v95 += v730;
                  --v358;
                }

                while (v358);
                if (v82)
                {
                  v363 = &v148[v744];
                  if (v363 >= v82)
                  {
                    v364 = -(v55 * v731);
                  }

                  else
                  {
                    v364 = 0;
                  }

                  v94 += 4 * v55 + 4 * v364;
                  if (v363 >= v82)
                  {
                    v365 = -(v744 * v731);
                  }

                  else
                  {
                    v365 = 0;
                  }

                  v148 = &v363[v365];
                  v89 += 16 * v365 + 16 * v744;
                  v85 = v94;
                  v52 = v148;
                }

                else
                {
                  v52 += v744;
                  v85 += v55;
                }

                v95 += v748;
                v86 += 4 * v751;
                --v762;
              }

              while (v762);
            }

            else
            {
              v148 = i64;
              v461 = v762;
              do
              {
                v462 = v87;
                do
                {
                  v463 = 1.0 - COERCE_FLOAT(bswap32(*v85));
                  if (v463 <= 0.0)
                  {
                    v95->i64[0] = 0;
                    v95->i64[1] = 0;
                  }

                  else if (v463 < 1.0)
                  {
                    *v95 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v95), v463));
                  }

                  v464 = &v52[v730];
                  if (v464 >= v89)
                  {
                    v465 = -v732;
                  }

                  else
                  {
                    v465 = 0;
                  }

                  v85 += v56 + v465;
                  v52 = &v464[v465];
                  v95 += v730;
                  --v462;
                }

                while (v462);
                if (v82)
                {
                  v466 = &v148[v744];
                  if (v466 >= v82)
                  {
                    v467 = -(v55 * v731);
                  }

                  else
                  {
                    v467 = 0;
                  }

                  v94 += 4 * v55 + 4 * v467;
                  if (v466 >= v82)
                  {
                    v468 = -(v744 * v731);
                  }

                  else
                  {
                    v468 = 0;
                  }

                  v148 = &v466[v468];
                  v89 += 16 * v468 + 16 * v744;
                  v85 = v94;
                  v52 = v148;
                }

                else
                {
                  v52 += v744;
                  v85 += v55;
                }

                v95 += v748;
                v86 += 4 * v751;
                v762 = --v461;
              }

              while (v461);
            }

            goto LABEL_815;
          case 9:
            v176 = i64;
            do
            {
              v177 = v756[0];
              do
              {
                v178 = COERCE_FLOAT(bswap32(*v86));
                v179 = COERCE_FLOAT(bswap32(*v85));
                *v95 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v95), v179), vrev32q_s8(*v52), 1.0 - v178));
                *v86 = bswap32(COERCE_UNSIGNED_INT((v178 * v179) + (v179 * (1.0 - v178))));
                v180 = &v52[v730];
                if (v180 >= v89)
                {
                  v181 = -v732;
                }

                else
                {
                  v181 = 0;
                }

                v85 += v56 + v181;
                v52 = &v180[v181];
                v86 += 4 * v38;
                v95 += v730;
                --v177;
              }

              while (v177);
              if (v82)
              {
                v182 = &v176[v744];
                if (v182 >= v82)
                {
                  v183 = -(v55 * v731);
                }

                else
                {
                  v183 = 0;
                }

                v94 += 4 * v55 + 4 * v183;
                if (v182 >= v82)
                {
                  v184 = -(v744 * v731);
                }

                else
                {
                  v184 = 0;
                }

                v176 = &v182[v184];
                v89 += 16 * v184 + 16 * v744;
                v85 = v94;
                v52 = v176;
              }

              else
              {
                v52 += v744;
                v85 += v55;
              }

              v95 += v748;
              v86 += 4 * v751;
              --v762;
            }

            while (v762);
            goto LABEL_882;
          case 10:
            v176 = i64;
            do
            {
              v350 = v756[0];
              do
              {
                v351 = COERCE_FLOAT(bswap32(*v86));
                v352 = COERCE_FLOAT(bswap32(*v85));
                *v95 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v95), 1.0 - v352), vrev32q_s8(*v52), 1.0 - v351));
                *v86 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v352) * v351) + (v352 * (1.0 - v351))));
                v353 = &v52[v730];
                if (v353 >= v89)
                {
                  v354 = -v732;
                }

                else
                {
                  v354 = 0;
                }

                v85 += v56 + v354;
                v52 = &v353[v354];
                v86 += 4 * v38;
                v95 += v730;
                --v350;
              }

              while (v350);
              if (v82)
              {
                v355 = &v176[v744];
                if (v355 >= v82)
                {
                  v356 = -(v55 * v731);
                }

                else
                {
                  v356 = 0;
                }

                v94 += 4 * v55 + 4 * v356;
                if (v355 >= v82)
                {
                  v357 = -(v744 * v731);
                }

                else
                {
                  v357 = 0;
                }

                v176 = &v355[v357];
                v89 += 16 * v357 + 16 * v744;
                v85 = v94;
                v52 = v176;
              }

              else
              {
                v52 += v744;
                v85 += v55;
              }

              v95 += v748;
              v86 += 4 * v751;
              --v762;
            }

            while (v762);
            goto LABEL_882;
          case 11:
            v147 = 16 * v730;
            if (v38)
            {
              v148 = i64;
              do
              {
                v149 = v756[0];
                do
                {
                  if (v56)
                  {
                    v9.i32[0] = bswap32(*v85);
                  }

                  else
                  {
                    v9.i32[0] = 1.0;
                  }

                  v150 = vrev32q_s8(*v95);
                  v151 = vrev32q_s8(*v52);
                  v12.i32[0] = bswap32(*v86);
                  v13.f32[0] = v9.f32[0] + v12.f32[0];
                  if ((v9.f32[0] + v12.f32[0]) > 1.0)
                  {
                    v13.f32[0] = 1.0;
                  }

                  v12 = vdupq_lane_s32(*v12.f32, 0);
                  v9 = vrev32q_s8(vaddq_f32(vsubq_f32(vdupq_lane_s32(*v9.f32, 0), v151), vsubq_f32(vdupq_lane_s32(*v13.f32, 0), vsubq_f32(v12, v150))));
                  *v95 = v9;
                  *v86 = bswap32(v13.u32[0]);
                  v152 = &v52[v730];
                  if (v152 >= v89)
                  {
                    v153 = -v732;
                  }

                  else
                  {
                    v153 = 0;
                  }

                  v85 += v56 + v153;
                  v52 = &v152[v153];
                  v86 += 4 * v38;
                  v95 = (v95 + v147);
                  --v149;
                }

                while (v149);
                if (v82)
                {
                  v154 = &v148[v744];
                  if (v154 >= v82)
                  {
                    v155 = -(v55 * v731);
                  }

                  else
                  {
                    v155 = 0;
                  }

                  v94 += 4 * v55 + 4 * v155;
                  if (v154 >= v82)
                  {
                    v156 = -(v744 * v731);
                  }

                  else
                  {
                    v156 = 0;
                  }

                  v148 = &v154[v156];
                  v89 += 16 * v156 + 16 * v744;
                  v85 = v94;
                  v52 = v148;
                }

                else
                {
                  v52 += v744;
                  v85 += v55;
                }

                v95 += v748;
                v86 += 4 * v751;
                --v762;
              }

              while (v762);
            }

            else
            {
              v148 = i64;
              v420 = v762;
              do
              {
                v421 = v87;
                do
                {
                  if (v56)
                  {
                    v8.i32[0] = bswap32(*v85);
                  }

                  else
                  {
                    v8.i32[0] = 1.0;
                  }

                  v8 = vrev32q_s8(vaddq_f32(vsubq_f32(vdupq_lane_s32(*v8.f32, 0), vrev32q_s8(*v52)), vrev32q_s8(*v95)));
                  *v95 = v8;
                  v422 = &v52[v730];
                  if (v422 >= v89)
                  {
                    v423 = -v732;
                  }

                  else
                  {
                    v423 = 0;
                  }

                  v85 += v56 + v423;
                  v52 = &v422[v423];
                  v95 = (v95 + v147);
                  --v421;
                }

                while (v421);
                if (v82)
                {
                  v424 = &v148[v744];
                  if (v424 >= v82)
                  {
                    v425 = -(v55 * v731);
                  }

                  else
                  {
                    v425 = 0;
                  }

                  v94 += 4 * v55 + 4 * v425;
                  if (v424 >= v82)
                  {
                    v426 = -(v744 * v731);
                  }

                  else
                  {
                    v426 = 0;
                  }

                  v148 = &v424[v426];
                  v89 += 16 * v426 + 16 * v744;
                  v85 = v94;
                  v52 = v148;
                }

                else
                {
                  v52 += v744;
                  v85 += v55;
                }

                v95 += v748;
                v86 += 4 * v751;
                v762 = --v420;
              }

              while (v420);
            }

            goto LABEL_815;
          case 12:
            if (!v38)
            {
              v427 = i64;
              v428 = v762;
              do
              {
                v429 = v87;
                do
                {
                  *v95 = vrev32q_s8(vaddq_f32(vrev32q_s8(*v95), vrev32q_s8(*v52)));
                  v430 = &v52[v730];
                  if (v430 >= v89)
                  {
                    v431 = -v732;
                  }

                  else
                  {
                    v431 = 0;
                  }

                  v85 += v56 + v431;
                  v52 = &v430[v431];
                  v95 += v730;
                  --v429;
                }

                while (v429);
                if (v82)
                {
                  v432 = &v427[v744];
                  if (v432 >= v82)
                  {
                    v433 = -(v55 * v731);
                  }

                  else
                  {
                    v433 = 0;
                  }

                  v94 += 4 * v55 + 4 * v433;
                  if (v432 >= v82)
                  {
                    v434 = -(v744 * v731);
                  }

                  else
                  {
                    v434 = 0;
                  }

                  v427 = &v432[v434];
                  v89 += 16 * v434 + 16 * v744;
                  v85 = v94;
                  v52 = v427;
                }

                else
                {
                  v52 += v744;
                  v85 += v55;
                }

                v95 += v748;
                v86 += 4 * v751;
                --v428;
              }

              while (v428);
              goto LABEL_864;
            }

            v148 = i64;
            do
            {
              v167 = v756[0];
              do
              {
                if (v56)
                {
                  v168 = COERCE_FLOAT(bswap32(*v85));
                }

                else
                {
                  v168 = 1.0;
                }

                v169 = v168 + COERCE_FLOAT(bswap32(*v86));
                v170 = vaddq_f32(vrev32q_s8(*v95), vrev32q_s8(*v52));
                if (v169 > 1.0)
                {
                  v169 = 1.0;
                }

                *v95 = vrev32q_s8(v170);
                *v86 = bswap32(LODWORD(v169));
                v171 = &v52[v730];
                if (v171 >= v89)
                {
                  v172 = -v732;
                }

                else
                {
                  v172 = 0;
                }

                v85 += v56 + v172;
                v52 = &v171[v172];
                v86 += 4 * v38;
                v95 += v730;
                --v167;
              }

              while (v167);
              if (v82)
              {
                v173 = &v148[v744];
                if (v173 >= v82)
                {
                  v174 = -(v55 * v731);
                }

                else
                {
                  v174 = 0;
                }

                v94 += 4 * v55 + 4 * v174;
                if (v173 >= v82)
                {
                  v175 = -(v744 * v731);
                }

                else
                {
                  v175 = 0;
                }

                v148 = &v173[v175];
                v89 += 16 * v175 + 16 * v744;
                v85 = v94;
                v52 = v148;
              }

              else
              {
                v52 += v744;
                v85 += v55;
              }

              v95 += v748;
              v86 += 4 * v751;
              --v762;
            }

            while (v762);
            goto LABEL_815;
          case 13:
            v8.i32[0] = 1.0;
            while (1)
            {
              v311 = v756[0];
              do
              {
                v10.i32[0] = 1.0;
                v9.i32[0] = 1.0;
                if (v56)
                {
                  v9.i32[0] = bswap32(*v85);
                  if (v9.f32[0] <= 0.0)
                  {
                    goto LABEL_487;
                  }
                }

                if (v38)
                {
                  v10.i32[0] = bswap32(*v86);
                  if (v10.f32[0] <= 0.0)
                  {
                    v317 = v9.i32[0];
                    v9 = *v52;
                    v316 = bswap32(v317);
                    *v95 = *v52;
                    goto LABEL_485;
                  }
                }

                v312 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vrev32q_s8(*v95));
                v313 = vsubq_f32(vdupq_lane_s32(*v9.f32, 0), vrev32q_s8(*v52));
                v314 = vmulq_f32(v312, v313);
                v315 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v9, v8)), 0), vmlaq_n_f32(v314, v312, 1.0 - v9.f32[0]), v314);
                v9.f32[0] = (v10.f32[0] + v9.f32[0]) - (v10.f32[0] * v9.f32[0]);
                v10 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v9.f32, 0), vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v10, v8)), 0), vmlaq_n_f32(v315, v313, 1.0 - v10.f32[0]), v315)));
                if (v38)
                {
                  v316 = bswap32(v9.u32[0]);
                  *v95 = v10;
LABEL_485:
                  *v86 = v316;
                  goto LABEL_487;
                }

                *v95 = v10;
LABEL_487:
                v318 = &v52[v730];
                if (v318 >= v89)
                {
                  v319 = -v732;
                }

                else
                {
                  v319 = 0;
                }

                v85 += v56 + v319;
                v52 = &v318[v319];
                v86 += 4 * v38;
                v95 += v730;
                --v311;
              }

              while (v311);
              if (v82)
              {
                v320 = i64 + 16 * v744;
                if (v320 >= v82)
                {
                  v321 = -(v55 * v731);
                }

                else
                {
                  v321 = 0;
                }

                v94 += 4 * v55 + 4 * v321;
                if (v320 >= v82)
                {
                  v322 = -(v744 * v731);
                }

                else
                {
                  v322 = 0;
                }

                v52 = (v320 + 16 * v322);
                v89 += 16 * v322 + 16 * v744;
                v85 = v94;
                i64 = v52;
              }

              else
              {
                v52 += v744;
                v85 += v55;
              }

              v95 += v748;
              v86 += 4 * v751;
              if (!--v762)
              {
                goto LABEL_883;
              }
            }

          case 14:
            __asm { FMOV            V0.4S, #1.0 }

            while (1)
            {
              v139 = v756[0];
              do
              {
                v10.i32[0] = 1.0;
                v9.i32[0] = 1.0;
                if (v56)
                {
                  v9.i32[0] = bswap32(*v85);
                  if (v9.f32[0] <= 0.0)
                  {
                    goto LABEL_135;
                  }
                }

                if (v38)
                {
                  v10.i32[0] = bswap32(*v86);
                  if (v10.f32[0] <= 0.0)
                  {
                    v141 = v9.i32[0];
                    v9 = *v52;
                    goto LABEL_133;
                  }
                }

                v11.f32[0] = (v9.f32[0] + v10.f32[0]) - (v10.f32[0] * v9.f32[0]);
                v140 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vrev32q_s8(*v95));
                v10 = vmlaq_f32(v140, vsubq_f32(_Q0, v140), vsubq_f32(vdupq_lane_s32(*v9.f32, 0), vrev32q_s8(*v52)));
                v9 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v11.f32, 0), v10));
                if (v38)
                {
                  v141 = v11.i32[0];
LABEL_133:
                  *v95 = v9;
                  *v86 = bswap32(v141);
                  goto LABEL_135;
                }

                *v95 = v9;
LABEL_135:
                v142 = &v52[v730];
                if (v142 >= v89)
                {
                  v143 = -v732;
                }

                else
                {
                  v143 = 0;
                }

                v85 += v56 + v143;
                v52 = &v142[v143];
                v86 += 4 * v38;
                v95 += v730;
                --v139;
              }

              while (v139);
              if (v82)
              {
                v144 = i64 + 16 * v744;
                if (v144 >= v82)
                {
                  v145 = -(v55 * v731);
                }

                else
                {
                  v145 = 0;
                }

                v94 += 4 * v55 + 4 * v145;
                if (v144 >= v82)
                {
                  v146 = -(v744 * v731);
                }

                else
                {
                  v146 = 0;
                }

                v52 = (v144 + 16 * v146);
                v89 += 16 * v146 + 16 * v744;
                v85 = v94;
                i64 = v52;
              }

              else
              {
                v52 += v744;
                v85 += v55;
              }

              v95 += v748;
              v86 += 4 * v751;
              if (!--v762)
              {
                goto LABEL_883;
              }
            }

          case 15:
            v739 = v94;
            v714 = v17;
            v223 = v56;
            v721 = -(v55 * v731);
            v224 = 4 * v38;
            v225 = 16 * v730;
            v226 = -v732;
            do
            {
              v227 = v756[0];
              do
              {
                v228 = 1.0;
                v13.i32[0] = 1.0;
                if (!v56 || (v13.i32[0] = bswap32(*v85), v13.f32[0] > 0.0))
                {
                  if (v38 && (v228 = COERCE_FLOAT(bswap32(*v86)), v228 <= 0.0))
                  {
                    *v95 = *v52;
                    *v86 = bswap32(v13.u32[0]);
                  }

                  else
                  {
                    v229 = v89;
                    v763 = 0uLL;
                    v764 = 0;
                    v230 = vrev32q_s8(*v95);
                    v705 = vrev32q_s8(*v52);
                    PDAoverlayPDA(v763.i32, *v230.i32, *&v230.i32[1], *&v230.i32[2], *&v230.i32[3], v228, *v13.i64, *v705.i64, v15, *v705.i32, *&v705.i32[1], *&v705.i32[2], *&v705.i32[3], v13.f32[0]);
                    LODWORD(v38) = v755;
                    v231 = vrev32q_s8(v763);
                    if (v755)
                    {
                      v232 = bswap32(v764);
                      *v95 = v231;
                      *v86 = v232;
                    }

                    else
                    {
                      *v95 = v231;
                    }

                    LODWORD(v56) = v753;
                    v89 = v229;
                    v226 = -v732;
                    v225 = 16 * v730;
                  }
                }

                v233 = &v52[v730];
                if (v233 >= v89)
                {
                  v234 = v226;
                }

                else
                {
                  v234 = 0;
                }

                v85 += v223 + v234;
                v52 = &v233[v234];
                v86 += v224;
                v95 = (v95 + v225);
                --v227;
              }

              while (v227);
              if (v82)
              {
                v235 = i64 + 16 * v744;
                v55 = v736;
                v236 = v721;
                if (v235 < v82)
                {
                  v236 = 0;
                }

                v85 = (v739 + 4 * v736 + 4 * v236);
                v237 = -(v744 * v731);
                if (v235 < v82)
                {
                  v237 = 0;
                }

                v52 = (v235 + 16 * v237);
                v89 += 16 * v237 + 16 * v744;
                v739 += 4 * v736 + 4 * v236;
                i64 = v52;
              }

              else
              {
                v52 += v744;
                v55 = v736;
                v85 += v736;
              }

              v95 += v748;
              v86 += 4 * v751;
              --v762;
            }

            while (v762);
            goto LABEL_691;
          case 16:
            v8.i32[0] = 1.0;
            while (1)
            {
              v120 = v756[0];
              do
              {
                v10.i32[0] = 1.0;
                v9.i32[0] = 1.0;
                if (v56)
                {
                  v9.i32[0] = bswap32(*v85);
                  if (v9.f32[0] <= 0.0)
                  {
                    goto LABEL_109;
                  }
                }

                if (v38)
                {
                  v10.i32[0] = bswap32(*v86);
                  if (v10.f32[0] <= 0.0)
                  {
                    v128 = v9.i32[0];
                    v9 = *v52;
                    v127 = bswap32(v128);
                    *v95 = *v52;
                    goto LABEL_107;
                  }
                }

                v121 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vrev32q_s8(*v95));
                v122 = vsubq_f32(vdupq_lane_s32(*v9.f32, 0), vrev32q_s8(*v52));
                v123 = vmulq_n_f32(v121, v9.f32[0]);
                v124 = vmulq_n_f32(v122, v10.f32[0]);
                v125 = vbslq_s8(vcgtq_f32(v123, v124), v124, v123);
                v126 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v9, v8)), 0), vmlaq_n_f32(v125, v121, 1.0 - v9.f32[0]), v125);
                v9.f32[0] = (v10.f32[0] + v9.f32[0]) - (v10.f32[0] * v9.f32[0]);
                v10 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v9.f32, 0), vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v10, v8)), 0), vmlaq_n_f32(v126, v122, 1.0 - v10.f32[0]), v126)));
                if (v38)
                {
                  v127 = bswap32(v9.u32[0]);
                  *v95 = v10;
LABEL_107:
                  *v86 = v127;
                  goto LABEL_109;
                }

                *v95 = v10;
LABEL_109:
                v129 = &v52[v730];
                if (v129 >= v89)
                {
                  v130 = -v732;
                }

                else
                {
                  v130 = 0;
                }

                v85 += v56 + v130;
                v52 = &v129[v130];
                v86 += 4 * v38;
                v95 += v730;
                --v120;
              }

              while (v120);
              if (v82)
              {
                v131 = i64 + 16 * v744;
                if (v131 >= v82)
                {
                  v132 = -(v55 * v731);
                }

                else
                {
                  v132 = 0;
                }

                v94 += 4 * v55 + 4 * v132;
                if (v131 >= v82)
                {
                  v133 = -(v744 * v731);
                }

                else
                {
                  v133 = 0;
                }

                v52 = (v131 + 16 * v133);
                v89 += 16 * v133 + 16 * v744;
                v85 = v94;
                i64 = v52;
              }

              else
              {
                v52 += v744;
                v85 += v55;
              }

              v95 += v748;
              v86 += 4 * v751;
              if (!--v762)
              {
                goto LABEL_883;
              }
            }

          case 17:
            v8.i32[0] = 1.0;
            while (1)
            {
              v261 = v756[0];
              do
              {
                v10.i32[0] = 1.0;
                v9.i32[0] = 1.0;
                if (v56)
                {
                  v9.i32[0] = bswap32(*v85);
                  if (v9.f32[0] <= 0.0)
                  {
                    goto LABEL_396;
                  }
                }

                if (v38)
                {
                  v10.i32[0] = bswap32(*v86);
                  if (v10.f32[0] <= 0.0)
                  {
                    v269 = v9.i32[0];
                    v9 = *v52;
                    v268 = bswap32(v269);
                    *v95 = *v52;
                    goto LABEL_394;
                  }
                }

                v262 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vrev32q_s8(*v95));
                v263 = vsubq_f32(vdupq_lane_s32(*v9.f32, 0), vrev32q_s8(*v52));
                v264 = vmulq_n_f32(v262, v9.f32[0]);
                v265 = vmulq_n_f32(v263, v10.f32[0]);
                v266 = vbslq_s8(vcgtq_f32(v265, v264), v265, v264);
                v267 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v9, v8)), 0), vmlaq_n_f32(v266, v262, 1.0 - v9.f32[0]), v266);
                v9.f32[0] = (v10.f32[0] + v9.f32[0]) - (v10.f32[0] * v9.f32[0]);
                v10 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v9.f32, 0), vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v10, v8)), 0), vmlaq_n_f32(v267, v263, 1.0 - v10.f32[0]), v267)));
                if (v38)
                {
                  v268 = bswap32(v9.u32[0]);
                  *v95 = v10;
LABEL_394:
                  *v86 = v268;
                  goto LABEL_396;
                }

                *v95 = v10;
LABEL_396:
                v270 = &v52[v730];
                if (v270 >= v89)
                {
                  v271 = -v732;
                }

                else
                {
                  v271 = 0;
                }

                v85 += v56 + v271;
                v52 = &v270[v271];
                v86 += 4 * v38;
                v95 += v730;
                --v261;
              }

              while (v261);
              if (v82)
              {
                v272 = i64 + 16 * v744;
                if (v272 >= v82)
                {
                  v273 = -(v55 * v731);
                }

                else
                {
                  v273 = 0;
                }

                v94 += 4 * v55 + 4 * v273;
                if (v272 >= v82)
                {
                  v274 = -(v744 * v731);
                }

                else
                {
                  v274 = 0;
                }

                v52 = (v272 + 16 * v274);
                v89 += 16 * v274 + 16 * v744;
                v85 = v94;
                i64 = v52;
              }

              else
              {
                v52 += v744;
                v85 += v55;
              }

              v95 += v748;
              v86 += 4 * v751;
              if (!--v762)
              {
                goto LABEL_883;
              }
            }

          case 18:
            v739 = v94;
            v714 = v17;
            v335 = v56;
            v724 = -(v55 * v731);
            v336 = 4 * v38;
            v337 = 16 * v730;
            v338 = -v732;
            do
            {
              v339 = v756[0];
              do
              {
                v340 = 1.0;
                v13.i32[0] = 1.0;
                if (!v56 || (v13.i32[0] = bswap32(*v85), v13.f32[0] > 0.0))
                {
                  if (v38 && (v340 = COERCE_FLOAT(bswap32(*v86)), v340 <= 0.0))
                  {
                    *v95 = *v52;
                    *v86 = bswap32(v13.u32[0]);
                  }

                  else
                  {
                    v341 = v89;
                    v763 = 0uLL;
                    v764 = 0;
                    v342 = vrev32q_s8(*v95);
                    v708 = vrev32q_s8(*v52);
                    PDAcolordodgePDA(v763.i32, *v342.i32, *&v342.i32[1], *&v342.i32[2], *&v342.i32[3], v340, *v13.i64, *v708.i64, v15, *v708.i32, *&v708.i32[1], *&v708.i32[2], *&v708.i32[3], v13.f32[0]);
                    LODWORD(v38) = v755;
                    v343 = vrev32q_s8(v763);
                    if (v755)
                    {
                      v344 = bswap32(v764);
                      *v95 = v343;
                      *v86 = v344;
                    }

                    else
                    {
                      *v95 = v343;
                    }

                    LODWORD(v56) = v753;
                    v89 = v341;
                    v338 = -v732;
                    v337 = 16 * v730;
                  }
                }

                v345 = &v52[v730];
                if (v345 >= v89)
                {
                  v346 = v338;
                }

                else
                {
                  v346 = 0;
                }

                v85 += v335 + v346;
                v52 = &v345[v346];
                v86 += v336;
                v95 = (v95 + v337);
                --v339;
              }

              while (v339);
              if (v82)
              {
                v347 = i64 + 16 * v744;
                v55 = v736;
                v348 = v724;
                if (v347 < v82)
                {
                  v348 = 0;
                }

                v85 = (v739 + 4 * v736 + 4 * v348);
                v349 = -(v744 * v731);
                if (v347 < v82)
                {
                  v349 = 0;
                }

                v52 = (v347 + 16 * v349);
                v89 += 16 * v349 + 16 * v744;
                v739 += 4 * v736 + 4 * v348;
                i64 = v52;
              }

              else
              {
                v52 += v744;
                v55 = v736;
                v85 += v736;
              }

              v95 += v748;
              v86 += 4 * v751;
              --v762;
            }

            while (v762);
            goto LABEL_691;
          case 19:
            v739 = v94;
            v714 = v17;
            v382 = v56;
            v725 = -(v55 * v731);
            v383 = 4 * v38;
            v384 = 16 * v730;
            v385 = -v732;
            do
            {
              v386 = v756[0];
              do
              {
                v387 = 1.0;
                v13.i32[0] = 1.0;
                if (!v56 || (v13.i32[0] = bswap32(*v85), v13.f32[0] > 0.0))
                {
                  if (v38 && (v387 = COERCE_FLOAT(bswap32(*v86)), v387 <= 0.0))
                  {
                    *v95 = *v52;
                    *v86 = bswap32(v13.u32[0]);
                  }

                  else
                  {
                    v388 = v89;
                    v763 = 0uLL;
                    v764 = 0;
                    v389 = vrev32q_s8(*v95);
                    v709 = vrev32q_s8(*v52);
                    PDAcolorburnPDA(v763.i32, *v389.i32, *&v389.i32[1], *&v389.i32[2], *&v389.i32[3], v387, *v13.i64, *v709.i64, v15, *v709.i32, *&v709.i32[1], *&v709.i32[2], *&v709.i32[3], v13.f32[0]);
                    LODWORD(v38) = v755;
                    if (v755)
                    {
                      v390 = bswap32(v764);
                      *v95 = vrev32q_s8(v763);
                      *v86 = v390;
                    }

                    else
                    {
                      *v95 = vrev32q_s8(v763);
                    }

                    LODWORD(v56) = v753;
                    v89 = v388;
                    v385 = -v732;
                    v384 = 16 * v730;
                  }
                }

                v391 = &v52[v730];
                if (v391 >= v89)
                {
                  v392 = v385;
                }

                else
                {
                  v392 = 0;
                }

                v85 += v382 + v392;
                v52 = &v391[v392];
                v86 += v383;
                v95 = (v95 + v384);
                --v386;
              }

              while (v386);
              if (v82)
              {
                v393 = i64 + 16 * v744;
                v55 = v736;
                v394 = v725;
                if (v393 < v82)
                {
                  v394 = 0;
                }

                v85 = (v739 + 4 * v736 + 4 * v394);
                v395 = -(v744 * v731);
                if (v393 < v82)
                {
                  v395 = 0;
                }

                v52 = (v393 + 16 * v395);
                v89 += 16 * v395 + 16 * v744;
                v739 += 4 * v736 + 4 * v394;
                i64 = v52;
              }

              else
              {
                v52 += v744;
                v55 = v736;
                v85 += v736;
              }

              v95 += v748;
              v86 += 4 * v751;
              --v762;
            }

            while (v762);
            goto LABEL_691;
          case 20:
            v739 = v94;
            v714 = v17;
            v275 = v56;
            v722 = -(v55 * v731);
            v276 = 4 * v38;
            v277 = 16 * v730;
            v278 = -v732;
            do
            {
              v279 = v756[0];
              do
              {
                v12.i32[0] = 1.0;
                v13.i32[0] = 1.0;
                if (!v56 || (v13.i32[0] = bswap32(*v85), v13.f32[0] > 0.0))
                {
                  if (v38 && (v12.i32[0] = bswap32(*v86), v12.f32[0] <= 0.0))
                  {
                    *v95 = *v52;
                    *v86 = bswap32(v13.u32[0]);
                  }

                  else
                  {
                    v280 = v89;
                    v763 = 0uLL;
                    v764 = 0;
                    v281 = vrev32q_s8(*v95);
                    v706 = vrev32q_s8(*v52);
                    PDAsoftlightPDA(&v763, *v281.i8, *&v281.i32[1], *&v281.i32[2], *&v281.i32[3], *v12.i64, *v13.f32, *v706.i64, v15, v2, v25, v3, v36, v56, v87, v89, *v706.i8, *&v706.i32[2], *&v706.i32[3], v13.f32[0]);
                    LODWORD(v38) = v755;
                    v282 = vrev32q_s8(v763);
                    if (v755)
                    {
                      v283 = bswap32(v764);
                      *v95 = v282;
                      *v86 = v283;
                    }

                    else
                    {
                      *v95 = v282;
                    }

                    v56 = v753;
                    v89 = v280;
                    v278 = -v732;
                    v277 = 16 * v730;
                  }
                }

                v284 = &v52[v730];
                if (v284 >= v89)
                {
                  v285 = v278;
                }

                else
                {
                  v285 = 0;
                }

                v85 += v275 + v285;
                v52 = &v284[v285];
                v86 += v276;
                v95 = (v95 + v277);
                --v279;
              }

              while (v279);
              if (v82)
              {
                v286 = i64 + 16 * v744;
                v55 = v736;
                v287 = v722;
                if (v286 < v82)
                {
                  v287 = 0;
                }

                v85 = (v739 + 4 * v736 + 4 * v287);
                v288 = -(v744 * v731);
                if (v286 < v82)
                {
                  v288 = 0;
                }

                v52 = (v286 + 16 * v288);
                v89 += 16 * v288 + 16 * v744;
                v739 += 4 * v736 + 4 * v287;
                i64 = v52;
              }

              else
              {
                v52 += v744;
                v55 = v736;
                v85 += v736;
              }

              v95 += v748;
              v86 += 4 * v751;
              --v762;
            }

            while (v762);
            goto LABEL_691;
          case 21:
            v739 = v94;
            v714 = v17;
            v297 = v56;
            v723 = -(v55 * v731);
            v298 = 4 * v38;
            v299 = 16 * v730;
            v300 = -v732;
            do
            {
              v301 = v756[0];
              do
              {
                v302 = 1.0;
                v13.i32[0] = 1.0;
                if (!v56 || (v13.i32[0] = bswap32(*v85), v13.f32[0] > 0.0))
                {
                  if (v38 && (v302 = COERCE_FLOAT(bswap32(*v86)), v302 <= 0.0))
                  {
                    *v95 = *v52;
                    *v86 = bswap32(v13.u32[0]);
                  }

                  else
                  {
                    v303 = v89;
                    v763 = 0uLL;
                    v764 = 0;
                    v304 = vrev32q_s8(*v95);
                    v707 = vrev32q_s8(*v52);
                    PDAhardlightPDA(v763.i32, *v304.i32, *&v304.i32[1], *&v304.i32[2], *&v304.i32[3], v302, *v13.i64, *v707.i64, v15, *v707.i32, *&v707.i32[1], *&v707.i32[2], *&v707.i32[3], v13.f32[0]);
                    LODWORD(v38) = v755;
                    if (v755)
                    {
                      v305 = bswap32(v764);
                      *v95 = vrev32q_s8(v763);
                      *v86 = v305;
                    }

                    else
                    {
                      *v95 = vrev32q_s8(v763);
                    }

                    LODWORD(v56) = v753;
                    v89 = v303;
                    v300 = -v732;
                    v299 = 16 * v730;
                  }
                }

                v306 = &v52[v730];
                if (v306 >= v89)
                {
                  v307 = v300;
                }

                else
                {
                  v307 = 0;
                }

                v85 += v297 + v307;
                v52 = &v306[v307];
                v86 += v298;
                v95 = (v95 + v299);
                --v301;
              }

              while (v301);
              if (v82)
              {
                v308 = i64 + 16 * v744;
                v55 = v736;
                v309 = v723;
                if (v308 < v82)
                {
                  v309 = 0;
                }

                v85 = (v739 + 4 * v736 + 4 * v309);
                v310 = -(v744 * v731);
                if (v308 < v82)
                {
                  v310 = 0;
                }

                v52 = (v308 + 16 * v310);
                v89 += 16 * v310 + 16 * v744;
                v739 += 4 * v736 + 4 * v309;
                i64 = v52;
              }

              else
              {
                v52 += v744;
                v55 = v736;
                v85 += v736;
              }

              v95 += v748;
              v86 += 4 * v751;
              --v762;
            }

            while (v762);
            goto LABEL_691;
          case 22:
            while (1)
            {
              v366 = v756[0];
              do
              {
                v8.i32[0] = 1.0;
                v9.i32[0] = 1.0;
                if (v56)
                {
                  v9.i32[0] = bswap32(*v85);
                  if (v9.f32[0] <= 0.0)
                  {
                    goto LABEL_603;
                  }
                }

                if (v38)
                {
                  v8.i32[0] = bswap32(*v86);
                  if (v8.f32[0] <= 0.0)
                  {
                    v8 = *v52;
                    v376 = bswap32(v9.u32[0]);
                    goto LABEL_601;
                  }
                }

                v367 = *v52;
                *v367.i32 = (v8.f32[0] + v9.f32[0]) - (v8.f32[0] * v9.f32[0]);
                v368 = vsubq_f32(vdupq_lane_s32(*v8.f32, 0), vrev32q_s8(*v95));
                v369 = vsubq_f32(vdupq_lane_s32(*v9.f32, 0), vrev32q_s8(*v52));
                v370 = vmulq_n_f32(v368, v9.f32[0]);
                v371 = vmulq_n_f32(v369, v8.f32[0]);
                v372 = vsubq_f32(vaddq_f32(v368, v369), v370);
                v373 = vsubq_f32(v370, v371);
                v374 = vaddq_f32(vsubq_f32(v372, v371), vbslq_s8(vcltzq_f32(v373), vnegq_f32(v373), v373));
                v9 = vdupq_lane_s32(*v367.i8, 0);
                v375 = vsubq_f32(v9, v374);
                if (v38)
                {
                  v376 = bswap32(v367.u32[0]);
                  v8 = vrev32q_s8(v375);
LABEL_601:
                  *v95 = v8;
                  *v86 = v376;
                  goto LABEL_603;
                }

                v8 = vrev32q_s8(v375);
                *v95 = v8;
LABEL_603:
                v377 = &v52[v730];
                if (v377 >= v89)
                {
                  v378 = -v732;
                }

                else
                {
                  v378 = 0;
                }

                v85 += v56 + v378;
                v52 = &v377[v378];
                v86 += 4 * v38;
                v95 += v730;
                --v366;
              }

              while (v366);
              if (v82)
              {
                v379 = i64 + 16 * v744;
                if (v379 >= v82)
                {
                  v380 = -(v55 * v731);
                }

                else
                {
                  v380 = 0;
                }

                v94 += 4 * v55 + 4 * v380;
                if (v379 >= v82)
                {
                  v381 = -(v744 * v731);
                }

                else
                {
                  v381 = 0;
                }

                v52 = (v379 + 16 * v381);
                v89 += 16 * v381 + 16 * v744;
                v85 = v94;
                i64 = v52;
              }

              else
              {
                v52 += v744;
                v85 += v55;
              }

              v95 += v748;
              v86 += 4 * v751;
              if (!--v762)
              {
                goto LABEL_883;
              }
            }

          case 23:
            v396.i64[0] = 0xC0000000C0000000;
            v396.i64[1] = 0xC0000000C0000000;
            break;
          case 24:
            v739 = v94;
            v714 = v17;
            v199 = v56;
            v720 = -(v55 * v731);
            v200 = 4 * v38;
            v201 = 16 * v730;
            v202 = -v732;
            do
            {
              v203 = v756[0];
              do
              {
                v204 = 1.0;
                v13.i32[0] = 1.0;
                if (!v56 || (v13.i32[0] = bswap32(*v85), v13.f32[0] > 0.0))
                {
                  if (v38 && (v204 = COERCE_FLOAT(bswap32(*v86)), v204 <= 0.0))
                  {
                    *v95 = *v52;
                    *v86 = bswap32(v13.u32[0]);
                  }

                  else
                  {
                    v205 = v89;
                    v763 = 0uLL;
                    v764 = 0;
                    v206 = vrev32q_s8(*v95);
                    v704 = vrev32q_s8(*v52);
                    PDAhuePDA(v763.i32, *v206.i32, *&v206.i32[1], *&v206.i32[2], *&v206.i32[3], v204, *v13.i64, *v704.i64, v15, *v704.i32, *&v704.i32[1], *&v704.i32[2], *&v704.i32[3], v13.f32[0]);
                    LODWORD(v38) = v755;
                    if (v755)
                    {
                      v207 = bswap32(v764);
                      *v95 = vrev32q_s8(v763);
                      *v86 = v207;
                    }

                    else
                    {
                      *v95 = vrev32q_s8(v763);
                    }

                    LODWORD(v56) = v753;
                    v89 = v205;
                    v202 = -v732;
                    v201 = 16 * v730;
                  }
                }

                v208 = &v52[v730];
                if (v208 >= v89)
                {
                  v209 = v202;
                }

                else
                {
                  v209 = 0;
                }

                v85 += v199 + v209;
                v52 = &v208[v209];
                v86 += v200;
                v95 = (v95 + v201);
                --v203;
              }

              while (v203);
              if (v82)
              {
                v210 = i64 + 16 * v744;
                v55 = v736;
                v211 = v720;
                if (v210 < v82)
                {
                  v211 = 0;
                }

                v85 = (v739 + 4 * v736 + 4 * v211);
                v212 = -(v744 * v731);
                if (v210 < v82)
                {
                  v212 = 0;
                }

                v52 = (v210 + 16 * v212);
                v89 += 16 * v212 + 16 * v744;
                v739 += 4 * v736 + 4 * v211;
                i64 = v52;
              }

              else
              {
                v52 += v744;
                v55 = v736;
                v85 += v736;
              }

              v95 += v748;
              v86 += 4 * v751;
              --v762;
            }

            while (v762);
            goto LABEL_691;
          case 25:
            v739 = v94;
            v714 = v17;
            v185 = v56;
            v719 = -(v55 * v731);
            v186 = 4 * v38;
            v187 = 16 * v730;
            v188 = -v732;
            do
            {
              v189 = v756[0];
              do
              {
                v190 = 1.0;
                v13.i32[0] = 1.0;
                if (!v56 || (v13.i32[0] = bswap32(*v85), v13.f32[0] > 0.0))
                {
                  if (v38 && (v190 = COERCE_FLOAT(bswap32(*v86)), v190 <= 0.0))
                  {
                    *v95 = *v52;
                    *v86 = bswap32(v13.u32[0]);
                  }

                  else
                  {
                    v191 = v89;
                    v763 = 0uLL;
                    v764 = 0;
                    v192 = vrev32q_s8(*v95);
                    v703 = vrev32q_s8(*v52);
                    PDAsaturationPDA(v763.i32, *v192.i32, *&v192.i32[1], *&v192.i32[2], *&v192.i32[3], v190, *v13.i64, *v703.i64, v15, *v703.i32, *&v703.i32[1], *&v703.i32[2], *&v703.i32[3], v13.f32[0]);
                    LODWORD(v38) = v755;
                    if (v755)
                    {
                      v193 = bswap32(v764);
                      *v95 = vrev32q_s8(v763);
                      *v86 = v193;
                    }

                    else
                    {
                      *v95 = vrev32q_s8(v763);
                    }

                    LODWORD(v56) = v753;
                    v89 = v191;
                    v188 = -v732;
                    v187 = 16 * v730;
                  }
                }

                v194 = &v52[v730];
                if (v194 >= v89)
                {
                  v195 = v188;
                }

                else
                {
                  v195 = 0;
                }

                v85 += v185 + v195;
                v52 = &v194[v195];
                v86 += v186;
                v95 = (v95 + v187);
                --v189;
              }

              while (v189);
              if (v82)
              {
                v196 = i64 + 16 * v744;
                v55 = v736;
                v197 = v719;
                if (v196 < v82)
                {
                  v197 = 0;
                }

                v85 = (v739 + 4 * v736 + 4 * v197);
                v198 = -(v744 * v731);
                if (v196 < v82)
                {
                  v198 = 0;
                }

                v52 = (v196 + 16 * v198);
                v89 += 16 * v198 + 16 * v744;
                v739 += 4 * v736 + 4 * v197;
                i64 = v52;
              }

              else
              {
                v52 += v744;
                v55 = v736;
                v85 += v736;
              }

              v95 += v748;
              v86 += 4 * v751;
              --v762;
            }

            while (v762);
            goto LABEL_691;
          case 26:
            v739 = v94;
            v714 = v17;
            v406 = v56;
            v726 = -(v55 * v731);
            v407 = 4 * v38;
            v408 = 16 * v730;
            v409 = -v732;
            do
            {
              v410 = v756[0];
              do
              {
                v13.i32[0] = 1.0;
                v411 = 1.0;
                if (!v56 || (v411 = COERCE_FLOAT(bswap32(*v85)), v411 > 0.0))
                {
                  if (v38 && (v13.i32[0] = bswap32(*v86), v13.f32[0] <= 0.0))
                  {
                    *v95 = *v52;
                    *v86 = bswap32(LODWORD(v411));
                  }

                  else
                  {
                    v412 = v89;
                    v763 = 0uLL;
                    v764 = 0;
                    v413 = vrev32q_s8(*v52);
                    v710 = vrev32q_s8(*v95);
                    PDAluminosityPDA(v763.i32, *v413.i32, *&v413.i32[1], *&v413.i32[2], *&v413.i32[3], v411, *v13.i64, *v710.i64, v15, *v710.i32, *&v710.i32[1], *&v710.i32[2], *&v710.i32[3], v13.f32[0]);
                    LODWORD(v38) = v755;
                    if (v755)
                    {
                      v414 = bswap32(v764);
                      *v95 = vrev32q_s8(v763);
                      *v86 = v414;
                    }

                    else
                    {
                      *v95 = vrev32q_s8(v763);
                    }

                    LODWORD(v56) = v753;
                    v89 = v412;
                    v409 = -v732;
                    v408 = 16 * v730;
                  }
                }

                v415 = &v52[v730];
                if (v415 >= v89)
                {
                  v416 = v409;
                }

                else
                {
                  v416 = 0;
                }

                v85 += v406 + v416;
                v52 = &v415[v416];
                v86 += v407;
                v95 = (v95 + v408);
                --v410;
              }

              while (v410);
              if (v82)
              {
                v417 = i64 + 16 * v744;
                v55 = v736;
                v418 = v726;
                if (v417 < v82)
                {
                  v418 = 0;
                }

                v85 = (v739 + 4 * v736 + 4 * v418);
                v419 = -(v744 * v731);
                if (v417 < v82)
                {
                  v419 = 0;
                }

                v52 = (v417 + 16 * v419);
                v89 += 16 * v419 + 16 * v744;
                v739 += 4 * v736 + 4 * v418;
                i64 = v52;
              }

              else
              {
                v52 += v744;
                v55 = v736;
                v85 += v736;
              }

              v95 += v748;
              v86 += 4 * v751;
              --v762;
            }

            while (v762);
            goto LABEL_691;
          case 27:
            v739 = v94;
            v714 = v17;
            v105 = v56;
            v718 = -(v55 * v731);
            v106 = 4 * v38;
            v107 = 16 * v730;
            v108 = -v732;
            do
            {
              v109 = v756[0];
              do
              {
                v110 = 1.0;
                v13.i32[0] = 1.0;
                if (!v56 || (v13.i32[0] = bswap32(*v85), v13.f32[0] > 0.0))
                {
                  if (v38 && (v110 = COERCE_FLOAT(bswap32(*v86)), v110 <= 0.0))
                  {
                    *v95 = *v52;
                    *v86 = bswap32(v13.u32[0]);
                  }

                  else
                  {
                    v111 = v89;
                    v763 = 0uLL;
                    v764 = 0;
                    v112 = vrev32q_s8(*v95);
                    v702 = vrev32q_s8(*v52);
                    PDAluminosityPDA(v763.i32, *v112.i32, *&v112.i32[1], *&v112.i32[2], *&v112.i32[3], v110, *v13.i64, *v702.i64, v15, *v702.i32, *&v702.i32[1], *&v702.i32[2], *&v702.i32[3], v13.f32[0]);
                    LODWORD(v38) = v755;
                    v113 = vrev32q_s8(v763);
                    if (v755)
                    {
                      v114 = bswap32(v764);
                      *v95 = v113;
                      *v86 = v114;
                    }

                    else
                    {
                      *v95 = v113;
                    }

                    LODWORD(v56) = v753;
                    v89 = v111;
                    v108 = -v732;
                    v107 = 16 * v730;
                  }
                }

                v115 = &v52[v730];
                if (v115 >= v89)
                {
                  v116 = v108;
                }

                else
                {
                  v116 = 0;
                }

                v85 += v105 + v116;
                v52 = &v115[v116];
                v86 += v106;
                v95 = (v95 + v107);
                --v109;
              }

              while (v109);
              if (v82)
              {
                v117 = i64 + 16 * v744;
                v55 = v736;
                v118 = v718;
                if (v117 < v82)
                {
                  v118 = 0;
                }

                v85 = (v739 + 4 * v736 + 4 * v118);
                v119 = -(v744 * v731);
                if (v117 < v82)
                {
                  v119 = 0;
                }

                v52 = (v117 + 16 * v119);
                v89 += 16 * v119 + 16 * v744;
                v739 += 4 * v736 + 4 * v118;
                i64 = v52;
              }

              else
              {
                v52 += v744;
                v55 = v736;
                v85 += v736;
              }

              v95 += v748;
              v86 += 4 * v751;
              --v762;
            }

            while (v762);
LABEL_691:
            v17 = v714;
            LODWORD(v19) = v715;
            v21 = v713;
            v52 = v734;
            goto LABEL_885;
          default:
            goto LABEL_883;
        }

        break;
      }

LABEL_643:
      v397 = v756[0];
      while (1)
      {
        v10.i32[0] = 1.0;
        v9.i32[0] = 1.0;
        if (!v56 || (v9.i32[0] = bswap32(*v85), v9.f32[0] > 0.0))
        {
          if (v38 && (v10.i32[0] = bswap32(*v86), v10.f32[0] <= 0.0))
          {
            v400 = v9.i32[0];
            v9 = *v52;
          }

          else
          {
            v398 = *v95;
            *v398.i32 = (v10.f32[0] + v9.f32[0]) - (v10.f32[0] * v9.f32[0]);
            v10 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vrev32q_s8(*v95));
            v399 = vsubq_f32(vdupq_lane_s32(*v9.f32, 0), vrev32q_s8(*v52));
            v9 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v398.i8, 0), vmlaq_f32(vaddq_f32(v10, v399), v396, vmulq_f32(v399, v10))));
            if (!v38)
            {
              *v95 = v9;
              goto LABEL_653;
            }

            v400 = v398.i32[0];
          }

          *v95 = v9;
          *v86 = bswap32(v400);
        }

LABEL_653:
        v401 = &v52[v730];
        if (v401 >= v89)
        {
          v402 = -v732;
        }

        else
        {
          v402 = 0;
        }

        v85 += v56 + v402;
        v52 = &v401[v402];
        v86 += 4 * v38;
        v95 += v730;
        if (!--v397)
        {
          if (v82)
          {
            v403 = i64 + 16 * v744;
            if (v403 >= v82)
            {
              v404 = -(v55 * v731);
            }

            else
            {
              v404 = 0;
            }

            v94 += 4 * v55 + 4 * v404;
            if (v403 >= v82)
            {
              v405 = -(v744 * v731);
            }

            else
            {
              v405 = 0;
            }

            v52 = (v403 + 16 * v405);
            v89 += 16 * v405 + 16 * v744;
            v85 = v94;
            i64 = v52;
          }

          else
          {
            v52 += v744;
            v85 += v55;
          }

          v95 += v748;
          v86 += 4 * v751;
          if (!--v762)
          {
            goto LABEL_883;
          }

          goto LABEL_643;
        }
      }
    }

    v82 = 0;
    i64 = 0;
    v87 = v37;
    v88 = v3 * v37;
    v751 = v728 - v38 * v37;
    v89 = -1;
    v730 = v3;
    v731 = v55;
    v90 = v744;
    v732 = v744;
    goto LABEL_61;
  }

  v26 = *(v2 + 128);
  if ((v26 | 8) == 8)
  {
    if ((*v2 & 0xFF00) == 0x400)
    {
      CMYKF_mark_constmask(v2, v19, *v8.i64, v9, v10, v11, v12, v13, v14, v15, v25, v3, v4, v5, v26, v7);
    }

    else
    {
      CMYKF_mark_pixelmask(v2, v19, *v8.i64, v9, v10, v11, v12, v13, v14, v15);
    }

    return 1;
  }

  v39 = *(v2 + 112);
  v40 = *(v2 + 116);
  v41 = (v39 + 15) & 0xFFFFFFF0;
  v42 = v41 * v40;
  if (v42 <= 4096)
  {
    v44 = &v763;
    goto LABEL_37;
  }

  v43 = malloc_type_malloc(v42, 0x100004077774924uLL);
  if (v43)
  {
    v44 = v43;
    v25 = *(v21 + 136);
    LODWORD(v26) = *(v21 + 128);
LABEL_37:
    CGSConvertBitsToMask(v25, *(v21 + 124), v44, v41, v39, v40, v26);
    v72 = *(v21 + 112);
    v756[6] = *(v21 + 96);
    v757 = v72;
    v73 = *(v21 + 144);
    v758 = *(v21 + 128);
    v759 = v73;
    v74 = *(v21 + 48);
    v756[2] = *(v21 + 32);
    v756[3] = v74;
    v75 = *(v21 + 80);
    v756[4] = *(v21 + 64);
    v756[5] = v75;
    v76 = *v21;
    v77 = *(v21 + 16);
    v756[0] = *v21;
    v756[1] = v77;
    HIDWORD(v757) = (v39 + 15) & 0xFFFFFFF0;
    *(&v758 + 1) = v44;
    if (BYTE1(v756[0]) << 8 == 1024)
    {
      CMYKF_mark_constmask(v756, v19, *&v76, v77, v66, v67, v68, v69, v70, v71, v60, v61, v62, v63, v64, v65);
    }

    else
    {
      CMYKF_mark_pixelmask(v756, v19, *&v76, v77, v66, v67, v68, v69, v70, v71);
    }

    if (v44 == &v763)
    {
      return 1;
    }

    v78 = v44;
    goto LABEL_1265;
  }

  return 1;
}

void CMYKF_mark_constmask(uint64_t a1, uint64_t a2, double a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16 = *(a1 + 48);
  v17 = *(a1 + 136);
  v18 = *(a1 + 96);
  if (v18)
  {
    v19 = COERCE_FLOAT(bswap32(*v18));
  }

  else
  {
    v19 = 1.0;
  }

  v20 = *(a1 + 4);
  v21 = *(a1 + 8);
  v22 = **(a1 + 88);
  v23 = *(a1 + 12);
  v24 = *(a1 + 16);
  if (v16)
  {
    v25 = *(a1 + 32) >> 2;
    v26 = (v16 + 4 * v25 * v24 + 4 * v23);
    v27 = 1;
    if (!v17)
    {
      return;
    }
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v27 = 0;
    if (!v17)
    {
      return;
    }
  }

  v28 = v25 - v20;
  if (v16)
  {
    v25 -= v20;
  }

  v29 = *(a1 + 28) >> 4;
  v30 = vrev32q_s8(v22);
  v31 = (*(a1 + 40) + 16 * v29 * v24 + 16 * v23);
  v32 = *(a1 + 124);
  v33 = v17 + *(a1 + 108) * v32 + *(a1 + 104);
  v34 = v32 - v20;
  v35 = v29 - v20;
  v346 = v30;
  v347 = v19;
  v36 = v35;
  v37 = v34;
  v345 = v20;
  v38 = v25;
  switch(a2)
  {
    case 0:
      if (v16)
      {
        v39 = 4 * v27;
        do
        {
          v40 = v20;
          do
          {
            v41 = *v33;
            if (*v33)
            {
              if (v41 == 255)
              {
                v31->i64[0] = 0;
                v31->i64[1] = 0;
                *v26 = 0;
              }

              else
              {
                v42 = (v41 ^ 0xFFu) * 0.0039216;
                v43 = bswap32(COERCE_UNSIGNED_INT(v42 * COERCE_FLOAT(bswap32(*v26))));
                *v31 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v31), v42));
                *v26 = v43;
              }
            }

            ++v33;
            ++v31;
            v26 = (v26 + v39);
            --v40;
          }

          while (v40);
          v33 += v34;
          v31 += v35;
          v26 += v25;
          --v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v261 = v20;
          do
          {
            v262 = *v33;
            if (*v33)
            {
              if (v262 == 255)
              {
                v31->i64[0] = 0;
                v31->i64[1] = 0;
              }

              else
              {
                *v31 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v31), (v262 ^ 0xFFu) * 0.0039216));
              }
            }

            ++v33;
            ++v31;
            --v261;
          }

          while (v261);
          v33 += v34;
          v31 += v35;
          --v21;
        }

        while (v21);
      }

      return;
    case 1:
      v140 = v33 & 3;
      if (!v16)
      {
        v263 = -1 << (8 * v140);
        if ((v33 & 3) != 0)
        {
          v264 = v33 & 0xFC;
        }

        else
        {
          v264 = v33;
        }

        if ((v33 & 3) != 0)
        {
          v265 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v263 = -1;
          v265 = v33;
        }

        if ((v33 & 3) != 0)
        {
          v266 = &v31[-(v33 & 3)];
        }

        else
        {
          v266 = v31;
        }

        if ((v33 & 3) != 0)
        {
          v267 = v140 + v20;
        }

        else
        {
          v267 = v20;
        }

        if (((v267 + v264) & 3) != 0)
        {
          v268 = 4 - ((v267 + v264) & 3);
          v140 += v268;
          v269 = 0xFFFFFFFF >> (8 * v268);
          if (v267 >= 4)
          {
            v270 = v269;
          }

          else
          {
            v270 = 0;
          }

          if (v267 >= 4)
          {
            v269 = -1;
          }

          v263 &= v269;
        }

        else
        {
          v270 = 0;
        }

        v333 = v34 - v140;
        v334 = v267 >> 2;
        v335 = v35 - v140;
        while (1)
        {
          v336 = *v265 & v263;
          v337 = v334;
          v338 = v270;
          if (!v336)
          {
            goto LABEL_527;
          }

LABEL_525:
          if (v336 == -1)
          {
            break;
          }

          while (1)
          {
            if (v336)
            {
              v340 = v22;
              if (v336 != 255)
              {
                v340 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v336 * 0.0039216), vrev32q_s8(*v266), 1.0 - (v336 * 0.0039216)));
              }

              *v266 = v340;
            }

            if (BYTE1(v336))
            {
              v341 = v22;
              if (BYTE1(v336) != 255)
              {
                v341 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, BYTE1(v336) * 0.0039216), vrev32q_s8(v266[1]), 1.0 - (BYTE1(v336) * 0.0039216)));
              }

              v266[1] = v341;
            }

            if (BYTE2(v336))
            {
              v342 = v22;
              if (BYTE2(v336) != 255)
              {
                v342 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, BYTE2(v336) * 0.0039216), vrev32q_s8(v266[2]), 1.0 - (BYTE2(v336) * 0.0039216)));
              }

              v266[2] = v342;
            }

            v343 = HIBYTE(v336);
            if (v343 == 255)
            {
              goto LABEL_545;
            }

            if (v343)
            {
              v266[3] = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v343 * 0.0039216), vrev32q_s8(v266[3]), 1.0 - (v343 * 0.0039216)));
            }

LABEL_527:
            while (1)
            {
              v339 = v337;
              v266 += 4;
              --v337;
              ++v265;
              if (v339 < 2)
              {
                break;
              }

              v336 = *v265;
              if (*v265)
              {
                goto LABEL_525;
              }
            }

            if (!v338)
            {
              break;
            }

            v338 = 0;
            v336 = *v265 & v270;
          }

          v265 = (v265 + v333);
          v266 += v335;
          if (!--v21)
          {
            return;
          }
        }

        *v266 = v22;
        v266[1] = v22;
        v266[2] = v22;
LABEL_545:
        v266[3] = v22;
        goto LABEL_527;
      }

      v141 = -1 << (8 * v140);
      v142 = &v31[-(v33 & 3)];
      if ((v33 & 3) != 0)
      {
        v143 = v33 & 0xFC;
      }

      else
      {
        v143 = v33;
      }

      if ((v33 & 3) != 0)
      {
        v144 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v141 = -1;
        v144 = v33;
      }

      if ((v33 & 3) != 0)
      {
        v145 = &v26[-(v33 & 3)];
      }

      else
      {
        v145 = v26;
      }

      if ((v33 & 3) != 0)
      {
        v146 = v140 + v20;
      }

      else
      {
        v142 = v31;
        v146 = v20;
      }

      if (((v146 + v143) & 3) != 0)
      {
        v147 = 4 - ((v146 + v143) & 3);
        v140 += v147;
        v148 = 0xFFFFFFFF >> (8 * v147);
        if (v146 >= 4)
        {
          v149 = v148;
        }

        else
        {
          v149 = 0;
        }

        if (v146 >= 4)
        {
          v148 = -1;
        }

        v141 &= v148;
      }

      else
      {
        v149 = 0;
      }

      v300 = v34 - v140;
      v301 = v146 >> 2;
      v302 = v35 - v140;
      v303 = bswap32(LODWORD(v19));
      v304 = v28 - v140;
      do
      {
        v305 = *v144 & v141;
        v306 = v301;
        v307 = v149;
        if (!v305)
        {
          goto LABEL_478;
        }

LABEL_476:
        if (v305 == -1)
        {
          *v142 = v22;
          *v145 = v303;
          v142[1] = v22;
          v145[1] = v303;
          v142[2] = v22;
          v145[2] = v303;
LABEL_496:
          v142[3] = v22;
          v145[3] = v303;
          goto LABEL_478;
        }

        while (1)
        {
          if (v305)
          {
            v309 = v22;
            v310 = v303;
            if (v305 != 255)
            {
              v311 = v305 * 0.0039216;
              v310 = bswap32(COERCE_UNSIGNED_INT((v19 * v311) + (COERCE_FLOAT(bswap32(*v145)) * (1.0 - v311))));
              v309 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v311), vrev32q_s8(*v142), 1.0 - v311));
            }

            *v142 = v309;
            *v145 = v310;
          }

          if (BYTE1(v305))
          {
            v312 = v22;
            v313 = v303;
            if (BYTE1(v305) != 255)
            {
              v314 = BYTE1(v305) * 0.0039216;
              v313 = bswap32(COERCE_UNSIGNED_INT((v19 * v314) + (COERCE_FLOAT(bswap32(v145[1])) * (1.0 - v314))));
              v312 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v314), vrev32q_s8(v142[1]), 1.0 - v314));
            }

            v142[1] = v312;
            v145[1] = v313;
          }

          if (BYTE2(v305))
          {
            v315 = v22;
            v316 = v303;
            if (BYTE2(v305) != 255)
            {
              v317 = BYTE2(v305) * 0.0039216;
              v316 = bswap32(COERCE_UNSIGNED_INT((v19 * v317) + (COERCE_FLOAT(bswap32(v145[2])) * (1.0 - v317))));
              v315 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v317), vrev32q_s8(v142[2]), 1.0 - v317));
            }

            v142[2] = v315;
            v145[2] = v316;
          }

          v318 = HIBYTE(v305);
          if (v318 == 255)
          {
            goto LABEL_496;
          }

          if (v318)
          {
            v319 = v318 * 0.0039216;
            v320 = bswap32(COERCE_UNSIGNED_INT((v19 * v319) + (COERCE_FLOAT(bswap32(v145[3])) * (1.0 - v319))));
            v142[3] = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v319), vrev32q_s8(v142[3]), 1.0 - v319));
            v145[3] = v320;
          }

LABEL_478:
          while (1)
          {
            v308 = v306;
            v142 += 4;
            v145 += 4;
            --v306;
            ++v144;
            if (v308 < 2)
            {
              break;
            }

            v305 = *v144;
            if (*v144)
            {
              goto LABEL_476;
            }
          }

          if (!v307)
          {
            break;
          }

          v307 = 0;
          v305 = *v144 & v149;
        }

        v144 = (v144 + v300);
        v142 += v302;
        v145 += v304;
        --v21;
      }

      while (v21);
      return;
    case 2:
      *v22.i32 = 1.0 - v19;
      v109 = v33 & 3;
      if (v16)
      {
        v110 = -1 << (8 * v109);
        v111 = &v31[-(v33 & 3)];
        if ((v33 & 3) != 0)
        {
          v112 = v33 & 0xFC;
        }

        else
        {
          v112 = v33;
        }

        if ((v33 & 3) != 0)
        {
          v113 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v110 = -1;
          v113 = v33;
        }

        if ((v33 & 3) != 0)
        {
          v114 = &v26[-(v33 & 3)];
        }

        else
        {
          v114 = v26;
        }

        if ((v33 & 3) != 0)
        {
          v115 = v109 + v20;
        }

        else
        {
          v111 = v31;
          v115 = v20;
        }

        if (((v115 + v112) & 3) != 0)
        {
          v116 = 4 - ((v115 + v112) & 3);
          v109 += v116;
          v117 = 0xFFFFFFFF >> (8 * v116);
          if (v115 >= 4)
          {
            v118 = v117;
          }

          else
          {
            v118 = 0;
          }

          if (v115 >= 4)
          {
            v117 = -1;
          }

          v110 &= v117;
        }

        else
        {
          v118 = 0;
        }

        v274 = v34 - v109;
        v275 = v35 - v109;
        v276 = v115 >> 2;
        v277 = vdupq_lane_s32(*v22.i8, 0);
        v278 = v28 - v109;
        while (1)
        {
          v279 = *v113 & v110;
          v280 = v276;
          v281 = v118;
          if (!v279)
          {
            goto LABEL_457;
          }

LABEL_455:
          if (v279 == -1)
          {
            break;
          }

          while (1)
          {
            if (v279)
            {
              v288 = v279 * 0.0039216;
              v289 = 1.0 - (v19 * v288);
              v290 = bswap32(COERCE_UNSIGNED_INT((v19 * v288) + (COERCE_FLOAT(bswap32(*v114)) * v289)));
              *v111 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v288), vrev32q_s8(*v111), v289));
              *v114 = v290;
            }

            if ((v279 & 0xFF00) != 0)
            {
              v291 = BYTE1(v279) * 0.0039216;
              v292 = 1.0 - (v19 * v291);
              v293 = bswap32(COERCE_UNSIGNED_INT((v19 * v291) + (COERCE_FLOAT(bswap32(v114[1])) * v292)));
              v111[1] = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v291), vrev32q_s8(v111[1]), v292));
              v114[1] = v293;
            }

            if ((v279 & 0xFF0000) != 0)
            {
              v294 = BYTE2(v279) * 0.0039216;
              v295 = 1.0 - (v19 * v294);
              v296 = bswap32(COERCE_UNSIGNED_INT((v19 * v294) + (COERCE_FLOAT(bswap32(v114[2])) * v295)));
              v111[2] = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v294), vrev32q_s8(v111[2]), v295));
              v114[2] = v296;
            }

            v297 = HIBYTE(v279);
            if (v297)
            {
              v298 = v297 * 0.0039216;
              v299 = v19 * v298;
              v285 = vmlaq_n_f32(vmulq_n_f32(v30, v298), vrev32q_s8(v111[3]), 1.0 - (v19 * v298));
              v286 = v299 + (COERCE_FLOAT(bswap32(v114[3])) * (1.0 - v299));
              goto LABEL_470;
            }

LABEL_457:
            while (1)
            {
              v287 = v280;
              v111 += 4;
              v114 += 4;
              --v280;
              ++v113;
              if (v287 < 2)
              {
                break;
              }

              v279 = *v113;
              if (*v113)
              {
                goto LABEL_455;
              }
            }

            if (!v281)
            {
              break;
            }

            v281 = 0;
            v279 = *v113 & v118;
          }

          v113 = (v113 + v274);
          v111 += v275;
          v114 += v278;
          if (!--v21)
          {
            return;
          }
        }

        v282 = bswap32(COERCE_UNSIGNED_INT(v19 + (COERCE_FLOAT(bswap32(*v114)) * *v22.i32)));
        *v111 = vrev32q_s8(vmlaq_f32(v30, v277, vrev32q_s8(*v111)));
        *v114 = v282;
        v283 = bswap32(COERCE_UNSIGNED_INT(v19 + (COERCE_FLOAT(bswap32(v114[1])) * *v22.i32)));
        v111[1] = vrev32q_s8(vmlaq_f32(v30, v277, vrev32q_s8(v111[1])));
        v114[1] = v283;
        v284 = bswap32(COERCE_UNSIGNED_INT(v19 + (COERCE_FLOAT(bswap32(v114[2])) * *v22.i32)));
        v111[2] = vrev32q_s8(vmlaq_f32(v30, v277, vrev32q_s8(v111[2])));
        v114[2] = v284;
        v285 = vmlaq_f32(v30, v277, vrev32q_s8(v111[3]));
        v286 = v19 + (COERCE_FLOAT(bswap32(v114[3])) * *v22.i32);
LABEL_470:
        v111[3].i32[0] = bswap32(v285.u32[0]);
        *(v111[3].i64 + 4) = vrev32_s8(vext_s8(*v285.i8, *&vextq_s8(v285, v285, 8uLL), 4uLL));
        v111[3].i32[3] = bswap32(v285.u32[3]);
        v114[3] = bswap32(LODWORD(v286));
        goto LABEL_457;
      }

      v250 = -1 << (8 * v109);
      if ((v33 & 3) != 0)
      {
        v251 = v33 & 0xFC;
      }

      else
      {
        v251 = v33;
      }

      if ((v33 & 3) != 0)
      {
        v252 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v250 = -1;
        v252 = v33;
      }

      if ((v33 & 3) != 0)
      {
        v253 = &v31[-(v33 & 3)];
      }

      else
      {
        v253 = v31;
      }

      if ((v33 & 3) != 0)
      {
        v254 = v109 + v20;
      }

      else
      {
        v254 = v20;
      }

      if (((v254 + v251) & 3) != 0)
      {
        v255 = 4 - ((v254 + v251) & 3);
        v109 += v255;
        v256 = 0xFFFFFFFF >> (8 * v255);
        if (v254 >= 4)
        {
          v257 = v256;
        }

        else
        {
          v257 = 0;
        }

        if (v254 >= 4)
        {
          v256 = -1;
        }

        v250 &= v256;
      }

      else
      {
        v257 = 0;
      }

      v321 = v34 - v109;
      v322 = v254 >> 2;
      v323 = vdupq_lane_s32(*v22.i8, 0);
      v324 = v35 - v109;
      do
      {
        v325 = *v252 & v250;
        v326 = v322;
        v327 = v257;
        if (!v325)
        {
          goto LABEL_506;
        }

LABEL_504:
        if (v325 == -1)
        {
          v328 = vrev32q_s8(vmlaq_f32(v30, v323, vrev32q_s8(v253[1])));
          *v253 = vrev32q_s8(vmlaq_f32(v30, v323, vrev32q_s8(*v253)));
          v253[1] = v328;
          v329 = v253[3];
          v253[2] = vrev32q_s8(vmlaq_f32(v30, v323, vrev32q_s8(v253[2])));
          v330 = vmlaq_f32(v30, v323, vrev32q_s8(v329));
LABEL_519:
          v253[3].i32[0] = bswap32(v330.u32[0]);
          *(v253[3].i64 + 4) = vrev32_s8(vext_s8(*v330.i8, *&vextq_s8(v330, v330, 8uLL), 4uLL));
          v253[3].i32[3] = bswap32(v330.u32[3]);
          goto LABEL_506;
        }

        while (1)
        {
          if (v325)
          {
            *v253 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v325 * 0.0039216), vrev32q_s8(*v253), 1.0 - (v19 * (v325 * 0.0039216))));
          }

          if ((v325 & 0xFF00) != 0)
          {
            v253[1] = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, BYTE1(v325) * 0.0039216), vrev32q_s8(v253[1]), 1.0 - (v19 * (BYTE1(v325) * 0.0039216))));
          }

          if ((v325 & 0xFF0000) != 0)
          {
            v253[2] = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, BYTE2(v325) * 0.0039216), vrev32q_s8(v253[2]), 1.0 - (v19 * (BYTE2(v325) * 0.0039216))));
          }

          v332 = HIBYTE(v325);
          if (v332)
          {
            v330 = vmlaq_n_f32(vmulq_n_f32(v30, v332 * 0.0039216), vrev32q_s8(v253[3]), 1.0 - (v19 * (v332 * 0.0039216)));
            goto LABEL_519;
          }

LABEL_506:
          while (1)
          {
            v331 = v326;
            v253 += 4;
            --v326;
            ++v252;
            if (v331 < 2)
            {
              break;
            }

            v325 = *v252;
            if (*v252)
            {
              goto LABEL_504;
            }
          }

          if (!v327)
          {
            break;
          }

          v327 = 0;
          v325 = *v252 & v257;
        }

        v252 = (v252 + v321);
        v253 += v324;
        --v21;
      }

      while (v21);
      return;
    case 3:
      v125 = 4 * v27;
      do
      {
        v126 = v20;
        do
        {
          v127 = *v33;
          if (*v33)
          {
            if (v127 == 255)
            {
              v128 = COERCE_FLOAT(bswap32(*v26));
              v129 = bswap32(COERCE_UNSIGNED_INT(v19 * v128));
              v130 = vmulq_n_f32(v30, v128);
            }

            else
            {
              v131 = v127 * 0.0039216;
              v132 = COERCE_FLOAT(bswap32(*v26));
              v133 = v131 * v132;
              v129 = bswap32(COERCE_UNSIGNED_INT((v19 * (v131 * v132)) + (v132 * (1.0 - v131))));
              v130 = vmlaq_n_f32(vmulq_n_f32(v30, v133), vrev32q_s8(*v31), 1.0 - v131);
            }

            *v31 = vrev32q_s8(v130);
            *v26 = v129;
          }

          ++v33;
          ++v31;
          v26 = (v26 + v125);
          --v126;
        }

        while (v126);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        --v21;
      }

      while (v21);
      return;
    case 4:
      v79 = 4 * v27;
      do
      {
        v80 = v20;
        do
        {
          v81 = *v33;
          if (*v33)
          {
            if (v81 == 255)
            {
              v82 = 1.0 - COERCE_FLOAT(bswap32(*v26));
              v83 = bswap32(COERCE_UNSIGNED_INT(v19 * v82));
              v84 = vmulq_n_f32(v30, v82);
            }

            else
            {
              v85 = v81 * 0.0039216;
              v86 = COERCE_FLOAT(bswap32(*v26));
              v87 = v85 * (1.0 - v86);
              v83 = bswap32(COERCE_UNSIGNED_INT((v19 * v87) + (v86 * (1.0 - v85))));
              v84 = vmlaq_n_f32(vmulq_n_f32(v30, v87), vrev32q_s8(*v31), 1.0 - v85);
            }

            *v31 = vrev32q_s8(v84);
            *v26 = v83;
          }

          ++v33;
          ++v31;
          v26 = (v26 + v79);
          --v80;
        }

        while (v80);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        --v21;
      }

      while (v21);
      return;
    case 5:
      v167 = 4 * v27;
      do
      {
        v168 = v20;
        do
        {
          if (*v33)
          {
            v169 = COERCE_FLOAT(bswap32(*v26));
            v170 = *v33 * 0.0039216;
            v171 = 1.0 - (v19 * v170);
            *v31 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v31), v171), vmulq_n_f32(v30, v170), v169));
            *v26 = bswap32(COERCE_UNSIGNED_INT((v171 * v169) + ((v19 * v170) * v169)));
          }

          ++v33;
          ++v31;
          v26 = (v26 + v167);
          --v168;
        }

        while (v168);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        --v21;
      }

      while (v21);
      return;
    case 6:
      v188 = 4 * v27;
      while (1)
      {
        v189 = v20;
        do
        {
          v190 = *v33;
          if (!*v33)
          {
            goto LABEL_280;
          }

          v191 = COERCE_FLOAT(bswap32(*v26));
          v192 = 1.0 - v191;
          if ((1.0 - v191) >= 1.0)
          {
            v196 = v190 * 0.0039216;
            v194 = bswap32(COERCE_UNSIGNED_INT(v19 * v196));
            v195 = vmulq_n_f32(v30, v196);
          }

          else
          {
            if (v192 <= 0.0)
            {
              goto LABEL_280;
            }

            v193 = v190 * 0.0039216;
            v194 = bswap32(COERCE_UNSIGNED_INT(v191 + ((v19 * v193) * v192)));
            v195 = vmlaq_n_f32(vrev32q_s8(*v31), vmulq_n_f32(v30, v193), v192);
          }

          *v31 = vrev32q_s8(v195);
          *v26 = v194;
LABEL_280:
          ++v33;
          ++v31;
          v26 = (v26 + v188);
          --v189;
        }

        while (v189);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        if (!--v21)
        {
          return;
        }
      }

    case 7:
      if (v16)
      {
        v134 = 4 * v27;
        do
        {
          v135 = v20;
          do
          {
            v136 = *v33;
            if (*v33)
            {
              if (v136 == 255)
              {
                v137 = vmulq_n_f32(vrev32q_s8(*v31), v19);
                v138 = v19 * COERCE_FLOAT(bswap32(*v26));
              }

              else
              {
                v139 = (v19 * (v136 * 0.0039216)) + (1.0 - (v136 * 0.0039216));
                v137 = vmulq_n_f32(vrev32q_s8(*v31), v139);
                v138 = v139 * COERCE_FLOAT(bswap32(*v26));
              }

              *v31 = vrev32q_s8(v137);
              *v26 = bswap32(LODWORD(v138));
            }

            ++v33;
            ++v31;
            v26 = (v26 + v134);
            --v135;
          }

          while (v135);
          v33 += v34;
          v31 += v35;
          v26 += v25;
          --v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v258 = v20;
          do
          {
            v259 = *v33;
            if (*v33)
            {
              if (v259 == 255)
              {
                v260 = vmulq_n_f32(vrev32q_s8(*v31), v19);
              }

              else
              {
                v260 = vmulq_n_f32(vrev32q_s8(*v31), (v19 * (v259 * 0.0039216)) + (1.0 - (v259 * 0.0039216)));
              }

              *v31 = vrev32q_s8(v260);
            }

            ++v33;
            ++v31;
            --v258;
          }

          while (v258);
          v33 += v34;
          v31 += v35;
          --v21;
        }

        while (v21);
      }

      return;
    case 8:
      v208 = 1.0 - v19;
      if (v16)
      {
        v209 = 4 * v27;
        do
        {
          v210 = v20;
          do
          {
            v211 = *v33;
            if (*v33)
            {
              if (v211 == 255)
              {
                v212 = vmulq_n_f32(vrev32q_s8(*v31), v208);
                v213 = v208 * COERCE_FLOAT(bswap32(*v26));
              }

              else
              {
                v214 = (v19 * (v211 * -0.0039216)) + 1.0;
                v212 = vmulq_n_f32(vrev32q_s8(*v31), v214);
                v213 = v214 * COERCE_FLOAT(bswap32(*v26));
              }

              *v31 = vrev32q_s8(v212);
              *v26 = bswap32(LODWORD(v213));
            }

            ++v33;
            ++v31;
            v26 = (v26 + v209);
            --v210;
          }

          while (v210);
          v33 += v34;
          v31 += v35;
          v26 += v25;
          --v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v271 = v20;
          do
          {
            v272 = *v33;
            if (*v33)
            {
              if (v272 == 255)
              {
                v273 = vmulq_n_f32(vrev32q_s8(*v31), v208);
              }

              else
              {
                v273 = vmulq_n_f32(vrev32q_s8(*v31), (v19 * (v272 * -0.0039216)) + 1.0);
              }

              *v31 = vrev32q_s8(v273);
            }

            ++v33;
            ++v31;
            --v271;
          }

          while (v271);
          v33 += v34;
          v31 += v35;
          --v21;
        }

        while (v21);
      }

      return;
    case 9:
      v92 = 4 * v27;
      do
      {
        v93 = v20;
        do
        {
          if (*v33)
          {
            v94 = *v33 * 0.0039216;
            v95 = COERCE_FLOAT(bswap32(*v26));
            v96 = (1.0 - v94) + (v19 * v94);
            *v31 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v31), v96), vmulq_n_f32(v30, v94), 1.0 - v95));
            *v26 = bswap32(COERCE_UNSIGNED_INT((v96 * v95) + ((v19 * v94) * (1.0 - v95))));
          }

          ++v33;
          ++v31;
          v26 = (v26 + v92);
          --v93;
        }

        while (v93);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        --v21;
      }

      while (v21);
      return;
    case 10:
      v203 = 4 * v27;
      do
      {
        v204 = v20;
        do
        {
          if (*v33)
          {
            v205 = COERCE_FLOAT(bswap32(*v26));
            v206 = *v33 * 0.0039216;
            v207 = 1.0 - (v19 * v206);
            *v31 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v31), v207), vmulq_n_f32(v30, v206), 1.0 - v205));
            *v26 = bswap32(COERCE_UNSIGNED_INT((v207 * v205) + ((v19 * v206) * (1.0 - v205))));
          }

          ++v33;
          ++v31;
          v26 = (v26 + v203);
          --v204;
        }

        while (v204);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        --v21;
      }

      while (v21);
      return;
    case 11:
      if (v16)
      {
        v74 = 4 * v27;
        do
        {
          v75 = v20;
          do
          {
            if (*v33)
            {
              v76 = *v33 * 0.0039216;
              a7.i32[0] = bswap32(*v26);
              a8.f32[0] = (v19 * v76) + a7.f32[0];
              if (a8.f32[0] > 1.0)
              {
                a8.f32[0] = 1.0;
              }

              v77 = vdupq_lane_s32(*a8.f32, 0);
              v78 = bswap32(a8.u32[0]);
              a8 = vrev32q_s8(*v31);
              a6.f32[0] = v19 * v76;
              a6 = vdupq_lane_s32(*a6.f32, 0);
              a7 = vsubq_f32(v77, vsubq_f32(vdupq_lane_s32(*a7.f32, 0), a8));
              *v31 = vrev32q_s8(vaddq_f32(vsubq_f32(a6, vmulq_n_f32(v30, v76)), a7));
              *v26 = v78;
            }

            ++v33;
            ++v31;
            v26 = (v26 + v74);
            --v75;
          }

          while (v75);
          v33 += v34;
          v31 += v35;
          v26 += v25;
          --v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v247 = v20;
          do
          {
            if (*v33)
            {
              v248 = *v33 * 0.0039216;
              a5.f32[0] = v19 * v248;
              a5 = vdupq_lane_s32(*a5.f32, 0);
              *v31 = vrev32q_s8(vaddq_f32(vsubq_f32(a5, vmulq_n_f32(v30, v248)), vrev32q_s8(*v31)));
            }

            ++v33;
            ++v31;
            --v247;
          }

          while (v247);
          v33 += v34;
          v31 += v35;
          --v21;
        }

        while (v21);
      }

      return;
    case 12:
      if (v16)
      {
        v88 = 4 * v27;
        do
        {
          v89 = v20;
          do
          {
            if (*v33)
            {
              v90 = *v33 * 0.0039216;
              v91 = (v19 * v90) + COERCE_FLOAT(bswap32(*v26));
              if (v91 > 1.0)
              {
                v91 = 1.0;
              }

              *v31 = vrev32q_s8(vaddq_f32(vmulq_n_f32(v30, v90), vrev32q_s8(*v31)));
              *v26 = bswap32(LODWORD(v91));
            }

            ++v33;
            ++v31;
            v26 = (v26 + v88);
            --v89;
          }

          while (v89);
          v33 += v34;
          v31 += v35;
          v26 += v25;
          --v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v249 = v20;
          do
          {
            if (*v33)
            {
              *v31 = vrev32q_s8(vaddq_f32(vmulq_n_f32(v30, *v33 * 0.0039216), vrev32q_s8(*v31)));
            }

            ++v33;
            ++v31;
            --v249;
          }

          while (v249);
          v33 += v34;
          v31 += v35;
          --v21;
        }

        while (v21);
      }

      return;
    case 13:
      v178 = 4 * v27;
      a4.i32[0] = 1.0;
      while (1)
      {
        v179 = v20;
        do
        {
          if (*v33)
          {
            v180 = *v33 * 0.0039216;
            a5.f32[0] = v19 * v180;
            if ((v19 * v180) > 0.0)
            {
              v181 = vmulq_n_f32(v30, v180);
              if (v16)
              {
                a6.i32[0] = bswap32(*v26);
                if (a6.f32[0] <= 0.0)
                {
                  goto LABEL_267;
                }
              }

              else
              {
                a6.i32[0] = 1.0;
              }

              v182 = vsubq_f32(vdupq_lane_s32(*a6.f32, 0), vrev32q_s8(*v31));
              v183 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v181);
              v184 = vmulq_f32(v182, v183);
              v185 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a5, a4)), 0), vmlaq_n_f32(v184, v182, 1.0 - a5.f32[0]), v184);
              v186 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a6, a4)), 0), vmlaq_n_f32(v185, v183, 1.0 - a6.f32[0]), v185);
              a5.f32[0] = (a6.f32[0] + a5.f32[0]) - (a6.f32[0] * a5.f32[0]);
              a6 = vdupq_lane_s32(*a5.f32, 0);
              v181 = vsubq_f32(a6, v186);
              if (v16)
              {
LABEL_267:
                v187 = bswap32(a5.u32[0]);
                a5 = vrev32q_s8(v181);
                *v31 = a5;
                *v26 = v187;
                goto LABEL_269;
              }

              a5 = vrev32q_s8(v181);
              *v31 = a5;
            }
          }

LABEL_269:
          ++v33;
          ++v31;
          v26 = (v26 + v178);
          --v179;
        }

        while (v179);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        if (!--v21)
        {
          return;
        }
      }

    case 14:
      v62 = 4 * v27;
      __asm { FMOV            V1.4S, #1.0 }

      while (1)
      {
        v68 = v20;
        do
        {
          if (*v33)
          {
            v69 = *v33 * 0.0039216;
            a5.f32[0] = v19 * v69;
            if ((v19 * v69) > 0.0)
            {
              v70 = vmulq_n_f32(v30, v69);
              if (v16)
              {
                a7.i32[0] = bswap32(*v26);
                if (a7.f32[0] <= 0.0)
                {
                  goto LABEL_59;
                }
              }

              else
              {
                a7.i32[0] = 1.0;
              }

              v71 = vsubq_f32(vdupq_lane_s32(*a7.f32, 0), vrev32q_s8(*v31));
              v72 = vmlaq_f32(v71, vsubq_f32(_Q1, v71), vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v70));
              a5.f32[0] = (a5.f32[0] + a7.f32[0]) - (a7.f32[0] * a5.f32[0]);
              v70 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v72);
              if (v16)
              {
LABEL_59:
                v73 = bswap32(a5.u32[0]);
                a5 = vrev32q_s8(v70);
                *v31 = a5;
                *v26 = v73;
                goto LABEL_61;
              }

              a5 = vrev32q_s8(v70);
              *v31 = a5;
            }
          }

LABEL_61:
          ++v33;
          ++v31;
          v26 = (v26 + v62);
          --v68;
        }

        while (v68);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        if (!--v21)
        {
          return;
        }
      }

    case 15:
      v119 = 4 * v27;
      while (1)
      {
        v120 = v20;
        do
        {
          if (*v33)
          {
            v121 = *v33 * 0.0039216;
            *&a9 = v19 * v121;
            if ((v19 * v121) > 0.0)
            {
              v122 = vmulq_n_f32(v30, v121);
              if (v16)
              {
                v123 = COERCE_FLOAT(bswap32(*v26));
                if (v123 <= 0.0)
                {
                  goto LABEL_161;
                }
              }

              else
              {
                v123 = 1.0;
              }

              v124 = vrev32q_s8(*v31);
              PDAoverlayPDA(v348.i32, *v124.i32, *&v124.i32[1], *&v124.i32[2], *&v124.i32[3], v123, *v122.i64, a9, a10, *v122.i32, *&v122.i32[1], *&v122.i32[2], *&v122.i32[3], *&a9);
              v122 = v348;
              if (v16)
              {
                *&a9 = v349;
                v30 = v346;
                v19 = v347;
LABEL_161:
                *v31 = vrev32q_s8(v122);
                *v26 = bswap32(LODWORD(a9));
                goto LABEL_163;
              }

              *v31 = vrev32q_s8(v348);
              v30 = v346;
              v19 = v347;
            }
          }

LABEL_163:
          ++v33;
          ++v31;
          v26 = (v26 + v119);
          --v120;
        }

        while (v120);
        v33 += v37;
        v31 += v36;
        v26 += v38;
        --v21;
        LODWORD(v20) = v345;
        if (!v21)
        {
          return;
        }
      }

    case 16:
      v50 = 4 * v27;
      a4.i32[0] = 1.0;
      while (1)
      {
        v51 = v20;
        do
        {
          if (*v33)
          {
            v52 = *v33 * 0.0039216;
            a5.f32[0] = v19 * v52;
            if ((v19 * v52) > 0.0)
            {
              v53 = vmulq_n_f32(v30, v52);
              if (v16)
              {
                a6.i32[0] = bswap32(*v26);
                if (a6.f32[0] <= 0.0)
                {
                  goto LABEL_45;
                }
              }

              else
              {
                a6.i32[0] = 1.0;
              }

              v54 = vsubq_f32(vdupq_lane_s32(*a6.f32, 0), vrev32q_s8(*v31));
              v55 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v53);
              v56 = vmulq_n_f32(v54, a5.f32[0]);
              v57 = vmulq_n_f32(v55, a6.f32[0]);
              v58 = vbslq_s8(vcgtq_f32(v56, v57), v57, v56);
              v59 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a5, a4)), 0), vmlaq_n_f32(v58, v54, 1.0 - a5.f32[0]), v58);
              v60 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a6, a4)), 0), vmlaq_n_f32(v59, v55, 1.0 - a6.f32[0]), v59);
              a5.f32[0] = (a6.f32[0] + a5.f32[0]) - (a6.f32[0] * a5.f32[0]);
              a6 = vdupq_lane_s32(*a5.f32, 0);
              v53 = vsubq_f32(a6, v60);
              if (v16)
              {
LABEL_45:
                v61 = bswap32(a5.u32[0]);
                a5 = vrev32q_s8(v53);
                *v31 = a5;
                *v26 = v61;
                goto LABEL_47;
              }

              a5 = vrev32q_s8(v53);
              *v31 = a5;
            }
          }

LABEL_47:
          ++v33;
          ++v31;
          v26 = (v26 + v50);
          --v51;
        }

        while (v51);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        if (!--v21)
        {
          return;
        }
      }

    case 17:
      v150 = 4 * v27;
      a4.i32[0] = 1.0;
      while (1)
      {
        v151 = v20;
        do
        {
          if (*v33)
          {
            v152 = *v33 * 0.0039216;
            a5.f32[0] = v19 * v152;
            if ((v19 * v152) > 0.0)
            {
              v153 = vmulq_n_f32(v30, v152);
              if (v16)
              {
                a6.i32[0] = bswap32(*v26);
                if (a6.f32[0] <= 0.0)
                {
                  goto LABEL_216;
                }
              }

              else
              {
                a6.i32[0] = 1.0;
              }

              v154 = vsubq_f32(vdupq_lane_s32(*a6.f32, 0), vrev32q_s8(*v31));
              v155 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v153);
              v156 = vmulq_n_f32(v154, a5.f32[0]);
              v157 = vmulq_n_f32(v155, a6.f32[0]);
              v158 = vbslq_s8(vcgtq_f32(v157, v156), v157, v156);
              v159 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a5, a4)), 0), vmlaq_n_f32(v158, v154, 1.0 - a5.f32[0]), v158);
              v160 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a6, a4)), 0), vmlaq_n_f32(v159, v155, 1.0 - a6.f32[0]), v159);
              a5.f32[0] = (a6.f32[0] + a5.f32[0]) - (a6.f32[0] * a5.f32[0]);
              a6 = vdupq_lane_s32(*a5.f32, 0);
              v153 = vsubq_f32(a6, v160);
              if (v16)
              {
LABEL_216:
                v161 = bswap32(a5.u32[0]);
                a5 = vrev32q_s8(v153);
                *v31 = a5;
                *v26 = v161;
                goto LABEL_218;
              }

              a5 = vrev32q_s8(v153);
              *v31 = a5;
            }
          }

LABEL_218:
          ++v33;
          ++v31;
          v26 = (v26 + v150);
          --v151;
        }

        while (v151);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        if (!--v21)
        {
          return;
        }
      }

    case 18:
      v197 = 4 * v27;
      while (1)
      {
        v198 = v20;
        do
        {
          if (*v33)
          {
            v199 = *v33 * 0.0039216;
            *&a9 = v19 * v199;
            if ((v19 * v199) > 0.0)
            {
              v200 = vmulq_n_f32(v30, v199);
              if (v16)
              {
                v201 = COERCE_FLOAT(bswap32(*v26));
                if (v201 <= 0.0)
                {
                  goto LABEL_293;
                }
              }

              else
              {
                v201 = 1.0;
              }

              v202 = vrev32q_s8(*v31);
              PDAcolordodgePDA(v348.i32, *v202.i32, *&v202.i32[1], *&v202.i32[2], *&v202.i32[3], v201, *v200.i64, a9, a10, *v200.i32, *&v200.i32[1], *&v200.i32[2], *&v200.i32[3], *&a9);
              v200 = v348;
              if (v16)
              {
                *&a9 = v349;
                v30 = v346;
                v19 = v347;
LABEL_293:
                *v31 = vrev32q_s8(v200);
                *v26 = bswap32(LODWORD(a9));
                goto LABEL_295;
              }

              *v31 = vrev32q_s8(v348);
              v30 = v346;
              v19 = v347;
            }
          }

LABEL_295:
          ++v33;
          ++v31;
          v26 = (v26 + v197);
          --v198;
        }

        while (v198);
        v33 += v37;
        v31 += v36;
        v26 += v38;
        --v21;
        LODWORD(v20) = v345;
        if (!v21)
        {
          return;
        }
      }

    case 19:
      v229 = 4 * v27;
      while (1)
      {
        v230 = v20;
        do
        {
          if (*v33)
          {
            v231 = *v33 * 0.0039216;
            *&a9 = v19 * v231;
            if ((v19 * v231) > 0.0)
            {
              v232 = vmulq_n_f32(v30, v231);
              if (v16)
              {
                v233 = COERCE_FLOAT(bswap32(*v26));
                if (v233 <= 0.0)
                {
                  goto LABEL_341;
                }
              }

              else
              {
                v233 = 1.0;
              }

              v234 = vrev32q_s8(*v31);
              PDAcolorburnPDA(v348.i32, *v234.i32, *&v234.i32[1], *&v234.i32[2], *&v234.i32[3], v233, *v232.i64, a9, a10, *v232.i32, *&v232.i32[1], *&v232.i32[2], *&v232.i32[3], *&a9);
              v232 = v348;
              if (v16)
              {
                *&a9 = v349;
                v30 = v346;
                v19 = v347;
LABEL_341:
                *v31 = vrev32q_s8(v232);
                *v26 = bswap32(LODWORD(a9));
                goto LABEL_343;
              }

              *v31 = vrev32q_s8(v348);
              v30 = v346;
              v19 = v347;
            }
          }

LABEL_343:
          ++v33;
          ++v31;
          v26 = (v26 + v229);
          --v230;
        }

        while (v230);
        v33 += v37;
        v31 += v36;
        v26 += v38;
        --v21;
        LODWORD(v20) = v345;
        if (!v21)
        {
          return;
        }
      }

    case 20:
      v162 = 4 * v27;
      while (1)
      {
        v163 = v20;
        do
        {
          if (*v33)
          {
            v164 = *v33 * 0.0039216;
            *&a9 = v19 * v164;
            if ((v19 * v164) > 0.0)
            {
              v165 = vmulq_n_f32(v30, v164);
              if (v16)
              {
                a7.i32[0] = bswap32(*v26);
                if (a7.f32[0] <= 0.0)
                {
                  goto LABEL_231;
                }
              }

              else
              {
                a7.i32[0] = 1.0;
              }

              v166 = vrev32q_s8(*v31);
              PDAsoftlightPDA(&v348, *v166.i8, *&v166.i32[1], *&v166.i32[2], *&v166.i32[3], *a7.i64, *v165.i8, a9, a10, a2, v28, v34, v20, a14, a15, a16, *v165.i8, *&v165.i32[2], *&v165.i32[3], *&a9);
              v165 = v348;
              if (v16)
              {
                *&a9 = v349;
                v30 = v346;
                v19 = v347;
LABEL_231:
                *v31 = vrev32q_s8(v165);
                *v26 = bswap32(LODWORD(a9));
                goto LABEL_233;
              }

              *v31 = vrev32q_s8(v348);
              v30 = v346;
              v19 = v347;
            }
          }

LABEL_233:
          ++v33;
          ++v31;
          v26 = (v26 + v162);
          --v163;
        }

        while (v163);
        v33 += v37;
        v31 += v36;
        v26 += v38;
        --v21;
        v20 = v345;
        if (!v21)
        {
          return;
        }
      }

    case 21:
      v172 = 4 * v27;
      while (1)
      {
        v173 = v20;
        do
        {
          if (*v33)
          {
            v174 = *v33 * 0.0039216;
            *&a9 = v19 * v174;
            if ((v19 * v174) > 0.0)
            {
              v175 = vmulq_n_f32(v30, v174);
              if (v16)
              {
                v176 = COERCE_FLOAT(bswap32(*v26));
                if (v176 <= 0.0)
                {
                  goto LABEL_253;
                }
              }

              else
              {
                v176 = 1.0;
              }

              v177 = vrev32q_s8(*v31);
              PDAhardlightPDA(v348.i32, *v177.i32, *&v177.i32[1], *&v177.i32[2], *&v177.i32[3], v176, *v175.i64, a9, a10, *v175.i32, *&v175.i32[1], *&v175.i32[2], *&v175.i32[3], *&a9);
              v175 = v348;
              if (v16)
              {
                *&a9 = v349;
                v30 = v346;
                v19 = v347;
LABEL_253:
                *v31 = vrev32q_s8(v175);
                *v26 = bswap32(LODWORD(a9));
                goto LABEL_255;
              }

              *v31 = vrev32q_s8(v348);
              v30 = v346;
              v19 = v347;
            }
          }

LABEL_255:
          ++v33;
          ++v31;
          v26 = (v26 + v172);
          --v173;
        }

        while (v173);
        v33 += v37;
        v31 += v36;
        v26 += v38;
        --v21;
        LODWORD(v20) = v345;
        if (!v21)
        {
          return;
        }
      }

    case 22:
      v215 = 4 * v27;
      while (1)
      {
        v216 = v20;
        do
        {
          if (*v33)
          {
            v217 = *v33 * 0.0039216;
            a4.f32[0] = v19 * v217;
            if ((v19 * v217) > 0.0)
            {
              v218 = vmulq_n_f32(v30, v217);
              if (v16)
              {
                a6.i32[0] = bswap32(*v26);
                if (a6.f32[0] <= 0.0)
                {
                  goto LABEL_326;
                }
              }

              else
              {
                a6.i32[0] = 1.0;
              }

              v219 = *v31;
              *v219.i32 = (a6.f32[0] + a4.f32[0]) - (a6.f32[0] * a4.f32[0]);
              v220 = vsubq_f32(vdupq_lane_s32(*a6.f32, 0), vrev32q_s8(*v31));
              v221 = vsubq_f32(vdupq_lane_s32(*a4.f32, 0), v218);
              v222 = vaddq_f32(v220, v221);
              v223 = vmulq_n_f32(v220, a4.f32[0]);
              v224 = vmulq_n_f32(v221, a6.f32[0]);
              v225 = vsubq_f32(v222, v223);
              v226 = vsubq_f32(v223, v224);
              v227 = vsubq_f32(v225, v224);
              a6 = vcltzq_f32(v226);
              v218 = vsubq_f32(vdupq_lane_s32(*v219.i8, 0), vaddq_f32(v227, vbslq_s8(a6, vnegq_f32(v226), v226)));
              if (v16)
              {
                a4.i32[0] = v219.i32[0];
LABEL_326:
                v228 = bswap32(a4.u32[0]);
                a4 = vrev32q_s8(v218);
                *v31 = a4;
                *v26 = v228;
                goto LABEL_328;
              }

              a4 = vrev32q_s8(v218);
              *v31 = a4;
            }
          }

LABEL_328:
          ++v33;
          ++v31;
          v26 = (v26 + v215);
          --v216;
        }

        while (v216);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        if (!--v21)
        {
          return;
        }
      }

    case 23:
      v235 = 4 * v27;
      v236.i64[0] = 0xC0000000C0000000;
      v236.i64[1] = 0xC0000000C0000000;
      while (1)
      {
        v237 = v20;
        do
        {
          if (*v33)
          {
            v238 = *v33 * 0.0039216;
            a6.f32[0] = v19 * v238;
            if ((v19 * v238) > 0.0)
            {
              v239 = vmulq_n_f32(v30, v238);
              if (v16)
              {
                a8.i32[0] = bswap32(*v26);
                if (a8.f32[0] <= 0.0)
                {
                  goto LABEL_356;
                }
              }

              else
              {
                a8.i32[0] = 1.0;
              }

              v240 = *v31;
              *v240.i32 = (a8.f32[0] + a6.f32[0]) - (a8.f32[0] * a6.f32[0]);
              a8 = vsubq_f32(vdupq_lane_s32(*a8.f32, 0), vrev32q_s8(*v31));
              v241 = vsubq_f32(vdupq_lane_s32(*a6.f32, 0), v239);
              a6 = vmlaq_f32(vaddq_f32(a8, v241), v236, vmulq_f32(v241, a8));
              v239 = vsubq_f32(vdupq_lane_s32(*v240.i8, 0), a6);
              if (v16)
              {
                a6.i32[0] = v240.i32[0];
LABEL_356:
                *v31 = vrev32q_s8(v239);
                *v26 = bswap32(a6.u32[0]);
                goto LABEL_358;
              }

              *v31 = vrev32q_s8(v239);
            }
          }

LABEL_358:
          ++v33;
          ++v31;
          v26 = (v26 + v235);
          --v237;
        }

        while (v237);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        if (!--v21)
        {
          return;
        }
      }

    case 24:
      v103 = 4 * v27;
      while (1)
      {
        v104 = v20;
        do
        {
          if (*v33)
          {
            v105 = *v33 * 0.0039216;
            *&a9 = v19 * v105;
            if ((v19 * v105) > 0.0)
            {
              v106 = vmulq_n_f32(v30, v105);
              if (v16)
              {
                v107 = COERCE_FLOAT(bswap32(*v26));
                if (v107 <= 0.0)
                {
                  goto LABEL_126;
                }
              }

              else
              {
                v107 = 1.0;
              }

              v108 = vrev32q_s8(*v31);
              PDAhuePDA(v348.i32, *v108.i32, *&v108.i32[1], *&v108.i32[2], *&v108.i32[3], v107, *v106.i64, a9, a10, *v106.i32, *&v106.i32[1], *&v106.i32[2], *&v106.i32[3], *&a9);
              v106 = v348;
              if (v16)
              {
                *&a9 = v349;
                v30 = v346;
                v19 = v347;
LABEL_126:
                *v31 = vrev32q_s8(v106);
                *v26 = bswap32(LODWORD(a9));
                goto LABEL_128;
              }

              *v31 = vrev32q_s8(v348);
              v30 = v346;
              v19 = v347;
            }
          }

LABEL_128:
          ++v33;
          ++v31;
          v26 = (v26 + v103);
          --v104;
        }

        while (v104);
        v33 += v37;
        v31 += v36;
        v26 += v38;
        --v21;
        LODWORD(v20) = v345;
        if (!v21)
        {
          return;
        }
      }

    case 25:
      v97 = 4 * v27;
      while (1)
      {
        v98 = v20;
        do
        {
          if (*v33)
          {
            v99 = *v33 * 0.0039216;
            *&a9 = v19 * v99;
            if ((v19 * v99) > 0.0)
            {
              v100 = vmulq_n_f32(v30, v99);
              if (v16)
              {
                v101 = COERCE_FLOAT(bswap32(*v26));
                if (v101 <= 0.0)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                v101 = 1.0;
              }

              v102 = vrev32q_s8(*v31);
              PDAsaturationPDA(v348.i32, *v102.i32, *&v102.i32[1], *&v102.i32[2], *&v102.i32[3], v101, *v100.i64, a9, a10, *v100.i32, *&v100.i32[1], *&v100.i32[2], *&v100.i32[3], *&a9);
              v100 = v348;
              if (v16)
              {
                *&a9 = v349;
                v30 = v346;
                v19 = v347;
LABEL_111:
                *v31 = vrev32q_s8(v100);
                *v26 = bswap32(LODWORD(a9));
                goto LABEL_113;
              }

              *v31 = vrev32q_s8(v348);
              v30 = v346;
              v19 = v347;
            }
          }

LABEL_113:
          ++v33;
          ++v31;
          v26 = (v26 + v97);
          --v98;
        }

        while (v98);
        v33 += v37;
        v31 += v36;
        v26 += v38;
        --v21;
        LODWORD(v20) = v345;
        if (!v21)
        {
          return;
        }
      }

    case 26:
      v242 = 4 * v27;
      while (1)
      {
        v243 = v20;
        do
        {
          if (*v33)
          {
            v244 = *v33 * 0.0039216;
            v245 = v19 * v244;
            if ((v19 * v244) > 0.0)
            {
              v246 = vmulq_n_f32(v30, v244);
              if (v16)
              {
                a8.i32[0] = bswap32(*v26);
                if (a8.f32[0] <= 0.0)
                {
                  goto LABEL_371;
                }
              }

              else
              {
                a8.i32[0] = 1.0;
              }

              v344 = vrev32q_s8(*v31);
              PDAluminosityPDA(v348.i32, *v246.i32, *&v246.i32[1], *&v246.i32[2], *&v246.i32[3], v245, *a8.i64, *v344.i64, a10, *v344.i32, *&v344.i32[1], *&v344.i32[2], *&v344.i32[3], a8.f32[0]);
              v246 = v348;
              if (v16)
              {
                v245 = v349;
                v30 = v346;
                v19 = v347;
LABEL_371:
                *v31 = vrev32q_s8(v246);
                *v26 = bswap32(LODWORD(v245));
                goto LABEL_373;
              }

              *v31 = vrev32q_s8(v348);
              v30 = v346;
              v19 = v347;
            }
          }

LABEL_373:
          ++v33;
          ++v31;
          v26 = (v26 + v242);
          --v243;
        }

        while (v243);
        v33 += v37;
        v31 += v36;
        v26 += v38;
        --v21;
        LODWORD(v20) = v345;
        if (!v21)
        {
          return;
        }
      }

    case 27:
      v44 = 4 * v27;
      break;
    default:
      return;
  }

LABEL_22:
  v45 = v20;
  while (1)
  {
    if (!*v33)
    {
      goto LABEL_33;
    }

    v46 = *v33 * 0.0039216;
    *&a9 = v19 * v46;
    if ((v19 * v46) <= 0.0)
    {
      goto LABEL_33;
    }

    v47 = vmulq_n_f32(v30, v46);
    if (v16)
    {
      v48 = COERCE_FLOAT(bswap32(*v26));
      if (v48 <= 0.0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v48 = 1.0;
    }

    v49 = vrev32q_s8(*v31);
    PDAluminosityPDA(v348.i32, *v49.i32, *&v49.i32[1], *&v49.i32[2], *&v49.i32[3], v48, *v47.i64, a9, a10, *v47.i32, *&v47.i32[1], *&v47.i32[2], *&v47.i32[3], *&a9);
    v47 = v348;
    if (!v16)
    {
      *v31 = vrev32q_s8(v348);
      v30 = v346;
      v19 = v347;
      goto LABEL_33;
    }

    *&a9 = v349;
    v30 = v346;
    v19 = v347;
LABEL_31:
    *v31 = vrev32q_s8(v47);
    *v26 = bswap32(LODWORD(a9));
LABEL_33:
    ++v33;
    ++v31;
    v26 = (v26 + v44);
    if (!--v45)
    {
      v33 += v37;
      v31 += v36;
      v26 += v38;
      --v21;
      LODWORD(v20) = v345;
      if (!v21)
      {
        return;
      }

      goto LABEL_22;
    }
  }
}