void sub_1BD2AD624(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1BE0537E4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v34 = v3;
    v15 = 0;
    v16 = 1 << *(v5 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v5 + 56);
    v19 = (v16 + 63) >> 6;
    v20 = v6 + 56;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(*(v5 + 48) + 8 * (v22 | (v15 << 6)));
      v26 = sub_1BE053064();
      v27 = -1 << *(v14 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v20 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v20 + 8 * v29);
          if (v33 != -1)
          {
            v21 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v21 = __clz(__rbit64((-1 << v28) & ~*(v20 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v14 + 48) + 8 * v21) = v25;
      ++*(v14 + 16);
    }

    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v19)
      {
        v5, v7, v8, v9, v10, v11, v12, v13;
        v4 = v34;
        goto LABEL_26;
      }

      v24 = *(v5 + 56 + 8 * v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_26:
    *v4 = v14;
  }
}

uint64_t sub_1BD2AD830(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v12 = a2;
  v170 = *MEMORY[0x1E69E9840];
  if (!a2[2])
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return MEMORY[0x1E69E7CD0];
  }

  v13 = a1;
  v152 = 0;
  v14 = *(a1 + 56);
  v160 = (a1 + 56);
  v15 = -1 << *(a1 + 32);
  v157 = ~v15;
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  v158 = (63 - v15) >> 6;
  v162 = 0x80000001BE117610;
  v163 = a2 + 7;
  sub_1BE048C84();
  v161 = 0;
  do
  {
LABEL_6:
    if (v17)
    {
      goto LABEL_12;
    }

    v22 = v160;
    v23 = v161;
    do
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
LABEL_90:
        __break(1u);
LABEL_91:
        v125 = v18;
        sub_1BE048964();
        if (swift_stdlib_isStackAllocationSafe())
        {
          v12, v126, v127, v128, v129, v130, v131, v132;
          goto LABEL_43;
        }

        v133 = swift_slowAlloc();
        memcpy(v133, v163, v125);
        v134 = v152;
        sub_1BD2AE66C(v133, v153, v12, v8, &v165);
        v136 = v135;
        v12, v137, v138, v139, v140, v141, v142, v143;
        if (!v134)
        {
          v12, v144, v145, v146, v147, v148, v149, v150;
          MEMORY[0x1BFB45F20](v133, -1, -1);
          v10 = v165;
          v80 = v166;
          v157 = v167;
          v161 = v168;
          v12 = v136;
          v17 = v169;
          goto LABEL_86;
        }

        result = MEMORY[0x1BFB45F20](v133, -1, -1);
        __break(1u);
        return result;
      }

      if (v24 >= v158)
      {
        v59 = v13;
        v60 = v157;
        v61 = v161;
        v62 = 0;
        goto LABEL_87;
      }

      v17 = *&v160[8 * v24];
      ++v23;
    }

    while (!v17);
    v161 = v24;
LABEL_12:
    v25 = *(*(v13 + 48) + (__clz(__rbit64(v17)) | (v161 << 6)));
    sub_1BE053D04();
    if (v25)
    {
      if (v25 == 1)
      {
        v26 = 0xEE00415049506165;
      }

      else
      {
        v26 = v162;
      }
    }

    else
    {
      v26 = 0xE400000000000000;
    }

    v17 &= v17 - 1;
    sub_1BE052524();
    v26, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_1BE053D64();
    v38 = -1 << *(v12 + 32);
    v8 = v34 & ~v38;
    v9 = v8 >> 6;
    v11 = 1 << v8;
  }

  while (((1 << v8) & *(v163 + (v8 >> 6))) == 0);
  v159 = v13;
  v10 = ~v38;
  while (1)
  {
    if (*(*(v12 + 48) + v8))
    {
      if (*(*(v12 + 48) + v8) == 1)
      {
        v39 = 0x726F4B6874756F73;
        v40 = 0xEE00415049506165;
        if (v25)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v39 = 0xD000000000000010;
        v40 = v162;
        if (v25)
        {
LABEL_22:
          if (v25 == 1)
          {
            v41 = 0x726F4B6874756F73;
          }

          else
          {
            v41 = 0xD000000000000010;
          }

          if (v25 == 1)
          {
            v42 = 0xEE00415049506165;
          }

          else
          {
            v42 = v162;
          }

          if (v39 != v41)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }
      }
    }

    else
    {
      v40 = 0xE400000000000000;
      v39 = 1919968359;
      if (v25)
      {
        goto LABEL_22;
      }
    }

    v42 = 0xE400000000000000;
    v41 = 1919968359;
    if (v39 != 1919968359)
    {
      goto LABEL_33;
    }

LABEL_32:
    if (v40 == v42)
    {
      v167 = v157;
      v168 = v161;
      v169 = v17;
      v10 = v159;
      v165 = v159;
      v166 = v160;
      v40, v35, v41, v36, v37, v19, v20, v21;
      v42, v63, v64, v65, v66, v67, v68, v69;
      goto LABEL_42;
    }

LABEL_33:
    v43 = sub_1BE053B84();
    v40, v44, v45, v46, v47, v48, v49, v50;
    v42, v51, v52, v53, v54, v55, v56, v57;
    if (v43)
    {
      break;
    }

    v8 = (v8 + 1) & v10;
    v9 = v8 >> 6;
    v11 = 1 << v8;
    if ((*(v163 + (v8 >> 6)) & (1 << v8)) == 0)
    {
      v13 = v159;
      goto LABEL_6;
    }
  }

  v167 = v157;
  v168 = v161;
  v169 = v17;
  v10 = v159;
  v165 = v159;
  v166 = v160;
LABEL_42:
  v70 = *(v12 + 32);
  v153 = ((1 << v70) + 63) >> 6;
  v18 = (8 * v153);
  if ((v70 & 0x3Fu) > 0xD)
  {
    goto LABEL_91;
  }

LABEL_43:
  v154 = &v151;
  MEMORY[0x1EEE9AC00](v58);
  v8 = &v151 - ((v71 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v8, v163, v71);
  v76 = *(v8 + 8 * v9) & ~v11;
  v77 = *(v12 + 16);
  v156 = v8;
  *(v8 + 8 * v9) = v76;
  v78 = (v77 - 1);
LABEL_44:
  v155 = v78;
LABEL_45:
  while (2)
  {
    if (v17)
    {
LABEL_51:
      v9 = *(*(v10 + 48) + (__clz(__rbit64(v17)) | (v161 << 6)));
      sub_1BE053D04();
      if (v9)
      {
        if (v9 == 1)
        {
          v82 = 0xEE00415049506165;
        }

        else
        {
          v82 = v162;
        }
      }

      else
      {
        v82 = 0xE400000000000000;
      }

      v17 &= v17 - 1;
      sub_1BE052524();
      v82, v83, v84, v85, v86, v87, v88, v89;
      v8 = v164;
      v90 = sub_1BE053D64();
      v93 = -1 << *(v12 + 32);
      v94 = v90 & ~v93;
      v11 = v94 >> 6;
      v95 = 1 << v94;
      if (((1 << v94) & *(v163 + (v94 >> 6))) == 0)
      {
        continue;
      }

      v96 = ~v93;
      while (1)
      {
        if (*(*(v12 + 48) + v94))
        {
          if (*(*(v12 + 48) + v94) == 1)
          {
            v97 = 0x726F4B6874756F73;
            v8 = 0xEE00415049506165;
            if (v9)
            {
              goto LABEL_61;
            }
          }

          else
          {
            v97 = 0xD000000000000010;
            v8 = v162;
            if (v9)
            {
LABEL_61:
              if (v9 == 1)
              {
                v98 = 0x726F4B6874756F73;
              }

              else
              {
                v98 = 0xD000000000000010;
              }

              if (v9 == 1)
              {
                v99 = 0xEE00415049506165;
              }

              else
              {
                v99 = v162;
              }

              if (v97 != v98)
              {
                goto LABEL_72;
              }

              goto LABEL_71;
            }
          }
        }

        else
        {
          v8 = 0xE400000000000000;
          v97 = 1919968359;
          if (v9)
          {
            goto LABEL_61;
          }
        }

        v99 = 0xE400000000000000;
        v98 = 1919968359;
        if (v97 != 1919968359)
        {
          goto LABEL_72;
        }

LABEL_71:
        if (v8 == v99)
        {
          v8, v91, v98, v92, v72, v73, v74, v75;
          v99, v115, v116, v117, v118, v119, v120, v121;
LABEL_78:
          v122 = v156[v11];
          v156[v11] = v122 & ~v95;
          v10 = v159;
          if ((v122 & v95) != 0)
          {
            v78 = v155 - 1;
            if (__OFSUB__(v155, 1))
            {
              __break(1u);
            }

            if (v155 == 1)
            {
              v12, v91, v18, v92, v72, v73, v74, v75;
              v12 = MEMORY[0x1E69E7CD0];
              v80 = v160;
              goto LABEL_86;
            }

            goto LABEL_44;
          }

          goto LABEL_45;
        }

LABEL_72:
        v100 = sub_1BE053B84();
        v8, v101, v102, v103, v104, v105, v106, v107;
        v99, v108, v109, v110, v111, v112, v113, v114;
        if (v100)
        {
          goto LABEL_78;
        }

        v94 = (v94 + 1) & v96;
        v11 = v94 >> 6;
        v95 = 1 << v94;
        if ((*(v163 + (v94 >> 6)) & (1 << v94)) == 0)
        {
          v10 = v159;
          goto LABEL_45;
        }
      }
    }

    break;
  }

  v80 = v160;
  v79 = v161;
  while (1)
  {
    v81 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      __break(1u);
      goto LABEL_90;
    }

    if (v81 >= v158)
    {
      break;
    }

    v17 = *&v160[8 * v81];
    ++v79;
    if (v17)
    {
      v161 = v81;
      goto LABEL_51;
    }
  }

  if (v158 <= v161 + 1)
  {
    v123 = v161 + 1;
  }

  else
  {
    v123 = v158;
  }

  v161 = v123 - 1;
  v12 = sub_1BD2AEC20(v156, v153, v155, v12, v72, v73, v74, v75);
  v17 = 0;
LABEL_86:
  v59 = v10;
  v22 = v80;
  v60 = v157;
  v61 = v161;
  v62 = v17;
LABEL_87:
  sub_1BD0D45FC(v59, v22, v60, v61, v62, v19, v20, v21);
  return v12;
}

