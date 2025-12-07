void cmyk64_image_mark_image(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(void, void))
{
  v78[1] = *MEMORY[0x1E69E9840];
  v67 = 0u;
  v68 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v69 = 0u;
  v8 = (*(a2 + 184) * 65535.0) + 0.5;
  v66[0] = a3;
  v66[1] = a4;
  LOWORD(v67) = v8;
  v9 = *(a1 + 28) >> 3;
  *&v68 = v9;
  if (*(a1 + 48))
  {
    v10 = *(a1 + 32) >> 1;
  }

  else
  {
    v10 = 0;
  }

  *&v69 = v10;
  v11 = *(a2 + 120);
  v12 = *(a2 + 20);
  v13 = HIBYTE(v12);
  v14 = BYTE2(v12);
  if (v11)
  {
    v15 = *(a2 + 24);
    v16 = (a2 + 104);
    v17 = (a2 + 72);
    v18 = (a2 + 88);
    v19 = v13;
  }

  else
  {
    v15 = *(a2 + 8) >> 25;
    v16 = (a2 + 96);
    v17 = (a2 + 64);
    v18 = (a2 + 80);
    v11 = *(a2 + 112);
    v19 = v14;
  }

  v20 = *v18;
  v21 = *v17;
  v22 = *v16;
  v23 = v19;
  *(&v70 + 1) = v19;
  *(&v69 + 1) = v22;
  *(&v74 + 1) = v15;
  *(&v73 + 1) = v20;
  *(&v72 + 1) = v21;
  *(&v71 + 1) = v11;
  v24 = *(a2 + 128);
  if (v24)
  {
    v25 = *(a2 + 8) >> 25;
    v26 = (a2 + 96);
    v27 = (a2 + 64);
    v28 = (a2 + 80);
    v13 = v14;
  }

  else
  {
    v25 = *(a2 + 24);
    v26 = (a2 + 104);
    v27 = (a2 + 72);
    v28 = (a2 + 88);
    v24 = *(a2 + 136);
  }

  v65 = &v61;
  v29 = *v28;
  v30 = *v27;
  v31 = *v26;
  *&v71 = v13;
  *&v70 = v31;
  *&v75 = v25;
  *&v74 = v29;
  *&v73 = v30;
  *&v72 = v24;
  v32 = *(a1 + 4);
  v33 = MEMORY[0x1EEE9AC00](16 * v32);
  v64 = &v61 - v35 - 15;
  if (v36 <= 0xFFFFFFFFFFFFFFELL)
  {
    v38 = &v61 - v35 - 15;
  }

  else
  {
    v38 = 0;
  }

  if (v36 - 0xFFFFFFFFFFFFFFFLL >= 0xF000000000000402)
  {
    v62 = v34;
    v63 = a5;
    v39 = v37;
    v33 = malloc_type_malloc(v33, 0xC166A778uLL);
    v34 = v62;
    v37 = v39;
    a5 = v63;
    v38 = v33;
  }

  *(&v75 + 1) = v38;
  if (v38)
  {
    if (*(a2 + 176))
    {
      if (v32 >= 1)
      {
        v40 = (v38 + 8);
        v41 = v37 - v22;
        do
        {
          if (((v22 - v34) | v41) < 0)
          {
            v45 = 0;
          }

          else
          {
            v42 = ((v22 & ~(-1 << v23)) >> (v23 - 4)) & 0xF;
            v43 = weights_21890[v42];
            if (v42 - 7 >= 9)
            {
              v44 = -v15;
            }

            else
            {
              v44 = v15;
            }

            v45 = v43 & 0xF | (16 * v44);
          }

          *(v40 - 1) = v15 * (v22 >> v23);
          *v40 = v45;
          v40 += 2;
          v22 += v11;
          v41 -= v11;
          --v32;
        }

        while (v32);
      }
    }

    else if (v32 >= 1)
    {
      v46 = v38 + 8;
      do
      {
        *(v46 - 1) = v15 * (v22 >> v23);
        *v46 = 0;
        v46 += 2;
        v22 += v11;
        --v32;
      }

      while (v32);
    }

    v47 = v38;
    v48 = *(a1 + 4);
    v49 = *(a1 + 8);
    v76 = v49;
    v77 = v48;
    v50 = *(a1 + 136);
    if (v50)
    {
      v51 = *(a1 + 104);
      LODWORD(v78[0]) = *(a1 + 108);
      HIDWORD(v78[0]) = v51;
      shape_enum_clip_alloc(v33, v34, v50, 1, 1, 1, v51, v78[0], v48, v49);
      v53 = v52;
      if (v52)
      {
        goto LABEL_36;
      }
    }

    v54 = 0;
    v55 = 0;
    v53 = 0;
    v78[0] = 0;
    while (1)
    {
      v56 = *(a1 + 16) + v55;
      v57 = *(a1 + 48);
      v58 = v54 + *(a1 + 12);
      v59 = *(a1 + 40) + 8 * v9 * v56 + 8 * v58;
      v60 = v57 + 2 * v10 * v56 + 2 * v58;
      if (!v57)
      {
        v60 = 0;
      }

      *(&v67 + 1) = v59;
      *(&v68 + 1) = v60;
      a5(a2, v66);
      if (!v53)
      {
        break;
      }

LABEL_36:
      if (!shape_enum_clip_next(v53, v78 + 1, v78, &v77, &v76))
      {
        free(v53);
        break;
      }

      v55 = v78[0];
      v54 = HIDWORD(v78[0]);
      v9 = v68;
      v10 = v69;
    }

    if (v47 != v64)
    {
      free(v47);
    }
  }
}

uint64_t cmyk64_image_mark_rgb32(uint64_t a1, int *a2, int a3, int a4, int a5, int a6, int32x4_t a7)
{
  if (*(a1 + 40))
  {
    result = 0;
  }

  else
  {
    result = 255;
  }

  v8 = *(a2 + 2);
  v9 = *(a2 + 4);
  if (v9)
  {
    v129 = *(a2 + 5) - a5;
  }

  else
  {
    v129 = 0;
  }

  v10 = *(a2 + 4);
  v11 = a2[1];
  v128 = *a2;
  v127 = *(a2 + 3) - a5;
  v13 = *(a2 + 17);
  v12 = *(a2 + 18);
  v14 = *(a2 + 9);
  v124 = *(a2 + 11);
  v15 = *(a2 + 7) + v124 * a4;
  v16 = *(a1 + 32);
  v17 = v16 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3);
  v18 = 2 * (v9 != 0);
  v142 = v10;
  v143 = result;
  v141 = v11;
  v125 = v14;
  v126 = v13;
  if (*(a1 + 176))
  {
    v123 = *(a2 + 13);
    v122 = *(a2 + 15);
    v121 = ~(-1 << v14);
    v120 = v14 - 4;
    v19 = (v17 - 4);
    v20 = 32 - v11;
    v21 = v10 ^ 0xFFFF;
    v118 = a5;
    v119 = -v13;
    v22 = vdupq_n_s32(v10 ^ 0xFFFFu);
    v117 = v12 + 16 * a3 + 8;
    v137 = v10 ^ 0xFFFF;
    v135 = v22;
    while (1)
    {
      if (((v122 - v15) | (v15 - v123)) < 0)
      {
        v25 = 0;
        v24 = 0;
      }

      else
      {
        v23 = ((v15 & v121) >> v120) & 0xF;
        v24 = (v23 - 7) >= 9 ? v119 : v13;
        v25 = weights_21890[v23] & 0xF;
      }

      v26 = *(a1 + 32) + (v15 >> v14) * v13;
      v133 = a6;
      v131 = v15;
      if (v128 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v27 = v117;
        v28 = v118;
        while (1)
        {
          v29 = *(v27 - 1);
          v30 = *v27;
          v31 = v26 + v29;
          if (v19 >= v26 + v29)
          {
            v32 = (v26 + v29);
          }

          else
          {
            v32 = v19;
          }

          if (v32 < v16)
          {
            v32 = v16;
          }

          v33 = *v32;
          v34 = v30 & 0xF;
          if ((v30 & 0xF) != 0)
          {
            break;
          }

          if (v25)
          {
            v45 = (v31 + v24);
            if (v19 < v31 + v24)
            {
              v45 = v19;
            }

            if (v45 < v16)
            {
              v45 = v16;
            }

            v46 = BLEND8_21892[v25];
            v43 = v33 - ((v46 & v33) >> v25);
            v44 = (v46 & *v45) >> v25;
            goto LABEL_46;
          }

LABEL_47:
          v47 = (v33 << v11) | (v33 >> v20);
          v48 = HIBYTE(v47) | (HIBYTE(v47) << 8);
          v49 = BYTE2(v47) | (BYTE2(v47) << 8);
          v50 = BYTE1(v47) | (BYTE1(v47) << 8);
          v51 = v47 | result | ((v47 | result) << 8);
          if (v48 <= v49)
          {
            v52 = v49;
          }

          else
          {
            v52 = v48;
          }

          if (v50 > v52)
          {
            v52 = v50;
          }

          a7.i64[0] = __PAIR64__(v52, v51);
          v53.i64[0] = __PAIR64__(v50, v52);
          v53.i64[1] = __PAIR64__(v48, v49);
          a7 = vsubq_s32(vzip1q_s32(a7, vdupq_lane_s32(__PAIR64__(v52, v51), 1)), v53);
          if (v10 != 0xFFFF)
          {
            v54 = vmulq_s32(a7, v22);
            a7 = vsubq_s32(a7, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v54, 0x10uLL), vmvnq_s8(v54)), 0x10uLL));
            v51 -= (v51 * v21 + ((v51 * v21) >> 16) + 1) >> 16;
          }

          if (v9)
          {
            *v9 = v51;
          }

          v27 += 2;
          *v8++ = (a7.u16[2] << 32) | (a7.u32[0] << 48) | (a7.i32[2] << 16) | a7.u16[6];
          v9 = (v9 + v18);
          if (!--v28)
          {
            goto LABEL_107;
          }
        }

        v35 = (v31 + (v30 >> 4));
        if (v19 < v35)
        {
          v35 = v19;
        }

        if (v35 < v16)
        {
          v35 = v16;
        }

        v36 = *v35;
        if (v25)
        {
          v37 = (v31 + v24);
          if (v19 >= v37)
          {
            v38 = v37;
          }

          else
          {
            v38 = v19;
          }

          if (v38 < v16)
          {
            v38 = v16;
          }

          v39 = *v38;
          v40 = (v37 + (v30 >> 4));
          if (v19 < v40)
          {
            v40 = v19;
          }

          if (v40 < v16)
          {
            v40 = v16;
          }

          v41 = BLEND8_21892[v25];
          v33 = v33 - ((v41 & v33) >> v25) + ((v41 & v39) >> v25);
          v36 = v36 - ((v41 & v36) >> v25) + ((v41 & *v40) >> v25);
        }

        v42 = BLEND8_21892[*v27 & 0xF];
        v43 = v33 - ((v42 & v33) >> v34);
        v44 = (v42 & v36) >> v34;
LABEL_46:
        v33 = v43 + v44;
        goto LABEL_47;
      }

LABEL_107:
      v13 = v126;
      v8 += v127;
      LOBYTE(v14) = v125;
      v15 = v131 + v124;
      v9 += v129;
      a6 = v133 - 1;
      if (v133 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_107;
    }

    v55 = v117;
    v56 = v118;
    v139 = v24;
    while (1)
    {
      v57 = *(v55 - 1);
      v58 = *v55;
      v59 = v26 + v57;
      if (v19 >= v26 + v57)
      {
        v60 = (v26 + v57);
      }

      else
      {
        v60 = v19;
      }

      if (v60 < v16)
      {
        v60 = v16;
      }

      v61 = *v60;
      v62 = v58 & 0xF;
      if ((v58 & 0xF) != 0)
      {
        v63 = (v59 + (v58 >> 4));
        if (v19 < v63)
        {
          v63 = v19;
        }

        if (v63 < v16)
        {
          v63 = v16;
        }

        v64 = *v63;
        if (v25)
        {
          v65 = (v59 + v24);
          if (v19 >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = v19;
          }

          if (v66 < v16)
          {
            v66 = v16;
          }

          v67 = *v66;
          v68 = (v65 + (v58 >> 4));
          if (v19 < v68)
          {
            v68 = v19;
          }

          if (v68 < v16)
          {
            v68 = v16;
          }

          v69 = BLEND8_21892[v25];
          v61 = v61 - ((v69 & v61) >> v25) + ((v69 & v67) >> v25);
          v64 = v64 - ((v69 & v64) >> v25) + ((v69 & *v68) >> v25);
        }

        v70 = BLEND8_21892[*v55 & 0xF];
        v71 = v61 - ((v70 & v61) >> v62);
        v72 = (v70 & v64) >> v62;
      }

      else
      {
        if (!v25)
        {
          goto LABEL_89;
        }

        v73 = (v59 + v24);
        if (v19 < v59 + v24)
        {
          v73 = v19;
        }

        if (v73 < v16)
        {
          v73 = v16;
        }

        v74 = BLEND8_21892[v25];
        v71 = v61 - ((v74 & v61) >> v25);
        v72 = (v74 & *v73) >> v25;
      }

      v61 = v71 + v72;
LABEL_89:
      v75 = (v61 << v11) | (v61 >> v20);
      v76 = HIBYTE(v75) | (HIBYTE(v75) << 8);
      v77 = BYTE2(v75) | (BYTE2(v75) << 8);
      v78 = BYTE1(v75) | (BYTE1(v75) << 8);
      v79 = v75 | result | ((v75 | result) << 8);
      if (v76 <= v77)
      {
        v80 = BYTE2(v75) | (BYTE2(v75) << 8);
      }

      else
      {
        v80 = HIBYTE(v75) | (HIBYTE(v75) << 8);
      }

      if (v78 > v80)
      {
        v80 = v78;
      }

      a7.i64[0] = __PAIR64__(v80, v79);
      v81.i64[0] = __PAIR64__(v78, v80);
      v81.i64[1] = __PAIR64__(v76, v77);
      a7 = vsubq_s32(vzip1q_s32(a7, vdupq_lane_s32(__PAIR64__(v80, v79), 1)), v81);
      if (v10 != 0xFFFF)
      {
        v82 = vmulq_s32(a7, v22);
        a7 = vsubq_s32(a7, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v82, 0x10uLL), vmvnq_s8(v82)), 0x10uLL));
        v79 -= (v79 * v21 + ((v79 * v21) >> 16) + 1) >> 16;
      }

      v83 = (a7.i32[2] << 16) | a7.u16[6];
      v84 = (a7.u16[2] << 32) | (a7.u32[0] << 48) | v83;
      if (v9)
      {
        if (v79)
        {
          if (v79 != 0xFFFF)
          {
            cmyk64_DAplusDAM(v8, v9, v84, v79, *v8, *v9, ~v79);
LABEL_105:
            v24 = v139;
            v22 = v135;
            v21 = v137;
            LOBYTE(v11) = v141;
            v10 = v142;
            result = v143;
            goto LABEL_106;
          }

          *v8 = v84;
          *v9 = -1;
        }
      }

      else if (v79)
      {
        if (v79 != 0xFFFF)
        {
          cmyk64_DplusDM(v8, (a7.u16[2] << 32) | (a7.u32[0] << 48) | v83, *v8, ~v79);
          goto LABEL_105;
        }

        *v8 = v84;
      }

LABEL_106:
      v55 += 2;
      ++v8;
      v9 = (v9 + v18);
      if (!--v56)
      {
        goto LABEL_107;
      }
    }
  }

  v138 = (v12 + 16 * a3);
  v85 = v17 - 4;
  v86 = 32 - v11;
  v87 = v10 ^ 0xFFFF;
  v88 = vdupq_n_s32(v10 ^ 0xFFFFu);
  v136 = a5;
  v140 = v88;
  do
  {
    v89 = *(a1 + 32);
    v90 = &v89[(v15 >> v14) * v13];
    v134 = a6;
    v132 = v15;
    if (v128 != 1)
    {
      v103 = v138;
      v104 = v136;
      if (a5 < 1)
      {
        goto LABEL_151;
      }

      while (1)
      {
        v105 = *v103;
        v103 += 2;
        v106 = &v90[v105];
        if (v85 < &v90[v105])
        {
          v106 = v85;
        }

        if (v106 < *(a1 + 32))
        {
          v106 = *(a1 + 32);
        }

        v107 = (*v106 << v11) | (*v106 >> v86);
        v108 = HIBYTE(v107) | (HIBYTE(v107) << 8);
        v109 = BYTE2(v107) | (BYTE2(v107) << 8);
        v110 = BYTE1(v107) | (BYTE1(v107) << 8);
        v111 = v107 | result | ((v107 | result) << 8);
        if (v108 <= v109)
        {
          v112 = BYTE2(v107) | (BYTE2(v107) << 8);
        }

        else
        {
          v112 = HIBYTE(v107) | (HIBYTE(v107) << 8);
        }

        if (v110 > v112)
        {
          v112 = v110;
        }

        a7.i64[0] = __PAIR64__(v112, v111);
        v113.i64[0] = __PAIR64__(v110, v112);
        v113.i64[1] = __PAIR64__(v108, v109);
        a7 = vsubq_s32(vzip1q_s32(a7, vdupq_lane_s32(__PAIR64__(v112, v111), 1)), v113);
        if (v10 != 0xFFFF)
        {
          v114 = vmulq_s32(a7, v88);
          a7 = vsubq_s32(a7, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v114, 0x10uLL), vmvnq_s8(v114)), 0x10uLL));
          v111 -= (v111 * v87 + ((v111 * v87) >> 16) + 1) >> 16;
        }

        v115 = (a7.i32[2] << 16) | a7.u16[6];
        v116 = (a7.u16[2] << 32) | (a7.u32[0] << 48) | v115;
        if (v9)
        {
          if (v111)
          {
            if (v111 != 0xFFFF)
            {
              cmyk64_DAplusDAM(v8, v9, v116, v111, *v8, *v9, ~v111);
LABEL_149:
              v88 = v140;
              LOBYTE(v11) = v141;
              v10 = v142;
              result = v143;
              goto LABEL_150;
            }

            *v8 = v116;
            *v9 = -1;
          }
        }

        else if (v111)
        {
          if (v111 != 0xFFFF)
          {
            cmyk64_DplusDM(v8, (a7.u16[2] << 32) | (a7.u32[0] << 48) | v115, *v8, ~v111);
            goto LABEL_149;
          }

          *v8 = v116;
        }

LABEL_150:
        ++v8;
        v9 = (v9 + v18);
        if (!--v104)
        {
          goto LABEL_151;
        }
      }
    }

    if (a5 >= 1)
    {
      v91 = v138;
      v92 = v136;
      do
      {
        v93 = *v91;
        v91 += 2;
        v94 = &v90[v93];
        if (v85 < &v90[v93])
        {
          v94 = v85;
        }

        if (v94 < v89)
        {
          v94 = v89;
        }

        v95 = (*v94 << v11) | (*v94 >> v86);
        v96 = HIBYTE(v95) | (HIBYTE(v95) << 8);
        v97 = BYTE2(v95) | (BYTE2(v95) << 8);
        v98 = BYTE1(v95) | (BYTE1(v95) << 8);
        v99 = v95 | result | ((v95 | result) << 8);
        if (v96 <= v97)
        {
          v100 = v97;
        }

        else
        {
          v100 = v96;
        }

        if (v98 > v100)
        {
          v100 = v98;
        }

        a7.i64[0] = __PAIR64__(v100, v99);
        v101.i64[0] = __PAIR64__(v98, v100);
        v101.i64[1] = __PAIR64__(v96, v97);
        a7 = vsubq_s32(vzip1q_s32(a7, vdupq_lane_s32(__PAIR64__(v100, v99), 1)), v101);
        if (v10 != 0xFFFF)
        {
          v102 = vmulq_s32(a7, v88);
          a7 = vsubq_s32(a7, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v102, 0x10uLL), vmvnq_s8(v102)), 0x10uLL));
          v99 -= (v99 * v87 + ((v99 * v87) >> 16) + 1) >> 16;
        }

        if (v9)
        {
          *v9 = v99;
        }

        *v8++ = (a7.u16[2] << 32) | (a7.u32[0] << 48) | (a7.i32[2] << 16) | a7.u16[6];
        v9 = (v9 + v18);
        --v92;
      }

      while (v92);
    }

LABEL_151:
    v13 = v126;
    v8 += v127;
    LOBYTE(v14) = v125;
    v15 = v132 + v124;
    v9 += v129;
    a6 = v134 - 1;
  }

  while (v134 != 1);
  return result;
}

uint64_t cmyk64_image_mark_RGB32(uint64_t a1, int *a2, int a3, int a4, int a5, int a6, int32x4_t a7)
{
  if (*(a1 + 40))
  {
    result = 0;
  }

  else
  {
    result = 255;
  }

  v8 = *(a2 + 2);
  v9 = *(a2 + 4);
  if (v9)
  {
    v131 = *(a2 + 5) - a5;
  }

  else
  {
    v131 = 0;
  }

  v10 = *(a2 + 4);
  v11 = a2[1];
  v130 = *a2;
  v129 = *(a2 + 3) - a5;
  v13 = *(a2 + 17);
  v12 = *(a2 + 18);
  v14 = *(a2 + 9);
  v126 = *(a2 + 11);
  v15 = *(a2 + 7) + v126 * a4;
  v16 = *(a1 + 32);
  v17 = v16 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3);
  v18 = 2 * (v9 != 0);
  v144 = v10;
  v145 = result;
  v143 = v11;
  v127 = v14;
  v128 = v13;
  if (*(a1 + 176))
  {
    v125 = *(a2 + 13);
    v124 = *(a2 + 15);
    v123 = ~(-1 << v14);
    v122 = v14 - 4;
    v19 = (v17 - 4);
    v20 = 32 - v11;
    v21 = v10 ^ 0xFFFF;
    v120 = a5;
    v121 = -v13;
    v22 = vdupq_n_s32(v10 ^ 0xFFFFu);
    v119 = v12 + 16 * a3 + 8;
    v139 = v10 ^ 0xFFFF;
    v137 = v22;
    while (1)
    {
      if (((v124 - v15) | (v15 - v125)) < 0)
      {
        v25 = 0;
        v24 = 0;
      }

      else
      {
        v23 = ((v15 & v123) >> v122) & 0xF;
        v24 = (v23 - 7) >= 9 ? v121 : v13;
        v25 = weights_21890[v23] & 0xF;
      }

      v26 = *(a1 + 32) + (v15 >> v14) * v13;
      v135 = a6;
      v133 = v15;
      if (v130 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v27 = v119;
        v28 = v120;
        while (1)
        {
          v29 = *(v27 - 1);
          v30 = *v27;
          v31 = v26 + v29;
          if (v19 >= v26 + v29)
          {
            v32 = (v26 + v29);
          }

          else
          {
            v32 = v19;
          }

          if (v32 < v16)
          {
            v32 = v16;
          }

          v33 = bswap32(*v32);
          v34 = v30 & 0xF;
          if ((v30 & 0xF) != 0)
          {
            break;
          }

          if (v25)
          {
            v45 = (v31 + v24);
            if (v19 < v31 + v24)
            {
              v45 = v19;
            }

            if (v45 < v16)
            {
              v45 = v16;
            }

            v46 = BLEND8_21892[v25];
            v43 = v33 - ((v46 & v33) >> v25);
            v44 = (bswap32(*v45) & v46) >> v25;
            goto LABEL_46;
          }

LABEL_47:
          v47 = (v33 << v11) | (v33 >> v20);
          v48 = HIBYTE(v47) | (HIBYTE(v47) << 8);
          v49 = BYTE2(v47) | (BYTE2(v47) << 8);
          v50 = BYTE1(v47) | (BYTE1(v47) << 8);
          v51 = v47 | result | ((v47 | result) << 8);
          if (v48 <= v49)
          {
            v52 = v49;
          }

          else
          {
            v52 = v48;
          }

          if (v50 > v52)
          {
            v52 = v50;
          }

          a7.i64[0] = __PAIR64__(v52, v51);
          v53.i64[0] = __PAIR64__(v50, v52);
          v53.i64[1] = __PAIR64__(v48, v49);
          a7 = vsubq_s32(vzip1q_s32(a7, vdupq_lane_s32(__PAIR64__(v52, v51), 1)), v53);
          if (v10 != 0xFFFF)
          {
            v54 = vmulq_s32(a7, v22);
            a7 = vsubq_s32(a7, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v54, 0x10uLL), vmvnq_s8(v54)), 0x10uLL));
            v51 -= (v51 * v21 + ((v51 * v21) >> 16) + 1) >> 16;
          }

          if (v9)
          {
            *v9 = v51;
          }

          v27 += 2;
          *v8++ = (a7.u16[2] << 32) | (a7.u32[0] << 48) | (a7.i32[2] << 16) | a7.u16[6];
          v9 = (v9 + v18);
          if (!--v28)
          {
            goto LABEL_107;
          }
        }

        v35 = (v31 + (v30 >> 4));
        if (v19 < v35)
        {
          v35 = v19;
        }

        if (v35 < v16)
        {
          v35 = v16;
        }

        v36 = bswap32(*v35);
        if (v25)
        {
          v37 = (v31 + v24);
          if (v19 >= v37)
          {
            v38 = v37;
          }

          else
          {
            v38 = v19;
          }

          if (v38 < v16)
          {
            v38 = v16;
          }

          v39 = bswap32(*v38);
          v40 = (v37 + (v30 >> 4));
          if (v19 < v40)
          {
            v40 = v19;
          }

          if (v40 < v16)
          {
            v40 = v16;
          }

          v41 = BLEND8_21892[v25];
          v33 = v33 - ((v41 & v33) >> v25) + ((v41 & v39) >> v25);
          v36 = v36 - ((v41 & v36) >> v25) + ((bswap32(*v40) & v41) >> v25);
        }

        v42 = BLEND8_21892[*v27 & 0xF];
        v43 = v33 - ((v42 & v33) >> v34);
        v44 = (v42 & v36) >> v34;
LABEL_46:
        v33 = v43 + v44;
        goto LABEL_47;
      }

LABEL_107:
      v13 = v128;
      v8 += v129;
      LOBYTE(v14) = v127;
      v15 = v133 + v126;
      v9 += v131;
      a6 = v135 - 1;
      if (v135 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_107;
    }

    v55 = v119;
    v56 = v120;
    v141 = v24;
    while (1)
    {
      v57 = *(v55 - 1);
      v58 = *v55;
      v59 = v26 + v57;
      if (v19 >= v26 + v57)
      {
        v60 = (v26 + v57);
      }

      else
      {
        v60 = v19;
      }

      if (v60 < v16)
      {
        v60 = v16;
      }

      v61 = bswap32(*v60);
      v62 = v58 & 0xF;
      if ((v58 & 0xF) != 0)
      {
        v63 = (v59 + (v58 >> 4));
        if (v19 < v63)
        {
          v63 = v19;
        }

        if (v63 < v16)
        {
          v63 = v16;
        }

        v64 = bswap32(*v63);
        if (v25)
        {
          v65 = (v59 + v24);
          if (v19 >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = v19;
          }

          if (v66 < v16)
          {
            v66 = v16;
          }

          v67 = bswap32(*v66);
          v68 = (v65 + (v58 >> 4));
          if (v19 < v68)
          {
            v68 = v19;
          }

          if (v68 < v16)
          {
            v68 = v16;
          }

          v69 = BLEND8_21892[v25];
          v61 = v61 - ((v69 & v61) >> v25) + ((v69 & v67) >> v25);
          v64 = v64 - ((v69 & v64) >> v25) + ((bswap32(*v68) & v69) >> v25);
        }

        v70 = BLEND8_21892[*v55 & 0xF];
        v71 = v61 - ((v70 & v61) >> v62);
        v72 = (v70 & v64) >> v62;
      }

      else
      {
        if (!v25)
        {
          goto LABEL_89;
        }

        v73 = (v59 + v24);
        if (v19 < v59 + v24)
        {
          v73 = v19;
        }

        if (v73 < v16)
        {
          v73 = v16;
        }

        v74 = BLEND8_21892[v25];
        v71 = v61 - ((v74 & v61) >> v25);
        v72 = (bswap32(*v73) & v74) >> v25;
      }

      v61 = v71 + v72;
LABEL_89:
      v75 = (v61 << v11) | (v61 >> v20);
      v76 = HIBYTE(v75) | (HIBYTE(v75) << 8);
      v77 = BYTE2(v75) | (BYTE2(v75) << 8);
      v78 = BYTE1(v75) | (BYTE1(v75) << 8);
      v79 = v75 | result | ((v75 | result) << 8);
      if (v76 <= v77)
      {
        v80 = BYTE2(v75) | (BYTE2(v75) << 8);
      }

      else
      {
        v80 = HIBYTE(v75) | (HIBYTE(v75) << 8);
      }

      if (v78 > v80)
      {
        v80 = v78;
      }

      a7.i64[0] = __PAIR64__(v80, v79);
      v81.i64[0] = __PAIR64__(v78, v80);
      v81.i64[1] = __PAIR64__(v76, v77);
      a7 = vsubq_s32(vzip1q_s32(a7, vdupq_lane_s32(__PAIR64__(v80, v79), 1)), v81);
      if (v10 != 0xFFFF)
      {
        v82 = vmulq_s32(a7, v22);
        a7 = vsubq_s32(a7, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v82, 0x10uLL), vmvnq_s8(v82)), 0x10uLL));
        v79 -= (v79 * v21 + ((v79 * v21) >> 16) + 1) >> 16;
      }

      v83 = (a7.i32[2] << 16) | a7.u16[6];
      v84 = (a7.u16[2] << 32) | (a7.u32[0] << 48) | v83;
      if (v9)
      {
        if (v79)
        {
          if (v79 != 0xFFFF)
          {
            cmyk64_DAplusDAM(v8, v9, v84, v79, *v8, *v9, ~v79);
LABEL_105:
            v24 = v141;
            v22 = v137;
            v21 = v139;
            LOBYTE(v11) = v143;
            v10 = v144;
            result = v145;
            goto LABEL_106;
          }

          *v8 = v84;
          *v9 = -1;
        }
      }

      else if (v79)
      {
        if (v79 != 0xFFFF)
        {
          cmyk64_DplusDM(v8, (a7.u16[2] << 32) | (a7.u32[0] << 48) | v83, *v8, ~v79);
          goto LABEL_105;
        }

        *v8 = v84;
      }

LABEL_106:
      v55 += 2;
      ++v8;
      v9 = (v9 + v18);
      if (!--v56)
      {
        goto LABEL_107;
      }
    }
  }

  v140 = (v12 + 16 * a3);
  v85 = (v17 - 4);
  v86 = 32 - v11;
  v87 = v10 ^ 0xFFFF;
  v88 = vdupq_n_s32(v10 ^ 0xFFFFu);
  v138 = a5;
  v142 = v88;
  do
  {
    v89 = *(a1 + 32);
    v90 = v89 + (v15 >> v14) * v13;
    v136 = a6;
    v134 = v15;
    if (v130 != 1)
    {
      v104 = v140;
      v105 = v138;
      if (a5 < 1)
      {
        goto LABEL_151;
      }

      while (1)
      {
        v106 = *v104;
        v104 += 2;
        v107 = &v90[v106];
        if (v85 < &v90[v106])
        {
          v107 = v85;
        }

        if (v107 < *(a1 + 32))
        {
          v107 = *(a1 + 32);
        }

        v108 = bswap32(*v107);
        v109 = (v108 << v11) | (v108 >> v86);
        v110 = HIBYTE(v109) | (HIBYTE(v109) << 8);
        v111 = BYTE2(v109) | (BYTE2(v109) << 8);
        v112 = BYTE1(v109) | (BYTE1(v109) << 8);
        v113 = v109 | result | ((v109 | result) << 8);
        if (v110 <= v111)
        {
          v114 = BYTE2(v109) | (BYTE2(v109) << 8);
        }

        else
        {
          v114 = HIBYTE(v109) | (HIBYTE(v109) << 8);
        }

        if (v112 > v114)
        {
          v114 = v112;
        }

        a7.i64[0] = __PAIR64__(v114, v113);
        v115.i64[0] = __PAIR64__(v112, v114);
        v115.i64[1] = __PAIR64__(v110, v111);
        a7 = vsubq_s32(vzip1q_s32(a7, vdupq_lane_s32(__PAIR64__(v114, v113), 1)), v115);
        if (v10 != 0xFFFF)
        {
          v116 = vmulq_s32(a7, v88);
          a7 = vsubq_s32(a7, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v116, 0x10uLL), vmvnq_s8(v116)), 0x10uLL));
          v113 -= (v113 * v87 + ((v113 * v87) >> 16) + 1) >> 16;
        }

        v117 = (a7.i32[2] << 16) | a7.u16[6];
        v118 = (a7.u16[2] << 32) | (a7.u32[0] << 48) | v117;
        if (v9)
        {
          if (v113)
          {
            if (v113 != 0xFFFF)
            {
              cmyk64_DAplusDAM(v8, v9, v118, v113, *v8, *v9, ~v113);
LABEL_149:
              v88 = v142;
              LOBYTE(v11) = v143;
              v10 = v144;
              result = v145;
              goto LABEL_150;
            }

            *v8 = v118;
            *v9 = -1;
          }
        }

        else if (v113)
        {
          if (v113 != 0xFFFF)
          {
            cmyk64_DplusDM(v8, (a7.u16[2] << 32) | (a7.u32[0] << 48) | v117, *v8, ~v113);
            goto LABEL_149;
          }

          *v8 = v118;
        }

LABEL_150:
        ++v8;
        v9 = (v9 + v18);
        if (!--v105)
        {
          goto LABEL_151;
        }
      }
    }

    if (a5 >= 1)
    {
      v91 = v140;
      v92 = v138;
      do
      {
        v93 = *v91;
        v91 += 2;
        v94 = &v90[v93];
        if (v85 < &v90[v93])
        {
          v94 = v85;
        }

        if (v94 < v89)
        {
          v94 = v89;
        }

        v95 = bswap32(*v94);
        v96 = (v95 << v11) | (v95 >> v86);
        v97 = HIBYTE(v96) | (HIBYTE(v96) << 8);
        v98 = BYTE2(v96) | (BYTE2(v96) << 8);
        v99 = BYTE1(v96) | (BYTE1(v96) << 8);
        v100 = v96 | result | ((v96 | result) << 8);
        if (v97 <= v98)
        {
          v101 = v98;
        }

        else
        {
          v101 = v97;
        }

        if (v99 > v101)
        {
          v101 = v99;
        }

        a7.i64[0] = __PAIR64__(v101, v100);
        v102.i64[0] = __PAIR64__(v99, v101);
        v102.i64[1] = __PAIR64__(v97, v98);
        a7 = vsubq_s32(vzip1q_s32(a7, vdupq_lane_s32(__PAIR64__(v101, v100), 1)), v102);
        if (v10 != 0xFFFF)
        {
          v103 = vmulq_s32(a7, v88);
          a7 = vsubq_s32(a7, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v103, 0x10uLL), vmvnq_s8(v103)), 0x10uLL));
          v100 -= (v100 * v87 + ((v100 * v87) >> 16) + 1) >> 16;
        }

        if (v9)
        {
          *v9 = v100;
        }

        *v8++ = (a7.u16[2] << 32) | (a7.u32[0] << 48) | (a7.i32[2] << 16) | a7.u16[6];
        v9 = (v9 + v18);
        --v92;
      }

      while (v92);
    }