uint64_t sub_1BD2ADFEC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = a2;
  v193 = *MEMORY[0x1E69E9840];
  if (!a2[2])
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return MEMORY[0x1E69E7CD0];
  }

  v176 = 0;
  v11 = a1 + 56;
  v10 = *(a1 + 56);
  v12 = -1;
  v13 = -1 << *(a1 + 32);
  v185 = ~v13;
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v10;
  v16 = (63 - v13) >> 6;
  v187 = a2 + 7;
  v17 = sub_1BE048C84();
  v22 = 0;
  v181 = v16;
  v183 = v17;
  v182 = v11;
  if (v15)
  {
LABEL_11:
    while (1)
    {
      v25 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v26 = *(*(v17 + 48) + ((v22 << 9) | (8 * v25)));
      v188 = v17;
      v189 = v11;
      v190 = v185;
      v191 = v22;
      v186 = v22;
      v192 = v15;
      sub_1BE052434();
      v28 = v27;
      sub_1BE053D04();
      v184 = v26;
      sub_1BE052524();
      v29 = sub_1BE053D64();
      v28, v30, v31, v32, v33, v34, v35, v36;
      v37 = -1 << *(v9 + 32);
      v11 = v29 & ~v37;
      v8 = v11 >> 6;
      v12 = 1 << v11;
      if (((1 << v11) & v187[v11 >> 6]) != 0)
      {
        break;
      }

LABEL_19:

      v17 = v183;
      v11 = v182;
      v16 = v181;
      v22 = v186;
      v12 = -1;
      if (!v15)
      {
        goto LABEL_6;
      }
    }

    v38 = ~v37;
    while (1)
    {
      v39 = sub_1BE052434();
      v41 = v40;
      v42 = sub_1BE052434();
      v44 = v43;
      if (v39 == v42 && v41 == v43)
      {

        v41, v64, v65, v66, v67, v68, v69, v70;
        v44, v71, v72, v73, v74, v75, v76, v77;
        goto LABEL_25;
      }

      v46 = sub_1BE053B84();
      v41, v47, v48, v49, v50, v51, v52, v53;
      v44, v54, v55, v56, v57, v58, v59, v60;
      if (v46)
      {
        break;
      }

      v11 = (v11 + 1) & v38;
      v8 = v11 >> 6;
      v12 = 1 << v11;
      if (((1 << v11) & v187[v11 >> 6]) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_25:
    v79 = *(v9 + 32);
    v177 = ((1 << v79) + 63) >> 6;
    v18 = (8 * v177);
    if ((v79 & 0x3Fu) <= 0xD)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_6:
    v23 = v22;
    while (1)
    {
      v24 = (v23 + 1);
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v16)
      {
        v61 = v11;
        v62 = v185;
        v63 = 0;
        goto LABEL_55;
      }

      v15 = *(v11 + 8 * v24);
      ++v23;
      if (v15)
      {
        v22 = v24;
        goto LABEL_11;
      }
    }

LABEL_58:
    __break(1u);
  }

  v149 = v18;
  sub_1BE048964();
  if (swift_stdlib_isStackAllocationSafe())
  {
    v9, v150, v151, v152, v153, v154, v155, v156;
LABEL_26:
    v178 = &v175;
    MEMORY[0x1EEE9AC00](v78);
    v11 = &v175 - ((v80 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v11, v187, v80);
    v85 = *(v11 + 8 * v8) & ~v12;
    v86 = *(v9 + 16);
    v180 = v11;
    *(v11 + 8 * v8) = v85;
    v87 = (v86 - 1);
    v88 = v183;
    v89 = v182;
    v90 = v181;
    v91 = v186;
LABEL_27:
    v179 = v87;
    while (v15)
    {
LABEL_35:
      v94 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v95 = *(*(v88 + 48) + ((v91 << 9) | (8 * v94)));
      v188 = v88;
      v189 = v89;
      v190 = v185;
      v191 = v91;
      v186 = v91;
      v192 = v15;
      sub_1BE052434();
      v97 = v96;
      sub_1BE053D04();
      v184 = v95;
      sub_1BE052524();
      v11 = sub_1BE053D64();
      v97, v98, v99, v100, v101, v102, v103, v104;
      v105 = -1 << *(v9 + 32);
      v106 = v11 & ~v105;
      v12 = v106 >> 6;
      v8 = 1 << v106;
      if (((1 << v106) & v187[v106 >> 6]) != 0)
      {
        v107 = ~v105;
        while (1)
        {
          v108 = sub_1BE052434();
          v110 = v109;
          v111 = sub_1BE052434();
          v11 = v112;
          if (v108 == v111 && v110 == v112)
          {

            v110, v129, v130, v131, v132, v133, v134, v135;
            v11, v136, v137, v138, v139, v140, v141, v142;
            goto LABEL_46;
          }

          v114 = sub_1BE053B84();
          v110, v115, v116, v117, v118, v119, v120, v121;
          v11, v122, v123, v124, v125, v126, v127, v128;
          if (v114)
          {
            break;
          }

          v106 = (v106 + 1) & v107;
          v12 = v106 >> 6;
          v8 = 1 << v106;
          if (((1 << v106) & v187[v106 >> 6]) == 0)
          {
            goto LABEL_28;
          }
        }

LABEL_46:
        v145 = v180[v12];
        v180[v12] = v145 & ~v8;
        v88 = v183;
        v89 = v182;
        v90 = v181;
        v91 = v186;
        if ((v145 & v8) != 0)
        {
          v87 = v179 - 1;
          if (__OFSUB__(v179, 1))
          {
            __break(1u);
          }

          if (v179 == 1)
          {
            v9, v143, v18, v144, v81, v82, v83, v84;
            v9 = MEMORY[0x1E69E7CD0];
            goto LABEL_54;
          }

          goto LABEL_27;
        }
      }

      else
      {
LABEL_28:

        v88 = v183;
        v89 = v182;
        v90 = v181;
        v91 = v186;
      }
    }

    v92 = v91;
    while (1)
    {
      v93 = (v92 + 1);
      if (__OFADD__(v92, 1))
      {
        __break(1u);
        goto LABEL_58;
      }

      if (v93 >= v90)
      {
        break;
      }

      v15 = *&v89[8 * v93];
      ++v92;
      if (v15)
      {
        v91 = v93;
        goto LABEL_35;
      }
    }

    if (v90 <= v91 + 1)
    {
      v146 = v91 + 1;
    }

    else
    {
      v146 = v90;
    }

    v188 = v88;
    v189 = v89;
    v190 = v185;
    v191 = v146 - 1;
    v192 = 0;
    sub_1BD2AEE90(v180, v177, v179, v9, v81, v82, v83, v84);
    v9 = v147;
LABEL_54:
    v17 = v188;
    v61 = v189;
    v62 = v190;
    v22 = v191;
    v63 = v192;
LABEL_55:
    sub_1BD0D45FC(v17, v61, v62, v22, v63, v19, v20, v21);
    return v9;
  }

  v157 = swift_slowAlloc();
  memcpy(v157, v187, v149);
  v158 = v176;
  sub_1BD2AE994(v157, v177, v9, v11, &v188);
  v160 = v159;
  v9, v161, v162, v163, v164, v165, v166, v167;
  if (!v158)
  {
    v9, v168, v169, v170, v171, v172, v173, v174;
    MEMORY[0x1BFB45F20](v157, -1, -1);
    v9 = v160;
    goto LABEL_54;
  }

  result = MEMORY[0x1BFB45F20](v157, -1, -1);
  __break(1u);
  return result;
}

void sub_1BD2AE66C(unint64_t *result, const char *a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = (v6 - 1);
  v70 = a3 + 56;
LABEL_2:
  v67 = v7;
LABEL_3:
  while (2)
  {
    v8 = a5[3];
    v9 = a5[4];
    if (v9)
    {
      v10 = a5[3];
LABEL_9:
      v13 = *(*(*a5 + 48) + (__clz(__rbit64(v9)) | (v10 << 6)));
      a5[3] = v10;
      a5[4] = (v9 - 1) & v9;
      sub_1BE053D04();
      if (v13)
      {
        if (v13 == 1)
        {
          v14 = 0xEE00415049506165;
        }

        else
        {
          v14 = 0x80000001BE117610;
        }
      }

      else
      {
        v14 = 0xE400000000000000;
      }

      sub_1BE052524();
      v14, v15, v16, v17, v18, v19, v20, v21;
      v22 = sub_1BE053D64();
      v29 = -1 << *(a3 + 32);
      v30 = v22 & ~v29;
      v31 = v30 >> 6;
      v32 = 1 << v30;
      if (((1 << v30) & *(v70 + 8 * (v30 >> 6))) == 0)
      {
        continue;
      }

      v33 = ~v29;
      while (1)
      {
        if (*(*(a3 + 48) + v30))
        {
          if (*(*(a3 + 48) + v30) == 1)
          {
            v34 = 0x726F4B6874756F73;
            v35 = 0xEE00415049506165;
            if (v13)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v34 = 0xD000000000000010;
            v35 = 0x80000001BE117610;
            if (v13)
            {
LABEL_21:
              if (v13 == 1)
              {
                v36 = 0x726F4B6874756F73;
              }

              else
              {
                v36 = 0xD000000000000010;
              }

              if (v13 == 1)
              {
                v37 = 0xEE00415049506165;
              }

              else
              {
                v37 = 0x80000001BE117610;
              }

              if (v34 != v36)
              {
                goto LABEL_32;
              }

              goto LABEL_31;
            }
          }
        }

        else
        {
          v35 = 0xE400000000000000;
          v34 = 1919968359;
          if (v13)
          {
            goto LABEL_21;
          }
        }

        v37 = 0xE400000000000000;
        v36 = 1919968359;
        if (v34 != 1919968359)
        {
          goto LABEL_32;
        }

LABEL_31:
        if (v35 == v37)
        {
          v35, v23, v36, v24, v25, v26, v27, v28;
          v37, v53, v54, v55, v56, v57, v58, v59;
LABEL_36:
          v60 = result[v31];
          result[v31] = v60 & ~v32;
          if ((v60 & v32) != 0)
          {
            v7 = v67 - 1;
            if (__OFSUB__(v67, 1))
            {
              goto LABEL_45;
            }

            if (v67 == 1)
            {
              return;
            }

            goto LABEL_2;
          }

          goto LABEL_3;
        }

LABEL_32:
        v38 = sub_1BE053B84();
        v35, v39, v40, v41, v42, v43, v44, v45;
        v37, v46, v47, v48, v49, v50, v51, v52;
        if (v38)
        {
          goto LABEL_36;
        }

        v30 = (v30 + 1) & v33;
        v31 = v30 >> 6;
        v32 = 1 << v30;
        if ((*(v70 + 8 * (v30 >> 6)) & (1 << v30)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v11 = (a5[2] + 64) >> 6;
  v12 = a5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      return;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(a5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  if (v11 <= v8 + 1)
  {
    v61 = v8 + 1;
  }

  else
  {
    v61 = (a5[2] + 64) >> 6;
  }

  a5[3] = v61 - 1;
  a5[4] = 0;
  sub_1BE048964();
  sub_1BD2AEC20(result, a2, v67, a3, v62, v63, v64, v65);
}

void sub_1BD2AE994(unint64_t *a1, const char *a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = (v6 - 1);
  v76 = a3 + 56;
  v74 = a5;
  while (2)
  {
    v72 = v7;
    do
    {
      while (1)
      {
        v8 = a5[3];
        v9 = a5[4];
        if (!v9)
        {
          v11 = (a5[2] + 64) >> 6;
          v12 = a5[3];
          while (1)
          {
            v10 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v10 >= v11)
            {
              break;
            }

            v9 = *(a5[1] + 8 * v10);
            ++v12;
            if (v9)
            {
              goto LABEL_10;
            }
          }

          if (v11 <= v8 + 1)
          {
            v66 = v8 + 1;
          }

          else
          {
            v66 = (a5[2] + 64) >> 6;
          }

          a5[3] = v66 - 1;
          a5[4] = 0;
          sub_1BE048964();
          sub_1BD2AEE90(a1, a2, v72, a3, v67, v68, v69, v70);
          return;
        }

        v10 = a5[3];
LABEL_10:
        v13 = *(*(*a5 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));
        a5[3] = v10;
        a5[4] = (v9 - 1) & v9;
        sub_1BE052434();
        v15 = v14;
        sub_1BE053D04();
        v75 = v13;
        sub_1BE052524();
        v16 = sub_1BE053D64();
        v15, v17, v18, v19, v20, v21, v22, v23;
        v24 = -1 << *(a3 + 32);
        v25 = v16 & ~v24;
        v26 = v25 >> 6;
        v27 = 1 << v25;
        if (((1 << v25) & *(v76 + 8 * (v25 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        a5 = v74;
      }

      v28 = ~v24;
      while (1)
      {
        v29 = sub_1BE052434();
        v31 = v30;
        v32 = sub_1BE052434();
        v34 = v33;
        if (v29 == v32 && v31 == v33)
        {

          v31, v51, v52, v53, v54, v55, v56, v57;
          v34, v58, v59, v60, v61, v62, v63, v64;
          goto LABEL_21;
        }

        v36 = sub_1BE053B84();
        v31, v37, v38, v39, v40, v41, v42, v43;
        v34, v44, v45, v46, v47, v48, v49, v50;
        if (v36)
        {
          break;
        }

        v25 = (v25 + 1) & v28;
        v26 = v25 >> 6;
        v27 = 1 << v25;
        if (((1 << v25) & *(v76 + 8 * (v25 >> 6))) == 0)
        {
          goto LABEL_3;
        }
      }

LABEL_21:
      a5 = v74;
      v65 = a1[v26];
      a1[v26] = v65 & ~v27;
    }

    while ((v65 & v27) == 0);
    v7 = v72 - 1;
    if (__OFSUB__(v72, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v72 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1BD2AEC20(unint64_t *a1, const char *a2, char *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a4;
  if (!a3)
  {
    v13 = MEMORY[0x1E69E7CD0];
LABEL_6:
    v8, a2, a3, a4, a5, a6, a7, a8;
    return v13;
  }

  v9 = a3;
  if (a4[2] == a3)
  {
    return v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40640, &qword_1BE0C82F8);
  result = sub_1BE053804();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_17:
    v20 = *(v8[6] + (v17 | (v15 << 6)));
    sub_1BE053D04();
    if (v20)
    {
      if (v20 == 1)
      {
        v21 = 0xEE00415049506165;
      }

      else
      {
        v21 = 0x80000001BE117610;
      }
    }

    else
    {
      v21 = 0xE400000000000000;
    }

    sub_1BE052524();
    v21, v22, v23, v24, v25, v26, v27, v28;
    result = sub_1BE053D64();
    v29 = -1 << *(v13 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v16 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_32;
        }
      }

      goto LABEL_36;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_32:
    *(v16 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    *(*(v13 + 48) + v32) = v20;
    ++*(v13 + 16);
    if (__OFSUB__(v9--, 1))
    {
      goto LABEL_37;
    }

    if (!v9)
    {
      goto LABEL_6;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_6;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_1BD2AEE90(unint64_t *a1, const char *a2, char *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a4;
  if (a3)
  {
    v9 = a3;
    if (a4[2] != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD406A0, &unk_1BE0DF7E0);
      v12 = sub_1BE053804();
      v13 = v12;
      if (a2 < 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = *a1;
      }

      v15 = 0;
      v16 = v12 + 56;
      v41 = v8;
      while (v14)
      {
        v17 = __clz(__rbit64(v14));
        v42 = (v14 - 1) & v14;
LABEL_16:
        v20 = *(v8[6] + 8 * (v17 | (v15 << 6)));
        sub_1BE052434();
        v22 = v21;
        sub_1BE053D04();
        v23 = v20;
        sub_1BE052524();
        v24 = sub_1BE053D64();
        v22, v25, v26, v27, v28, v29, v30, v31;
        v32 = -1 << *(v13 + 32);
        v33 = v24 & ~v32;
        v34 = v33 >> 6;
        if (((-1 << v33) & ~*(v16 + 8 * (v33 >> 6))) == 0)
        {
          v36 = 0;
          v37 = (63 - v32) >> 6;
          while (++v34 != v37 || (v36 & 1) == 0)
          {
            v38 = v34 == v37;
            if (v34 == v37)
            {
              v34 = 0;
            }

            v36 |= v38;
            v39 = *(v16 + 8 * v34);
            if (v39 != -1)
            {
              v35 = __clz(__rbit64(~v39)) + (v34 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v35 = __clz(__rbit64((-1 << v33) & ~*(v16 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v16 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
        *(*(v13 + 48) + 8 * v35) = v23;
        ++*(v13 + 16);
        if (__OFSUB__(v9--, 1))
        {
          goto LABEL_31;
        }

        v8 = v41;
        v14 = v42;
        if (!v9)
        {
          goto LABEL_5;
        }
      }

      v18 = v15;
      while (1)
      {
        v15 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v15 >= a2)
        {
          goto LABEL_5;
        }

        v19 = a1[v15];
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v42 = (v19 - 1) & v19;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
    v8, a2, a3, a4, a5, a6, a7, a8;
  }
}

uint64_t sub_1BD2AF0FC(unint64_t *a1, const char *a2, char *a3, void *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8)
{
  v8 = a4;
  if (!a3)
  {
    v13 = MEMORY[0x1E69E7CD0];
LABEL_6:
    v8, a2, a3, a4, a5, a6, a7, a8;
    return v13;
  }

  v9 = a3;
  if (a4[2] == a3)
  {
    return v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_1BE053804();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_17:
    v20 = *(v8[6] + 8 * (v17 | (v15 << 6)));
    result = sub_1BE053064();
    v21 = -1 << *(v13 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v16 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v16 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v16 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v16 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v13 + 48) + 8 * v24) = v20;
    ++*(v13 + 16);
    if (__OFSUB__(v9--, 1))
    {
      goto LABEL_32;
    }

    if (!v9)
    {
      goto LABEL_6;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_6;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id sub_1BD2AF2E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
  *&v3[OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
  *&v3[OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_identifier];
  *v7 = 0xD000000000000011;
  *(v7 + 1) = 0x80000001BE1212F0;
  *&v3[OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_configuration] = a2;
  sub_1BE052434();
  v9 = v8;
  sub_1BE048964();
  sub_1BE048964();
  v10 = sub_1BE04BB74();
  v9, v11, v12, v13, v14, v15, v16, v17;
  *&v3[OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_reporter] = v10;
  v19.receiver = v3;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t sub_1BD2AF428(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD2AF470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD2AF4D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 static LayoutUtilities.divide(rect:slice:remainder:amount:edge:)(uint64_t a1, uint64_t a2, CGRectEdge a3, double a4, double a5, double a6, double a7, CGFloat a8)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(&slice, 0, sizeof(slice));
  memset(&v13, 0, sizeof(v13));
  CGRectDivide(*&a4, &slice, &v13, a8, a3);
  result = v13.origin;
  size = v13.size;
  v12 = slice.size;
  *a1 = slice.origin;
  *(a1 + 16) = v12;
  *a2 = result;
  *(a2 + 16) = size;
  return result;
}

double CGRect.center.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

uint64_t sub_1BD2AF648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BD2AF6E0@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a1;
  v33 = a7;
  v11 = *(a5 - 8);
  v31 = a6;
  v32 = v11;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40790, &qword_1BE0C8470);
  v14 = sub_1BE04EBD4();
  v30 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  v43 = a3;
  v44 = a4;
  v20 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD407A8, &qword_1BE0C8478);
  sub_1BE0516A4();
  v21 = v42;
  v22 = a2;
  v23 = v29;
  v29(v42);

  v24 = v31;
  v34 = a5;
  v35 = v31;
  v36 = v23;
  v37 = v22;
  v38 = a3;
  v39 = v20;
  sub_1BE051CD4();
  sub_1BD2AFA10();
  sub_1BE050814();
  (*(v32 + 8))(v13, a5);
  v25 = sub_1BD2AFA64();
  v40 = v24;
  v41 = v25;
  swift_getWitnessTable();
  sub_1BD147308();
  v26 = *(v30 + 8);
  v26(v16, v14);
  sub_1BD147308();
  return (v26)(v19, v14);
}

void *sub_1BD2AF9B8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD407A8, &qword_1BE0C8478);
  result = sub_1BE0516A4();
  *a1 = v3;
  return result;
}

unint64_t sub_1BD2AFA10()
{
  result = qword_1EBD40798;
  if (!qword_1EBD40798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40798);
  }

  return result;
}

unint64_t sub_1BD2AFA64()
{
  result = qword_1EBD407A0;
  if (!qword_1EBD407A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40790, &qword_1BE0C8470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD407A0);
  }

  return result;
}

uint64_t sub_1BD2AFADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD2AFBCC();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD2AFB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD2AFBCC();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD2AFBA4(uint64_t a1)
{
  sub_1BD2AFBCC();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BD2AFBCC()
{
  result = qword_1EBD407B0;
  if (!qword_1EBD407B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD407B0);
  }

  return result;
}

uint64_t sub_1BD2AFC20()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BD2AFC94()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BD2AFD08()
{
  v1 = v0;
  v2 = sub_1BE04AA64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_1BE04D8B4(&v31);
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v7, v15, v16, v17, v18, v19, v20, v21;
  if (v31)
  {

    return;
  }

  if ([*(v1 + OBJC_IVAR____TtC9PassKitUI28TransactionGroupPresentation_group) type] != 3)
  {
    goto LABEL_11;
  }

  v22 = PKPassKitUIBundle();
  if (!v22)
  {
    __break(1u);
LABEL_11:
    sub_1BE053994();
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = sub_1BE052404();
  v25 = sub_1BE052404();
  v26 = [v23 URLForResource:v24 withExtension:v25];

  if (v26)
  {
    sub_1BE04A9F4();

    v27 = sub_1BE04A9C4();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v27 = 0;
  }

  v28 = PKUIScreenScale();
  v29 = PKUIImageFromPDF(v27, 45.0, 45.0, v28);

  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v29;
  sub_1BE048964();
  sub_1BE04D8C4();
}

uint64_t sub_1BD2AFFB4()
{
  v1 = OBJC_IVAR____TtC9PassKitUI28TransactionGroupPresentation__icon;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770, &qword_1BE0ECB90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI28TransactionGroupPresentation__presentationInformation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD407E8, &qword_1BE0EF170);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TransactionGroupPresentation(uint64_t a1)
{
  result = qword_1EBD407C8;
  if (!qword_1EBD407C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD2B010C(uint64_t a1)
{
  sub_1BD2B01E4(319);
  if (v1 <= 0x3F)
  {
    sub_1BD2B0248(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD2B01E4(uint64_t a1)
{
  if (!qword_1EBD4F720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD4AB00, &qword_1BE0C85C0);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD4F720);
    }
  }
}

void sub_1BD2B0248(uint64_t a1)
{
  if (!qword_1EBD407D8)
  {
    sub_1BD2B02A0();
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD407D8);
    }
  }
}

unint64_t sub_1BD2B02A0()
{
  result = qword_1EBD407E0;
  if (!qword_1EBD407E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD407E0);
  }

  return result;
}

uint64_t sub_1BD2B02EC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TransactionGroupPresentation(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

void sub_1BD2B032C(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + OBJC_IVAR____TtC9PassKitUI28TransactionGroupPresentation_group) identifier];
  v4 = sub_1BE052434();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

void sub_1BD2B0390(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD2B0410(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD2B0488(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD2B0508(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  v3 = v2;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD2B0580(void *a1)
{
  v3 = sub_1BE04AF64();
  v112 = *(v3 - 8);
  v113 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v111 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v116 = sub_1BE04B104();
  v5 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v7 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04B2F4();
  v114 = *(v8 - 8);
  v115 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770, &qword_1BE0ECB90);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v110 - v13;
  v15 = OBJC_IVAR____TtC9PassKitUI28TransactionGroupPresentation__icon;
  v119[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4AB00, &qword_1BE0C85C0);
  sub_1BE04D874();
  (*(v12 + 32))(v1 + v15, v14, v11);
  *(v1 + OBJC_IVAR____TtC9PassKitUI28TransactionGroupPresentation_group) = a1;
  swift_beginAccess();
  v16 = *(v12 + 8);
  v17 = a1;
  v16(v1 + v15, v11);
  v118 = 0;
  sub_1BE04D874();
  swift_endAccess();
  v18 = [objc_allocWithZone(MEMORY[0x1E69B8EC0]) init];
  swift_beginAccess();
  v118 = v18;
  sub_1BD2B02A0();
  sub_1BE04D874();
  swift_endAccess();
  if ([v17 type] == 3)
  {
    v19 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v20 = v116;
    (*(v5 + 104))(v7, *MEMORY[0x1E6969868], v116);
    sub_1BE04B114();
    (*(v5 + 8))(v7, v20);
    v21 = sub_1BE04B1D4();
    (*(v114 + 8))(v10, v115);
    [v19 setCalendar_];

    v22 = sub_1BE052404();
    [v19 setLocalizedDateFormatFromTemplate_];

    KeyPath = swift_getKeyPath();
    v24 = swift_getKeyPath();
    sub_1BE04D8B4(v119);
    KeyPath, v25, v26, v27, v28, v29, v30, v31;
    v24, v32, v33, v34, v35, v36, v37, v38;
    v39 = v119[0];
    v40 = sub_1BE052404();
    v41 = PKLocalizedPeerPaymentString(v40);

    if (v41)
    {
      sub_1BE052434();
      v43 = v42;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v44 = swift_allocObject();
      v116 = xmmword_1BE0B69E0;
      *(v44 + 16) = xmmword_1BE0B69E0;
      v45 = [v17 startDate];
      v46 = v111;
      sub_1BE04AEE4();

      v47 = sub_1BE04AE64();
      (*(v112 + 8))(v46, v113);
      v48 = [v19 stringFromDate_];

      v49 = sub_1BE052434();
      v50 = v17;
      v52 = v51;

      *(v44 + 56) = MEMORY[0x1E69E6158];
      *(v44 + 64) = sub_1BD110550();
      *(v44 + 32) = v49;
      *(v44 + 40) = v52;
      sub_1BE052454();
      v54 = v53;
      v43, v53, v55, v56, v57, v58, v59, v60;
      v61 = sub_1BE052404();
      v54, v62, v63, v64, v65, v66, v67, v68;
      [v39 setPrimaryString_];

      v69 = swift_getKeyPath();
      v70 = swift_getKeyPath();
      sub_1BE04D8B4(v119);
      v69, v71, v72, v73, v74, v75, v76, v77;
      v70, v78, v79, v80, v81, v82, v83, v84;
      v85 = v119[0];
      v86 = sub_1BE052404();
      v87 = PKLocalizedString(v86);

      if (v87)
      {
        sub_1BE052434();
        v89 = v88;

        v90 = swift_allocObject();
        *(v90 + 16) = v116;
        v91 = [v50 transactionCount];
        v92 = MEMORY[0x1E69E65A8];
        *(v90 + 56) = MEMORY[0x1E69E6530];
        *(v90 + 64) = v92;
        *(v90 + 32) = v91;
        sub_1BE052454();
        v94 = v93;
        v89, v93, v95, v96, v97, v98, v99, v100;
        v101 = sub_1BE052404();
        v94, v102, v103, v104, v105, v106, v107, v108;
        [v85 setSecondaryString_];

        return v117;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD2B0CFC()
{
  v1 = [*(v0 + 40) localizedRecoveryOptions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BE052744();

  if (!v3[2])
  {
    v3, v4, v5, v6, v7, v8, v9, v10;
    return 0;
  }

  v11 = v3[4];
  sub_1BE048C84();
  v3, v12, v13, v14, v15, v16, v17, v18;
  return v11;
}

uint64_t sub_1BD2B0D8C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 40) userInfo];
  v4 = sub_1BE052244();

  v5 = sub_1BE052434();
  v13 = v6;
  if (v4[2])
  {
    v14 = sub_1BD148F70(v5, v6);
    v16 = v15;
    v13, v15, v17, v18, v19, v20, v21, v22;
    if (v16)
    {
      sub_1BD038CD0(v4[7] + 32 * v14, &v43);
      v4, v30, v31, v32, v33, v34, v35, v36;
      v37 = sub_1BE04AA64();
      v38 = swift_dynamicCast();
      return (*(*(v37 - 8) + 56))(a1, v38 ^ 1u, 1, v37);
    }

    v40 = v4;
  }

  else
  {
    v4, v6, v7, v8, v9, v10, v11, v12;
    v40 = v13;
  }

  v40, v23, v24, v25, v26, v27, v28, v29;
  v41 = sub_1BE04AA64();
  v42 = *(*(v41 - 8) + 56);

  return v42(a1, 1, 1, v41);
}

uint64_t sub_1BD2B0F30()
{
  v1 = *v0;
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD2B0F60()
{
  v1 = *(v0 + 16);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD2B0F98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 33) = a7;
  *(a9 + 34) = a8;
  *(a9 + 40) = result;
  return result;
}

double sub_1BD2B0FB4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1BD2B1EAC(a2, v5);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

uint64_t sub_1BD2B0FFC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1BD2B1050(v7, v8) & 1;
}

uint64_t sub_1BD2B1050(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((*(a1 + 32) ^ *(a2 + 32)) & 1) != 0 || ((*(a1 + 33) ^ *(a2 + 33)) & 1) != 0 || ((*(a1 + 34) ^ *(a2 + 34)))
  {
    return 0;
  }

  sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
  return sub_1BE053074() & 1;
}

BOOL sub_1BD2B1138(void *a1)
{
  v2 = [a1 domain];
  v3 = sub_1BE052434();
  v5 = v4;

  v6 = sub_1BE052434();
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v5, v7, v8, v9, v10, v11, v12, v13;
    v14, v31, v32, v33, v34, v35, v36, v37;
  }

  else
  {
    v16 = sub_1BE053B84();
    v5, v17, v18, v19, v20, v21, v22, v23;
    v14, v24, v25, v26, v27, v28, v29, v30;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  return [a1 code] == -2008 || objc_msgSend(a1, sel_code) == -2009 || objc_msgSend(a1, sel_code) == -2015;
}

void sub_1BD2B1238(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v276 - v7;
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v276 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v276 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v276 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v276 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v276 - v26;
  if (!a2)
  {

LABEL_11:
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
LABEL_12:
    *a3 = v41;
    a3[1] = v42;
    a3[2] = v43;
    a3[3] = v44;
    a3[4] = v45;
    a3[5] = v46;
    return;
  }

  v286 = v25;
  v287 = v24;
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (!v28)
  {

    goto LABEL_11;
  }

  v281 = v12;
  v284 = v28;
  v29 = [v28 error];
  if (!v29)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v30 = v29;
  v282 = v10;
  v31 = [v29 localizedFailureReason];
  if (v31)
  {
    v32 = v31;
    v285 = sub_1BE052434();
    v288 = v33;
  }

  else
  {
    v285 = 0;
    v288 = 0;
  }

  if (sub_1BD2B1138(v30))
  {

    v288, v34, v35, v36, v37, v38, v39, v40;
    goto LABEL_11;
  }

  v283 = a1;
  v279 = a2;
  v47 = [v30 domain];
  v48 = sub_1BE052434();
  v50 = v49;

  v280 = *MEMORY[0x1E69BBBC8];
  v52 = sub_1BE052434();
  v58 = v51;
  if (v48 == v52 && v50 == v51)
  {
    v50, v51, v52, v53, v54, v55, v56, v57;
    v58, v59, v60, v61, v62, v63, v64, v65;
  }

  else
  {
    v66 = sub_1BE053B84();
    v50, v67, v68, v69, v70, v71, v72, v73;
    v58, v74, v75, v76, v77, v78, v79, v80;
    if ((v66 & 1) == 0)
    {
LABEL_37:
      LODWORD(v286) = 0;
      v43 = 0;
      v44 = 0;
LABEL_38:
      v134 = v283;
      v42 = v288;
      goto LABEL_39;
    }
  }

  if ([v30 code] != -2007)
  {
    goto LABEL_37;
  }

  v81 = [v30 userInfo];
  v82 = sub_1BE052244();

  v83 = sub_1BE052434();
  v91 = v84;
  if (!v82[2])
  {
    v82, v84, v85, v86, v87, v88, v89, v90;
    v133 = v91;
LABEL_26:
    v133, v100, v101, v102, v103, v104, v105, v106;
    v42 = v288;
    LODWORD(v286) = 0;
    v43 = 0;
    v44 = 0;
    v134 = v283;
LABEL_39:
    v41 = v285;
    goto LABEL_40;
  }

  v277 = sub_1BD148F70(v83, v84);
  v93 = v92;
  v91, v92, v94, v95, v96, v97, v98, v99;
  if ((v93 & 1) == 0)
  {
    v133 = v82;
    goto LABEL_26;
  }

  sub_1BD038CD0(v82[7] + 32 * v277, v290);
  v82, v107, v108, v109, v110, v111, v112, v113;
  sub_1BD0E5E8C(0, &qword_1EBD45E80, 0x1E696ABC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  v277 = v289;
  v114 = [v289 domain];
  v115 = sub_1BE052434();
  v117 = v116;

  v119 = sub_1BE052434();
  v125 = v118;
  if (v115 == v119 && v117 == v118)
  {
    v117, v118, v119, v120, v121, v122, v123, v124;
    v125, v126, v127, v128, v129, v130, v131, v132;
  }

  else
  {
    v135 = sub_1BE053B84();
    v117, v136, v137, v138, v139, v140, v141, v142;
    v125, v143, v144, v145, v146, v147, v148, v149;
    if ((v135 & 1) == 0)
    {

      goto LABEL_37;
    }
  }

  v150 = v277;
  v151 = [v277 code];
  if ((v151 & 0x8000000000000000) != 0)
  {

    goto LABEL_37;
  }

  v41 = v285;
  if (v151 != 2)
  {

    LODWORD(v286) = 0;
    v43 = 0;
    v44 = 0;
    v134 = v283;
    v42 = v288;
    goto LABEL_40;
  }

  v288, v152, v153, v154, v155, v156, v157, v158;
  v159 = [v283 paymentRequest];
  if (!v159)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v160 = v159;
  v161 = [v159 isVirtualCardEnrollmentRequest];

  if (v161)
  {
    v162 = *MEMORY[0x1E69B8058];
    v163 = v282;
    v164 = *(v282 + 104);
    v164(v27, v162, v287);
    v165 = PKPassKitBundle();
    if (!v165)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v166 = v165;
    v285 = sub_1BE04B6F4();
    v288 = v167;

    v168 = *(v163 + 8);
    v169 = v287;
    v168(v27, v287);
    v164(v22, v162, v169);
    v170 = PKPassKitBundle();
    if (!v170)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v171 = v170;
    v43 = sub_1BE04B6F4();
    v44 = v172;

    v168(v22, v287);
    LODWORD(v286) = 1;
    goto LABEL_38;
  }

  v241 = v283;
  v242 = [v283 paymentRequest];
  if (!v242)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v243 = v242;
  v244 = [v242 originatingURL];

  if (v244)
  {
    sub_1BE04A9F4();

    v245 = sub_1BE04AA64();
    (*(*(v245 - 8) + 56))(v8, 0, 1, v245);
    sub_1BD226BBC(v8);
    v246 = v282;
    (*(v282 + 104))(v19, *MEMORY[0x1E69B8068], v287);
    v247 = PKPassKitBundle();
    if (!v247)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v248 = v247;
    v41 = sub_1BE04B6F4();
    v42 = v249;

    (*(v246 + 8))(v19, v287);
    v43 = 0;
    v44 = 0;
    LODWORD(v286) = 1;
    v134 = v241;
LABEL_40:
    v173 = [v30 domain];
    v174 = sub_1BE052434();
    v176 = v175;

    v178 = sub_1BE052434();
    v184 = v177;
    v278 = v30;
    if (v174 == v178 && v176 == v177)
    {
      v176, v177, v178, v179, v180, v181, v182, v183;
      v184, v185, v186, v187, v188, v189, v190, v191;
    }

    else
    {
      v192 = sub_1BE053B84();
      v176, v193, v194, v195, v196, v197, v198, v199;
      v184, v200, v201, v202, v203, v204, v205, v206;
      if ((v192 & 1) == 0)
      {
LABEL_48:
        if (v42)
        {
          v224 = v134;
          v227 = 0;
          v228 = v284;
          v229 = v279;
LABEL_54:
          v230 = v286;
LABEL_55:
          v239 = [v228 isClientFailure];

          v240 = 256;
          if (!v239)
          {
            v240 = 0;
          }

          v45 = v227 | v230 | v240;
          v46 = v278;
          goto LABEL_12;
        }

        v232 = v281;
        v231 = v282;
        (*(v282 + 104))(v281, *MEMORY[0x1E69B8068], v287);
        v233 = PKPassKitBundle();
        v229 = v279;
        if (v233)
        {
          v234 = v233;
          v235 = sub_1BE04B6F4();
          v237 = v236;

          v238 = v232;
          v42 = v237;
          v41 = v235;
          (*(v231 + 8))(v238, v287);
          v227 = 0;
          v224 = v283;
          v228 = v284;
          goto LABEL_54;
        }

        goto LABEL_68;
      }
    }

    if ([v30 code] == -9003 || objc_msgSend(v30, sel_code) == -9004)
    {
      v44, v207, v208, v209, v210, v211, v212, v213;
      v42, v214, v215, v216, v217, v218, v219, v220;
      v221 = [v30 localizedDescription];
      v41 = sub_1BE052434();
      v42 = v222;

      v223 = [v30 localizedFailureReason];
      v224 = v134;
      if (v223)
      {
        v225 = v223;
        v43 = sub_1BE052434();
        v44 = v226;
      }

      else
      {
        v43 = 0;
        v44 = 0;
      }

      v228 = v284;
      v229 = v279;
      v230 = 0;
      v227 = 0x10000;
      goto LABEL_55;
    }

    goto LABEL_48;
  }

  v250 = sub_1BE04AA64();
  (*(*(v250 - 8) + 56))(v8, 1, 1, v250);
  sub_1BD226BBC(v8);
  v251 = *MEMORY[0x1E69B8068];
  v252 = v282;
  v253 = *(v282 + 104);
  v253(v16, *MEMORY[0x1E69B8068], v287);
  v254 = PKPassKitBundle();
  if (!v254)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v255 = v254;
  v285 = v253;
  LODWORD(v288) = v251;
  sub_1BE04B6F4();
  v257 = v256;

  v276 = *(v252 + 8);
  v276(v16, v287);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v258 = swift_allocObject();
  *(v258 + 16) = xmmword_1BE0B69E0;
  v259 = [v241 hostAppLocalizedName];
  if (!v259)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v260 = v259;
  v261 = sub_1BE052434();
  v263 = v262;

  *(v258 + 56) = MEMORY[0x1E69E6158];
  *(v258 + 64) = sub_1BD110550();
  *(v258 + 32) = v261;
  *(v258 + 40) = v263;
  v41 = sub_1BE052454();
  v265 = v264;
  v257, v264, v266, v267, v268, v269, v270, v271;
  v272 = v286;
  v285(v286, v288, v287);
  v273 = PKPassKitBundle();
  if (v273)
  {
    v274 = v273;
    v43 = sub_1BE04B6F4();
    v44 = v275;

    v276(v272, v287);
    LODWORD(v286) = 1;
    v134 = v283;
    v42 = v265;
    goto LABEL_40;
  }

LABEL_76:
  __break(1u);
}

void sub_1BD2B1EAC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE04A844();
  v5 = [v4 domain];
  v6 = sub_1BE052434();
  v8 = v7;

  v9 = sub_1BE052434();
  v17 = v10;
  if (v6 == v9 && v8 == v10)
  {
    v8, v10, v11, v12, v13, v14, v15, v16;
    v17, v39, v40, v41, v42, v43, v44, v45;
  }

  else
  {
    v19 = sub_1BE053B84();
    v8, v20, v21, v22, v23, v24, v25, v26;
    v17, v27, v28, v29, v30, v31, v32, v33;
    if ((v19 & 1) == 0)
    {

      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
LABEL_12:
      *a2 = v34;
      a2[1] = v35;
      a2[2] = v36;
      a2[3] = v37;
      a2[4] = 0;
      a2[5] = v38;
      return;
    }
  }

  v46 = v4;
  v47 = sub_1BE04A844();

  v48 = PKTitleForDisplayableError();
  if (v48)
  {
    v34 = sub_1BE052434();
    v35 = v49;

    v38 = v46;
    v50 = sub_1BE04A844();

    v51 = MEMORY[0x1BFB42D10](v50);
    if (v51)
    {
      v36 = sub_1BE052434();
      v37 = v52;
    }

    else
    {

      v36 = 0;
      v37 = 0;
    }

    goto LABEL_12;
  }

  __break(1u);
}

unint64_t sub_1BD2B2064()
{
  result = qword_1EBD407F0;
  if (!qword_1EBD407F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD407F0);
  }

  return result;
}

unint64_t sub_1BD2B20BC()
{
  result = qword_1EBD407F8;
  if (!qword_1EBD407F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD407F8);
  }

  return result;
}

uint64_t type metadata accessor for PaymentOfferRewardsAmountEntry(uint64_t a1)
{
  result = qword_1EBD40800;
  if (!qword_1EBD40800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD2B2184(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD393D8, 0x1E69B8CC8);
  if (v1 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &unk_1EBD3E570, 0x1E69B8DA8);
    if (v2 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v3 <= 0x3F)
      {
        sub_1BD170C00(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD2B2274(id *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v61 - v6;
  v8 = type metadata accessor for PaymentOfferRewardsAmountEntry(0);
  v76 = *(v8 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - v12;
  v14 = sub_1BE04BD74();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, *MEMORY[0x1E69B8078], v14, v16);
  v19 = sub_1BE04B714();
  v77 = v20;
  (*(v15 + 8))(v18, v14);
  v21 = [a1[1] monetaryValue];
  v22 = [v21 currency];

  if (v22)
  {
    v71 = sub_1BE052434();
    v70 = v23;

    v65 = MEMORY[0x1BFB403C0](0);
    v64 = v24;
    v63 = v25;
    sub_1BD2B296C();
    v74 = v26;
    v73 = v27;
    v72 = v28;
    sub_1BD2B2D18();
    v69 = v29;
    v68 = v30;
    v67 = v31;
    sub_1BD2B31A4();
    v62 = v32;
    v33 = [*a1 dynamicContent];
    v75 = v19;
    if (v33)
    {
      v34 = v33;
      v35 = [v33 dynamicContentPageForPageType_];
    }

    else
    {
      v35 = 0;
    }

    v66 = [v35 footerContent];

    sub_1BD2B4E6C(a1, v13);
    v36 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v37 = swift_allocObject();
    sub_1BD2B4ED0(v13, v37 + v36);
    sub_1BD2B4E6C(a1, v10);
    v38 = swift_allocObject();
    sub_1BD2B4ED0(v10, v38 + v36);
    v80 = 0uLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
    sub_1BE051694();
    v39 = v85;
    *(a2 + 376) = v84;
    *(a2 + 392) = v39;
    *&v80 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC88, &unk_1BE0C88A0);
    sub_1BE051694();
    *(a2 + 400) = v84;
    LOBYTE(v80) = 0;
    sub_1BE051694();
    v40 = *(&v84 + 1);
    *(a2 + 416) = v84;
    *(a2 + 424) = v40;
    *(a2 + 432) = sub_1BE04E274() & 1;
    *(a2 + 440) = v41;
    *(a2 + 448) = v42 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40810, &unk_1BE0C8880);
    v43 = type metadata accessor for MultiHyperLinkDetailSheet(0);
    (*(*(v43 - 8) + 56))(v7, 1, 1, v43);
    sub_1BD0DE19C(v7, v78, &unk_1EBD45160, &qword_1BE0C25A0);
    sub_1BE051694();
    sub_1BD0DE53C(v7, &unk_1EBD45160, &qword_1BE0C25A0);
    v44 = v77;
    *a2 = v75;
    *(a2 + 8) = v44;
    v45 = v70;
    *(a2 + 16) = v71;
    *(a2 + 24) = v45;
    *&v84 = v65;
    *(&v84 + 1) = v64;
    LODWORD(v85) = v63;
    type metadata accessor for Decimal(0);
    sub_1BE051694();
    v46 = v81;
    *(a2 + 344) = v80;
    *(a2 + 360) = v46;
    v47 = v73;
    *(a2 + 32) = v74;
    *(a2 + 40) = v47;
    *(a2 + 48) = v72;
    *(a2 + 52) = v69;
    *(a2 + 60) = v68;
    *(a2 + 68) = v67;
    *(a2 + 72) = v62;
    sub_1BD2B3958(a1, &v84);
    v48 = sub_1BE04FC94();
    v49 = sub_1BE0501C4();
    LOBYTE(v83[0]) = 1;
    v50 = sub_1BE0501E4();
    sub_1BE04E1F4();
    v51 = v89;
    v52 = v90;
    *(a2 + 144) = v88;
    *(a2 + 160) = v51;
    *(a2 + 176) = v52;
    v53 = v91;
    v54 = v85;
    *(a2 + 80) = v84;
    *(a2 + 96) = v54;
    v55 = v87;
    *(a2 + 112) = v86;
    *(a2 + 128) = v55;
    *(a2 + 192) = v53;
    *(a2 + 196) = v48;
    *(a2 + 200) = v49;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 1;
    *(a2 + 244) = *(v83 + 3);
    v56 = *&v82[3];
    *(a2 + 241) = v83[0];
    *(a2 + 248) = v50;
    *(a2 + 252) = v56;
    *(a2 + 249) = *v82;
    *(a2 + 256) = v57;
    *(a2 + 264) = v58;
    *(a2 + 272) = v59;
    *(a2 + 280) = v60;
    *(a2 + 288) = 0;
    *(a2 + 296) = v66;
    *(a2 + 304) = 0;
    *(a2 + 312) = sub_1BD2B4F54;
    *(a2 + 320) = v37;
    *(a2 + 328) = sub_1BD2B50E0;
    *(a2 + 336) = v38;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD2B296C()
{
  v1 = [v0[1] monetaryValue];
  v2 = &selRef_chatWithHandle_;
  v3 = [v1 currency];

  if (v3)
  {
    v84 = sub_1BE052434();
    v5 = v4;
  }

  else
  {
    v84 = 0;
    v5 = 0;
  }

  v6 = [*v0 userEnteredMinimumAmounts];
  if (!v6)
  {
    v23 = v5;
LABEL_35:
    v23, v7, v8, v9, v10, v11, v12, v13;
    MEMORY[0x1BFB403B0](0.01);
    return;
  }

  v14 = v6;
  sub_1BD0E5E8C(0, &qword_1EBD43B00, 0x1E69B8780);
  sub_1BD2B5358();
  v15 = sub_1BE052A34();

  v83 = v15;
  if ((v15 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BE052A74();
    v15 = v89;
    v19 = v90;
    v20 = v91;
    v21 = v92;
    v22 = v93;
  }

  else
  {
    v24 = -1 << *(v15 + 32);
    v19 = (v15 + 56);
    v20 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v22 = (v26 & *(v15 + 56));
    sub_1BE048C84();
    v21 = 0;
  }

  v82 = v20;
  v27 = (v20 + 64) >> 6;
  v87 = v5;
  while (1)
  {
    if (v15 < 0)
    {
      if (!sub_1BE053744())
      {
        goto LABEL_34;
      }

      swift_dynamicCast();
      v32 = v88;
      v30 = v21;
      v31 = v22;
      if (!v88)
      {
LABEL_36:
        v5 = v87;
LABEL_34:
        sub_1BD0D45FC(v15, v19, v82, v21, v22, v16, v17, v18);
        v5, v59, v60, v61, v62, v63, v64, v65;
        v23 = v83;
        goto LABEL_35;
      }
    }

    else
    {
      v28 = v21;
      v29 = v22;
      v30 = v21;
      if (!v22)
      {
        while (1)
        {
          v30 = (v28 + 1);
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v30 >= v27)
          {
            v22 = 0;
            goto LABEL_34;
          }

          v29 = *&v19[8 * v30];
          ++v28;
          if (v29)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_41;
      }

LABEL_20:
      v31 = (v29 - 1) & v29;
      v32 = *(*(v15 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
      if (!v32)
      {
        goto LABEL_36;
      }
    }

    v86 = v21;
    v33 = [v32 v2[487]];
    if (!v33)
    {
      v5 = v87;
      if (!v87)
      {
        goto LABEL_38;
      }

      goto LABEL_14;
    }

    v37 = v33;
    v85 = v22;
    v38 = v15;
    v39 = v2;
    v40 = sub_1BE052434();
    v42 = v41;

    v5 = v87;
    if (!v87)
    {
      v42, v43, v44, v45, v46, v47, v48, v49;
      v2 = v39;
      v15 = v38;
      goto LABEL_14;
    }

    if (v40 == v84 && v87 == v42)
    {
      break;
    }

    v51 = sub_1BE053B84();
    v42, v52, v53, v54, v55, v56, v57, v58;
    v2 = v39;
    v15 = v38;
    v22 = v85;
    if (v51)
    {
      goto LABEL_38;
    }

LABEL_14:

    v21 = v30;
    v22 = v31;
  }

  v42, v43, v84, v45, v46, v47, v48, v49;
  v15 = v38;
  v22 = v85;
LABEL_38:
  sub_1BD0D45FC(v15, v19, v82, v86, v22, v34, v35, v36);
  v83, v66, v67, v68, v69, v70, v71, v72;
  v73 = [v32 amount];
  if (v73)
  {
    v81 = v73;
    v5, v74, v75, v76, v77, v78, v79, v80;
    sub_1BE0533F4();

    return;
  }

LABEL_41:
  __break(1u);
}

void sub_1BD2B2D18()
{
  v1 = *(v0 + 8);
  v2 = [v1 monetaryValue];
  v3 = &selRef_chatWithHandle_;
  v4 = [v2 currency];

  if (v4)
  {
    v106 = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v106 = 0;
    v6 = 0;
  }

  v7 = [*v0 userEnteredMaximumAmounts];
  if (v7)
  {
    v15 = v7;
    sub_1BD0E5E8C(0, &qword_1EBD43B00, 0x1E69B8780);
    sub_1BD2B5358();
    v16 = sub_1BE052A34();

    v103 = v1;
    v105 = v16;
    if ((v16 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1BE0536B4();
      sub_1BE052A74();
      v16 = v111;
      v20 = v112;
      v21 = v113;
      v22 = v114;
      v23 = v115;
    }

    else
    {
      v24 = -1 << *(v16 + 32);
      v20 = (v16 + 56);
      v21 = ~v24;
      v25 = -v24;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v23 = (v26 & *(v16 + 56));
      sub_1BE048C84();
      v22 = 0;
    }

    v104 = v21;
    v27 = (v21 + 64) >> 6;
    v109 = v6;
    while (1)
    {
      if (v16 < 0)
      {
        if (!sub_1BE053744())
        {
          goto LABEL_34;
        }

        swift_dynamicCast();
        v32 = v110;
        v30 = v22;
        v31 = v23;
        if (!v110)
        {
LABEL_37:
          v6 = v109;
LABEL_34:
          sub_1BD0D45FC(v16, v20, v104, v22, v23, v17, v18, v19);
          v6, v59, v60, v61, v62, v63, v64, v65;
          v105, v66, v67, v68, v69, v70, v71, v72;
          v1 = v103;
          goto LABEL_35;
        }
      }

      else
      {
        v28 = v22;
        v29 = v23;
        v30 = v22;
        if (!v23)
        {
          while (1)
          {
            v30 = (v28 + 1);
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v30 >= v27)
            {
              v23 = 0;
              goto LABEL_34;
            }

            v29 = *&v20[8 * v30];
            ++v28;
            if (v29)
            {
              goto LABEL_20;
            }
          }

          __break(1u);
          goto LABEL_43;
        }

LABEL_20:
        v31 = (v29 - 1) & v29;
        v32 = *(*(v16 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
        if (!v32)
        {
          goto LABEL_37;
        }
      }

      v108 = v22;
      v33 = [v32 v3[487]];
      if (v33)
      {
        v37 = v33;
        v107 = v23;
        v38 = v16;
        v39 = v3;
        v40 = sub_1BE052434();
        v42 = v41;

        v6 = v109;
        if (v109)
        {
          if (v40 == v106 && v109 == v42)
          {
            v42, v43, v106, v45, v46, v47, v48, v49;
            v16 = v38;
            v23 = v107;
LABEL_39:
            sub_1BD0D45FC(v16, v20, v104, v108, v23, v34, v35, v36);
            v105, v75, v76, v77, v78, v79, v80, v81;
            v82 = [v32 amount];
            if (!v82)
            {
              goto LABEL_44;
            }

            v90 = v82;
            v6, v83, v84, v85, v86, v87, v88, v89;
            v91 = sub_1BE0533F4();
            v93 = v92;
            v95 = v94;

            v96 = [v103 monetaryValue];
            v97 = [v96 amount];

            if (v97)
            {
              v98 = sub_1BE0533F4();
              v100 = v99;
              v102 = v101;

              MEMORY[0x1BFB403F0](v98, v100, v102, v91, v93, v95);
              return;
            }

LABEL_45:
            __break(1u);
            return;
          }

          v51 = sub_1BE053B84();
          v42, v52, v53, v54, v55, v56, v57, v58;
          v3 = v39;
          v16 = v38;
          v23 = v107;
          if (v51)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v42, v43, v44, v45, v46, v47, v48, v49;
          v3 = v39;
          v16 = v38;
        }
      }

      else
      {
        v6 = v109;
        if (!v109)
        {
          goto LABEL_39;
        }
      }

      v22 = v30;
      v23 = v31;
    }
  }

  v6, v8, v9, v10, v11, v12, v13, v14;
LABEL_35:
  v73 = [v1 monetaryValue];
  v74 = [v73 amount];

  if (!v74)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  sub_1BE0533F4();
}

void sub_1BD2B31A4()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0B7020;
  (*(v2 + 104))(v4, *MEMORY[0x1E69B8088], v1);
  sub_1BE04B714();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v8 = *(v0 + 8);
  v9 = [v8 monetaryValue];
  v10 = [v9 amount];

  if (v10)
  {
    sub_1BE0533F4();

    v11 = sub_1BE053344();
    v12 = [v8 monetaryValue];
    v13 = [v12 currency];

    if (v13)
    {
      sub_1BE052434();
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_1BE052404();
    v7, v17, v18, v19, v20, v21, v22, v23;
    if (v15)
    {
      v24 = sub_1BE052404();
      v15, v25, v26, v27, v28, v29, v30, v31;
    }

    else
    {
      v24 = 0;
    }

    v32 = [objc_opt_self() suggestionWithTitle:v16 value:v11 currencyCode:v24];

    if (v32)
    {
      *(v5 + 32) = v32;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD2B344C()
{
  v0 = sub_1BE04E664();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD2B353C(MEMORY[0x1E69BA468]);
  type metadata accessor for PaymentOfferRewardsAmountEntry(0);
  sub_1BD70A050(v3);
  sub_1BE04E654();
  return (*(v1 + 8))(v3, v0);
}

void sub_1BD2B353C(void *a1)
{
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BE0B6CA0;
  v3 = *MEMORY[0x1E69BB6C0];
  v4 = *MEMORY[0x1E69BB6F8];
  *(v2 + 32) = *MEMORY[0x1E69BB6C0];
  *(v2 + 40) = v4;
  type metadata accessor for PKAnalyticsSubject(0);
  v5 = v3;
  v6 = v4;
  v7 = sub_1BE052724();
  v2, v8, v9, v10, v11, v12, v13, v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v16 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v17;
  v18 = *MEMORY[0x1E69BA440];
  *(inited + 56) = *MEMORY[0x1E69BA440];
  v19 = sub_1BE052434();
  v20 = MEMORY[0x1E69BABE8];
  *(inited + 64) = v19;
  *(inited + 72) = v21;
  v22 = *v20;
  *(inited + 80) = *v20;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v23;
  v24 = v16;
  v25 = v18;
  v26 = v22;
  v27 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD2B5310(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v28 = sub_1BE052224();
  v27, v29, v30, v31, v32, v33, v34, v35;
  [v1 subjects:v7 sendEvent:v28];
}

void sub_1BD2B3760()
{
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BE0B6CA0;
  v2 = *MEMORY[0x1E69BB6C0];
  v3 = *MEMORY[0x1E69BB6F8];
  *(v1 + 32) = *MEMORY[0x1E69BB6C0];
  *(v1 + 40) = v3;
  type metadata accessor for PKAnalyticsSubject(0);
  v4 = v2;
  v5 = v3;
  v6 = sub_1BE052724();
  v1, v7, v8, v9, v10, v11, v12, v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v15 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v16 = sub_1BE052434();
  v17 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v16;
  *(inited + 48) = v18;
  v19 = *v17;
  *(inited + 56) = *v17;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v20;
  v21 = v15;
  v22 = v19;
  v23 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD2B5310(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v24 = sub_1BE052224();
  v23, v25, v26, v27, v28, v29, v30, v31;
  [v0 subjects:v6 sendEvent:v24];
}

void *sub_1BD2B3958@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 dynamicContent];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 dynamicContentPageForPageType_];

    if (v6)
    {
      v7 = [v6 title];

      if (v7)
      {
        sub_1BE052434();
        v9 = v8;

        v10 = [v3 dynamicContent];
        if (v10)
        {
          v18 = v10;
          v19 = [v10 dynamicContentPageForPageType_];

          if (v19)
          {
            v20 = [v19 subtitle];

            if (v20)
            {
              sub_1BE052434();
              v22 = v21;

              v23 = sub_1BE04F7B4();
              LOBYTE(v78) = 0;
              sub_1BD2B410C(v101);
              v87 = *&v101[32];
              *v88 = *&v101[48];
              *&v88[9] = *&v101[57];
              v85 = *v101;
              v86 = *&v101[16];
              v91 = *&v101[32];
              *v92 = *&v101[48];
              *&v92[9] = *&v101[57];
              v89 = *v101;
              v90 = *&v101[16];
              sub_1BD0DE19C(&v85, &v97, &qword_1EBD40828, &qword_1BE1037A0);
              sub_1BD0DE53C(&v89, &qword_1EBD40828, &qword_1BE1037A0);
              v22, v24, v25, v26, v27, v28, v29, v30;
              v9, v31, v32, v33, v34, v35, v36, v37;
              *&v101[7] = v85;
              *&v101[23] = v86;
              *&v101[39] = v87;
              *&v101[55] = *v88;
              *&v93 = v23;
              *(&v93 + 1) = 0x4000000000000000;
              v94[0] = 0;
              *&v94[1] = *v101;
              *&v94[65] = *&v88[9];
              *&v94[49] = *&v101[48];
              *&v94[33] = *&v101[32];
              *&v94[17] = *&v101[16];
              *v101 = v93;
              *&v101[16] = *v94;
              *&v101[64] = *&v94[48];
              *&v101[80] = *&v94[64];
              LOBYTE(v102) = v88[24];
              *&v101[32] = *&v94[16];
              *&v101[48] = *&v94[32];
              v95 = 0;
              HIBYTE(v103) = 0;
              v38 = &qword_1EBD40838;
              v39 = &qword_1BE103730;
              sub_1BD0DE19C(&v93, &v97, &qword_1EBD40838, &qword_1BE103730);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40838, &qword_1BE103730);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40858, &qword_1BE0C88C0);
              v40 = MEMORY[0x1E6981870];
              sub_1BD0DE4F4(&qword_1EBD40848, &qword_1EBD40838, &qword_1BE103730, MEMORY[0x1E6981870]);
              sub_1BD0DE4F4(&qword_1EBD40850, &qword_1EBD40858, &qword_1BE0C88C0, v40);
LABEL_13:
              sub_1BE04F9A4();
              *&v98[48] = *&v81[16];
              *&v98[64] = v82;
              *&v98[80] = v83;
              v99 = v84;
              v97 = v78;
              *v98 = v79;
              *&v98[16] = v80;
              *&v98[32] = *v81;
              v96 = 0;
              v100 = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40830, &unk_1BE0C88B0);
              sub_1BD2B5190();
              sub_1BE04F9A4();
              result = sub_1BD0DE53C(&v93, v38, v39);
              goto LABEL_16;
            }
          }
        }

        v9, v11, v12, v13, v14, v15, v16, v17;
      }
    }
  }

  v41 = [v3 dynamicContent];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 dynamicContentPageForPageType_];

    if (v43)
    {
      v44 = [v43 title];

      if (v44)
      {
        sub_1BE052434();
        v46 = v45;

        v47 = sub_1BE04F7B4();
        LOBYTE(v78) = 0;
        sub_1BD2B431C(v101);
        v87 = *&v101[32];
        *v88 = *&v101[48];
        *&v88[16] = *&v101[64];
        *&v88[25] = *&v101[73];
        v85 = *v101;
        v86 = *&v101[16];
        *&v92[25] = *&v101[73];
        v91 = *&v101[32];
        *v92 = *&v101[48];
        *&v92[16] = *&v101[64];
        v89 = *v101;
        v90 = *&v101[16];
        sub_1BD0DE19C(&v85, &v97, &qword_1EBD40860, &qword_1BE0C88C8);
        sub_1BD0DE53C(&v89, &qword_1EBD40860, &qword_1BE0C88C8);
        v46, v48, v49, v50, v51, v52, v53, v54;
        *&v101[7] = v85;
        *&v101[23] = v86;
        *&v101[71] = *&v88[16];
        *&v101[55] = *v88;
        *&v101[39] = v87;
        *&v94[1] = *v101;
        *&v94[33] = *&v101[32];
        *&v94[49] = *&v101[48];
        *&v94[65] = *&v101[64];
        *&v93 = v47;
        *(&v93 + 1) = 0x4000000000000000;
        v94[0] = 0;
        *&v94[81] = *&v88[25];
        *&v94[17] = *&v101[16];
        *&v101[64] = *&v94[48];
        *&v101[80] = *&v94[64];
        v102 = *&v94[80];
        LOBYTE(v103) = v88[40];
        *v101 = v93;
        *&v101[16] = *v94;
        *&v101[32] = *&v94[16];
        *&v101[48] = *&v94[32];
        v95 = 1;
        HIBYTE(v103) = 1;
        v38 = &qword_1EBD40858;
        v39 = &qword_1BE0C88C0;
        sub_1BD0DE19C(&v93, &v97, &qword_1EBD40858, &qword_1BE0C88C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40838, &qword_1BE103730);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40858, &qword_1BE0C88C0);
        v55 = MEMORY[0x1E6981870];
        sub_1BD0DE4F4(&qword_1EBD40848, &qword_1EBD40838, &qword_1BE103730, MEMORY[0x1E6981870]);
        sub_1BD0DE4F4(&qword_1EBD40850, &qword_1EBD40858, &qword_1BE0C88C0, v55);
        goto LABEL_13;
      }
    }
  }

  result = sub_1BD2B45B8();
  if (!v57)
  {
    v75 = 0;
    v76 = 0;
    v69 = 0uLL;
    v77 = 16711680;
    v70 = 0uLL;
    v72 = 0uLL;
    v71 = 0uLL;
    v74 = 0uLL;
    v73 = 0uLL;
    goto LABEL_18;
  }

  v58 = result;
  v59 = v57;
  v60 = sub_1BE04F7B4();
  LOBYTE(v89) = 0;
  sub_1BD2B49EC(v58, v59, v101);
  *&v94[16] = *&v101[32];
  *&v94[32] = *&v101[48];
  *&v94[41] = *&v101[57];
  v93 = *v101;
  *v94 = *&v101[16];
  v80 = *&v101[32];
  *v81 = *&v101[48];
  *&v81[9] = *&v101[57];
  v78 = *v101;
  v79 = *&v101[16];
  sub_1BD0DE19C(&v93, &v97, &qword_1EBD40828, &qword_1BE1037A0);
  sub_1BD0DE53C(&v78, &qword_1EBD40828, &qword_1BE1037A0);
  v59, v61, v62, v63, v64, v65, v66, v67;
  *&v105[64] = *&v94[41];
  *&v105[55] = *&v94[32];
  *&v105[39] = *&v94[16];
  *&v105[23] = *v94;
  *&v105[7] = v93;
  *&v98[33] = *&v105[32];
  *&v98[49] = *&v105[48];
  *&v98[65] = *&v105[64];
  *&v98[17] = *&v105[16];
  v68 = v89;
  LOBYTE(v89) = 1;
  *&v97 = v60;
  *(&v97 + 1) = 0x4000000000000000;
  v98[0] = v68;
  *&v98[1] = *v105;
  v100 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40830, &unk_1BE0C88B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40838, &qword_1BE103730);
  sub_1BD2B5190();
  sub_1BD0DE4F4(&qword_1EBD40848, &qword_1EBD40838, &qword_1BE103730, MEMORY[0x1E6981870]);
  result = sub_1BE04F9A4();
LABEL_16:
  v69 = *v101;
  v70 = *&v101[16];
  v72 = *&v101[32];
  v71 = *&v101[48];
  v74 = *&v101[64];
  v73 = *&v101[80];
  v76 = *(&v102 + 1);
  v75 = v102;
  v77 = v103 | (v104 << 16);
LABEL_18:
  *a2 = v69;
  *(a2 + 16) = v70;
  *(a2 + 32) = v72;
  *(a2 + 48) = v71;
  *(a2 + 64) = v74;
  *(a2 + 80) = v73;
  *(a2 + 96) = v75;
  *(a2 + 104) = v76;
  *(a2 + 112) = v77;
  *(a2 + 114) = BYTE2(v77);
  return result;
}

void sub_1BD2B410C(uint64_t a5@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v6 = sub_1BE0506C4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_1BE050424();
  v14 = sub_1BE0505F4();
  v97 = v15;
  v98 = v14;
  v96 = v16;
  v99 = v17;
  v13, v15, v16, v17, v18, v19, v20, v21;
  sub_1BD0DDF10(v6, v8, (v10 & 1), v22, v23, v24, v25, v26);
  v12, v27, v28, v29, v30, v31, v32, v33;
  sub_1BE048C84();
  v34 = sub_1BE0506C4();
  v36 = v35;
  LOBYTE(v8) = v37;
  v39 = v38;
  v40 = sub_1BE050324();
  v41 = sub_1BE0505F4();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v40, v42, v44, v46, v48, v49, v50, v51;
  sub_1BD0DDF10(v34, v36, (v8 & 1), v52, v53, v54, v55, v56);
  v39, v57, v58, v59, v60, v61, v62, v63;
  KeyPath = swift_getKeyPath();
  *a5 = v98;
  *(a5 + 8) = v97;
  *(a5 + 16) = v96 & 1;
  *(a5 + 24) = v99;
  *(a5 + 32) = v41;
  *(a5 + 40) = v43;
  *(a5 + 48) = v45 & 1;
  *(a5 + 56) = v47;
  *(a5 + 64) = KeyPath;
  *(a5 + 72) = 1;
  sub_1BD0D7F18(v98, v97, v96 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v41, v43, v45 & 1);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD0DDF10(v41, v43, (v45 & 1), v65, v66, v67, v68, v69);
  KeyPath, v70, v71, v72, v73, v74, v75, v76;
  v47, v77, v78, v79, v80, v81, v82, v83;
  sub_1BD0DDF10(v98, v97, (v96 & 1), v84, v85, v86, v87, v88);
  v99, v89, v90, v91, v92, v93, v94, v95;
}

void sub_1BD2B431C(uint64_t a3@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v4 = sub_1BE0506C4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1BE050424();
  v12 = sub_1BE0505F4();
  v99 = v13;
  v100 = v12;
  v94 = v14;
  v98 = v15;
  v11, v13, v14, v15, v16, v17, v18, v19;
  sub_1BD0DDF10(v4, v6, (v8 & 1), v20, v21, v22, v23, v24);
  v10, v25, v26, v27, v28, v29, v30, v31;
  KeyPath = swift_getKeyPath();
  sub_1BD2B45B8();
  if (v32)
  {
    v33 = sub_1BE0506C4();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = sub_1BE050324();
    v41 = sub_1BE0505F4();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v40, v42, v44, v46, v48, v49, v50, v51;
    sub_1BD0DDF10(v33, v35, (v37 & 1), v52, v53, v54, v55, v56);
    v39, v57, v58, v59, v60, v61, v62, v63;
    v64 = swift_getKeyPath();
    v65 = v45 & 1;
    v66 = v41;
    v67 = v43;
    v68 = v65;
    sub_1BD0D7F18(v41, v43, v65);
    v96 = v47;
    sub_1BE048C84();
    v69 = v64;
    sub_1BE048964();
    v70 = 1;
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v96 = 0;
    v69 = 0;
    v70 = 0;
  }

  v95 = v94 & 1;
  sub_1BD0D7F18(v100, v99, v95);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD2B5270(v66, v67, v68, v96);
  sub_1BD2B52C0(v66, v67, v68, v96, v69, v70, v71, v72);
  *a3 = v100;
  *(a3 + 8) = v99;
  *(a3 + 16) = v95;
  *(a3 + 24) = v98;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 48) = v66;
  *(a3 + 56) = v67;
  *(a3 + 64) = v68;
  *(a3 + 72) = v96;
  *(a3 + 80) = v69;
  *(a3 + 88) = v70;
  sub_1BD2B52C0(v66, v67, v68, v96, v69, v70, v73, v74);
  sub_1BD0DDF10(v100, v99, v95, v75, v76, v77, v78, v79);
  KeyPath, v80, v81, v82, v83, v84, v85, v86;
  v98, v87, v88, v89, v90, v91, v92, v93;
}

uint64_t sub_1BD2B45B8()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE053304();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 8);
  v10 = [v9 monetaryValue];
  v11 = [v9 type];
  v12 = [v10 minimalFormattedStringValue];
  if (v12)
  {
    v46 = v2;
    v47 = v1;
    v13 = v12;
    v14 = sub_1BE052434();
    v16 = v15;

    if ([v9 type] != 3)
    {
      v17 = [v9 value];
      if (v17)
      {
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 1;
        v18 = v17;
        sub_1BE0533E4();

        if (v52 != 1)
        {
          MEMORY[0x1BFB37210]();
          sub_1BD2B5310(&qword_1EBD45110, MEMORY[0x1E6969FD0], MEMORY[0x1E6969FC8]);
          sub_1BE053464();
          (*(v5 + 8))(v8, v4);
          v26 = v49;
          v27 = v50;
          if (v11 == 2)
          {
            v45 = "NTRY_MAXIMUM_AMOUNT";
            v29 = v46;
            v28 = v47;
            v30 = v48;
            (*(v46 + 104))(v48, *MEMORY[0x1E69B8088], v47);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
            v31 = swift_allocObject();
            *(v31 + 16) = xmmword_1BE0B6CA0;
            v34 = MEMORY[0x1E69E6158];
            *(v31 + 56) = MEMORY[0x1E69E6158];
            v35 = sub_1BD110550();
            *(v31 + 32) = v14;
            *(v31 + 40) = v16;
            *(v31 + 96) = v34;
            *(v31 + 104) = v35;
            *(v31 + 64) = v35;
            *(v31 + 72) = v26;
            *(v31 + 80) = v27;
            goto LABEL_10;
          }

          if (v11 == 1)
          {
            v45 = "WARDS_BALANCE_TYPE_MILES";
            v29 = v46;
            v28 = v47;
            v30 = v48;
            (*(v46 + 104))(v48, *MEMORY[0x1E69B8088], v47);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
            v31 = swift_allocObject();
            *(v31 + 16) = xmmword_1BE0B6CA0;
            v32 = MEMORY[0x1E69E6158];
            *(v31 + 56) = MEMORY[0x1E69E6158];
            v33 = sub_1BD110550();
            *(v31 + 32) = v14;
            *(v31 + 40) = v16;
            *(v31 + 96) = v32;
            *(v31 + 104) = v33;
            *(v31 + 64) = v33;
            *(v31 + 72) = v26;
            *(v31 + 80) = v27;
LABEL_10:
            v14 = sub_1BE04B714();
            v31, v36, v37, v38, v39, v40, v41, v42;

            (*(v29 + 8))(v30, v28);
            return v14;
          }

          v50, v19, v20, v21, v22, v23, v24, v25;
        }
      }
    }

    return v14;
  }

  return 0;
}

void sub_1BD2B49EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v112 = a1;
  v113 = a2;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69B8088], v4, v6);
  v9 = sub_1BE04B714();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v116 = v9;
  v117 = v11;
  sub_1BD0DDEBC();
  v12 = sub_1BE0506C4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = sub_1BE050424();
  v20 = sub_1BE0505F4();
  v109 = v21;
  v110 = v20;
  HIDWORD(v108) = v22;
  v111 = v23;
  v19, v21, v22, v23, v24, v25, v26, v27;
  sub_1BD0DDF10(v12, v14, (v16 & 1), v28, v29, v30, v31, v32);
  v18, v33, v34, v35, v36, v37, v38, v39;
  v116 = v112;
  v117 = v113;
  sub_1BE048C84();
  v40 = sub_1BE0506C4();
  v42 = v41;
  LOBYTE(v12) = v43;
  v45 = v44;
  v46 = sub_1BE050324();
  v47 = sub_1BE0505F4();
  v49 = v48;
  LOBYTE(v9) = v50;
  v52 = v51;
  v46, v48, v50, v51, v53, v54, v55, v56;
  sub_1BD0DDF10(v40, v42, (v12 & 1), v57, v58, v59, v60, v61);
  v45, v62, v63, v64, v65, v66, v67, v68;
  KeyPath = swift_getKeyPath();
  v70 = BYTE4(v108) & 1;
  LOBYTE(v116) = BYTE4(v108) & 1;
  v115 = BYTE4(v108) & 1;
  v71 = (v9 & 1);
  v114 = v9 & 1;
  v72 = v9 & 1;
  v74 = v109;
  v73 = v110;
  *a3 = v110;
  *(a3 + 8) = v74;
  *(a3 + 16) = v70;
  v75 = v111;
  *(a3 + 24) = v111;
  *(a3 + 32) = v47;
  *(a3 + 40) = v49;
  *(a3 + 48) = v72;
  *(a3 + 56) = v52;
  *(a3 + 64) = KeyPath;
  *(a3 + 72) = 1;
  v76 = v73;
  sub_1BD0D7F18(v73, v74, v70);
  sub_1BE048C84();
  sub_1BD0D7F18(v47, v49, v71);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD0DDF10(v47, v49, v71, v77, v78, v79, v80, v81);
  KeyPath, v82, v83, v84, v85, v86, v87, v88;
  v52, v89, v90, v91, v92, v93, v94, v95;
  sub_1BD0DDF10(v76, v74, v116, v96, v97, v98, v99, v100);
  v75, v101, v102, v103, v104, v105, v106, v107;
}

uint64_t sub_1BD2B4CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40810, &unk_1BE0C8880);
  sub_1BD0DE4F4(&qword_1EBD40818, &qword_1EBD40810, &unk_1BE0C8880, &unk_1BE101240);
  sub_1BE04EC04();
  sub_1BD2B4E6C(v3, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1BD2B4ED0(v7, v9 + v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40820, &unk_1BE0C8890);
  v11 = (a2 + *(result + 36));
  *v11 = sub_1BD2B4F34;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  return result;
}

uint64_t sub_1BD2B4E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferRewardsAmountEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD2B4ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferRewardsAmountEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD2B4F54()
{
  type metadata accessor for PaymentOfferRewardsAmountEntry(0);

  return sub_1BD2B344C();
}

uint64_t objectdestroyTm_21()
{
  v1 = (type metadata accessor for PaymentOfferRewardsAmountEntry(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v2[3], v3, v4, v5, v6, v7, v8, v9;
  v10 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1BE04E664();
    (*(*(v18 - 8) + 8))(v2 + v10, v18);
  }

  else
  {
    *(v2 + v10), v11, v12, v13, v14, v15, v16, v17;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD2B50E0(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(type metadata accessor for PaymentOfferRewardsAmountEntry(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));
  sub_1BD2B353C(MEMORY[0x1E69BA500]);
  v10[0] = a1;
  v10[1] = a2;
  v11 = a3;
  v13 = 0;
  v12 = 0;
  v14 = 0;
  v15 = 1;
  return (*(v8 + 16))(v10);
}

unint64_t sub_1BD2B5190()
{
  result = qword_1EBD40840;
  if (!qword_1EBD40840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40830, &unk_1BE0C88B0);
    v1 = MEMORY[0x1E6981870];
    sub_1BD0DE4F4(&qword_1EBD40848, &qword_1EBD40838, &qword_1BE103730, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&qword_1EBD40850, &qword_1EBD40858, &qword_1BE0C88C0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40840);
  }

  return result;
}

uint64_t sub_1BD2B5270(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BD0D7F18(result, a2, a3 & 1);
    sub_1BE048C84();

    return sub_1BE048964();
  }

  return result;
}

void sub_1BD2B52C0(void *result, char *a2, char a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a4)
  {
    sub_1BD0DDF10(result, a2, (a3 & 1), a4, a5, a6, a7, a8);
    a5, v10, v11, v12, v13, v14, v15, v16;

    a4, v17, v18, v19, v20, v21, v22, v23;
  }
}

uint64_t sub_1BD2B5310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD2B5358()
{
  result = qword_1EBD45080;
  if (!qword_1EBD45080)
  {
    sub_1BD0E5E8C(255, &qword_1EBD43B00, 0x1E69B8780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45080);
  }

  return result;
}

unint64_t sub_1BD2B53C0()
{
  result = qword_1EBD40868;
  if (!qword_1EBD40868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40820, &unk_1BE0C8890);
    sub_1BD0DE4F4(&qword_1EBD40870, &qword_1EBD40878, &qword_1BE0C8900, MEMORY[0x1E697C1A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40868);
  }

  return result;
}

id sub_1BD2B5478()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView) userEducationDemoController];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 state];

  return v3;
}

id ApplePayUserEducationDemoStackView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ApplePayUserEducationDemoStackView.init()()
{
  *&v0[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_presentationState] = 1;
  v1 = [objc_allocWithZone(PKPassGroupStackView) initWithFrame_];
  *&v0[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView] = v1;
  result = [objc_allocWithZone(MEMORY[0x1E69B88E0]) init];
  if (result)
  {
    *&v0[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupsController] = result;
    v3 = objc_allocWithZone(type metadata accessor for EducationalMessageView());
    *&v0[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_educationalMessageView] = EducationalMessageView.init(with:)(0);
    v31.receiver = v0;
    v31.super_class = type metadata accessor for ApplePayUserEducationDemoStackView();
    v4 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v5 = sub_1BD2B70D0();
    if (v5)
    {
      v6 = v5;
      v7 = *&v4[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupsController];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1BE0B7020;
      *(v8 + 32) = v6;
      sub_1BD0E5E8C(0, &qword_1EBD40650, 0x1E69B8A20);
      v9 = v7;
      v10 = v6;
      v11 = sub_1BE052724();
      v8, v12, v13, v14, v15, v16, v17, v18;
      [v9 addLocalPasses_];
    }

    v19 = OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView;
    v20 = *&v4[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView];
    v21 = objc_opt_self();
    v22 = v20;
    v23 = [v21 backgroundColor];
    [v22 setBackgroundColor_];

    [*&v4[v19] setShowsVerticalScrollIndicator_];
    v24 = *&v4[v19];
    v25 = v4;
    [v24 setDelegate_];
    [*&v4[v19] setDatasource_];
    v26 = *&v4[v19];
    v27 = objc_allocWithZone(PKApplePayUserEducationDemoController);
    v28 = v26;
    v29 = [v27 initWithDelegate:v25 method:0];
    [v28 setUserEducationDemoController_];

    sub_1BD2B5D68(0);
    v30 = [*&v4[v19] backgroundColor];
    [v25 setBackgroundColor_];

    [v25 addSubview_];
    [v25 addSubview_];

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD2B58EC()
{
  v25 = *MEMORY[0x1E69E9840];
  v24.receiver = v0;
  v24.super_class = type metadata accessor for ApplePayUserEducationDemoStackView();
  objc_msgSendSuper2(&v24, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [*&v0[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView] setFrame_];
  [objc_opt_self() defaultHorizontalInset];
  v10 = v9;
  [v0 safeAreaInsets];
  v11 = PKEdgeInsetsInsetRectTm(v2, v4, v6, v8, 0.0, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *&v0[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_educationalMessageView];
  [v18 sizeThatFits_];
  v20 = v19;
  memset(&slice, 0, sizeof(slice));
  memset(&v22, 0, sizeof(v22));
  v26.origin.x = v11;
  v26.origin.y = v13;
  v26.size.width = v15;
  v26.size.height = v17;
  CGRectDivide(v26, &slice, &v22, v20, CGRectMaxYEdge);
  return [v18 setFrame_];
}

void sub_1BD2B5ABC(char a1)
{
  v2 = ~a1;
  [*(v1 + OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView) setPresentationState:3 withContext:0 animated:(a1 & 1) == 0 completion:0];
  if ((v2 & 1) == 0)
  {
    v3 = [objc_allocWithZone(PKPassPresentationContext) init];
    [v3 setFieldDetect_];
    [v3 setPostPayment_];
    [v3 setPresentFanned_];
    v4 = v3;
    sub_1BD2B5BA8(v3);
  }
}

void sub_1BD2B5BA8(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView);
  if ([v3 presentationState] != 5)
  {
    [v3 presentDiff:0 completion:0];
    [v3 setModalGroupIndex_];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13[4] = sub_1BD2B7D98;
    v14 = v4;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1BD976224;
    v13[3] = &block_descriptor_46;
    v5 = _Block_copy(v13);
    v14, v6, v7, v8, v9, v10, v11, v12;
    [v3 setPresentationState:5 withContext:a1 animated:1 completion:v5];
    _Block_release(v5);
  }
}

void sub_1BD2B5CE0(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a1 & 1) == 0)
    {
      v4 = Strong;
      v5 = [*&Strong[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupStackView] presentationState];
      Strong = v4;
      *&v4[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_presentationState] = v5;
    }
  }
}

void sub_1BD2B5D68(uint64_t a1)
{
  v3 = sub_1BE051F54();
  v103 = *(v3 - 8);
  v104 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v101 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1BE051FA4();
  v100 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v99 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04AA64();
  v97 = *(v6 - 8);
  v98 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v96 - v15;
  v105 = v1;
  v17 = *&v1[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_educationalMessageView];
  v18 = [*&v17[OBJC_IVAR____PKEducationalMessageView_titleLabel] attributedText];
  if (v18)
  {
    goto LABEL_3;
  }

  v18 = [*&v17[OBJC_IVAR____PKEducationalMessageView_messageLabel] text];
  if (v18)
  {
    goto LABEL_3;
  }

  if (*&v17[OBJC_IVAR____PKEducationalMessageView_actionButton])
  {
    goto LABEL_4;
  }

  v18 = [*&v17[OBJC_IVAR____PKEducationalMessageView_imageView] image];
  if (v18)
  {
LABEL_3:

LABEL_4:
    v106 = [v17 isHidden] ^ 1;
    goto LABEL_5;
  }

  v106 = 0;
LABEL_5:
  v19 = swift_allocObject();
  v19[16] = 0;
  v20 = [objc_opt_self() secondaryLabelColor];
  v21 = [objc_allocWithZone(PKEducationalMessageViewConfiguration) init];
  v107 = v20;
  [v21 setTitleColor_];
  if (a1 == 3)
  {
    goto LABEL_13;
  }

  if (a1 == 1)
  {
    v19[16] = 1;
    (*(v10 + 104))(v16, *MEMORY[0x1E69B80D8], v9);
    v22 = PKPassKitBundle();
    if (!v22)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v23 = v22;
    sub_1BE04B6F4();
    v12 = v24;

    v25 = *(v10 + 8);
    v10 += 8;
    v25(v16, v9);
    v26 = sub_1BE052404();
    v12, v27, v28, v29, v30, v31, v32, v33;
    [v21 setTitle_];

    v34 = PKPassKitUIBundle();
    if (!v34)
    {
LABEL_28:
      __break(1u);
      return;
    }

    v35 = v34;
    v36 = sub_1BE052404();
    v37 = sub_1BE052404();
    v38 = [v35 URLForResource:v36 withExtension:v37];

    if (v38)
    {
      sub_1BE04A9F4();

      v38 = sub_1BE04A9C4();
      (*(v97 + 8))(v8, v98);
    }

    v39 = PKUIScreenScale();
    v9 = PKUIImageFromPDF(v38, 70.0, 70.0, v39);

    if (v9)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_13:
    v19[16] = 1;
    (*(v10 + 104))(v12, *MEMORY[0x1E69B80D8], v9);
    v40 = PKPassKitBundle();
    if (v40)
    {
      v41 = v40;
      sub_1BE04B6F4();
      v43 = v42;

      (*(v10 + 8))(v12, v9);
      v44 = sub_1BE052404();
      v43, v45, v46, v47, v48, v49, v50, v51;
      [v21 setTitle_];

      v52 = [objc_opt_self() configurationWithPointSize:3 weight:50.0];
      v53 = sub_1BE052404();
      v9 = [objc_opt_self() systemImageNamed:v53 withConfiguration:v52];

      if (!v9)
      {
        v54 = 0;
        goto LABEL_16;
      }

LABEL_15:
      v54 = [v9 imageWithTintColor:v107 renderingMode:1];

LABEL_16:
      [v21 setImage_];

      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_17:
  v55 = v106;
  if ((v106 & 1) != 0 || v19[16] == 1)
  {
    v56 = swift_allocObject();
    v57 = v105;
    v56[2] = v105;
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v58 = v57;
    v59 = sub_1BE052D54();
    v60 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v55;
    *(v61 + 32) = v19;
    *(v61 + 40) = sub_1BD2B7DA0;
    *(v61 + 48) = v56;
    *(v61 + 56) = v21;
    aBlock[4] = sub_1BD2B7DA8;
    v109 = v61;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_21;
    v62 = _Block_copy(aBlock);
    v63 = v109;
    sub_1BE048964();
    sub_1BE048964();
    v64 = v21;
    v63, v65, v66, v67, v68, v69, v70, v71;
    v72 = v99;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    v73 = v101;
    v74 = v104;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v72, v73, v62);
    _Block_release(v62);

    v56, v75, v76, v77, v78, v79, v80, v81;
    (*(v103 + 8))(v73, v74);
    (*(v100 + 8))(v72, v102);
    v19, v82, v83, v84, v85, v86, v87, v88;
  }

  else
  {
    [v17 setHidden_];
    [v17 setAlpha_];
    v19, v89, v90, v91, v92, v93, v94, v95;
  }
}

void sub_1BD2B6678(char a1, void (*a2)(), void *a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  v28 = sub_1BD2B7DD0;
  v29 = v7;
  v24 = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1BD126964;
  v27 = &block_descriptor_33_0;
  v8 = _Block_copy(&v24);
  v29, v9, v10, v11, v12, v13, v14, v15;
  if (a2)
  {
    v28 = a2;
    v29 = a3;
    v24 = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_1BD976224;
    v27 = &block_descriptor_36_0;
    a2 = _Block_copy(&v24);
    v16 = v29;
    sub_1BE048964();
    v16, v17, v18, v19, v20, v21, v22, v23;
  }

  [objc_opt_self() animateWithDuration:v8 animations:a2 completion:0.2];
  _Block_release(a2);
  _Block_release(v8);
}

void sub_1BD2B6804(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_educationalMessageView);

    v6 = 0.0;
    if (a2)
    {
      v6 = 1.0;
    }

    [v5 setAlpha_];
  }
}

void sub_1BD2B6898(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(), void *), uint64_t a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a2)
    {
      swift_beginAccess();
      if (*(a3 + 16) == 1)
      {
        v13 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v14 = swift_allocObject();
        v14[2] = v13;
        v14[3] = a6;
        v14[4] = a4;
        v14[5] = a5;
        sub_1BE048964();
        v15 = a6;
        sub_1BE048964();
        a4(0, sub_1BD2B7DC4, v14);
        v13, v16, v17, v18, v19, v20, v21, v22;
        v14, v23, v24, v25, v26, v27, v28, v29;
LABEL_10:

        return;
      }

      swift_beginAccess();
      if ((*(a3 + 16) & 1) == 0)
      {
        v32 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1BE048964();
        a4(0, sub_1BD2B7DBC, v32);

        goto LABEL_10;
      }
    }

    else
    {
      swift_beginAccess();
      if (*(a3 + 16) != 1)
      {
        goto LABEL_10;
      }
    }

    v30 = OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_educationalMessageView;
    [*&v12[OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_educationalMessageView] setHidden_];
    v31 = *&v12[v30];
    sub_1BD416E04(a6);

    [v12 setNeedsLayout];
    [v12 layoutIfNeeded];
    a4(1, 0, 0);
    goto LABEL_10;
  }
}

void sub_1BD2B6AD4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, void, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_educationalMessageView);
    sub_1BD416E04(a3);

    [v7 setNeedsLayout];
    [v7 layoutIfNeeded];
    a4(1, 0, 0);
  }
}

void sub_1BD2B6B9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_educationalMessageView);

    [v4 setHidden_];
  }
}

id ApplePayUserEducationDemoStackView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ApplePayUserEducationDemoStackView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplePayUserEducationDemoStackView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__C::PKPassSuppressedContent __swiftcall ApplePayUserEducationDemoStackView.suppressedContent()()
{
  if (PKIsLowEndDevice())
  {
    return 819;
  }

  else
  {
    return 307;
  }
}

id ApplePayUserEducationDemoStackView.group(at:)(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupsController) groupAtIndex_];

  return v2;
}

Swift::Void __swiftcall ApplePayUserEducationDemoStackView.userEducationDemoControllerRequestsUserRestart()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage) == 2)
    {
      *(Strong + OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage) = 1;
      sub_1BD564A24(2);
    }

    swift_unknownObjectRelease();
  }
}

uint64_t ApplePayUserEducationDemoStackView.userEducationDemoControllerDidChange(_:oldState:)(unint64_t a1, unint64_t a2)
{
  sub_1BD2B5D68(a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BD565620(a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1BD2B70D0()
{
  v177 = *MEMORY[0x1E69E9840];
  v0 = sub_1BE04AFE4();
  *&v165 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v161 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  v169 = v3;
  v170 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v161 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v161 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v164 = &v161 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v163 = &v161 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v161 - v18;
  v20 = sub_1BE04AA64();
  v21 = *(v20 - 8);
  v166 = v20;
  v167 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v168 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = PKPassKitUIBundle();
  if (!v23)
  {
    __break(1u);
  }

  v24 = v23;
  v25 = sub_1BE052404();
  v26 = sub_1BE052404();
  v27 = [v24 URLForResource:v25 withExtension:v26];

  if (!v27)
  {
    sub_1BE04D134();
    v43 = sub_1BE04D204();
    v44 = sub_1BE052C34();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1BD026000, v43, v44, "Failed to get URL for user education demo pass", v45, 2u);
      MEMORY[0x1BFB45F20](v45, -1, -1);
    }

    (*(v170 + 8))(v6, v169);
    return 0;
  }

  v28 = v168;
  sub_1BE04A9F4();

  *&v175 = 0;
  v29 = objc_allocWithZone(MEMORY[0x1E69B88C8]);
  v30 = sub_1BE04A9C4();
  v31 = [v29 initWithFileURL:v30 error:&v175 coordinator:0];

  v32 = v175;
  if (v175)
  {
    v33 = v175;
    sub_1BE04D134();
    v34 = v33;
    v35 = sub_1BE04D204();
    v36 = sub_1BE052C34();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v31;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      *(v38 + 4) = v34;
      *v39 = v32;
      v40 = v34;
      _os_log_impl(&dword_1BD026000, v35, v36, "Failed to create file accessor for the demo pass. %@", v38, 0xCu);
      sub_1BD1E236C(v39);
      v41 = v39;
      v28 = v168;
      MEMORY[0x1BFB45F20](v41, -1, -1);
      v42 = v38;
      v31 = v37;
      MEMORY[0x1BFB45F20](v42, -1, -1);
    }

    (*(v170 + 8))(v19, v169);
    (*(v167 + 8))(v28, v166);

    return 0;
  }

  if (!v31 || (v46 = [v31 dictionary]) == 0)
  {
    sub_1BE04D134();
    v132 = sub_1BE04D204();
    v133 = sub_1BE052C34();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = v31;
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&dword_1BD026000, v132, v133, "Empty pass dictionary found when creating demo pass", v135, 2u);
      MEMORY[0x1BFB45F20](v135, -1, -1);
    }

    else
    {
    }

    (*(v170 + 8))(v9, v169);
    (*(v167 + 8))(v28, v166);
    return 0;
  }

  v162 = v31;
  v47 = v46;
  v48 = sub_1BE052244();

  *&v173 = sub_1BE052434();
  *(&v173 + 1) = v49;
  v50 = MEMORY[0x1E69E6158];
  sub_1BE0537C4();
  sub_1BE04AFD4();
  v51 = sub_1BE04AF74();
  v53 = v52;
  (*(v165 + 8))(v2, v0);
  v174 = v50;
  *&v173 = v51;
  *(&v173 + 1) = v53;
  sub_1BD1B6140(&v173, v172);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v171 = v48;
  sub_1BD1DAFB0(v172, &v175, isUniquelyReferenced_nonNull_native);
  sub_1BD149CE8(&v175);
  v55 = v171;
  *&v172[0] = sub_1BE052434();
  *(&v172[0] + 1) = v56;
  sub_1BE0537C4();
  if (!v55[2] || (v57 = sub_1BD149040(&v175), (v58 & 1) == 0))
  {
    sub_1BD149CE8(&v175);
    goto LABEL_27;
  }

  sub_1BD038CD0(v55[7] + 32 * v57, &v173);
  sub_1BD149CE8(&v175);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40A30, &unk_1BE0C8990);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v66 = *&v172[0];
  if (!*(*&v172[0] + 16))
  {
    *&v172[0], v59, v60, v61, v62, v63, v64, v65;
    goto LABEL_27;
  }

  sub_1BD038CD0(*&v172[0] + 32, &v175);
  v66, v67, v68, v69, v70, v71, v72, v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52590, &qword_1BE0DFAF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    sub_1BE04D134();
    v136 = sub_1BE04D204();
    v137 = sub_1BE052C34();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&dword_1BD026000, v136, v137, "Empty payment application dictionary found when creating demo pass", v138, 2u);
      MEMORY[0x1BFB45F20](v138, -1, -1);
    }

    (*(v170 + 8))(v12, v169);
    goto LABEL_30;
  }

  v74 = v173;
  v75 = [objc_opt_self() primarySecureElementIdentifier];
  if (!v75)
  {
    v74, v76, v77, v78, v79, v80, v81, v82;
    v146 = v164;
    sub_1BE04D134();
    v147 = sub_1BE04D204();
    v148 = sub_1BE052C34();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      *v149 = 0;
      _os_log_impl(&dword_1BD026000, v147, v148, "Failed to get primary secure element identifier when creating demo pass", v149, 2u);
      MEMORY[0x1BFB45F20](v149, -1, -1);
    }

    (*(v170 + 8))(v146, v169);