LABEL_151:
    v13 = v128;
    v8 += v129;
    LOBYTE(v14) = v127;
    v15 = v134 + v126;
    v9 += v131;
    a6 = v136 - 1;
  }

  while (v136 != 1);
  return result;
}

void *cmyk64_image_mark_RGB24(void *result, int *a2, int a3, int a4, int a5, int a6)
{
  v164 = result;
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  if (v7)
  {
    v155 = *(a2 + 5) - a5;
  }

  else
  {
    v155 = 0;
  }

  v8 = *(a2 + 4);
  v154 = *a2;
  v153 = *(a2 + 3) - a5;
  v10 = *(a2 + 17);
  v9 = *(a2 + 18);
  v11 = *(a2 + 9);
  v150 = *(a2 + 11);
  v12 = *(a2 + 7) + v150 * a4;
  v13 = result[4];
  v14 = &v13[(*(result + 65) - 1) * *(result + 6) + (((*(result + 2) >> 22) * *(result + 64)) >> 3)];
  v15 = 2 * (v7 != 0);
  v163 = v8;
  v151 = v11;
  v152 = v10;
  if (result[22])
  {
    v147 = *(a2 + 15);
    v148 = *(a2 + 13);
    v145 = ~(-1 << v11);
    v143 = -v10;
    v144 = v11 - 4;
    v16 = v14 - 3;
    v17 = v8 ^ 0xFFFF;
    v18 = vdup_n_s32(v8 ^ 0xFFFFu);
    v141 = v9 + 16 * a3 + 8;
    v142 = a5;
    v19 = xmmword_18439CC00;
    while (1)
    {
      if (((v147 - v12) | (v12 - v148)) < 0)
      {
        v22 = 0;
        v21 = 0;
      }

      else
      {
        v20 = ((v12 & v145) >> v144) & 0xF;
        v21 = (v20 - 7) >= 9 ? v143 : v10;
        v22 = weights_21890[v20] & 0xF;
      }

      v23 = v164[4] + (v12 >> v11) * v10;
      v146 = -2 - (0xFFFF * v17 + ((0xFFFF * v17) >> 16));
      v24 = HIWORD(v146);
      v159 = a6;
      v157 = v12;
      if (v154 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v25 = v141;
        for (i = v142; i; --i)
        {
          v27 = *(v25 - 1);
          v28 = *v25;
          v29 = v23 + v27;
          if (v16 >= v23 + v27)
          {
            v30 = (v23 + v27);
          }

          else
          {
            v30 = v16;
          }

          if (v30 < v13)
          {
            v30 = v13;
          }

          v31 = (*v30 << 24) | (v30[1] << 16) | (v30[2] << 8);
          v32 = v28 & 0xF;
          if ((v28 & 0xF) != 0)
          {
            v33 = (v29 + (v28 >> 4));
            if (v16 < v33)
            {
              v33 = v16;
            }

            if (v33 < v13)
            {
              v33 = v13;
            }

            v34 = (*v33 << 24) | (v33[1] << 16) | (v33[2] << 8);
            if (v22)
            {
              v35 = (v29 + v21);
              if (v16 >= v35)
              {
                v36 = v35;
              }

              else
              {
                v36 = v16;
              }

              if (v36 < v13)
              {
                v36 = v13;
              }

              result = v36[1];
              v37 = (*v36 << 24) | (result << 16) | (v36[2] << 8);
              v38 = &v35[v28 >> 4];
              if (v16 < v38)
              {
                v38 = v16;
              }

              if (v38 < v13)
              {
                v38 = v13;
              }

              v39 = BLEND8_21892[v22];
              v31 = v31 - ((v39 & v31) >> v22) + ((v39 & v37) >> v22);
              v34 = v34 - ((v39 & v34) >> v22) + ((((*v38 << 24) | (v38[1] << 16) | (v38[2] << 8)) & v39) >> v22);
            }

            v40 = BLEND8_21892[*v25 & 0xF];
            v41 = v31 - ((v40 & v31) >> v32);
            v42 = (v40 & v34) >> v32;
          }

          else
          {
            if (!v22)
            {
              goto LABEL_44;
            }

            v43 = (v29 + v21);
            if (v16 < v29 + v21)
            {
              v43 = v16;
            }

            if (v43 < v13)
            {
              v43 = v13;
            }

            v44 = BLEND8_21892[v22];
            v41 = v31 - ((v44 & v31) >> v22);
            v42 = (((*v43 << 24) | (v43[1] << 16) | (v43[2] << 8)) & v44) >> v22;
          }

          v31 = v41 + v42;
LABEL_44:
          v45 = HIBYTE(v31) | (HIBYTE(v31) << 8);
          v46 = BYTE2(v31) | (BYTE2(v31) << 8);
          v47 = BYTE1(v31) | (BYTE1(v31) << 8);
          if (v45 <= v46)
          {
            v48 = BYTE2(v31) | (BYTE2(v31) << 8);
          }

          else
          {
            v48 = HIBYTE(v31) | (HIBYTE(v31) << 8);
          }

          if (v47 <= v48)
          {
            v49 = v48;
          }

          else
          {
            v49 = v47;
          }

          v50 = v49 - v45;
          v51 = v49 - v46;
          v52 = v49 - v47;
          v53 = v49 ^ 0xFFFF;
          if (v8 == 0xFFFF)
          {
            v54 = (v53 << 48) | (v52 << 32);
            v55 = -1;
            if (!v7)
            {
              goto LABEL_55;
            }

LABEL_54:
            *v7 = v55;
            goto LABEL_55;
          }

          v56 = vmul_s32(__PAIR64__(v52, v53), v18);
          v50 -= (v50 * v17 + ((v50 * v17) >> 16) + 1) >> 16;
          v51 -= (v51 * v17 + ((v51 * v17) >> 16) + 1) >> 16;
          v57 = vand_s8(vsub_s32(__PAIR64__(v52, v53), vshr_n_u32(vsub_s32(vshr_n_u32(v56, 0x10uLL), vmvn_s8(v56)), 0x10uLL)), 0xFFFF0000FFFFLL);
          v58.i64[0] = v57.u32[0];
          v58.i64[1] = v57.u32[1];
          v59 = vshlq_u64(v58, v19);
          v54 = vorrq_s8(v59, vdupq_laneq_s64(v59, 1)).u64[0];
          v55 = (-2 - (0xFFFF * v17 + ((0xFFFF * v17) >> 16))) >> 16;
          if (v7)
          {
            goto LABEL_54;
          }

LABEL_55:
          v25 += 2;
          *v6++ = v54 | (v51 << 16) | v50;
          v7 = (v7 + v15);
        }
      }

LABEL_108:
      v10 = v152;
      v6 += v153;
      LOBYTE(v11) = v151;
      v12 = v157 + v150;
      v7 += v155;
      a6 = v159 - 1;
      if (v159 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_108;
    }

    v61 = v141;
    v60 = v142;
    v162 = v21;
    while (1)
    {
      v62 = *(v61 - 1);
      v63 = *v61;
      v64 = v23 + v62;
      if (v16 >= v23 + v62)
      {
        v65 = (v23 + v62);
      }

      else
      {
        v65 = v16;
      }

      if (v65 < v13)
      {
        v65 = v13;
      }

      v66 = (*v65 << 24) | (v65[1] << 16) | (v65[2] << 8);
      v67 = v63 & 0xF;
      if ((v63 & 0xF) != 0)
      {
        v68 = (v64 + (v63 >> 4));
        if (v16 < v68)
        {
          v68 = v16;
        }

        if (v68 < v13)
        {
          v68 = v13;
        }

        v69 = (*v68 << 24) | (v68[1] << 16) | (v68[2] << 8);
        if (v22)
        {
          v70 = (v64 + v21);
          if (v16 >= v70)
          {
            v71 = v70;
          }

          else
          {
            v71 = v16;
          }

          if (v71 < v13)
          {
            v71 = v13;
          }

          v72 = (*v71 << 24) | (v71[1] << 16) | (v71[2] << 8);
          v73 = &v70[v63 >> 4];
          if (v16 < v73)
          {
            v73 = v16;
          }

          if (v73 < v13)
          {
            v73 = v13;
          }

          v74 = BLEND8_21892[v22];
          v66 = v66 - ((v74 & v66) >> v22) + ((v74 & v72) >> v22);
          v69 = v69 - ((v74 & v69) >> v22) + ((((*v73 << 24) | (v73[1] << 16) | (v73[2] << 8)) & v74) >> v22);
        }

        v75 = BLEND8_21892[*v61 & 0xF];
        v76 = v66 - ((v75 & v66) >> v67);
        v77 = (v75 & v69) >> v67;
      }

      else
      {
        if (!v22)
        {
          goto LABEL_88;
        }

        v78 = (v64 + v21);
        if (v16 < v64 + v21)
        {
          v78 = v16;
        }

        if (v78 < v13)
        {
          v78 = v13;
        }

        v79 = BLEND8_21892[v22];
        v76 = v66 - ((v79 & v66) >> v22);
        v77 = (((*v78 << 24) | (v78[1] << 16) | (v78[2] << 8)) & v79) >> v22;
      }

      v66 = v76 + v77;
LABEL_88:
      v80 = HIBYTE(v66) | (HIBYTE(v66) << 8);
      v81 = BYTE2(v66) | (BYTE2(v66) << 8);
      v82 = BYTE1(v66) | (BYTE1(v66) << 8);
      if (v80 <= v81)
      {
        v83 = BYTE2(v66) | (BYTE2(v66) << 8);
      }

      else
      {
        v83 = HIBYTE(v66) | (HIBYTE(v66) << 8);
      }

      if (v82 <= v83)
      {
        v84 = v83;
      }

      else
      {
        v84 = v82;
      }

      v85 = v84 - v80;
      v86 = v84 - v81;
      v87 = v84 - v82;
      v88 = v84 ^ 0xFFFF;
      if (v8 == 0xFFFF)
      {
        v89 = (v88 << 48) | (v87 << 32);
        v90 = 0xFFFF;
      }

      else
      {
        v91 = vmul_s32(__PAIR64__(v87, v88), v18);
        v85 -= (v85 * v17 + ((v85 * v17) >> 16) + 1) >> 16;
        v86 -= (v86 * v17 + ((v86 * v17) >> 16) + 1) >> 16;
        v92 = vand_s8(vsub_s32(__PAIR64__(v87, v88), vshr_n_u32(vsub_s32(vshr_n_u32(v91, 0x10uLL), vmvn_s8(v91)), 0x10uLL)), 0xFFFF0000FFFFLL);
        v93.i64[0] = v92.u32[0];
        v93.i64[1] = v92.u32[1];
        v94 = vshlq_u64(v93, v19);
        v89 = vorrq_s8(v94, vdupq_laneq_s64(v94, 1)).u64[0];
        v90 = v24;
      }

      v95 = v89 | (v86 << 16) | v85;
      if (v7)
      {
        if (v90)
        {
          if (v90 != 0xFFFF)
          {
            result = cmyk64_DAplusDAM(v6, v7, v95, v90, *v6, *v7, v90 ^ 0xFFFFu);
LABEL_106:
            v24 = HIWORD(v146);
            v21 = v162;
            v19 = xmmword_18439CC00;
            v8 = v163;
            goto LABEL_107;
          }

          *v6 = v95;
          *v7 = -1;
        }
      }

      else if (v90)
      {
        if (v90 != 0xFFFF)
        {
          result = cmyk64_DplusDM(v6, v95, *v6, v90 ^ 0xFFFFu);
          goto LABEL_106;
        }

        *v6 = v95;
      }

LABEL_107:
      v61 += 2;
      ++v6;
      v7 = (v7 + v15);
      if (!--v60)
      {
        goto LABEL_108;
      }
    }
  }

  v161 = (v9 + 16 * a3);
  v96 = v14 - 3;
  v97 = v8 ^ 0xFFFF;
  v149 = a5;
  v98 = vdup_n_s32(v8 ^ 0xFFFFu);
  v99 = xmmword_18439CC00;
  do
  {
    v100 = v164[4];
    v101 = &v100[(v12 >> v11) * v10];
    v160 = a6;
    v158 = v12;
    if (v154 != 1)
    {
      v121 = v161;
      v122 = v149;
      if (a5 < 1)
      {
        goto LABEL_156;
      }

      while (1)
      {
        v123 = *v121;
        v121 += 2;
        v124 = &v101[v123];
        if (v96 < &v101[v123])
        {
          v124 = v96;
        }

        if (v124 < v164[4])
        {
          v124 = v164[4];
        }

        v125 = *v124 | (*v124 << 8);
        v126 = v124[1] | (v124[1] << 8);
        v127 = v124[2] | (v124[2] << 8);
        if (v125 <= v126)
        {
          v128 = v124[1] | (v124[1] << 8);
        }

        else
        {
          v128 = *v124 | (*v124 << 8);
        }

        if (v127 <= v128)
        {
          v129 = v128;
        }

        else
        {
          v129 = v127;
        }

        v130 = v129 - v125;
        v131 = v129 - v126;
        v132 = v129 - v127;
        v133 = v129 ^ 0xFFFF;
        if (v8 == 0xFFFF)
        {
          v134 = (v133 << 48) | (v132 << 32);
          v135 = 0xFFFF;
        }

        else
        {
          v136 = vmul_s32(__PAIR64__(v132, v133), v98);
          v130 -= (v130 * v97 + ((v130 * v97) >> 16) + 1) >> 16;
          v131 -= (v131 * v97 + ((v131 * v97) >> 16) + 1) >> 16;
          v137 = vand_s8(vsub_s32(__PAIR64__(v132, v133), vshr_n_u32(vsub_s32(vshr_n_u32(v136, 0x10uLL), vmvn_s8(v136)), 0x10uLL)), 0xFFFF0000FFFFLL);
          v138.i64[0] = v137.u32[0];
          v138.i64[1] = v137.u32[1];
          v139 = vshlq_u64(v138, v99);
          v134 = vorrq_s8(v139, vdupq_laneq_s64(v139, 1)).u64[0];
          v135 = (-2 - (0xFFFF * v97 + ((0xFFFF * v97) >> 16))) >> 16;
        }

        v140 = v134 | (v131 << 16) | v130;
        if (v7)
        {
          if (v135)
          {
            if (v135 != 0xFFFF)
            {
              result = cmyk64_DAplusDAM(v6, v7, v140, v135, *v6, *v7, v135 ^ 0xFFFF);
LABEL_154:
              v99 = xmmword_18439CC00;
              v8 = v163;
              goto LABEL_155;
            }

            *v6 = v140;
            *v7 = -1;
          }
        }

        else if (v135)
        {
          if (v135 != 0xFFFF)
          {
            result = cmyk64_DplusDM(v6, v140, *v6, v135 ^ 0xFFFF);
            goto LABEL_154;
          }

          *v6 = v140;
        }

LABEL_155:
        ++v6;
        v7 = (v7 + v15);
        if (!--v122)
        {
          goto LABEL_156;
        }
      }
    }

    if (a5 >= 1)
    {
      v102 = v161;
      v103 = v149;
      while (1)
      {
        v104 = *v102;
        v102 += 2;
        v105 = &v101[v104];
        if (v96 < &v101[v104])
        {
          v105 = v96;
        }

        if (v105 < v100)
        {
          v105 = v100;
        }

        v106 = *v105 | (*v105 << 8);
        v107 = v105[1] | (v105[1] << 8);
        v108 = v105[2] | (v105[2] << 8);
        v109 = v106 <= v107 ? v105[1] | (v105[1] << 8) : *v105 | (*v105 << 8);
        v110 = v108 <= v109 ? v109 : v108;
        v111 = v110 - v106;
        v112 = v110 - v107;
        v113 = v110 - v108;
        v114 = v110 ^ 0xFFFF;
        if (v8 == 0xFFFF)
        {
          break;
        }

        v117 = vmul_s32(__PAIR64__(v113, v114), v98);
        v111 -= (v111 * v97 + ((v111 * v97) >> 16) + 1) >> 16;
        v112 -= (v112 * v97 + ((v112 * v97) >> 16) + 1) >> 16;
        v118 = vand_s8(vsub_s32(__PAIR64__(v113, v114), vshr_n_u32(vsub_s32(vshr_n_u32(v117, 0x10uLL), vmvn_s8(v117)), 0x10uLL)), 0xFFFF0000FFFFLL);
        v119.i64[0] = v118.u32[0];
        v119.i64[1] = v118.u32[1];
        v120 = vshlq_u64(v119, v99);
        v115 = vorrq_s8(v120, vdupq_laneq_s64(v120, 1)).u64[0];
        v116 = (-2 - (0xFFFF * v97 + ((0xFFFF * v97) >> 16))) >> 16;
        if (v7)
        {
          goto LABEL_128;
        }

LABEL_129:
        *v6++ = v115 | (v112 << 16) | v111;
        v7 = (v7 + v15);
        if (!--v103)
        {
          goto LABEL_156;
        }
      }

      v115 = (v114 << 48) | (v113 << 32);
      v116 = -1;
      if (!v7)
      {
        goto LABEL_129;
      }

LABEL_128:
      *v7 = v116;
      goto LABEL_129;
    }

LABEL_156:
    v10 = v152;
    v6 += v153;
    LOBYTE(v11) = v151;
    v12 = v158 + v150;
    v7 += v155;
    a6 = v160 - 1;
  }

  while (v160 != 1);
  return result;
}

void *cmyk64_image_mark_W8(void *result, int *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v8 = *(a2 + 4);
  v9 = *(a2 + 2);
  v10 = *(a2 + 4);
  if (v10)
  {
    v20 = *(a2 + 5) - a5;
  }

  else
  {
    v20 = 0;
  }

  v19 = *a2;
  v18 = *(a2 + 3) - a5;
  if (v8 == 0xFFFF)
  {
    v11 = 0xFEFE000000000000;
  }

  else
  {
    v11 = (65278 - ((65278 * (v8 ^ 0xFFFF) + ((65278 * (v8 ^ 0xFFFFu)) >> 16) + 1) >> 16)) << 48;
  }

  if (v8 == 0xFFFF)
  {
    v12 = -1;
  }

  else
  {
    v12 = (-2 - (0xFFFF * (v8 ^ 0xFFFF) + ((0xFFFF * (v8 ^ 0xFFFFu)) >> 16))) >> 16;
  }

  v13 = 2 * (v10 != 0);
  if (result[22])
  {
    do
    {
      if (v19 == 1)
      {
        if (a5 >= 1)
        {
          v14 = a5;
          do
          {
            if (v10)
            {
              *v10 = v12;
            }

            *v9++ = v11;
            v10 = (v10 + v13);
            --v14;
          }

          while (v14);
        }
      }

      else
      {
        v15 = a5;
        if (a5 >= 1)
        {
          do
          {
            if (v10)
            {
              if (v12)
              {
                if (v12 == 0xFFFF)
                {
                  *v9 = v11;
                  *v10 = -1;
                }

                else
                {
                  result = cmyk64_DAplusDAM(v9, v10, v11, v12, *v9, *v10, ~v12);
                }
              }
            }

            else if (v12)
            {
              if (v12 == 0xFFFF)
              {
                *v9 = v11;
              }

              else
              {
                result = cmyk64_DplusDM(v9, v11, *v9, ~v12);
              }
            }

            ++v9;
            v10 = (v10 + v13);
            --v15;
          }

          while (v15);
        }
      }

      v9 += v18;
      v10 += v20;
      --a6;
    }

    while (a6);
  }

  else
  {
    do
    {
      if (v19 == 1)
      {
        if (a5 >= 1)
        {
          v16 = a5;
          do
          {
            if (v10)
            {
              *v10 = v12;
            }

            *v9++ = v11;
            v10 = (v10 + v13);
            --v16;
          }

          while (v16);
        }
      }

      else
      {
        v17 = a5;
        if (a5 >= 1)
        {
          do
          {
            if (v10)
            {
              if (v12)
              {
                if (v12 == 0xFFFF)
                {
                  *v9 = v11;
                  *v10 = -1;
                }

                else
                {
                  result = cmyk64_DAplusDAM(v9, v10, v11, v12, *v9, *v10, ~v12);
                }
              }
            }

            else if (v12)
            {
              if (v12 == 0xFFFF)
              {
                *v9 = v11;
              }

              else
              {
                result = cmyk64_DplusDM(v9, v11, *v9, ~v12);
              }
            }

            ++v9;
            v10 = (v10 + v13);
            --v17;
          }

          while (v17);
        }
      }

      v9 += v18;
      v10 += v20;
      --a6;
    }

    while (a6);
  }

  return result;
}

unint64_t cmyk64_mark_constmask(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 96);
  if (v4)
  {
    v6 = *v4;
  }

  else
  {
    v6 = 0xFFFF;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 136);
  v9 = **(a1 + 88);
  v349 = *(a1 + 28);
  v353 = *(a1 + 40);
  v359 = *(a1 + 4);
  pthread_mutex_lock(&cmyk64_cacheColorLock);
  v10 = cmyk64_cacheColor;
  if (!cmyk64_cacheColor || *(cmyk64_cacheColor + 16) != v9 || *(cmyk64_cacheColor + 24) != v6)
  {
    v13 = 0;
    while (1)
    {
      if (!v10)
      {
        goto LABEL_14;
      }

      v14 = v10;
      v15 = v13;
      if (*(v10 + 16) == v9 && *(v10 + 24) == v6)
      {
        break;
      }

      v10 = *v10;
      v13 = v14;
      if (!*v14)
      {
        if (cmyk64_cacheColorCount > 6)
        {
          *v15 = 0;
          v18 = *(v14 + 8);
        }

        else
        {
LABEL_14:
          v16 = cmyk64_cacheColorBase;
          if (cmyk64_cacheColorBase)
          {
            v17 = cmyk64_cacheColorCount;
          }

          else
          {
            v16 = malloc_type_calloc(1uLL, 0x70E0uLL, 0x102004053D502F9uLL);
            v17 = 0;
            cmyk64_cacheColorBase = v16;
          }

          v14 = v16 + 32 * v17;
          v18 = v16 + 4096 * v17 + 224;
          *(v14 + 8) = v18;
          cmyk64_cacheColorCount = v17 + 1;
        }

        *v14 = cmyk64_cacheColor;
        cmyk64_cacheColor = v14;
        *(v14 + 16) = v9;
        *(v14 + 24) = v6;
        *(v14 + 26) = 0;
        *(v14 + 30) = 0;
        v19 = vdupq_n_s32(v9);
        v20 = vdupq_n_s32(WORD1(v9));
        v21 = vdupq_n_s32(WORD2(v9));
        v22 = vdupq_n_s32(HIWORD(v9));
        v23 = vdupq_n_s32(v6);
        v24 = vdupq_n_s32(v9);
        v25 = vdupq_n_s32(HIDWORD(v9));
        v26 = vdupq_n_s16(v6);
        v27 = v18 + 64;
        v28 = 256;
        v29 = xmmword_18439CC10;
        v30.i64[0] = 0xFFFF0000FFFFLL;
        v30.i64[1] = 0xFFFF0000FFFFLL;
        v31.i64[0] = 0x100000001;
        v31.i64[1] = 0x100000001;
        v32 = xmmword_18439CB90;
        v33.i64[0] = 0x800000008;
        v33.i64[1] = 0x800000008;
        v34 = vdupq_n_s32(0x101u);
        do
        {
          v35 = veorq_s8(vmulq_s32(v29, v34), v30);
          v36 = veorq_s8(vmulq_s32(v32, v34), v30);
          v37 = vmulq_s32(v36, v19);
          v38 = vmulq_s32(v35, v19);
          v39 = vmulq_s32(v35, v20);
          v40 = vmulq_s32(v36, v20);
          v41 = vmulq_s32(v35, v21);
          v42 = vmulq_s32(v36, v21);
          v43 = vmulq_s32(v36, v22);
          v44 = vmulq_s32(v35, v22);
          v45 = vmulq_s32(v36, v23);
          v46 = vmulq_s32(v35, v23);
          v47 = vaddq_s32(vsraq_n_u32(v37, v37, 0x10uLL), v31);
          v48 = vaddq_s32(vsraq_n_u32(v38, v38, 0x10uLL), v31);
          v49 = vaddq_s32(vsraq_n_u32(v39, v39, 0x10uLL), v31);
          v50 = vaddq_s32(vsraq_n_u32(v40, v40, 0x10uLL), v31);
          v51 = vaddq_s32(vsraq_n_u32(v41, v41, 0x10uLL), v31);
          v52 = vaddq_s32(vsraq_n_u32(v42, v42, 0x10uLL), v31);
          v53 = vsubq_s32(v22, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v43, v43, 0x10uLL), v31), 0x10uLL));
          v54 = vsubq_s32(v22, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v44, v44, 0x10uLL), v31), 0x10uLL));
          v55.i64[0] = v54.u32[2];
          v55.i64[1] = v54.u32[3];
          v56 = v55;
          v55.i64[0] = v54.u32[0];
          v55.i64[1] = v54.u32[1];
          v57 = v55;
          v55.i64[0] = v53.u32[2];
          v55.i64[1] = v53.u32[3];
          v58 = v55;
          v55.i64[0] = v53.u32[0];
          v55.i64[1] = v53.u32[1];
          _Q29 = vandq_s8(vsubq_s32(v25, vshrq_n_u32(v52, 0x10uLL)), v30);
          _Q28 = vandq_s8(vsubq_s32(v25, vshrq_n_u32(v51, 0x10uLL)), v30);
          v61 = vshll_n_s32(*_Q29.i8, 0x20uLL);
          __asm { SHLL2           V29.2D, V29.4S, #0x20 ; ' ' }

          v66 = vshll_n_s32(*_Q28.i8, 0x20uLL);
          __asm { SHLL2           V28.2D, V28.4S, #0x20 ; ' ' }

          v67 = vorrq_s8(vshlq_n_s64(v56, 0x30uLL), _Q28);
          v68 = vorrq_s8(vshlq_n_s64(v57, 0x30uLL), v66);
          v69 = vorrq_s8(vshlq_n_s64(v58, 0x30uLL), _Q29);
          v70 = vorrq_s8(vshlq_n_s64(v55, 0x30uLL), v61);
          v71 = vshlq_n_s32(vsubq_s32(v20, vshrq_n_u32(v50, 0x10uLL)), 0x10uLL);
          v72 = vshlq_n_s32(vsubq_s32(v20, vshrq_n_u32(v49, 0x10uLL)), 0x10uLL);
          v55.i64[0] = v72.u32[2];
          v55.i64[1] = v72.u32[3];
          v73 = v55;
          v55.i64[0] = v72.u32[0];
          v55.i64[1] = v72.u32[1];
          v74 = v55;
          v55.i64[0] = v71.u32[2];
          v55.i64[1] = v71.u32[3];
          v75 = v55;
          v55.i64[0] = v71.u32[0];
          v55.i64[1] = v71.u32[1];
          v76 = v55;
          v77 = vandq_s8(vsubq_s32(v24, vshrq_n_u32(v48, 0x10uLL)), v30);
          v78 = vandq_s8(vsubq_s32(v24, vshrq_n_u32(v47, 0x10uLL)), v30);
          v55.i64[0] = v78.u32[0];
          v55.i64[1] = v78.u32[1];
          v79 = v55;
          v55.i64[0] = v78.u32[2];
          v55.i64[1] = v78.u32[3];
          v80 = v55;
          v55.i64[0] = v77.u32[0];
          v55.i64[1] = v77.u32[1];
          v81 = v55;
          v55.i64[0] = v77.u32[2];
          v55.i64[1] = v77.u32[3];
          v82 = vorrq_s8(v67, vorrq_s8(v73, v55));
          v83 = vorrq_s8(v68, vorrq_s8(v74, v81));
          v84 = vorrq_s8(v69, vorrq_s8(v75, v80));
          v85 = vorrq_s8(v70, vorrq_s8(v76, v79));
          *(v27 - 64) = v85.i64[0];
          *(v27 - 32) = v84.i64[0];
          *v27 = v83.i64[0];
          *(v27 + 32) = v82.i64[0];
          v86 = vsubq_s16(v26, vaddhn_high_s32(vaddhn_s32(vsraq_n_u32(v45, v45, 0x10uLL), v31), vsraq_n_u32(v46, v46, 0x10uLL), v31));
          *(v27 - 56) = v86.i16[0];
          *(v27 - 48) = v85.i64[1];
          *(v27 - 16) = v84.i64[1];
          *(v27 + 16) = v83.i64[1];
          *(v27 + 48) = v82.i64[1];
          *(v27 - 40) = v86.i16[1];
          *(v27 - 24) = v86.i16[2];
          *(v27 - 8) = v86.i16[3];
          *(v27 + 8) = v86.i16[4];
          *(v27 + 24) = v86.i16[5];
          *(v27 + 40) = v86.i16[6];
          *(v27 + 56) = v86.i16[7];
          v32 = vaddq_s32(v32, v33);
          v27 += 128;
          v29 = vaddq_s32(v29, v33);
          v28 -= 8;
        }

        while (v28);
        v12 = v14 + 8;
        result = pthread_mutex_unlock(&cmyk64_cacheColorLock);
        goto LABEL_25;
      }
    }

    if (v13)
    {
      *v13 = *v10;
      *v10 = cmyk64_cacheColor;
      cmyk64_cacheColor = v10;
    }
  }

  result = pthread_mutex_unlock(&cmyk64_cacheColorLock);
  v12 = v10 + 8;