LABEL_30:
    (*(v167 + 8))(v28, v166);
    v55, v139, v140, v141, v142, v143, v144, v145;
    return 0;
  }

  v83 = v75;
  v84 = sub_1BE052434();
  v86 = v85;

  v87 = sub_1BE052434();
  v89 = v88;
  v176 = v50;
  *&v175 = v84;
  *(&v175 + 1) = v86;
  sub_1BD1B6140(&v175, &v173);
  sub_1BE048C84();
  v90 = swift_isUniquelyReferenced_nonNull_native();
  *&v172[0] = v74;
  sub_1BD1DAD20(&v173, v87, v89, v90);
  v89, v91, v92, v93, v94, v95, v96, v97;
  v98 = *&v172[0];
  *&v173 = sub_1BE052434();
  *(&v173 + 1) = v99;
  sub_1BE0537C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A40, &qword_1BE0C89A0);
  v100 = swift_allocObject();
  v165 = xmmword_1BE0B69E0;
  *(v100 + 16) = xmmword_1BE0B69E0;
  *(v100 + 32) = v98;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A48, &unk_1BE0F5A60);
  *&v173 = v100;
  sub_1BD1B6140(&v173, v172);
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v171 = v55;
  sub_1BD1DAFB0(v172, &v175, v101);
  sub_1BD149CE8(&v175);
  v102 = v171;
  v103 = objc_allocWithZone(MEMORY[0x1E69B8D08]);
  v104 = sub_1BE052224();
  v105 = [v103 initWithDictionary:v104 bundle:0];

  if (v105)
  {
    v113 = v162;
    [v105 setDataAccessor_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50, &unk_1BE0C74D0);
    v114 = swift_allocObject();
    *(v114 + 16) = v165;
    *(v114 + 56) = v50;
    *(v114 + 32) = v84;
    *(v114 + 40) = v86;
    v115 = v105;
    v116 = sub_1BE052724();
    v114, v117, v118, v119, v120, v121, v122, v123;
    [v115 updateDevicePaymentApplicationsWithSecureElementIdentifiers_];

    (*(v167 + 8))(v168, v166);
    v102, v124, v125, v126, v127, v128, v129, v130;
    return v105;
  }

  v86, v106, v107, v108, v109, v110, v111, v112;
  v150 = v163;
  sub_1BE04D134();
  v151 = sub_1BE04D204();
  v152 = sub_1BE052C34();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    *v153 = 0;
    _os_log_impl(&dword_1BD026000, v151, v152, "Failed to create user education demo pass from dictionary", v153, 2u);
    MEMORY[0x1BFB45F20](v153, -1, -1);
  }

  (*(v170 + 8))(v150, v169);
  (*(v167 + 8))(v168, v166);
  v102, v154, v155, v156, v157, v158, v159, v160;
  return 0;
}

uint64_t sub_1BD2B7DF4()
{
  v0 = sub_1BE04DD64();
  __swift_allocate_value_buffer(v0, qword_1EBD40A58);
  v1 = __swift_project_value_buffer(v0, qword_1EBD40A58);
  *v1 = 0xD00000000000001BLL;
  v1[1] = 0x80000001BE11EC10;
  v1[2] = 1;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

void sub_1BD2B7EA0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  if (*(v2 + 24))
  {
    sub_1BE053994();
    __break(1u);
  }

  else
  {
    v8 = sub_1BE0528D4();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v2;
    v9[5] = a1;
    v9[6] = a2;
    sub_1BE048964();
    sub_1BE048964();
    v10 = sub_1BDA543A4(0, 0, v7, &unk_1BE0C8B68, v9);
    v11 = *(v2 + 24);
    *(v2 + 24) = v10;
    v11, v12, v13, v14, v15, v16, v17, v18;
  }
}

uint64_t sub_1BD2B802C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_1BE04E0E4();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40B08, &qword_1BE0C8B70);
  v6[12] = swift_task_alloc();
  v8 = sub_1BE04D214();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40B10, &qword_1BE0C8B78);
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40B18, &qword_1BE0C8B80);
  v6[21] = v10;
  v6[22] = *(v10 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2B8278, 0, 0);
}

uint64_t sub_1BD2B8278()
{
  v0[25] = *(v0[6] + 16);
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_1BD2B831C;
  v2 = v0[24];

  return MEMORY[0x1EEE37F70](v2);
}

uint64_t sub_1BD2B831C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1BD2B96E4;
  }

  else
  {
    v2 = sub_1BD2B8430;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2B8430()
{
  (*(v0[22] + 16))(v0[23], v0[24], v0[21]);
  sub_1BD0DE4F4(&qword_1EBD40B30, &qword_1EBD40B18, &qword_1BE0C8B80, MEMORY[0x1E69CDD30]);
  sub_1BE0529C4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40B38, &qword_1BE0C8B90);
  v2 = sub_1BD0DE4F4(&qword_1EBD40B40, &qword_1EBD40B38, &qword_1BE0C8B90, MEMORY[0x1E69CDD28]);
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_1BD2B8588;

  return MEMORY[0x1EEE6D8C8](v0 + 5, v1, v2);
}

uint64_t sub_1BD2B8588()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  *(v2 + 32), v3, v4, v5, v6, v7, v8, v9;
  if (v0)
  {
    v10 = sub_1BD2B8A60;
  }

  else
  {
    v10 = sub_1BD2B86BC;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1BD2B86BC()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[5];
  v0[30] = v4;
  (*(v3 + 8))(v1, v2);
  if (sub_1BE052974())
  {
    v4, v5, v6, v7, v8, v9, v10, v11;

    v12 = v0[1];

    return v12();
  }

  else if (v4)
  {
    v14 = swift_task_alloc();
    v0[31] = v14;
    *v14 = v0;
    v14[1] = sub_1BD2B8C48;

    return sub_1BD2BAA9C(v4);
  }

  else
  {
    v15 = sub_1BE04B844();
    sub_1BD2C7E30(&qword_1EBD40AE0, MEMORY[0x1E69B7F28], MEMORY[0x1E69B7F30]);
    v16 = swift_allocError();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69B7F18], v15);
    swift_willThrow();
    sub_1BE04D094();
    v18 = v16;
    v19 = sub_1BE04D204();
    v20 = sub_1BE052C34();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v16;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1BD026000, v19, v20, "NearbyPeerPayment: error taking sharing assertion for transfer session: %@", v21, 0xCu);
      sub_1BD0DE53C(v22, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v22, -1, -1);
      MEMORY[0x1BFB45F20](v21, -1, -1);
    }

    v25 = v0[16];
    v26 = v0[13];
    v27 = v0[14];
    v28 = v0[7];

    (*(v27 + 8))(v25, v26);
    v28(0);

    v29 = swift_task_alloc();
    v0[33] = v29;
    *v29 = v0;
    v29[1] = sub_1BD2B8DE0;
    v30 = v0[20];

    return MEMORY[0x1EEE37FA0](v30);
  }
}

uint64_t sub_1BD2B8A60()
{
  (*(v0[22] + 8))(v0[24], v0[21]);
  v1 = v0[29];
  sub_1BE04D094();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: error taking sharing assertion for transfer session: %@", v5, 0xCu);
    sub_1BD0DE53C(v6, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[7];

  (*(v11 + 8))(v9, v10);
  v12(0);

  v13 = swift_task_alloc();
  v0[33] = v13;
  *v13 = v0;
  v13[1] = sub_1BD2B8DE0;
  v14 = v0[20];

  return MEMORY[0x1EEE37FA0](v14);
}

uint64_t sub_1BD2B8C48()
{
  v2 = *v1;
  v3 = *v1;
  *(v2 + 256) = v0;

  *(v2 + 240), v4, v5, v6, v7, v8, v9, v10;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BD2B98B4, 0, 0);
  }

  else
  {
    v11 = swift_task_alloc();
    *(v2 + 264) = v11;
    *v11 = v3;
    v11[1] = sub_1BD2B8DE0;
    v12 = *(v2 + 160);

    return MEMORY[0x1EEE37FA0](v12);
  }
}

uint64_t sub_1BD2B8DE0()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1BD2B9A84;
  }

  else
  {
    v2 = sub_1BD2B8EF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2B8EF4(uint64_t a1)
{
  sub_1BE04D094();
  v2 = sub_1BE04D204();
  v3 = sub_1BE052C54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v2, v3, "NearbyPeerPayment: transfer update monitoring started", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v5 = v1[17];
  v6 = v1[13];
  v7 = v1[14];
  v8 = v1[7];

  (*(v7 + 8))(v5, v6);
  v8(1);
  v1[2] = sub_1BE04DF04();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40B20, &qword_1BE0C8B88);
  v10 = sub_1BD0DE4F4(&qword_1EBD40B28, &qword_1EBD40B20, &qword_1BE0C8B88, MEMORY[0x1E69CDD28]);
  v11 = swift_task_alloc();
  v1[35] = v11;
  *v11 = v1;
  v11[1] = sub_1BD2B90B8;
  v12 = v1[12];

  return MEMORY[0x1EEE6D8C8](v12, v9, v10);
}

uint64_t sub_1BD2B90B8()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1BD2B9448;
  }

  else
  {
    v2 = sub_1BD2B91CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2B91CC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v0 + 144);
LABEL_5:
    *(v0 + 16), v4, v5, v6, v7, v8, v9, v10;
    (*(v12 + 8))(v11, v13);

    v14 = *(v0 + 8);

    return v14();
  }

  (*(v3 + 32))(*(v0 + 88), v1, v2);
  if (sub_1BE052974())
  {
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v0 + 144);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    goto LABEL_5;
  }

  v17 = *(v0 + 80);
  v16 = *(v0 + 88);
  v18 = *(v0 + 72);
  v19 = *(v0 + 48);
  v21 = *(v19 + 32);
  v20 = *(v19 + 40);
  sub_1BE048964();
  v21(v16);
  v20, v22, v23, v24, v25, v26, v27, v28;
  (*(v17 + 8))(v16, v18);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40B20, &qword_1BE0C8B88);
  v30 = sub_1BD0DE4F4(&qword_1EBD40B28, &qword_1EBD40B20, &qword_1BE0C8B88, MEMORY[0x1E69CDD28]);
  v31 = swift_task_alloc();
  *(v0 + 280) = v31;
  *v31 = v0;
  v31[1] = sub_1BD2B90B8;
  v32 = *(v0 + 96);

  return MEMORY[0x1EEE6D8C8](v32, v29, v30);
}

uint64_t sub_1BD2B9448()
{
  *(v0 + 24) = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1BD2B94DC, 0, 0);
}

uint64_t sub_1BD2B94DC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 152);
  v9 = *(v8 + 160);
  v11 = *(v8 + 144);
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  (*(v10 + 8))(v9, v11);
  v12 = *(v8 + 288);
  sub_1BE04D094();
  v13 = v12;
  v14 = sub_1BE04D204();
  v15 = sub_1BE052C54();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v12;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_1BD026000, v14, v15, "NearbyPeerPayment: error while receiving updates: %@", v16, 0xCu);
    sub_1BD0DE53C(v17, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v17, -1, -1);
    MEMORY[0x1BFB45F20](v16, -1, -1);
  }

  v21 = *(v8 + 112);
  v20 = *(v8 + 120);
  v22 = *(v8 + 104);
  v23 = *(v8 + 56);

  (*(v21 + 8))(v20, v22);
  v23(0);

  v24 = *(v8 + 8);

  return v24();
}

uint64_t sub_1BD2B96E4(uint64_t a1)
{
  v2 = v1[27];
  sub_1BE04D094();
  v3 = v2;
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BD026000, v4, v5, "NearbyPeerPayment: error taking sharing assertion for transfer session: %@", v6, 0xCu);
    sub_1BD0DE53C(v7, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v7, -1, -1);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  v10 = v1[16];
  v11 = v1[13];
  v12 = v1[14];
  v13 = v1[7];

  (*(v12 + 8))(v10, v11);
  v13(0);

  v14 = swift_task_alloc();
  v1[33] = v14;
  *v14 = v1;
  v14[1] = sub_1BD2B8DE0;
  v15 = v1[20];

  return MEMORY[0x1EEE37FA0](v15);
}

uint64_t sub_1BD2B98B4(uint64_t a1)
{
  v2 = v1[32];
  sub_1BE04D094();
  v3 = v2;
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BD026000, v4, v5, "NearbyPeerPayment: error taking sharing assertion for transfer session: %@", v6, 0xCu);
    sub_1BD0DE53C(v7, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v7, -1, -1);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  v10 = v1[16];
  v11 = v1[13];
  v12 = v1[14];
  v13 = v1[7];

  (*(v12 + 8))(v10, v11);
  v13(0);

  v14 = swift_task_alloc();
  v1[33] = v14;
  *v14 = v1;
  v14[1] = sub_1BD2B8DE0;
  v15 = v1[20];

  return MEMORY[0x1EEE37FA0](v15);
}

uint64_t sub_1BD2B9A84(uint64_t a1)
{
  v2 = v1[34];
  sub_1BE04D094();
  v3 = v2;
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C54();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BD026000, v4, v5, "NearbyPeerPayment: error while receiving updates: %@", v6, 0xCu);
    sub_1BD0DE53C(v7, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v7, -1, -1);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  v11 = v1[14];
  v10 = v1[15];
  v12 = v1[13];
  v13 = v1[7];

  (*(v11 + 8))(v10, v12);
  v13(0);

  v14 = v1[1];

  return v14();
}

uint64_t sub_1BD2B9C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 146) = a5;
  *(v8 + 16) = a4;
  *(v8 + 24) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  *(v8 + 48) = swift_task_alloc();
  v9 = sub_1BE04D214();
  *(v8 + 56) = v9;
  *(v8 + 64) = *(v9 - 8);
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v8 + 96) = v10;
  *v10 = v8;
  v10[1] = sub_1BD2B9DAC;

  return sub_1BD2BCA80();
}

uint64_t sub_1BD2B9DAC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1BD2BA6A4;
  }

  else
  {
    v2 = sub_1BD2B9EC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2B9EC0(uint64_t a1)
{
  if (*(v1 + 146) == 1)
  {
    sub_1BE04D094();
    v2 = sub_1BE04D204();
    v3 = sub_1BE052C54();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1BD026000, v2, v3, "NearbyPeerPayment: transfer monitor cancelling session", v4, 2u);
      MEMORY[0x1BFB45F20](v4, -1, -1);
    }

    v5 = *(v1 + 88);
    v6 = *(v1 + 56);
    v7 = *(v1 + 64);

    (*(v7 + 8))(v5, v6);
    v8 = swift_task_alloc();
    *(v1 + 112) = v8;
    *v8 = v1;
    v8[1] = sub_1BD2BA158;
    v9 = *(v1 + 24);

    return MEMORY[0x1EEE37F98](v9);
  }

  else
  {
    v10 = *(v1 + 48);
    v11 = *(v1 + 16);
    v12 = sub_1BE0528D4();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v11;
    sub_1BE048964();
    v14 = sub_1BD122F00(0, 0, v10, &unk_1BE0C8BC0, v13);
    *(v1 + 128) = v14;
    v15 = swift_task_alloc();
    *(v1 + 136) = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52970, &qword_1BE0B9540);
    *v15 = v1;
    v15[1] = sub_1BD2BA3D8;
    v17 = MEMORY[0x1E69E73E0];
    v18 = MEMORY[0x1E69E7410];

    return MEMORY[0x1EEE6DA20](v1 + 144, v14, v16, v17, v18);
  }
}

uint64_t sub_1BD2BA158()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1BD2BA834;
  }

  else
  {
    v2 = sub_1BD2BA26C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2BA26C()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = sub_1BE0528D4();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  sub_1BE048964();
  v5 = sub_1BD122F00(0, 0, v1, &unk_1BE0C8BC0, v4);
  v0[16] = v5;
  v6 = swift_task_alloc();
  v0[17] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52970, &qword_1BE0B9540);
  *v6 = v0;
  v6[1] = sub_1BD2BA3D8;
  v8 = MEMORY[0x1E69E73E0];
  v9 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6DA20](v0 + 18, v5, v7, v8, v9);
}

uint64_t sub_1BD2BA3D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD2BA4D4, 0, 0);
}

uint64_t sub_1BD2BA4D4(uint64_t a1)
{
  v2 = *(v1 + 145);
  if (v2)
  {
    sub_1BE04D094();
    v3 = sub_1BE04D204();
    v4 = sub_1BE052C54();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: transfer update monitoring stop unsuccessful", v5, 2u);
      MEMORY[0x1BFB45F20](v5, -1, -1);
    }

    v6 = *(v1 + 72);
  }

  else
  {
    sub_1BE04D094();
    v3 = sub_1BE04D204();
    v7 = sub_1BE052C54();
    if (os_log_type_enabled(v3, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BD026000, v3, v7, "NearbyPeerPayment: transfer update monitoring stopped", v8, 2u);
      MEMORY[0x1BFB45F20](v8, -1, -1);
    }

    v6 = *(v1 + 80);
  }

  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 32);

  (*(v10 + 8))(v6, v9);
  if (v11)
  {
    (*(v1 + 32))(v2 ^ 1u);
  }

  *(v1 + 128), v12, v13, v14, v15, v16, v17, v18;

  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_1BD2BA6A4()
{
  v1 = v0[13];
  v2 = v0[4];
  if (v2)
  {
    v2(0);
  }

  v3 = v0[6];
  v4 = v0[2];
  v5 = sub_1BE0528D4();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  sub_1BE048964();
  v7 = sub_1BD122F00(0, 0, v3, &unk_1BE0C8BC0, v6);
  v0[16] = v7;
  v8 = swift_task_alloc();
  v0[17] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52970, &qword_1BE0B9540);
  *v8 = v0;
  v8[1] = sub_1BD2BA3D8;
  v10 = MEMORY[0x1E69E73E0];
  v11 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6DA20](v0 + 18, v7, v9, v10, v11);
}

uint64_t sub_1BD2BA834()
{
  v1 = v0[15];
  v2 = v0[4];
  if (v2)
  {
    v2(0);
  }

  v3 = v0[6];
  v4 = v0[2];
  v5 = sub_1BE0528D4();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  sub_1BE048964();
  v7 = sub_1BD122F00(0, 0, v3, &unk_1BE0C8BC0, v6);
  v0[16] = v7;
  v8 = swift_task_alloc();
  v0[17] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52970, &qword_1BE0B9540);
  *v8 = v0;
  v8[1] = sub_1BD2BA3D8;
  v10 = MEMORY[0x1E69E73E0];
  v11 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6DA20](v0 + 18, v7, v9, v10, v11);
}

uint64_t sub_1BD2BA9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BD2BA9E4, 0, 0);
}

uint64_t sub_1BD2BA9E4()
{
  v1 = *(*(v0 + 24) + 24);
  if (v1)
  {
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    sub_1BE052944();
    v1, v2, v3, v4, v5, v6, v7, v8;
  }

  **(v0 + 16) = v1 == 0;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1BD2BAA9C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_1BE04AFE4();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = sub_1BE04DFC4();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v5 = sub_1BE04DF24();
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v6 = sub_1BE04DF84();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v7 = sub_1BE04DF64();
  v2[29] = v7;
  v2[30] = *(v7 - 8);
  v2[31] = swift_task_alloc();
  v8 = sub_1BE04D214();
  v2[32] = v8;
  v2[33] = *(v8 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v9 = sub_1BE04DFA4();
  v2[42] = v9;
  v2[43] = *(v9 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BAE34, 0, 0);
}

uint64_t sub_1BD2BAE34(uint64_t a1)
{
  v139 = v1;
  v2 = v1[12];
  if (!*(v2 + 16))
  {
    sub_1BE04D094();
    v45 = sub_1BE04D204();
    v46 = sub_1BE052C34();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1BD026000, v45, v46, "NearbyPeerPayment: transfer session received nearby sharing interaction without any interactions", v47, 2u);
      MEMORY[0x1BFB45F20](v47, -1, -1);
    }

    v49 = v1[33];
    v48 = v1[34];
    v50 = v1[32];

    (*(v49 + 8))(v48, v50);
    v51 = sub_1BE04B844();
    sub_1BD2C7E30(&qword_1EBD40AE0, MEMORY[0x1E69B7F28], MEMORY[0x1E69B7F30]);
    swift_allocError();
    (*(*(v51 - 8) + 104))(v52, *MEMORY[0x1E69B7F18], v51);
    swift_willThrow();
LABEL_25:

    v127 = v1[1];

    return v127();
  }

  v3 = v1[45];
  v4 = v1[42];
  v5 = v1[43];
  v6 = v1[41];
  v7 = v1[14];
  v8 = v1[15];
  v9 = v1[13];
  v10 = *(v5 + 16);
  v5 += 16;
  v11 = (*(v5 + 64) + 32) & ~*(v5 + 64);
  v1[46] = v10;
  v1[47] = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v3, v2 + v11, v4);
  v12 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferSession_transferAssertionId;
  v1[48] = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferSession_transferAssertionId;
  swift_beginAccess();
  sub_1BD0DE19C(v9 + v12, v6, &qword_1EBD39980, &qword_1BE0BF3C0);
  v13 = *(v8 + 48);
  v1[49] = v13;
  v1[50] = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v7) = v13(v6, 1, v7);
  sub_1BD0DE53C(v6, &qword_1EBD39980, &qword_1BE0BF3C0);
  if (v7 == 1)
  {
    v15 = v1 + 28;
    v14 = v1[28];
    v17 = v1 + 26;
    v16 = v1[26];
    v19 = v1 + 25;
    v18 = v1[25];
    sub_1BE04DF94();
    if ((*(v16 + 88))(v14, v18) == *MEMORY[0x1E69CDD80])
    {
      v15 = v1 + 31;
      v20 = v1[31];
      v17 = v1 + 30;
      v21 = v1[30];
      v19 = v1 + 29;
      v22 = v1[28];
      v132 = v1[29];
      v135 = v1[23];
      v24 = v1[21];
      v23 = v1[22];
      (*(v1[26] + 96))(v22, v1[25]);
      (*(v21 + 32))(v20, v22, v132);
      sub_1BE04DF54();
      (*(v23 + 104))(v135, *MEMORY[0x1E69CDD50], v24);
      sub_1BD2C7E30(&qword_1EBD40AF8, MEMORY[0x1E69CDD58], MEMORY[0x1E69CDD60]);
      sub_1BE0526E4();
      sub_1BE0526E4();
      v25 = v1[9];
      v26 = v1[11];
      v27 = v1[23];
      v136 = v1[24];
      v28 = v1[21];
      v29 = v1[22];
      if (v1[8] == v1[10] && v25 == v26)
      {
        v30 = *(v29 + 8);
        v30(v27, v1[21]);
        v30(v136, v28);
        v26, v31, v32, v33, v34, v35, v36, v37;
        v25, v38, v39, v40, v41, v42, v43, v44;
LABEL_16:
        sub_1BE04D094();
        v76 = sub_1BE04D204();
        v77 = sub_1BE052C54();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&dword_1BD026000, v76, v77, "NearbyPeerPayment: nearby sharing interaction of type peerPayment found, grabbing assertion", v78, 2u);
          MEMORY[0x1BFB45F20](v78, -1, -1);
        }

        v79 = v1[37];
        v80 = v1[32];
        v81 = v1[33];

        v82 = *(v81 + 8);
        v1[53] = v82;
        v83 = v82(v79, v80);
        MEMORY[0x1BFB3B000](v83);
        sub_1BE04DFB4();
        v84 = swift_task_alloc();
        v1[54] = v84;
        *v84 = v1;
        v84[1] = sub_1BD2BC160;
        v85 = v1[40];
        v86 = v1[20];

        return MEMORY[0x1EEE37F58](v85, v86);
      }

      v133 = sub_1BE053B84();
      v61 = *(v29 + 8);
      v61(v27, v28);
      v61(v136, v28);
      v26, v62, v63, v64, v65, v66, v67, v68;
      v25, v69, v70, v71, v72, v73, v74, v75;
      if (v133)
      {
        goto LABEL_16;
      }
    }

    (*(*v17 + 8))(*v15, *v19);
    v87 = v1[46];
    v88 = v1[44];
    v89 = v1[45];
    v90 = v1[42];
    sub_1BE04D094();
    v87(v88, v89, v90);
    v91 = sub_1BE04D204();
    v92 = sub_1BE052C34();
    v93 = os_log_type_enabled(v91, v92);
    v95 = v1[43];
    v94 = v1[44];
    v96 = v1[42];
    v97 = v1[35];
    v98 = v1[32];
    v99 = v1[33];
    if (v93)
    {
      v137 = v1[32];
      v101 = v1[26];
      v100 = v1[27];
      v129 = v1[25];
      buf = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v138 = v131;
      *buf = 136315138;
      v134 = v97;
      sub_1BE04DF94();
      sub_1BD2C7E30(&qword_1EBD40B00, MEMORY[0x1E69CDD88], MEMORY[0x1E69CDD90]);
      v128 = sub_1BE053B24();
      v102 = v96;
      v104 = v103;
      (*(v101 + 8))(v100, v129);
      v105 = v94;
      v106 = *(v95 + 8);
      v106(v105, v102);
      v107 = sub_1BD123690(v128, v104, &v138);
      v104, v108, v109, v110, v111, v112, v113, v114;
      *(buf + 4) = v107;
      _os_log_impl(&dword_1BD026000, v91, v92, "NearbyPeerPayment: transfer session received nearby sharing interaction in an unexpected state: %s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v131, v115, v116, v117, v118, v119, v120, v121);
      MEMORY[0x1BFB45F20](v131, -1, -1);
      MEMORY[0x1BFB45F20](buf, -1, -1);

      (*(v99 + 8))(v134, v137);
    }

    else
    {

      v122 = v94;
      v106 = *(v95 + 8);
      v106(v122, v96);
      (*(v99 + 8))(v97, v98);
    }

    v123 = v1[45];
    v124 = v1[42];
    v125 = sub_1BE04B844();
    sub_1BD2C7E30(&qword_1EBD40AE0, MEMORY[0x1E69B7F28], MEMORY[0x1E69B7F30]);
    swift_allocError();
    (*(*(v125 - 8) + 104))(v126, *MEMORY[0x1E69B7F18], v125);
    swift_willThrow();
    v106(v123, v124);
    goto LABEL_25;
  }

  sub_1BE04D094();
  v53 = sub_1BE04D204();
  v54 = sub_1BE052C34();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_1BD026000, v53, v54, "NearbyPeerPayment: transfer session unexpectadly already has an assertion! Attempting to release", v55, 2u);
    MEMORY[0x1BFB45F20](v55, -1, -1);
  }

  v56 = v1[38];
  v57 = v1[32];
  v58 = v1[33];

  (*(v58 + 8))(v56, v57);
  v59 = swift_task_alloc();
  v1[51] = v59;
  *v59 = v1;
  v59[1] = sub_1BD2BB8C8;

  return sub_1BD2BCA80();
}

uint64_t sub_1BD2BB8C8()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_1BD2BC770;
  }

  else
  {
    v2 = sub_1BD2BB9DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2BB9DC(uint64_t a1)
{
  v112 = v1;
  v3 = v1 + 28;
  v2 = v1[28];
  v5 = v1 + 26;
  v4 = v1[26];
  v7 = v1 + 25;
  v6 = v1[25];
  sub_1BE04DF94();
  if ((*(v4 + 88))(v2, v6) == *MEMORY[0x1E69CDD80])
  {
    v3 = v1 + 31;
    v8 = v1[31];
    v5 = v1 + 30;
    v9 = v1[30];
    v7 = v1 + 29;
    v10 = v1[28];
    v104 = v1[29];
    v106 = v1[23];
    v12 = v1[21];
    v11 = v1[22];
    (*(v1[26] + 96))(v10, v1[25]);
    (*(v9 + 32))(v8, v10, v104);
    sub_1BE04DF54();
    (*(v11 + 104))(v106, *MEMORY[0x1E69CDD50], v12);
    sub_1BD2C7E30(&qword_1EBD40AF8, MEMORY[0x1E69CDD58], MEMORY[0x1E69CDD60]);
    sub_1BE0526E4();
    sub_1BE0526E4();
    v13 = v1[9];
    v14 = v1[11];
    v15 = v1[23];
    v109 = v1[24];
    v16 = v1[21];
    v17 = v1[22];
    if (v1[8] == v1[10] && v13 == v14)
    {
      v18 = *(v17 + 8);
      v18(v15, v1[21]);
      v18(v109, v16);
      v14, v19, v20, v21, v22, v23, v24, v25;
      v13, v26, v27, v28, v29, v30, v31, v32;
LABEL_6:
      sub_1BE04D094();
      v48 = sub_1BE04D204();
      v49 = sub_1BE052C54();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1BD026000, v48, v49, "NearbyPeerPayment: nearby sharing interaction of type peerPayment found, grabbing assertion", v50, 2u);
        MEMORY[0x1BFB45F20](v50, -1, -1);
      }

      v51 = v1[37];
      v52 = v1[32];
      v53 = v1[33];

      v54 = *(v53 + 8);
      v1[53] = v54;
      v55 = v54(v51, v52);
      MEMORY[0x1BFB3B000](v55);
      sub_1BE04DFB4();
      v56 = swift_task_alloc();
      v1[54] = v56;
      *v56 = v1;
      v56[1] = sub_1BD2BC160;
      v57 = v1[40];
      v58 = v1[20];

      return MEMORY[0x1EEE37F58](v57, v58);
    }

    v107 = sub_1BE053B84();
    v33 = *(v17 + 8);
    v33(v15, v16);
    v33(v109, v16);
    v14, v34, v35, v36, v37, v38, v39, v40;
    v13, v41, v42, v43, v44, v45, v46, v47;
    if (v107)
    {
      goto LABEL_6;
    }
  }

  (*(*v5 + 8))(*v3, *v7);
  v59 = v1[46];
  v60 = v1[44];
  v61 = v1[45];
  v62 = v1[42];
  sub_1BE04D094();
  v59(v60, v61, v62);
  v63 = sub_1BE04D204();
  v64 = sub_1BE052C34();
  v65 = os_log_type_enabled(v63, v64);
  v67 = v1[43];
  v66 = v1[44];
  v68 = v1[42];
  v69 = v1[35];
  v70 = v1[32];
  v71 = v1[33];
  if (v65)
  {
    v110 = v1[32];
    v73 = v1[26];
    v72 = v1[27];
    v102 = v1[25];
    buf = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v111 = v105;
    *buf = 136315138;
    v108 = v69;
    sub_1BE04DF94();
    sub_1BD2C7E30(&qword_1EBD40B00, MEMORY[0x1E69CDD88], MEMORY[0x1E69CDD90]);
    v101 = sub_1BE053B24();
    v74 = v68;
    v76 = v75;
    (*(v73 + 8))(v72, v102);
    v77 = v66;
    v78 = *(v67 + 8);
    v78(v77, v74);
    v79 = sub_1BD123690(v101, v76, &v111);
    v76, v80, v81, v82, v83, v84, v85, v86;
    *(buf + 4) = v79;
    _os_log_impl(&dword_1BD026000, v63, v64, "NearbyPeerPayment: transfer session received nearby sharing interaction in an unexpected state: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v105, v87, v88, v89, v90, v91, v92, v93);
    MEMORY[0x1BFB45F20](v105, -1, -1);
    MEMORY[0x1BFB45F20](buf, -1, -1);

    (*(v71 + 8))(v108, v110);
  }

  else
  {

    v94 = v66;
    v78 = *(v67 + 8);
    v78(v94, v68);
    (*(v71 + 8))(v69, v70);
  }

  v95 = v1[45];
  v96 = v1[42];
  v97 = sub_1BE04B844();
  sub_1BD2C7E30(&qword_1EBD40AE0, MEMORY[0x1E69B7F28], MEMORY[0x1E69B7F30]);
  swift_allocError();
  (*(*(v97 - 8) + 104))(v98, *MEMORY[0x1E69B7F18], v97);
  swift_willThrow();
  v78(v95, v96);

  v99 = v1[1];

  return v99();
}