LABEL_25:
  v87 = *(a1 + 12);
  v88 = *(a1 + 16);
  v89 = a2;
  if (v3)
  {
    v90 = *(a1 + 32) >> 1;
    v91 = (v3 + 2 * v90 * v88 + 2 * v87);
    v92 = 1;
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    v91 = 0;
    v90 = 0;
    v92 = 0;
    if (!v8)
    {
      return result;
    }
  }

  v93 = v90 - v359;
  if (v3)
  {
    v94 = v90 - v359;
  }

  else
  {
    v94 = v90;
  }

  v95 = *v12;
  v96 = *(*v12 + 4088);
  v97 = *(v95 + 4080);
  v98 = (v353 + 8 * (v349 >> 3) * v88 + 8 * v87);
  v99 = *(a1 + 124);
  v100 = v8 + *(a1 + 108) * v99 + *(a1 + 104);
  v354 = v99 - v359;
  v101 = (v349 >> 3) - v359;
  switch(v89)
  {
    case 0:
      if (v3)
      {
        v102 = 2 * v92;
        do
        {
          v103 = v359;
          do
          {
            v104 = *v100;
            if (*v100)
            {
              if (v104 == 255)
              {
                LOWORD(v105) = 0;
                *v98 = 0;
              }

              else
              {
                v106 = *v91;
                v107 = (v104 ^ 0xFF | ((v104 ^ 0xFF) << 8)) ^ 0xFFFF;
                v108 = vdup_n_s32(v107);
                v109 = vmul_s32(vand_s8(*v98, 0xFFFF0000FFFFLL), v108);
                v110.i32[0] = HIWORD(v98->u32[0]);
                v110.i32[1] = HIWORD(*v98);
                v111 = vmul_s32(v110, v108);
                *v98 = vsli_n_s32(vsub_s32(*v98, vshr_n_u32(vadd_s32(vsra_n_u32(v109, v109, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v110, vshr_n_u32(vadd_s32(vsra_n_u32(v111, v111, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                v105 = v106 - ((v107 * v106 + ((v107 * v106) >> 16) + 1) >> 16);
              }

              *v91 = v105;
            }

            ++v100;
            ++v98;
            v91 = (v91 + v102);
            --v103;
          }

          while (v103);
          v100 += v354;
          v98 += v101;
          v91 += v94;
          --v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v112 = v359;
          do
          {
            v113 = *v100;
            if (*v100)
            {
              if (v113 == 255)
              {
                *v98 = 0;
              }

              else
              {
                result = cmyk64_DM(v98, *v98, v113 ^ 0xFF | ((v113 ^ 0xFFu) << 8));
              }
            }

            ++v100;
            ++v98;
            --v112;
          }

          while (v112);
          v100 += v354;
          v98 += v101;
          --v7;
        }

        while (v7);
      }

      return result;
    case 1:
      v202 = v100 & 3;
      if (v3)
      {
        v203 = v202 + v359;
        v204 = &v98[-(v100 & 3)];
        v205 = &v91[-(v100 & 3)];
        if ((v100 & 3) != 0)
        {
          v206 = v100 & 0xFC;
        }

        else
        {
          v206 = v100;
        }

        if ((v100 & 3) != 0)
        {
          result = (-1 << (8 * v202));
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }

        if ((v100 & 3) != 0)
        {
          v100 &= 0xFFFFFFFFFFFFFFFCLL;
          v91 = v205;
          v98 = v204;
        }

        else
        {
          v203 = v359;
        }

        if (((v203 + v206) & 3) != 0)
        {
          v207 = 4 - ((v203 + v206) & 3);
          v202 += v207;
          v208 = 0xFFFFFFFF >> (8 * v207);
          if (v203 >= 4)
          {
            v209 = 0xFFFFFFFF >> (8 * v207);
          }

          else
          {
            v209 = 0;
          }

          v361 = v209;
          if (v203 >= 4)
          {
            v208 = -1;
          }

          result = v208 & result;
          v351 = result;
        }

        else
        {
          v351 = result;
          v361 = 0;
        }

        v356 = v354 - v202;
        v347 = v101 - v202;
        v345 = v203 >> 2;
        v320 = vdup_n_s16(v96);
        v343 = v93 - v202;
        do
        {
          v321 = *v100 & v351;
          v322 = v345;
          v323 = v361;
          if (!v321)
          {
            goto LABEL_448;
          }

LABEL_446:
          if (v321 == -1)
          {
            *v98 = v97;
            v98[1] = v97;
            v98[2] = v97;
            v98[3] = v97;
            *v91 = v320;
            goto LABEL_448;
          }

          while (1)
          {
            if (v321)
            {
              if (v321 == 255)
              {
                *v98 = v97;
                *v91 = v96;
              }

              else
              {
                result = cmyk64_DAplusDAM(v98, v91, *(v95 + 16 * v321), *(v95 + 16 * v321 + 8), *v98, *v91, (v321 | (v321 << 8)) ^ 0xFFFFu);
              }
            }

            if (BYTE1(v321))
            {
              if (BYTE1(v321) == 255)
              {
                v98[1] = v97;
                v91[1] = v96;
              }

              else
              {
                result = cmyk64_DAplusDAM(&v98[1], v91 + 1, *(v95 + 16 * BYTE1(v321)), *(v95 + 16 * BYTE1(v321) + 8), *&v98[1], v91[1], (BYTE1(v321) | (BYTE1(v321) << 8)) ^ 0xFFFFu);
              }
            }

            if (BYTE2(v321))
            {
              if (BYTE2(v321) == 255)
              {
                v98[2] = v97;
                v91[2] = v96;
              }

              else
              {
                result = cmyk64_DAplusDAM(&v98[2], v91 + 2, *(v95 + 16 * BYTE2(v321)), *(v95 + 16 * BYTE2(v321) + 8), *&v98[2], v91[2], (BYTE2(v321) | (BYTE2(v321) << 8)) ^ 0xFFFFu);
              }
            }

            v325 = HIBYTE(v321);
            if (HIBYTE(v321) == 255)
            {
              v98[3] = v97;
              v91[3] = v96;
            }

            else if (v325)
            {
              result = cmyk64_DAplusDAM(&v98[3], v91 + 3, *(v95 + 16 * v325), *(v95 + 16 * v325 + 8), *&v98[3], v91[3], (v325 | (v325 << 8)) ^ 0xFFFF);
            }

LABEL_448:
            while (1)
            {
              v324 = v322;
              v98 += 4;
              v91 += 4;
              --v322;
              v100 += 4;
              if (v324 < 2)
              {
                break;
              }

              v321 = *v100;
              if (*v100)
              {
                goto LABEL_446;
              }
            }

            if (!v323)
            {
              break;
            }

            v323 = 0;
            v321 = *v100 & v361;
          }

          v100 += v356;
          v98 += v347;
          v91 += v343;
          --v7;
        }

        while (v7);
      }

      else
      {
        v296 = (v349 >> 3) - v359;
        v297 = v202 + v359;
        if ((v100 & 3) != 0)
        {
          v298 = v100 & 0xFC;
        }

        else
        {
          v298 = v100;
        }

        if ((v100 & 3) != 0)
        {
          v299 = -1 << (8 * v202);
        }

        else
        {
          v299 = -1;
        }

        if ((v100 & 3) != 0)
        {
          v300 = (v100 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v300 = v100;
        }

        if ((v100 & 3) != 0)
        {
          v98 -= v100 & 3;
        }

        else
        {
          v297 = v359;
        }

        if (((v297 + v298) & 3) != 0)
        {
          v301 = 4 - ((v297 + v298) & 3);
          v202 += v301;
          v302 = 0xFFFFFFFF >> (8 * v301);
          if (v297 >= 4)
          {
            v303 = 0xFFFFFFFF >> (8 * v301);
          }

          else
          {
            v303 = 0;
          }

          if (v297 >= 4)
          {
            v302 = -1;
          }

          v363 = v302 & v299;
        }

        else
        {
          v363 = v299;
          v303 = 0;
        }

        v336 = v297 >> 2;
        v352 = v296 - v202;
        v358 = v354 - v202;
        do
        {
          v337 = *v300 & v363;
          v338 = v336;
          v339 = v303;
          if (!v337)
          {
            goto LABEL_497;
          }

LABEL_495:
          if (v337 == -1)
          {
            *v98 = v97;
            v98[1] = v97;
            v98[2] = v97;
            v98[3] = v97;
            goto LABEL_497;
          }

          while (1)
          {
            if (v337)
            {
              if (v337 == 255)
              {
                *v98 = v97;
              }

              else
              {
                result = cmyk64_DplusDM(v98, *(v95 + 16 * v337), *v98, (v337 | (v337 << 8)) ^ 0xFFFFu);
              }
            }

            if (BYTE1(v337))
            {
              if (BYTE1(v337) == 255)
              {
                v98[1] = v97;
              }

              else
              {
                result = cmyk64_DplusDM(&v98[1], *(v95 + 16 * BYTE1(v337)), *&v98[1], (BYTE1(v337) | (BYTE1(v337) << 8)) ^ 0xFFFFu);
              }
            }

            if (BYTE2(v337))
            {
              if (BYTE2(v337) == 255)
              {
                v98[2] = v97;
              }

              else
              {
                result = cmyk64_DplusDM(&v98[2], *(v95 + 16 * BYTE2(v337)), *&v98[2], (BYTE2(v337) | (BYTE2(v337) << 8)) ^ 0xFFFFu);
              }
            }

            if (HIBYTE(v337) == 255)
            {
              v98[3] = v97;
            }

            else if (HIBYTE(v337))
            {
              result = cmyk64_DplusDM(&v98[3], *(v95 + 16 * HIBYTE(v337)), *&v98[3], (HIBYTE(v337) | (HIBYTE(v337) << 8)) ^ 0xFFFF);
            }

LABEL_497:
            while (1)
            {
              v340 = v338;
              v98 += 4;
              --v338;
              ++v300;
              if (v340 < 2)
              {
                break;
              }

              v337 = *v300;
              if (*v300)
              {
                goto LABEL_495;
              }
            }

            if (!v339)
            {
              break;
            }

            v339 = 0;
            v337 = *v300 & v303;
          }

          v300 = (v300 + v358);
          v98 += v352;
          --v7;
        }

        while (v7);
      }

      return result;
    case 2:
      v350 = ~v96;
      v161 = v100 & 3;
      if (v3)
      {
        v162 = v161 + v359;
        v163 = &v98[-(v100 & 3)];
        v164 = &v91[-(v100 & 3)];
        if ((v100 & 3) != 0)
        {
          v165 = v100 & 0xFC;
        }

        else
        {
          v165 = v100;
        }

        if ((v100 & 3) != 0)
        {
          result = (-1 << (8 * v161));
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }

        if ((v100 & 3) != 0)
        {
          v100 &= 0xFFFFFFFFFFFFFFFCLL;
          v91 = v164;
          v98 = v163;
        }

        else
        {
          v162 = v359;
        }

        if (((v162 + v165) & 3) != 0)
        {
          v166 = 4 - ((v162 + v165) & 3);
          v161 += v166;
          v167 = 0xFFFFFFFF >> (8 * v166);
          if (v162 >= 4)
          {
            v168 = 0xFFFFFFFF >> (8 * v166);
          }

          else
          {
            v168 = 0;
          }

          v360 = v168;
          if (v162 >= 4)
          {
            v167 = -1;
          }

          result = v167 & result;
          v346 = result;
        }

        else
        {
          v346 = result;
          v360 = 0;
        }

        v355 = v354 - v161;
        v344 = v101 - v161;
        v342 = v162 >> 2;
        v341 = v93 - v161;
        while (1)
        {
          v308 = *v100 & v346;
          v309 = v342;
          v310 = v360;
          if (!v308)
          {
            goto LABEL_427;
          }

LABEL_425:
          if (v308 == -1)
          {
            break;
          }

          while (1)
          {
            if (v308)
            {
              result = cmyk64_DAplusDAM(v98, v91, *(v95 + 16 * v308), *(v95 + 16 * v308 + 8), *v98, *v91, *(v95 + 16 * v308 + 8) ^ 0xFFFFu);
            }

            if ((v308 & 0xFF00) != 0)
            {
              result = cmyk64_DAplusDAM(&v98[1], v91 + 1, *(v95 + 16 * BYTE1(v308)), *(v95 + 16 * BYTE1(v308) + 8), *&v98[1], v91[1], *(v95 + 16 * BYTE1(v308) + 8) ^ 0xFFFFu);
            }

            if ((v308 & 0xFF0000) != 0)
            {
              result = cmyk64_DAplusDAM(&v98[2], v91 + 2, *(v95 + 16 * BYTE2(v308)), *(v95 + 16 * BYTE2(v308) + 8), *&v98[2], v91[2], *(v95 + 16 * BYTE2(v308) + 8) ^ 0xFFFFu);
            }

            if (HIBYTE(v308))
            {
              v319 = v95 + 16 * HIBYTE(v308);
              v316 = *v319;
              v317 = *(v319 + 8);
              v311 = v98 + 3;
              v312 = v98[3];
              v313 = v91 + 3;
              v314 = v91[3];
              v315 = v317 ^ 0xFFFF;
              goto LABEL_440;
            }

LABEL_427:
            while (1)
            {
              v318 = v309;
              v98 += 4;
              v91 += 4;
              --v309;
              v100 += 4;
              if (v318 < 2)
              {
                break;
              }

              v308 = *v100;
              if (*v100)
              {
                goto LABEL_425;
              }
            }

            if (!v310)
            {
              break;
            }

            v310 = 0;
            v308 = *v100 & v360;
          }

          v100 += v355;
          v98 += v344;
          v91 += v341;
          if (!--v7)
          {
            return result;
          }
        }

        cmyk64_DAplusDAM(v98, v91, v97, v96, *v98, *v91, ~v96);
        cmyk64_DAplusDAM(&v98[1], v91 + 1, v97, v96, *&v98[1], v91[1], ~v96);
        cmyk64_DAplusDAM(&v98[2], v91 + 2, v97, v96, *&v98[2], v91[2], ~v96);
        v311 = v98 + 3;
        v312 = v98[3];
        v313 = v91 + 3;
        v314 = v91[3];
        v315 = ~v96;
        v316 = v97;
        LOWORD(v317) = v96;
LABEL_440:
        result = cmyk64_DAplusDAM(v311, v313, v316, v317, v312, v314, v315);
        goto LABEL_427;
      }

      v287 = v101;
      v288 = v161 + v359;
      if ((v100 & 3) != 0)
      {
        v289 = v100 & 0xFC;
      }

      else
      {
        v289 = v100;
      }

      if ((v100 & 3) != 0)
      {
        v290 = -1 << (8 * v161);
      }

      else
      {
        v290 = -1;
      }

      if ((v100 & 3) != 0)
      {
        v291 = (v100 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v291 = v100;
      }

      if ((v100 & 3) != 0)
      {
        v98 -= v100 & 3;
      }

      else
      {
        v288 = v359;
      }

      if (((v288 + v289) & 3) != 0)
      {
        v292 = 4 - ((v288 + v289) & 3);
        v161 += v292;
        v293 = 0xFFFFFFFF >> (8 * v292);
        if (v288 >= 4)
        {
          v294 = -1;
        }

        else
        {
          v294 = 0xFFFFFFFF >> (8 * v292);
        }

        v362 = v294 & v290;
        if (v288 >= 4)
        {
          v295 = v293;
        }

        else
        {
          v295 = 0;
        }
      }

      else
      {
        v362 = v290;
        v295 = 0;
      }

      v357 = v354 - v161;
      v326 = v288 >> 2;
      v348 = v287 - v161;
      break;
    case 3:
      v175 = 2 * v92;
      do
      {
        v176 = v359;
        do
        {
          v177 = *v100;
          if (*v100)
          {
            if (v177 == 255)
            {
              v178 = (v95 + 16 * *(v91 + 1));
              v179 = *v178;
              LOWORD(v178) = v178[1].i16[0];
              *v98 = v179;
              *v91 = v178;
            }

            else
            {
              v180 = v177 | (v177 << 8);
              v181 = *v91;
              v182 = v95 + 16 * ((v181 * v180 + ((v181 * v180) >> 16) + 1) >> 24);
              result = cmyk64_DAplusDAM(v98, v91, *v182, *(v182 + 8), *v98, v181, v180 ^ 0xFFFFu);
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v175);
          --v176;
        }

        while (v176);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 4:
      v135 = 2 * v92;
      do
      {
        v136 = v359;
        do
        {
          v137 = *v100;
          if (*v100)
          {
            if (v137 == 255)
            {
              v138 = (v95 + 16 * (~*v91 >> 8));
              v139 = *v138;
              LOWORD(v138) = v138[1].i16[0];
              *v98 = v139;
              *v91 = v138;
            }

            else
            {
              v140 = v137 | (v137 << 8);
              v141 = *v91;
              v142 = v95 + 16 * (((v141 ^ 0xFFFF) * v140 + (((v141 ^ 0xFFFFu) * v140) >> 16) + 1) >> 24);
              result = cmyk64_DAplusDAM(v98, v91, *v142, *(v142 + 8), *v98, v141, v140 ^ 0xFFFFu);
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v135);
          --v136;
        }

        while (v136);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 5:
      v222 = 2 * v92;
      do
      {
        v223 = v359;
        do
        {
          if (*v100)
          {
            result = cmyk64_DAMplusDAM(v98, v91, *(v95 + 16 * *v100), *(v95 + 16 * *v100 + 8), *v91, *v98, *v91, *(v95 + 16 * *v100 + 8) ^ 0xFFFFu);
          }

          ++v100;
          ++v98;
          v91 = (v91 + v222);
          --v223;
        }

        while (v223);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 6:
      v236 = 2 * v92;
      do
      {
        v237 = v101;
        v238 = v359;
        do
        {
          if (*v100 && *v91 != -1)
          {
            v239 = v95 + 16 * *v100;
            if (~*v91 == 0xFFFF)
            {
              v240 = *v239;
              v241 = *(v239 + 8);
              *v98 = v240;
              *v91 = v241;
            }

            else
            {
              result = cmyk64_DAplusDAM(v98, v91, *v98, *v91, *v239, *(v239 + 8), ~*v91);
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v236);
          --v238;
        }

        while (v238);
        v100 += v354;
        v101 = v237;
        v98 += v237;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 7:
      if (v3)
      {
        v183 = vdup_n_s32(v96 ^ 0xFFFF);
        v184 = 2 * v92;
        do
        {
          v185 = v359;
          do
          {
            v186 = *v100;
            if (*v100)
            {
              if (v186 == 255)
              {
                v187 = *v98;
                v188 = *v91;
                v189 = (v96 ^ 0xFFFF) * v188 + (((v96 ^ 0xFFFF) * v188) >> 16) + 1;
                v190 = *v98;
                v191 = vmul_s32(vand_s8(*v98, 0xFFFF0000FFFFLL), v183);
                v192 = v183;
              }

              else
              {
                v193 = v186 | (v186 << 8);
                v187 = *v98;
                v188 = *v91;
                v194 = (v193 - ((v193 * v96 + ((v193 * v96) >> 16) + 1) >> 16));
                v189 = v194 * v188 + ((v194 * v188) >> 16) + 1;
                v190 = *v98;
                v192 = vdup_n_s32(v194);
                v191 = vmul_s32(vand_s8(*v98, 0xFFFF0000FFFFLL), v192);
              }

              v195 = HIWORD(*&v187);
              v196 = v187.u16[1];
              v197 = vmul_s32(__PAIR64__(v195, v196), v192);
              *v98 = vsli_n_s32(vsub_s32(v190, vshr_n_u32(vadd_s32(vsra_n_u32(v191, v191, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(__PAIR64__(v195, v196), vshr_n_u32(vadd_s32(vsra_n_u32(v197, v197, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
              *v91 = v188 - HIWORD(v189);
            }

            ++v100;
            ++v98;
            v91 = (v91 + v184);
            --v185;
          }

          while (v185);
          v100 += v354;
          v98 += v101;
          v91 += v94;
          --v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v198 = v359;
          do
          {
            v199 = *v100;
            if (*v100)
            {
              if (v199 == 255)
              {
                v200 = v98;
                v201 = v96;
              }

              else
              {
                v201 = (~(v199 | (v199 << 8)) + (((v199 | (v199 << 8)) * v96 + (((v199 | (v199 << 8)) * v96) >> 16) + 1) >> 16));
                v200 = v98;
              }

              result = cmyk64_DM(v200, *v98, v201);
            }

            ++v100;
            ++v98;
            --v198;
          }

          while (v198);
          v100 += v354;
          v98 += v101;
          --v7;
        }

        while (v7);
      }

      return result;
    case 8:
      v250 = 257 * v96;
      if (v3)
      {
        v251 = vdup_n_s32(v96);
        v252 = 2 * v92;
        do
        {
          v253 = v359;
          do
          {
            v254 = *v100;
            if (*v100)
            {
              v255 = *v98;
              v256 = *v91;
              if (v254 == 255)
              {
                v257 = v96 * v256 + ((v96 * v256) >> 16) + 1;
                v258 = *v98;
                v259 = vmul_s32(vand_s8(*v98, 0xFFFF0000FFFFLL), v251);
                v260 = v251;
              }

              else
              {
                v261 = (v250 * v254 + ((v250 * v254) >> 16) + 1) >> 16;
                v257 = v261 * v256 + ((v261 * v256) >> 16) + 1;
                v258 = *v98;
                v260 = vdup_n_s32(v261);
                v259 = vmul_s32(vand_s8(*v98, 0xFFFF0000FFFFLL), v260);
              }

              v262 = HIWORD(*&v255);
              v263 = v255.u16[1];
              v264 = vmul_s32(__PAIR64__(v262, v263), v260);
              *v98 = vsli_n_s32(vsub_s32(v258, vshr_n_u32(vadd_s32(vsra_n_u32(v259, v259, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(__PAIR64__(v262, v263), vshr_n_u32(vadd_s32(vsra_n_u32(v264, v264, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
              *v91 = v256 - HIWORD(v257);
            }

            ++v100;
            ++v98;
            v91 = (v91 + v252);
            --v253;
          }

          while (v253);
          v100 += v354;
          v98 += v101;
          v91 += v94;
          --v7;
        }

        while (v7);
      }

      else
      {
        v304 = ~v96;
        do
        {
          v305 = v359;
          do
          {
            v306 = *v100;
            if (*v100)
            {
              if (v306 == 255)
              {
                v307 = v304;
              }

              else
              {
                v307 = ~(v250 * v306 + ((v250 * v306) >> 16) + 1) >> 16;
              }

              result = cmyk64_DM(v98, *v98, v307);
            }

            ++v100;
            ++v98;
            --v305;
          }

          while (v305);
          v100 += v354;
          v98 += v101;
          --v7;
        }

        while (v7);
      }

      return result;
    case 9:
      v146 = 2 * v92;
      do
      {
        v147 = v359;
        do
        {
          if (*v100)
          {
            v148 = *v100;
            result = cmyk64_DAMplusDAM(v98, v91, *(v95 + 16 * v148), *(v95 + 16 * v148 + 8), *v91 ^ 0xFFFFu, *v98, *v91, (*(v95 + 16 * v148 + 8) + ~(v148 | (v148 << 8))));
          }

          ++v100;
          ++v98;
          v91 = (v91 + v146);
          --v147;
        }

        while (v147);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 10:
      v248 = 2 * v92;
      do
      {
        v249 = v359;
        do
        {
          if (*v100)
          {
            result = cmyk64_DAMplusDAM(v98, v91, *(v95 + 16 * *v100), *(v95 + 16 * *v100 + 8), *v91 ^ 0xFFFFu, *v98, *v91, *(v95 + 16 * *v100 + 8) ^ 0xFFFFu);
          }

          ++v100;
          ++v98;
          v91 = (v91 + v248);
          --v249;
        }

        while (v249);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 11:
      if (v3)
      {
        v132 = 2 * v92;
        do
        {
          v133 = v359;
          do
          {
            if (*v100)
            {
              result = cmyk64_DAplusdDA(v98, v91, *v98, *v91, *(v95 + 16 * *v100), *(v95 + 16 * *v100 + 8));
            }

            ++v100;
            ++v98;
            v91 = (v91 + v132);
            --v133;
          }

          while (v133);
          v100 += v354;
          v98 += v101;
          v91 += v94;
          --v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v134 = v359;
          do
          {
            if (*v100)
            {
              result = cmyk64_DplusdDA(v98, *v98, *(v95 + 16 * *v100), *(v95 + 16 * *v100 + 8));
            }

            ++v100;
            ++v98;
            --v134;
          }

          while (v134);
          v100 += v354;
          v98 += v101;
          --v7;
        }

        while (v7);
      }

      return result;
    case 12:
      if (v3)
      {
        v143 = 2 * v92;
        do
        {
          v144 = v359;
          do
          {
            if (*v100)
            {
              result = cmyk64_DApluslDA(v98, v91, *v98, *v91, *(v95 + 16 * *v100), *(v95 + 16 * *v100 + 8));
            }

            ++v100;
            ++v98;
            v91 = (v91 + v143);
            --v144;
          }

          while (v144);
          v100 += v354;
          v98 += v101;
          v91 += v94;
          --v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v145 = v359;
          do
          {
            if (*v100)
            {
              result = cmyk64_DpluslD(v98, *v98, *(v95 + 16 * *v100));
            }

            ++v100;
            ++v98;
            --v145;
          }

          while (v145);
          v100 += v354;
          v98 += v101;
          --v7;
        }

        while (v7);
      }

      return result;
    case 13:
      v230 = 2 * v92;
      do
      {
        v231 = v359;
        do
        {
          if (*v100)
          {
            v232 = v95 + 16 * *v100;
            v233 = *(v232 + 8);
            if (*(v232 + 8))
            {
              v234 = *v232;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAmultiplyPDA_11872(*v98, *v91, v234, v233);
                  v234 = result;
                  LOWORD(v233) = v235;
                }

                *v98 = v234;
                *v91 = v233;
              }

              else
              {
                result = PDAmultiplyPDA_11872(*v98, 0xFFFFu, v234, v233);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v230);
          --v231;
        }

        while (v231);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 14:
      v126 = 2 * v92;
      do
      {
        v127 = v359;
        do
        {
          if (*v100)
          {
            v128 = v95 + 16 * *v100;
            v129 = *(v128 + 8);
            if (*(v128 + 8))
            {
              v130 = *v128;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAscreenPDA_11873(*v98, *v91, v130, v129);
                  v130 = result;
                  LOWORD(v129) = v131;
                }

                *v98 = v130;
                *v91 = v129;
              }

              else
              {
                result = PDAscreenPDA_11873(*v98, 0xFFFFu, v130, v129);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v126);
          --v127;
        }

        while (v127);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 15:
      v169 = 2 * v92;
      do
      {
        v170 = v359;
        do
        {
          if (*v100)
          {
            v171 = v95 + 16 * *v100;
            v172 = *(v171 + 8);
            if (*(v171 + 8))
            {
              v173 = *v171;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAoverlayPDA_11874(*v98, *v91, v173, v172);
                  v173 = result;
                  LOWORD(v172) = v174;
                }

                *v98 = v173;
                *v91 = v172;
              }

              else
              {
                result = PDAoverlayPDA_11874(*v98, 0xFFFFu, v173, v172);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v169);
          --v170;
        }

        while (v170);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 16:
      v120 = 2 * v92;
      do
      {
        v121 = v359;
        do
        {
          if (*v100)
          {
            v122 = v95 + 16 * *v100;
            v123 = *(v122 + 8);
            if (*(v122 + 8))
            {
              v124 = *v122;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAdarkenPDA_11876(*v98, *v91, v124, v123);
                  v124 = result;
                  LOWORD(v123) = v125;
                }

                *v98 = v124;
                *v91 = v123;
              }

              else
              {
                result = PDAdarkenPDA_11876(*v98, 0xFFFFu, v124, v123);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v120);
          --v121;
        }

        while (v121);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 17:
      v210 = 2 * v92;
      do
      {
        v211 = v359;
        do
        {
          if (*v100)
          {
            v212 = v95 + 16 * *v100;
            v213 = *(v212 + 8);
            if (*(v212 + 8))
            {
              v214 = *v212;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAlightenPDA_11875(*v98, *v91, v214, v213);
                  v214 = result;
                  LOWORD(v213) = v215;
                }

                *v98 = v214;
                *v91 = v213;
              }

              else
              {
                result = PDAlightenPDA_11875(*v98, 0xFFFFu, v214, v213);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v210);
          --v211;
        }

        while (v211);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 18:
      v242 = 2 * v92;
      do
      {
        v243 = v359;
        do
        {
          if (*v100)
          {
            v244 = v95 + 16 * *v100;
            v245 = *(v244 + 8);
            if (*(v244 + 8))
            {
              v246 = *v244;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAcolordodgePDA_11877(*v98, *v91, v246, v245);
                  v246 = result;
                  LOWORD(v245) = v247;
                }

                *v98 = v246;
                *v91 = v245;
              }

              else
              {
                result = PDAcolordodgePDA_11877(*v98, 0xFFFFu, v246, v245);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v242);
          --v243;
        }

        while (v243);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 19:
      v271 = 2 * v92;
      do
      {
        v272 = v359;
        do
        {
          if (*v100)
          {
            v273 = v95 + 16 * *v100;
            v274 = *(v273 + 8);
            if (*(v273 + 8))
            {
              v275 = *v273;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAcolorburnPDA_11878(*v98, *v91, v275, v274);
                  v275 = result;
                  LOWORD(v274) = v276;
                }

                *v98 = v275;
                *v91 = v274;
              }

              else
              {
                result = PDAcolorburnPDA_11878(*v98, 0xFFFFu, v275, v274);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v271);
          --v272;
        }

        while (v272);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 20:
      v216 = 2 * v92;
      do
      {
        v217 = v359;
        do
        {
          if (*v100)
          {
            v218 = v95 + 16 * *v100;
            v219 = *(v218 + 8);
            if (*(v218 + 8))
            {
              v220 = *v218;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAsoftlightPDA_11880(*v98, *v91, v220, v219);
                  v220 = result;
                  LOWORD(v219) = v221;
                }

                *v98 = v220;
                *v91 = v219;
              }

              else
              {
                result = PDAsoftlightPDA_11880(*v98, 0xFFFFu, v220, v219);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v216);
          --v217;
        }

        while (v217);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 21:
      v224 = 2 * v92;
      do
      {
        v225 = v359;
        do
        {
          if (*v100)
          {
            v226 = v95 + 16 * *v100;
            v227 = *(v226 + 8);
            if (*(v226 + 8))
            {
              v228 = *v226;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAhardlightPDA_11879(*v98, *v91, v228, v227);
                  v228 = result;
                  LOWORD(v227) = v229;
                }

                *v98 = v228;
                *v91 = v227;
              }

              else
              {
                result = PDAhardlightPDA_11879(*v98, 0xFFFFu, v228, v227);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v224);
          --v225;
        }

        while (v225);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 22:
      v265 = 2 * v92;
      do
      {
        v266 = v359;
        do
        {
          if (*v100)
          {
            v267 = v95 + 16 * *v100;
            v268 = *(v267 + 8);
            if (*(v267 + 8))
            {
              v269 = *v267;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAdifferencePDA_11881(*v98, *v91, v269, v268);
                  v269 = result;
                  LOWORD(v268) = v270;
                }

                *v98 = v269;
                *v91 = v268;
              }

              else
              {
                result = PDAdifferencePDA_11881(*v98, 0xFFFFu, v269, v268);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v265);
          --v266;
        }

        while (v266);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 23:
      v277 = 2 * v92;
      do
      {
        v278 = v359;
        do
        {
          if (*v100)
          {
            v279 = v95 + 16 * *v100;
            v280 = *(v279 + 8);
            if (*(v279 + 8))
            {
              v281 = *v279;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAexclusionPDA_11882(*v98, *v91, v281, v280);
                  v281 = result;
                  LOWORD(v280) = v282;
                }

                *v98 = v281;
                *v91 = v280;
              }

              else
              {
                result = PDAexclusionPDA_11882(*v98, 0xFFFFu, v281, v280);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v277);
          --v278;
        }

        while (v278);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 24:
      v155 = 2 * v92;
      do
      {
        v156 = v359;
        do
        {
          if (*v100)
          {
            v157 = v95 + 16 * *v100;
            v158 = *(v157 + 8);
            if (*(v157 + 8))
            {
              v159 = *v157;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAhuePDA_11883(*v98, *v91, v159, v158);
                  v159 = result;
                  LOWORD(v158) = v160;
                }

                *v98 = v159;
                *v91 = v158;
              }

              else
              {
                result = PDAhuePDA_11883(*v98, 0xFFFFu, v159, v158);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v155);
          --v156;
        }

        while (v156);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 25:
      v149 = 2 * v92;
      do
      {
        v150 = v359;
        do
        {
          if (*v100)
          {
            v151 = v95 + 16 * *v100;
            v152 = *(v151 + 8);
            if (*(v151 + 8))
            {
              v153 = *v151;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAsaturationPDA_11884(*v98, *v91, v153, v152);
                  v153 = result;
                  LOWORD(v152) = v154;
                }

                *v98 = v153;
                *v91 = v152;
              }

              else
              {
                result = PDAsaturationPDA_11884(*v98, 0xFFFFu, v153, v152);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v149);
          --v150;
        }

        while (v150);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 26:
      v283 = 2 * v92;
      do
      {
        v284 = v359;
        do
        {
          if (*v100)
          {
            v285 = v95 + 16 * *v100;
            v286 = *(v285 + 8);
            if (*(v285 + 8))
            {
              result = *v285;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAluminosityPDA_11885(result, v286, *v98, *v91);
                }

                *v98 = result;
                *v91 = v286;
              }

              else
              {
                result = PDAluminosityPDA_11885(result, v286, *v98, 0xFFFFu);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v283);
          --v284;
        }

        while (v284);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 27:
      v114 = 2 * v92;
      do
      {
        v115 = v359;
        do
        {
          if (*v100)
          {
            v116 = v95 + 16 * *v100;
            v117 = *(v116 + 8);
            if (*(v116 + 8))
            {
              v118 = *v116;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAluminosityPDA_11885(*v98, *v91, v118, v117);
                  v118 = result;
                  LOWORD(v117) = v119;
                }

                *v98 = v118;
                *v91 = v117;
              }

              else
              {
                result = PDAluminosityPDA_11885(*v98, 0xFFFFu, v118, v117);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v114);
          --v115;
        }

        while (v115);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    default:
      return result;
  }

  do
  {
    v327 = *v291 & v362;
    v328 = v295;
    v329 = v326;
    if (!v327)
    {
      goto LABEL_476;
    }

LABEL_474:
    if (v327 == -1)
    {
      cmyk64_DplusDM(v98, v97, *v98, v350);
      cmyk64_DplusDM(&v98[1], v97, *&v98[1], v350);
      cmyk64_DplusDM(&v98[2], v97, *&v98[2], v350);
      v330 = v98 + 3;
      v331 = v98[3];
      v332 = v350;
      v333 = v97;
LABEL_489:
      result = cmyk64_DplusDM(v330, v333, v331, v332);
      goto LABEL_476;
    }

    while (1)
    {
      if (v327)
      {
        result = cmyk64_DplusDM(v98, *(v95 + 16 * v327), *v98, *(v95 + 16 * v327 + 8) ^ 0xFFFFu);
      }

      if ((v327 & 0xFF00) != 0)
      {
        result = cmyk64_DplusDM(&v98[1], *(v95 + 16 * BYTE1(v327)), *&v98[1], *(v95 + 16 * BYTE1(v327) + 8) ^ 0xFFFFu);
      }

      if ((v327 & 0xFF0000) != 0)
      {
        result = cmyk64_DplusDM(&v98[2], *(v95 + 16 * BYTE2(v327)), *&v98[2], *(v95 + 16 * BYTE2(v327) + 8) ^ 0xFFFFu);
      }

      if (HIBYTE(v327))
      {
        v335 = v95 + 16 * HIBYTE(v327);
        v333 = *v335;
        v330 = v98 + 3;
        v331 = v98[3];
        v332 = *(v335 + 8) ^ 0xFFFF;
        goto LABEL_489;
      }

LABEL_476:
      while (1)
      {
        v334 = v329;
        v98 += 4;
        --v329;
        ++v291;
        if (v334 < 2)
        {
          break;
        }

        v327 = *v291;
        if (*v291)
        {
          goto LABEL_474;
        }
      }

      if (!v328)
      {
        break;
      }

      v328 = 0;
      v327 = *v291 & v295;
    }

    v291 = (v291 + v357);
    v98 += v348;
    --v7;
  }

  while (v7);
  return result;
}

unint64_t cmyk64_mark_pixelmask(unint64_t result, int a2)
{
  v2 = *(result + 48);
  v3 = *(result + 136);
  v4 = *(result + 12);
  v5 = *(result + 16);
  if (v2)
  {
    v6 = *(result + 32) >> 1;
    v7 = (v2 + 2 * v6 * v5 + 2 * v4);
    v8 = -1;
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
    if (!v3)
    {
      return result;
    }
  }

  v9 = *(result + 4);
  v10 = *(result + 8);
  v12 = *(result + 88);
  v11 = *(result + 96);
  v13 = *(result + 28) >> 3;
  v14 = (*(result + 40) + 8 * v13 * v5 + 8 * v4);
  v15 = *(result + 124);
  v16 = (v3 + *(result + 108) * v15 + *(result + 104));
  v17 = *(result + 56);
  v18 = *(result + 60);
  v19 = *(result + 76);
  if ((*result & 0xFF00) != 0x100)
  {
    v21 = *(result + 64);
    v22 = *(result + 68);
    v728 = v19 >> 3;
    if (v11)
    {
      v726 = *(result + 80) >> 1;
      v20 = 1;
    }

    else
    {
      v726 = 0;
      v20 = 0;
    }

    result = v12 + 8 * v728 * v22;
    v8 &= 1u;
    v27 = 1;
    v28 = v12;
    v23 = v12;
    goto LABEL_19;
  }

  v728 = v19 >> 3;
  if (v11)
  {
    v726 = *(result + 80) >> 1;
    v11 += 2 * v726 * v18 + 2 * v17;
    v20 = -1;
  }

  else
  {
    v726 = 0;
    v20 = 0;
  }

  v23 = (v12 + 8 * v728 * v18 + 8 * v17);
  if (v728 == v13)
  {
    v24 = (v14 - v23) >> 3;
    if (v24 >= 1)
    {
      if (v24 <= v9)
      {
        v14 += v9 - 1;
        v23 += v9 - 1;
        v16 += v9 - 1;
        v7 += v8 & (v9 - 1);
        v27 = -1;
        v728 = *(result + 28) >> 3;
        v11 += 2 * (v20 & (v9 - 1));
        goto LABEL_16;
      }

      v25 = v10 - 1;
      v26 = &v23[v13 * v25];
      if (v14 <= &v26[v9 - 1])
      {
        v14 += v13 * v25;
        v16 += v15 * v25;
        v15 = -v15;
        v7 += v6 * v25;
        v6 = -v6;
        v8 &= 1u;
        v11 += 2 * v726 * v25;
        v726 = -v726;
        v20 &= 1u;
        v27 = 1;
        v23 = v26;
        v728 = -v13;
        v13 = -v13;
        goto LABEL_16;
      }
    }
  }

  v8 &= 1u;
  v20 &= 1u;
  v27 = 1;
LABEL_16:
  result = 0;
  v28 = 0;
  v12 = -1;
  v22 = v726;
  v21 = v728;
LABEL_19:
  v29 = v27 * v9;
  v727 = v9;
  v723 = result;
  v731 = v10;
  if (result)
  {
    v30 = v18 % v22;
    v31 = &v23[v728 * v30];
    result = v17 % v21;
    v23 = &v31[result];
    v32 = v21;
    v12 = &v31[v21];
    v33 = v11 + 2 * v726 * v30 + 2 * result;
    if (v20)
    {
      v11 = v33;
    }

    v729 = v11;
    v730 = &v31[result];
  }

  else
  {
    v729 = v11;
    v730 = v28;
    v728 -= v29;
    v726 -= v20 * v9;
    v32 = v21;
  }

  v725 = v15 - v29;
  v724 = v13 - v29;
  v720 = v6 - v8 * v9;
  v776 = v27;
  v741 = v20;
  v732 = v8;
  switch(a2)
  {
    case 0:
      if (v8)
      {
        v34 = 8 * v27;
        do
        {
          v35 = v9;
          v36 = v731;
          do
          {
            v37 = *v16;
            if (*v16)
            {
              if (v37 == 255)
              {
                LOWORD(v38) = 0;
                *v14 = 0;
              }

              else
              {
                v39 = *v7;
                v40 = v37 | (v37 << 8);
                v41 = vdup_n_s32(v40);
                v42 = vmul_s32(vand_s8(*v14, 0xFFFF0000FFFFLL), v41);
                v43.i32[0] = HIWORD(v14->u32[0]);
                v43.i32[1] = HIWORD(*v14);
                v44 = vmul_s32(v43, v41);
                *v14 = vsli_n_s32(vsub_s32(*v14, vshr_n_u32(vadd_s32(vsra_n_u32(v42, v42, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v43, vshr_n_u32(vadd_s32(vsra_n_u32(v44, v44, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                v38 = v39 - ((v40 * v39 + ((v40 * v39) >> 16) + 1) >> 16);
              }

              *v7 = v38;
            }

            v16 += v776;
            v7 += v8;
            v14 = (v14 + v34);
            --v35;
          }

          while (v35);
          v16 += v725;
          v14 += v724;
          v7 += v720;
          --v731;
        }

        while (v36 != 1);
      }

      else
      {
        v609 = 8 * v27;
        do
        {
          v610 = v727;
          v611 = v731;
          do
          {
            v612 = *v16;
            if (*v16)
            {
              if (v612 == 255)
              {
                *v14 = 0;
              }

              else
              {
                result = cmyk64_DM(v14, *v14, (v612 | (v612 << 8)) ^ 0xFFFFu);
              }
            }

            v16 += v776;
            v14 = (v14 + v609);
            --v610;
          }

          while (v610);
          v16 += v725;
          v14 += v724;
          --v731;
        }

        while (v611 != 1);
      }

      return result;
    case 1:
      if (v8)
      {
        if (v20)
        {
          v287 = v20;
          v288 = -v32;
          v289 = v729;
          v745 = -(v728 * v22);
          v738 = -(v726 * v22);
          v290 = 2 * v8;
          v291 = 8 * v27;
          do
          {
            v292 = v727;
            v761 = v12;
            do
            {
              v293 = *v16;
              if (*v16)
              {
                if (v293 == 255)
                {
                  *v14 = *v23;
                  *v7 = *v289;
                }

                else
                {
                  result = cmyk64_DAMplusDAM(v14, v7, *v23, *v289, v293 | (v293 << 8), *v14, *v7, (v293 | (v293 << 8)) ^ 0xFFFFu);
                  v12 = v761;
                }
              }

              v16 += v776;
              v294 = &v23[v776];
              if (v294 >= v12)
              {
                v295 = v288;
              }

              else
              {
                v295 = 0;
              }

              v289 += v287 + v295;
              v23 = &v294[v295];
              v7 = (v7 + v290);
              v14 = (v14 + v291);
              --v292;
            }

            while (v292);
            if (v723)
            {
              v296 = &v730[v728];
              v297 = v738;
              if (v296 < v723)
              {
                v297 = 0;
              }

              v289 = &v729[v726 + v297];
              v298 = v745;
              if (v296 < v723)
              {
                v298 = 0;
              }

              v23 = (v296 + 8 * v298);
              v12 += 8 * v298 + 8 * v728;
              v729 += v726 + v297;
              v730 = v23;
            }

            else
            {
              v23 += v728;
              v289 += v726;
            }

            v16 += v725;
            v14 += v724;
            v7 += v720;
            --v731;
          }

          while (v731);
        }

        else
        {
          v641 = -v32;
          v642 = -(v728 * v22);
          v643 = 2 * v8;
          v644 = 8 * v27;
          do
          {
            v645 = v727;
            do
            {
              v646 = *v16;
              if (*v16)
              {
                if (v646 == 255)
                {
                  *v14 = *v23;
                  *v7 = -1;
                }

                else
                {
                  v647 = v12;
                  result = cmyk64_DAMplusDAM(v14, v7, *v23, 0xFFFF, v646 | (v646 << 8), *v14, *v7, (v646 | (v646 << 8)) ^ 0xFFFFu);
                  v12 = v647;
                }
              }

              v16 += v776;
              v648 = &v23[v776];
              if (v648 >= v12)
              {
                v649 = v641;
              }

              else
              {
                v649 = 0;
              }

              v23 = &v648[v649];
              v7 = (v7 + v643);
              v14 = (v14 + v644);
              --v645;
            }

            while (v645);
            v16 += v725;
            v14 += v724;
            v7 += v720;
            v650 = v730;
            v651 = &v730[v728];
            if (v651 >= v723)
            {
              v652 = v642;
            }

            else
            {
              v652 = 0;
            }

            v653 = (v651 + 8 * v652);
            v654 = v12 + 8 * v652 + 8 * v728;
            if (v723)
            {
              v12 = v654;
              v650 = v653;
              v23 = v653;
            }

            else
            {
              v23 += v728;
            }

            v655 = v731 == 1;
            v730 = v650;
            --v731;
          }

          while (!v655);
        }
      }

      else
      {
        v613 = -v32;
        v614 = -(v728 * v22);
        v615 = 8 * v27;
        do
        {
          v616 = v727;
          v617 = v731;
          do
          {
            v618 = *v16;
            if (*v16)
            {
              if (v618 == 255)
              {
                *v14 = *v23;
              }

              else
              {
                v619 = v12;
                result = cmyk64_DMplusDM(v14, *v23, v618 | (v618 << 8), *v14, (v618 | (v618 << 8)) ^ 0xFFFFu);
                v12 = v619;
              }
            }

            v16 += v776;
            v620 = &v23[v776];
            if (v620 >= v12)
            {
              v621 = v613;
            }

            else
            {
              v621 = 0;
            }

            v23 = &v620[v621];
            v14 = (v14 + v615);
            --v616;
          }

          while (v616);
          v16 += v725;
          v14 += v724;
          v622 = v730;
          v623 = &v730[v728];
          if (v623 >= v723)
          {
            v624 = v614;
          }

          else
          {
            v624 = 0;
          }

          v625 = (v623 + 8 * v624);
          v626 = v12 + 8 * v624 + 8 * v728;
          if (v723)
          {
            v12 = v626;
            v622 = v625;
            v23 = v625;
          }

          else
          {
            v23 += v728;
          }

          v730 = v622;
          --v731;
        }

        while (v617 != 1);
      }

      return result;
    case 2:
      if (v8)
      {
        v209 = v20;
        v210 = -v32;
        v211 = v729;
        v666 = -(v726 * v22);
        v686 = -(v728 * v22);
        v212 = 2 * v8;
        v743 = v20;
        while (1)
        {
          v213 = v727;
          v757 = v12;
          do
          {
            v214 = *v16;
            if (!*v16)
            {
              goto LABEL_256;
            }

            if (v214 == 255)
            {
              v215 = *v211;
              if (!*v211)
              {
                goto LABEL_256;
              }

              if (v215 == 0xFFFF)
              {
                *v14 = *v23;
                *v7 = -1;
                goto LABEL_256;
              }

              v226 = *v23;
              v224 = *v14;
              v225 = *v7;
              v227 = v215 ^ 0xFFFF;
            }

            else
            {
              v216 = *v211;
              v217 = (v214 | (v214 << 8)) ^ 0xFFFF;
              if (v216 == (v217 * v216 + ((v217 * v216) >> 16) + 1) >> 16)
              {
                goto LABEL_256;
              }

              v218 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v23), xmmword_18439CB80));
              v219.i32[1] = v218.i32[1];
              v219.i32[0] = v218.u16[0];
              v220 = vmul_s32(v219, vdup_n_s32(v217));
              v221 = vand_s8(vsub_s32(v218, vshr_n_u32(vadd_s32(vsra_n_u32(v220, v220, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
              v222.i64[0] = v221.u32[0];
              v222.i64[1] = v221.u32[1];
              v223 = vshlq_u64(v222, xmmword_18439CB70);
              v224 = *v14;
              v225 = *v7;
              v226 = vorrq_s8(v223, vdupq_laneq_s64(v223, 1)).u64[0] | ((WORD1(*v23) - ((WORD1(*v23) * v217 + ((WORD1(*v23) * v217) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v217 + ((*v23 * v217) >> 16) + 1) >> 16));
              LOWORD(v215) = v216 - ((v217 * v216 + ((v217 * v216) >> 16) + 1) >> 16);
              v227 = ~v215;
            }

            result = cmyk64_DAplusDAM(v14, v7, v226, v215, v224, v225, v227);
            v209 = v743;
            v12 = v757;
LABEL_256:
            v16 += v776;
            v228 = &v23[v776];
            if (v228 >= v12)
            {
              v229 = v210;
            }

            else
            {
              v229 = 0;
            }

            v211 += v209 + v229;
            v23 = &v228[v229];
            v7 = (v7 + v212);
            v14 += v776;
            --v213;
          }

          while (v213);
          if (v723)
          {
            v230 = &v730[v728];
            v231 = v666;
            if (v230 < v723)
            {
              v231 = 0;
            }

            v211 = &v729[v726 + v231];
            v232 = v686;
            if (v230 < v723)
            {
              v232 = 0;
            }

            v23 = (v230 + 8 * v232);
            v12 += 8 * v232 + 8 * v728;
            v729 += v726 + v231;
            v730 = v23;
          }

          else
          {
            v23 += v728;
            v211 += v726;
          }

          v16 += v725;
          v14 += v724;
          v7 += v720;
          if (!--v731)
          {
            return result;
          }
        }
      }

      v571 = v20;
      v572 = -v32;
      v740 = -(v728 * v22);
      v722 = -(v726 * v22);
      v573 = 8 * v27;
      v574 = v729;
      break;
    case 3:
      v251 = v20;
      v252 = -v32;
      v253 = v729;
      v708 = -(v728 * v22);
      v688 = -(v726 * v22);
      v254 = 2 * v8;
      v736 = v20;
      do
      {
        v255 = v727;
        v759 = v12;
        do
        {
          v256 = *v16;
          if (*v16)
          {
            if (v256 == 255)
            {
              if (v20)
              {
                v257 = *v253;
              }

              else
              {
                v257 = 0xFFFF;
              }

              v259 = *v7 ^ 0xFFFF;
              v260 = vdup_n_s32(v259);
              v261 = vmul_s32(vand_s8(*v23, 0xFFFF0000FFFFLL), v260);
              v262.i32[0] = WORD1(*v23);
              v262.i32[1] = HIWORD(*v23);
              v263 = vmul_s32(v262, v260);
              *v14 = vsli_n_s32(vsub_s32(*v23, vshr_n_u32(vadd_s32(vsra_n_u32(v261, v261, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v262, vshr_n_u32(vadd_s32(vsra_n_u32(v263, v263, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
              *v7 = v257 - ((v259 * v257 + ((v259 * v257) >> 16) + 1) >> 16);
            }

            else
            {
              if (v20)
              {
                v258 = *v253;
              }

              else
              {
                v258 = 0xFFFF;
              }

              result = cmyk64_DAMplusDAM(v14, v7, *v23, v258, (*v7 * (v256 | (v256 << 8)) + ((*v7 * (v256 | (v256 << 8))) >> 16) + 1) >> 16, *v14, *v7, (v256 | (v256 << 8)) ^ 0xFFFFu);
              v12 = v759;
              v20 = v741;
              v251 = v736;
            }
          }

          v16 += v776;
          v264 = &v23[v776];
          if (v264 >= v12)
          {
            v265 = v252;
          }

          else
          {
            v265 = 0;
          }

          v253 += v251 + v265;
          v23 = &v264[v265];
          v7 = (v7 + v254);
          v14 += v776;
          --v255;
        }

        while (v255);
        if (v723)
        {
          v266 = &v730[v728];
          v267 = v688;
          if (v266 < v723)
          {
            v267 = 0;
          }

          v253 = &v729[v726 + v267];
          v268 = v708;
          if (v266 < v723)
          {
            v268 = 0;
          }

          v23 = (v266 + 8 * v268);
          v12 += 8 * v268 + 8 * v728;
          v729 += v726 + v267;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v253 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 4:
      v117 = v20;
      v118 = -v32;
      v119 = v729;
      v704 = -(v728 * v22);
      v682 = -(v726 * v22);
      v120 = 2 * v8;
      v734 = v20;
      do
      {
        v121 = v727;
        v752 = v12;
        do
        {
          v122 = *v16;
          if (*v16)
          {
            if (v122 == 255)
            {
              if (v20)
              {
                v123 = *v119;
              }

              else
              {
                v123 = 0xFFFF;
              }

              v125 = *v7;
              v126 = vdup_n_s32(v125);
              v127 = vmul_s32(vand_s8(*v23, 0xFFFF0000FFFFLL), v126);
              v128.i32[0] = WORD1(*v23);
              v128.i32[1] = HIWORD(*v23);
              v129 = vmul_s32(v128, v126);
              *v14 = vsli_n_s32(vsub_s32(*v23, vshr_n_u32(vadd_s32(vsra_n_u32(v127, v127, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v128, vshr_n_u32(vadd_s32(vsra_n_u32(v129, v129, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
              *v7 = v123 - ((v125 * v123 + ((v125 * v123) >> 16) + 1) >> 16);
            }

            else
            {
              if (v20)
              {
                v124 = *v119;
              }

              else
              {
                v124 = 0xFFFF;
              }

              result = cmyk64_DAMplusDAM(v14, v7, *v23, v124, ((*v7 ^ 0xFFFF) * (v122 | (v122 << 8)) + (((*v7 ^ 0xFFFF) * (v122 | (v122 << 8))) >> 16) + 1) >> 16, *v14, *v7, (v122 | (v122 << 8)) ^ 0xFFFFu);
              v12 = v752;
              v20 = v741;
              v117 = v734;
            }
          }

          v16 += v776;
          v130 = &v23[v776];
          if (v130 >= v12)
          {
            v131 = v118;
          }

          else
          {
            v131 = 0;
          }

          v119 += v117 + v131;
          v23 = &v130[v131];
          v7 = (v7 + v120);
          v14 += v776;
          --v121;
        }

        while (v121);
        if (v723)
        {
          v132 = &v730[v728];
          v133 = v682;
          if (v132 < v723)
          {
            v133 = 0;
          }

          v119 = &v729[v726 + v133];
          v134 = v704;
          if (v132 < v723)
          {
            v134 = 0;
          }

          v23 = (v132 + 8 * v134);
          v12 += 8 * v134 + 8 * v728;
          v729 += v726 + v133;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v119 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 5:
      v764 = v20;
      v746 = -v32;
      v335 = v729;
      v670 = -(v726 * v22);
      v691 = -(v728 * v22);
      v336 = 2 * v8;
      v337 = 8 * v27;
      do
      {
        v338 = v727;
        do
        {
          if (*v16)
          {
            v339 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v340 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v23), xmmword_18439CB80));
            v341.i32[1] = v340.i32[1];
            v341.i32[0] = v340.u16[0];
            v342 = vmul_s32(vdup_n_s32(v339), v341);
            v343 = vand_s8(vsub_s32(v340, vshr_n_u32(vadd_s32(vsra_n_u32(v342, v342, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
            v344.i64[0] = v343.u32[0];
            v344.i64[1] = v343.u32[1];
            v345 = vshlq_u64(v344, xmmword_18439CB70);
            v346 = v12;
            result = cmyk64_DAMplusDAM(v14, v7, vorrq_s8(v345, vdupq_laneq_s64(v345, 1)).u64[0] | ((WORD1(*v23) - ((WORD1(*v23) * v339 + ((WORD1(*v23) * v339) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v339 + ((*v23 * v339) >> 16) + 1) >> 16)), (*v335 - ((v339 * *v335 + ((v339 * *v335) >> 16) + 1) >> 16)), *v7, *v14, *v7, ~(*v335 - ((v339 * *v335 + ((v339 * *v335) >> 16) + 1) >> 16)));
            v12 = v346;
          }

          v16 += v776;
          v347 = &v23[v776];
          v348 = v746;
          if (v347 < v12)
          {
            v348 = 0;
          }

          v335 += v764 + v348;
          v23 = &v347[v348];
          v7 = (v7 + v336);
          v14 = (v14 + v337);
          --v338;
        }

        while (v338);
        if (v723)
        {
          v349 = &v730[v728];
          v350 = v670;
          if (v349 < v723)
          {
            v350 = 0;
          }

          v335 = &v729[v726 + v350];
          v351 = v691;
          if (v349 < v723)
          {
            v351 = 0;
          }

          v23 = (v349 + 8 * v351);
          v12 += 8 * v351 + 8 * v728;
          v729 += v726 + v350;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v335 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 6:
      v388 = v20;
      v389 = -v32;
      v390 = v729;
      v713 = -(v728 * v22);
      v694 = -(v726 * v22);
      v391 = 2 * v8;
      v739 = v20;
      do
      {
        v392 = v727;
        v767 = v12;
        do
        {
          v393 = *v16;
          if (*v16 && *v7 != -1)
          {
            if (~*v7 == 0xFFFF)
            {
              if (v20)
              {
                v394 = *v390;
              }

              else
              {
                v394 = 0xFFFF;
              }

              v396 = (v393 | (v393 << 8)) ^ 0xFFFF;
              v397 = vdup_n_s32(v396);
              v398 = vmul_s32(vand_s8(*v23, 0xFFFF0000FFFFLL), v397);
              v399.i32[0] = WORD1(*v23);
              v399.i32[1] = HIWORD(*v23);
              v400 = vmul_s32(v399, v397);
              *v14 = vsli_n_s32(vsub_s32(*v23, vshr_n_u32(vadd_s32(vsra_n_u32(v398, v398, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v399, vshr_n_u32(vadd_s32(vsra_n_u32(v400, v400, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
              *v7 = v394 - ((v396 * v394 + ((v396 * v394) >> 16) + 1) >> 16);
            }

            else
            {
              if (v20)
              {
                v395 = *v390;
              }

              else
              {
                v395 = 0xFFFF;
              }

              result = cmyk64_DAplusDAM(v14, v7, *v14, *v7, *v23, v395, (257 * v393 * ~*v7 + ((257 * v393 * ~*v7) >> 16) + 1) >> 16);
              v12 = v767;
              v20 = v741;
              v388 = v739;
            }
          }

          v16 += v776;
          v401 = &v23[v776];
          if (v401 >= v12)
          {
            v402 = v389;
          }

          else
          {
            v402 = 0;
          }

          v390 += v388 + v402;
          v23 = &v401[v402];
          v7 = (v7 + v391);
          v14 += v776;
          --v392;
        }

        while (v392);
        if (v723)
        {
          v403 = &v730[v728];
          v404 = v694;
          if (v403 < v723)
          {
            v404 = 0;
          }

          v390 = &v729[v726 + v404];
          v405 = v713;
          if (v403 < v723)
          {
            v405 = 0;
          }

          v23 = (v403 + 8 * v405);
          v12 += 8 * v405 + 8 * v728;
          v729 += v726 + v404;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v390 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 7:
      if (v8)
      {
        v269 = v20;
        v270 = -v32;
        v271 = v729;
        v744 = -(v728 * v22);
        v737 = -(v726 * v22);
        v272 = 2 * v8;
        v273 = 8 * v27;
        do
        {
          v274 = v727;
          v760 = v12;
          do
          {
            v275 = *v16;
            if (*v16)
            {
              if (v275 == 255)
              {
                v276 = *v7;
                v277 = *v271 ^ 0xFFFF;
                v278 = vdup_n_s32(v277);
                v279 = vmul_s32(vand_s8(*v14, 0xFFFF0000FFFFLL), v278);
                v280.i32[0] = HIWORD(v14->u32[0]);
                v280.i32[1] = HIWORD(*v14);
                v281 = vmul_s32(v280, v278);
                *v14 = vsli_n_s32(vsub_s32(*v14, vshr_n_u32(vadd_s32(vsra_n_u32(v279, v279, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v280, vshr_n_u32(vadd_s32(vsra_n_u32(v281, v281, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                *v7 = v276 - ((v277 * v276 + ((v277 * v276) >> 16) + 1) >> 16);
              }

              else
              {
                result = cmyk64_DAMplusDAM(v14, v7, *v14, *v7, (*v271 * (v275 | (v275 << 8)) + ((*v271 * (v275 | (v275 << 8))) >> 16) + 1) >> 16, *v14, *v7, (v275 | (v275 << 8)) ^ 0xFFFFu);
                v12 = v760;
              }
            }

            v16 += v776;
            v282 = &v23[v776];
            if (v282 >= v12)
            {
              v283 = v270;
            }

            else
            {
              v283 = 0;
            }

            v271 += v269 + v283;
            v23 = &v282[v283];
            v7 = (v7 + v272);
            v14 = (v14 + v273);
            --v274;
          }

          while (v274);
          if (v723)
          {
            v284 = &v730[v728];
            v285 = v737;
            if (v284 < v723)
            {
              v285 = 0;
            }

            v271 = &v729[v726 + v285];
            v286 = v744;
            if (v284 < v723)
            {
              v286 = 0;
            }

            v23 = (v284 + 8 * v286);
            v12 += 8 * v286 + 8 * v728;
            v729 += v726 + v285;
            v730 = v23;
          }

          else
          {
            v23 += v728;
            v271 += v726;
          }

          v16 += v725;
          v14 += v724;
          v7 += v720;
          --v731;
        }

        while (v731);
      }

      else
      {
        v596 = v20;
        v597 = -v32;
        v598 = -(v728 * v22);
        v774 = -(v726 * v22);
        v599 = 8 * v27;
        v600 = v729;
        do
        {
          v601 = v727;
          do
          {
            v602 = *v16;
            if (*v16)
            {
              v603 = v12;
              if (v602 == 255)
              {
                result = cmyk64_DM(v14, *v14, *v600);
              }

              else
              {
                result = cmyk64_DMplusDM(v14, *v14, (*v600 * (v602 | (v602 << 8)) + ((*v600 * (v602 | (v602 << 8))) >> 16) + 1) >> 16, *v14, (v602 | (v602 << 8)) ^ 0xFFFFu);
              }

              v12 = v603;
            }

            v16 += v776;
            v604 = &v23[v776];
            if (v604 >= v12)
            {
              v605 = v597;
            }

            else
            {
              v605 = 0;
            }

            v600 += v596 + v605;
            v23 = &v604[v605];
            v14 = (v14 + v599);
            --v601;
          }

          while (v601);
          if (v723)
          {
            v606 = &v730[v728];
            v607 = v774;
            if (v606 < v723)
            {
              v607 = 0;
            }

            v600 = &v729[v726 + v607];
            if (v606 >= v723)
            {
              v608 = v598;
            }

            else
            {
              v608 = 0;
            }

            v23 = (v606 + 8 * v608);
            v12 += 8 * v608 + 8 * v728;
            v729 += v726 + v607;
            v730 = v23;
          }

          else
          {
            v23 += v728;
            v600 += v726;
          }

          v16 += v725;
          v14 += v724;
          --v731;
        }

        while (v731);
      }

      return result;
    case 8:
      if (v8)
      {
        v442 = -v32;
        v443 = v729;
        v444 = -(v728 * v22);
        v445 = -(v726 * v22);
        v446 = 8 * v27;
        do
        {
          v447 = v9;
          v448 = v731;
          do
          {
            v449 = *v16;
            if (*v16)
            {
              v450 = *v7;
              if (v449 == 255)
              {
                v451 = *v443;
              }

              else
              {
                v451 = (257 * v449 * *v443 + ((257 * v449 * *v443) >> 16) + 1) >> 16;
              }

              result = v451 * v450 + ((v451 * v450) >> 16) + 1;
              v452 = vdup_n_s32(v451);
              v453 = vmul_s32(vand_s8(*v14, 0xFFFF0000FFFFLL), v452);
              v454.i32[0] = HIWORD(v14->u32[0]);
              v454.i32[1] = HIWORD(*v14);
              v455 = vmul_s32(v454, v452);
              *v14 = vsli_n_s32(vsub_s32(*v14, vshr_n_u32(vadd_s32(vsra_n_u32(v453, v453, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v454, vshr_n_u32(vadd_s32(vsra_n_u32(v455, v455, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
              *v7 = v450 - WORD1(result);
            }

            v16 += v776;
            v456 = &v23[v776];
            v457 = &v443[v20];
            if (v456 >= v12)
            {
              v458 = v442;
            }

            else
            {
              v458 = 0;
            }

            v443 = &v457[v458];
            v23 = &v456[v458];
            v7 += v8;
            v14 = (v14 + v446);
            --v447;
          }

          while (v447);
          if (v723)
          {
            v459 = &v730[v728];
            if (v459 >= v723)
            {
              v460 = v445;
            }

            else
            {
              v460 = 0;
            }

            result = &v729[v726 + v460];
            if (v459 >= v723)
            {
              v461 = v444;
            }

            else
            {
              v461 = 0;
            }

            v23 = (v459 + 8 * v461);
            v12 += 8 * v461 + 8 * v728;
            v729 += v726 + v460;
            v730 = v23;
            v443 = result;
          }

          else
          {
            v23 += v728;
            v443 += v726;
          }

          v16 += v725;
          v14 += v724;
          v7 += v720;
          --v731;
        }

        while (v448 != 1);
      }

      else
      {
        v627 = v20;
        v628 = -v32;
        v629 = -(v728 * v22);
        v775 = -(v726 * v22);
        v630 = 8 * v27;
        v631 = v729;
        do
        {
          v632 = v727;
          v633 = v12;
          do
          {
            v634 = *v16;
            if (*v16)
            {
              if (v634 == 255)
              {
                v635 = *v631;
              }

              else
              {
                v635 = (257 * v634 * *v631 + ((257 * v634 * *v631) >> 16) + 1) >> 16;
              }

              result = cmyk64_DM(v14, *v14, v635 ^ 0xFFFF);
              v12 = v633;
            }

            v16 += v776;
            v636 = &v23[v776];
            if (v636 >= v12)
            {
              v637 = v628;
            }

            else
            {
              v637 = 0;
            }

            v631 += v627 + v637;
            v23 = &v636[v637];
            v14 = (v14 + v630);
            --v632;
          }

          while (v632);
          if (v723)
          {
            v638 = &v730[v728];
            v639 = v775;
            if (v638 < v723)
            {
              v639 = 0;
            }

            v631 = &v729[v726 + v639];
            if (v638 >= v723)
            {
              v640 = v629;
            }

            else
            {
              v640 = 0;
            }

            v23 = (v638 + 8 * v640);
            v12 += 8 * v640 + 8 * v728;
            v729 += v726 + v639;
            v730 = v23;
          }

          else
          {
            v23 += v728;
            v631 += v726;
          }

          v16 += v725;
          v14 += v724;
          --v731;
        }

        while (v731);
      }

      return result;
    case 9:
      v754 = v20;
      v742 = -v32;
      v153 = v729;
      v663 = -(v726 * v22);
      v683 = -(v728 * v22);
      v154 = 2 * v8;
      v155 = 8 * v27;
      do
      {
        v156 = v727;
        do
        {
          if (*v16)
          {
            v157 = v12;
            v158 = *v153;
            v159 = ~(*v16 | (*v16 << 8));
            v160 = v159;
            v161 = v158 * v160 + ((v158 * v160) >> 16) + 1;
            v162 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v23), xmmword_18439CB80));
            v163.i32[1] = v162.i32[1];
            v163.i32[0] = v162.u16[0];
            v164 = vmul_s32(v163, vdup_n_s32(v159));
            v165 = vand_s8(vsub_s32(v162, vshr_n_u32(vadd_s32(vsra_n_u32(v164, v164, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
            v166.i64[0] = v165.u32[0];
            v166.i64[1] = v165.u32[1];
            v167 = vshlq_u64(v166, xmmword_18439CB70);
            result = cmyk64_DAMplusDAM(v14, v7, vorrq_s8(v167, vdupq_laneq_s64(v167, 1)).u64[0] | ((WORD1(*v23) - ((WORD1(*v23) * v160 + ((WORD1(*v23) * v160) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v160 + ((*v23 * v160) >> 16) + 1) >> 16)), (v158 - HIWORD(v161)), *v7 ^ 0xFFFFu, *v14, *v7, (v158 - HIWORD(v161) + v159));
            v12 = v157;
          }

          v16 += v776;
          v168 = &v23[v776];
          v169 = v742;
          if (v168 < v12)
          {
            v169 = 0;
          }

          v153 += v754 + v169;
          v23 = &v168[v169];
          v7 = (v7 + v154);
          v14 = (v14 + v155);
          --v156;
        }

        while (v156);
        if (v723)
        {
          v170 = &v730[v728];
          v171 = v663;
          if (v170 < v723)
          {
            v171 = 0;
          }

          v153 = &v729[v726 + v171];
          v172 = v683;
          if (v170 < v723)
          {
            v172 = 0;
          }

          v23 = (v170 + 8 * v172);
          v12 += 8 * v172 + 8 * v728;
          v729 += v726 + v171;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v153 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 10:
      v769 = v20;
      v747 = -v32;
      v424 = v729;
      v674 = -(v726 * v22);
      v696 = -(v728 * v22);
      v425 = 2 * v8;
      v426 = 8 * v27;
      do
      {
        v427 = v727;
        do
        {
          if (*v16)
          {
            v428 = v12;
            v429 = *v7;
            v430 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v431 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v23), xmmword_18439CB80));
            v432.i32[1] = v431.i32[1];
            v432.i32[0] = v431.u16[0];
            v433 = vmul_s32(vdup_n_s32(v430), v432);
            v434 = vand_s8(vsub_s32(v431, vshr_n_u32(vadd_s32(vsra_n_u32(v433, v433, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
            v435.i64[0] = v434.u32[0];
            v435.i64[1] = v434.u32[1];
            v436 = vshlq_u64(v435, xmmword_18439CB70);
            result = cmyk64_DAMplusDAM(v14, v7, vorrq_s8(v436, vdupq_laneq_s64(v436, 1)).u64[0] | ((WORD1(*v23) - ((WORD1(*v23) * v430 + ((WORD1(*v23) * v430) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v430 + ((*v23 * v430) >> 16) + 1) >> 16)), (*v424 - ((v430 * *v424 + ((v430 * *v424) >> 16) + 1) >> 16)), v429 ^ 0xFFFFu, *v14, v429, ~(*v424 - ((v430 * *v424 + ((v430 * *v424) >> 16) + 1) >> 16)));
            v12 = v428;
          }

          v16 += v776;
          v437 = &v23[v776];
          v438 = v747;
          if (v437 < v12)
          {
            v438 = 0;
          }

          v424 += v769 + v438;
          v23 = &v437[v438];
          v7 = (v7 + v425);
          v14 = (v14 + v426);
          --v427;
        }

        while (v427);
        if (v723)
        {
          v439 = &v730[v728];
          v440 = v674;
          if (v439 < v723)
          {
            v440 = 0;
          }

          v424 = &v729[v726 + v440];
          v441 = v696;
          if (v439 < v723)
          {
            v441 = 0;
          }

          v23 = (v439 + 8 * v441);
          v12 += 8 * v441 + 8 * v728;
          v729 += v726 + v440;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v424 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 11:
      if (v8)
      {
        v751 = v20;
        v733 = -v32;
        v99 = v729;
        v656 = -(v726 * v22);
        v661 = -(v728 * v22);
        v100 = 2 * v8;
        v101 = 8 * v27;
        do
        {
          v102 = v727;
          v103 = v12;
          do
          {
            if (*v16)
            {
              if (v20)
              {
                v104 = *v99;
              }

              else
              {
                v104 = 0xFFFF;
              }

              v105 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
              v106 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v23), xmmword_18439CB80));
              v107.i32[1] = v106.i32[1];
              v107.i32[0] = v106.u16[0];
              v108 = vmul_s32(vdup_n_s32(v105), v107);
              v109 = vand_s8(vsub_s32(v106, vshr_n_u32(vadd_s32(vsra_n_u32(v108, v108, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
              v110.i64[0] = v109.u32[0];
              v110.i64[1] = v109.u32[1];
              v111 = vshlq_u64(v110, xmmword_18439CB70);
              result = cmyk64_DAplusdDA(v14, v7, *v14, *v7, vorrq_s8(v111, vdupq_laneq_s64(v111, 1)).u64[0] | ((WORD1(*v23) - ((WORD1(*v23) * v105 + ((WORD1(*v23) * v105) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v105 + ((*v23 * v105) >> 16) + 1) >> 16)), (v104 - ((v104 * v105 + ((v104 * v105) >> 16) + 1) >> 16)));
              v12 = v103;
              v20 = v741;
            }

            v16 += v776;
            v112 = &v23[v776];
            v113 = v733;
            if (v112 < v12)
            {
              v113 = 0;
            }

            v99 += v751 + v113;
            v23 = &v112[v113];
            v7 = (v7 + v100);
            v14 = (v14 + v101);
            --v102;
          }

          while (v102);
          if (v723)
          {
            v114 = &v730[v728];
            v115 = v656;
            if (v114 < v723)
            {
              v115 = 0;
            }

            v99 = &v729[v726 + v115];
            v116 = v661;
            if (v114 < v723)
            {
              v116 = 0;
            }

            v23 = (v114 + 8 * v116);
            v12 += 8 * v116 + 8 * v728;
            v729 += v726 + v115;
            v730 = v23;
          }

          else
          {
            v23 += v728;
            v99 += v726;
          }

          v16 += v725;
          v14 += v724;
          v7 += v720;
          --v731;
        }

        while (v731);
      }

      else
      {
        v532 = v20;
        v533 = -v32;
        v721 = -(v728 * v22);
        v719 = -(v726 * v22);
        v534 = 8 * v27;
        v535 = v729;
        do
        {
          v536 = v727;
          v537 = v12;
          do
          {
            if (*v16)
            {
              if (v20)
              {
                v538 = *v535;
              }

              else
              {
                v538 = 0xFFFF;
              }

              v539 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
              v540 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v23), xmmword_18439CB80));
              v541.i32[1] = v540.i32[1];
              v541.i32[0] = v540.u16[0];
              v542 = vmul_s32(vdup_n_s32(v539), v541);
              v543 = vand_s8(vsub_s32(v540, vshr_n_u32(vadd_s32(vsra_n_u32(v542, v542, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
              v544.i64[0] = v543.u32[0];
              v544.i64[1] = v543.u32[1];
              v545 = vshlq_u64(v544, xmmword_18439CB70);
              result = cmyk64_DplusdDA(v14, *v14, vorrq_s8(v545, vdupq_laneq_s64(v545, 1)).u64[0] | ((WORD1(*v23) - ((WORD1(*v23) * v539 + ((WORD1(*v23) * v539) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v539 + ((*v23 * v539) >> 16) + 1) >> 16)), (v538 - ((v538 * v539 + ((v538 * v539) >> 16) + 1) >> 16)));
              v12 = v537;
              v20 = v741;
            }

            v16 += v776;
            v546 = &v23[v776];
            if (v546 >= v12)
            {
              v547 = v533;
            }

            else
            {
              v547 = 0;
            }

            v535 += v532 + v547;
            v23 = &v546[v547];
            v14 = (v14 + v534);
            --v536;
          }

          while (v536);
          if (v723)
          {
            v548 = &v730[v728];
            v549 = v719;
            if (v548 < v723)
            {
              v549 = 0;
            }

            v535 = &v729[v726 + v549];
            v550 = v721;
            if (v548 < v723)
            {
              v550 = 0;
            }

            v23 = (v548 + 8 * v550);
            v12 += 8 * v550 + 8 * v728;
            v729 += v726 + v549;
            v730 = v23;
          }

          else
          {
            v23 += v728;
            v535 += v726;
          }

          v16 += v725;
          v14 += v724;
          --v731;
        }

        while (v731);
      }

      return result;
    case 12:
      if (v8)
      {
        v753 = v20;
        v735 = -v32;
        v135 = v729;
        v657 = -(v726 * v22);
        v662 = -(v728 * v22);
        v136 = 2 * v8;
        v137 = 8 * v27;
        do
        {
          v138 = v727;
          v139 = v12;
          do
          {
            if (*v16)
            {
              if (v20)
              {
                v140 = *v135;
              }

              else
              {
                v140 = 0xFFFF;
              }

              v141 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
              v142 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v23), xmmword_18439CB80));
              v143.i32[1] = v142.i32[1];
              v143.i32[0] = v142.u16[0];
              v144 = vmul_s32(vdup_n_s32(v141), v143);
              v145 = vand_s8(vsub_s32(v142, vshr_n_u32(vadd_s32(vsra_n_u32(v144, v144, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
              v146.i64[0] = v145.u32[0];
              v146.i64[1] = v145.u32[1];
              v147 = vshlq_u64(v146, xmmword_18439CB70);
              result = cmyk64_DApluslDA(v14, v7, *v14, *v7, vorrq_s8(v147, vdupq_laneq_s64(v147, 1)).u64[0] | ((WORD1(*v23) - ((WORD1(*v23) * v141 + ((WORD1(*v23) * v141) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v141 + ((*v23 * v141) >> 16) + 1) >> 16)), (v140 - ((v140 * v141 + ((v140 * v141) >> 16) + 1) >> 16)));
              v12 = v139;
              v20 = v741;
            }

            v16 += v776;
            v148 = &v23[v776];
            v149 = v735;
            if (v148 < v12)
            {
              v149 = 0;
            }

            v135 += v753 + v149;
            v23 = &v148[v149];
            v7 = (v7 + v136);
            v14 = (v14 + v137);
            --v138;
          }

          while (v138);
          if (v723)
          {
            v150 = &v730[v728];
            v151 = v657;
            if (v150 < v723)
            {
              v151 = 0;
            }

            v135 = &v729[v726 + v151];
            v152 = v662;
            if (v150 < v723)
            {
              v152 = 0;
            }

            v23 = (v150 + 8 * v152);
            v12 += 8 * v152 + 8 * v728;
            v729 += v726 + v151;
            v730 = v23;
          }

          else
          {
            v23 += v728;
            v135 += v726;
          }

          v16 += v725;
          v14 += v724;
          v7 += v720;
          --v731;
        }

        while (v731);
      }

      else
      {
        v551 = -v32;
        v552 = -(v728 * v22);
        v553 = 8 * v27;
        do
        {
          v554 = v727;
          v555 = v731;
          do
          {
            if (*v16)
            {
              v556 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
              v557 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v23), xmmword_18439CB80));
              v558.i32[1] = v557.i32[1];
              v558.i32[0] = v557.u16[0];
              v559 = vmul_s32(vdup_n_s32(v556), v558);
              v560 = vand_s8(vsub_s32(v557, vshr_n_u32(vadd_s32(vsra_n_u32(v559, v559, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
              v561.i64[0] = v560.u32[0];
              v561.i64[1] = v560.u32[1];
              v562 = vshlq_u64(v561, xmmword_18439CB70);
              v563 = v12;
              result = cmyk64_DpluslD(v14, *v14, vorrq_s8(v562, vdupq_laneq_s64(v562, 1)).u64[0] | ((WORD1(*v23) - ((WORD1(*v23) * v556 + ((WORD1(*v23) * v556) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v556 + ((*v23 * v556) >> 16) + 1) >> 16)));
              v12 = v563;
            }

            v16 += v776;
            v564 = &v23[v776];
            if (v564 >= v12)
            {
              v565 = v551;
            }

            else
            {
              v565 = 0;
            }

            v23 = &v564[v565];
            v14 = (v14 + v553);
            --v554;
          }

          while (v554);
          v16 += v725;
          v14 += v724;
          v566 = v730;
          v567 = &v730[v728];
          if (v567 >= v723)
          {
            v568 = v552;
          }

          else
          {
            v568 = 0;
          }

          v569 = (v567 + 8 * v568);
          v570 = v12 + 8 * v568 + 8 * v728;
          if (v723)
          {
            v12 = v570;
            v566 = v569;
            v23 = v569;
          }

          else
          {
            v23 += v728;
          }

          v730 = v566;
          --v731;
        }

        while (v555 != 1);
      }

      return result;
    case 13:
      v370 = v20;
      v371 = -v32;
      v372 = v729;
      v672 = -(v726 * v22);
      v693 = -(v728 * v22);
      v373 = 2 * v8;
      v374 = 8 * v27;
      v712 = v20;
      do
      {
        v375 = v727;
        v766 = v12;
        do
        {
          if (*v16)
          {
            v376 = v20 ? *v372 : 0xFFFF;
            v377 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v378 = v376 - ((v376 * v377 + ((v376 * v377) >> 16) + 1) >> 16);
            v379 = v378;
            if (v378)
            {
              v380 = HIWORD(*v23);
              v381 = WORD2(*v23) * v377;
              v382 = ((v380 - ((v377 * v380 + ((v377 * v380) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v381 + HIWORD(v381) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v377 + ((WORD1(*v23) * v377) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v377 + ((*v23 * v377) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAmultiplyPDA_11872(*v14, *v7, v382, v378);
                  v370 = v712;
                  v8 = v732;
                  v20 = v741;
                  v12 = v766;
                  v382 = result;
                }

                *v14 = v382;
                *v7 = v379;
              }

              else
              {
                result = PDAmultiplyPDA_11872(*v14, 0xFFFFu, v382, v378);
                v370 = v712;
                v8 = v732;
                v20 = v741;
                v12 = v766;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v383 = &v23[v776];
          if (v383 >= v12)
          {
            v384 = v371;
          }

          else
          {
            v384 = 0;
          }

          v372 += v370 + v384;
          v23 = &v383[v384];
          v7 = (v7 + v373);
          v14 = (v14 + v374);
          --v375;
        }

        while (v375);
        if (v723)
        {
          v385 = &v730[v728];
          v386 = v672;
          if (v385 < v723)
          {
            v386 = 0;
          }

          v372 = &v729[v726 + v386];
          v387 = v693;
          if (v385 < v723)
          {
            v387 = 0;
          }

          v23 = (v385 + 8 * v387);
          v12 += 8 * v387 + 8 * v728;
          v729 += v726 + v386;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v372 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 14:
      v81 = v20;
      v82 = -v32;
      v83 = v729;
      v660 = -(v726 * v22);
      v681 = -(v728 * v22);
      v84 = 2 * v8;
      v85 = 8 * v27;
      v703 = v20;
      do
      {
        v86 = v727;
        v750 = v12;
        do
        {
          if (*v16)
          {
            v87 = v20 ? *v83 : 0xFFFF;
            v88 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v89 = v87 - ((v87 * v88 + ((v87 * v88) >> 16) + 1) >> 16);
            v90 = v89;
            if (v89)
            {
              v91 = HIWORD(*v23);
              v92 = WORD2(*v23) * v88;
              v93 = ((v91 - ((v88 * v91 + ((v88 * v91) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v92 + HIWORD(v92) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v88 + ((WORD1(*v23) * v88) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v88 + ((*v23 * v88) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAscreenPDA_11873(*v14, *v7, v93, v89);
                  v81 = v703;
                  v8 = v732;
                  v20 = v741;
                  v12 = v750;
                  v93 = result;
                }

                *v14 = v93;
                *v7 = v90;
              }

              else
              {
                result = PDAscreenPDA_11873(*v14, 0xFFFFu, v93, v89);
                v81 = v703;
                v8 = v732;
                v20 = v741;
                v12 = v750;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v94 = &v23[v776];
          if (v94 >= v12)
          {
            v95 = v82;
          }

          else
          {
            v95 = 0;
          }

          v83 += v81 + v95;
          v23 = &v94[v95];
          v7 = (v7 + v84);
          v14 = (v14 + v85);
          --v86;
        }

        while (v86);
        if (v723)
        {
          v96 = &v730[v728];
          v97 = v660;
          if (v96 < v723)
          {
            v97 = 0;
          }

          v83 = &v729[v726 + v97];
          v98 = v681;
          if (v96 < v723)
          {
            v98 = 0;
          }

          v23 = (v96 + 8 * v98);
          v12 += 8 * v98 + 8 * v728;
          v729 += v726 + v97;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v83 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 15:
      v233 = v20;
      v234 = -v32;
      v235 = v729;
      v667 = -(v726 * v22);
      v687 = -(v728 * v22);
      v236 = 2 * v8;
      v237 = 8 * v27;
      v707 = v20;
      do
      {
        v238 = v727;
        v758 = v12;
        do
        {
          if (*v16)
          {
            v239 = v20 ? *v235 : 0xFFFF;
            v240 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v241 = v239 - ((v239 * v240 + ((v239 * v240) >> 16) + 1) >> 16);
            v242 = v241;
            if (v241)
            {
              v243 = HIWORD(*v23);
              v244 = WORD2(*v23) * v240;
              v245 = ((v243 - ((v240 * v243 + ((v240 * v243) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v244 + HIWORD(v244) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v240 + ((WORD1(*v23) * v240) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v240 + ((*v23 * v240) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAoverlayPDA_11874(*v14, *v7, v245, v241);
                  v233 = v707;
                  v8 = v732;
                  v20 = v741;
                  v12 = v758;
                  v245 = result;
                }

                *v14 = v245;
                *v7 = v242;
              }

              else
              {
                result = PDAoverlayPDA_11874(*v14, 0xFFFFu, v245, v241);
                v233 = v707;
                v8 = v732;
                v20 = v741;
                v12 = v758;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v246 = &v23[v776];
          if (v246 >= v12)
          {
            v247 = v234;
          }

          else
          {
            v247 = 0;
          }

          v235 += v233 + v247;
          v23 = &v246[v247];
          v7 = (v7 + v236);
          v14 = (v14 + v237);
          --v238;
        }

        while (v238);
        if (v723)
        {
          v248 = &v730[v728];
          v249 = v667;
          if (v248 < v723)
          {
            v249 = 0;
          }

          v235 = &v729[v726 + v249];
          v250 = v687;
          if (v248 < v723)
          {
            v250 = 0;
          }

          v23 = (v248 + 8 * v250);
          v12 += 8 * v250 + 8 * v728;
          v729 += v726 + v249;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v235 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 16:
      v63 = v20;
      v64 = -v32;
      v65 = v729;
      v659 = -(v726 * v22);
      v680 = -(v728 * v22);
      v66 = 2 * v8;
      v67 = 8 * v27;
      v702 = v20;
      do
      {
        v68 = v727;
        v749 = v12;
        do
        {
          if (*v16)
          {
            v69 = v20 ? *v65 : 0xFFFF;
            v70 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v71 = v69 - ((v69 * v70 + ((v69 * v70) >> 16) + 1) >> 16);
            v72 = v71;
            if (v71)
            {
              v73 = HIWORD(*v23);
              v74 = WORD2(*v23) * v70;
              v75 = ((v73 - ((v70 * v73 + ((v70 * v73) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v74 + HIWORD(v74) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v70 + ((WORD1(*v23) * v70) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v70 + ((*v23 * v70) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAdarkenPDA_11876(*v14, *v7, v75, v71);
                  v63 = v702;
                  v8 = v732;
                  v20 = v741;
                  v12 = v749;
                  v75 = result;
                }

                *v14 = v75;
                *v7 = v72;
              }

              else
              {
                result = PDAdarkenPDA_11876(*v14, 0xFFFFu, v75, v71);
                v63 = v702;
                v8 = v732;
                v20 = v741;
                v12 = v749;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v76 = &v23[v776];
          if (v76 >= v12)
          {
            v77 = v64;
          }

          else
          {
            v77 = 0;
          }

          v65 += v63 + v77;
          v23 = &v76[v77];
          v7 = (v7 + v66);
          v14 = (v14 + v67);
          --v68;
        }

        while (v68);
        if (v723)
        {
          v78 = &v730[v728];
          v79 = v659;
          if (v78 < v723)
          {
            v79 = 0;
          }

          v65 = &v729[v726 + v79];
          v80 = v680;
          if (v78 < v723)
          {
            v80 = 0;
          }

          v23 = (v78 + 8 * v80);
          v12 += 8 * v80 + 8 * v728;
          v729 += v726 + v79;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v65 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 17:
      v299 = v20;
      v300 = -v32;
      v301 = v729;
      v668 = -(v726 * v22);
      v689 = -(v728 * v22);
      v302 = 2 * v8;
      v303 = 8 * v27;
      v709 = v20;
      do
      {
        v304 = v727;
        v762 = v12;
        do
        {
          if (*v16)
          {
            v305 = v20 ? *v301 : 0xFFFF;
            v306 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v307 = v305 - ((v305 * v306 + ((v305 * v306) >> 16) + 1) >> 16);
            v308 = v307;
            if (v307)
            {
              v309 = HIWORD(*v23);
              v310 = WORD2(*v23) * v306;
              v311 = ((v309 - ((v306 * v309 + ((v306 * v309) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v310 + HIWORD(v310) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v306 + ((WORD1(*v23) * v306) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v306 + ((*v23 * v306) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAlightenPDA_11875(*v14, *v7, v311, v307);
                  v299 = v709;
                  v8 = v732;
                  v20 = v741;
                  v12 = v762;
                  v311 = result;
                }

                *v14 = v311;
                *v7 = v308;
              }

              else
              {
                result = PDAlightenPDA_11875(*v14, 0xFFFFu, v311, v307);
                v299 = v709;
                v8 = v732;
                v20 = v741;
                v12 = v762;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v312 = &v23[v776];
          if (v312 >= v12)
          {
            v313 = v300;
          }

          else
          {
            v313 = 0;
          }

          v301 += v299 + v313;
          v23 = &v312[v313];
          v7 = (v7 + v302);
          v14 = (v14 + v303);
          --v304;
        }

        while (v304);
        if (v723)
        {
          v314 = &v730[v728];
          v315 = v668;
          if (v314 < v723)
          {
            v315 = 0;
          }

          v301 = &v729[v726 + v315];
          v316 = v689;
          if (v314 < v723)
          {
            v316 = 0;
          }

          v23 = (v314 + 8 * v316);
          v12 += 8 * v316 + 8 * v728;
          v729 += v726 + v315;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v301 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 18:
      v406 = v20;
      v407 = -v32;
      v408 = v729;
      v673 = -(v726 * v22);
      v695 = -(v728 * v22);
      v409 = 2 * v8;
      v410 = 8 * v27;
      v714 = v20;
      do
      {
        v411 = v727;
        v768 = v12;
        do
        {
          if (*v16)
          {
            v412 = v20 ? *v408 : 0xFFFF;
            v413 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v414 = v412 - ((v412 * v413 + ((v412 * v413) >> 16) + 1) >> 16);
            v415 = v414;
            if (v414)
            {
              v416 = HIWORD(*v23);
              v417 = WORD2(*v23) * v413;
              v418 = ((v416 - ((v413 * v416 + ((v413 * v416) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v417 + HIWORD(v417) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v413 + ((WORD1(*v23) * v413) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v413 + ((*v23 * v413) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAcolordodgePDA_11877(*v14, *v7, v418, v414);
                  v406 = v714;
                  v8 = v732;
                  v20 = v741;
                  v12 = v768;
                  v418 = result;
                }

                *v14 = v418;
                *v7 = v415;
              }

              else
              {
                result = PDAcolordodgePDA_11877(*v14, 0xFFFFu, v418, v414);
                v406 = v714;
                v8 = v732;
                v20 = v741;
                v12 = v768;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v419 = &v23[v776];
          if (v419 >= v12)
          {
            v420 = v407;
          }

          else
          {
            v420 = 0;
          }

          v408 += v406 + v420;
          v23 = &v419[v420];
          v7 = (v7 + v409);
          v14 = (v14 + v410);
          --v411;
        }

        while (v411);
        if (v723)
        {
          v421 = &v730[v728];
          v422 = v673;
          if (v421 < v723)
          {
            v422 = 0;
          }

          v408 = &v729[v726 + v422];
          v423 = v695;
          if (v421 < v723)
          {
            v423 = 0;
          }

          v23 = (v421 + 8 * v423);
          v12 += 8 * v423 + 8 * v728;
          v729 += v726 + v422;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v408 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 19:
      v480 = v20;
      v481 = -v32;
      v482 = v729;
      v676 = -(v726 * v22);
      v698 = -(v728 * v22);
      v483 = 2 * v8;
      v484 = 8 * v27;
      v716 = v20;
      do
      {
        v485 = v727;
        v771 = v12;
        do
        {
          if (*v16)
          {
            v486 = v20 ? *v482 : 0xFFFF;
            v487 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v488 = v486 - ((v486 * v487 + ((v486 * v487) >> 16) + 1) >> 16);
            v489 = v488;
            if (v488)
            {
              v490 = HIWORD(*v23);
              v491 = WORD2(*v23) * v487;
              v492 = ((v490 - ((v487 * v490 + ((v487 * v490) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v491 + HIWORD(v491) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v487 + ((WORD1(*v23) * v487) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v487 + ((*v23 * v487) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAcolorburnPDA_11878(*v14, *v7, v492, v488);
                  v480 = v716;
                  v8 = v732;
                  v20 = v741;
                  v12 = v771;
                  v492 = result;
                }

                *v14 = v492;
                *v7 = v489;
              }

              else
              {
                result = PDAcolorburnPDA_11878(*v14, 0xFFFFu, v492, v488);
                v480 = v716;
                v8 = v732;
                v20 = v741;
                v12 = v771;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v493 = &v23[v776];
          if (v493 >= v12)
          {
            v494 = v481;
          }

          else
          {
            v494 = 0;
          }

          v482 += v480 + v494;
          v23 = &v493[v494];
          v7 = (v7 + v483);
          v14 = (v14 + v484);
          --v485;
        }

        while (v485);
        if (v723)
        {
          v495 = &v730[v728];
          v496 = v676;
          if (v495 < v723)
          {
            v496 = 0;
          }

          v482 = &v729[v726 + v496];
          v497 = v698;
          if (v495 < v723)
          {
            v497 = 0;
          }

          v23 = (v495 + 8 * v497);
          v12 += 8 * v497 + 8 * v728;
          v729 += v726 + v496;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v482 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 20:
      v317 = v20;
      v318 = -v32;
      v319 = v729;
      v669 = -(v726 * v22);
      v690 = -(v728 * v22);
      v320 = 2 * v8;
      v321 = 8 * v27;
      v710 = v20;
      do
      {
        v322 = v727;
        v763 = v12;
        do
        {
          if (*v16)
          {
            v323 = v20 ? *v319 : 0xFFFF;
            v324 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v325 = v323 - ((v323 * v324 + ((v323 * v324) >> 16) + 1) >> 16);
            v326 = v325;
            if (v325)
            {
              v327 = HIWORD(*v23);
              v328 = WORD2(*v23) * v324;
              v329 = ((v327 - ((v324 * v327 + ((v324 * v327) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v328 + HIWORD(v328) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v324 + ((WORD1(*v23) * v324) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v324 + ((*v23 * v324) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAsoftlightPDA_11880(*v14, *v7, v329, v325);
                  v317 = v710;
                  v8 = v732;
                  v20 = v741;
                  v12 = v763;
                  v329 = result;
                }

                *v14 = v329;
                *v7 = v326;
              }

              else
              {
                result = PDAsoftlightPDA_11880(*v14, 0xFFFFu, v329, v325);
                v317 = v710;
                v8 = v732;
                v20 = v741;
                v12 = v763;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v330 = &v23[v776];
          if (v330 >= v12)
          {
            v331 = v318;
          }

          else
          {
            v331 = 0;
          }

          v319 += v317 + v331;
          v23 = &v330[v331];
          v7 = (v7 + v320);
          v14 = (v14 + v321);
          --v322;
        }

        while (v322);
        if (v723)
        {
          v332 = &v730[v728];
          v333 = v669;
          if (v332 < v723)
          {
            v333 = 0;
          }

          v319 = &v729[v726 + v333];
          v334 = v690;
          if (v332 < v723)
          {
            v334 = 0;
          }

          v23 = (v332 + 8 * v334);
          v12 += 8 * v334 + 8 * v728;
          v729 += v726 + v333;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v319 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 21:
      v352 = v20;
      v353 = -v32;
      v354 = v729;
      v671 = -(v726 * v22);
      v692 = -(v728 * v22);
      v355 = 2 * v8;
      v356 = 8 * v27;
      v711 = v20;
      do
      {
        v357 = v727;
        v765 = v12;
        do
        {
          if (*v16)
          {
            v358 = v20 ? *v354 : 0xFFFF;
            v359 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v360 = v358 - ((v358 * v359 + ((v358 * v359) >> 16) + 1) >> 16);
            v361 = v360;
            if (v360)
            {
              v362 = HIWORD(*v23);
              v363 = WORD2(*v23) * v359;
              v364 = ((v362 - ((v359 * v362 + ((v359 * v362) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v363 + HIWORD(v363) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v359 + ((WORD1(*v23) * v359) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v359 + ((*v23 * v359) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAhardlightPDA_11879(*v14, *v7, v364, v360);
                  v352 = v711;
                  v8 = v732;
                  v20 = v741;
                  v12 = v765;
                  v364 = result;
                }

                *v14 = v364;
                *v7 = v361;
              }

              else
              {
                result = PDAhardlightPDA_11879(*v14, 0xFFFFu, v364, v360);
                v352 = v711;
                v8 = v732;
                v20 = v741;
                v12 = v765;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v365 = &v23[v776];
          if (v365 >= v12)
          {
            v366 = v353;
          }

          else
          {
            v366 = 0;
          }

          v354 += v352 + v366;
          v23 = &v365[v366];
          v7 = (v7 + v355);
          v14 = (v14 + v356);
          --v357;
        }

        while (v357);
        if (v723)
        {
          v367 = &v730[v728];
          v368 = v671;
          if (v367 < v723)
          {
            v368 = 0;
          }

          v354 = &v729[v726 + v368];
          v369 = v692;
          if (v367 < v723)
          {
            v369 = 0;
          }

          v23 = (v367 + 8 * v369);
          v12 += 8 * v369 + 8 * v728;
          v729 += v726 + v368;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v354 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 22:
      v462 = v20;
      v463 = -v32;
      v464 = v729;
      v675 = -(v726 * v22);
      v697 = -(v728 * v22);
      v465 = 2 * v8;
      v466 = 8 * v27;
      v715 = v20;
      do
      {
        v467 = v727;
        v770 = v12;
        do
        {
          if (*v16)
          {
            v468 = v20 ? *v464 : 0xFFFF;
            v469 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v470 = v468 - ((v468 * v469 + ((v468 * v469) >> 16) + 1) >> 16);
            v471 = v470;
            if (v470)
            {
              v472 = HIWORD(*v23);
              v473 = WORD2(*v23) * v469;
              v474 = ((v472 - ((v469 * v472 + ((v469 * v472) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v473 + HIWORD(v473) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v469 + ((WORD1(*v23) * v469) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v469 + ((*v23 * v469) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAdifferencePDA_11881(*v14, *v7, v474, v470);
                  v462 = v715;
                  v8 = v732;
                  v20 = v741;
                  v12 = v770;
                  v474 = result;
                }

                *v14 = v474;
                *v7 = v471;
              }

              else
              {
                result = PDAdifferencePDA_11881(*v14, 0xFFFFu, v474, v470);
                v462 = v715;
                v8 = v732;
                v20 = v741;
                v12 = v770;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v475 = &v23[v776];
          if (v475 >= v12)
          {
            v476 = v463;
          }

          else
          {
            v476 = 0;
          }

          v464 += v462 + v476;
          v23 = &v475[v476];
          v7 = (v7 + v465);
          v14 = (v14 + v466);
          --v467;
        }

        while (v467);
        if (v723)
        {
          v477 = &v730[v728];
          v478 = v675;
          if (v477 < v723)
          {
            v478 = 0;
          }

          v464 = &v729[v726 + v478];
          v479 = v697;
          if (v477 < v723)
          {
            v479 = 0;
          }

          v23 = (v477 + 8 * v479);
          v12 += 8 * v479 + 8 * v728;
          v729 += v726 + v478;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v464 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 23:
      v498 = v20;
      v499 = -v32;
      v500 = v729;
      v677 = -(v726 * v22);
      v699 = -(v728 * v22);
      v501 = 2 * v8;
      v502 = 8 * v27;
      v717 = v20;
      do
      {
        v503 = v727;
        v772 = v12;
        do
        {
          if (*v16)
          {
            v504 = v20 ? *v500 : 0xFFFF;
            v505 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v506 = v504 - ((v504 * v505 + ((v504 * v505) >> 16) + 1) >> 16);
            v507 = v506;
            if (v506)
            {
              v508 = HIWORD(*v23);
              v509 = WORD2(*v23) * v505;
              v510 = ((v508 - ((v505 * v508 + ((v505 * v508) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v509 + HIWORD(v509) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v505 + ((WORD1(*v23) * v505) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v505 + ((*v23 * v505) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAexclusionPDA_11882(*v14, *v7, v510, v506);
                  v498 = v717;
                  v8 = v732;
                  v20 = v741;
                  v12 = v772;
                  v510 = result;
                }

                *v14 = v510;
                *v7 = v507;
              }

              else
              {
                result = PDAexclusionPDA_11882(*v14, 0xFFFFu, v510, v506);
                v498 = v717;
                v8 = v732;
                v20 = v741;
                v12 = v772;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v511 = &v23[v776];
          if (v511 >= v12)
          {
            v512 = v499;
          }

          else
          {
            v512 = 0;
          }

          v500 += v498 + v512;
          v23 = &v511[v512];
          v7 = (v7 + v501);
          v14 = (v14 + v502);
          --v503;
        }

        while (v503);
        if (v723)
        {
          v513 = &v730[v728];
          v514 = v677;
          if (v513 < v723)
          {
            v514 = 0;
          }

          v500 = &v729[v726 + v514];
          v515 = v699;
          if (v513 < v723)
          {
            v515 = 0;
          }

          v23 = (v513 + 8 * v515);
          v12 += 8 * v515 + 8 * v728;
          v729 += v726 + v514;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v500 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 24:
      v191 = v20;
      v192 = -v32;
      v193 = v729;
      v665 = -(v726 * v22);
      v685 = -(v728 * v22);
      v194 = 2 * v8;
      v195 = 8 * v27;
      v706 = v20;
      do
      {
        v196 = v727;
        v756 = v12;
        do
        {
          if (*v16)
          {
            v197 = v20 ? *v193 : 0xFFFF;
            v198 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v199 = v197 - ((v197 * v198 + ((v197 * v198) >> 16) + 1) >> 16);
            v200 = v199;
            if (v199)
            {
              v201 = HIWORD(*v23);
              v202 = WORD2(*v23) * v198;
              v203 = ((v201 - ((v198 * v201 + ((v198 * v201) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v202 + HIWORD(v202) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v198 + ((WORD1(*v23) * v198) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v198 + ((*v23 * v198) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAhuePDA_11883(*v14, *v7, v203, v199);
                  v191 = v706;
                  v8 = v732;
                  v20 = v741;
                  v12 = v756;
                  v203 = result;
                }

                *v14 = v203;
                *v7 = v200;
              }

              else
              {
                result = PDAhuePDA_11883(*v14, 0xFFFFu, v203, v199);
                v191 = v706;
                v8 = v732;
                v20 = v741;
                v12 = v756;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v204 = &v23[v776];
          if (v204 >= v12)
          {
            v205 = v192;
          }

          else
          {
            v205 = 0;
          }

          v193 += v191 + v205;
          v23 = &v204[v205];
          v7 = (v7 + v194);
          v14 = (v14 + v195);
          --v196;
        }

        while (v196);
        if (v723)
        {
          v206 = &v730[v728];
          v207 = v665;
          if (v206 < v723)
          {
            v207 = 0;
          }

          v193 = &v729[v726 + v207];
          v208 = v685;
          if (v206 < v723)
          {
            v208 = 0;
          }

          v23 = (v206 + 8 * v208);
          v12 += 8 * v208 + 8 * v728;
          v729 += v726 + v207;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v193 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 25:
      v173 = v20;
      v174 = -v32;
      v175 = v729;
      v664 = -(v726 * v22);
      v684 = -(v728 * v22);
      v176 = 2 * v8;
      v177 = 8 * v27;
      v705 = v20;
      do
      {
        v178 = v727;
        v755 = v12;
        do
        {
          if (*v16)
          {
            v179 = v20 ? *v175 : 0xFFFF;
            v180 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v181 = v179 - ((v179 * v180 + ((v179 * v180) >> 16) + 1) >> 16);
            v182 = v181;
            if (v181)
            {
              v183 = HIWORD(*v23);
              v184 = WORD2(*v23) * v180;
              v185 = ((v183 - ((v180 * v183 + ((v180 * v183) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v184 + HIWORD(v184) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v180 + ((WORD1(*v23) * v180) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v180 + ((*v23 * v180) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAsaturationPDA_11884(*v14, *v7, v185, v181);
                  v173 = v705;
                  v8 = v732;
                  v20 = v741;
                  v12 = v755;
                  v185 = result;
                }

                *v14 = v185;
                *v7 = v182;
              }

              else
              {
                result = PDAsaturationPDA_11884(*v14, 0xFFFFu, v185, v181);
                v173 = v705;
                v8 = v732;
                v20 = v741;
                v12 = v755;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v186 = &v23[v776];
          if (v186 >= v12)
          {
            v187 = v174;
          }

          else
          {
            v187 = 0;
          }

          v175 += v173 + v187;
          v23 = &v186[v187];
          v7 = (v7 + v176);
          v14 = (v14 + v177);
          --v178;
        }

        while (v178);
        if (v723)
        {
          v188 = &v730[v728];
          v189 = v664;
          if (v188 < v723)
          {
            v189 = 0;
          }

          v175 = &v729[v726 + v189];
          v190 = v684;
          if (v188 < v723)
          {
            v190 = 0;
          }

          v23 = (v188 + 8 * v190);
          v12 += 8 * v190 + 8 * v728;
          v729 += v726 + v189;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v175 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 26:
      v516 = v20;
      v517 = -v32;
      v518 = v729;
      v678 = -(v726 * v22);
      v700 = -(v728 * v22);
      v519 = 2 * v8;
      v520 = 8 * v27;
      v718 = v20;
      do
      {
        v521 = v727;
        v773 = v12;
        do
        {
          if (*v16)
          {
            v522 = v20 ? *v518 : 0xFFFF;
            v523 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v524 = v522 - ((v522 * v523 + ((v522 * v523) >> 16) + 1) >> 16);
            if (v524)
            {
              v525 = HIWORD(*v23);
              v526 = WORD2(*v23) * v523;
              result = ((v525 - ((v523 * v525 + ((v523 * v525) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v526 + HIWORD(v526) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v523 + ((WORD1(*v23) * v523) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v523 + ((*v23 * v523) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAluminosityPDA_11885(result, (v522 - ((v522 * v523 + ((v522 * v523) >> 16) + 1) >> 16)), *v14, *v7);
                  v516 = v718;
                  v8 = v732;
                  v20 = v741;
                  v12 = v773;
                }

                *v14 = result;
                *v7 = v524;
              }

              else
              {
                result = PDAluminosityPDA_11885(result, (v522 - ((v522 * v523 + ((v522 * v523) >> 16) + 1) >> 16)), *v14, 0xFFFFu);
                v516 = v718;
                v8 = v732;
                v20 = v741;
                v12 = v773;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v527 = &v23[v776];
          if (v527 >= v12)
          {
            v528 = v517;
          }

          else
          {
            v528 = 0;
          }

          v518 += v516 + v528;
          v23 = &v527[v528];
          v7 = (v7 + v519);
          v14 = (v14 + v520);
          --v521;
        }

        while (v521);
        if (v723)
        {
          v529 = &v730[v728];
          v530 = v678;
          if (v529 < v723)
          {
            v530 = 0;
          }

          v518 = &v729[v726 + v530];
          v531 = v700;
          if (v529 < v723)
          {
            v531 = 0;
          }

          v23 = (v529 + 8 * v531);
          v12 += 8 * v531 + 8 * v728;
          v729 += v726 + v530;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v518 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 27:
      v45 = v20;
      v46 = -v32;
      v47 = v729;
      v658 = -(v726 * v22);
      v679 = -(v728 * v22);
      v48 = 2 * v8;
      v49 = 8 * v27;
      v701 = v20;
      do
      {
        v50 = v727;
        v748 = v12;
        do
        {
          if (*v16)
          {
            v51 = v20 ? *v47 : 0xFFFF;
            v52 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v53 = v51 - ((v51 * v52 + ((v51 * v52) >> 16) + 1) >> 16);
            v54 = v53;
            if (v53)
            {
              v55 = HIWORD(*v23);
              v56 = WORD2(*v23) * v52;
              v57 = ((v55 - ((v52 * v55 + ((v52 * v55) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v56 + HIWORD(v56) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v52 + ((WORD1(*v23) * v52) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v52 + ((*v23 * v52) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAluminosityPDA_11885(*v14, *v7, v57, v53);
                  v45 = v701;
                  v8 = v732;
                  v20 = v741;
                  v12 = v748;
                  v57 = result;
                }

                *v14 = v57;
                *v7 = v54;
              }

              else
              {
                result = PDAluminosityPDA_11885(*v14, 0xFFFFu, v57, v53);
                v45 = v701;
                v8 = v732;
                v20 = v741;
                v12 = v748;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v58 = &v23[v776];
          if (v58 >= v12)
          {
            v59 = v46;
          }

          else
          {
            v59 = 0;
          }

          v47 += v45 + v59;
          v23 = &v58[v59];
          v7 = (v7 + v48);
          v14 = (v14 + v49);
          --v50;
        }

        while (v50);
        if (v723)
        {
          v60 = &v730[v728];
          v61 = v658;
          if (v60 < v723)
          {
            v61 = 0;
          }

          v47 = &v729[v726 + v61];
          v62 = v679;
          if (v60 < v723)
          {
            v62 = 0;
          }

          v23 = (v60 + 8 * v62);
          v12 += 8 * v62 + 8 * v728;
          v729 += v726 + v61;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v47 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    default:
      return result;
  }

  do
  {
    v575 = v727;
    v576 = v12;
    do
    {
      v577 = *v16;
      if (!*v16)
      {
        goto LABEL_713;
      }

      if (v577 == 255)
      {
        v578 = *v574;
        if (!*v574)
        {
          goto LABEL_713;
        }

        if (v578 == 0xFFFF)
        {
          *v14 = *v23;
          goto LABEL_713;
        }

        v589 = *v23;
        v588 = *v14;
        v590 = v578 ^ 0xFFFF;
      }

      else
      {
        v579 = *v574;
        v580 = (v577 | (v577 << 8)) ^ 0xFFFF;
        v581 = v580 * v579 + ((v580 * v579) >> 16) + 1;
        if (v579 == HIWORD(v581))
        {
          goto LABEL_713;
        }

        v582 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v23), xmmword_18439CB80));
        v583.i32[1] = v582.i32[1];
        v583.i32[0] = v582.u16[0];
        v584 = vmul_s32(v583, vdup_n_s32(v580));
        v585 = vand_s8(vsub_s32(v582, vshr_n_u32(vadd_s32(vsra_n_u32(v584, v584, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v586.i64[0] = v585.u32[0];
        v586.i64[1] = v585.u32[1];
        v587 = vshlq_u64(v586, xmmword_18439CB70);
        v588 = *v14;
        v589 = vorrq_s8(v587, vdupq_laneq_s64(v587, 1)).u64[0] | ((WORD1(*v23) - ((WORD1(*v23) * v580 + ((WORD1(*v23) * v580) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v580 + ((*v23 * v580) >> 16) + 1) >> 16));
        v590 = (~v579 + HIWORD(v581));
      }

      result = cmyk64_DplusDM(v14, v589, v588, v590);
      v12 = v576;
LABEL_713:
      v16 += v776;
      v591 = &v23[v776];
      if (v591 >= v12)
      {
        v592 = v572;
      }

      else
      {
        v592 = 0;
      }

      v574 += v571 + v592;
      v23 = &v591[v592];
      v14 = (v14 + v573);
      --v575;
    }

    while (v575);
    if (v723)
    {
      v593 = &v730[v728];
      v594 = v722;
      if (v593 < v723)
      {
        v594 = 0;
      }

      v574 = &v729[v726 + v594];
      v595 = v740;
      if (v593 < v723)
      {
        v595 = 0;
      }

      v23 = (v593 + 8 * v595);
      v12 += 8 * v595 + 8 * v728;
      v729 += v726 + v594;
      v730 = v23;
    }

    else
    {
      v23 += v728;
      v574 += v726;
    }

    v16 += v725;
    v14 += v724;
    --v731;
  }

  while (v731);
  return result;
}

_DWORD *cmyk64_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, uint64_t a4, float32x2_t *a5, float a6, double a7, double a8, double a9)
{
  v11 = PIXELCONSTANT_11889(*(*a1 + 64), a4, a5, a6, a7, a8, a9);
  v13 = v12;
  if (a2 && a3 > 0xB || (a2 = malloc_type_malloc(0x3CuLL, 0x1080040E00A32E4uLL)) != 0)
  {
    *a2 = xmmword_18439CB50;
    a2[6] = 0;
    *(a2 + 2) = 1;
    *(a2 + 6) = v11;
    *(a2 + 4) = a2 + 12;
    if (v13 > 0xFEu)
    {
      *(a2 + 5) = 0;
    }

    else
    {
      a2[14] = v13 | (v13 << 16);
      *(a2 + 5) = a2 + 14;
    }
  }

  return a2;
}

unint64_t PIXELCONSTANT_11889(float *a1, int a2, float32x2_t *a3, float a4, double a5, double a6, double a7)
{
  *&a7 = *a1;
  *&a6 = a1[1];
  v7 = *&a6;
  if (*&a6 >= a4)
  {
    v7 = a4;
    if (*&a7 > a4)
    {
      v7 = *a1;
    }
  }

  v8 = a1[3];
  v9 = v7 * a1[2];
  if (a3)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1)
  {
    v32 = a1[1];
    if (a3->f32[0] <= *&a6)
    {
      v32 = a3->f32[0];
      if (a3->f32[0] < *&a7)
      {
        v32 = *a1;
      }
    }

    LOWORD(v18) = 0;
    v19 = 0;
    LOWORD(v20) = 0;
    v31 = (v8 + ((*&a6 - v32) * v9));
  }

  else
  {
    if (v10 == 4)
    {
      v22 = a3->f32[1];
      v23 = a3[1].f32[0];
      v24 = a3[1].f32[1];
      if (a3->f32[0] < *&a7)
      {
        v25 = *a1;
      }

      else
      {
        v25 = a3->f32[0];
      }

      if (a3->f32[0] <= *&a6)
      {
        v26 = v25;
      }

      else
      {
        v26 = a1[1];
      }

      if (v22 < *&a7)
      {
        v27 = *a1;
      }

      else
      {
        v27 = a3->f32[1];
      }

      if (v22 <= *&a6)
      {
        v28 = v27;
      }

      else
      {
        v28 = a1[1];
      }

      if (v23 < *&a7)
      {
        v29 = *a1;
      }

      else
      {
        v29 = a3[1].f32[0];
      }

      if (v23 <= *&a6)
      {
        v30 = v29;
      }

      else
      {
        v30 = a1[1];
      }

      if (v24 >= *&a7)
      {
        LODWORD(a7) = a3[1].i32[1];
      }

      if (v24 <= *&a6)
      {
        *&a6 = *&a7;
      }

      v18 = (v8 + (v26 * v9));
      v19 = (v8 + (v28 * v9));
      v20 = (v8 + (v30 * v9));
      v21 = v8 + (*&a6 * v9);
    }

    else
    {
      if (v10 != 3)
      {
        LOWORD(v18) = 0;
        v19 = 0;
        LOWORD(v20) = 0;
        v31 = (v8 + v9);
        return (v20 << 32) | (v31 << 48) | (v19 << 16) | v18;
      }

      v11 = a3[1].f32[0];
      v12 = vdup_lane_s32(*&a6, 0);
      v13 = vdup_lane_s32(*&a7, 0);
      v14 = vbsl_s8(vcgt_f32(*a3, v12), v13, vbsl_s8(vcgt_f32(v13, *a3), v12, vsub_f32(v12, *a3)));
      v15 = *&a6 - v11;
      if (v11 < *&a7)
      {
        v15 = a1[1];
      }

      if (v11 <= *&a6)
      {
        v16 = v15;
      }

      else
      {
        v16 = *a1;
      }

      if (*v14.i32 >= *&v14.i32[1])
      {
        v17 = *&v14.i32[1];
      }

      else
      {
        v17 = *v14.i32;
      }

      if (v16 < v17)
      {
        v17 = v16;
      }

      v18 = (v8 + ((*v14.i32 - v17) * v9));
      v19 = (v8 + ((*&v14.i32[1] - v17) * v9));
      v20 = (v8 + ((v16 - v17) * v9));
      v21 = v8 + (v17 * v9);
    }

    v31 = v21;
  }

  return (v20 << 32) | (v31 << 48) | (v19 << 16) | v18;
}

uint64_t CMYK64_shade(uint64_t a1)
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

  if ((*v4 & 0xF000000) == 0x4000000)
  {
    if (*(v4 + 16))
    {
      v12 = cmyk64_shade_radial_CMYK;
    }

    else if (*(v4 + 24))
    {
      v12 = cmyk64_shade_conic_CMYK;
    }

    else if (*(&v17 + 1) < 2)
    {
      v12 = cmyk64_shade_axial_CMYK;
    }

    else
    {
      v12 = cmyk64_shade_custom_CMYK;
    }

    *&v15[0] = v12;
    if (v38)
    {
      *(&v37 + 1) = v44;
      _blt_shade_samples_16(v44, 3, 4, v38, *(&v38 + 1), 1uLL);
    }

    v13 = *(&v17 + 1) * v17;
    if ((*(&v17 + 1) * v17) <= 384)
    {
      v14 = v42;
      v36[1] = v42;
LABEL_27:
      _blt_shade_samples_16(v14, 3, 4, v16, *(&v16 + 1), v13);
      if (*(v4 + 1))
      {
        *&v37 = &_blt_shade_samples_noise;
      }

      goto LABEL_29;
    }

    v14 = malloc_type_malloc(10 * v13 + 32, 0x8C254358uLL);
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
  CMYK64_image_mark(v5, v15, v10);
  if (v36[1] && (v36[1] < v42 || &v43 < v36[1]))
  {
    free(v36[1]);
  }

  return 1;
}

void CMYK64_image_mark(uint64_t a1, uint64_t a2, int a3)
{
  v691 = a3;
  v700 = *MEMORY[0x1E69E9840];
  v697 = *(a1 + 4);
  v3 = v697;
  v4 = (v697 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v4 <= 0x1FFFFFF)
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *(a2 + 184);
    v698 = *(a1 + 136);
    v699 = v5;
    v8 = *(a2 + 104);
    v694 = *(a2 + 96);
    v696 = v8;
    v10 = *(a1 + 24);
    v9 = *(a1 + 28);
    v12 = *(a1 + 16);
    v11 = *(a1 + 20);
    v13 = *(a1 + 12);
    v695 = *(a1 + 8);
    v682 = a1;
    v690 = a2;
    v14 = *(a2 + 16);
    v15 = (v14 + 18) * v4;
    if (v15 > 65439)
    {
      v18 = malloc_type_calloc(1uLL, v15 + 96, 0xF5B4F9ABuLL);
      v17 = v18;
      v20 = v18;
      v21 = v690;
      if (!v18)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1);
      v17 = &v677 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v17, v16);
      v20 = 0;
      v21 = v690;
    }

    v680 = v20;
    v681 = v3;
    v22 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
    v23 = v22 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21[20] = v23;
    if (v14)
    {
      v24 = 16 * v4;
    }

    else
    {
      v24 = 0;
    }

    v25 = v23 + v24;
    v26 = v6 + (v10 - 1) * v9;
    v27 = v9 >> 3;
    v21[18] = v22;
    v21[19] = v25;
    if (v699)
    {
      v28 = *(v682 + 32) >> 1;
      v29 = (v699 + 2 * v28 * v12 + 2 * v13);
      v30 = v681;
      v688 = v28 - v681;
      v31 = v682;
      v32 = 1;
    }

    else
    {
      v29 = 0;
      v688 = 0;
      v32 = 0;
      v31 = v682;
      v30 = v681;
    }

    v689 = ((v7 * 65535.0) + 0.5);
    v33 = v26 + 8 * v11;
    v34 = (v6 + 8 * v27 * v12 + 8 * v13);
    v687 = v27 - v30;
    v35 = *(v31 + 104);
    v36 = *(v31 + 108);
    v37 = *(v31 + 2);
    if (v37 == 6 || v37 == 1)
    {
      v38 = v690;
      v39 = v694;
      v40 = v696;
      if (v698)
      {
        v677 = v27;
        v41 = 0;
        LODWORD(v27) = 0;
        v42 = *(v31 + 124);
        v43 = v698 + v42 * v36 + v35;
        v44 = v681;
        v686 = v42 - v681;
        v45 = v697;
        goto LABEL_31;
      }

      goto LABEL_634;
    }

    v677 = v27;
    v40 = v696;
    if (v698)
    {
      v678 = v33;
      v679 = v32;
      shape_enum_clip_alloc(v18, v19, v698, 1, 1, 1, v35, v36, v697, v695);
      if (v46)
      {
        v41 = v46;
        v27 = 0;
        v47 = ((v14 * v4 + 15) & 0xFFFFFFF0);
        if (!v14)
        {
          v47 = 16 * v4;
        }

        v48 = v681;
        v686 = -v681;
        v43 = (v25 + v47 + 16);
        v38 = v690;
        v45 = v697;
        v39 = v694;
        goto LABEL_21;
      }

LABEL_634:
      if (v680)
      {
        free(v680);
      }

      return;
    }

    v43 = 0;
    v41 = 0;
    v686 = 0;
    LODWORD(v27) = 0;
    v38 = v690;
    v45 = v697;
    v44 = v681;
    v39 = v694;
LABEL_31:
    v55 = v689 ^ 0xFFFF;
    v684 = (v45 - 1);
    v683 = -v44;
    v678 = v33;
    v685 = (v33 - 8);
    v679 = v32;
    v698 = (2 * v32);
    v56 = v41;
LABEL_32:
    v692 = v27;
    v693 = v56;
    v57 = *v38;
    v696 = v40;
    v57(v38, v39, v40, v45);
    v59 = *(v38 + 160);
    v60 = *(v38 + 144);
    v61 = *(v38 + 8);
    if (v61 == *(v38 + 12))
    {
      if (v689 == 0xFFFF)
      {
        v64 = v691;
      }

      else
      {
        v62 = v45;
        v63 = *(v38 + 144);
        v64 = v691;
        do
        {
          if (*v63)
          {
            v65 = *(v59 + 8);
            v66 = WORD2(*v59) * v55;
            *v59 = ((HIWORD(*v59) - ((HIWORD(*v59) * v55 + ((HIWORD(*v59) * v55) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v59) - ((v66 + HIWORD(v66) + 1) >> 16)) << 32) | ((WORD1(*v59) - ((WORD1(*v59) * v55 + ((WORD1(*v59) * v55) >> 16) + 1) >> 16)) << 16) | (*v59 - ((*v59 * v55 + ((*v59 * v55) >> 16) + 1) >> 16));
            *(v59 + 8) = v65 - ((v65 * v55 + ((v65 * v55) >> 16) + 1) >> 16);
          }

          ++v63;
          v59 += 16;
          --v62;
        }

        while (v62);
        v59 += 16 * v683;
        v60 += v684 + v683 + 1;
      }
    }

    else
    {
      v67 = *(v38 + 152);
      v68 = HIWORD(v61) & 0x3F;
      if (v68 == 16)
      {
        v64 = v691;
        v91 = 0;
        if (v689 == 0xFFFF)
        {
          v104 = 0;
          do
          {
            if (v60[v91])
            {
              *(v59 + v104) = *(v67 + v104);
            }

            v104 += 16;
            ++v91;
          }

          while (v45 != v91);
        }

        else
        {
          v92 = (v67 + 8);
          v93 = (v59 + 8);
          do
          {
            if (v60[v91])
            {
              v94 = *v92;
              v95 = *(v92 - 1);
              *(v93 - 1) = ((HIWORD(v95) - ((HIWORD(v95) * v55 + ((HIWORD(v95) * v55) >> 16) + 1) >> 16)) << 48) | ((WORD2(v95) - ((WORD2(v95) * v55 + ((WORD2(v95) * v55) >> 16) + 1) >> 16)) << 32) | ((WORD1(v95) - ((WORD1(v95) * v55 + ((WORD1(v95) * v55) >> 16) + 1) >> 16)) << 16) | (v95 - ((v95 * v55 + ((v95 * v55) >> 16) + 1) >> 16));
              *v93 = v94 - ((v94 * v55 + ((v94 * v55) >> 16) + 1) >> 16);
            }

            v92 += 8;
            ++v91;
            v93 += 8;
          }

          while (v45 != v91);
        }
      }

      else if (v68 == 32)
      {
        v64 = v691;
        v69 = 0;
        v70 = 0;
        v71 = v67 + 8;
        if (v689 == 0xFFFF)
        {
          do
          {
            if (v60[v69])
            {
              v58.i32[0] = *(v71 + 8);
              if (*v58.i32 <= 0.0)
              {
                LOWORD(v82) = 0;
                *(v59 + v70) = 0;
              }

              else
              {
                LODWORD(v82) = ((*v58.i32 * 65535.0) + 0.5);
                v83 = *(v71 - 8);
                if (*v58.i32 <= 1.0)
                {
                  v82 = v82;
                }

                else
                {
                  v82 = 0xFFFFLL;
                }

                if (*v58.i32 > 1.0)
                {
                  *v58.i32 = 1.0;
                }

                LOWORD(v84) = v82;
                if (v83 <= *v58.i32)
                {
                  if (v83 >= 0.0)
                  {
                    v84 = ((v83 * 65535.0) + 0.5);
                  }

                  else
                  {
                    LOWORD(v84) = 0;
                  }
                }

                v85 = *(v71 - 4);
                v86 = v82;
                if (v85 <= *v58.i32)
                {
                  if (v85 >= 0.0)
                  {
                    v86 = ((v85 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v86 = 0;
                  }
                }

                v87 = *v71;
                LOWORD(v88) = v82;
                if (*v71 <= *v58.i32)
                {
                  if (v87 >= 0.0)
                  {
                    v88 = ((v87 * 65535.0) + 0.5);
                  }

                  else
                  {
                    LOWORD(v88) = 0;
                  }
                }

                v89 = *(v71 + 4);
                v90 = v82;
                if (v89 <= *v58.i32)
                {
                  if (v89 >= 0.0)
                  {
                    v90 = ((v89 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v90 = 0;
                  }
                }

                *(v59 + v70) = (v88 << 32) | (v90 << 48) | (v86 << 16) | v84;
              }

              *(v59 + v70 + 8) = v82;
            }

            v70 += 16;
            v71 += 20;
            ++v69;
          }

          while (v45 != v69);
        }

        else
        {
          do
          {
            if (v60[v69])
            {
              v58.i32[0] = *(v71 + 8);
              if (*v58.i32 <= 0.0)
              {
                LOWORD(v76) = 0;
                *(v59 + v70) = 0;
              }

              else
              {
                v72 = *(v71 - 8);
                v73 = ((*v58.i32 * 65535.0) + 0.5);
                if (*v58.i32 > 1.0)
                {
                  v73 = 0xFFFF;
                }

                v74 = v73;
                if (*v58.i32 > 1.0)
                {
                  *v58.i32 = 1.0;
                }

                v75 = v73;
                if (v72 <= *v58.i32)
                {
                  if (v72 >= 0.0)
                  {
                    v75 = ((v72 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v75 = 0;
                  }
                }

                v77 = *(v71 - 4);
                v78 = v73;
                if (v77 <= *v58.i32)
                {
                  if (v77 >= 0.0)
                  {
                    v78 = ((v77 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v78 = 0;
                  }
                }

                v79 = *v71;
                v80 = v73;
                if (*v71 <= *v58.i32)
                {
                  if (v79 >= 0.0)
                  {
                    v80 = ((v79 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v80 = 0;
                  }
                }

                v81 = *(v71 + 4);
                if (v81 <= *v58.i32)
                {
                  if (v81 >= 0.0)
                  {
                    v74 = ((v81 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v74 = 0;
                  }
                }

                v76 = v73 - ((v73 * v55 + ((v73 * v55) >> 16) + 1) >> 16);
                *(v59 + v70) = ((v80 - ((v80 * v55 + ((v80 * v55) >> 16) + 1) >> 16)) << 32) | ((v74 - ((v74 * v55 + ((v74 * v55) >> 16) + 1) >> 16)) << 48) | ((v78 - ((v78 * v55 + ((v78 * v55) >> 16) + 1) >> 16)) << 16) | (v75 - ((v75 * v55 + ((v75 * v55) >> 16) + 1) >> 16));
              }

              *(v59 + v70 + 8) = v76;
            }

            v70 += 16;
            v71 += 20;
            ++v69;
          }

          while (v45 != v69);
        }
      }

      else
      {
        v64 = v691;
        v96 = 0;
        v97 = (v59 + 8);
        if (v689 == 0xFFFF)
        {
          do
          {
            if (v60[v96])
            {
              v103 = *(v67 + 8 * v96);
              *(v97 - 1) = (0x10100000000 * BYTE1(v103)) | (0x101000000000000 * v103) | v103 & 0xFF0000 | (BYTE2(v103) << 24) | BYTE3(v103) | (BYTE3(v103) << 8);
              *v97 = BYTE4(v103) | (WORD2(v103) << 8);
            }

            ++v96;
            v97 += 8;
          }

          while (v45 != v96);
        }

        else
        {
          do
          {
            if (v60[v96])
            {
              v98 = v67 + 8 * v96;
              v99 = *(v98 + 4);
              LODWORD(v98) = *v98;
              v100 = BYTE3(v98) | (BYTE3(v98) << 8);
              v101 = BYTE2(v98) | (BYTE2(v98) << 8);
              v102 = BYTE1(v98) | (BYTE1(v98) << 8);
              LODWORD(v98) = v98 | (v98 << 8);
              *(v97 - 1) = ((v98 - ((v98 * v55 + ((v98 * v55) >> 16) + 1) >> 16)) << 48) | ((v102 - ((v102 * v55 + ((v102 * v55) >> 16) + 1) >> 16)) << 32) | ((v101 - ((v101 * v55 + ((v101 * v55) >> 16) + 1) >> 16)) << 16) | (v100 - ((v100 * v55 + ((v100 * v55) >> 16) + 1) >> 16));
              *v97 = (v99 | (v99 << 8)) - (((v99 | (v99 << 8)) * v55 + (((v99 | (v99 << 8)) * v55) >> 16) + 1) >> 16);
            }

            ++v96;
            v97 += 8;
          }

          while (v45 != v96);
        }
      }
    }

    v694 = v39;
    switch(v64)
    {
      case 0:
        v105 = v43 != 0;
        if (v699)
        {
          v106 = v39;
          v107 = v45;
          v108 = v43;
          do
          {
            v109 = *v60;
            if (*v60)
            {
              if (v43)
              {
                v109 = ((*v108 * v109 + ((*v108 * v109) >> 8) + 1) >> 8);
              }

              if (v109)
              {
                if (v109 == 255)
                {
                  *v34 = 0;
                  *v29 = 0;
                }

                else
                {
                  CMYK64_DAM(v34, v29, ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), bswap32(*v29) >> 16, (v109 | (v109 << 8)) ^ 0xFFFF);
                }
              }
            }

            ++v60;
            v108 += v105;
            ++v34;
            ++v29;
            --v107;
          }

          while (v107);
          v43 = &v108[v686];
          v34 += v687;
          v29 += v688;
          v38 = v690;
          v45 = v697;
          v39 = v106;
          goto LABEL_521;
        }

        v573 = v45;
        v574 = v43;
        v528 = v696;
        do
        {
          v575 = *v60;
          if (*v60)
          {
            if (v43)
            {
              v575 = ((*v574 * v575 + ((*v574 * v575) >> 8) + 1) >> 8);
            }

            if (v575)
            {
              if (v575 == 255)
              {
                *v34 = 0;
              }

              else
              {
                v576 = bswap32(v34->u16[1] | (v34->u16[0] << 16));
                v577.i32[0] = v576;
                v577.i32[1] = vshr_n_u32(vdup_n_s32(v576), 0x10uLL).i32[1];
                v577.i64[1] = __PAIR64__(bswap32(v34->u16[3]) >> 16, bswap32(v34->u16[2]) >> 16);
                v578 = vmulq_s32(v577, vdupq_n_s32(v575 | (v575 << 8)));
                v579.i64[0] = 0x100000001;
                v579.i64[1] = 0x100000001;
                v577.i32[0] = v576;
                *v34 = vrev16_s8(vmovn_s32(vsubq_s32(v577, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v578, v578, 0x10uLL), v579), 0x10uLL))));
              }
            }
          }

          ++v60;
          v574 += v105;
          ++v34;
          --v573;
        }

        while (v573);
        v43 = &v574[v686];
        v34 += v687;
        v29 += v688;
        v38 = v690;
        goto LABEL_599;
      case 1:
        v298 = *v60;
        if (v699)
        {
          v299 = 0;
          if (v43)
          {
            v300 = (v59 + 8);
            v301 = v60 + 1;
            v302 = v29;
            do
            {
              v303 = v34;
              v304 = v302;
              if (v298)
              {
                v305 = v43[v299] * v298 + ((v43[v299] * v298) >> 8) + 1;
                if (BYTE1(v305))
                {
                  if (BYTE1(v305) == 255)
                  {
                    v306 = *(v300 - 1);
                    v307 = HIDWORD(v306);
                    v308 = HIWORD(v306);
                    LODWORD(v306) = bswap32(v306);
                    v34->i16[0] = WORD1(v306);
                    v34->i16[1] = v306;
                    v34->i16[2] = bswap32(v307) >> 16;
                    v34->i16[3] = __rev16(v308);
                    v29[v299] = bswap32(*v300) >> 16;
                  }

                  else
                  {
                    CMYK64_DAMplusDAM(v34, v304, *(v300 - 1), *v300, (257 * (v305 >> 8)), ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), bswap32(v29[v299]) >> 16, ~(257 * (v305 >> 8)));
                  }
                }
              }

              v298 = v301[v299];
              ++v34;
              v302 = v304 + 1;
              ++v299;
              v300 += 8;
            }

            while (v697 != v299);
            v43 += v299 + v686;
          }

          else
          {
            v633 = v60 + 1;
            v634 = 8;
            v635 = v45;
            do
            {
              if (v298)
              {
                if (v298 == 255)
                {
                  v636 = *(v59 + 8 * v299);
                  v637 = HIDWORD(v636);
                  v638 = HIWORD(v636);
                  LODWORD(v636) = bswap32(v636);
                  v34->i16[0] = WORD1(v636);
                  v34->i16[1] = v636;
                  v34->i16[2] = bswap32(v637) >> 16;
                  v34->i16[3] = __rev16(v638);
                  *(v29 + v299) = bswap32(*(v59 + v634)) >> 16;
                }

                else
                {
                  CMYK64_DAMplusDAM(v34, (v29 + v299), *(v59 + 8 * v299), *(v59 + v634), v298 | (v298 << 8), ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), bswap32(*(v29 + v299)) >> 16, (v298 | (v298 << 8)) ^ 0xFFFF);
                }
              }

              v639 = *v633++;
              v298 = v639;
              ++v34;
              v634 += 16;
              v299 += 2;
              --v635;
            }

            while (v635);
            v43 = 0;
            v304 = (v29 + v299 - 2);
            v303 = v34 - 1;
          }

          v34 = &v303[v687 + 1];
          v29 = &v304[v688 + 1];
          goto LABEL_520;
        }

        if (v43)
        {
          v580 = v60 + 1;
          v581 = v45;
          v529 = v695;
          do
          {
            if (v298)
            {
              v582 = *v43 * v298 + ((*v43 * v298) >> 8) + 1;
              v532 = *(v682 + 40);
              v583 = v685;
              if (v685 >= v34)
              {
                v583 = v34;
              }

              if (v583 >= v532)
              {
                v532 = v583;
              }

              if (BYTE1(v582))
              {
                if (BYTE1(v582) == 255)
                {
                  v584 = HIDWORD(*v59);
                  v585 = HIWORD(*v59);
                  v586 = bswap32(*v59);
                  v532->i16[0] = HIWORD(v586);
                  v532->i16[1] = v586;
                  v532->i16[2] = bswap32(v584) >> 16;
                  v532->i16[3] = __rev16(v585);
                }

                else
                {
                  v587 = bswap32(v532->u16[1] | (v532->u16[0] << 16));
                  v588.i32[0] = 257 * (v582 >> 8);
                  v588.i32[1] = ~v588.i32[0];
                  *v589.i8 = vand_s8(v588, 0xFFFF0000FFFFLL);
                  v590.i64[0] = v589.i64[0];
                  v590.i64[1] = v589.i64[0];
                  v591.i32[0] = v587;
                  v591.i32[1] = WORD1(*v59);
                  v591.i32[2] = bswap32(v532->u16[2]) >> 16;
                  v591.i32[3] = HIWORD(*v59);
                  v589.i64[1] = v589.i64[0];
                  v592 = vmulq_s32(v591, vrev64q_s32(v589));
                  v591.i32[0] = *v59;
                  v591.i32[1] = HIWORD(v587);
                  v591.i32[2] = WORD2(*v59);
                  v591.i32[3] = bswap32(v532->u16[3]) >> 16;
                  v593 = vmlaq_s32(v592, v591, v590);
                  *v532 = vrev16_s8(vsubhn_s32(vshrq_n_u32(v593, 0x10uLL), vmvnq_s8(v593)));
                }
              }
            }

            else
            {
              v532 = v34;
            }

            v594 = *v580++;
            v298 = v594;
            v59 += 16;
            ++v43;
            v34 = v532 + 1;
            --v581;
          }

          while (v581);
          v43 += v686;
          goto LABEL_631;
        }

        v665 = *(v682 + 40);
        v666 = v60 + 1;
        v667 = v45;
        v529 = v695;
        do
        {
          v532 = v685;
          if (v685 >= v34)
          {
            v532 = v34;
          }

          if (v532 < v665)
          {
            v532 = v665;
          }

          if (v298)
          {
            if (v298 == 255)
            {
              v668 = HIDWORD(*v59);
              v669 = HIWORD(*v59);
              v670 = bswap32(*v59);
              v532->i16[0] = HIWORD(v670);
              v532->i16[1] = v670;
              v532->i16[2] = bswap32(v668) >> 16;
              v532->i16[3] = __rev16(v669);
            }

            else
            {
              v671 = bswap32(v532->u16[1] | (v532->u16[0] << 16));
              v58.i8[0] = v298;
              v58.i8[1] = v298;
              v58.i32[1] = ~v58.i32[0];
              *v672.i8 = vand_s8(*v58.i8, 0xFFFF0000FFFFLL);
              v673.i64[0] = v672.i64[0];
              v673.i64[1] = v672.i64[0];
              v674.i32[0] = v671;
              v674.i32[1] = WORD1(*v59);
              v674.i32[2] = bswap32(v532->u16[2]) >> 16;
              v674.i32[3] = HIWORD(*v59);
              v672.i64[1] = v672.i64[0];
              v675 = vmulq_s32(v674, vrev64q_s32(v672));
              v674.i32[0] = *v59;
              v674.i32[1] = HIWORD(v671);
              v674.i32[2] = WORD2(*v59);
              v674.i32[3] = bswap32(v532->u16[3]) >> 16;
              v58 = vmlaq_s32(v675, v674, v673);
              *v532 = vrev16_s8(vsubhn_s32(vshrq_n_u32(v58, 0x10uLL), vmvnq_s8(v58)));
            }
          }

          v676 = *v666++;
          v298 = v676;
          v59 += 16;
          v34 = v532 + 1;
          --v667;
        }

        while (v667);
        goto LABEL_630;
      case 2:
        v246 = *v60;
        if (v699)
        {
          v247 = 0;
          if (v43)
          {
            v248 = v60 + 1;
            v249 = v29;
            while (1)
            {
              v250 = v34;
              v251 = v249;
              if (!v246)
              {
                goto LABEL_263;
              }

              v252 = v43[v247] * v246 + ((v43[v247] * v246) >> 8) + 1;
              if (!BYTE1(v252))
              {
                goto LABEL_263;
              }

              if (BYTE1(v252) == 255)
              {
                v253 = *(v59 + 8);
                if (*(v59 + 8))
                {
                  if (v253 != 0xFFFF)
                  {
                    v266 = *v59;
                    v265 = bswap32(v29[v247]) >> 16;
                    v267 = ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16);
                    v268 = v253 ^ 0xFFFF;
                    goto LABEL_262;
                  }

                  v254 = HIDWORD(*v59);
                  v255 = HIWORD(*v59);
                  v256 = bswap32(*v59);
                  v34->i16[0] = HIWORD(v256);
                  v34->i16[1] = v256;
                  v34->i16[2] = bswap32(v254) >> 16;
                  v34->i16[3] = __rev16(v255);
                  v29[v247] = -1;
                }
              }

              else
              {
                v257 = *(v59 + 8);
                v258 = (257 * (v252 >> 8)) ^ 0xFFFF;
                if (v257 != (v258 * v257 + ((v258 * v257) >> 16) + 1) >> 16)
                {
                  v259 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v59), xmmword_18439CB80));
                  v260.i32[1] = v259.i32[1];
                  v260.i32[0] = v259.u16[0];
                  v261 = vmul_s32(v260, vdup_n_s32(v258));
                  v262 = vand_s8(vsub_s32(v259, vshr_n_u32(vadd_s32(vsra_n_u32(v261, v261, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
                  v263.i64[0] = v262.u32[0];
                  v263.i64[1] = v262.u32[1];
                  v264 = vshlq_u64(v263, xmmword_18439CB70);
                  v265 = bswap32(v29[v247]) >> 16;
                  v266 = vorrq_s8(v264, vdupq_laneq_s64(v264, 1)).u64[0] | ((WORD1(*v59) - ((WORD1(*v59) * v258 + ((WORD1(*v59) * v258) >> 16) + 1) >> 16)) << 16) | (*v59 - ((*v59 * v258 + ((*v59 * v258) >> 16) + 1) >> 16));
                  v253 = (v257 - ((v258 * v257 + ((v258 * v257) >> 16) + 1) >> 16));
                  v267 = ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16);
                  v268 = ~(v257 - ((v258 * v257 + ((v258 * v257) >> 16) + 1) >> 16));
LABEL_262:
                  CMYK64_DAplusDAM(v34, v251, v266, v253, v267, v265, v268);
                }
              }

LABEL_263:
              v246 = v248[v247];
              v59 += 16;
              ++v34;
              v249 = v251 + 1;
              if (v697 == ++v247)
              {
                v43 += v247 + v686;
                goto LABEL_597;
              }
            }
          }

          v611 = v60 + 1;
          v612 = 8;
          v613 = v45;
          while (1)
          {
            if (v246)
            {
              if (v246 == 255)
              {
                v614 = *(v59 + v612);
                if (*(v59 + v612))
                {
                  if (v614 != 0xFFFF)
                  {
                    v629 = *(v59 + 8 * v247);
                    v627 = bswap32(*(v29 + v247)) >> 16;
                    v628 = (v29 + v247);
                    v630 = ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16);
                    v631 = v614 ^ 0xFFFF;
                    goto LABEL_594;
                  }

                  v615 = *(v59 + 8 * v247);
                  v616 = HIDWORD(v615);
                  v617 = HIWORD(v615);
                  LODWORD(v615) = bswap32(v615);
                  v34->i16[0] = WORD1(v615);
                  v34->i16[1] = v615;
                  v34->i16[2] = bswap32(v616) >> 16;
                  v34->i16[3] = __rev16(v617);
                  *(v29 + v247) = -1;
                }
              }

              else
              {
                v618 = (257 * v246) ^ 0xFFFF;
                v619 = *(v59 + v612) - ((v618 * *(v59 + v612) + ((v618 * *(v59 + v612)) >> 16) + 1) >> 16);
                if (v619)
                {
                  v620 = *(v59 + 8 * v247);
                  v621 = vmovn_s64(vshlq_u64(vdupq_n_s64(v620), xmmword_18439CB80));
                  v622.i32[1] = v621.i32[1];
                  v622.i32[0] = v621.u16[0];
                  v623 = vmul_s32(v622, vdup_n_s32(v618));
                  v624 = vand_s8(vsub_s32(v621, vshr_n_u32(vadd_s32(vsra_n_u32(v623, v623, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
                  v625.i64[0] = v624.u32[0];
                  v625.i64[1] = v624.u32[1];
                  v626 = vshlq_u64(v625, xmmword_18439CB70);
                  v627 = bswap32(*(v29 + v247)) >> 16;
                  v628 = (v29 + v247);
                  v629 = vorrq_s8(v626, vdupq_laneq_s64(v626, 1)).u64[0] | ((WORD1(v620) - ((WORD1(v620) * v618 + ((WORD1(v620) * v618) >> 16) + 1) >> 16)) << 16) | (v620 - ((v620 * v618 + ((v620 * v618) >> 16) + 1) >> 16));
                  v614 = (*(v59 + v612) - ((v618 * *(v59 + v612) + ((v618 * *(v59 + v612)) >> 16) + 1) >> 16));
                  v630 = ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16);
                  v631 = ~v619;
LABEL_594:
                  CMYK64_DAplusDAM(v34, v628, v629, v614, v630, v627, v631);
                }
              }
            }

            v632 = *v611++;
            v246 = v632;
            ++v34;
            v247 += 2;
            v612 += 16;
            if (!--v613)
            {
              v43 = 0;
              v251 = (v29 + v247 - 2);
              v250 = v34 - 1;
LABEL_597:
              v34 = &v250[v687 + 1];
              v29 = &v251[v688 + 1];
              v38 = v690;
              v45 = v697;
              v39 = v694;
LABEL_598:
              v528 = v696;
LABEL_599:
              v529 = v695;
LABEL_522:
              v530 = v529 - 1;
              if (!v530)
              {
                v41 = v693;
                if (v693)
                {
LABEL_633:
                  free(v41);
                }

                goto LABEL_634;
              }

              v695 = v530;
              v56 = 0;
              v27 = (v692 + 1);
              v39 += *(v38 + 128);
              v40 = *(v38 + 136) + v528;
              v41 = v693;
              if (v693)
              {
                v48 = v681;
LABEL_21:
                v698 = (v688 + v48);
                while (1)
                {
                  while (1)
                  {
                    v49 = *(v43 - 4);
                    v50 = v49 - v27;
                    if (v49 <= v27)
                    {
                      break;
                    }

                    v695 -= v50;
                    if (v695 < 1)
                    {
                      goto LABEL_633;
                    }

                    v39 += *(v38 + 128) * v50;
                    v40 += *(v38 + 136) * v50;
                    v34 += v677 * v50;
                    v54 = v698 * v50;
                    if (!v699)
                    {
                      v54 = 0;
                    }

                    v29 += v54;
                    v27 = v49;
                  }

                  if (v27 < *(v43 - 3) + v49)
                  {
                    break;
                  }

                  v51 = v41;
                  v52 = v27;
                  v53 = shape_enum_clip_scan(v41, v43 - 4);
                  v27 = v52;
                  v41 = v51;
                  if (!v53)
                  {
                    goto LABEL_633;
                  }
                }

                v44 = v681;
                v32 = v679;
                v33 = v678;
                goto LABEL_31;
              }

              goto LABEL_32;
            }
          }
        }

        if (v43)
        {
          v531 = 0;
          v532 = v34 - 1;
          v529 = v695;
          while (1)
          {
            if (!v246)
            {
              goto LABEL_537;
            }

            v533 = v43[v531] * v246 + ((v43[v531] * v246) >> 8) + 1;
            if (!BYTE1(v533))
            {
              goto LABEL_537;
            }

            if (BYTE1(v533) == 255)
            {
              v534 = *(v59 + 8);
              if (*(v59 + 8))
              {
                if (v534 != 0xFFFF)
                {
                  v548 = WORD1(*v59);
                  v555.i32[0] = bswap32(v532[1].u16[1] | (v532[1].u16[0] << 16));
                  v555.i32[1] = HIWORD(v555.i32[0]);
                  v555.i64[1] = __PAIR64__(bswap32(v532[1].u16[3]) >> 16, bswap32(v532[1].u16[2]) >> 16);
                  v550 = vshlq_u64(vdupq_n_s64(*v59), xmmword_18439CB80);
                  v556 = vmull_u16(vmovn_s32(v555), vdup_n_s16(~v534));
                  v552 = vsraq_n_u32(v556, v556, 0x10uLL);
                  v553.i64[0] = 0x100000001;
                  v553.i64[1] = 0x100000001;
                  v554.i32[0] = *v59;
                  goto LABEL_536;
                }

                v535 = HIDWORD(*v59);
                v536 = HIWORD(*v59);
                v537 = bswap32(*v59);
                v532[1].i16[0] = HIWORD(v537);
                v532[1].i16[1] = v537;
                v532[1].i16[2] = bswap32(v535) >> 16;
                v532[1].i16[3] = __rev16(v536);
              }
            }

            else
            {
              v538 = v533 >> 8;
              v539 = *(v59 + 8);
              v540 = (257 * v538) ^ 0xFFFF;
              v541 = v540 * v539 + ((v540 * v539) >> 16) + 1;
              if (v539 != HIWORD(v541))
              {
                v542 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v59), xmmword_18439CB80));
                v543.i32[1] = v542.i32[1];
                v543.i32[0] = v542.u16[0];
                v554 = vmul_s32(v543, vdup_n_s32(v540));
                v544 = vand_s8(vsub_s32(v542, vshr_n_u32(vadd_s32(vsra_n_u32(v554, v554, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
                v545.i64[0] = v544.u32[0];
                v545.i64[1] = v544.u32[1];
                v546 = vshlq_u64(v545, xmmword_18439CB70);
                v547 = vorrq_s8(v546, vdupq_laneq_s64(v546, 1)).u64[0] | ((WORD1(*v59) - ((WORD1(*v59) * v540 + ((WORD1(*v59) * v540) >> 16) + 1) >> 16)) << 16) | (*v59 - ((*v59 * v540 + ((*v59 * v540) >> 16) + 1) >> 16));
                v548 = WORD1(v547);
                v549.i32[0] = bswap32(v532[1].u16[1] | (v532[1].u16[0] << 16));
                v549.i32[1] = HIWORD(v549.i32[0]);
                v549.i64[1] = __PAIR64__(bswap32(v532[1].u16[3]) >> 16, bswap32(v532[1].u16[2]) >> 16);
                v550 = vshlq_u64(vdupq_n_s64(v547), xmmword_18439CB80);
                v551 = vmull_u16(vmovn_s32(v549), vdup_n_s16(~v539 + HIWORD(v541)));
                v552 = vsraq_n_u32(v551, v551, 0x10uLL);
                v553.i64[0] = 0x100000001;
                v553.i64[1] = 0x100000001;
                v554.i32[0] = v547;
LABEL_536:
                v554.i32[1] = v548;
                v532[1] = vrev16_s8(vmovn_s32(vsraq_n_u32(vmovn_hight_s64(v554, v550), vaddq_s32(v552, v553), 0x10uLL)));
              }
            }

LABEL_537:
            v246 = v60[v531 + 1];
            v59 += 16;
            ++v531;
            ++v532;
            if (v45 == v531)
            {
              v43 += v531 + v686;
LABEL_631:
              v34 = &v532[v687 + 1];
              v29 += v688;
              v528 = v696;
              goto LABEL_522;
            }
          }
        }

        v640 = v60 + 1;
        v532 = v34 - 1;
        v641 = v45;
        v529 = v695;
        while (1)
        {
          if (v246)
          {
            if (v246 == 255)
            {
              v642 = *(v59 + 8);
              if (*(v59 + 8))
              {
                if (v642 != 0xFFFF)
                {
                  v655 = WORD1(*v59);
                  v662.i32[0] = bswap32(v532[1].u16[1] | (v532[1].u16[0] << 16));
                  v662.i32[1] = HIWORD(v662.i32[0]);
                  v662.i64[1] = __PAIR64__(bswap32(v532[1].u16[3]) >> 16, bswap32(v532[1].u16[2]) >> 16);
                  v657 = vshlq_u64(vdupq_n_s64(*v59), xmmword_18439CB80);
                  v663 = vmull_u16(vmovn_s32(v662), vdup_n_s16(~v642));
                  v659 = vsraq_n_u32(v663, v663, 0x10uLL);
                  v660.i64[0] = 0x100000001;
                  v660.i64[1] = 0x100000001;
                  v661.i32[0] = *v59;
                  goto LABEL_617;
                }

                v643 = HIDWORD(*v59);
                v644 = HIWORD(*v59);
                v645 = bswap32(*v59);
                v532[1].i16[0] = HIWORD(v645);
                v532[1].i16[1] = v645;
                v532[1].i16[2] = bswap32(v643) >> 16;
                v532[1].i16[3] = __rev16(v644);
              }
            }

            else
            {
              v646 = *(v59 + 8);
              v647 = (257 * v246) ^ 0xFFFF;
              v648 = v647 * v646 + ((v647 * v646) >> 16) + 1;
              if (v646 != HIWORD(v648))
              {
                v649 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v59), xmmword_18439CB80));
                v650.i32[1] = v649.i32[1];
                v650.i32[0] = v649.u16[0];
                v661 = vmul_s32(v650, vdup_n_s32(v647));
                v651 = vand_s8(vsub_s32(v649, vshr_n_u32(vadd_s32(vsra_n_u32(v661, v661, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
                v652.i64[0] = v651.u32[0];
                v652.i64[1] = v651.u32[1];
                v653 = vshlq_u64(v652, xmmword_18439CB70);
                v654 = vorrq_s8(v653, vdupq_laneq_s64(v653, 1)).u64[0] | ((WORD1(*v59) - ((WORD1(*v59) * v647 + ((WORD1(*v59) * v647) >> 16) + 1) >> 16)) << 16) | (*v59 - ((*v59 * v647 + ((*v59 * v647) >> 16) + 1) >> 16));
                v655 = WORD1(v654);
                v656.i32[0] = bswap32(v532[1].u16[1] | (v532[1].u16[0] << 16));
                v656.i32[1] = HIWORD(v656.i32[0]);
                v656.i64[1] = __PAIR64__(bswap32(v532[1].u16[3]) >> 16, bswap32(v532[1].u16[2]) >> 16);
                v657 = vshlq_u64(vdupq_n_s64(v654), xmmword_18439CB80);
                v658 = vmull_u16(vmovn_s32(v656), vdup_n_s16(~v646 + HIWORD(v648)));
                v659 = vsraq_n_u32(v658, v658, 0x10uLL);
                v660.i64[0] = 0x100000001;
                v660.i64[1] = 0x100000001;
                v661.i32[0] = v654;
LABEL_617:
                v661.i32[1] = v655;
                v532[1] = vrev16_s8(vmovn_s32(vsraq_n_u32(vmovn_hight_s64(v661, v657), vaddq_s32(v659, v660), 0x10uLL)));
              }
            }
          }

          v664 = *v640++;
          v246 = v664;
          v59 += 16;
          ++v532;
          if (!--v641)
          {
LABEL_630:
            v43 = 0;
            goto LABEL_631;
          }
        }

      case 3:
        v286 = (v59 + 8);
        v287 = v45;
        v178 = v43;
        v288 = v698;
        do
        {
          v289 = *v60;
          if (*v60)
          {
            if (v43)
            {
              v289 = ((*v178 * v289 + ((*v178 * v289) >> 8) + 1) >> 8);
            }

            if (v289)
            {
              if (v289 == 255)
              {
                CMYK64_DAM(v34, v29, *(v286 - 1), *v286, bswap32(*v29) >> 16);
              }

              else
              {
                v290 = v289 | (v289 << 8);
                v291 = bswap32(*v29) >> 16;
                CMYK64_DAMplusDAM(v34, v29, *(v286 - 1), *v286, (v291 * v290 + ((v291 * v290) >> 16) + 1) >> 16, ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v291, v290 ^ 0xFFFF);
              }
            }
          }

          ++v60;
          v178 += v43 != 0;
          ++v34;
          v286 += 8;
          v29 = (v288 + v29);
          --v287;
        }

        while (v287);
        goto LABEL_424;
      case 4:
        v176 = (v59 + 8);
        v177 = v45;
        v178 = v43;
        v179 = v698;
        do
        {
          v180 = *v60;
          if (*v60)
          {
            if (v43)
            {
              v180 = ((*v178 * v180 + ((*v178 * v180) >> 8) + 1) >> 8);
            }

            if (v180)
            {
              if (v180 == 255)
              {
                CMYK64_DAM(v34, v29, *(v176 - 1), *v176, bswap32(~*v29) >> 16);
              }

              else
              {
                v181 = v180 | (v180 << 8);
                v182 = bswap32(*v29) >> 16;
                CMYK64_DAMplusDAM(v34, v29, *(v176 - 1), *v176, ((v182 ^ 0xFFFF) * v181 + (((v182 ^ 0xFFFF) * v181) >> 16) + 1) >> 16, ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v182, v181 ^ 0xFFFF);
              }
            }
          }

          ++v60;
          v178 += v43 != 0;
          ++v34;
          v176 += 8;
          v29 = (v179 + v29);
          --v177;
        }

        while (v177);
        goto LABEL_424;
      case 5:
        v343 = (v59 + 8);
        v344 = v45;
        v178 = v43;
        v345 = v698;
        while (1)
        {
          v346 = *v60;
          if (*v60)
          {
            if (!v43)
            {
              goto LABEL_352;
            }

            v347 = *v178 * v346 + ((*v178 * v346) >> 8) + 1;
            if (v347 >= 0x100)
            {
              break;
            }
          }

LABEL_353:
          ++v60;
          v178 += v43 != 0;
          ++v34;
          v343 += 8;
          v29 = (v345 + v29);
          if (!--v344)
          {
            goto LABEL_424;
          }
        }

        v346 = v347 >> 8;
LABEL_352:
        v348 = *v343;
        v349 = *(v343 - 1);
        v350 = (v346 | (v346 << 8)) ^ 0xFFFF;
        v351 = v350 * v348 + ((v350 * v348) >> 16) + 1;
        v352 = vmovn_s64(vshlq_u64(vdupq_n_s64(v349), xmmword_18439CB80));
        v353.i32[1] = v352.i32[1];
        v353.i32[0] = v352.u16[0];
        v354 = vmul_s32(vdup_n_s32(v350), v353);
        v355 = vand_s8(vsub_s32(v352, vshr_n_u32(vadd_s32(vsra_n_u32(v354, v354, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v356.i64[0] = v355.u32[0];
        v356.i64[1] = v355.u32[1];
        v357 = vshlq_u64(v356, xmmword_18439CB70);
        v358 = bswap32(*v29) >> 16;
        CMYK64_DAMplusDAM(v34, v29, vorrq_s8(v357, vdupq_laneq_s64(v357, 1)).u64[0] | ((WORD1(v349) - ((WORD1(v349) * v350 + ((WORD1(v349) * v350) >> 16) + 1) >> 16)) << 16) | (v349 - ((v349 * v350 + ((v349 * v350) >> 16) + 1) >> 16)), (v348 - HIWORD(v351)), v358, ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v358, ~(v348 - HIWORD(v351)));
        goto LABEL_353;
      case 6:
        v393 = (v59 + 8);
        v394 = v45;
        v178 = v43;
        v395 = v698;
        while (1)
        {
          v396 = *v60;
          if (*v60)
          {
            if (!v43)
            {
              goto LABEL_394;
            }

            v397 = *v178 * v396 + ((*v178 * v396) >> 8) + 1;
            if (v397 >= 0x100)
            {
              break;
            }
          }

LABEL_398:
          ++v60;
          v178 += v43 != 0;
          ++v34;
          v393 += 8;
          v29 = (v395 + v29);
          if (!--v394)
          {
            goto LABEL_424;
          }
        }

        v396 = v397 >> 8;
LABEL_394:
        v398 = bswap32(*v29);
        if (HIWORD(v398) != 0xFFFF)
        {
          if (~HIWORD(v398) == 0xFFFF)
          {
            CMYK64_DAM(v34, v29, *(v393 - 1), *v393, v396 | (v396 << 8));
          }

          else
          {
            CMYK64_DAplusDAM(v34, v29, ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), HIWORD(v398), *(v393 - 1), *v393, (257 * v396 * ~HIWORD(v398) + ((257 * v396 * ~HIWORD(v398)) >> 16) + 1) >> 16);
          }
        }

        goto LABEL_398;
      case 7:
        v292 = v43 != 0;
        if (v699)
        {
          v293 = (v59 + 8);
          v294 = v697;
          v112 = v43;
          do
          {
            v295 = *v60;
            if (*v60)
            {
              if (v43)
              {
                v295 = ((*v112 * v295 + ((*v112 * v295) >> 8) + 1) >> 8);
              }

              if (v295)
              {
                if (v295 == 255)
                {
                  CMYK64_DAM(v34, v29, ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), bswap32(*v29) >> 16, *v293);
                }

                else
                {
                  v296 = ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16);
                  v297 = bswap32(*v29) >> 16;
                  CMYK64_DAMplusDAM(v34, v29, v296, v297, (*v293 * (v295 | (v295 << 8)) + ((*v293 * (v295 | (v295 << 8))) >> 16) + 1) >> 16, v296, v297, (v295 | (v295 << 8)) ^ 0xFFFF);
                }
              }
            }

            ++v60;
            v112 += v292;
            ++v34;
            ++v29;
            v293 += 8;
            --v294;
          }

          while (v294);
          goto LABEL_518;
        }

        v557 = (v59 + 8);
        v528 = v696;
        v558 = v697;
        v559 = v43;
        do
        {
          v560 = *v60;
          if (*v60)
          {
            if (v43)
            {
              v560 = ((*v559 * v560 + ((*v559 * v560) >> 8) + 1) >> 8);
            }

            if (v560)
            {
              if (v560 == 255)
              {
                v561 = bswap32(v34->u16[1] | (v34->u16[0] << 16));
                v562.i32[0] = v561;
                v562.i32[1] = vshr_n_u32(vdup_n_s32(v561), 0x10uLL).i32[1];
                v562.i64[1] = __PAIR64__(bswap32(v34->u16[3]) >> 16, bswap32(v34->u16[2]) >> 16);
                v563 = vmulq_s32(v562, vmovl_u16(vdup_n_s16(~*v557)));
                v564.i64[0] = 0x100000001;
                v564.i64[1] = 0x100000001;
                v562.i32[0] = v561;
                v565 = vsubq_s32(v562, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v563, v563, 0x10uLL), v564), 0x10uLL));
              }

              else
              {
                v566 = v560 | (v560 << 8);
                v567 = bswap32(v34->u16[1] | (v34->u16[0] << 16));
                v568.i32[0] = (*v557 * v566 + ((*v557 * v566) >> 16) + 1) >> 16;
                v568.i32[1] = ~v566;
                *v569.i8 = vand_s8(v568, 0xFFFF0000FFFFLL);
                v570.i64[0] = v569.i64[0];
                v570.i64[1] = v569.i64[0];
                v571.i32[0] = v567;
                v571.i32[1] = HIWORD(v567);
                v571.i32[2] = bswap32(v34->u16[2]) >> 16;
                v571.i32[3] = bswap32(v34->u16[3]) >> 16;
                v569.i64[1] = v569.i64[0];
                v572 = vmulq_s32(v571, vaddq_s32(v570, vrev64q_s32(v569)));
                v565 = vshrq_n_u32(vsubq_s32(vshrq_n_u32(v572, 0x10uLL), vmvnq_s8(v572)), 0x10uLL);
              }

              *v34 = vrev16_s8(vmovn_s32(v565));
            }
          }

          ++v60;
          v559 += v292;
          ++v34;
          v557 += 8;
          --v558;
        }

        while (v558);
        goto LABEL_584;
      case 8:
        v432 = v43 != 0;
        if (v699)
        {
          v433 = (v59 + 8);
          v434 = v697;
          v112 = v43;
          do
          {
            v435 = *v60;
            if (*v60)
            {
              if (v43)
              {
                v435 = ((*v112 * v435 + ((*v112 * v435) >> 8) + 1) >> 8);
              }

              if (v435)
              {
                if (v435 == 255)
                {
                  CMYK64_DAM(v34, v29, ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), bswap32(*v29) >> 16, *v433 ^ 0xFFFF);
                }

                else
                {
                  v436 = ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16);
                  v437 = bswap32(*v29) >> 16;
                  CMYK64_DAMplusDAM(v34, v29, v436, v437, ((*v433 ^ 0xFFFF) * (v435 | (v435 << 8)) + (((*v433 ^ 0xFFFF) * (v435 | (v435 << 8))) >> 16) + 1) >> 16, v436, v437, (v435 | (v435 << 8)) ^ 0xFFFF);
                }
              }
            }

            ++v60;
            v112 += v432;
            ++v34;
            ++v29;
            v433 += 8;
            --v434;
          }

          while (v434);
          goto LABEL_518;
        }

        v595 = (v59 + 8);
        v528 = v696;
        v596 = v697;
        v559 = v43;
        do
        {
          v597 = *v60;
          if (*v60)
          {
            if (v43)
            {
              v597 = ((*v559 * v597 + ((*v559 * v597) >> 8) + 1) >> 8);
            }

            if (v597)
            {
              if (v597 == 255)
              {
                v598 = bswap32(v34->u16[1] | (v34->u16[0] << 16));
                v599.i32[0] = v598;
                v599.i32[1] = vshr_n_u32(vdup_n_s32(v598), 0x10uLL).i32[1];
                v599.i64[1] = __PAIR64__(bswap32(v34->u16[3]) >> 16, bswap32(v34->u16[2]) >> 16);
                v600 = vld1_dup_s16(v595);
                v601 = vmulq_s32(v599, vmovl_u16(v600));
                v602.i64[0] = 0x100000001;
                v602.i64[1] = 0x100000001;
                v599.i32[0] = v598;
                v603 = vsubq_s32(v599, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v601, v601, 0x10uLL), v602), 0x10uLL));
              }

              else
              {
                v604 = v597 | (v597 << 8);
                v605 = bswap32(v34->u16[1] | (v34->u16[0] << 16));
                v606.i32[0] = ((*v595 ^ 0xFFFF) * v604 + (((*v595 ^ 0xFFFFu) * v604) >> 16) + 1) >> 16;
                v606.i32[1] = ~v604;
                *v607.i8 = vand_s8(v606, 0xFFFF0000FFFFLL);
                v608.i64[0] = v607.i64[0];
                v608.i64[1] = v607.i64[0];
                v609.i32[0] = v605;
                v609.i32[1] = HIWORD(v605);
                v609.i32[2] = bswap32(v34->u16[2]) >> 16;
                v609.i32[3] = bswap32(v34->u16[3]) >> 16;
                v607.i64[1] = v607.i64[0];
                v610 = vmulq_s32(v609, vaddq_s32(v608, vrev64q_s32(v607)));
                v603 = vshrq_n_u32(vsubq_s32(vshrq_n_u32(v610, 0x10uLL), vmvnq_s8(v610)), 0x10uLL);
              }

              *v34 = vrev16_s8(vmovn_s32(v603));
            }
          }

          ++v60;
          v559 += v432;
          ++v34;
          v595 += 8;
          --v596;
        }

        while (v596);
LABEL_584:
        v43 = &v559[v686];
        v34 += v687;
        v29 += v688;
        v45 = v697;
        v39 = v694;
        goto LABEL_599;
      case 9:
        v197 = (v59 + 8);
        v198 = v45;
        v178 = v43;
        v199 = v698;
        while (1)
        {
          v200 = *v60;
          if (*v60)
          {
            if (!v43)
            {
              goto LABEL_213;
            }

            v201 = *v178 * v200 + ((*v178 * v200) >> 8) + 1;
            if (v201 >= 0x100)
            {
              break;
            }
          }

LABEL_214:
          ++v60;
          v178 += v43 != 0;
          ++v34;
          v197 += 8;
          v29 = (v199 + v29);
          if (!--v198)
          {
            goto LABEL_424;
          }
        }

        v200 = v201 >> 8;
LABEL_213:
        v202 = bswap32(*v29) >> 16;
        v203 = *(v197 - 1);
        v204 = ~(v200 | (v200 << 8));
        v205 = vmovn_s64(vshlq_u64(vdupq_n_s64(v203), xmmword_18439CB80));
        v206.i32[1] = v205.i32[1];
        v206.i32[0] = v205.u16[0];
        v207 = vmul_s32(v206, vdup_n_s32(v204));
        v208 = vand_s8(vsub_s32(v205, vshr_n_u32(vadd_s32(vsra_n_u32(v207, v207, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v209.i64[0] = v208.u32[0];
        v209.i64[1] = v208.u32[1];
        v210 = vshlq_u64(v209, xmmword_18439CB70);
        v211 = *v197 - ((*v197 * v204 + ((*v197 * v204) >> 16) + 1) >> 16);
        CMYK64_DAMplusDAM(v34, v29, vorrq_s8(v210, vdupq_laneq_s64(v210, 1)).u64[0] | ((WORD1(v203) - ((WORD1(v203) * v204 + ((WORD1(v203) * v204) >> 16) + 1) >> 16)) << 16) | (v203 - ((v203 * v204 + ((v203 * v204) >> 16) + 1) >> 16)), v211, v202 ^ 0xFFFF, ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v202, (v211 + v204));
        goto LABEL_214;
      case 10:
        v416 = (v59 + 8);
        v417 = v45;
        v178 = v43;
        v418 = v698;
        while (1)
        {
          v419 = *v60;
          if (*v60)
          {
            if (!v43)
            {
              goto LABEL_422;
            }

            v420 = *v178 * v419 + ((*v178 * v419) >> 8) + 1;
            if (v420 >= 0x100)
            {
              break;
            }
          }

LABEL_423:
          ++v60;
          v178 += v43 != 0;
          ++v34;
          v416 += 8;
          v29 = (v418 + v29);
          if (!--v417)
          {
LABEL_424:
            v43 = &v178[v686];
            goto LABEL_519;
          }
        }

        v419 = v420 >> 8;
LABEL_422:
        v421 = bswap32(*v29) >> 16;
        v422 = *v416;
        v423 = *(v416 - 1);
        v424 = (v419 | (v419 << 8)) ^ 0xFFFF;
        v425 = v424 * v422 + ((v424 * v422) >> 16) + 1;
        v426 = vmovn_s64(vshlq_u64(vdupq_n_s64(v423), xmmword_18439CB80));
        v427.i32[1] = v426.i32[1];
        v427.i32[0] = v426.u16[0];
        v428 = vmul_s32(vdup_n_s32(v424), v427);
        v429 = vand_s8(vsub_s32(v426, vshr_n_u32(vadd_s32(vsra_n_u32(v428, v428, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v430.i64[0] = v429.u32[0];
        v430.i64[1] = v429.u32[1];
        v431 = vshlq_u64(v430, xmmword_18439CB70);
        CMYK64_DAMplusDAM(v34, v29, vorrq_s8(v431, vdupq_laneq_s64(v431, 1)).u64[0] | ((WORD1(v423) - ((WORD1(v423) * v424 + ((WORD1(v423) * v424) >> 16) + 1) >> 16)) << 16) | (v423 - ((v423 * v424 + ((v423 * v424) >> 16) + 1) >> 16)), (v422 - HIWORD(v425)), v421 ^ 0xFFFF, ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v421, ~(v422 - HIWORD(v425)));
        goto LABEL_423;
      case 11:
        v162 = v43 != 0;
        if (v699)
        {
          v163 = (v59 + 8);
          v164 = v697;
          v112 = v43;
          while (1)
          {
            v165 = *v60;
            if (*v60)
            {
              if (!v43)
              {
                goto LABEL_186;
              }

              v166 = *v112 * v165 + ((*v112 * v165) >> 8) + 1;
              if (v166 >= 0x100)
              {
                break;
              }
            }

LABEL_187:
            ++v60;
            v112 += v162;
            ++v34;
            ++v29;
            v163 += 8;
            if (!--v164)
            {
              goto LABEL_518;
            }
          }

          v165 = v166 >> 8;
LABEL_186:
          v167 = *(v163 - 1);
          v168 = (v165 | (v165 << 8)) ^ 0xFFFF;
          v169 = v167 * v168;
          v170 = vmovn_s64(vshlq_u64(vdupq_n_s64(v167), xmmword_18439CB80));
          v171.i32[1] = v170.i32[1];
          v171.i32[0] = v170.u16[0];
          v172 = vmul_s32(vdup_n_s32(v168), v171);
          v173 = vand_s8(vsub_s32(v170, vshr_n_u32(vadd_s32(vsra_n_u32(v172, v172, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
          v174.i64[0] = v173.u32[0];
          v174.i64[1] = v173.u32[1];
          v175 = vshlq_u64(v174, xmmword_18439CB70);
          CMYK64_DAplusdDA(v34, v29, ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), bswap32(*v29) >> 16, vorrq_s8(v175, vdupq_laneq_s64(v175, 1)).u64[0] | ((WORD1(v167) - ((WORD1(v167) * v168 + ((WORD1(v167) * v168) >> 16) + 1) >> 16)) << 16) | (v167 - ((v169 + HIWORD(v169) + 1) >> 16)), (*v163 - ((v168 * *v163 + ((v168 * *v163) >> 16) + 1) >> 16)));
          goto LABEL_187;
        }

        v505 = (v59 + 8);
        v506 = v697;
        v112 = v43;
        while (1)
        {
          v507 = *v60;
          if (*v60)
          {
            if (!v43)
            {
              goto LABEL_508;
            }

            v508 = *v112 * v507 + ((*v112 * v507) >> 8) + 1;
            if (v508 >= 0x100)
            {
              break;
            }
          }

LABEL_509:
          ++v60;
          v112 += v162;
          ++v34;
          v505 += 8;
          if (!--v506)
          {
            goto LABEL_518;
          }
        }

        v507 = v508 >> 8;
LABEL_508:
        v509 = *(v505 - 1);
        v510 = (v507 | (v507 << 8)) ^ 0xFFFF;
        v511 = v509 * v510;
        v512 = vmovn_s64(vshlq_u64(vdupq_n_s64(v509), xmmword_18439CB80));
        v513.i32[1] = v512.i32[1];
        v513.i32[0] = v512.u16[0];
        v514 = vmul_s32(vdup_n_s32(v510), v513);
        v515 = vand_s8(vsub_s32(v512, vshr_n_u32(vadd_s32(vsra_n_u32(v514, v514, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v516.i64[0] = v515.u32[0];
        v516.i64[1] = v515.u32[1];
        v517 = vshlq_u64(v516, xmmword_18439CB70);
        CMYK64_DplusdDA(v34, ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), vorrq_s8(v517, vdupq_laneq_s64(v517, 1)).u64[0] | ((WORD1(v509) - ((WORD1(v509) * v510 + ((WORD1(v509) * v510) >> 16) + 1) >> 16)) << 16) | (v509 - ((v511 + HIWORD(v511) + 1) >> 16)), (*v505 - ((v510 * *v505 + ((v510 * *v505) >> 16) + 1) >> 16)));
        goto LABEL_509;
      case 12:
        v183 = v43 != 0;
        if (v699)
        {
          v184 = (v59 + 8);
          v185 = v697;
          v112 = v43;
          while (1)
          {
            v186 = *v60;
            if (*v60)
            {
              if (!v43)
              {
                goto LABEL_205;
              }

              v187 = *v112 * v186 + ((*v112 * v186) >> 8) + 1;
              if (v187 >= 0x100)
              {
                break;
              }
            }

LABEL_206:
            ++v60;
            v112 += v183;
            ++v34;
            ++v29;
            v184 += 8;
            if (!--v185)
            {
              goto LABEL_518;
            }
          }

          v186 = v187 >> 8;
LABEL_205:
          v188 = *(v184 - 1);
          v189 = (v186 | (v186 << 8)) ^ 0xFFFF;
          v190 = v188 * v189;
          v191 = vmovn_s64(vshlq_u64(vdupq_n_s64(v188), xmmword_18439CB80));
          v192.i32[1] = v191.i32[1];
          v192.i32[0] = v191.u16[0];
          v193 = vmul_s32(vdup_n_s32(v189), v192);
          v194 = vand_s8(vsub_s32(v191, vshr_n_u32(vadd_s32(vsra_n_u32(v193, v193, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
          v195.i64[0] = v194.u32[0];
          v195.i64[1] = v194.u32[1];
          v196 = vshlq_u64(v195, xmmword_18439CB70);
          CMYK64_DApluslDA(v34, v29, ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), bswap32(*v29) >> 16, vorrq_s8(v196, vdupq_laneq_s64(v196, 1)).u64[0] | ((WORD1(v188) - ((WORD1(v188) * v189 + ((WORD1(v188) * v189) >> 16) + 1) >> 16)) << 16) | (v188 - ((v190 + HIWORD(v190) + 1) >> 16)), (*v184 - ((v189 * *v184 + ((v189 * *v184) >> 16) + 1) >> 16)));
          goto LABEL_206;
        }

        v518 = v697;
        v112 = v43;
        while (1)
        {
          v519 = *v60;
          if (*v60)
          {
            if (!v43)
            {
              goto LABEL_516;
            }

            v520 = *v112 * v519 + ((*v112 * v519) >> 8) + 1;
            if (v520 >= 0x100)
            {
              break;
            }
          }

LABEL_517:
          ++v60;
          v59 += 16;
          v112 += v183;
          ++v34;
          if (!--v518)
          {
            goto LABEL_518;
          }
        }

        v519 = v520 >> 8;
LABEL_516:
        v521 = (v519 | (v519 << 8)) ^ 0xFFFF;
        v522 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v59), xmmword_18439CB80));
        v523.i32[1] = v522.i32[1];
        v523.i32[0] = v522.u16[0];
        v524 = vmul_s32(vdup_n_s32(v521), v523);
        v525 = vand_s8(vsub_s32(v522, vshr_n_u32(vadd_s32(vsra_n_u32(v524, v524, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v526.i64[0] = v525.u32[0];
        v526.i64[1] = v525.u32[1];
        v527 = vshlq_u64(v526, xmmword_18439CB70);
        CMYK64_DpluslD(v34, ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), vorrq_s8(v527, vdupq_laneq_s64(v527, 1)).u64[0] | ((WORD1(*v59) - ((WORD1(*v59) * v521 + ((WORD1(*v59) * v521) >> 16) + 1) >> 16)) << 16) | (*v59 - ((*v59 * v521 + ((*v59 * v521) >> 16) + 1) >> 16)));
        goto LABEL_517;
      case 13:
        v376 = (v59 + 8);
        v377 = v45;
        v112 = v43;
        v378 = v698;
        while (1)
        {
          v379 = *v60;
          if (*v60)
          {
            if (v43)
            {
              v380 = *v112 * v379 + ((*v112 * v379) >> 8) + 1;
              if (v380 < 0x100)
              {
                goto LABEL_387;
              }

              v379 = v380 >> 8;
            }

            v381 = *v376;
            v382 = (v379 | (v379 << 8)) ^ 0xFFFF;
            v383 = v381 - ((v382 * v381 + ((v382 * v381) >> 16) + 1) >> 16);
            if (v381 != (v382 * v381 + ((v382 * v381) >> 16) + 1) >> 16)
            {
              v384 = *(v376 - 1);
              v385 = ((HIWORD(v384) - ((v382 * HIWORD(v384) + ((v382 * HIWORD(v384)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v384) - ((WORD2(v384) * v382 + ((WORD2(v384) * v382) >> 16) + 1) >> 16)) << 32) | ((WORD1(v384) - ((WORD1(v384) * v382 + ((WORD1(v384) * v382) >> 16) + 1) >> 16)) << 16) | (v384 - ((v384 * v382 + ((v384 * v382) >> 16) + 1) >> 16));
              LODWORD(v386) = v383;
              if (v699)
              {
                if (*v29)
                {
                  v387 = __rev16(*v29);
                  goto LABEL_382;
                }

LABEL_384:
                v391 = bswap32(v385);
                v34->i16[0] = HIWORD(v391);
                v34->i16[1] = v391;
                v34->i16[2] = bswap32(HIDWORD(v385)) >> 16;
                v34->i16[3] = __rev16(HIWORD(v385));
                v388 = v29;
              }

              else
              {
                v387 = 0xFFFF;
LABEL_382:
                v388 = v34 + 3;
                v389 = PDAmultiplyPDA_11872(((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v387, v385, v383);
                v385 = v389;
                if (v699)
                {
                  LODWORD(v386) = v390;
                  goto LABEL_384;
                }

                v386 = HIWORD(v389);
                v392 = bswap32(v389);
                v34->i16[0] = HIWORD(v392);
                v34->i16[1] = v392;
                v34->i16[2] = bswap32(HIDWORD(v389)) >> 16;
              }

              *v388 = bswap32(v386) >> 16;
              v378 = v698;
            }
          }

LABEL_387:
          ++v60;
          v112 += v43 != 0;
          ++v34;
          v376 += 8;
          v29 = (v378 + v29);
          if (!--v377)
          {
            goto LABEL_518;
          }
        }

      case 14:
        v145 = (v59 + 8);
        v146 = v45;
        v112 = v43;
        v147 = v698;
        while (1)
        {
          v148 = *v60;
          if (*v60)
          {
            if (v43)
            {
              v149 = *v112 * v148 + ((*v112 * v148) >> 8) + 1;
              if (v149 < 0x100)
              {
                goto LABEL_178;
              }

              v148 = v149 >> 8;
            }

            v150 = *v145;
            v151 = (v148 | (v148 << 8)) ^ 0xFFFF;
            v152 = v150 - ((v151 * v150 + ((v151 * v150) >> 16) + 1) >> 16);
            if (v150 != (v151 * v150 + ((v151 * v150) >> 16) + 1) >> 16)
            {
              v153 = *(v145 - 1);
              v154 = ((HIWORD(v153) - ((v151 * HIWORD(v153) + ((v151 * HIWORD(v153)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v153) - ((WORD2(v153) * v151 + ((WORD2(v153) * v151) >> 16) + 1) >> 16)) << 32) | ((WORD1(v153) - ((WORD1(v153) * v151 + ((WORD1(v153) * v151) >> 16) + 1) >> 16)) << 16) | (v153 - ((v153 * v151 + ((v153 * v151) >> 16) + 1) >> 16));
              LODWORD(v155) = v152;
              if (v699)
              {
                if (*v29)
                {
                  v156 = __rev16(*v29);
                  goto LABEL_173;
                }

LABEL_175:
                v160 = bswap32(v154);
                v34->i16[0] = HIWORD(v160);
                v34->i16[1] = v160;
                v34->i16[2] = bswap32(HIDWORD(v154)) >> 16;
                v34->i16[3] = __rev16(HIWORD(v154));
                v157 = v29;
              }

              else
              {
                v156 = 0xFFFF;
LABEL_173:
                v157 = v34 + 3;
                v158 = PDAscreenPDA_11873(((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v156, v154, v152);
                v154 = v158;
                if (v699)
                {
                  LODWORD(v155) = v159;
                  goto LABEL_175;
                }

                v155 = HIWORD(v158);
                v161 = bswap32(v158);
                v34->i16[0] = HIWORD(v161);
                v34->i16[1] = v161;
                v34->i16[2] = bswap32(HIDWORD(v158)) >> 16;
              }

              *v157 = bswap32(v155) >> 16;
              v147 = v698;
            }
          }

LABEL_178:
          ++v60;
          v112 += v43 != 0;
          ++v34;
          v145 += 8;
          v29 = (v147 + v29);
          if (!--v146)
          {
            goto LABEL_518;
          }
        }

      case 15:
        v269 = (v59 + 8);
        v270 = v45;
        v112 = v43;
        v271 = v698;
        while (1)
        {
          v272 = *v60;
          if (*v60)
          {
            if (v43)
            {
              v273 = *v112 * v272 + ((*v112 * v272) >> 8) + 1;
              if (v273 < 0x100)
              {
                goto LABEL_280;
              }

              v272 = v273 >> 8;
            }

            v274 = *v269;
            v275 = (v272 | (v272 << 8)) ^ 0xFFFF;
            v276 = v274 - ((v275 * v274 + ((v275 * v274) >> 16) + 1) >> 16);
            if (v274 != (v275 * v274 + ((v275 * v274) >> 16) + 1) >> 16)
            {
              v277 = *(v269 - 1);
              v278 = ((HIWORD(v277) - ((v275 * HIWORD(v277) + ((v275 * HIWORD(v277)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v277) - ((WORD2(v277) * v275 + ((WORD2(v277) * v275) >> 16) + 1) >> 16)) << 32) | ((WORD1(v277) - ((WORD1(v277) * v275 + ((WORD1(v277) * v275) >> 16) + 1) >> 16)) << 16) | (v277 - ((v277 * v275 + ((v277 * v275) >> 16) + 1) >> 16));
              LODWORD(v279) = v276;
              if (v699)
              {
                if (*v29)
                {
                  v280 = __rev16(*v29);
                  goto LABEL_275;
                }

LABEL_277:
                v284 = bswap32(v278);
                v34->i16[0] = HIWORD(v284);
                v34->i16[1] = v284;
                v34->i16[2] = bswap32(HIDWORD(v278)) >> 16;
                v34->i16[3] = __rev16(HIWORD(v278));
                v281 = v29;
              }

              else
              {
                v280 = 0xFFFF;
LABEL_275:
                v281 = v34 + 3;
                v282 = PDAoverlayPDA_11874(((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v280, v278, v276);
                v278 = v282;
                if (v699)
                {
                  LODWORD(v279) = v283;
                  goto LABEL_277;
                }

                v279 = HIWORD(v282);
                v285 = bswap32(v282);
                v34->i16[0] = HIWORD(v285);
                v34->i16[1] = v285;
                v34->i16[2] = bswap32(HIDWORD(v282)) >> 16;
              }

              *v281 = bswap32(v279) >> 16;
              v271 = v698;
            }
          }

LABEL_280:
          ++v60;
          v112 += v43 != 0;
          ++v34;
          v269 += 8;
          v29 = (v271 + v29);
          if (!--v270)
          {
            goto LABEL_518;
          }
        }

      case 16:
        v128 = (v59 + 8);
        v129 = v45;
        v112 = v43;
        v130 = v698;
        while (1)
        {
          v131 = *v60;
          if (*v60)
          {
            if (v43)
            {
              v132 = *v112 * v131 + ((*v112 * v131) >> 8) + 1;
              if (v132 < 0x100)
              {
                goto LABEL_161;
              }

              v131 = v132 >> 8;
            }

            v133 = *v128;
            v134 = (v131 | (v131 << 8)) ^ 0xFFFF;
            v135 = v133 - ((v134 * v133 + ((v134 * v133) >> 16) + 1) >> 16);
            if (v133 != (v134 * v133 + ((v134 * v133) >> 16) + 1) >> 16)
            {
              v136 = *(v128 - 1);
              v137 = ((HIWORD(v136) - ((v134 * HIWORD(v136) + ((v134 * HIWORD(v136)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v136) - ((WORD2(v136) * v134 + ((WORD2(v136) * v134) >> 16) + 1) >> 16)) << 32) | ((WORD1(v136) - ((WORD1(v136) * v134 + ((WORD1(v136) * v134) >> 16) + 1) >> 16)) << 16) | (v136 - ((v136 * v134 + ((v136 * v134) >> 16) + 1) >> 16));
              LODWORD(v138) = v135;
              if (v699)
              {
                if (*v29)
                {
                  v139 = __rev16(*v29);
                  goto LABEL_156;
                }

LABEL_158:
                v143 = bswap32(v137);
                v34->i16[0] = HIWORD(v143);
                v34->i16[1] = v143;
                v34->i16[2] = bswap32(HIDWORD(v137)) >> 16;
                v34->i16[3] = __rev16(HIWORD(v137));
                v140 = v29;
              }

              else
              {
                v139 = 0xFFFF;
LABEL_156:
                v140 = v34 + 3;
                v141 = PDAdarkenPDA_11876(((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v139, v137, v135);
                v137 = v141;
                if (v699)
                {
                  LODWORD(v138) = v142;
                  goto LABEL_158;
                }

                v138 = HIWORD(v141);
                v144 = bswap32(v141);
                v34->i16[0] = HIWORD(v144);
                v34->i16[1] = v144;
                v34->i16[2] = bswap32(HIDWORD(v141)) >> 16;
              }

              *v140 = bswap32(v138) >> 16;
              v130 = v698;
            }
          }

LABEL_161:
          ++v60;
          v112 += v43 != 0;
          ++v34;
          v128 += 8;
          v29 = (v130 + v29);
          if (!--v129)
          {
            goto LABEL_518;
          }
        }

      case 17:
        v309 = (v59 + 8);
        v310 = v45;
        v112 = v43;
        v311 = v698;
        while (1)
        {
          v312 = *v60;
          if (*v60)
          {
            if (v43)
            {
              v313 = *v112 * v312 + ((*v112 * v312) >> 8) + 1;
              if (v313 < 0x100)
              {
                goto LABEL_328;
              }

              v312 = v313 >> 8;
            }

            v314 = *v309;
            v315 = (v312 | (v312 << 8)) ^ 0xFFFF;
            v316 = v314 - ((v315 * v314 + ((v315 * v314) >> 16) + 1) >> 16);
            if (v314 != (v315 * v314 + ((v315 * v314) >> 16) + 1) >> 16)
            {
              v317 = *(v309 - 1);
              v318 = ((HIWORD(v317) - ((v315 * HIWORD(v317) + ((v315 * HIWORD(v317)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v317) - ((WORD2(v317) * v315 + ((WORD2(v317) * v315) >> 16) + 1) >> 16)) << 32) | ((WORD1(v317) - ((WORD1(v317) * v315 + ((WORD1(v317) * v315) >> 16) + 1) >> 16)) << 16) | (v317 - ((v317 * v315 + ((v317 * v315) >> 16) + 1) >> 16));
              LODWORD(v319) = v316;
              if (v699)
              {
                if (*v29)
                {
                  v320 = __rev16(*v29);
                  goto LABEL_323;
                }

LABEL_325:
                v324 = bswap32(v318);
                v34->i16[0] = HIWORD(v324);
                v34->i16[1] = v324;
                v34->i16[2] = bswap32(HIDWORD(v318)) >> 16;
                v34->i16[3] = __rev16(HIWORD(v318));
                v321 = v29;
              }

              else
              {
                v320 = 0xFFFF;
LABEL_323:
                v321 = v34 + 3;
                v322 = PDAlightenPDA_11875(((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v320, v318, v316);
                v318 = v322;
                if (v699)
                {
                  LODWORD(v319) = v323;
                  goto LABEL_325;
                }

                v319 = HIWORD(v322);
                v325 = bswap32(v322);
                v34->i16[0] = HIWORD(v325);
                v34->i16[1] = v325;
                v34->i16[2] = bswap32(HIDWORD(v322)) >> 16;
              }

              *v321 = bswap32(v319) >> 16;
              v311 = v698;
            }
          }

LABEL_328:
          ++v60;
          v112 += v43 != 0;
          ++v34;
          v309 += 8;
          v29 = (v311 + v29);
          if (!--v310)
          {
            goto LABEL_518;
          }
        }

      case 18:
        v399 = (v59 + 8);
        v400 = v45;
        v112 = v43;
        v401 = v698;
        while (1)
        {
          v402 = *v60;
          if (*v60)
          {
            if (v43)
            {
              v403 = *v112 * v402 + ((*v112 * v402) >> 8) + 1;
              if (v403 < 0x100)
              {
                goto LABEL_415;
              }

              v402 = v403 >> 8;
            }

            v404 = *v399;
            v405 = (v402 | (v402 << 8)) ^ 0xFFFF;
            v406 = v404 - ((v405 * v404 + ((v405 * v404) >> 16) + 1) >> 16);
            if (v404 != (v405 * v404 + ((v405 * v404) >> 16) + 1) >> 16)
            {
              v407 = *(v399 - 1);
              v408 = ((HIWORD(v407) - ((v405 * HIWORD(v407) + ((v405 * HIWORD(v407)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v407) - ((WORD2(v407) * v405 + ((WORD2(v407) * v405) >> 16) + 1) >> 16)) << 32) | ((WORD1(v407) - ((WORD1(v407) * v405 + ((WORD1(v407) * v405) >> 16) + 1) >> 16)) << 16) | (v407 - ((v407 * v405 + ((v407 * v405) >> 16) + 1) >> 16));
              LODWORD(v409) = v406;
              if (v699)
              {
                if (*v29)
                {
                  v410 = __rev16(*v29);
                  goto LABEL_410;
                }

LABEL_412:
                v414 = bswap32(v408);
                v34->i16[0] = HIWORD(v414);
                v34->i16[1] = v414;
                v34->i16[2] = bswap32(HIDWORD(v408)) >> 16;
                v34->i16[3] = __rev16(HIWORD(v408));
                v411 = v29;
              }

              else
              {
                v410 = 0xFFFF;
LABEL_410:
                v411 = v34 + 3;
                v412 = PDAcolordodgePDA_11877(((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v410, v408, v406);
                v408 = v412;
                if (v699)
                {
                  LODWORD(v409) = v413;
                  goto LABEL_412;
                }

                v409 = HIWORD(v412);
                v415 = bswap32(v412);
                v34->i16[0] = HIWORD(v415);
                v34->i16[1] = v415;
                v34->i16[2] = bswap32(HIDWORD(v412)) >> 16;
              }

              *v411 = bswap32(v409) >> 16;
              v401 = v698;
            }
          }

LABEL_415:
          ++v60;
          v112 += v43 != 0;
          ++v34;
          v399 += 8;
          v29 = (v401 + v29);
          if (!--v400)
          {
            goto LABEL_518;
          }
        }

      case 19:
        v455 = (v59 + 8);
        v456 = v45;
        v112 = v43;
        v457 = v698;
        while (1)
        {
          v458 = *v60;
          if (*v60)
          {
            if (v43)
            {
              v459 = *v112 * v458 + ((*v112 * v458) >> 8) + 1;
              if (v459 < 0x100)
              {
                goto LABEL_468;
              }

              v458 = v459 >> 8;
            }

            v460 = *v455;
            v461 = (v458 | (v458 << 8)) ^ 0xFFFF;
            v462 = v460 - ((v461 * v460 + ((v461 * v460) >> 16) + 1) >> 16);
            if (v460 != (v461 * v460 + ((v461 * v460) >> 16) + 1) >> 16)
            {
              v463 = *(v455 - 1);
              v464 = ((HIWORD(v463) - ((v461 * HIWORD(v463) + ((v461 * HIWORD(v463)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v463) - ((WORD2(v463) * v461 + ((WORD2(v463) * v461) >> 16) + 1) >> 16)) << 32) | ((WORD1(v463) - ((WORD1(v463) * v461 + ((WORD1(v463) * v461) >> 16) + 1) >> 16)) << 16) | (v463 - ((v463 * v461 + ((v463 * v461) >> 16) + 1) >> 16));
              LODWORD(v465) = v462;
              if (v699)
              {
                if (*v29)
                {
                  v466 = __rev16(*v29);
                  goto LABEL_463;
                }

LABEL_465:
                v470 = bswap32(v464);
                v34->i16[0] = HIWORD(v470);
                v34->i16[1] = v470;
                v34->i16[2] = bswap32(HIDWORD(v464)) >> 16;
                v34->i16[3] = __rev16(HIWORD(v464));
                v467 = v29;
              }

              else
              {
                v466 = 0xFFFF;
LABEL_463:
                v467 = v34 + 3;
                v468 = PDAcolorburnPDA_11878(((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v466, v464, v462);
                v464 = v468;
                if (v699)
                {
                  LODWORD(v465) = v469;
                  goto LABEL_465;
                }

                v465 = HIWORD(v468);
                v471 = bswap32(v468);
                v34->i16[0] = HIWORD(v471);
                v34->i16[1] = v471;
                v34->i16[2] = bswap32(HIDWORD(v468)) >> 16;
              }

              *v467 = bswap32(v465) >> 16;
              v457 = v698;
            }
          }

LABEL_468:
          ++v60;
          v112 += v43 != 0;
          ++v34;
          v455 += 8;
          v29 = (v457 + v29);
          if (!--v456)
          {
            goto LABEL_518;
          }
        }

      case 20:
        v326 = (v59 + 8);
        v327 = v45;
        v112 = v43;
        v328 = v698;
        while (1)
        {
          v329 = *v60;
          if (*v60)
          {
            if (v43)
            {
              v330 = *v112 * v329 + ((*v112 * v329) >> 8) + 1;
              if (v330 < 0x100)
              {
                goto LABEL_345;
              }

              v329 = v330 >> 8;
            }

            v331 = *v326;
            v332 = (v329 | (v329 << 8)) ^ 0xFFFF;
            v333 = v331 - ((v332 * v331 + ((v332 * v331) >> 16) + 1) >> 16);
            if (v331 != (v332 * v331 + ((v332 * v331) >> 16) + 1) >> 16)
            {
              v334 = *(v326 - 1);
              v335 = ((HIWORD(v334) - ((v332 * HIWORD(v334) + ((v332 * HIWORD(v334)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v334) - ((WORD2(v334) * v332 + ((WORD2(v334) * v332) >> 16) + 1) >> 16)) << 32) | ((WORD1(v334) - ((WORD1(v334) * v332 + ((WORD1(v334) * v332) >> 16) + 1) >> 16)) << 16) | (v334 - ((v334 * v332 + ((v334 * v332) >> 16) + 1) >> 16));
              LODWORD(v336) = v333;
              if (v699)
              {
                if (*v29)
                {
                  v337 = __rev16(*v29);
                  goto LABEL_340;
                }

LABEL_342:
                v341 = bswap32(v335);
                v34->i16[0] = HIWORD(v341);
                v34->i16[1] = v341;
                v34->i16[2] = bswap32(HIDWORD(v335)) >> 16;
                v34->i16[3] = __rev16(HIWORD(v335));
                v338 = v29;
              }

              else
              {
                v337 = 0xFFFF;
LABEL_340:
                v338 = v34 + 3;
                v339 = PDAsoftlightPDA_11880(((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v337, v335, v333);
                v335 = v339;
                if (v699)
                {
                  LODWORD(v336) = v340;
                  goto LABEL_342;
                }

                v336 = HIWORD(v339);
                v342 = bswap32(v339);
                v34->i16[0] = HIWORD(v342);
                v34->i16[1] = v342;
                v34->i16[2] = bswap32(HIDWORD(v339)) >> 16;
              }

              *v338 = bswap32(v336) >> 16;
              v328 = v698;
            }
          }

LABEL_345:
          ++v60;
          v112 += v43 != 0;
          ++v34;
          v326 += 8;
          v29 = (v328 + v29);
          if (!--v327)
          {
            goto LABEL_518;
          }
        }

      case 21:
        v359 = (v59 + 8);
        v360 = v45;
        v112 = v43;
        v361 = v698;
        while (1)
        {
          v362 = *v60;
          if (*v60)
          {
            if (v43)
            {
              v363 = *v112 * v362 + ((*v112 * v362) >> 8) + 1;
              if (v363 < 0x100)
              {
                goto LABEL_370;
              }

              v362 = v363 >> 8;
            }

            v364 = *v359;
            v365 = (v362 | (v362 << 8)) ^ 0xFFFF;
            v366 = v364 - ((v365 * v364 + ((v365 * v364) >> 16) + 1) >> 16);
            if (v364 != (v365 * v364 + ((v365 * v364) >> 16) + 1) >> 16)
            {
              v367 = *(v359 - 1);
              v368 = ((HIWORD(v367) - ((v365 * HIWORD(v367) + ((v365 * HIWORD(v367)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v367) - ((WORD2(v367) * v365 + ((WORD2(v367) * v365) >> 16) + 1) >> 16)) << 32) | ((WORD1(v367) - ((WORD1(v367) * v365 + ((WORD1(v367) * v365) >> 16) + 1) >> 16)) << 16) | (v367 - ((v367 * v365 + ((v367 * v365) >> 16) + 1) >> 16));
              LODWORD(v369) = v366;
              if (v699)
              {
                if (*v29)
                {
                  v370 = __rev16(*v29);
                  goto LABEL_365;
                }

LABEL_367:
                v374 = bswap32(v368);
                v34->i16[0] = HIWORD(v374);
                v34->i16[1] = v374;
                v34->i16[2] = bswap32(HIDWORD(v368)) >> 16;
                v34->i16[3] = __rev16(HIWORD(v368));
                v371 = v29;
              }

              else
              {
                v370 = 0xFFFF;
LABEL_365:
                v371 = v34 + 3;
                v372 = PDAhardlightPDA_11879(((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v370, v368, v366);
                v368 = v372;
                if (v699)
                {
                  LODWORD(v369) = v373;
                  goto LABEL_367;
                }

                v369 = HIWORD(v372);
                v375 = bswap32(v372);
                v34->i16[0] = HIWORD(v375);
                v34->i16[1] = v375;
                v34->i16[2] = bswap32(HIDWORD(v372)) >> 16;
              }

              *v371 = bswap32(v369) >> 16;
              v361 = v698;
            }
          }

LABEL_370:
          ++v60;
          v112 += v43 != 0;
          ++v34;
          v359 += 8;
          v29 = (v361 + v29);
          if (!--v360)
          {
            goto LABEL_518;
          }
        }

      case 22:
        v438 = (v59 + 8);
        v439 = v45;
        v112 = v43;
        v440 = v698;
        while (1)
        {
          v441 = *v60;
          if (*v60)
          {
            if (v43)
            {
              v442 = *v112 * v441 + ((*v112 * v441) >> 8) + 1;
              if (v442 < 0x100)
              {
                goto LABEL_451;
              }

              v441 = v442 >> 8;
            }

            v443 = *v438;
            v444 = (v441 | (v441 << 8)) ^ 0xFFFF;
            v445 = v443 - ((v444 * v443 + ((v444 * v443) >> 16) + 1) >> 16);
            if (v443 != (v444 * v443 + ((v444 * v443) >> 16) + 1) >> 16)
            {
              v446 = *(v438 - 1);
              v447 = ((HIWORD(v446) - ((v444 * HIWORD(v446) + ((v444 * HIWORD(v446)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v446) - ((WORD2(v446) * v444 + ((WORD2(v446) * v444) >> 16) + 1) >> 16)) << 32) | ((WORD1(v446) - ((WORD1(v446) * v444 + ((WORD1(v446) * v444) >> 16) + 1) >> 16)) << 16) | (v446 - ((v446 * v444 + ((v446 * v444) >> 16) + 1) >> 16));
              LODWORD(v448) = v445;
              if (v699)
              {
                if (*v29)
                {
                  v449 = __rev16(*v29);
                  goto LABEL_446;
                }

LABEL_448:
                v453 = bswap32(v447);
                v34->i16[0] = HIWORD(v453);
                v34->i16[1] = v453;
                v34->i16[2] = bswap32(HIDWORD(v447)) >> 16;
                v34->i16[3] = __rev16(HIWORD(v447));
                v450 = v29;
              }

              else
              {
                v449 = 0xFFFF;
LABEL_446:
                v450 = v34 + 3;
                v451 = PDAdifferencePDA_11881(((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v449, v447, v445);
                v447 = v451;
                if (v699)
                {
                  LODWORD(v448) = v452;
                  goto LABEL_448;
                }

                v448 = HIWORD(v451);
                v454 = bswap32(v451);
                v34->i16[0] = HIWORD(v454);
                v34->i16[1] = v454;
                v34->i16[2] = bswap32(HIDWORD(v451)) >> 16;
              }

              *v450 = bswap32(v448) >> 16;
              v440 = v698;
            }
          }

LABEL_451:
          ++v60;
          v112 += v43 != 0;
          ++v34;
          v438 += 8;
          v29 = (v440 + v29);
          if (!--v439)
          {
            goto LABEL_518;
          }
        }

      case 23:
        v472 = (v59 + 8);
        v473 = v45;
        v112 = v43;
        v474 = v698;
        while (1)
        {
          v475 = *v60;
          if (*v60)
          {
            if (v43)
            {
              v476 = *v112 * v475 + ((*v112 * v475) >> 8) + 1;
              if (v476 < 0x100)
              {
                goto LABEL_485;
              }

              v475 = v476 >> 8;
            }

            v477 = *v472;
            v478 = (v475 | (v475 << 8)) ^ 0xFFFF;
            v479 = v477 - ((v478 * v477 + ((v478 * v477) >> 16) + 1) >> 16);
            if (v477 != (v478 * v477 + ((v478 * v477) >> 16) + 1) >> 16)
            {
              v480 = *(v472 - 1);
              v481 = ((HIWORD(v480) - ((v478 * HIWORD(v480) + ((v478 * HIWORD(v480)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v480) - ((WORD2(v480) * v478 + ((WORD2(v480) * v478) >> 16) + 1) >> 16)) << 32) | ((WORD1(v480) - ((WORD1(v480) * v478 + ((WORD1(v480) * v478) >> 16) + 1) >> 16)) << 16) | (v480 - ((v480 * v478 + ((v480 * v478) >> 16) + 1) >> 16));
              LODWORD(v482) = v479;
              if (v699)
              {
                if (*v29)
                {
                  v483 = __rev16(*v29);
                  goto LABEL_480;
                }

LABEL_482:
                v487 = bswap32(v481);
                v34->i16[0] = HIWORD(v487);
                v34->i16[1] = v487;
                v34->i16[2] = bswap32(HIDWORD(v481)) >> 16;
                v34->i16[3] = __rev16(HIWORD(v481));
                v484 = v29;
              }

              else
              {
                v483 = 0xFFFF;
LABEL_480:
                v484 = v34 + 3;
                v485 = PDAexclusionPDA_11882(((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v483, v481, v479);
                v481 = v485;
                if (v699)
                {
                  LODWORD(v482) = v486;
                  goto LABEL_482;
                }

                v482 = HIWORD(v485);
                v488 = bswap32(v485);
                v34->i16[0] = HIWORD(v488);
                v34->i16[1] = v488;
                v34->i16[2] = bswap32(HIDWORD(v485)) >> 16;
              }

              *v484 = bswap32(v482) >> 16;
              v474 = v698;
            }
          }

LABEL_485:
          ++v60;
          v112 += v43 != 0;
          ++v34;
          v472 += 8;
          v29 = (v474 + v29);
          if (!--v473)
          {
            goto LABEL_518;
          }
        }

      case 24:
        v229 = (v59 + 8);
        v230 = v45;
        v112 = v43;
        v231 = v698;
        while (1)
        {
          v232 = *v60;
          if (*v60)
          {
            if (v43)
            {
              v233 = *v112 * v232 + ((*v112 * v232) >> 8) + 1;
              if (v233 < 0x100)
              {
                goto LABEL_248;
              }

              v232 = v233 >> 8;
            }

            v234 = *v229;
            v235 = (v232 | (v232 << 8)) ^ 0xFFFF;
            v236 = v234 - ((v235 * v234 + ((v235 * v234) >> 16) + 1) >> 16);
            if (v234 != (v235 * v234 + ((v235 * v234) >> 16) + 1) >> 16)
            {
              v237 = *(v229 - 1);
              v238 = ((HIWORD(v237) - ((v235 * HIWORD(v237) + ((v235 * HIWORD(v237)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v237) - ((WORD2(v237) * v235 + ((WORD2(v237) * v235) >> 16) + 1) >> 16)) << 32) | ((WORD1(v237) - ((WORD1(v237) * v235 + ((WORD1(v237) * v235) >> 16) + 1) >> 16)) << 16) | (v237 - ((v237 * v235 + ((v237 * v235) >> 16) + 1) >> 16));
              LODWORD(v239) = v236;
              if (v699)
              {
                if (*v29)
                {
                  v240 = __rev16(*v29);
                  goto LABEL_243;
                }

LABEL_245:
                v244 = bswap32(v238);
                v34->i16[0] = HIWORD(v244);
                v34->i16[1] = v244;
                v34->i16[2] = bswap32(HIDWORD(v238)) >> 16;
                v34->i16[3] = __rev16(HIWORD(v238));
                v241 = v29;
              }

              else
              {
                v240 = 0xFFFF;
LABEL_243:
                v241 = v34 + 3;
                v242 = PDAhuePDA_11883(((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v240, v238, v236);
                v238 = v242;
                if (v699)
                {
                  LODWORD(v239) = v243;
                  goto LABEL_245;
                }

                v239 = HIWORD(v242);
                v245 = bswap32(v242);
                v34->i16[0] = HIWORD(v245);
                v34->i16[1] = v245;
                v34->i16[2] = bswap32(HIDWORD(v242)) >> 16;
              }

              *v241 = bswap32(v239) >> 16;
              v231 = v698;
            }
          }

LABEL_248:
          ++v60;
          v112 += v43 != 0;
          ++v34;
          v229 += 8;
          v29 = (v231 + v29);
          if (!--v230)
          {
            goto LABEL_518;
          }
        }

      case 25:
        v212 = (v59 + 8);
        v213 = v45;
        v112 = v43;
        v214 = v698;
        while (1)
        {
          v215 = *v60;
          if (*v60)
          {
            if (v43)
            {
              v216 = *v112 * v215 + ((*v112 * v215) >> 8) + 1;
              if (v216 < 0x100)
              {
                goto LABEL_231;
              }

              v215 = v216 >> 8;
            }

            v217 = *v212;
            v218 = (v215 | (v215 << 8)) ^ 0xFFFF;
            v219 = v217 - ((v218 * v217 + ((v218 * v217) >> 16) + 1) >> 16);
            if (v217 != (v218 * v217 + ((v218 * v217) >> 16) + 1) >> 16)
            {
              v220 = *(v212 - 1);
              v221 = ((HIWORD(v220) - ((v218 * HIWORD(v220) + ((v218 * HIWORD(v220)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v220) - ((WORD2(v220) * v218 + ((WORD2(v220) * v218) >> 16) + 1) >> 16)) << 32) | ((WORD1(v220) - ((WORD1(v220) * v218 + ((WORD1(v220) * v218) >> 16) + 1) >> 16)) << 16) | (v220 - ((v220 * v218 + ((v220 * v218) >> 16) + 1) >> 16));
              LODWORD(v222) = v219;
              if (v699)
              {
                if (*v29)
                {
                  v223 = __rev16(*v29);
                  goto LABEL_226;
                }

LABEL_228:
                v227 = bswap32(v221);
                v34->i16[0] = HIWORD(v227);
                v34->i16[1] = v227;
                v34->i16[2] = bswap32(HIDWORD(v221)) >> 16;
                v34->i16[3] = __rev16(HIWORD(v221));
                v224 = v29;
              }

              else
              {
                v223 = 0xFFFF;
LABEL_226:
                v224 = v34 + 3;
                v225 = PDAsaturationPDA_11884(((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v223, v221, v219);
                v221 = v225;
                if (v699)
                {
                  LODWORD(v222) = v226;
                  goto LABEL_228;
                }

                v222 = HIWORD(v225);
                v228 = bswap32(v225);
                v34->i16[0] = HIWORD(v228);
                v34->i16[1] = v228;
                v34->i16[2] = bswap32(HIDWORD(v225)) >> 16;
              }

              *v224 = bswap32(v222) >> 16;
              v214 = v698;
            }
          }

LABEL_231:
          ++v60;
          v112 += v43 != 0;
          ++v34;
          v212 += 8;
          v29 = (v214 + v29);
          if (!--v213)
          {
            goto LABEL_518;
          }
        }

      case 26:
        v489 = (v59 + 8);
        v490 = v45;
        v491 = v43;
        v492 = v698;
        while (1)
        {
          v493 = *v60;
          if (*v60)
          {
            if (v43)
            {
              v494 = *v491 * v493 + ((*v491 * v493) >> 8) + 1;
              if (v494 < 0x100)
              {
                goto LABEL_501;
              }

              v493 = v494 >> 8;
            }

            v495 = *v489;
            v496 = (v493 | (v493 << 8)) ^ 0xFFFF;
            v497 = v495 - ((v496 * v495 + ((v496 * v495) >> 16) + 1) >> 16);
            if (v495 != (v496 * v495 + ((v496 * v495) >> 16) + 1) >> 16)
            {
              v498 = *(v489 - 1);
              v499 = ((HIWORD(v498) - ((v496 * HIWORD(v498) + ((v496 * HIWORD(v498)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v498) - ((WORD2(v498) * v496 + ((WORD2(v498) * v496) >> 16) + 1) >> 16)) << 32) | ((WORD1(v498) - ((WORD1(v498) * v496 + ((WORD1(v498) * v496) >> 16) + 1) >> 16)) << 16) | (v498 - ((v498 * v496 + ((v498 * v496) >> 16) + 1) >> 16));
              LODWORD(v500) = v497;
              if (v699)
              {
                if (*v29)
                {
                  v501 = __rev16(*v29);
                  goto LABEL_497;
                }

                goto LABEL_498;
              }

              v501 = 0xFFFF;
LABEL_497:
              v502 = v34 + 3;
              v499 = PDAluminosityPDA_11885(v499, v497, ((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v501);
              if (v699)
              {
LABEL_498:
                v503 = bswap32(v499);
                v34->i16[0] = HIWORD(v503);
                v34->i16[1] = v503;
                v34->i16[2] = bswap32(HIDWORD(v499)) >> 16;
                v34->i16[3] = __rev16(HIWORD(v499));
                v502 = v29;
              }

              else
              {
                v500 = HIWORD(v499);
                v504 = bswap32(v499);
                v34->i16[0] = HIWORD(v504);
                v34->i16[1] = v504;
                v34->i16[2] = bswap32(HIDWORD(v499)) >> 16;
              }

              *v502 = bswap32(v500) >> 16;
              v492 = v698;
            }
          }

LABEL_501:
          ++v60;
          v491 += v43 != 0;
          ++v34;
          v489 += 8;
          v29 = (v492 + v29);
          if (!--v490)
          {
            v43 = &v491[v686];
            goto LABEL_519;
          }
        }

      case 27:
        v110 = (v59 + 8);
        v111 = v45;
        v112 = v43;
        v113 = v698;
        break;
      default:
        goto LABEL_598;
    }

    while (1)
    {
      v114 = *v60;
      if (*v60)
      {
        if (v43)
        {
          v115 = *v112 * v114 + ((*v112 * v114) >> 8) + 1;
          if (v115 < 0x100)
          {
            goto LABEL_144;
          }

          v114 = v115 >> 8;
        }

        v116 = *v110;
        v117 = (v114 | (v114 << 8)) ^ 0xFFFF;
        v118 = v116 - ((v117 * v116 + ((v117 * v116) >> 16) + 1) >> 16);
        if (v116 != (v117 * v116 + ((v117 * v116) >> 16) + 1) >> 16)
        {
          v119 = *(v110 - 1);
          v120 = ((HIWORD(v119) - ((v117 * HIWORD(v119) + ((v117 * HIWORD(v119)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v119) - ((WORD2(v119) * v117 + ((WORD2(v119) * v117) >> 16) + 1) >> 16)) << 32) | ((WORD1(v119) - ((WORD1(v119) * v117 + ((WORD1(v119) * v117) >> 16) + 1) >> 16)) << 16) | (v119 - ((v119 * v117 + ((v119 * v117) >> 16) + 1) >> 16));
          LODWORD(v121) = v118;
          if (v699)
          {
            if (*v29)
            {
              v122 = __rev16(*v29);
              goto LABEL_139;
            }

LABEL_141:
            v126 = bswap32(v120);
            v34->i16[0] = HIWORD(v126);
            v34->i16[1] = v126;
            v34->i16[2] = bswap32(HIDWORD(v120)) >> 16;
            v34->i16[3] = __rev16(HIWORD(v120));
            v123 = v29;
          }

          else
          {
            v122 = 0xFFFF;
LABEL_139:
            v123 = v34 + 3;
            v124 = PDAluminosityPDA_11885(((bswap32(v34->u16[2]) >> 16) << 32) | ((bswap32(v34->u16[3]) >> 16) << 48) | bswap32(v34->u16[1]) & 0xFFFF0000 | (bswap32(v34->u16[0]) >> 16), v122, v120, v118);
            v120 = v124;
            if (v699)
            {
              LODWORD(v121) = v125;
              goto LABEL_141;
            }

            v121 = HIWORD(v124);
            v127 = bswap32(v124);
            v34->i16[0] = HIWORD(v127);
            v34->i16[1] = v127;
            v34->i16[2] = bswap32(HIDWORD(v124)) >> 16;
          }

          *v123 = bswap32(v121) >> 16;
          v113 = v698;
        }
      }

LABEL_144:
      ++v60;
      v112 += v43 != 0;
      ++v34;
      v110 += 8;
      v29 = (v113 + v29);
      if (!--v111)
      {
LABEL_518:
        v43 = &v112[v686];
LABEL_519:
        v34 += v687;
        v29 += v688;
LABEL_520:
        v38 = v690;
        v45 = v697;
        v39 = v694;
LABEL_521:
        v528 = v696;
        v529 = v695;
        goto LABEL_522;
      }
    }
  }
}