uint64_t sub_1BD2BC160()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_1BD2BC8E0;
  }

  else
  {
    v2 = sub_1BD2BC274;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2BC274()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 112);
  if ((*(v0 + 392))(v1, 1, v2) == 1)
  {
    sub_1BD0DE53C(v1, &qword_1EBD39980, &qword_1BE0BF3C0);
    sub_1BE04D094();
    v3 = sub_1BE04D204();
    v4 = sub_1BE052C34();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: Unable to take sharing assertion", v5, 2u);
      MEMORY[0x1BFB45F20](v5, -1, -1);
    }

    v6 = *(v0 + 424);
    v7 = *(v0 + 344);
    v32 = *(v0 + 336);
    v33 = *(v0 + 360);
    v8 = *(v0 + 288);
    v9 = *(v0 + 256);
    v10 = *(v0 + 240);
    v30 = *(v0 + 232);
    v31 = *(v0 + 248);
    v11 = *(v0 + 152);
    v29 = *(v0 + 160);
    v12 = *(v0 + 144);

    v6(v8, v9);
    v13 = sub_1BE04B844();
    sub_1BD2C7E30(&qword_1EBD40AE0, MEMORY[0x1E69B7F28], MEMORY[0x1E69B7F30]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x1E69B7F18], v13);
    swift_willThrow();
    (*(v11 + 8))(v29, v12);
    (*(v10 + 8))(v31, v30);
    (*(v7 + 8))(v33, v32);

    v15 = *(v0 + 8);
  }

  else
  {
    v28 = *(v0 + 384);
    v16 = *(v0 + 344);
    v25 = *(v0 + 336);
    v26 = *(v0 + 360);
    v17 = *(v0 + 312);
    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
    v20 = *(v0 + 232);
    v21 = *(v0 + 120);
    v22 = *(v0 + 128);
    v27 = *(v0 + 104);
    (*(*(v0 + 152) + 8))();
    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v26, v25);
    v23 = *(v21 + 32);
    v23(v22, v1, v2);
    v23(v17, v22, v2);
    (*(v21 + 56))(v17, 0, 1, v2);
    swift_beginAccess();
    sub_1BD2C7C4C(v17, v27 + v28, &qword_1EBD39980, &qword_1BE0BF3C0);
    swift_endAccess();

    v15 = *(v0 + 8);
  }

  return v15();
}

uint64_t sub_1BD2BC770(uint64_t a1)
{
  v2 = v1[45];
  v3 = v1[42];
  v4 = v1[43];
  swift_willThrow();
  (*(v4 + 8))(v2, v3);

  v5 = v1[1];

  return v5();
}

uint64_t sub_1BD2BC8E0()
{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[43];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BD2BCA80()
{
  v1[8] = v0;
  v2 = sub_1BE04D214();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v3 = sub_1BE04AFE4();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BCBF8, 0, 0);
}

uint64_t sub_1BD2BCBF8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferSession_transferAssertionId;
  v0[19] = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferSession_transferAssertionId;
  swift_beginAccess();
  sub_1BD0DE19C(v4 + v5, v3, &qword_1EBD39980, &qword_1BE0BF3C0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1BD0DE53C(v0[15], &qword_1EBD39980, &qword_1BE0BF3C0);
    sub_1BE04D094();
    v6 = sub_1BE04D204();
    v7 = sub_1BE052C34();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BD026000, v6, v7, "NearbyPeerPayment: transfer session attempted to release assertion with no id present", v8, 2u);
      MEMORY[0x1BFB45F20](v8, -1, -1);
    }

    (*(v0[10] + 8))(v0[12], v0[9]);

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
    v11 = swift_task_alloc();
    v0[20] = v11;
    *v11 = v0;
    v11[1] = sub_1BD2BCE50;
    v12 = v0[18];

    return MEMORY[0x1EEE37F68](v12);
  }
}

uint64_t sub_1BD2BCE50()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1BD2BD120;
  }

  else
  {
    v2 = sub_1BD2BCF64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2BCF64()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[8];
  (*(v0[17] + 56))(v2, 1, 1, v0[16]);
  swift_beginAccess();
  sub_1BD2C7C4C(v2, v3 + v1, &qword_1EBD39980, &qword_1BE0BF3C0);
  swift_endAccess();
  sub_1BE04D094();
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C54();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  v8 = v0[9];
  v9 = v0[10];
  if (v6)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1BD026000, v4, v5, "NearbyPeerPayment: transfer session released sharing assertion", v10, 2u);
    MEMORY[0x1BFB45F20](v10, -1, -1);
  }

  (*(v9 + 8))(v7, v8);
  (*(v0[17] + 8))(v0[18], v0[16]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BD2BD120(uint64_t a1)
{
  v2 = v1[21];
  sub_1BE04D094();
  v3 = v2;
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BD026000, v4, v5, "NearbyPeerPayment: transfer session failed to release nearby assertion %@", v7, 0xCu);
    sub_1BD0DE53C(v8, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v8, -1, -1);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  v12 = v1[17];
  v11 = v1[18];
  v13 = v1[16];
  v14 = v1[11];
  v15 = v4;
  v16 = v1[9];
  v17 = v1[10];

  (*(v17 + 8))(v14, v16);
  swift_willThrow();
  (*(v12 + 8))(v11, v13);

  v18 = v1[1];

  return v18();
}

id *NearbyPeerPaymentTransferSession.deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;
  sub_1BD0DE53C(v8 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferSession_transferAssertionId, &qword_1EBD39980, &qword_1BE0BF3C0);
  return v8;
}

uint64_t NearbyPeerPaymentTransferSession.__deallocating_deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;
  sub_1BD0DE53C(v8 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferSession_transferAssertionId, &qword_1EBD39980, &qword_1BE0BF3C0);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD2BD420(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BD2BD480(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1BD2BD514;
}

void sub_1BD2BD514(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1BD2BD598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = sub_1BE04D214();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v10 = sub_1BE04B844();
  v8[18] = v10;
  v8[19] = *(v10 - 8);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40B18, &qword_1BE0C8B80);
  v8[23] = v11;
  v8[24] = *(v11 - 8);
  v8[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v8[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BD780, 0, 0);
}

uint64_t sub_1BD2BD780()
{
  v1 = v0[26];
  v2 = v0[9];
  v3 = sub_1BE0528D4();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  sub_1BE048964();
  v5 = sub_1BD122C00(0, 0, v1, &unk_1BE0C8BA8, v4);
  v0[27] = v5;
  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v6[1] = sub_1BD2BD8E0;
  v7 = MEMORY[0x1E69E73E0];
  v8 = MEMORY[0x1E69E7410];
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA20](v0 + 38, v5, v9, v7, v8);
}

uint64_t sub_1BD2BD8E0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD2BD9DC, 0, 0);
}

uint64_t sub_1BD2BD9DC()
{
  v1 = *(v0 + 96);
  if (*(v0 + 304))
  {
    v2 = *(v0 + 216);
    v1(0);
    v2, v3, v4, v5, v6, v7, v8, v9;

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 88);
    v13 = *(v0 + 72);
    swift_beginAccess();
    *(v13 + 40) = v12;
    swift_unknownObjectWeakAssign();
    v1(1);
    *(v0 + 232) = *(v13 + 16);
    v14 = swift_task_alloc();
    *(v0 + 240) = v14;
    *v14 = v0;
    v14[1] = sub_1BD2BDB68;
    v15 = *(v0 + 200);

    return MEMORY[0x1EEE37F70](v15);
  }
}

uint64_t sub_1BD2BDB68()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1BD2BE8E0;
  }

  else
  {
    v2 = sub_1BD2BDC7C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2BDC7C()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = sub_1BE04DF04();
  (*(v2 + 8))(v1, v3);
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40B38, &qword_1BE0C8B90);
  v6 = sub_1BD0DE4F4(&qword_1EBD40B40, &qword_1EBD40B38, &qword_1BE0C8B90, MEMORY[0x1E69CDD28]);
  v7 = swift_task_alloc();
  v0[32] = v7;
  *v7 = v0;
  v7[1] = sub_1BD2BDDA4;

  return MEMORY[0x1EEE6D8C8](v0 + 7, v5, v6);
}

uint64_t sub_1BD2BDDA4()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1BD2BE044;
  }

  else
  {
    v2 = sub_1BD2BDEB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2BDEDC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 272);
  if (!v9)
  {
    v32 = *(v8 + 216);
    *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;
    v32, v33, v34, v35, v36, v37, v38, v39;
    goto LABEL_5;
  }

  if (sub_1BE052974())
  {
    v17 = *(v8 + 216);
    *(v8 + 40), v10, v11, v12, v13, v14, v15, v16;
    v17, v18, v19, v20, v21, v22, v23, v24;
    v9, v25, v26, v27, v28, v29, v30, v31;
LABEL_5:

    v40 = *(v8 + 8);

    return v40();
  }

  v42 = swift_task_alloc();
  *(v8 + 280) = v42;
  *v42 = v8;
  v42[1] = sub_1BD2BE5CC;

  return sub_1BD2C12AC(v9);
}

uint64_t sub_1BD2BE044()
{
  *(v0 + 64) = *(v0 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BE0D8, 0, 0);
}

uint64_t sub_1BD2BE0D8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 264);
  *(v8 + 48) = v9;
  *(v8 + 296) = v9;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  if (swift_dynamicCast())
  {
    v12 = *(v8 + 168);
    v11 = *(v8 + 176);
    v14 = *(v8 + 152);
    v13 = *(v8 + 160);
    v15 = *(v8 + 144);

    (*(v14 + 32))(v12, v11, v15);
    sub_1BE04D094();
    v16 = *(v14 + 16);
    v16(v13, v12, v15);
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C54();
    v19 = os_log_type_enabled(v17, v18);
    v27 = *(v8 + 152);
    v28 = *(v8 + 160);
    v29 = *(v8 + 144);
    if (v19)
    {
      v66 = *(v8 + 216);
      v30 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v30 = 138412290;
      sub_1BD2C7E30(&qword_1EBD40AE0, MEMORY[0x1E69B7F28], MEMORY[0x1E69B7F30]);
      swift_allocError();
      v16(v31, v28, v29);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      v33 = *(v27 + 8);
      v33(v28, v29);
      *(v30 + 4) = v32;
      *v65 = v32;
      _os_log_impl(&dword_1BD026000, v17, v18, "NearbyPeerPayment: NearbyPeerPayment.InternalError while monitoring nearby devices: %@", v30, 0xCu);
      sub_1BD0DE53C(v65, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v65, -1, -1);
      MEMORY[0x1BFB45F20](v30, -1, -1);
      v66, v34, v35, v36, v37, v38, v39, v40;
    }

    else
    {
      *(v8 + 216), v20, v21, v22, v23, v24, v25, v26;

      v33 = *(v27 + 8);
      v33(v28, v29);
    }

    v49 = *(v8 + 168);
    v50 = *(v8 + 144);
    (*(*(v8 + 120) + 8))(*(v8 + 136), *(v8 + 112));
    v33(v49, v50);
    v48 = *(v8 + 48);
    goto LABEL_8;
  }

  if (sub_1BE052974())
  {
    *(v8 + 216), v41, v42, v43, v44, v45, v46, v47;
    v48 = v9;
LABEL_8:

    v51 = *(v8 + 8);

    return v51();
  }

  sub_1BE04D094();
  v53 = v9;
  v54 = sub_1BE04D204();
  v55 = sub_1BE052C54();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 138412290;
    v58 = v9;
    v59 = _swift_stdlib_bridgeErrorToNSError();
    *(v56 + 4) = v59;
    *v57 = v59;
    _os_log_impl(&dword_1BD026000, v54, v55, "NearbyPeerPayment: unexpected error while monitoring nearby devices: %@", v56, 0xCu);
    sub_1BD0DE53C(v57, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v57, -1, -1);
    MEMORY[0x1BFB45F20](v56, -1, -1);
  }

  v61 = *(v8 + 120);
  v60 = *(v8 + 128);
  v62 = *(v8 + 112);

  (*(v61 + 8))(v60, v62);
  sub_1BE04DDC4();
  sub_1BD2C7E30(&qword_1EBD40B48, MEMORY[0x1E69CDC40], MEMORY[0x1E69CDC48]);
  v64 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BE7B4, v64, v63);
}

uint64_t sub_1BD2BE5CC()
{
  v2 = *v1;
  *(v2 + 288) = v0;

  if (v0)
  {
    *(v2 + 272), v3, v4, v5, v6, v7, v8, v9;

    return MEMORY[0x1EEE6DFA0](sub_1BD2BEDCC, 0, 0);
  }

  else
  {
    *(v2 + 272), v3, v4, v5, v6, v7, v8, v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40B38, &qword_1BE0C8B90);
    v11 = sub_1BD0DE4F4(&qword_1EBD40B40, &qword_1EBD40B38, &qword_1BE0C8B90, MEMORY[0x1E69CDD28]);
    v12 = swift_task_alloc();
    *(v2 + 256) = v12;
    *v12 = v2;
    v12[1] = sub_1BD2BDDA4;

    return MEMORY[0x1EEE6D8C8](v2 + 56, v10, v11);
  }
}

uint64_t sub_1BD2BE7B4()
{
  sub_1BE04DD84();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BE81C, 0, 0);
}

uint64_t sub_1BD2BE81C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 296);
  *(v8 + 216), a2, a3, a4, a5, a6, a7, a8;

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_1BD2BE8E0()
{
  v1 = *(v0 + 248);
  *(v0 + 48) = v1;
  *(v0 + 296) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 168);
    v3 = *(v0 + 176);
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v7 = *(v0 + 144);

    (*(v6 + 32))(v4, v3, v7);
    sub_1BE04D094();
    v8 = *(v6 + 16);
    v8(v5, v4, v7);
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C54();
    v11 = os_log_type_enabled(v9, v10);
    v19 = *(v0 + 152);
    v20 = *(v0 + 160);
    v21 = *(v0 + 144);
    if (v11)
    {
      v58 = *(v0 + 216);
      v22 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v22 = 138412290;
      sub_1BD2C7E30(&qword_1EBD40AE0, MEMORY[0x1E69B7F28], MEMORY[0x1E69B7F30]);
      swift_allocError();
      v8(v23, v20, v21);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      v25 = *(v19 + 8);
      v25(v20, v21);
      *(v22 + 4) = v24;
      *v57 = v24;
      _os_log_impl(&dword_1BD026000, v9, v10, "NearbyPeerPayment: NearbyPeerPayment.InternalError while monitoring nearby devices: %@", v22, 0xCu);
      sub_1BD0DE53C(v57, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v57, -1, -1);
      MEMORY[0x1BFB45F20](v22, -1, -1);
      v58, v26, v27, v28, v29, v30, v31, v32;
    }

    else
    {
      *(v0 + 216), v12, v13, v14, v15, v16, v17, v18;

      v25 = *(v19 + 8);
      v25(v20, v21);
    }

    v41 = *(v0 + 168);
    v42 = *(v0 + 144);
    (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
    v25(v41, v42);
    v40 = *(v0 + 48);
    goto LABEL_8;
  }

  if (sub_1BE052974())
  {
    *(v0 + 216), v33, v34, v35, v36, v37, v38, v39;
    v40 = v1;
LABEL_8:

    v43 = *(v0 + 8);

    return v43();
  }

  sub_1BE04D094();
  v45 = v1;
  v46 = sub_1BE04D204();
  v47 = sub_1BE052C54();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    v50 = v1;
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 4) = v51;
    *v49 = v51;
    _os_log_impl(&dword_1BD026000, v46, v47, "NearbyPeerPayment: unexpected error while monitoring nearby devices: %@", v48, 0xCu);
    sub_1BD0DE53C(v49, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v49, -1, -1);
    MEMORY[0x1BFB45F20](v48, -1, -1);
  }

  v53 = *(v0 + 120);
  v52 = *(v0 + 128);
  v54 = *(v0 + 112);

  (*(v53 + 8))(v52, v54);
  sub_1BE04DDC4();
  sub_1BD2C7E30(&qword_1EBD40B48, MEMORY[0x1E69CDC40], MEMORY[0x1E69CDC48]);
  v56 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BE7B4, v56, v55);
}

uint64_t sub_1BD2BEDCC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 288);
  *(v8 + 48) = v9;
  *(v8 + 296) = v9;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  if (swift_dynamicCast())
  {
    v12 = *(v8 + 168);
    v11 = *(v8 + 176);
    v14 = *(v8 + 152);
    v13 = *(v8 + 160);
    v15 = *(v8 + 144);

    (*(v14 + 32))(v12, v11, v15);
    sub_1BE04D094();
    v16 = *(v14 + 16);
    v16(v13, v12, v15);
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C54();
    v19 = os_log_type_enabled(v17, v18);
    v27 = *(v8 + 152);
    v28 = *(v8 + 160);
    v29 = *(v8 + 144);
    if (v19)
    {
      v66 = *(v8 + 216);
      v30 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v30 = 138412290;
      sub_1BD2C7E30(&qword_1EBD40AE0, MEMORY[0x1E69B7F28], MEMORY[0x1E69B7F30]);
      swift_allocError();
      v16(v31, v28, v29);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      v33 = *(v27 + 8);
      v33(v28, v29);
      *(v30 + 4) = v32;
      *v65 = v32;
      _os_log_impl(&dword_1BD026000, v17, v18, "NearbyPeerPayment: NearbyPeerPayment.InternalError while monitoring nearby devices: %@", v30, 0xCu);
      sub_1BD0DE53C(v65, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v65, -1, -1);
      MEMORY[0x1BFB45F20](v30, -1, -1);
      v66, v34, v35, v36, v37, v38, v39, v40;
    }

    else
    {
      *(v8 + 216), v20, v21, v22, v23, v24, v25, v26;

      v33 = *(v27 + 8);
      v33(v28, v29);
    }

    v49 = *(v8 + 168);
    v50 = *(v8 + 144);
    (*(*(v8 + 120) + 8))(*(v8 + 136), *(v8 + 112));
    v33(v49, v50);
    v48 = *(v8 + 48);
    goto LABEL_8;
  }

  if (sub_1BE052974())
  {
    *(v8 + 216), v41, v42, v43, v44, v45, v46, v47;
    v48 = v9;
LABEL_8:

    v51 = *(v8 + 8);

    return v51();
  }

  sub_1BE04D094();
  v53 = v9;
  v54 = sub_1BE04D204();
  v55 = sub_1BE052C54();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 138412290;
    v58 = v9;
    v59 = _swift_stdlib_bridgeErrorToNSError();
    *(v56 + 4) = v59;
    *v57 = v59;
    _os_log_impl(&dword_1BD026000, v54, v55, "NearbyPeerPayment: unexpected error while monitoring nearby devices: %@", v56, 0xCu);
    sub_1BD0DE53C(v57, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v57, -1, -1);
    MEMORY[0x1BFB45F20](v56, -1, -1);
  }

  v61 = *(v8 + 120);
  v60 = *(v8 + 128);
  v62 = *(v8 + 112);

  (*(v61 + 8))(v60, v62);
  sub_1BE04DDC4();
  sub_1BD2C7E30(&qword_1EBD40B48, MEMORY[0x1E69CDC40], MEMORY[0x1E69CDC48]);
  v64 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BE7B4, v64, v63);
}

uint64_t sub_1BD2BF2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1BE04DFD4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_1BE04DFF4();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = sub_1BE04D214();
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BF444, 0, 0);
}

uint64_t sub_1BD2BF444(uint64_t a1)
{
  sub_1BE04D094();
  v2 = sub_1BE04D204();
  v3 = sub_1BE052C54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v2, v3, "NearbyPeerPayment: start device polling", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];
  v9 = v1[4];
  v8 = v1[5];
  v10 = v1[3];

  v11 = *(v7 + 8);
  v1[13] = v11;
  v11(v5, v6);
  (*(v9 + 104))(v8, *MEMORY[0x1E69CDD98], v10);
  sub_1BE04DFE4();
  v12 = swift_task_alloc();
  v1[14] = v12;
  *v12 = v1;
  v12[1] = sub_1BD2BF5F0;
  v13 = v1[8];

  return MEMORY[0x1EEE37F60](v13);
}

uint64_t sub_1BD2BF5F0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1BD2BF7A4;
  }

  else
  {
    v2 = sub_1BD2BF704;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2BF704()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BD2BF7A4(uint64_t a1)
{
  v2 = v1[15];
  sub_1BE04D094();
  v3 = v2;
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C54();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BD026000, v4, v5, "NearbyPeerPayment: error while starting device discovery: %@", v7, 0xCu);
    sub_1BD0DE53C(v8, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v8, -1, -1);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  v11 = v1[15];
  v12 = v1[13];
  v13 = v1[11];
  v14 = v1[9];

  v12(v13, v14);
  (*(v1[7] + 8))(v1[8], v1[6]);

  v15 = v1[1];

  return v15();
}

uint64_t sub_1BD2BF964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 129) = a5;
  *(v8 + 16) = a4;
  *(v8 + 24) = a6;
  v9 = sub_1BE04D214();
  *(v8 + 48) = v9;
  *(v8 + 56) = *(v9 - 8);
  *(v8 + 64) = swift_task_alloc();
  *(v8 + 72) = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0) - 8);
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 + 64);
  *(v8 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  *(v8 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2BFADC, 0, 0);
}

uint64_t sub_1BD2BFADC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 129);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = sub_1BE0528D4();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_1BD0DE19C(v5, v1, &qword_1EBD39980, &qword_1BE0BF3C0);
  v8 = (*(v3 + 80) + 41) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v4;
  sub_1BD124200(v1, v9 + v8);
  sub_1BE048964();
  v10 = sub_1BD122C00(0, 0, v2, &unk_1BE0C8BE0, v9);
  *(v0 + 112) = v10;
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = sub_1BD2BFC8C;
  v12 = MEMORY[0x1E69E73E0];
  v13 = MEMORY[0x1E69E7410];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA20](v0 + 128, v10, v14, v12, v13);
}

uint64_t sub_1BD2BFC8C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD2BFD88, 0, 0);
}

uint64_t sub_1BD2BFD88()
{
  v1 = *(v0 + 32);
  if (*(v0 + 128))
  {
    v2 = (v0 + 64);
    v1(0);
    sub_1BE04D094();
    v3 = sub_1BE04D204();
    v4 = sub_1BE052C54();
    if (os_log_type_enabled(v3, v4))
    {
      v12 = "NearbyPeerPayment: device discovery monitoring stop unsuccessful";
LABEL_6:
      v13 = *v2;
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1BD026000, v3, v4, v12, v14, 2u);
      MEMORY[0x1BFB45F20](v14, -1, -1);
      goto LABEL_8;
    }
  }

  else
  {
    v2 = (v0 + 72);
    v1(1);
    sub_1BE04D094();
    v3 = sub_1BE04D204();
    v4 = sub_1BE052C54();
    if (os_log_type_enabled(v3, v4))
    {
      v12 = "NearbyPeerPayment: device discovery monitoring stopped";
      goto LABEL_6;
    }
  }

  v13 = *v2;
LABEL_8:
  v15 = *(v0 + 48);
  v16 = *(v0 + 56);
  *(v0 + 112), v5, v6, v7, v8, v9, v10, v11;

  (*(v16 + 8))(v13, v15);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1BD2BFF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 224) = a5;
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  *(v6 + 56) = swift_task_alloc();
  v7 = sub_1BE04AFE4();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  v8 = sub_1BE04D214();
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A80, &qword_1BE0C89A8);
  *(v6 + 120) = swift_task_alloc();
  v9 = sub_1BE04E0B4();
  *(v6 + 128) = v9;
  *(v6 + 136) = *(v9 - 8);
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2C0138, 0, 0);
}

uint64_t sub_1BD2C0138()
{
  v61 = v0;
  v1 = *(*(v0 + 40) + 48);
  if (v1)
  {
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    sub_1BE052944();
    v1, v2, v3, v4, v5, v6, v7, v8;
  }

  if (*(v0 + 224) != 1)
  {
    goto LABEL_6;
  }

  v9 = *(v0 + 128);
  v10 = *(v0 + 136);
  v11 = *(v0 + 120);
  v12 = *(v0 + 40);
  v13 = OBJC_IVAR____TtC9PassKitUI39NearbyPeerPaymentDeviceDiscoverySession_transferID;
  swift_beginAccess();
  sub_1BD0DE19C(v12 + v13, v11, &qword_1EBD40A80, &qword_1BE0C89A8);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    sub_1BD0DE53C(*(v0 + 120), &qword_1EBD40A80, &qword_1BE0C89A8);
LABEL_6:
    v14 = *(v0 + 64);
    v15 = *(v0 + 72);
    v16 = *(v0 + 56);
    sub_1BD0DE19C(*(v0 + 48), v16, &qword_1EBD39980, &qword_1BE0BF3C0);
    if ((*(v15 + 48))(v16, 1, v14) == 1)
    {
      sub_1BD0DE53C(*(v0 + 56), &qword_1EBD39980, &qword_1BE0BF3C0);
      *(v0 + 200) = *(*(v0 + 40) + 16);
      v17 = swift_task_alloc();
      *(v0 + 208) = v17;
      *v17 = v0;
      v17[1] = sub_1BD2C0B00;

      return MEMORY[0x1EEE37F50](0xD00000000000001BLL, 0x80000001BE11EC10);
    }

    else
    {
      (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
      v18 = swift_task_alloc();
      *(v0 + 184) = v18;
      *v18 = v0;
      v18[1] = sub_1BD2C0920;
      v19 = *(v0 + 80);

      return MEMORY[0x1EEE37F68](v19);
    }
  }

  v20 = *(v0 + 144);
  v21 = *(v0 + 152);
  v22 = *(v0 + 128);
  v23 = *(v0 + 136);
  (*(v23 + 32))(v21, *(v0 + 120), v22);
  sub_1BE04D094();
  (*(v23 + 16))(v20, v21, v22);
  v24 = sub_1BE04D204();
  v25 = sub_1BE052C54();
  v26 = os_log_type_enabled(v24, v25);
  v28 = *(v0 + 136);
  v27 = *(v0 + 144);
  v29 = *(v0 + 128);
  v30 = *(v0 + 112);
  v32 = *(v0 + 88);
  v31 = *(v0 + 96);
  if (v26)
  {
    v59 = *(v0 + 88);
    v33 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v60 = v58;
    *v33 = 136315138;
    sub_1BD2C7E30(&unk_1EBD47730, MEMORY[0x1E69CDDE8], MEMORY[0x1E69CDDF0]);
    v34 = sub_1BE053B24();
    v57 = v30;
    v36 = v35;
    v56 = v25;
    v37 = *(v28 + 8);
    v37(v27, v29);
    v38 = sub_1BD123690(v34, v36, &v60);
    v36, v39, v40, v41, v42, v43, v44, v45;
    *(v33 + 4) = v38;
    _os_log_impl(&dword_1BD026000, v24, v56, "NearbyPeerPayment: cancelling transfer id: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58, v46, v47, v48, v49, v50, v51, v52);
    MEMORY[0x1BFB45F20](v58, -1, -1);
    MEMORY[0x1BFB45F20](v33, -1, -1);

    (*(v31 + 8))(v57, v59);
  }

  else
  {

    v37 = *(v28 + 8);
    v37(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  *(v0 + 160) = v37;
  v53 = swift_task_alloc();
  *(v0 + 168) = v53;
  *v53 = v0;
  v53[1] = sub_1BD2C0648;
  v54 = *(v0 + 152);

  return MEMORY[0x1EEE37F98](v54);
}

uint64_t sub_1BD2C0648()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1BD2C0D30;
  }

  else
  {
    v2 = sub_1BD2C075C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2C075C()
{
  (*(v0 + 160))(*(v0 + 152), *(v0 + 128));
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  sub_1BD0DE19C(*(v0 + 48), v3, &qword_1EBD39980, &qword_1BE0BF3C0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1BD0DE53C(*(v0 + 56), &qword_1EBD39980, &qword_1BE0BF3C0);
    *(v0 + 200) = *(*(v0 + 40) + 16);
    v4 = swift_task_alloc();
    *(v0 + 208) = v4;
    *v4 = v0;
    v4[1] = sub_1BD2C0B00;

    return MEMORY[0x1EEE37F50](0xD00000000000001BLL, 0x80000001BE11EC10);
  }

  else
  {
    (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = sub_1BD2C0920;
    v6 = *(v0 + 80);

    return MEMORY[0x1EEE37F68](v6);
  }
}

uint64_t sub_1BD2C0920()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1BD2C0F0C;
  }

  else
  {
    v2 = sub_1BD2C0A34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2C0A34()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v0[25] = *(v0[5] + 16);
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_1BD2C0B00;

  return MEMORY[0x1EEE37F50](0xD00000000000001BLL, 0x80000001BE11EC10);
}

uint64_t sub_1BD2C0B00()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1BD2C10E8;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    sub_1BE04DDC4();
    sub_1BD2C7E30(&qword_1EBD40B48, MEMORY[0x1E69CDC40], MEMORY[0x1E69CDC48]);
    v5 = sub_1BE052844();
    v7 = v6;
    v2 = sub_1BD2C0C78;
    v3 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BD2C0C78()
{
  sub_1BE04DD84();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD2C0D30()
{
  (*(v0 + 160))(*(v0 + 152), *(v0 + 128));
  v1 = *(v0 + 176);
  sub_1BE04D094();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: polling stop error: %@", v5, 0xCu);
    sub_1BD0DE53C(v6, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1BD2C0F0C()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[24];
  sub_1BE04D094();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: polling stop error: %@", v5, 0xCu);
    sub_1BD0DE53C(v6, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[12] + 8))(v0[13], v0[11]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BD2C10E8(uint64_t a1)
{
  v2 = v1[27];
  sub_1BE04D094();
  v3 = v2;
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C54();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BD026000, v4, v5, "NearbyPeerPayment: polling stop error: %@", v6, 0xCu);
    sub_1BD0DE53C(v7, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v7, -1, -1);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  else
  {
  }

  (*(v1[12] + 8))(v1[13], v1[11]);

  v10 = v1[1];

  return v10();
}

uint64_t sub_1BD2C12AC(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_1BE04DF14();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v4 = sub_1BE04DFC4();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v5 = sub_1BE04AFE4();
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v6 = sub_1BE04DF24();
  v2[32] = v6;
  v2[33] = *(v6 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v7 = sub_1BE04DF64();
  v2[36] = v7;
  v2[37] = *(v7 - 8);
  v2[38] = swift_task_alloc();
  v8 = sub_1BE04D214();
  v2[39] = v8;
  v2[40] = *(v8 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v9 = sub_1BE04DF84();
  v2[46] = v9;
  v2[47] = *(v9 - 8);
  v2[48] = swift_task_alloc();
  v10 = sub_1BE04DFA4();
  v2[49] = v10;
  v2[50] = *(v10 - 8);
  v2[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2C16A0, 0, 0);
}

uint64_t sub_1BD2C16A0()
{
  v155 = v0;
  v1 = v0[15];
  if (!*(v1 + 16))
  {
LABEL_17:

    v84 = v0[1];

    return v84();
  }

  v2 = v0[48];
  v3 = v0[46];
  v4 = v0[47];
  (*(v0[50] + 16))(v0[51], v1 + ((*(v0[50] + 80) + 32) & ~*(v0[50] + 80)), v0[49]);
  sub_1BE04DF94();
  v5 = (*(v4 + 88))(v2, v3);
  if (v5 == *MEMORY[0x1E69CDD70])
  {
    sub_1BE04D094();
    v6 = sub_1BE04D204();
    v7 = sub_1BE052C54();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BD026000, v6, v7, "NearbyPeerPayment: nearby presence detected", v8, 2u);
      MEMORY[0x1BFB45F20](v8, -1, -1);
    }

    v9 = v0[45];
    v10 = v0[39];
    v11 = v0[40];

    (*(v11 + 8))(v9, v10);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v0[16] + 40);
      ObjectType = swift_getObjectType();
      (*(v12 + 8))(ObjectType, v12);
      swift_unknownObjectRelease();
    }

LABEL_14:
    v79 = v0[50];
    v78 = v0[51];
    v81 = v0[48];
    v80 = v0[49];
    v82 = v0[46];
    v83 = v0[47];
LABEL_15:
    (*(v79 + 8))(v78, v80);
LABEL_16:
    (*(v83 + 8))(v81, v82);
    goto LABEL_17;
  }

  if (v5 != *MEMORY[0x1E69CDD80])
  {
    if (v5 == *MEMORY[0x1E69CDD78])
    {
      v42 = v0[48];
      v44 = v0[20];
      v43 = v0[21];
      v45 = v0[17];
      v46 = v0[18];
      (*(v0[47] + 96))(v42, v0[46]);
      (*(v46 + 32))(v43, v42, v45);
      sub_1BE04D094();
      v47 = *(v46 + 16);
      v47(v44, v43, v45);
      v48 = sub_1BE04D204();
      v49 = sub_1BE052C54();
      v50 = os_log_type_enabled(v48, v49);
      v51 = v0[40];
      v52 = v0[41];
      v53 = v0[39];
      v54 = v0[20];
      if (v50)
      {
        v148 = v49;
        v56 = v0[18];
        v55 = v0[19];
        v152 = v0[39];
        v57 = v0[17];
        v150 = v0[41];
        v58 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v154 = v146;
        *v58 = 136315138;
        v47(v55, v54, v57);
        v59 = sub_1BE0524A4();
        v61 = v60;
        v62 = *(v56 + 8);
        v62(v54, v57);
        v63 = sub_1BD123690(v59, v61, &v154);
        v61, v64, v65, v66, v67, v68, v69, v70;
        *(v58 + 4) = v63;
        _os_log_impl(&dword_1BD026000, v48, v148, "NearbyPeerPayment: connection interrupted with failure: %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v146, v71, v72, v73, v74, v75, v76, v77);
        MEMORY[0x1BFB45F20](v146, -1, -1);
        MEMORY[0x1BFB45F20](v58, -1, -1);

        (*(v51 + 8))(v150, v152);
      }

      else
      {
        v128 = v0[17];
        v129 = v0[18];

        v62 = *(v129 + 8);
        v62(v54, v128);
        (*(v51 + 8))(v52, v53);
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v130 = v0[21];
        v131 = *(v0[16] + 40);
        v132 = swift_getObjectType();
        (*(v131 + 24))(v130, v132, v131);
        swift_unknownObjectRelease();
      }

      v83 = v0[50];
      v81 = v0[51];
      v82 = v0[49];
      v62(v0[21], v0[17]);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v14 = v0[48];
  v16 = v0[37];
  v15 = v0[38];
  v17 = v0[36];
  v19 = v0[33];
  v18 = v0[34];
  v20 = v0[32];
  (*(v0[47] + 96))(v14, v0[46]);
  (*(v16 + 32))(v15, v14, v17);
  sub_1BE04DF54();
  (*(v19 + 104))(v18, *MEMORY[0x1E69CDD50], v20);
  sub_1BD2C7E30(&qword_1EBD40AF8, MEMORY[0x1E69CDD58], MEMORY[0x1E69CDD60]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  v21 = v0[12];
  v22 = v0[14];
  v24 = v0[34];
  v23 = v0[35];
  v25 = v0[32];
  v26 = v0[33];
  if (v0[11] == v0[13] && v21 == v22)
  {
    v27 = *(v26 + 8);
    v27(v0[34], v0[32]);
    v27(v23, v25);
    v22, v28, v29, v30, v31, v32, v33, v34;
    v21, v35, v36, v37, v38, v39, v40, v41;
  }

  else
  {
    v86 = sub_1BE053B84();
    v87 = *(v26 + 8);
    v87(v24, v25);
    v87(v23, v25);
    v22, v88, v89, v90, v91, v92, v93, v94;
    v21, v95, v96, v97, v98, v99, v100, v101;
    if ((v86 & 1) == 0)
    {
      v83 = v0[50];
      v81 = v0[51];
      v82 = v0[49];
      v79 = v0[37];
      v78 = v0[38];
      v80 = v0[36];
      goto LABEL_15;
    }
  }

  v102 = v0[27];
  v103 = v0[28];
  v104 = v0[26];
  sub_1BE04DF44();
  v105 = *(v103 + 48);
  v0[52] = v105;
  v0[53] = (v103 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v105(v104, 1, v102) == 1)
  {
    v107 = v0[50];
    v106 = v0[51];
    v108 = v0[49];
    v109 = v0[26];
    (*(v0[37] + 8))(v0[38], v0[36]);
    (*(v107 + 8))(v106, v108);
    sub_1BD0DE53C(v109, &qword_1EBD39980, &qword_1BE0BF3C0);
    goto LABEL_17;
  }

  v110 = v0[31];
  v111 = v0[27];
  v112 = v0[28];
  v113 = v0[26];
  v114 = v0[16];
  v115 = *(v112 + 32);
  v0[54] = v115;
  v0[55] = (v112 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v115(v110, v113, v111);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[56] = Strong;
  v0[57] = *(v114 + 40);
  if (!Strong)
  {
    sub_1BE04D094();
    v133 = sub_1BE04D204();
    v134 = sub_1BE052C34();
    v135 = os_log_type_enabled(v133, v134);
    v137 = v0[50];
    v136 = v0[51];
    v139 = v0[39];
    v138 = v0[40];
    v140 = v0[37];
    v151 = v0[38];
    v153 = v0[49];
    v149 = v0[36];
    v145 = v0[42];
    v147 = v0[31];
    v142 = v0[27];
    v141 = v0[28];
    if (v135)
    {
      v144 = v0[51];
      v143 = swift_slowAlloc();
      *v143 = 0;
      _os_log_impl(&dword_1BD026000, v133, v134, "NearbyPeerPayment: Devices connected, but delegate was nil, skipping.", v143, 2u);
      MEMORY[0x1BFB45F20](v143, -1, -1);

      (*(v138 + 8))(v145, v139);
      (*(v141 + 8))(v147, v142);
      (*(v140 + 8))(v151, v149);
      (*(v137 + 8))(v144, v153);
    }

    else
    {

      (*(v138 + 8))(v145, v139);
      (*(v141 + 8))(v147, v142);
      (*(v140 + 8))(v151, v149);
      (*(v137 + 8))(v136, v153);
    }

    goto LABEL_17;
  }

  sub_1BE04D094();
  v117 = sub_1BE04D204();
  v118 = sub_1BE052C54();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    *v119 = 0;
    _os_log_impl(&dword_1BD026000, v117, v118, "NearbyPeerPayment: nearby sharing interaction of type peerPayment initiated, grabbing assertion", v119, 2u);
    MEMORY[0x1BFB45F20](v119, -1, -1);
  }

  v120 = v0[44];
  v121 = v0[39];
  v122 = v0[40];

  v123 = *(v122 + 8);
  v0[58] = v123;
  v124 = v123(v120, v121);
  MEMORY[0x1BFB3B000](v124);
  sub_1BE04DFB4();
  v125 = swift_task_alloc();
  v0[59] = v125;
  *v125 = v0;
  v125[1] = sub_1BD2C215C;
  v127 = v0[24];
  v126 = v0[25];

  return MEMORY[0x1EEE37F58](v126, v127);
}

uint64_t sub_1BD2C215C()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_1BD2C296C;
  }

  else
  {
    v2 = sub_1BD2C2270;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2C2270()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  if ((*(v0 + 416))(v2, 1, v1) == 1)
  {
    sub_1BD0DE53C(v2, &qword_1EBD39980, &qword_1BE0BF3C0);
    sub_1BE04D094();
    v3 = sub_1BE04D204();
    v4 = sub_1BE052C34();
    v5 = os_log_type_enabled(v3, v4);
    v32 = *(v0 + 464);
    v7 = *(v0 + 400);
    v6 = *(v0 + 408);
    v28 = *(v0 + 312);
    v8 = *(v0 + 296);
    v34 = *(v0 + 304);
    v35 = *(v0 + 392);
    v33 = *(v0 + 288);
    v30 = *(v0 + 344);
    v31 = *(v0 + 248);
    v9 = *(v0 + 224);
    v29 = *(v0 + 216);
    v10 = *(v0 + 184);
    v11 = *(v0 + 192);
    v12 = *(v0 + 176);
    if (v5)
    {
      v27 = *(v0 + 408);
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: Error taking airdrop assertion, skipping.", v13, 2u);
      v14 = v13;
      v6 = v27;
      MEMORY[0x1BFB45F20](v14, -1, -1);
    }

    swift_unknownObjectRelease();
    v32(v30, v28);
    (*(v10 + 8))(v11, v12);
    (*(v9 + 8))(v31, v29);
    (*(v8 + 8))(v34, v33);
    (*(v7 + 8))(v6, v35);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 456);
    v18 = *(v0 + 304);
    (*(v0 + 432))(*(v0 + 232), v2, v1);
    ObjectType = swift_getObjectType();
    v20 = (*(v17 + 32))(v18, ObjectType, v17);
    v21 = sub_1BE04DF34();
    v23 = v22;
    *(v0 + 488) = v22;
    v24 = swift_task_alloc();
    *(v0 + 496) = v24;
    *v24 = v0;
    v24[1] = sub_1BD2C2640;
    v25 = *(v0 + 248);
    v26 = *(v0 + 232);

    return sub_1BD2C2D4C(v26, v25, v21, v23, v20 & 1);
  }
}

uint64_t sub_1BD2C2640()
{
  v2 = *(*v1 + 488);
  *(*v1 + 504) = v0;

  v2, v3, v4, v5, v6, v7, v8, v9;
  if (v0)
  {
    v10 = sub_1BD2C2B50;
  }

  else
  {
    v10 = sub_1BD2C2770;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1BD2C2770()
{
  v1 = v0[50];
  v15 = v0[49];
  v16 = v0[51];
  v2 = v0[37];
  v13 = v0[36];
  v14 = v0[38];
  v12 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];
  swift_unknownObjectRelease();
  v9 = *(v3 + 8);
  v9(v4, v5);
  (*(v6 + 8))(v7, v8);
  v9(v12, v5);
  (*(v2 + 8))(v14, v13);
  (*(v1 + 8))(v16, v15);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1BD2C296C()
{
  v1 = v0[28];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);
  v5 = v0[50];
  v6 = v0[51];
  v7 = v0[49];
  v9 = v0[37];
  v8 = v0[38];
  v10 = v0[36];
  (*(v1 + 8))(v0[31], v0[27]);
  (*(v9 + 8))(v8, v10);
  (*(v5 + 8))(v6, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BD2C2B50()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  swift_unknownObjectRelease();
  v7 = *(v2 + 8);
  v7(v1, v3);
  (*(v5 + 8))(v4, v6);
  v8 = v0[50];
  v9 = v0[51];
  v10 = v0[49];
  v11 = v0[37];
  v12 = v0[38];
  v13 = v0[36];
  v7(v0[31], v0[27]);
  (*(v11 + 8))(v12, v13);
  (*(v8 + 8))(v9, v10);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1BD2C2D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 120) = a4;
  *(v6 + 128) = v5;
  *(v6 + 728) = a5;
  *(v6 + 104) = a2;
  *(v6 + 112) = a3;
  *(v6 + 96) = a1;
  v7 = sub_1BE04DC74();
  *(v6 + 136) = v7;
  *(v6 + 144) = *(v7 - 8);
  *(v6 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40AA8, &qword_1BE0C8AF0);
  *(v6 + 160) = swift_task_alloc();
  v8 = sub_1BE04DCC4();
  *(v6 + 168) = v8;
  *(v6 + 176) = *(v8 - 8);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40AB0, &qword_1BE0C8AF8);
  *(v6 + 200) = swift_task_alloc();
  v9 = sub_1BE04DCE4();
  *(v6 + 208) = v9;
  *(v6 + 216) = *(v9 - 8);
  *(v6 + 224) = swift_task_alloc();
  v10 = sub_1BE04E0B4();
  *(v6 + 232) = v10;
  *(v6 + 240) = *(v10 - 8);
  *(v6 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A80, &qword_1BE0C89A8);
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  v11 = sub_1BE04DCA4();
  *(v6 + 272) = v11;
  *(v6 + 280) = *(v11 - 8);
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  v12 = sub_1BE04DCF4();
  *(v6 + 304) = v12;
  *(v6 + 312) = *(v12 - 8);
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40AB8, &qword_1BE0C8B00);
  *(v6 + 352) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40AC0, &qword_1BE0C8B08);
  *(v6 + 360) = v13;
  *(v6 + 368) = *(v13 - 8);
  *(v6 + 376) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40AC8, &unk_1BE0C8B10);
  *(v6 + 384) = v14;
  *(v6 + 392) = *(v14 - 8);
  *(v6 + 400) = swift_task_alloc();
  v15 = sub_1BE04D214();
  *(v6 + 408) = v15;
  *(v6 + 416) = *(v15 - 8);
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  v16 = sub_1BE04DC24();
  *(v6 + 456) = v16;
  *(v6 + 464) = *(v16 - 8);
  *(v6 + 472) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0, &qword_1BE0B9180);
  *(v6 + 480) = swift_task_alloc();
  v17 = sub_1BE04C4C4();
  *(v6 + 488) = v17;
  *(v6 + 496) = *(v17 - 8);
  *(v6 + 504) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40AD0, &unk_1BE0C8B20);
  *(v6 + 512) = swift_task_alloc();
  v18 = sub_1BE04DC44();
  *(v6 + 520) = v18;
  v19 = *(v18 - 8);
  *(v6 + 528) = v19;
  *(v6 + 536) = *(v19 + 64);
  *(v6 + 544) = swift_task_alloc();
  *(v6 + 552) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  *(v6 + 560) = swift_task_alloc();
  v20 = sub_1BE04AA64();
  *(v6 + 568) = v20;
  v21 = *(v20 - 8);
  *(v6 + 576) = v21;
  *(v6 + 584) = *(v21 + 64);
  *(v6 + 592) = swift_task_alloc();
  *(v6 + 600) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2C349C, 0, 0);
}

uint64_t sub_1BD2C349C()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  static NearbyAirDropSendFactory.peerPaymentPostTransactionMetadataFileURL()(v3);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 560);
    v5 = &unk_1EBD3CF70;
    v6 = &qword_1BE0BA000;
LABEL_8:
    sub_1BD0DE53C(v4, v5, v6);

    v32 = *(v0 + 8);

    return v32();
  }

  v7 = *(v0 + 528);
  v8 = *(v0 + 520);
  v9 = *(v0 + 512);
  v10 = *(*(v0 + 576) + 32);
  v10(*(v0 + 600), *(v0 + 560), *(v0 + 568));
  static NearbyAirDropSendFactory.peerPaymentPostTransactionMetadata()(v9);
  if ((*(v7 + 48))(v9, 1, v8) == 1)
  {
    v11 = *(v0 + 512);
    (*(*(v0 + 576) + 8))(*(v0 + 600), *(v0 + 568));
    v5 = &qword_1EBD40AD0;
    v6 = &unk_1BE0C8B20;
    v4 = v11;
    goto LABEL_8;
  }

  v12 = *(v0 + 128);
  v13 = *(*(v0 + 528) + 32);
  v13(*(v0 + 552), *(v0 + 512), *(v0 + 520));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 608) = Strong;
  v15 = *(v12 + 40);
  *(v0 + 616) = v15;
  if (!Strong)
  {
    return sub_1BE053994();
  }

  v16 = Strong;
  v67 = v13;
  v17 = *(v0 + 496);
  v68 = v10;
  v69 = *(v0 + 488);
  v18 = *(v0 + 480);
  v19 = *(v0 + 728);
  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  v22 = *(v0 + 96);
  ObjectType = swift_getObjectType();
  *(v0 + 624) = ObjectType;
  (*(v15 + 16))(v22, v21, v20, v19, ObjectType, v15);
  v24 = (*(v17 + 48))(v18, 1, v69);
  v25 = *(v0 + 600);
  if (v24 == 1)
  {
    v26 = *(v0 + 576);
    v27 = *(v0 + 568);
    v28 = *(v0 + 552);
    v29 = *(v0 + 528);
    v30 = *(v0 + 520);
    v31 = *(v0 + 480);
    swift_unknownObjectRelease();
    (*(v29 + 8))(v28, v30);
    (*(v26 + 8))(v25, v27);
    v5 = &unk_1EBD476F0;
    v6 = &qword_1BE0B9180;
    v4 = v31;
    goto LABEL_8;
  }

  v63 = *(v0 + 600);
  v34 = *(v0 + 592);
  v35 = *(v0 + 576);
  v36 = *(v0 + 568);
  v61 = v36;
  v37 = *(v0 + 552);
  v65 = *(v0 + 544);
  v66 = *(v0 + 584);
  v38 = *(v0 + 528);
  v64 = *(v0 + 520);
  (*(*(v0 + 496) + 32))(*(v0 + 504), *(v0 + 480), *(v0 + 488));
  v62 = swift_allocObject();
  swift_weakInit();
  (*(v35 + 16))(v34, v63, v36);
  v39 = *(v38 + 16);
  v39(v65, v37, v64);
  v40 = (*(v35 + 80) + 40) & ~*(v35 + 80);
  v41 = (v66 + *(v38 + 80) + v40) & ~*(v38 + 80);
  v42 = swift_allocObject();
  *(v0 + 632) = v42;
  *(v42 + 2) = v62;
  *(v42 + 3) = v16;
  *(v42 + 4) = v15;
  v68(&v42[v40], v34, v61);
  v67(&v42[v41], v65, v64);
  v39(v65, v37, v64);
  swift_unknownObjectRetain();
  sub_1BE048964();
  sub_1BE04DC14();
  sub_1BE04D094();
  v43 = sub_1BE04D204();
  v44 = sub_1BE052C54();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1BD026000, v43, v44, "NearbyPeerPayment: starting AirDrop AskRequest", v45, 2u);
    MEMORY[0x1BFB45F20](v45, -1, -1);
  }

  v47 = *(v0 + 464);
  v46 = *(v0 + 472);
  v48 = *(v0 + 448);
  v49 = *(v0 + 456);
  v50 = *(v0 + 408);
  v51 = *(v0 + 416);

  v52 = *(v51 + 8);
  *(v0 + 640) = v52;
  v52(v48, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40AD8, &unk_1BE0C8B40);
  v53 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v54 = swift_allocObject();
  *(v0 + 648) = v54;
  *(v54 + 16) = xmmword_1BE0B69E0;
  (*(v47 + 16))(v54 + v53, v46, v49);
  v55 = sub_1BE04C424();
  v57 = v56;
  *(v0 + 656) = v55;
  *(v0 + 664) = v56;
  v58 = swift_task_alloc();
  *(v0 + 672) = v58;
  *v58 = v0;
  v58[1] = sub_1BD2C3C6C;
  v59 = *(v0 + 400);
  v60 = *(v0 + 104);

  return MEMORY[0x1EEE37FA8](v59, v54, v60, 0, 0, 0, v55, v57);
}

uint64_t sub_1BD2C3C6C()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  v3 = *(v2 + 648);
  sub_1BD1245AC(*(v2 + 656), *(v2 + 664), v4, v5, v6, v7, v8, v9);
  v3, v10, v11, v12, v13, v14, v15, v16;
  if (v0)
  {
    v17 = sub_1BD2C59EC;
  }

  else
  {
    v17 = sub_1BD2C3DD0;
  }

  return MEMORY[0x1EEE6DFA0](v17, 0, 0);
}

uint64_t sub_1BD2C3DD0()
{
  if (*(v0 + 728) == 1)
  {
    sub_1BE04DED4();
    *(v0 + 688) = OBJC_IVAR____TtC9PassKitUI39NearbyPeerPaymentDeviceDiscoverySession_transferID;
    swift_beginAccess();
    v1 = sub_1BD0DE4F4(&qword_1EBD40AE8, &qword_1EBD40AC0, &qword_1BE0C8B08, MEMORY[0x1E69CDCD8]);
    v2 = swift_task_alloc();
    *(v0 + 696) = v2;
    *v2 = v0;
    v2[1] = sub_1BD2C4218;
    v3 = *(v0 + 352);
    v4 = *(v0 + 360);

    return MEMORY[0x1EEE6D8C8](v3, v4, v1);
  }

  else
  {
    v23 = *(v0 + 632);
    v5 = *(v0 + 576);
    v30 = *(v0 + 568);
    v31 = *(v0 + 600);
    v6 = *(v0 + 528);
    v28 = *(v0 + 520);
    v29 = *(v0 + 552);
    v7 = *(v0 + 496);
    v26 = *(v0 + 488);
    v27 = *(v0 + 504);
    v8 = *(v0 + 464);
    v24 = *(v0 + 456);
    v25 = *(v0 + 472);
    v9 = *(v0 + 392);
    v10 = *(v0 + 400);
    v11 = *(v0 + 384);
    v12 = sub_1BE04B844();
    sub_1BD2C7E30(&qword_1EBD40AE0, MEMORY[0x1E69B7F28], MEMORY[0x1E69B7F30]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x1E69B7F08], v12);
    swift_willThrow();
    v23, v14, v15, v16, v17, v18, v19, v20;
    swift_unknownObjectRelease();
    (*(v9 + 8))(v10, v11);
    (*(v8 + 8))(v25, v24);
    (*(v7 + 8))(v27, v26);
    (*(v6 + 8))(v29, v28);
    (*(v5 + 8))(v31, v30);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1BD2C4218()
{
  *(*v1 + 704) = v0;

  if (v0)
  {
    v2 = sub_1BD2C4BBC;
  }

  else
  {
    v2 = sub_1BD2C432C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2C432C()
{
  v118 = v0;
  v1 = v0[44];
  v2 = v0[38];
  v3 = v0[39];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[46] + 8))(v0[47], v0[45]);
LABEL_19:
    v99 = swift_task_alloc();
    v0[89] = v99;
    *v99 = v0;
    v99[1] = sub_1BD2C4E30;
    v100 = v0[48];
    v101 = v0[40];

    return MEMORY[0x1EEE38068](v101, v100);
  }

  v5 = v0[42];
  v4 = v0[43];
  (*(v3 + 32))(v4, v1, v2);
  sub_1BE04D094();
  v6 = *(v3 + 16);
  v6(v5, v4, v2);
  v7 = sub_1BE04D204();
  v113 = sub_1BE052C54();
  v8 = os_log_type_enabled(v7, v113);
  v9 = v0[80];
  v10 = v0[55];
  v11 = v0[51];
  v12 = v0[42];
  v13 = v0[39];
  v115 = v0[38];
  if (v8)
  {
    v110 = v0[80];
    v14 = v0[37];
    v107 = v0[55];
    log = v7;
    v15 = v0[34];
    v16 = v0[35];
    v111 = v6;
    v17 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v117[0] = v106;
    *v17 = 136315138;
    sub_1BE04DCB4();
    sub_1BD2C7E30(&qword_1EBD40AF0, MEMORY[0x1E69CDBC0], MEMORY[0x1E69CDBC8]);
    v18 = sub_1BE053B24();
    v104 = v11;
    v20 = v19;
    (*(v16 + 8))(v14, v15);
    v21 = *(v13 + 8);
    v21(v12, v115);
    v22 = v21;
    v23 = sub_1BD123690(v18, v20, v117);
    v20, v24, v25, v26, v27, v28, v29, v30;
    *(v17 + 4) = v23;
    _os_log_impl(&dword_1BD026000, log, v113, "NearbyPeerPayment: Received airdrop transfer update: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v106, v31, v32, v33, v34, v35, v36, v37);
    MEMORY[0x1BFB45F20](v106, -1, -1);
    v38 = v17;
    v6 = v111;
    MEMORY[0x1BFB45F20](v38, -1, -1);

    v110(v107, v104);
  }

  else
  {

    v39 = *(v13 + 8);
    v39(v12, v115);
    v22 = v39;
    v9(v10, v11);
  }

  v40 = v0[33];
  v41 = v0[29];
  v42 = v0[30];
  sub_1BD0DE19C(v0[16] + v0[86], v40, &qword_1EBD40A80, &qword_1BE0C89A8);
  LODWORD(v41) = (*(v42 + 48))(v40, 1, v41);
  sub_1BD0DE53C(v40, &qword_1EBD40A80, &qword_1BE0C89A8);
  if (v41 == 1)
  {
    v43 = v0[43];
    v44 = v0[41];
    v45 = v0[38];
    sub_1BE04D094();
    v6(v44, v43, v45);
    v46 = sub_1BE04D204();
    v114 = sub_1BE052C54();
    v47 = os_log_type_enabled(v46, v114);
    v48 = v0[80];
    v49 = v0[54];
    v50 = v0[51];
    v51 = v0[41];
    v52 = v0[38];
    if (v47)
    {
      v112 = v0[80];
      v105 = v0[38];
      v54 = v0[30];
      v53 = v0[31];
      v55 = v0[29];
      v109 = v0[51];
      v56 = swift_slowAlloc();
      v116 = v22;
      v117[0] = swift_slowAlloc();
      v57 = v117[0];
      *v56 = 136315138;
      sub_1BE04DC84();
      sub_1BD2C7E30(&unk_1EBD47730, MEMORY[0x1E69CDDE8], MEMORY[0x1E69CDDF0]);
      v58 = sub_1BE053B24();
      v108 = v49;
      v60 = v59;
      (*(v54 + 8))(v53, v55);
      v116(v51, v105);
      v61 = sub_1BD123690(v58, v60, v117);
      v60, v62, v63, v64, v65, v66, v67, v68;
      *(v56 + 4) = v61;
      _os_log_impl(&dword_1BD026000, v46, v114, "NearbyPeerPayment: capturing transfer id: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57, v69, v70, v71, v72, v73, v74, v75);
      v76 = v57;
      v22 = v116;
      MEMORY[0x1BFB45F20](v76, -1, -1);
      MEMORY[0x1BFB45F20](v56, -1, -1);

      v112(v108, v109);
    }

    else
    {

      v22(v51, v52);
      v48(v49, v50);
    }

    v77 = v0[86];
    v78 = v0[32];
    v79 = v0[29];
    v80 = v0[30];
    v81 = v0[16];
    sub_1BE04DC84();
    (*(v80 + 56))(v78, 0, 1, v79);
    swift_beginAccess();
    sub_1BD2C7C4C(v78, v81 + v77, &qword_1EBD40A80, &qword_1BE0C89A8);
    swift_endAccess();
  }

  v82 = v0[88];
  v83 = v0[78];
  v84 = v0[77];
  v85 = v0[37];
  v86 = v0[34];
  v87 = v0[35];
  sub_1BE04DCB4();
  (*(v84 + 40))(v85, v83, v84);
  (*(v87 + 8))(v85, v86);
  sub_1BE052984();
  v22(v0[43], v0[38]);
  if (v82)
  {
    (*(v0[46] + 8))(v0[47], v0[45]);
    sub_1BE04D094();
    v88 = v82;
    v89 = sub_1BE04D204();
    v90 = sub_1BE052C54();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v91 = 138412290;
      v93 = v82;
      v94 = _swift_stdlib_bridgeErrorToNSError();
      *(v91 + 4) = v94;
      *v92 = v94;
      _os_log_impl(&dword_1BD026000, v89, v90, "NearbyPeerPayment: airdrop transfer update error: %@", v91, 0xCu);
      sub_1BD0DE53C(v92, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v92, -1, -1);
      MEMORY[0x1BFB45F20](v91, -1, -1);
    }

    else
    {
    }

    (v0[80])(v0[53], v0[51]);
    goto LABEL_19;
  }

  v95 = sub_1BD0DE4F4(&qword_1EBD40AE8, &qword_1EBD40AC0, &qword_1BE0C8B08, MEMORY[0x1E69CDCD8]);
  v96 = swift_task_alloc();
  v0[87] = v96;
  *v96 = v0;
  v96[1] = sub_1BD2C4218;
  v97 = v0[44];
  v98 = v0[45];

  return MEMORY[0x1EEE6D8C8](v97, v98, v95);
}

uint64_t sub_1BD2C4BBC()
{
  *(v0 + 88) = *(v0 + 704);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1BD2C4C50, 0, 0);
}

uint64_t sub_1BD2C4C50()
{
  v1 = *(v0 + 704);
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
  sub_1BE04D094();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: airdrop transfer update error: %@", v5, 0xCu);
    sub_1BD0DE53C(v6, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  else
  {
  }

  (*(v0 + 640))(*(v0 + 424), *(v0 + 408));
  v9 = swift_task_alloc();
  *(v0 + 712) = v9;
  *v9 = v0;
  v9[1] = sub_1BD2C4E30;
  v10 = *(v0 + 384);
  v11 = *(v0 + 320);

  return MEMORY[0x1EEE38068](v11, v10);
}

uint64_t sub_1BD2C4E30()
{
  *(*v1 + 720) = v0;

  if (v0)
  {
    v2 = sub_1BD2C5C80;
  }

  else
  {
    v2 = sub_1BD2C4F44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2C4F44(uint64_t a1)
{
  v3 = *(v1 + 312);
  v2 = *(v1 + 320);
  v4 = *(v1 + 304);
  v6 = *(v1 + 280);
  v5 = *(v1 + 288);
  v7 = *(v1 + 272);
  v8 = *(v1 + 208);
  v9 = *(v1 + 216);
  v10 = *(v1 + 200);
  sub_1BE04DCB4();
  (*(v3 + 8))(v2, v4);
  sub_1BE04DC94();
  v11 = *(v6 + 8);
  v11(v5, v7);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v19 = *(v1 + 576);
    v165 = *(v1 + 568);
    v170 = *(v1 + 600);
    v20 = *(v1 + 528);
    v150 = *(v1 + 520);
    v155 = *(v1 + 552);
    v21 = *(v1 + 496);
    v140 = *(v1 + 488);
    v145 = *(v1 + 504);
    v22 = *(v1 + 464);
    v135 = *(v1 + 472);
    v23 = *(v1 + 456);
    v25 = *(v1 + 392);
    v24 = *(v1 + 400);
    v26 = *(v1 + 384);
    v160 = *(v1 + 200);
    *(v1 + 632), v12, v13, v14, v15, v16, v17, v18;
    swift_unknownObjectRelease();
    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v135, v23);
    (*(v21 + 8))(v145, v140);
    (*(v20 + 8))(v155, v150);
    (*(v19 + 8))(v170, v165);
    sub_1BD0DE53C(v160, &qword_1EBD40AB0, &qword_1BE0C8AF8);
  }

  else
  {
    v27 = *(v1 + 168);
    v28 = *(v1 + 176);
    v29 = *(v1 + 160);
    (*(*(v1 + 216) + 32))(*(v1 + 224), *(v1 + 200), *(v1 + 208));
    sub_1BE04DCD4();
    if ((*(v28 + 48))(v29, 1, v27) == 1)
    {
      v37 = *(v1 + 576);
      v166 = *(v1 + 568);
      v171 = *(v1 + 600);
      v38 = *(v1 + 528);
      v156 = *(v1 + 520);
      v161 = *(v1 + 552);
      v39 = *(v1 + 496);
      v141 = *(v1 + 488);
      v146 = *(v1 + 504);
      v40 = *(v1 + 464);
      v136 = *(v1 + 472);
      v131 = *(v1 + 456);
      v41 = *(v1 + 392);
      v124 = *(v1 + 400);
      v42 = *(v1 + 384);
      v43 = *(v1 + 216);
      v44 = *(v1 + 224);
      v45 = *(v1 + 208);
      v151 = *(v1 + 160);
      *(v1 + 632), v30, v31, v32, v33, v34, v35, v36;
      swift_unknownObjectRelease();
      (*(v43 + 8))(v44, v45);
      (*(v41 + 8))(v124, v42);
      (*(v40 + 8))(v136, v131);
      (*(v39 + 8))(v146, v141);
      (*(v38 + 8))(v161, v156);
      (*(v37 + 8))(v171, v166);
      sub_1BD0DE53C(v151, &qword_1EBD40AA8, &qword_1BE0C8AF0);
    }

    else
    {
      v46 = *(v1 + 184);
      v47 = *(v1 + 192);
      v48 = *(v1 + 168);
      v49 = *(v1 + 176);
      (*(v49 + 32))(v47, *(v1 + 160), v48);
      (*(v49 + 16))(v46, v47, v48);
      v50 = (*(v49 + 88))(v46, v48);
      if (v50 == *MEMORY[0x1E69CDBD0])
      {
        v110 = *(v1 + 632);
        v103 = *(v1 + 616);
        v106 = *(v1 + 624);
        v162 = *(v1 + 568);
        v167 = *(v1 + 600);
        v152 = *(v1 + 552);
        v157 = *(v1 + 576);
        v142 = *(v1 + 528);
        v147 = *(v1 + 520);
        v137 = *(v1 + 504);
        v128 = *(v1 + 496);
        v132 = *(v1 + 488);
        v121 = *(v1 + 456);
        v125 = *(v1 + 472);
        v115 = *(v1 + 400);
        v118 = *(v1 + 464);
        v111 = *(v1 + 392);
        v113 = *(v1 + 384);
        v58 = *(v1 + 296);
        v98 = *(v1 + 280);
        v99 = *(v1 + 272);
        v59 = *(v1 + 224);
        v172 = *(v1 + 216);
        v97 = *(v1 + 208);
        v60 = *(v1 + 184);
        v108 = *(v1 + 192);
        v100 = *(v1 + 176);
        v101 = *(v1 + 168);
        v62 = *(v1 + 144);
        v61 = *(v1 + 152);
        v63 = *(v1 + 136);
        (*(v100 + 96))(v60);
        (*(v62 + 32))(v61, v60, v63);
        v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39AC0, &unk_1BE0C8B50) + 48);
        (*(v172 + 16))(v58, v59, v97);
        (*(v62 + 16))(v58 + v64, v61, v63);
        (*(v98 + 104))(v58, *MEMORY[0x1E69CDBA0], v99);
        (*(v103 + 40))(v58, v106);
        swift_unknownObjectRelease();
        v110, v65, v66, v67, v68, v69, v70, v71;
        v11(v58, v99);
        (*(v62 + 8))(v61, v63);
        (*(v100 + 8))(v108, v101);
        (*(v172 + 8))(v59, v97);
        (*(v111 + 8))(v115, v113);
        (*(v118 + 8))(v125, v121);
        (*(v128 + 8))(v137, v132);
        (*(v142 + 8))(v152, v147);
        (*(v157 + 8))(v167, v162);
      }

      else if (v50 == *MEMORY[0x1E69CDBD8])
      {
        v105 = *(v1 + 616);
        v112 = *(v1 + 624);
        v168 = *(v1 + 568);
        v173 = *(v1 + 600);
        v158 = *(v1 + 552);
        v163 = *(v1 + 576);
        v148 = *(v1 + 528);
        v153 = *(v1 + 520);
        v143 = *(v1 + 504);
        v133 = *(v1 + 496);
        v138 = *(v1 + 488);
        v126 = *(v1 + 456);
        v129 = *(v1 + 472);
        v119 = *(v1 + 400);
        v122 = *(v1 + 464);
        v114 = *(v1 + 392);
        v116 = *(v1 + 384);
        v72 = *(v1 + 296);
        v73 = *(v1 + 280);
        v102 = *(v1 + 272);
        v104 = *(v1 + 632);
        v74 = *(v1 + 216);
        v75 = *(v1 + 224);
        v76 = *(v1 + 208);
        v77 = *(v1 + 176);
        v107 = *(v1 + 168);
        v109 = *(v1 + 192);
        v78 = (v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39AB8, &unk_1BE0B95D0) + 48));
        (*(v74 + 16))(v72, v75, v76);
        *v78 = 0;
        v78[1] = 0;
        (*(v73 + 104))(v72, *MEMORY[0x1E69CDBA8], v102);
        (*(v105 + 40))(v72, v112);
        swift_unknownObjectRelease();
        v104, v79, v80, v81, v82, v83, v84, v85;
        v11(v72, v102);
        (*(v77 + 8))(v109, v107);
        (*(v74 + 8))(v75, v76);
        (*(v114 + 8))(v119, v116);
        (*(v122 + 8))(v129, v126);
        (*(v133 + 8))(v143, v138);
        (*(v148 + 8))(v158, v153);
        (*(v163 + 8))(v173, v168);
      }

      else
      {
        v169 = *(v1 + 568);
        v174 = *(v1 + 600);
        v159 = *(v1 + 552);
        v164 = *(v1 + 576);
        v86 = *(v1 + 528);
        v154 = *(v1 + 520);
        v87 = *(v1 + 496);
        v139 = *(v1 + 488);
        v144 = *(v1 + 504);
        v88 = *(v1 + 464);
        v130 = *(v1 + 456);
        v134 = *(v1 + 472);
        v89 = *(v1 + 392);
        v123 = *(v1 + 384);
        v127 = *(v1 + 400);
        v90 = *(v1 + 216);
        v117 = *(v1 + 208);
        v120 = *(v1 + 224);
        v91 = *(v1 + 192);
        v149 = *(v1 + 184);
        v93 = *(v1 + 168);
        v92 = *(v1 + 176);
        *(v1 + 632), v51, v52, v53, v54, v55, v56, v57;
        swift_unknownObjectRelease();
        v94 = *(v92 + 8);
        v94(v91, v93);
        (*(v90 + 8))(v120, v117);
        (*(v89 + 8))(v127, v123);
        (*(v88 + 8))(v134, v130);
        (*(v87 + 8))(v144, v139);
        (*(v86 + 8))(v159, v154);
        (*(v164 + 8))(v174, v169);
        v94(v149, v93);
      }
    }
  }

  v95 = *(v1 + 8);

  return v95();
}

uint64_t sub_1BD2C59EC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 576);
  v21 = *(v8 + 568);
  v22 = *(v8 + 600);
  v10 = *(v8 + 528);
  v19 = *(v8 + 520);
  v20 = *(v8 + 552);
  v11 = *(v8 + 496);
  v12 = *(v8 + 504);
  v13 = *(v8 + 488);
  v14 = *(v8 + 464);
  v15 = *(v8 + 472);
  v16 = *(v8 + 456);
  *(v8 + 632), a2, a3, a4, a5, a6, a7, a8;
  swift_unknownObjectRelease();
  (*(v14 + 8))(v15, v16);
  (*(v11 + 8))(v12, v13);
  (*(v10 + 8))(v20, v19);
  (*(v9 + 8))(v22, v21);

  v17 = *(v8 + 8);

  return v17();
}

uint64_t sub_1BD2C5C80(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 576);
  v24 = *(v8 + 568);
  v25 = *(v8 + 600);
  v10 = *(v8 + 528);
  v22 = *(v8 + 520);
  v23 = *(v8 + 552);
  v11 = *(v8 + 496);
  v20 = *(v8 + 488);
  v21 = *(v8 + 504);
  v12 = *(v8 + 464);
  v19 = *(v8 + 472);
  v13 = *(v8 + 456);
  v15 = *(v8 + 392);
  v14 = *(v8 + 400);
  v16 = *(v8 + 384);
  *(v8 + 632), a2, a3, a4, a5, a6, a7, a8;
  swift_unknownObjectRelease();
  (*(v15 + 8))(v14, v16);
  (*(v12 + 8))(v19, v13);
  (*(v11 + 8))(v21, v20);
  (*(v10 + 8))(v23, v22);
  (*(v9 + 8))(v25, v24);

  v17 = *(v8 + 8);

  return v17();
}

uint64_t sub_1BD2C5F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  v9 = sub_1BE04DC04();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v10 = sub_1BE04DC44();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();
  v11 = sub_1BE04AA64();
  v8[22] = v11;
  v8[23] = *(v11 - 8);
  v8[24] = swift_task_alloc();
  v12 = sub_1BE04DEE4();
  v8[25] = v12;
  v8[26] = *(v12 - 8);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v13 = sub_1BE04D214();
  v8[29] = v13;
  v8[30] = *(v13 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2C61BC, 0, 0);
}

uint64_t sub_1BD2C61BC()
{
  v69 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v24 = v0[6];
    v25 = sub_1BE04DC64();
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);

    v26 = v0[1];
LABEL_13:

    return v26();
  }

  v10 = v0[7];
  v9 = v0[8];
  Strong, v2, v3, v4, v5, v6, v7, v8;
  sub_1BE04D094();
  sub_1BD030394(v10, v9);
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C54();
  sub_1BD030220(v10, v9, v13, v14, v15, v16, v17, v18);
  if (os_log_type_enabled(v11, v12))
  {
    v19 = v0[8];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v68 = v21;
    *v20 = 136315138;
    if (v19 >> 60 == 15)
    {
      v22 = 0;
      v23 = 0xE000000000000000;
    }

    else
    {
      v22 = sub_1BE04AA94();
      v23 = v31;
    }

    v32 = v0[34];
    v33 = v0[29];
    v34 = v0[30];
    v35 = sub_1BD123690(v22, v23, &v68);
    v23, v36, v37, v38, v39, v40, v41, v42;
    *(v20 + 4) = v35;
    _os_log_impl(&dword_1BD026000, v11, v12, "NearbyPeerPayment: loadHandler called with receiverMetadata: %s.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21, v43, v44, v45, v46, v47, v48, v49);
    MEMORY[0x1BFB45F20](v21, -1, -1);
    MEMORY[0x1BFB45F20](v20, -1, -1);

    v30 = *(v34 + 8);
    v30(v32, v33);
  }

  else
  {
    v27 = v0[34];
    v28 = v0[29];
    v29 = v0[30];

    v30 = *(v29 + 8);
    v30(v27, v28);
  }

  v0[35] = v30;
  v50 = v0[8];
  if (v50 >> 60 == 15)
  {
    sub_1BE04D094();
    v51 = sub_1BE04D204();
    v52 = sub_1BE052C34();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1BD026000, v51, v52, "NearbyPeerPayment: transfer failed with missing receiverMetadata", v53, 2u);
      MEMORY[0x1BFB45F20](v53, -1, -1);
    }

    v54 = v0[33];
    v55 = v0[29];

    v30(v54, v55);
    v56 = sub_1BE04B884();
    sub_1BD2C7E30(&unk_1EBD399E0, MEMORY[0x1E69B7F50], MEMORY[0x1E69B7F58]);
    swift_allocError();
    (*(*(v56 - 8) + 104))(v57, *MEMORY[0x1E69B7F40], v56);
    swift_willThrow();

    v26 = v0[1];
    goto LABEL_13;
  }

  v67 = v0[11];
  v59 = v0[7];
  ObjectType = swift_getObjectType();
  v61 = *(v67 + 56);
  sub_1BD041A38(v59, v50);
  v66 = (v61 + *v61);
  v62 = swift_task_alloc();
  v0[36] = v62;
  *v62 = v0;
  v62[1] = sub_1BD2C675C;
  v63 = v0[11];
  v65 = v0[7];
  v64 = v0[8];

  return v66(v65, v64, ObjectType, v63);
}

uint64_t sub_1BD2C675C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[37] = a1;
  v4[38] = a2;
  v4[39] = v2;

  if (v2)
  {
    v5 = sub_1BD2C6F78;
  }

  else
  {
    v5 = sub_1BD2C6874;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BD2C6874(uint64_t a1)
{
  v2 = *(v1 + 312);
  sub_1BE052984();
  if (v2)
  {
    sub_1BD1245AC(*(v1 + 296), *(v1 + 304), *(v1 + 296), *(v1 + 304), v3, v4, v5, v6);
    *(v1 + 40) = v2;
    v10 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    if (swift_dynamicCast())
    {
      v12 = *(v1 + 136);
      v11 = *(v1 + 144);
      v14 = *(v1 + 120);
      v13 = *(v1 + 128);
      v15 = *(v1 + 112);

      (*(v14 + 32))(v12, v11, v15);
      sub_1BE04D094();
      v16 = *(v14 + 16);
      v16(v13, v12, v15);
      v17 = sub_1BE04D204();
      v85 = sub_1BE052C34();
      v18 = os_log_type_enabled(v17, v85);
      v20 = *(v1 + 120);
      v19 = *(v1 + 128);
      v21 = *(v1 + 112);
      if (v18)
      {
        v87 = v16;
        v22 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *v22 = 138412290;
        sub_1BD2C7E30(&qword_1EBD478A0, MEMORY[0x1E69CDB60], MEMORY[0x1E69CDB68]);
        swift_allocError();
        v87(v23, v19, v21);
        v24 = _swift_stdlib_bridgeErrorToNSError();
        v25 = *(v20 + 8);
        v25(v19, v21);
        *(v22 + 4) = v24;
        *v82 = v24;
        _os_log_impl(&dword_1BD026000, v17, v85, "NearbyPeerPayment: loadHandler failed with codable error: %@", v22, 0xCu);
        sub_1BD0DE53C(v82, &unk_1EBD3E590, &unk_1BE0B7E50);
        MEMORY[0x1BFB45F20](v82, -1, -1);
        v26 = v22;
        v16 = v87;
        MEMORY[0x1BFB45F20](v26, -1, -1);
      }

      else
      {

        v25 = *(v20 + 8);
        v25(v19, v21);
      }

      v49 = *(v1 + 136);
      v50 = *(v1 + 112);
      v52 = *(v1 + 56);
      v51 = *(v1 + 64);
      (*(v1 + 280))(*(v1 + 256), *(v1 + 232));
      sub_1BD2C7E30(&qword_1EBD478A0, MEMORY[0x1E69CDB60], MEMORY[0x1E69CDB68]);
      swift_allocError();
      v16(v53, v49, v50);
      swift_willThrow();
      sub_1BD030220(v52, v51, v54, v55, v56, v57, v58, v59);
      v25(v49, v50);

      v60 = *(v1 + 8);
      goto LABEL_13;
    }

    v7 = (v1 + 248);

    sub_1BE04D094();
    v27 = v2;
    v28 = sub_1BE04D204();
    v29 = sub_1BE052C34();

    v30 = os_log_type_enabled(v28, v29);
    v38 = *(v1 + 56);
    v37 = *(v1 + 64);
    if (v30)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      v41 = v2;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v42;
      *v40 = v42;
      _os_log_impl(&dword_1BD026000, v28, v29, "NearbyPeerPayment: loadHandler failed with unexpected error: %@", v39, 0xCu);
      sub_1BD0DE53C(v40, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v40, -1, -1);
      MEMORY[0x1BFB45F20](v39, -1, -1);
      sub_1BD030220(v38, v37, v43, v44, v45, v46, v47, v48);
    }

    else
    {
      sub_1BD030220(*(v1 + 56), *(v1 + 64), v31, v32, v33, v34, v35, v36);
    }

    v81 = (v1 + 280);
    v64 = (v1 + 232);
    v84 = 1;
  }

  else
  {
    sub_1BE04AAE4();
    v7 = (v1 + 224);
    (*(*(v1 + 184) + 16))(*(v1 + 192), *(v1 + 96), *(v1 + 176));
    sub_1BE04DEF4();
    v8 = *(v1 + 296);
    v9 = *(v1 + 304);
    v64 = (v1 + 200);
    v65 = *(v1 + 208);
    v67 = *(v1 + 160);
    v66 = *(v1 + 168);
    v68 = *(v1 + 104);
    v88 = *(v1 + 64);
    v83 = *(v1 + 152);
    v86 = *(v1 + 56);
    (*(v65 + 16))(*(v1 + 216), *(v1 + 224), *(v1 + 200));
    (*(v67 + 16))(v66, v68, v83);
    sub_1BE04DC54();
    sub_1BD1245AC(v8, v9, v69, v70, v71, v72, v73, v74);
    sub_1BD030220(v86, v88, v75, v76, v77, v78, v79, v80);
    v84 = 0;
    v81 = (v65 + 8);
  }

  (*v81)(*v7, *v64);
  v61 = *(v1 + 48);
  v62 = sub_1BE04DC64();
  (*(*(v62 - 8) + 56))(v61, v84, 1, v62);

  v60 = *(v1 + 8);
LABEL_13:

  return v60();
}

uint64_t sub_1BD2C6F78()
{
  v1 = *(v0 + 312);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v7 = *(v0 + 112);

    (*(v6 + 32))(v4, v3, v7);
    sub_1BE04D094();
    v8 = *(v6 + 16);
    v8(v5, v4, v7);
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C34();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    v14 = *(v0 + 112);
    if (v11)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      sub_1BD2C7E30(&qword_1EBD478A0, MEMORY[0x1E69CDB60], MEMORY[0x1E69CDB68]);
      swift_allocError();
      v8(v15, v12, v14);
      v16 = _swift_stdlib_bridgeErrorToNSError();
      v17 = *(v13 + 8);
      v17(v12, v14);
      *(v55 + 4) = v16;
      *v56 = v16;
      _os_log_impl(&dword_1BD026000, v9, v10, "NearbyPeerPayment: loadHandler failed with codable error: %@", v55, 0xCu);
      sub_1BD0DE53C(v56, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v56, -1, -1);
      MEMORY[0x1BFB45F20](v55, -1, -1);
    }

    else
    {

      v17 = *(v13 + 8);
      v17(v12, v14);
    }

    v40 = *(v0 + 136);
    v41 = *(v0 + 112);
    v43 = *(v0 + 56);
    v42 = *(v0 + 64);
    (*(v0 + 280))(*(v0 + 256), *(v0 + 232));
    sub_1BD2C7E30(&qword_1EBD478A0, MEMORY[0x1E69CDB60], MEMORY[0x1E69CDB68]);
    swift_allocError();
    v8(v44, v40, v41);
    swift_willThrow();
    sub_1BD030220(v43, v42, v45, v46, v47, v48, v49, v50);
    v17(v40, v41);

    v51 = *(v0 + 8);
  }

  else
  {

    sub_1BE04D094();
    v18 = v1;
    v19 = sub_1BE04D204();
    v20 = sub_1BE052C34();

    v21 = os_log_type_enabled(v19, v20);
    v29 = *(v0 + 56);
    v28 = *(v0 + 64);
    if (v21)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = v1;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_1BD026000, v19, v20, "NearbyPeerPayment: loadHandler failed with unexpected error: %@", v30, 0xCu);
      sub_1BD0DE53C(v31, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v31, -1, -1);
      MEMORY[0x1BFB45F20](v30, -1, -1);
      sub_1BD030220(v29, v28, v34, v35, v36, v37, v38, v39);
    }

    else
    {
      sub_1BD030220(*(v0 + 56), *(v0 + 64), v22, v23, v24, v25, v26, v27);
    }

    (*(v0 + 280))(*(v0 + 248), *(v0 + 232));
    v52 = *(v0 + 48);
    v53 = sub_1BE04DC64();
    (*(*(v53 - 8) + 56))(v52, 1, 1, v53);

    v51 = *(v0 + 8);
  }

  return v51();
}