uint64_t sub_217F24D18(char *__src, char *__dst, unint64_t a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __dst;
  v9 = __src;
  v10 = __dst - __src;
  v11 = (__dst - __src) / 24;
  v12 = a3 - __dst;
  v13 = (a3 - __dst) / 24;
  if (v11 >= v13)
  {
    if (a4 != __dst || &__dst[24 * v13] <= a4)
    {
      memmove(a4, __dst, 24 * v13);
    }

    v14 = &v6[24 * v13];
    if (v12 < 24 || v8 <= v9)
    {
      goto LABEL_55;
    }

    v52 = v6;
    while (2)
    {
      v51 = v8 - 24;
      v31 = v7;
      v32 = v14;
      while (1)
      {
        v34 = *(v32 - 24);
        v32 -= 24;
        v33 = v34;
        v35 = *(v32 + 16);
        v36 = *(v8 - 1);
        if (v35 == v36)
        {
          break;
        }

        v7 = (v31 - 24);
        if (v36 < v35)
        {
          goto LABEL_48;
        }

LABEL_46:
        if (v14 != v31)
        {
          v47 = *v32;
          *(v7 + 16) = *(v32 + 16);
          *v7 = v47;
        }

        v14 = v32;
        v31 = v7;
        if (v32 <= v6)
        {
          v14 = v32;
          goto LABEL_55;
        }
      }

      v37 = v14;
      v38 = *(v32 + 8);
      v39 = *(v8 - 2);
      v54 = *(v8 - 3);
      v40 = *(a5 + 16);

      if (v40)
      {
        v41 = sub_217E8E88C(v33, v38);
        v42 = 0.0;
        v43 = 0.0;
        if (v44)
        {
          v43 = *(*(a5 + 56) + 40 * v41 + 32);
        }

        v14 = v37;
        if (*(a5 + 16))
        {
          v45 = sub_217E8E88C(v54, v39);
          v6 = v52;
          if (v46)
          {
            v42 = *(*(a5 + 56) + 40 * v45 + 32);
          }

LABEL_45:

          v7 = (v31 - 24);
          if (v42 < v43)
          {
LABEL_48:
            if (v31 != v8)
            {
              v48 = *v51;
              *(v7 + 16) = *(v8 - 1);
              *v7 = v48;
            }

            if (v14 <= v6 || (v8 -= 24, v51 <= v9))
            {
              v8 = v51;
              goto LABEL_55;
            }

            continue;
          }

          goto LABEL_46;
        }
      }

      else
      {
        v43 = 0.0;
        v42 = 0.0;
        v14 = v37;
      }

      break;
    }

    v6 = v52;
    goto LABEL_45;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v14 = &v6[24 * v11];
  if (v10 >= 24 && v8 < v7)
  {
    v53 = &v6[24 * v11];
    do
    {
      v15 = *(v8 + 2);
      v16 = *(v6 + 2);
      if (v15 == v16)
      {
        v17 = *v8;
        v18 = *(v8 + 1);
        v19 = *v6;
        v20 = *(v6 + 1);
        v21 = *(a5 + 16);

        if (v21)
        {
          v22 = sub_217E8E88C(v17, v18);
          v23 = 0.0;
          v24 = 0.0;
          if (v25)
          {
            v24 = *(*(a5 + 56) + 40 * v22 + 32);
          }

          if (*(a5 + 16))
          {
            v26 = sub_217E8E88C(v19, v20);
            if (v27)
            {
              v23 = *(*(a5 + 56) + 40 * v26 + 32);
            }
          }
        }

        else
        {
          v24 = 0.0;
          v23 = 0.0;
        }

        v14 = v53;
        if (v23 >= v24)
        {
LABEL_16:
          v28 = v6;
          v29 = v9 == v6;
          v6 += 24;
          if (v29)
          {
            goto LABEL_18;
          }

LABEL_17:
          v30 = *v28;
          *(v9 + 2) = *(v28 + 2);
          *v9 = v30;
          goto LABEL_18;
        }
      }

      else if (v16 >= v15)
      {
        goto LABEL_16;
      }

      v28 = v8;
      v29 = v9 == v8;
      v8 += 24;
      if (!v29)
      {
        goto LABEL_17;
      }

LABEL_18:
      v9 += 24;
    }

    while (v6 < v14 && v8 < v7);
  }

  v8 = v9;
LABEL_55:
  v49 = (v14 - v6) / 24;
  if (v8 != v6 || v8 >= &v6[24 * v49])
  {
    memmove(v8, v6, 24 * v49);
  }

  return 1;
}

uint64_t sub_217F250E8(uint64_t *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_217F3610C(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v6 = &v24[16 * v9];
      v12 = *v6;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 24 * *v6);
      v15 = (v10 + 24 * *v13);
      v16 = v10 + 24 * v14;

      sub_217F24D18(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v12)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v6 = v12;
      v6[1] = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_217F25294(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v150 = MEMORY[0x277D84F90];
  if (v6 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v149 = a5;
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = *a3 + 24 * v7;
        v12 = *(v11 + 16);
        v13 = *a3 + 24 * v9;
        v14 = *(v13 + 16);
        if (v12 == v14)
        {
          v145 = v7;
          v15 = *v11;
          v16 = *(v11 + 8);
          v17 = *v13;
          v18 = *(v13 + 8);
          v19 = *(a5 + 16);

          if (v19)
          {
            v20 = sub_217E8E88C(v15, v16);
            a5 = v149;
            v21 = 0.0;
            v22 = 0.0;
            if (v23)
            {
              v22 = *(*(v149 + 56) + 40 * v20 + 32);
            }

            if (*(v149 + 16))
            {
              v24 = sub_217E8E88C(v17, v18);
              if (v25)
              {
                v21 = *(*(v149 + 56) + 40 * v24 + 32);
              }
            }
          }

          else
          {
            v22 = 0.0;
            v21 = 0.0;
          }

          v140 = v21 < v22;
          v7 = v145;
        }

        else
        {
          v140 = v14 < v12;
        }

        v133 = v8;
        v135 = v9;
        v26 = 0;
        v27 = v9 + 2;
        v138 = 24 * v9;
        v28 = (v10 + 24 * v9 + 64);
        do
        {
          v33 = v27;
          v34 = v7;
          v35 = v26;
          if (v27 >= v6)
          {
            break;
          }

          v36 = *(v28 - 3);
          if (*v28 == v36)
          {
            v37 = *(v28 - 2);
            v38 = *(v28 - 1);
            v39 = *(v28 - 4);
            v146 = *(v28 - 5);
            v40 = *(a5 + 16);

            if (v40)
            {
              v41 = sub_217E8E88C(v37, v38);
              a5 = v149;
              v30 = 0.0;
              v29 = 0.0;
              if (v42)
              {
                v29 = *(*(v149 + 56) + 40 * v41 + 32);
              }

              if (*(v149 + 16))
              {
                v43 = sub_217E8E88C(v146, v39);
                if (v44)
                {
                  v30 = *(*(v149 + 56) + 40 * v43 + 32);
                }
              }
            }

            else
            {
              v29 = 0.0;
              v30 = 0.0;
            }

            v31 = v30 < v29;
          }

          else
          {
            v31 = v36 < *v28;
          }

          v32 = v31;
          v27 = v33 + 1;
          v28 += 3;
          v7 = v34 + 1;
          v26 = v35 + 24;
        }

        while (v140 == v32);
        if (v140)
        {
          v9 = v135;
          if (v33 < v135)
          {
            goto LABEL_148;
          }

          if (v135 < v33)
          {
            v45 = 0;
            v46 = v135;
            do
            {
              if (v46 != v34)
              {
                if (!*a3)
                {
                  goto LABEL_153;
                }

                v47 = *a3 + v138;
                v48 = (v47 + v45);
                v49 = v47 + v35;
                v50 = *v48;
                v51 = v48[1];
                v52 = v48[2];
                v53 = *(v49 + 40);
                *v48 = *(v49 + 24);
                v48[2] = v53;
                *(v49 + 24) = v50;
                *(v49 + 32) = v51;
                *(v49 + 40) = v52;
              }

              ++v46;
              v35 -= 24;
              v45 += 24;
            }

            while (v46 < v34--);
          }

          v7 = v33;
          v8 = v133;
        }

        else
        {
          v7 = v33;
          v8 = v133;
          v9 = v135;
        }
      }

      v55 = a3[1];
      if (v7 < v55)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_147;
        }

        if (v7 - v9 < a4)
        {
          v56 = v9 + a4;
          if (__OFADD__(v9, a4))
          {
            goto LABEL_149;
          }

          if (v56 >= v55)
          {
            v56 = a3[1];
          }

          if (v56 < v9)
          {
LABEL_150:
            __break(1u);
LABEL_151:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_152:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_153:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_154:
            swift_bridgeObjectRelease_n();
            __break(1u);
            goto LABEL_155;
          }

          if (v7 != v56)
          {
            v134 = v8;
            v136 = v9;
            v57 = *a3;
            v58 = *a3 + 24 * v7 - 24;
            v59 = v9 - v7;
            v139 = v56;
            do
            {
              v147 = v7;
              v60 = v57 + 24 * v7;
              v61 = *v60;
              v62 = *(v60 + 8);
              v63 = *(v60 + 16);
              v64 = v59;
              v141 = v58;
              do
              {
                v65 = *(v58 + 16);
                if (v63 == v65)
                {
                  v67 = *v58;
                  v66 = *(v58 + 8);
                  v68 = *(a5 + 16);

                  if (v68)
                  {
                    v69 = sub_217E8E88C(v61, v62);
                    a5 = v149;
                    v70 = 0.0;
                    v71 = 0.0;
                    if (v72)
                    {
                      v71 = *(*(v149 + 56) + 40 * v69 + 32);
                    }

                    if (*(v149 + 16))
                    {
                      v73 = sub_217E8E88C(v67, v66);
                      if (v74)
                      {
                        v70 = *(*(v149 + 56) + 40 * v73 + 32);
                      }
                    }
                  }

                  else
                  {
                    v71 = 0.0;
                    v70 = 0.0;
                  }

                  if (v70 >= v71)
                  {
                    break;
                  }
                }

                else if (v65 >= v63)
                {
                  break;
                }

                if (!v57)
                {
                  goto LABEL_151;
                }

                v61 = *(v58 + 24);
                v62 = *(v58 + 32);
                v63 = *(v58 + 40);
                v75 = *(v58 + 16);
                *(v58 + 24) = *v58;
                *(v58 + 40) = v75;
                *v58 = v61;
                *(v58 + 8) = v62;
                *(v58 + 16) = v63;
                v58 -= 24;
              }

              while (!__CFADD__(v64++, 1));
              v7 = v147 + 1;
              v58 = v141 + 24;
              --v59;
            }

            while (v147 + 1 != v139);
            v7 = v139;
            v8 = v134;
            v9 = v136;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_146;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_217E8DA14(0, *(v8 + 2) + 1, 1, v8);
      }

      v78 = *(v8 + 2);
      v77 = *(v8 + 3);
      v79 = v78 + 1;
      if (v78 >= v77 >> 1)
      {
        v8 = sub_217E8DA14((v77 > 1), v78 + 1, 1, v8);
      }

      *(v8 + 2) = v79;
      v80 = v8 + 32;
      v81 = &v8[16 * v78 + 32];
      *v81 = v9;
      *(v81 + 1) = v7;
      v142 = *a1;
      if (!*a1)
      {
        goto LABEL_154;
      }

      if (v78)
      {
        v148 = v7;
        while (1)
        {
          v82 = v79 - 1;
          if (v79 >= 4)
          {
            break;
          }

          if (v79 == 3)
          {
            v83 = *(v8 + 4);
            v84 = *(v8 + 5);
            v93 = __OFSUB__(v84, v83);
            v85 = v84 - v83;
            v86 = v93;
LABEL_91:
            if (v86)
            {
              goto LABEL_136;
            }

            v99 = &v8[16 * v79];
            v101 = *v99;
            v100 = *(v99 + 1);
            v102 = __OFSUB__(v100, v101);
            v103 = v100 - v101;
            v104 = v102;
            if (v102)
            {
              goto LABEL_138;
            }

            v105 = &v80[16 * v82];
            v107 = *v105;
            v106 = *(v105 + 1);
            v93 = __OFSUB__(v106, v107);
            v108 = v106 - v107;
            if (v93)
            {
              goto LABEL_141;
            }

            if (__OFADD__(v103, v108))
            {
              goto LABEL_143;
            }

            if (v103 + v108 >= v85)
            {
              if (v85 < v108)
              {
                v82 = v79 - 2;
              }

              goto LABEL_113;
            }

            goto LABEL_106;
          }

          if (v79 < 2)
          {
            goto LABEL_144;
          }

          v109 = &v8[16 * v79];
          v111 = *v109;
          v110 = *(v109 + 1);
          v93 = __OFSUB__(v110, v111);
          v103 = v110 - v111;
          v104 = v93;
LABEL_106:
          if (v104)
          {
            goto LABEL_140;
          }

          v112 = &v80[16 * v82];
          v114 = *v112;
          v113 = *(v112 + 1);
          v93 = __OFSUB__(v113, v114);
          v115 = v113 - v114;
          if (v93)
          {
            goto LABEL_142;
          }

          if (v115 < v103)
          {
            goto LABEL_3;
          }

LABEL_113:
          if (v82 - 1 >= v79)
          {
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
            goto LABEL_150;
          }

          v120 = *a3;
          if (!*a3)
          {
            goto LABEL_152;
          }

          v121 = &v80[16 * v82 - 16];
          v122 = *v121;
          v123 = v82;
          v124 = &v80[16 * v82];
          v125 = *(v124 + 1);
          v126 = (v120 + 24 * *v121);
          v127 = (v120 + 24 * *v124);
          v128 = v120 + 24 * v125;

          sub_217F24D18(v126, v127, v128, v142, v149);
          if (v144)
          {

            goto LABEL_126;
          }

          if (v125 < v122)
          {
            goto LABEL_131;
          }

          v129 = *(v8 + 2);
          if (v123 > v129)
          {
            goto LABEL_132;
          }

          *v121 = v122;
          *(v121 + 1) = v125;
          if (v123 >= v129)
          {
            goto LABEL_133;
          }

          v79 = v129 - 1;
          memmove(v124, v124 + 16, 16 * (v129 - 1 - v123));
          *(v8 + 2) = v129 - 1;
          v7 = v148;
          v80 = v8 + 32;
          if (v129 <= 2)
          {
            goto LABEL_3;
          }
        }

        v87 = &v80[16 * v79];
        v88 = *(v87 - 8);
        v89 = *(v87 - 7);
        v93 = __OFSUB__(v89, v88);
        v90 = v89 - v88;
        if (v93)
        {
          goto LABEL_134;
        }

        v92 = *(v87 - 6);
        v91 = *(v87 - 5);
        v93 = __OFSUB__(v91, v92);
        v85 = v91 - v92;
        v86 = v93;
        if (v93)
        {
          goto LABEL_135;
        }

        v94 = &v8[16 * v79];
        v96 = *v94;
        v95 = *(v94 + 1);
        v93 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v93)
        {
          goto LABEL_137;
        }

        v93 = __OFADD__(v85, v97);
        v98 = v85 + v97;
        if (v93)
        {
          goto LABEL_139;
        }

        if (v98 >= v90)
        {
          v116 = &v80[16 * v82];
          v118 = *v116;
          v117 = *(v116 + 1);
          v93 = __OFSUB__(v117, v118);
          v119 = v117 - v118;
          if (v93)
          {
            goto LABEL_145;
          }

          if (v85 < v119)
          {
            v82 = v79 - 2;
          }

          goto LABEL_113;
        }

        goto LABEL_91;
      }

LABEL_3:
      v6 = a3[1];
      a5 = v149;
      if (v7 >= v6)
      {
        v150 = v8;
        goto LABEL_123;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_123:
  v130 = *a1;
  if (*a1)
  {

    sub_217F250E8(&v150, v130, a3, a5);
    if (v144)
    {

LABEL_126:
      swift_bridgeObjectRelease_n();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
LABEL_155:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

uint64_t sub_217F25AE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = *a4 + 24 * a3 - 24;
    v9 = result - a3;
LABEL_5:
    v10 = v7 + 24 * v6;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v27 = v9;
    v28 = v8;
    while (1)
    {
      v14 = *(v8 + 16);
      if (v13 == v14)
      {
        v16 = *v8;
        v15 = *(v8 + 8);
        v17 = *(a5 + 16);

        if (v17)
        {
          v18 = sub_217E8E88C(v11, v12);
          v19 = 0.0;
          v20 = 0.0;
          if (v21)
          {
            v20 = *(*(a5 + 56) + 40 * v18 + 32);
          }

          if (*(a5 + 16))
          {
            v22 = sub_217E8E88C(v16, v15);
            if (v23)
            {
              v19 = *(*(a5 + 56) + 40 * v22 + 32);
            }
          }
        }

        else
        {
          v20 = 0.0;
          v19 = 0.0;
        }

        if (v19 >= v20)
        {
LABEL_4:
          ++v6;
          v8 = v28 + 24;
          v9 = v27 - 1;
          if (v6 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else if (v14 >= v13)
      {
        goto LABEL_4;
      }

      if (!v7)
      {
        break;
      }

      v11 = *(v8 + 24);
      v12 = *(v8 + 32);
      v13 = *(v8 + 40);
      v24 = *(v8 + 16);
      *(v8 + 24) = *v8;
      *(v8 + 40) = v24;
      *v8 = v11;
      *(v8 + 8) = v12;
      *(v8 + 16) = v13;
      v8 -= 24;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_217F25C74(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_217F4B0F4();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5608, &unk_217F4DCC0);
        v8 = sub_217F4AC54();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_217F25294(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_217F25AE4(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_217F25DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v166 = a2;
  v4 = *(a3 + 1408);
  v5 = *(a3 + 1416);

  v7 = sub_217E8AE18(v6);
  v8 = *(v7 + 16);
  v157 = a1;
  if (v8)
  {
    v9 = sub_217E8E5AC(v8, 0);
    v10 = sub_217E966DC(v177, v9 + 4, v8, v7);
    v11 = *&v177[0];
    v12 = v178;

    sub_217E7F628(v11);
    if (v10 != v8)
    {
      goto LABEL_143;
    }

    a1 = v157;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  *&v177[0] = v9;
  v9 = 0;
  sub_217F27D68(v177, a1);

  v13 = *&v177[0];
  v12 = MEMORY[0x277D84F98];
  v181[0] = MEMORY[0x277D84F98];
  v14 = *(v166 + 16);
  if (v14)
  {
    v15 = (v166 + 32);
    do
    {
      v16 = v15[3];
      v17 = v15[1];
      v178 = v15[2];
      v179 = v16;
      v18 = v15[3];
      v180[0] = v15[4];
      *(v180 + 9) = *(v15 + 73);
      v19 = v15[1];
      v177[0] = *v15;
      v177[1] = v19;
      v174 = v178;
      v175 = v18;
      v176[0] = v15[4];
      *(v176 + 9) = *(v15 + 73);
      v172 = v177[0];
      v173 = v17;
      sub_217E98218(v177, &v167);
      sub_217F18EF4(v181, &v172, v7);
      v169 = v174;
      v170 = v175;
      v171[0] = v176[0];
      *(v171 + 9) = *(v176 + 9);
      v167 = v172;
      v168 = v173;
      sub_217E98274(&v167);
      v15 += 6;
      --v14;
    }

    while (v14);
    v12 = v181[0];
  }

  v20 = v7 + 56;
  v21 = 1 << *(v7 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(v7 + 56);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  v154 = MEMORY[0x277D84F98];
  v150 = v13;
  while (1)
  {
    do
    {
LABEL_13:
      if (v23)
      {
        v26 = v23;
      }

      else
      {
        v27 = v157;
        do
        {
          v28 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_138;
          }

          if (v28 >= v24)
          {

            v66 = MEMORY[0x277D84F90];
            *&v172 = MEMORY[0x277D84F90];
            v151 = *(v13 + 16);
            if (!v151)
            {
              goto LABEL_115;
            }

            v67 = 0;
            v153 = v13 + 32;
            v149 = xmmword_217F4BC20;
            v12 = v154;
            while (1)
            {
              if (v67 >= *(v13 + 16))
              {
                goto LABEL_140;
              }

              v68 = v27;
              v69 = v13;
              v70 = (v153 + 16 * v67);
              v71 = v70[1];
              v72 = v172;
              v166 = *v70;
              *&v177[0] = v166;
              *(&v177[0] + 1) = v71;
              MEMORY[0x28223BE20](v64, v65);
              *(&v149 - 2) = v177;

              v73 = sub_217F04BF8(sub_217F2BA64, (&v149 - 2), v72);
              v156 = v71;
              if (v73)
              {
                v13 = v69;
                v27 = v68;
                v66 = MEMORY[0x277D84F90];
              }

              else
              {

                v74 = v9;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v72 = sub_217E8DB18(0, *(v72 + 2) + 1, 1, v72);
                }

                v76 = *(v72 + 2);
                v75 = *(v72 + 3);
                if (v76 >= v75 >> 1)
                {
                  v72 = sub_217E8DB18((v75 > 1), v76 + 1, 1, v72);
                }

                v152 = v67;
                *(v72 + 2) = v76 + 1;
                v77 = &v72[16 * v76];
                v78 = v166;
                *(v77 + 4) = v166;
                *(v77 + 5) = v71;
                *&v172 = v72;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
                inited = swift_initStackObject();
                *(inited + 16) = v149;
                *(inited + 32) = v78;
                *(inited + 40) = v71;

                v80 = sub_217E97288(inited);
                swift_setDeallocating();
                sub_217E97320(inited + 32);
                if (*(v80 + 16))
                {
                  v159 = v72;
                  v155 = MEMORY[0x277D84F98];
                  v81 = v4;
                  v9 = v74;
                  while (1)
                  {
                    *&v167 = MEMORY[0x277D84FA0];
                    v66 = v80 + 56;
                    v82 = 1 << *(v80 + 32);
                    if (v82 < 64)
                    {
                      v83 = ~(-1 << v82);
                    }

                    else
                    {
                      v83 = -1;
                    }

                    v27 = v83 & *(v80 + 56);
                    v84 = (v82 + 63) >> 6;

                    v85 = 0;
                    v166 = v80;
LABEL_71:
                    if (v27)
                    {
                      v86 = v27;
                      goto LABEL_77;
                    }

                    while (1)
                    {
                      v87 = v85 + 1;
                      if (__OFADD__(v85, 1))
                      {
                        __break(1u);
LABEL_115:
                        v126 = v66;
LABEL_117:

                        v127 = *(v126 + 16);
                        if (v127)
                        {
                          *&v177[0] = v66;
                          sub_217EA0D40(0, v127, 0);
                          v128 = 0;
                          v12 = *&v177[0];
                          v162 = v126 + 32;
                          v159 = v126;
                          v160 = v127;
                          do
                          {
                            if (v128 >= *(v126 + 16))
                            {
                              goto LABEL_139;
                            }

                            v166 = v12;
                            v129 = (v162 + 16 * v128);
                            v131 = *v129;
                            v130 = v129[1];
                            v132 = *(v27 + 16);

                            v164 = v130;
                            v165 = v9;
                            v163 = v131;
                            if (v132 && (v133 = sub_217E8E88C(v131, v130), (v134 & 1) != 0))
                            {
                              v135 = *(*(v27 + 56) + 40 * v133 + 24);
                              v136 = *(v135 + 16);
                              if (v136)
                              {
                                *&v172 = v66;

                                sub_217EA0864(0, v136, 0);
                                v137 = v172;
                                v161 = v135;
                                v138 = (v135 + 40);
                                do
                                {
                                  v140 = *(v138 - 1);
                                  v139 = *v138;
                                  *&v172 = v137;
                                  v142 = *(v137 + 16);
                                  v141 = *(v137 + 24);

                                  if (v142 >= v141 >> 1)
                                  {
                                    sub_217EA0864((v141 > 1), v142 + 1, 1);
                                    v137 = v172;
                                  }

                                  *(v137 + 16) = v142 + 1;
                                  v143 = v137 + 16 * v142;
                                  *(v143 + 32) = v140;
                                  *(v143 + 40) = v139;
                                  v138 += 12;
                                  --v136;
                                }

                                while (v136);

                                v27 = v157;
                                v66 = MEMORY[0x277D84F90];
                                v126 = v159;
                              }

                              else
                              {
                                v137 = v66;
                              }

                              v127 = v160;
                            }

                            else
                            {
                              v137 = v66;
                            }

                            v12 = v166;
                            *&v177[0] = v166;
                            v145 = *(v166 + 16);
                            v144 = *(v166 + 24);
                            if (v145 >= v144 >> 1)
                            {
                              sub_217EA0D40((v144 > 1), v145 + 1, 1);
                              v12 = *&v177[0];
                            }

                            ++v128;
                            *(v12 + 16) = v145 + 1;
                            v146 = (v12 + 24 * v145);
                            v147 = v164;
                            v146[4] = v163;
                            v146[5] = v147;
                            v146[6] = v137;
                            v9 = v165;
                          }

                          while (v128 != v127);
                        }

                        else
                        {

                          return MEMORY[0x277D84F90];
                        }

                        return v12;
                      }

                      if (v87 >= v84)
                      {
                        break;
                      }

                      v86 = *(v66 + 8 * v87);
                      ++v85;
                      if (v86)
                      {
                        v85 = v87;
LABEL_77:
                        v27 = (v86 - 1) & v86;
                        if (!*(v12 + 16))
                        {
                          goto LABEL_71;
                        }

                        v88 = (*(v80 + 48) + ((v85 << 10) | (16 * __clz(__rbit64(v86)))));
                        v89 = *v88;
                        v90 = v88[1];

                        v91 = sub_217E8E88C(v89, v90);
                        if ((v92 & 1) == 0)
                        {

                          v80 = v166;
                          goto LABEL_71;
                        }

                        v93 = *(*(v12 + 56) + 8 * v91);
                        v12 = v93 + 64;
                        v94 = 1 << *(v93 + 32);
                        if (v94 < 64)
                        {
                          v95 = ~(-1 << v94);
                        }

                        else
                        {
                          v95 = -1;
                        }

                        v96 = v95 & *(v93 + 64);
                        v161 = v93;
                        v162 = (v94 + 63) >> 6;
                        swift_bridgeObjectRetain_n();
                        v98 = 0;
                        v160 = v12;
                        v99 = v162;
                        if (v96)
                        {
                          while (2)
                          {
                            v165 = v9;
                            v100 = v98;
LABEL_89:
                            v163 = &v149;
                            v101 = __clz(__rbit64(v96)) | (v100 << 6);
                            v102 = (*(v161 + 48) + 16 * v101);
                            v103 = v102[1];
                            v104 = *(*(v161 + 56) + 8 * v101);
                            v96 &= v96 - 1;
                            v158 = *v102;
                            *&v177[0] = v158;
                            *(&v177[0] + 1) = v103;
                            MEMORY[0x28223BE20](v103, v97);
                            *(&v149 - 2) = v177;
                            v164 = v105;

                            v106 = v159;

                            v9 = v165;
                            LODWORD(v165) = sub_217F04BF8(sub_217F2C124, (&v149 - 2), v106);

                            if (v165)
                            {
LABEL_90:
                            }

                            else
                            {
                              v107 = v81 * v104;
                              v108 = v155;
                              if (!*(v155 + 16) || (v109 = sub_217E8E88C(v158, v164), (v110 & 1) == 0))
                              {
                                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                *&v177[0] = v108;
                                sub_217F1A0A8(v158, v164, isUniquelyReferenced_nonNull_native, v107);
                                v155 = *&v177[0];

                                sub_217F194B0(v177, v158, v164);

                                goto LABEL_90;
                              }

                              v111 = *(v108 + 56);
                              if (*(v111 + 8 * v109) > v107)
                              {
                                v107 = *(v111 + 8 * v109);
                              }

                              v112 = swift_isUniquelyReferenced_nonNull_native();
                              *&v177[0] = v108;
                              sub_217F1A0A8(v158, v164, v112, v107);

                              v155 = *&v177[0];
                            }

                            v98 = v100;
                            v12 = v160;
                            v99 = v162;
                            if (!v96)
                            {
                              break;
                            }

                            continue;
                          }
                        }

                        while (1)
                        {
                          v100 = v98 + 1;
                          if (__OFADD__(v98, 1))
                          {
                            break;
                          }

                          if (v100 >= v99)
                          {

                            v12 = v154;
                            v80 = v166;
                            goto LABEL_71;
                          }

                          v96 = *(v12 + 8 * v100);
                          ++v98;
                          if (v96)
                          {
                            v165 = v9;
                            goto LABEL_89;
                          }
                        }

                        __break(1u);
LABEL_138:
                        __break(1u);
LABEL_139:
                        __break(1u);
LABEL_140:
                        __break(1u);
                        goto LABEL_141;
                      }
                    }

                    v81 = v81 * v81;
                    v80 = v167;
                    if (!*(v167 + 16))
                    {
                      goto LABEL_101;
                    }
                  }
                }

                v155 = MEMORY[0x277D84F98];
                v9 = v74;
LABEL_101:

                v114 = v155;
                v12 = *(v155 + 16);
                if (v12)
                {
                  v115 = sub_217E8E76C(*(v155 + 16), 0);
                  v166 = sub_217E96D98(v177, v115 + 4, v12, v114);
                  v116 = *&v177[0];

                  sub_217E7F628(v116);
                  if (v166 != v12)
                  {
                    goto LABEL_142;
                  }

                  v27 = v157;
                  v66 = MEMORY[0x277D84F90];
                }

                else
                {
                  v27 = v157;

                  v66 = MEMORY[0x277D84F90];
                  v115 = MEMORY[0x277D84F90];
                }

                *&v177[0] = v115;

                sub_217F28E88(v177, v27, sub_217F372B0, sub_217F25C74);
                swift_bridgeObjectRelease_n();
                v13 = v150;
                v67 = v152;
                if (v9)
                {
                  goto LABEL_146;
                }

                v117 = *&v177[0];
                v118 = *(*&v177[0] + 16);
                if (v118)
                {
                  v165 = 0;
                  *&v177[0] = v66;
                  sub_217EA0864(0, v118, 0);
                  v119 = *&v177[0];
                  v120 = (v117 + 40);
                  do
                  {
                    v121 = *(v120 - 1);
                    v122 = *v120;
                    *&v177[0] = v119;
                    v124 = *(v119 + 16);
                    v123 = *(v119 + 24);

                    if (v124 >= v123 >> 1)
                    {
                      sub_217EA0864((v123 > 1), v124 + 1, 1);
                      v119 = *&v177[0];
                    }

                    *(v119 + 16) = v124 + 1;
                    v125 = v119 + 16 * v124;
                    *(v125 + 32) = v121;
                    *(v125 + 40) = v122;
                    v120 += 3;
                    --v118;
                  }

                  while (v118);

                  v27 = v157;
                  v9 = v165;
                  v13 = v150;
                  v66 = MEMORY[0x277D84F90];
                  v67 = v152;
                }

                else
                {

                  v119 = v66;
                }

                sub_217E80630(v119);

                v12 = v154;
              }

              ++v67;

              if (v67 == v151)
              {
                v126 = v172;
                goto LABEL_117;
              }
            }
          }

          v26 = *(v20 + 8 * v28);
          ++v25;
        }

        while (!v26);
        v25 = v28;
      }

      v23 = (v26 - 1) & v26;
    }

    while (!*(v12 + 16));
    v166 = (v26 - 1) & v26;
    v29 = (*(v7 + 48) + ((v25 << 10) | (16 * __clz(__rbit64(v26)))));
    v31 = *v29;
    v30 = v29[1];

    v32 = sub_217E8E88C(v31, v30);
    if (v33)
    {
      break;
    }

    v23 = v166;
  }

  v164 = v30;
  v34 = *(v12 + 56);
  v35 = 1 << *(v7 + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & *(v7 + 56);
  v161 = (v35 + 63) >> 6;
  v162 = v12;
  v38 = *(v34 + 8 * v32);

  v39 = 0;
  v165 = MEMORY[0x277D84F98];
  v12 = v31;
  v159 = v31;
  while (v37)
  {
LABEL_32:
    v41 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v42 = (*(v7 + 48) + ((v39 << 10) | (16 * v41)));
    v43 = v42[1];
    if (v12 != *v42 || v164 != v43)
    {
      v163 = *v42;
      if ((sub_217F4B144() & 1) == 0)
      {
        v160 = v43;
        if (sub_217F4B144())
        {
          *&v177[0] = v12;
          *(&v177[0] + 1) = v164;

          v44 = v163;
          v45 = v43;
        }

        else
        {
          *&v177[0] = v163;
          *(&v177[0] + 1) = v43;
          swift_bridgeObjectRetain_n();
          v44 = v12;
          v45 = v164;
        }

        MEMORY[0x21CEAEAC0](v44, v45);
        if (!*(v162 + 16))
        {

          goto LABEL_46;
        }

        v158 = sub_217E8E88C(*&v177[0], *(&v177[0] + 1));
        v47 = v46;

        if ((v47 & 1) != 0 && (v48 = *(*(v162 + 56) + 8 * v158) / v38, v5 < v48))
        {
          v12 = v165;
          LODWORD(v158) = swift_isUniquelyReferenced_nonNull_native();
          *&v177[0] = v165;
          v49 = sub_217E8E88C(v163, v160);
          v51 = *(v165 + 16);
          v52 = (v50 & 1) == 0;
          v53 = __OFADD__(v51, v52);
          v54 = v51 + v52;
          if (v53)
          {
            goto LABEL_144;
          }

          v55 = v50;
          if (*(v165 + 24) >= v54)
          {
            v12 = v159;
            if ((v158 & 1) == 0)
            {
              LODWORD(v158) = v50;
              v165 = v9;
              v62 = v49;
              sub_217E8F918();
              v12 = v159;
              v55 = v158;
              v49 = v62;
              v9 = v165;
            }
          }

          else
          {
            sub_217E924FC(v54, v158);
            v49 = sub_217E8E88C(v163, v160);
            if ((v55 & 1) != (v56 & 1))
            {
              goto LABEL_147;
            }

            v12 = v159;
          }

          v57 = v160;
          v58 = *&v177[0];
          v165 = *&v177[0];
          if (v55)
          {
            *(*(*&v177[0] + 56) + 8 * v49) = v48;
          }

          else
          {
            *(*&v177[0] + 8 * (v49 >> 6) + 64) |= 1 << v49;
            v59 = (v58[6] + 16 * v49);
            *v59 = v163;
            v59[1] = v57;
            *(v58[7] + 8 * v49) = v48;
            v60 = v58[2];
            v53 = __OFADD__(v60, 1);
            v61 = v60 + 1;
            if (v53)
            {
              goto LABEL_145;
            }

            v58[2] = v61;
          }
        }

        else
        {
LABEL_46:

          v12 = v159;
        }
      }
    }
  }

  while (1)
  {
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v40 >= v161)
    {

      v63 = swift_isUniquelyReferenced_nonNull_native();
      *&v177[0] = v154;
      sub_217F1A750(v165, v12, v164, v63, sub_217E8FA80, sub_217E927A0, sub_217F3AE24);

      v154 = *&v177[0];
      v13 = v150;
      v12 = v162;
      v23 = v166;
      goto LABEL_13;
    }

    v37 = *(v20 + 8 * v40);
    ++v39;
    if (v37)
    {
      v39 = v40;
      goto LABEL_32;
    }
  }

LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  MEMORY[0x21CEAF510](v9);
  v169 = v174;
  v170 = v175;
  v171[0] = v176[0];
  *(v171 + 9) = *(v12 + 73);
  v167 = v172;
  v168 = v173;
  sub_217E98274(&v167);

  __break(1u);
LABEL_146:
  MEMORY[0x21CEAF510](v9);

  __break(1u);
LABEL_147:
  result = sub_217F4B1C4();
  __break(1u);
  return result;
}

uint64_t sub_217F26D6C(char *__src, char *a2, char *a3, uint64_t *a4, uint64_t a5)
{
  v6 = a4;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 4;
  v11 = a3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 4;
  if (v10 >= v13 >> 4)
  {
    if (a4 != a2 || &a2[16 * v14] <= a4)
    {
      v32 = a2;
      memmove(a4, a2, 16 * v14);
      a2 = v32;
    }

    v33 = a2;
    v16 = &v6[2 * v14];
    if (v12 < 16 || a2 <= v7)
    {
      goto LABEL_56;
    }

    v48 = v6;
    while (2)
    {
      v47 = v33 - 2;
      v34 = v11;
      __dst = v33;
      while (1)
      {
        v35 = v16 - 2;
        v36 = *(v16 - 1);
        v37 = *(v33 - 1);
        if (!*(a5 + 16))
        {
          break;
        }

        v38 = *(v33 - 2);
        v39 = *v35;

        v40 = sub_217E8E88C(v39, v36);
        v41 = 0.0;
        if (v42)
        {
          v41 = *(*(a5 + 56) + 40 * v40 + 32);
        }

        v11 = v34 - 16;
        if (!*(a5 + 16) || (v43 = sub_217E8E88C(v38, v37), (v44 & 1) == 0))
        {
          v6 = v48;
          goto LABEL_46;
        }

        v45 = *(*(a5 + 56) + 40 * v43 + 32);

        v6 = v48;
        if (v45 < v41)
        {
          goto LABEL_49;
        }

LABEL_47:
        if (v16 != v34)
        {
          *v11 = *v35;
        }

        v16 -= 2;
        v34 = v11;
        v33 = __dst;
        if (v35 <= v6)
        {
          v16 = v35;
          goto LABEL_56;
        }
      }

      v11 = v34 - 16;

      v41 = 0.0;
LABEL_46:

      if (v41 > 0.0)
      {
LABEL_49:
        if (v34 != __dst)
        {
          *v11 = *v47;
        }

        if (v16 <= v6 || (v33 = v47, v47 <= v7))
        {
          v33 = v47;
          goto LABEL_56;
        }

        continue;
      }

      goto LABEL_47;
    }
  }

  v15 = a2;
  if (a4 != __src || &__src[16 * v10] <= a4)
  {
    memmove(a4, __src, 16 * v10);
  }

  v16 = &v6[2 * v10];
  if (v8 >= 16)
  {
    v17 = v11;
    if (v15 < v11)
    {
      v18 = v15;
      do
      {
        v19 = v18[1];
        v20 = v6[1];
        if (*(a5 + 16))
        {
          v21 = v6;
          v22 = *v6;
          v23 = *v18;

          v24 = sub_217E8E88C(v23, v19);
          v25 = 0.0;
          if (v26)
          {
            v25 = *(*(a5 + 56) + 40 * v24 + 32);
          }

          if (*(a5 + 16))
          {
            v27 = sub_217E8E88C(v22, v20);
            if (v28)
            {
              v29 = *(*(a5 + 56) + 40 * v27 + 32);

              v6 = v21;
              if (v29 >= v25)
              {
                goto LABEL_18;
              }

              goto LABEL_26;
            }
          }

          v6 = v21;
        }

        else
        {

          v25 = 0.0;
        }

        if (v25 <= 0.0)
        {
LABEL_18:
          v30 = v6;
          v31 = v7 == v6;
          v6 += 2;
          if (v31)
          {
            goto LABEL_20;
          }

LABEL_19:
          *v7 = *v30;
          goto LABEL_20;
        }

LABEL_26:
        v30 = v18;
        v31 = v7 == v18;
        v18 += 2;
        if (!v31)
        {
          goto LABEL_19;
        }

LABEL_20:
        v7 += 16;
      }

      while (v6 < v16 && v18 < v17);
    }
  }

  v33 = v7;
LABEL_56:
  if (v33 != v6 || v33 >= (v6 + ((v16 - v6 + (v16 - v6 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v33, v6, 16 * ((v16 - v6) / 16));
  }

  return 1;
}

uint64_t sub_217F27128(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_217F3610C(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 16 * *v12);
      v15 = (v10 + 16 * *v13);
      v16 = (v10 + 16 * v14);

      sub_217F26D6C(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_217F272D0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3[1];
  v133 = MEMORY[0x277D84F90];
  if (v8 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v130 = a5;
LABEL_5:
    v11 = v9++;
    if (v9 >= v8)
    {
      goto LABEL_30;
    }

    v12 = *a3;
    v13 = (*a3 + 16 * v9);
    v14 = v13[1];
    v132[0] = *v13;
    v132[1] = v14;
    v15 = (v12 + 16 * v11);
    v16 = v15[1];
    v131[0] = *v15;
    v131[1] = v16;

    v17 = sub_217F18E50(v132, v131, a5);
    if (v6)
    {

      goto LABEL_109;
    }

    v18 = v17;

    v118 = v11;
    v9 = v11 + 2;
    if (v11 + 2 >= v8)
    {
      goto LABEL_21;
    }

    v19 = v15 + 3;
    v20 = v15 + 3;
    while (1)
    {
      v22 = v20[2];
      v20 += 2;
      v21 = v22;
      v23 = *v19;
      if (*(a5 + 16))
      {
        v24 = v9;
        v25 = *(v19 - 1);
        v26 = v19[1];

        v27 = sub_217E8E88C(v26, v21);
        a5 = v130;
        v28 = 0.0;
        if (v29)
        {
          v28 = *(*(v130 + 56) + 40 * v27 + 32);
        }

        if (*(v130 + 16))
        {
          v30 = sub_217E8E88C(v25, v23);
          if (v31)
          {
            v32 = *(*(v130 + 56) + 40 * v30 + 32);

            v9 = v24;
            if (((v18 ^ (v32 >= v28)) & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_11;
          }
        }

        v9 = v24;
      }

      else
      {

        v28 = 0.0;
      }

      if (((v18 ^ (v28 <= 0.0)) & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_11:
      ++v9;
      v19 = v20;
      if (v8 == v9)
      {
        v9 = v8;
LABEL_21:
        if (!v18)
        {
          v11 = v118;
          v6 = 0;
          goto LABEL_30;
        }

        v11 = v118;
        if (v9 < v118)
        {
          goto LABEL_130;
        }

        v6 = 0;
        if (v118 < v9)
        {
          v33 = 0;
          v34 = 16 * v9;
          v35 = 16 * v118;
          v36 = v118;
          do
          {
            if (v36 != v9 + v33 - 1)
            {
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v38 = (v37 + v35);
              v39 = v37 + v34;
              v40 = *v38;
              v41 = v38[1];
              *v38 = *(v39 - 16);
              *(v39 - 16) = v40;
              *(v39 - 8) = v41;
            }

            ++v36;
            --v33;
            v34 -= 16;
            v35 += 16;
          }

          while (v36 < v9 + v33);
        }

LABEL_30:
        v42 = a3[1];
        if (v9 >= v42)
        {
          goto LABEL_55;
        }

        if (__OFSUB__(v9, v11))
        {
          goto LABEL_127;
        }

        if (v9 - v11 >= a4)
        {
          goto LABEL_55;
        }

        if (__OFADD__(v11, a4))
        {
          goto LABEL_128;
        }

        if (v11 + a4 < v42)
        {
          v42 = v11 + a4;
        }

        if (v42 >= v11)
        {
          if (v9 == v42)
          {
            goto LABEL_55;
          }

          v121 = v42;
          v128 = v6;
          v43 = *a3;
          v44 = *a3 + 16 * v9;
          v119 = v11;
          v45 = v11 - v9;
          while (2)
          {
            v126 = v9;
            v46 = *(v43 + 16 * v9 + 8);
            v47 = v45;
            v123 = v44;
            v48 = v44;
            while (2)
            {
              v50 = *(v48 - 2);
              v49 = *(v48 - 1);
              if (*(a5 + 16))
              {
                v51 = *v48;

                v52 = sub_217E8E88C(v51, v46);
                a5 = v130;
                v53 = 0.0;
                if (v54)
                {
                  v53 = *(*(v130 + 56) + 40 * v52 + 32);
                }

                if (*(v130 + 16))
                {
                  v55 = sub_217E8E88C(v50, v49);
                  if (v56)
                  {
                    v57 = *(*(v130 + 56) + 40 * v55 + 32);

                    if (v57 >= v53)
                    {
                      break;
                    }

                    goto LABEL_50;
                  }
                }
              }

              else
              {

                v53 = 0.0;
              }

              if (v53 <= 0.0)
              {
                break;
              }

LABEL_50:
              if (!v43)
              {
                goto LABEL_131;
              }

              v58 = *v48;
              v46 = v48[1];
              *v48 = *(v48 - 1);
              *(v48 - 1) = v46;
              *(v48 - 2) = v58;
              v48 -= 2;
              if (!__CFADD__(v47++, 1))
              {
                continue;
              }

              break;
            }

            v9 = v126 + 1;
            v44 = v123 + 16;
            --v45;
            if (v126 + 1 != v121)
            {
              continue;
            }

            break;
          }

          v9 = v121;
          v6 = v128;
          v11 = v119;
LABEL_55:
          if (v9 < v11)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_217E8DA14(0, *(v10 + 2) + 1, 1, v10);
          }

          v61 = *(v10 + 2);
          v60 = *(v10 + 3);
          v62 = v61 + 1;
          if (v61 >= v60 >> 1)
          {
            v10 = sub_217E8DA14((v60 > 1), v61 + 1, 1, v10);
          }

          *(v10 + 2) = v62;
          v63 = v10 + 32;
          v64 = &v10[16 * v61 + 32];
          *v64 = v11;
          *(v64 + 1) = v9;
          v133 = v10;
          v124 = *a1;
          if (!*a1)
          {
            goto LABEL_134;
          }

          if (v61)
          {
            v127 = v9;
            v129 = v6;
            v122 = v10 + 32;
            while (1)
            {
              v65 = v62 - 1;
              if (v62 >= 4)
              {
                break;
              }

              if (v62 == 3)
              {
                v66 = *(v10 + 4);
                v67 = *(v10 + 5);
                v76 = __OFSUB__(v67, v66);
                v68 = v67 - v66;
                v69 = v76;
LABEL_76:
                if (v69)
                {
                  goto LABEL_117;
                }

                v82 = &v10[16 * v62];
                v84 = *v82;
                v83 = *(v82 + 1);
                v85 = __OFSUB__(v83, v84);
                v86 = v83 - v84;
                v87 = v85;
                if (v85)
                {
                  goto LABEL_120;
                }

                v88 = &v63[16 * v65];
                v90 = *v88;
                v89 = *(v88 + 1);
                v76 = __OFSUB__(v89, v90);
                v91 = v89 - v90;
                if (v76)
                {
                  goto LABEL_123;
                }

                if (__OFADD__(v86, v91))
                {
                  goto LABEL_124;
                }

                if (v86 + v91 >= v68)
                {
                  if (v68 < v91)
                  {
                    v65 = v62 - 2;
                  }

                  goto LABEL_97;
                }

                goto LABEL_90;
              }

              v92 = &v10[16 * v62];
              v94 = *v92;
              v93 = *(v92 + 1);
              v76 = __OFSUB__(v93, v94);
              v86 = v93 - v94;
              v87 = v76;
LABEL_90:
              if (v87)
              {
                goto LABEL_119;
              }

              v95 = &v63[16 * v65];
              v97 = *v95;
              v96 = *(v95 + 1);
              v76 = __OFSUB__(v96, v97);
              v98 = v96 - v97;
              if (v76)
              {
                goto LABEL_122;
              }

              if (v98 < v86)
              {
                goto LABEL_3;
              }

LABEL_97:
              if (v65 - 1 >= v62)
              {
                __break(1u);
LABEL_112:
                __break(1u);
LABEL_113:
                __break(1u);
LABEL_114:
                __break(1u);
LABEL_115:
                __break(1u);
LABEL_116:
                __break(1u);
LABEL_117:
                __break(1u);
LABEL_118:
                __break(1u);
LABEL_119:
                __break(1u);
LABEL_120:
                __break(1u);
LABEL_121:
                __break(1u);
LABEL_122:
                __break(1u);
LABEL_123:
                __break(1u);
LABEL_124:
                __break(1u);
LABEL_125:
                __break(1u);
LABEL_126:
                __break(1u);
LABEL_127:
                __break(1u);
LABEL_128:
                __break(1u);
                goto LABEL_129;
              }

              v103 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v104 = v10;
              v105 = &v63[16 * v65 - 16];
              v106 = *v105;
              v107 = v65;
              v108 = &v63[16 * v65];
              v109 = *(v108 + 1);
              v110 = (v103 + 16 * *v105);
              v111 = (v103 + 16 * *v108);
              v112 = (v103 + 16 * v109);

              sub_217F26D6C(v110, v111, v112, v124, v130);
              if (v129)
              {

                goto LABEL_109;
              }

              if (v109 < v106)
              {
                goto LABEL_112;
              }

              v113 = *(v104 + 2);
              if (v107 > v113)
              {
                goto LABEL_113;
              }

              *v105 = v106;
              *(v105 + 1) = v109;
              if (v107 >= v113)
              {
                goto LABEL_114;
              }

              v62 = v113 - 1;
              memmove(v108, v108 + 16, 16 * (v113 - 1 - v107));
              v10 = v104;
              *(v104 + 2) = v113 - 1;
              v114 = v113 > 2;
              v9 = v127;
              v63 = v122;
              a5 = v130;
              if (!v114)
              {
LABEL_3:
                v133 = v10;
                v6 = v129;
                goto LABEL_4;
              }
            }

            v70 = &v63[16 * v62];
            v71 = *(v70 - 8);
            v72 = *(v70 - 7);
            v76 = __OFSUB__(v72, v71);
            v73 = v72 - v71;
            if (v76)
            {
              goto LABEL_115;
            }

            v75 = *(v70 - 6);
            v74 = *(v70 - 5);
            v76 = __OFSUB__(v74, v75);
            v68 = v74 - v75;
            v69 = v76;
            if (v76)
            {
              goto LABEL_116;
            }

            v77 = &v10[16 * v62];
            v79 = *v77;
            v78 = *(v77 + 1);
            v76 = __OFSUB__(v78, v79);
            v80 = v78 - v79;
            if (v76)
            {
              goto LABEL_118;
            }

            v76 = __OFADD__(v68, v80);
            v81 = v68 + v80;
            if (v76)
            {
              goto LABEL_121;
            }

            if (v81 >= v73)
            {
              v99 = &v63[16 * v65];
              v101 = *v99;
              v100 = *(v99 + 1);
              v76 = __OFSUB__(v100, v101);
              v102 = v100 - v101;
              if (v76)
              {
                goto LABEL_125;
              }

              if (v68 < v102)
              {
                v65 = v62 - 2;
              }

              goto LABEL_97;
            }

            goto LABEL_76;
          }

LABEL_4:
          v8 = a3[1];
          if (v9 >= v8)
          {
            goto LABEL_107;
          }

          goto LABEL_5;
        }

LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_132:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_133:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_134:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_135:
        result = swift_bridgeObjectRelease_n();
        __break(1u);
        return result;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_107:
  v115 = *a1;
  if (!*a1)
  {
    goto LABEL_135;
  }

  sub_217F27128(&v133, v115, a3, a5);

LABEL_109:
  swift_bridgeObjectRelease_n();
}

uint64_t sub_217F27AA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = (*a4 + 16 * a3);
    v9 = result - a3;
LABEL_5:
    v10 = *(v7 + 16 * v6 + 8);
    v23 = v9;
    v24 = v8;
    while (1)
    {
      v12 = *(v8 - 2);
      v11 = *(v8 - 1);
      if (*(a5 + 16))
      {
        v13 = *v8;

        v14 = sub_217E8E88C(v13, v10);
        v15 = 0.0;
        if (v16)
        {
          v15 = *(*(a5 + 56) + 40 * v14 + 32);
        }

        if (*(a5 + 16))
        {
          v17 = sub_217E8E88C(v12, v11);
          if (v18)
          {
            v19 = *(*(a5 + 56) + 40 * v17 + 32);

            if (v19 >= v15)
            {
              goto LABEL_4;
            }

            goto LABEL_15;
          }
        }
      }

      else
      {

        v15 = 0.0;
      }

      if (v15 <= 0.0)
      {
        goto LABEL_4;
      }

LABEL_15:
      if (!v7)
      {
        __break(1u);
        return result;
      }

      v20 = *v8;
      v10 = v8[1];
      *v8 = *(v8 - 1);
      *(v8 - 1) = v10;
      *(v8 - 2) = v20;
      v8 -= 2;
      if (__CFADD__(v9++, 1))
      {
LABEL_4:
        ++v6;
        v8 = v24 + 2;
        v9 = v23 - 1;
        if (v6 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_217F27C20(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_217F4B0F4();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_217F4AC54();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_217F272D0(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_217F27AA0(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_217F27D68(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_217F3729C(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_217F27C20(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_217F27E0C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_217F27E60(char *__src, char *__dst, char *a3, uint64_t *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst - __src;
  v10 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v10 = __dst - __src;
  }

  v11 = v10 >> 4;
  v12 = a3 - __dst;
  v13 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v13 = a3 - __dst;
  }

  v14 = v13 >> 4;
  if (v11 >= v13 >> 4)
  {
    v30 = __dst;
    if (a4 != __dst || &__dst[16 * v14] <= a4)
    {
      memmove(a4, __dst, 16 * v14);
    }

    v16 = &v6[2 * v14];
    if (v12 >= 16 && v30 > v8)
    {
LABEL_33:
      v44 = v30;
      v43 = v30 - 2;
      v7 -= 16;
      do
      {
        v31 = v16 - 2;
        if (*(a5 + 16))
        {
          v32 = *(v16 - 1);
          v34 = *(v44 - 2);
          v33 = *(v44 - 1);
          v35 = *v31;

          v36 = sub_217E8E88C(v35, v32);
          if (v37)
          {
            if (!*(a5 + 16) || (v38 = *(*(a5 + 56) + 40 * v36 + 32), v39 = sub_217E8E88C(v34, v33), (v40 & 1) == 0))
            {

LABEL_45:
              if (v7 + 16 != v44)
              {
                *v7 = *v43;
              }

              if (v16 <= v6 || (v30 = v43, v43 <= v8))
              {
                v30 = v43;
                goto LABEL_52;
              }

              goto LABEL_33;
            }

            v41 = *(*(a5 + 56) + 40 * v39 + 32);

            if (v41 < v38)
            {
              goto LABEL_45;
            }
          }

          else
          {
          }
        }

        if (v7 + 16 != v16)
        {
          *v7 = *v31;
        }

        v7 -= 16;
        v16 -= 2;
      }

      while (v31 > v6);
      v16 = v31;
      v30 = v44;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v11] <= a4)
    {
      memmove(a4, __src, 16 * v11);
    }

    v16 = &v6[2 * v11];
    if (v9 >= 16 && __dst < v7)
    {
      v17 = __dst;
      while (1)
      {
        if (!*(a5 + 16))
        {
          goto LABEL_19;
        }

        v19 = *v6;
        v18 = v6[1];
        v20 = *v17;
        v21 = v17[1];

        v22 = sub_217E8E88C(v20, v21);
        if ((v23 & 1) == 0)
        {
          break;
        }

        if (*(a5 + 16) && (v24 = *(*(a5 + 56) + 40 * v22 + 32), v25 = sub_217E8E88C(v19, v18), (v26 & 1) != 0))
        {
          v27 = *(*(a5 + 56) + 40 * v25 + 32);

          if (v27 >= v24)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }

        v28 = v17;
        v29 = v8 == v17;
        v17 += 2;
        if (!v29)
        {
          goto LABEL_20;
        }

LABEL_21:
        v8 += 16;
        if (v6 >= v16 || v17 >= v7)
        {
          goto LABEL_50;
        }
      }

LABEL_19:
      v28 = v6;
      v29 = v8 == v6;
      v6 += 2;
      if (v29)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v8 = *v28;
      goto LABEL_21;
    }

LABEL_50:
    v30 = v8;
  }

LABEL_52:
  if (v30 != v6 || v30 >= (v6 + ((v16 - v6 + (v16 - v6 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v30, v6, 16 * ((v16 - v6) / 16));
  }

  return 1;
}

uint64_t sub_217F281D4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_217F3610C(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 16 * *v12);
      v15 = (v10 + 16 * *v13);
      v16 = (v10 + 16 * v14);

      sub_217F27E60(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_217F2837C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v140 = MEMORY[0x277D84F90];
  if (v6 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v139 = a5;
    while (1)
    {
      v9 = v7 + 1;
      v130 = v7;
      if (v7 + 1 >= v6)
      {
        v23 = v7 + 1;
        goto LABEL_37;
      }

      v10 = (*a3 + 16 * v7);
      if (*(a5 + 16))
      {
        v11 = (*a3 + 16 * v9);
        v12 = *v10;
        v13 = v10[1];
        v14 = *v11;
        v15 = v11[1];

        v16 = sub_217E8E88C(v14, v15);
        if (v17)
        {
          if (*(a5 + 16) && (v18 = *(*(a5 + 56) + 40 * v16 + 32), v19 = sub_217E8E88C(v12, v13), (v20 & 1) != 0))
          {
            v21 = *(*(a5 + 56) + 40 * v19 + 32);

            v22 = v21 < v18;
          }

          else
          {

            v22 = 1;
          }

          goto LABEL_14;
        }
      }

      v22 = 0;
LABEL_14:
      v24 = v130 + 2;
      if (v130 + 2 < v6)
      {
        v25 = v8;
        v26 = v10 + 3;
        v27 = v10 + 3;
        while (1)
        {
          v28 = v24;
          v30 = v27[2];
          v27 += 2;
          v29 = v30;
          if (*(a5 + 16))
          {
            v32 = *(v26 - 1);
            v31 = *v26;
            v33 = v26[1];

            v34 = sub_217E8E88C(v33, v29);
            if (v35)
            {
              if (*(a5 + 16) && (v36 = *(*(a5 + 56) + 40 * v34 + 32), v37 = sub_217E8E88C(v32, v31), a5 = v139, (v38 & 1) != 0))
              {
                v39 = *(*(v139 + 56) + 40 * v37 + 32);

                if (v22 == v39 >= v36)
                {
                  v9 = v28 - 1;
LABEL_30:
                  v8 = v25;
                  goto LABEL_31;
                }
              }

              else
              {

                if (!v22)
                {
                  v23 = v28;
                  v8 = v25;
                  goto LABEL_37;
                }
              }
            }

            else
            {

              if (v22)
              {
LABEL_33:
                v9 = v28 - 1;
                v8 = v25;
                goto LABEL_34;
              }
            }
          }

          else if (v22)
          {
            goto LABEL_33;
          }

          v24 = v28 + 1;
          v26 = v27;
          if (v6 == v28 + 1)
          {
            v9 = v28;
            v28 = v6;
            goto LABEL_30;
          }
        }
      }

      v28 = v130 + 2;
LABEL_31:
      v23 = v28;
      if (v22)
      {
LABEL_34:
        v40 = v130;
        if (v28 < v130)
        {
          goto LABEL_147;
        }

        if (v130 <= v9)
        {
          v46 = 0;
          v47 = 16 * v28;
          v48 = 16 * v130;
          do
          {
            if (v40 != v28 + v46 - 1)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_152;
              }

              v50 = (v49 + v48);
              v51 = v49 + v47;
              v52 = *v50;
              v53 = v50[1];
              *v50 = *(v51 - 16);
              *(v51 - 16) = v52;
              *(v51 - 8) = v53;
            }

            ++v40;
            --v46;
            v47 -= 16;
            v48 += 16;
          }

          while (v40 < v28 + v46);
        }

        v23 = v28;
      }

LABEL_37:
      v41 = a3[1];
      if (v23 < v41)
      {
        v42 = v23;
        v43 = v130;
        v87 = __OFSUB__(v23, v130);
        v44 = v23 - v130;
        if (v87)
        {
          goto LABEL_146;
        }

        if (v44 >= a4)
        {
          goto LABEL_46;
        }

        if (__OFADD__(v130, a4))
        {
          goto LABEL_148;
        }

        if (v130 + a4 >= v41)
        {
          v45 = a3[1];
        }

        else
        {
          v45 = v130 + a4;
        }

        if (v45 < v130)
        {
LABEL_149:
          __break(1u);
LABEL_150:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_151:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_152:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_153:
          swift_bridgeObjectRelease_n();
          __break(1u);
          goto LABEL_154;
        }

        if (v42 == v45)
        {
LABEL_46:
          v23 = v42;
          if (v42 < v130)
          {
            goto LABEL_145;
          }

          goto LABEL_70;
        }

        v127 = v8;
        v54 = *a3;
        v55 = v42;
        v56 = (*a3 + 16 * v42);
        v57 = v130 - v42;
        v131 = v45;
        do
        {
          v133 = v56;
          v135 = v55;
          v58 = *(v54 + 16 * v55 + 8);
          v59 = v57;
          while (*(a5 + 16))
          {
            v61 = *(v56 - 2);
            v60 = *(v56 - 1);
            v62 = *v56;

            v63 = sub_217E8E88C(v62, v58);
            if ((v64 & 1) == 0)
            {

              break;
            }

            if (*(a5 + 16) && (v65 = *(*(a5 + 56) + 40 * v63 + 32), v66 = sub_217E8E88C(v61, v60), a5 = v139, (v67 & 1) != 0))
            {
              v68 = *(*(v139 + 56) + 40 * v66 + 32);

              if (v68 >= v65)
              {
                break;
              }
            }

            else
            {
            }

            if (!v54)
            {
              goto LABEL_150;
            }

            v69 = *v56;
            v58 = v56[1];
            *v56 = *(v56 - 1);
            *(v56 - 1) = v58;
            *(v56 - 2) = v69;
            v56 -= 2;
            if (__CFADD__(v59++, 1))
            {
              break;
            }
          }

          v55 = v135 + 1;
          v56 = v133 + 2;
          --v57;
        }

        while (v135 + 1 != v131);
        v23 = v131;
        v8 = v127;
      }

      v43 = v130;
      if (v23 < v130)
      {
        goto LABEL_145;
      }

LABEL_70:
      v136 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_217E8DA14(0, *(v8 + 2) + 1, 1, v8);
      }

      v72 = *(v8 + 2);
      v71 = *(v8 + 3);
      v73 = v72 + 1;
      if (v72 >= v71 >> 1)
      {
        v8 = sub_217E8DA14((v71 > 1), v72 + 1, 1, v8);
      }

      *(v8 + 2) = v73;
      v74 = v8 + 32;
      v75 = &v8[16 * v72 + 32];
      *v75 = v43;
      *(v75 + 1) = v136;
      v134 = *a1;
      if (!*a1)
      {
        goto LABEL_153;
      }

      if (v72)
      {
        v132 = v8 + 32;
        while (1)
        {
          v76 = v73 - 1;
          if (v73 >= 4)
          {
            break;
          }

          if (v73 == 3)
          {
            v77 = *(v8 + 4);
            v78 = *(v8 + 5);
            v87 = __OFSUB__(v78, v77);
            v79 = v78 - v77;
            v80 = v87;
LABEL_90:
            if (v80)
            {
              goto LABEL_135;
            }

            v93 = &v8[16 * v73];
            v95 = *v93;
            v94 = *(v93 + 1);
            v96 = __OFSUB__(v94, v95);
            v97 = v94 - v95;
            v98 = v96;
            if (v96)
            {
              goto LABEL_137;
            }

            v99 = &v74[16 * v76];
            v101 = *v99;
            v100 = *(v99 + 1);
            v87 = __OFSUB__(v100, v101);
            v102 = v100 - v101;
            if (v87)
            {
              goto LABEL_140;
            }

            if (__OFADD__(v97, v102))
            {
              goto LABEL_142;
            }

            if (v97 + v102 >= v79)
            {
              if (v79 < v102)
              {
                v76 = v73 - 2;
              }

              goto LABEL_112;
            }

            goto LABEL_105;
          }

          if (v73 < 2)
          {
            goto LABEL_143;
          }

          v103 = &v8[16 * v73];
          v105 = *v103;
          v104 = *(v103 + 1);
          v87 = __OFSUB__(v104, v105);
          v97 = v104 - v105;
          v98 = v87;
LABEL_105:
          if (v98)
          {
            goto LABEL_139;
          }

          v106 = &v74[16 * v76];
          v108 = *v106;
          v107 = *(v106 + 1);
          v87 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v87)
          {
            goto LABEL_141;
          }

          if (v109 < v97)
          {
            goto LABEL_3;
          }

LABEL_112:
          if (v76 - 1 >= v73)
          {
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
            goto LABEL_149;
          }

          v114 = *a3;
          if (!*a3)
          {
            goto LABEL_151;
          }

          v115 = v8;
          v116 = &v74[16 * v76 - 16];
          v117 = *v116;
          v118 = v76;
          v119 = &v74[16 * v76];
          v120 = *(v119 + 1);
          v121 = (v114 + 16 * *v116);
          v122 = (v114 + 16 * *v119);
          v123 = (v114 + 16 * v120);

          sub_217F27E60(v121, v122, v123, v134, v139);
          if (v138)
          {

            goto LABEL_125;
          }

          if (v120 < v117)
          {
            goto LABEL_130;
          }

          v138 = 0;
          v124 = *(v115 + 2);
          if (v118 > v124)
          {
            goto LABEL_131;
          }

          *v116 = v117;
          *(v116 + 1) = v120;
          if (v118 >= v124)
          {
            goto LABEL_132;
          }

          v73 = v124 - 1;
          memmove(v119, v119 + 16, 16 * (v124 - 1 - v118));
          v8 = v115;
          *(v115 + 2) = v124 - 1;
          v74 = v132;
          if (v124 <= 2)
          {
            goto LABEL_3;
          }
        }

        v81 = &v74[16 * v73];
        v82 = *(v81 - 8);
        v83 = *(v81 - 7);
        v87 = __OFSUB__(v83, v82);
        v84 = v83 - v82;
        if (v87)
        {
          goto LABEL_133;
        }

        v86 = *(v81 - 6);
        v85 = *(v81 - 5);
        v87 = __OFSUB__(v85, v86);
        v79 = v85 - v86;
        v80 = v87;
        if (v87)
        {
          goto LABEL_134;
        }

        v88 = &v8[16 * v73];
        v90 = *v88;
        v89 = *(v88 + 1);
        v87 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v87)
        {
          goto LABEL_136;
        }

        v87 = __OFADD__(v79, v91);
        v92 = v79 + v91;
        if (v87)
        {
          goto LABEL_138;
        }

        if (v92 >= v84)
        {
          v110 = &v74[16 * v76];
          v112 = *v110;
          v111 = *(v110 + 1);
          v87 = __OFSUB__(v111, v112);
          v113 = v111 - v112;
          if (v87)
          {
            goto LABEL_144;
          }

          if (v79 < v113)
          {
            v76 = v73 - 2;
          }

          goto LABEL_112;
        }

        goto LABEL_90;
      }

LABEL_3:
      v7 = v136;
      v6 = a3[1];
      a5 = v139;
      if (v136 >= v6)
      {
        v140 = v8;
        goto LABEL_122;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_122:
  v125 = *a1;
  if (*a1)
  {

    sub_217F281D4(&v140, v125, a3, a5);
    if (v138)
    {

LABEL_125:
      swift_bridgeObjectRelease_n();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
LABEL_154:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

uint64_t sub_217F28BD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = (*a4 + 16 * a3);
    v9 = result - a3;
LABEL_6:
    v10 = *(v7 + 16 * v6 + 8);
    v23 = v9;
    v24 = v8;
    while (1)
    {
      if (!*(a5 + 16))
      {
        goto LABEL_5;
      }

      v12 = *(v8 - 2);
      v11 = *(v8 - 1);
      v13 = *v8;

      v14 = sub_217E8E88C(v13, v10);
      if ((v15 & 1) == 0)
      {

LABEL_5:
        ++v6;
        v8 = v24 + 2;
        v9 = v23 - 1;
        if (v6 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      if (*(a5 + 16) && (v16 = *(*(a5 + 56) + 40 * v14 + 32), v17 = sub_217E8E88C(v12, v11), (v18 & 1) != 0))
      {
        v19 = *(*(a5 + 56) + 40 * v17 + 32);

        if (v19 >= v16)
        {
          goto LABEL_5;
        }
      }

      else
      {
      }

      if (!v7)
      {
        break;
      }

      v20 = *v8;
      v10 = v8[1];
      *v8 = *(v8 - 1);
      *(v8 - 1) = v10;
      *(v8 - 2) = v20;
      v8 -= 2;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_217F28D40(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_217F4B0F4();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_217F4AC54();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_217F2837C(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_217F28BD0(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_217F28E88(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(void *, uint64_t))
{
  v8 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a3(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + 32;
  v11[1] = v9;

  a4(v11, a2);

  *a1 = v8;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_217F28F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v191 = a2;
  v5 = *(a3 + 1408);
  v6 = *(a3 + 1416);

  v8 = sub_217E8AE18(v7);
  v9 = *(v8 + 16);
  v200 = v8;
  v201 = a1;
  if (v9)
  {
    v10 = sub_217E8E5AC(v9, 0);
    v11 = sub_217E966DC(&v216, v10 + 4, v9, v8);
    v12 = v216;
    v3 = v218;

    sub_217E7F628(v12);
    if (v11 != v9)
    {
      goto LABEL_163;
    }

    v8 = v200;
    a1 = v201;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  *&v216 = v10;
  v9 = 0;
  sub_217F27D68(&v216, a1);

  v14 = v216;
  v15 = MEMORY[0x277D84F90];
  v222 = MEMORY[0x277D84F90];
  v16 = *(v216 + 16);
  if (!v16)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_138;
  }

  v17 = 0;
  v184 = (v191 + 32);
  v196 = v8 + 56;
  v202 = v16;
  v185 = v16 - 1;
  v18 = MEMORY[0x277D84F90];
  v188 = xmmword_217F4BC20;
  v19 = v216 + 40;
  v203 = v216;
  v186 = v216 + 40;
LABEL_7:
  v20 = (v19 + 16 * v17);
  v205 = v18;
  while (1)
  {
    if (v17 >= *(v14 + 16))
    {
      goto LABEL_159;
    }

    v21 = v15;
    v204 = v179;
    v22 = *(v20 - 1);
    v23 = *v20;
    v3 = v17 + 1;
    *&v216 = v22;
    *(&v216 + 1) = v23;
    v24 = v17;
    MEMORY[0x28223BE20](v14, v13);
    v179[-2] = &v216;

    if ((sub_217F04BF8(sub_217F2C140, &v179[-4], v18) & 1) == 0)
    {
      break;
    }

    v20 += 2;
    v17 = v3;
    v14 = v203;
    a1 = v201;
    v18 = v205;
    v15 = v21;
    if (v202 == v3)
    {
      goto LABEL_138;
    }
  }

  v182 = v24;
  v183 = v3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v190 = v23;
  v3 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v205 = sub_217E8DB18(0, *(v205 + 2) + 1, 1, v205);
  }

  v27 = *(v205 + 2);
  v26 = *(v205 + 3);
  v28 = MEMORY[0x277D84F98];
  v15 = v21;
  if (v27 >= v26 >> 1)
  {
    v157 = sub_217E8DB18((v26 > 1), v27 + 1, 1, v205);
    v28 = MEMORY[0x277D84F98];
    v205 = v157;
  }

  v29 = v22;
  v30 = v205;
  *(v205 + 2) = v27 + 1;
  v31 = &v30[16 * v27];
  v32 = v190;
  *(v31 + 4) = v22;
  *(v31 + 5) = v32;
  v221 = v28;
  v222 = v30;
  v33 = *(v191 + 16);
  if (v33)
  {
    v34 = v184;
    v9 = v3;
    v35 = v200;
    v3 = &v206;
    do
    {
      v36 = v34[3];
      v37 = v34[1];
      v218 = v34[2];
      v219 = v36;
      v38 = v34[3];
      v220[0] = v34[4];
      *(v220 + 9) = *(v34 + 73);
      v39 = v34[1];
      v216 = *v34;
      v217 = v39;
      v213 = v218;
      v214 = v38;
      v215[0] = v34[4];
      *(v215 + 9) = *(v34 + 73);
      v211 = v216;
      v212 = v37;
      sub_217E98218(&v216, &v206);
      sub_217F18950(&v221, &v211, v35);
      if (v9)
      {
        goto LABEL_168;
      }

      v208 = v213;
      v209 = v214;
      v210[0] = v215[0];
      *(v210 + 9) = *(v215 + 9);
      v206 = v211;
      v207 = v212;
      sub_217E98274(&v206);
      v34 += 6;
      --v33;
    }

    while (v33);
    v3 = 0;
    v40 = v221;
    v41 = MEMORY[0x277D84F98];
  }

  else
  {
    v40 = v28;
    v41 = v28;
  }

  v42 = 1 << v200[32];
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  else
  {
    v43 = -1;
  }

  v44 = v43 & *(v200 + 7);
  v9 = (v42 + 63) >> 6;

  v45 = 0;
  v194 = v41;
  while (2)
  {
    v85 = v196;
    do
    {
LABEL_26:
      if (v44)
      {
        v46 = v44;
        goto LABEL_32;
      }

      do
      {
        v47 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_160;
        }

        if (v47 >= v9)
        {
          v86 = v200;

          v87 = sub_217F1CF24(v205, v86);
          v88 = MEMORY[0x277D84F98];
          *&v216 = MEMORY[0x277D84F98];
          *&v211 = v5;
          v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
          inited = swift_initStackObject();
          *(inited + 16) = v188;
          *(inited + 32) = v29;
          *(inited + 40) = v190;

          v90 = sub_217E97288(inited);
          swift_setDeallocating();
          sub_217E97320(inited + 32);
          if (*(v90 + 16))
          {
            v91 = v15;
            v92 = v5;
            v93 = MEMORY[0x277D84FA0];
            v94 = v194;
            do
            {
              *&v206 = v93;

              sub_217F24054(v90, v94, &v222, &v211, &v216, &v206);

              v92 = v92 * v92;
              *&v211 = v92;
              v90 = v206;
            }

            while (*(v206 + 16));

            v95 = v216;
            v15 = v91;
          }

          else
          {

            v95 = v88;
          }

          v198 = v3;
          v96 = sub_217F1C9B4(v95, v87);

          a1 = v201;
          v18 = v205;
LABEL_73:

          v97 = 0;
          v98 = 1 << *(v96 + 32);
          v99 = (v98 + 63) >> 6;
          v100 = 56;
          while (1)
          {
            v101 = *(v96 + v100);
            if (v101)
            {
              break;
            }

            v97 -= 64;
            v100 += 8;
            if (!--v99)
            {
              goto LABEL_129;
            }
          }

          v102 = __clz(__rbit64(v101));
          if (v102 - v98 == v97)
          {
LABEL_129:

            swift_bridgeObjectRelease_n();
            v9 = v198;
          }

          else
          {
            v9 = v198;
            v195 = sub_217F27E0C(v102 - v97, *(v96 + 36), 0, v96);
            v205 = v103;

            v104 = *(v96 + 16);
            if (v104)
            {
              v3 = swift_allocObject();
              v105 = _swift_stdlib_malloc_size_1(v3);
              v106 = v105 - 32;
              if (v105 < 32)
              {
                v106 = v105 - 17;
              }

              *(v3 + 16) = v104;
              *(v3 + 24) = 2 * (v106 >> 4);
              v204 = sub_217E966DC(&v216, (v3 + 32), v104, v96);
              v107 = v216;
              v199 = *(&v217 + 1);
              v197 = v218;

              sub_217E7F628(v107);
              if (v204 != v104)
              {
                goto LABEL_165;
              }

              v15 = MEMORY[0x277D84F90];
            }

            else
            {

              v3 = MEMORY[0x277D84F90];
            }

            *&v216 = v3;

            sub_217F28E88(&v216, a1, sub_217F3729C, sub_217F28D40);
            if (v9)
            {
              goto LABEL_170;
            }

            swift_bridgeObjectRelease_n();
            v108 = v216;
            v109 = v194;
            if (*(v216 + 16))
            {

              if (!v108[2])
              {
                goto LABEL_164;
              }

              v110 = v108[4];
              v111 = v108[5];
              swift_bridgeObjectRetain_n();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v18 = sub_217E8DB18(0, *(v18 + 2) + 1, 1, v18);
              }

              v112 = MEMORY[0x277D84FA0];
              v114 = *(v18 + 2);
              v113 = *(v18 + 3);
              if (v114 >= v113 >> 1)
              {
                v18 = sub_217E8DB18((v113 > 1), v114 + 1, 1, v18);
              }

              *(v18 + 2) = v114 + 1;
              v115 = &v18[16 * v114];
              *(v115 + 4) = v110;
              *(v115 + 5) = v111;
              v222 = v18;
              v116 = v200;

              v179[0] = sub_217F1CF24(v18, v116);
              v117 = swift_initStackObject();
              *(v117 + 16) = v188;
              *(v117 + 32) = v110;
              v9 = v117 + 32;
              *(v117 + 40) = v111;
              v179[1] = v111;

              v3 = sub_217E97288(v117);
              swift_setDeallocating();
              sub_217E97320(v117 + 32);
              v118 = *(v3 + 16);
              v198 = 0;
              if (!v118)
              {
                v181 = MEMORY[0x277D84F98];
                goto LABEL_128;
              }

              v181 = MEMORY[0x277D84F98];
              v119 = v5;
              v205 = v18;
LABEL_94:
              *&v211 = v112;
              v120 = v3 + 56;
              v121 = 1 << *(v3 + 32);
              if (v121 < 64)
              {
                v122 = ~(-1 << v121);
              }

              else
              {
                v122 = -1;
              }

              v123 = v122 & *(v3 + 56);
              v124 = (v121 + 63) >> 6;

              v125 = 0;
              while (v123)
              {
                v126 = v123;
LABEL_105:
                v123 = (v126 - 1) & v126;
                if (*(v109 + 16))
                {
                  v128 = (*(v3 + 48) + ((v125 << 10) | (16 * __clz(__rbit64(v126)))));
                  v9 = *v128;
                  v129 = v128[1];

                  v130 = sub_217E8E88C(v9, v129);
                  if (v131)
                  {
                    v180 = v3;
                    v132 = *(*(v109 + 56) + 8 * v130);
                    v133 = v132 + 64;
                    v134 = 1 << *(v132 + 32);
                    if (v134 < 64)
                    {
                      v135 = ~(-1 << v134);
                    }

                    else
                    {
                      v135 = -1;
                    }

                    v3 = v135 & *(v132 + 64);
                    v9 = (v134 + 63) >> 6;
                    v195 = v132;
                    swift_bridgeObjectRetain_n();
                    v137 = 0;
                    v192 = v9;
                    v193 = v133;
                    while (v3)
                    {
                      v138 = v137;
LABEL_117:
                      v199 = v179;
                      v139 = __clz(__rbit64(v3)) | (v138 << 6);
                      v140 = (*(v195 + 48) + 16 * v139);
                      v141 = v140[1];
                      v142 = *(*(v195 + 56) + 8 * v139);
                      v3 &= v3 - 1;
                      v189 = *v140;
                      *&v216 = v189;
                      *(&v216 + 1) = v141;
                      MEMORY[0x28223BE20](v141, v136);
                      v179[-2] = &v216;
                      v204 = v143;

                      v144 = v205;

                      v145 = v198;
                      LODWORD(v197) = sub_217F04BF8(sub_217F2C15C, &v179[-4], v144);
                      v198 = v145;

                      if (v197)
                      {

                        v137 = v138;
                        v9 = v192;
                        v133 = v193;
                      }

                      else
                      {
                        v146 = v119 * v142;
                        v147 = v181;
                        v9 = v192;
                        if (*(v181 + 16) && (v148 = sub_217E8E88C(v189, v204), v147 = v181, (v149 & 1) != 0))
                        {
                          v150 = *(v181 + 56);
                          if (*(v150 + 8 * v148) > v146)
                          {
                            v146 = *(v150 + 8 * v148);
                          }

                          v151 = swift_isUniquelyReferenced_nonNull_native();
                          *&v216 = v147;
                          sub_217F1A0A8(v189, v204, v151, v146);

                          v181 = v216;
                        }

                        else
                        {
                          v152 = swift_isUniquelyReferenced_nonNull_native();
                          *&v216 = v147;
                          sub_217F1A0A8(v189, v204, v152, v146);
                          v181 = v216;

                          sub_217F194B0(&v216, v189, v204);
                        }

                        v137 = v138;
                        v133 = v193;
                      }
                    }

                    while (1)
                    {
                      v138 = v137 + 1;
                      if (__OFADD__(v137, 1))
                      {
                        goto LABEL_161;
                      }

                      if (v138 >= v9)
                      {
                        break;
                      }

                      v3 = *(v133 + 8 * v138);
                      ++v137;
                      if (v3)
                      {
                        goto LABEL_117;
                      }
                    }

                    v109 = v194;
                    v3 = v180;
                  }

                  else
                  {
                  }
                }
              }

              v18 = v205;
              while (1)
              {
                v127 = v125 + 1;
                if (__OFADD__(v125, 1))
                {
                  break;
                }

                if (v127 >= v124)
                {

                  v119 = v119 * v119;
                  v3 = v211;
                  v112 = MEMORY[0x277D84FA0];
                  if (*(v211 + 16))
                  {
                    goto LABEL_94;
                  }

LABEL_128:

                  v96 = sub_217F1C9B4(v181, v179[0]);

                  a1 = v201;
                  v15 = MEMORY[0x277D84F90];
                  goto LABEL_73;
                }

                v126 = *(v120 + 8 * v127);
                ++v125;
                if (v126)
                {
                  v125 = v127;
                  goto LABEL_105;
                }
              }

              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
              goto LABEL_162;
            }

            v153 = v205;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_217E8DB18(0, *(v18 + 2) + 1, 1, v18);
            }

            v155 = *(v18 + 2);
            v154 = *(v18 + 3);
            if (v155 >= v154 >> 1)
            {
              v18 = sub_217E8DB18((v154 > 1), v155 + 1, 1, v18);
            }

            *(v18 + 2) = v155 + 1;
            v156 = &v18[16 * v155];
            *(v156 + 4) = v195;
            *(v156 + 5) = v153;
            v222 = v18;
            v9 = 0;
          }

          v19 = v186;
          v17 = v183;
          v14 = v203;
          if (v185 == v182)
          {
LABEL_138:

            v158 = *(v18 + 2);
            if (!v158)
            {

              return MEMORY[0x277D84F90];
            }

            v198 = v9;
            *&v216 = v15;
            sub_217EA0D40(0, v158, 0);
            v9 = 0;
            v159 = v216;
            v200 = v18 + 32;
            v205 = v18;
            v197 = v158;
            while (v9 < *(v18 + 2))
            {
              v204 = v159;
              v160 = &v200[16 * v9];
              v162 = *v160;
              v161 = v160[1];
              v163 = *(a1 + 16);

              v202 = v162;
              v203 = v161;
              if (v163 && (v164 = sub_217E8E88C(v162, v161), (v165 & 1) != 0))
              {
                v166 = *(*(a1 + 56) + 40 * v164 + 24);
                v167 = *(v166 + 16);
                if (v167)
                {
                  *&v211 = v15;

                  sub_217EA0864(0, v167, 0);
                  v3 = v211;
                  v199 = v166;
                  v168 = (v166 + 40);
                  do
                  {
                    v170 = *(v168 - 1);
                    v169 = *v168;
                    *&v211 = v3;
                    v172 = *(v3 + 16);
                    v171 = *(v3 + 24);

                    if (v172 >= v171 >> 1)
                    {
                      sub_217EA0864((v171 > 1), v172 + 1, 1);
                      v3 = v211;
                    }

                    *(v3 + 16) = v172 + 1;
                    v173 = v3 + 16 * v172;
                    *(v173 + 32) = v170;
                    *(v173 + 40) = v169;
                    v168 += 12;
                    --v167;
                  }

                  while (v167);

                  a1 = v201;
                  v15 = MEMORY[0x277D84F90];
                  v18 = v205;
                  v158 = v197;
                }

                else
                {
                  v3 = v15;
                  v18 = v205;
                }
              }

              else
              {
                v3 = v15;
              }

              v159 = v204;
              *&v216 = v204;
              v175 = v204[2];
              v174 = v204[3];
              if (v175 >= v174 >> 1)
              {
                sub_217EA0D40((v174 > 1), v175 + 1, 1);
                v159 = v216;
              }

              ++v9;
              *(v159 + 16) = v175 + 1;
              v176 = (v159 + 24 * v175);
              v177 = v203;
              v176[4] = v202;
              v176[5] = v177;
              v176[6] = v3;
              if (v9 == v158)
              {

                return v159;
              }
            }

            goto LABEL_158;
          }

          goto LABEL_7;
        }

        v46 = *(v85 + 8 * v47);
        ++v45;
      }

      while (!v46);
      v45 = v47;
LABEL_32:
      v44 = (v46 - 1) & v46;
    }

    while (!*(v40 + 16));
    v48 = (*(v200 + 6) + ((v45 << 10) | (16 * __clz(__rbit64(v46)))));
    v49 = *v48;
    v50 = v48[1];

    v51 = sub_217E8E88C(v49, v50);
    if ((v52 & 1) == 0)
    {

      v15 = MEMORY[0x277D84F90];
      continue;
    }

    break;
  }

  v192 = v29;
  v204 = v49;
  v198 = v40;
  v53 = *(v40 + 56);
  v54 = 1 << v200[32];
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  else
  {
    v55 = -1;
  }

  v56 = v55 & *(v200 + 7);
  v57 = (v54 + 63) >> 6;
  v58 = *(v53 + 8 * v51);

  v59 = 0;
  v193 = MEMORY[0x277D84F98];
  v195 = v57;
  while (v56)
  {
LABEL_43:
    v61 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
    v62 = (*(v200 + 6) + ((v59 << 10) | (16 * v61)));
    v63 = v62[1];
    if (v204 != *v62 || v50 != v63)
    {
      v199 = *v62;
      if ((sub_217F4B144() & 1) == 0)
      {
        v64 = v63;
        v65 = v204;
        v66 = sub_217F4B144();
        v197 = v64;
        if (v66)
        {
          *&v216 = v65;
          *(&v216 + 1) = v50;

          MEMORY[0x21CEAEAC0](v199, v64);
        }

        else
        {
          *&v216 = v199;
          *(&v216 + 1) = v64;
          swift_bridgeObjectRetain_n();
          MEMORY[0x21CEAEAC0](v65, v50);
        }

        if (!*(v198 + 16))
        {

LABEL_57:

          v57 = v195;
          continue;
        }

        v189 = sub_217E8E88C(v216, *(&v216 + 1));
        v68 = v67;
        v69 = v197;

        if ((v68 & 1) == 0)
        {
          goto LABEL_57;
        }

        v70 = *(*(v198 + 56) + 8 * v189) / v58;
        if (v6 >= v70)
        {
          goto LABEL_57;
        }

        v71 = v193;
        LODWORD(v189) = swift_isUniquelyReferenced_nonNull_native();
        *&v216 = v71;
        v72 = sub_217E8E88C(v199, v69);
        v74 = *(v71 + 16);
        v75 = (v73 & 1) == 0;
        v76 = __OFADD__(v74, v75);
        v77 = v74 + v75;
        if (v76)
        {
          goto LABEL_166;
        }

        if (*(v71 + 24) >= v77)
        {
          v57 = v195;
          if ((v189 & 1) == 0)
          {
            v189 = v72;
            LODWORD(v193) = v73;
            sub_217E8F918();
            LOBYTE(v73) = v193;
            v57 = v195;
            v72 = v189;
          }
        }

        else
        {
          LODWORD(v193) = v73;
          sub_217E924FC(v77, v189);
          v72 = sub_217E8E88C(v199, v69);
          v78 = v73 & 1;
          LOBYTE(v73) = v193;
          if ((v193 & 1) != v78)
          {
            goto LABEL_169;
          }

          v57 = v195;
        }

        v79 = v216;
        v193 = v216;
        if (v73)
        {
          *(*(v216 + 56) + 8 * v72) = v70;
        }

        else
        {
          *(v216 + 8 * (v72 >> 6) + 64) |= 1 << v72;
          v80 = (v79[6] + 16 * v72);
          *v80 = v199;
          v80[1] = v69;
          *(v79[7] + 8 * v72) = v70;
          v81 = v79[2];
          v76 = __OFADD__(v81, 1);
          v82 = v81 + 1;
          if (v76)
          {
            goto LABEL_167;
          }

          v79[2] = v82;
        }
      }
    }
  }

  while (1)
  {
    v60 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    if (v60 >= v57)
    {

      v83 = v194;
      v84 = swift_isUniquelyReferenced_nonNull_native();
      *&v216 = v83;
      sub_217F1A750(v193, v204, v50, v84, sub_217E8FA80, sub_217E927A0, sub_217F3AE24);

      v85 = v196;
      v194 = v216;
      v15 = MEMORY[0x277D84F90];
      v40 = v198;
      v29 = v192;
      goto LABEL_26;
    }

    v56 = *(v196 + 8 * v60);
    ++v59;
    if (v56)
    {
      v59 = v60;
      goto LABEL_43;
    }
  }

LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  MEMORY[0x21CEAF510](v9);
  v208 = v213;
  v209 = v214;
  v210[0] = v215[0];
  *(v3 + 73) = *(v3 + 169);
  v206 = v211;
  v207 = v212;
  sub_217E98274(&v206);

  __break(1u);
LABEL_169:
  sub_217F4B1C4();
  __break(1u);
LABEL_170:
  swift_bridgeObjectRelease_n();
  MEMORY[0x21CEAF510](v9);

  __break(1u);
  return result;
}

char *sub_217F2A234(uint64_t a1, uint64_t a2, char *__src)
{
  if (!__src[888])
  {
    memcpy(__dst, __src, sizeof(__dst));
    v38 = 0;
    memcpy(v39, __src + 889, sizeof(v39));
    return sub_217F25DCC(a1, a2, __dst);
  }

  if (__src[888] != 1)
  {
    memcpy(__dst, __src, sizeof(__dst));
    v38 = 2;
    memcpy(v39, __src + 889, sizeof(v39));
    return sub_217F28F44(a1, a2, __dst);
  }

  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v7 = MEMORY[0x277D84F90];
  v8 = sub_217E8E6DC(*(a1 + 16), 0);
  v9 = sub_217E96C08(__dst, (v8 + 32), v5, a1);
  v10 = __dst[0];

  sub_217E7F628(v10);
  if (v9 == v5)
  {
    v6 = v7;
LABEL_10:
    __dst[0] = v8;
    v5 = 0;
    sub_217F1A8BC(__dst);
    v15 = __dst[0];
    v16 = *(__dst[0] + 2);
    if (v16)
    {
      __dst[0] = v6;
      sub_217EA0D40(0, v16, 0);
      v17 = 0;
      v14 = __dst[0];
      v33 = v15;
      v34 = v15 + 32;
      v32 = v16;
      while (v17 < *(v15 + 2))
      {
        v18 = &v34[40 * v17];
        v19 = *v18;
        v20 = *(v18 + 3);
        v21 = *(v20 + 16);
        v36 = *(v18 + 1);
        if (v21)
        {
          v35 = v14;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          sub_217EA0864(0, v21, 0);
          v22 = v6;
          v23 = (v20 + 40);
          do
          {
            v24 = *(v23 - 1);
            v25 = *v23;
            v27 = *(v22 + 2);
            v26 = *(v22 + 3);

            if (v27 >= v26 >> 1)
            {
              sub_217EA0864((v26 > 1), v27 + 1, 1);
            }

            *(v22 + 2) = v27 + 1;
            v28 = &v22[16 * v27];
            *(v28 + 4) = v24;
            *(v28 + 5) = v25;
            v23 += 12;
            --v21;
          }

          while (v21);
          swift_bridgeObjectRelease_n();

          v6 = MEMORY[0x277D84F90];
          v16 = v32;
          v15 = v33;
          v14 = v35;
        }

        else
        {

          v22 = v6;
        }

        __dst[0] = v14;
        v5 = *(v14 + 2);
        v29 = *(v14 + 3);
        if (v5 >= v29 >> 1)
        {
          sub_217EA0D40((v29 > 1), v5 + 1, 1);
          v14 = __dst[0];
        }

        ++v17;
        *(v14 + 2) = v5 + 1;
        v30 = &v14[24 * v5];
        *(v30 + 4) = v19;
        *(v30 + 5) = v36;
        *(v30 + 6) = v22;
        if (v17 == v16)
        {

          return v14;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_27:
  __break(1u);
  MEMORY[0x21CEAF510](v5);

  __break(1u);
  return result;
}

unint64_t sub_217F2A568()
{
  result = qword_280C27698;
  if (!qword_280C27698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF72A8, &qword_217F59298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27698);
  }

  return result;
}

void sub_217F2A5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_217F2A624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t get_enum_tag_for_layout_string_10XavierNews7ClassicV23HeadlineClusteringErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_217F2A698(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 41))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 40);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_217F2A6E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_217F2A734(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 7;
  }

  *(result + 40) = a2;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_217F2A788(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 25))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 24);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_217F2A7D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t _s14descr2829CD401O22HeadlineClusteringRuleO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O22HeadlineClusteringRuleO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14descr2829CD401O22HeadlineClusteringRuleO28PublisherDiversityCodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O22HeadlineClusteringRuleO28PublisherDiversityCodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_217F2ABC0(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_217F2AC10(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_217F2ACB0()
{
  result = qword_27CBF72B8;
  if (!qword_27CBF72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF72B8);
  }

  return result;
}

unint64_t sub_217F2AD08()
{
  result = qword_27CBF72C0;
  if (!qword_27CBF72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF72C0);
  }

  return result;
}

unint64_t sub_217F2AD60()
{
  result = qword_27CBF72C8;
  if (!qword_27CBF72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF72C8);
  }

  return result;
}

unint64_t sub_217F2ADB8()
{
  result = qword_27CBF72D0;
  if (!qword_27CBF72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF72D0);
  }

  return result;
}

unint64_t sub_217F2AE10()
{
  result = qword_27CBF72D8;
  if (!qword_27CBF72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF72D8);
  }

  return result;
}

unint64_t sub_217F2AE68()
{
  result = qword_27CBF72E0;
  if (!qword_27CBF72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF72E0);
  }

  return result;
}

unint64_t sub_217F2AEC0()
{
  result = qword_27CBF72E8;
  if (!qword_27CBF72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF72E8);
  }

  return result;
}

unint64_t sub_217F2AF18()
{
  result = qword_27CBF72F0;
  if (!qword_27CBF72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF72F0);
  }

  return result;
}

unint64_t sub_217F2AF70()
{
  result = qword_27CBF72F8;
  if (!qword_27CBF72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF72F8);
  }

  return result;
}

unint64_t sub_217F2AFC8()
{
  result = qword_280C27820;
  if (!qword_280C27820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27820);
  }

  return result;
}

unint64_t sub_217F2B020()
{
  result = qword_280C27828;
  if (!qword_280C27828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27828);
  }

  return result;
}

unint64_t sub_217F2B078()
{
  result = qword_280C27808;
  if (!qword_280C27808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27808);
  }

  return result;
}

unint64_t sub_217F2B0D0()
{
  result = qword_280C27810;
  if (!qword_280C27810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27810);
  }

  return result;
}

unint64_t sub_217F2B128()
{
  result = qword_280C27838;
  if (!qword_280C27838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27838);
  }

  return result;
}

unint64_t sub_217F2B180()
{
  result = qword_280C27840;
  if (!qword_280C27840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27840);
  }

  return result;
}

unint64_t sub_217F2B1D8()
{
  result = qword_280C277C0;
  if (!qword_280C277C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277C0);
  }

  return result;
}

unint64_t sub_217F2B230()
{
  result = qword_280C277C8;
  if (!qword_280C277C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277C8);
  }

  return result;
}

unint64_t sub_217F2B288()
{
  result = qword_280C277F0;
  if (!qword_280C277F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277F0);
  }

  return result;
}

unint64_t sub_217F2B2E0()
{
  result = qword_280C277F8;
  if (!qword_280C277F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277F8);
  }

  return result;
}

unint64_t sub_217F2B338()
{
  result = qword_280C277D8;
  if (!qword_280C277D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277D8);
  }

  return result;
}

unint64_t sub_217F2B390()
{
  result = qword_280C277E0;
  if (!qword_280C277E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277E0);
  }

  return result;
}

unint64_t sub_217F2B3E8()
{
  result = qword_280C27868;
  if (!qword_280C27868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27868);
  }

  return result;
}

unint64_t sub_217F2B440()
{
  result = qword_280C27870;
  if (!qword_280C27870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27870);
  }

  return result;
}

unint64_t sub_217F2B498()
{
  result = qword_280C277A8;
  if (!qword_280C277A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277A8);
  }

  return result;
}

unint64_t sub_217F2B4F0()
{
  result = qword_280C277B0;
  if (!qword_280C277B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277B0);
  }

  return result;
}

unint64_t sub_217F2B548()
{
  result = qword_280C27850;
  if (!qword_280C27850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27850);
  }

  return result;
}

unint64_t sub_217F2B5A0()
{
  result = qword_280C27858;
  if (!qword_280C27858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27858);
  }

  return result;
}

double sub_217F2B688(uint64_t a1)
{
  *(a1 + 432) = 0;
  result = 0.0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_217F2B6CC(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_217F2B714(uint64_t a1, char a2)
{
  if (a2)
  {
    return *(v2 + 112);
  }

  else
  {
    return sub_217ED8374(*(v2 + 112), a1);
  }
}

uint64_t sub_217F2B770(uint64_t a1, char a2)
{
  if (a2)
  {
    return *(v2 + 216);
  }

  else
  {
    return sub_217ED8374(*(v2 + 216), a1);
  }
}

uint64_t sub_217F2B7C8(uint64_t a1, char a2)
{
  if (a2)
  {
    return *(v2 + 264);
  }

  else
  {
    return sub_217ED8374(*(v2 + 264), a1);
  }
}

uint64_t objectdestroy_78Tm()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_217F2B89C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_217F2B908(uint64_t a1, char a2)
{
  if (a2)
  {
    return *(v2 + 168);
  }

  else
  {
    return sub_217ED8374(*(v2 + 168), a1);
  }
}

uint64_t sub_217F2B960(uint64_t a1, char a2)
{
  if (a2)
  {
    return *(v2 + 16);
  }

  else
  {
    return sub_217ED8374(*(v2 + 16), a1);
  }
}

uint64_t objectdestroy_81Tm()
{

  return MEMORY[0x2821FE8E8](v0, 450, 7);
}

uint64_t sub_217F2BA0C(uint64_t a1, char a2)
{
  if (a2)
  {
    return *(v2 + 64);
  }

  else
  {
    return sub_217ED8374(*(v2 + 64), a1);
  }
}

uint64_t sub_217F2BA80(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_217F2BA94(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_217F4B144() & 1;
  }
}

uint64_t sub_217F2BB04(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3 || a4 == 5 || a4 == 4)
  {
  }

  return v4;
}

uint64_t sub_217F2BB34(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3 || a4 == 5 || a4 == 4)
  {
  }

  return v4;
}

unint64_t sub_217F2BB74()
{
  result = qword_280C27790;
  if (!qword_280C27790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27790);
  }

  return result;
}

uint64_t sub_217F2BC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 5)
  {
  }

  return result;
}

uint64_t sub_217F2BC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 5)
  {
  }

  return result;
}

uint64_t sub_217F2BC84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s14descr2829CD401O24BundleArticleQuotaResultOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O24BundleArticleQuotaResultOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_217F2BE38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217F2BE80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217F2BEDC()
{
  result = qword_27CBF7330;
  if (!qword_27CBF7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7330);
  }

  return result;
}

uint64_t ClassicAggregateContextType.lookupBaseline(with:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_217F4AD74();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v17 - v13;
  v17 = *a1;
  v18 = 0;
  sub_217F2C3F4(&v17, a2, a3, &v19);
  v17 = v19;
  AggregateContextType.lookup(identifier:option:)(12390, 0xE200000000000000, &v17, a2, v8);
  sub_217F2C550(v17, *(&v17 + 1));
  v15 = *(AssociatedTypeWitness - 8);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v15 + 32))(a4, v14, AssociatedTypeWitness);
  }

  (*(v11 + 8))(v14, v10);
  result = sub_217F4AE94();
  __break(1u);
  return result;
}

void sub_217F2C3F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](a1, a2);
  if (v10[2])
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v15 = *v10;
    v14 = v10[1];
    (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2, v11);
    v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    (*(v8 + 32))(v13 + v16, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
    v17 = (v13 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v17 = v15;
    v17[1] = v14;
    v12 = sub_217F2DEF8;
  }

  *a4 = v12;
  a4[1] = v13;
}

uint64_t sub_217F2C550(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t ClassicAggregateContextType.updateBaseline(with:updateBlock:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = sub_217E97288(&unk_2829CE3F8);
  sub_217E97320(&unk_2829CE418);
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v15 = 0;
  sub_217F2C3F4(&v14, a4, a5, &v16);
  v14 = v16;
  (*(*(a5 + 8) + 56))(v11, &v14, a2, a3, a4);

  v12 = v14;

  return sub_217F2C550(v12, *(&v12 + 1));
}

uint64_t ClassicAggregateContextType.update(with:using:updateBlock:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *a2;
  v14 = 0;
  sub_217F2C3F4(&v13, a5, a6, &v15);
  v13 = v15;
  (*(*(a6 + 8) + 56))(a1, &v13, a3, a4, a5);
  v11 = v13;

  return sub_217F2C550(v11, *(&v11 + 1));
}

uint64_t ClassicAggregateContextType.lookup(with:using:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  v10 = *a2;
  v11 = v7;
  sub_217F2C3F4(&v10, a3, a4, &v12);
  v10 = v12;
  v8 = (*(*(a4 + 8) + 48))(a1, &v10, a3);
  sub_217F2C550(v10, *(&v10 + 1));
  return v8;
}

uint64_t ClassicAggregateContextType.lookupBaseline(and:baselinePrior:featurePrior:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a4;
  v10 = a4[1];
  v11 = *(a4 + 16);
  v13 = *a3;
  ClassicAggregateContextType.lookupBaseline(with:)(&v13, a5, a6, a1);
  *&v13 = v9;
  *(&v13 + 1) = v10;
  v14 = v11;
  return ClassicAggregateContextType.lookup(with:using:)(a2, &v13, a5, a6);
}

uint64_t ClassicAggregateContextType.validate(features:publisherTopicMinimumEventCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v41 = MEMORY[0x277D84F90];
    sub_217EA0864(0, v6, 0);
    v7 = v41;
    v8 = (a1 + 40);
    v9 = v6;
    do
    {
      v11 = *(v8 - 1);
      v10 = *v8;

      v41 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_217EA0864((v12 > 1), v13 + 1, 1);
        v7 = v41;
      }

      v8 += 7;
      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      --v9;
    }

    while (v9);
  }

  v15 = sub_217E97288(v7);

  v41 = 0;
  v42 = 0;
  v39 = (*(*(a4 + 8) + 48))(v15, &v41, a3);

  if (v6)
  {
    v16 = (a1 + 80);
    v17 = MEMORY[0x277D84F90];
    v35 = a4;
    do
    {
      v18 = *(v16 - 2);
      v19 = *(v16 - 1);
      v20 = *(v16 - 4);
      v21 = *(v16 - 3);
      v22 = *(v16 - 5);
      v41 = *(v16 - 6);
      v42 = v22;
      v43 = v20;
      v44 = v21;
      v45 = v18;
      v46 = v19;
      v47 = *v16;
      sub_217E81030(v41, v22, v20, v21, v18, v19, v47);
      v23 = sub_217F2CAAC(&v41, v39, a2, a3, a4);
      v24 = v41;
      v25 = v42;
      v26 = v43;
      v27 = v44;
      v28 = v45;
      if (v23)
      {
        v36 = v46;
        v37 = v47;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_217EA0D80(0, *(v17 + 16) + 1, 1);
          v17 = v48;
        }

        v31 = *(v17 + 16);
        v30 = *(v17 + 24);
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          sub_217EA0D80((v30 > 1), v31 + 1, 1);
          v32 = v31 + 1;
          v17 = v48;
        }

        *(v17 + 16) = v32;
        v33 = v17 + 56 * v31;
        *(v33 + 32) = v24;
        *(v33 + 40) = v25;
        *(v33 + 48) = v26;
        *(v33 + 56) = v27;
        a4 = v35;
        *(v33 + 64) = v28;
        *(v33 + 72) = v36;
        *(v33 + 80) = v37;
      }

      else
      {
        sub_217E810D0(v41, v42, v43, v44, v45, v46, v47);
      }

      v16 += 56;
      --v6;
    }

    while (v6);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  return v17;
}

BOOL sub_217F2CAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_217F4AD74();
  MEMORY[0x28223BE20](v9, v10);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v39 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v16, v17);
  v24 = MEMORY[0x28223BE20](v18, v19);
  v26 = &v39 - v25;
  if (*(a1 + 48) != 3)
  {
    return 1;
  }

  v47 = v22;
  v48 = v21;
  v49 = v20;
  v50 = v5;
  v27 = *(a1 + 40);
  v45 = *(a1 + 32);
  v43 = v23;
  v44 = v27;
  v28 = *(a1 + 16);
  v29 = *(a1 + 24);
  v51 = 2831206;
  v52 = 0xE300000000000000;
  MEMORY[0x21CEAEAC0](v28, v29, v24);
  v46 = a2;
  sub_217F4AAC4();

  v30 = *(v15 + 48);
  if (v30(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v48 + 8))(v14, v49);
    return 0;
  }

  v41 = *(v15 + 32);
  v42 = v30;
  v41(v26, v14, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = *(AssociatedConformanceWitness + 32);
  v34 = v33(AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v53 >= 1 && v34 < v53)
  {
    (*(v15 + 8))(v26, AssociatedTypeWitness);
    return 0;
  }

  v40 = v33;
  v51 = 2831206;
  v52 = 0xE300000000000000;
  MEMORY[0x21CEAEAC0](v45, v44);
  v35 = v47;
  sub_217F4AAC4();

  if (v42(v35, 1, AssociatedTypeWitness) == 1)
  {
    (*(v15 + 8))(v26, AssociatedTypeWitness);
    (*(v48 + 8))(v35, v49);
    return 0;
  }

  else
  {
    v36 = v43;
    v41(v43, v35, AssociatedTypeWitness);
    v37 = v40(AssociatedTypeWitness, AssociatedConformanceWitness);
    v38 = *(v15 + 8);
    v38(v36, AssociatedTypeWitness);
    v38(v26, AssociatedTypeWitness);
    result = 1;
    if (v53 >= 1)
    {
      return v37 >= v53;
    }
  }

  return result;
}

uint64_t AggregateContext.createAggregate(for:clicks:impressions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  type metadata accessor for Aggregate(0);
  sub_217F4A9E4();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = 0;
}

uint64_t sub_217F2CF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  type metadata accessor for Aggregate(0);
  sub_217F4A9E4();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = 0;
}

uint64_t ClassicAggregateContext.baseline.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1;
  v9 = v1;
  (*(v1 + *(v3 + 104)))(&v8);
  v7 = v8;
  WitnessTable = swift_getWitnessTable();
  return ClassicAggregateContextType.lookupBaseline(with:)(&v7, v4, WitnessTable, a1);
}

uint64_t ClassicAggregateContext.featurePrior.getter()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v4);
  v6 = &v13 - v5;
  v7 = *(v0 + *(v1 + 112));
  ClassicAggregateContext.baseline.getter(&v13 - v5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ReadonlyAggregateType.personalizationValue.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  v10 = v9;
  v11 = (*(v3 + 8))(v6, AssociatedTypeWitness);
  return v7(v11, v10);
}

double ClassicAggregateContext.priors.getter@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + *(*v1 + 104)))(v8);
  v3 = *v8;
  v4 = *&v8[1];
  ClassicAggregateContext.featurePrior.getter();
  *&v6 = v3;
  *(&v6 + 1) = v4;
  sub_217EC668C(v3, v4);
  sub_217EC686C(*&v7, *(&v7 + 1));
  result = v3;
  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t ClassicAggregateContext.lookup(with:)(uint64_t a1)
{
  v17 = a1;
  v2 = *v1;
  v3 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v6);
  v8 = &v16 - v7;
  v21 = v1;
  v9 = *(v1 + *(v2 + 112));
  ClassicAggregateContext.baseline.getter(&v16 - v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ReadonlyAggregateType.personalizationValue.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  v12 = v11;
  v13 = (*(v5 + 8))(v8, AssociatedTypeWitness);
  v9(&v20, v13, v12);
  v18 = v20;
  v19 = 0;
  WitnessTable = swift_getWitnessTable();
  return ClassicAggregateContextType.lookup(with:using:)(v17, &v18, v3, WitnessTable);
}

uint64_t ClassicAggregateContext.lookup(identifier:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217F4BC20;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v5 = sub_217F2DCD4(inited);
  swift_setDeallocating();
  sub_217E97320(inited + 32);
  ClassicAggregateContext.lookup(with:)(v5);

  swift_getAssociatedTypeWitness();

  sub_217F4AAC4();
}

uint64_t ClassicAggregateContext.__allocating_init(context:baselinePriorProvider:featurePriorProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  (*(*(*(*v10 + 80) - 8) + 32))(v10 + *(*v10 + 96), a1);
  v11 = (v10 + *(*v10 + 104));
  *v11 = a2;
  v11[1] = a3;
  v12 = (v10 + *(*v10 + 112));
  *v12 = a4;
  v12[1] = a5;
  return v10;
}

uint64_t ClassicAggregateContext.lookup(with:option:)(uint64_t a1, __int128 *a2)
{
  v3 = *v2;
  v5 = *a2;
  return (*(*(*(v3 + 88) + 8) + 48))(a1, &v5, *(v3 + 80));
}

uint64_t ClassicAggregateContext.update(with:option:updateBlock:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v7 = *a2;
  return (*(*(*(v5 + 88) + 8) + 56))(a1, &v7, a3, a4, *(v5 + 80));
}

uint64_t ClassicAggregateContext.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t ClassicAggregateContext.__deallocating_deinit()
{
  ClassicAggregateContext.deinit();

  return swift_deallocClassInstance();
}

Swift::Double __swiftcall ClassicAggregateContext.decayedPublisherDiversificationPenalty(initialValue:finalValue:halfLife:)(Swift::Double initialValue, Swift::Double finalValue, Swift::Double halfLife)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v10 = &v14 - v9;
  if (halfLife != 0.0)
  {
    ClassicAggregateContext.baseline.getter(&v14 - v9);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v7 + 8))(v10, AssociatedTypeWitness);
    return (initialValue - finalValue) / exp2(v12) / halfLife + finalValue;
  }

  return finalValue;
}

uint64_t sub_217F2DCD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D28, &qword_217F520D8);
    v3 = sub_217F4ADC4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_217F4B224();

      sub_217F4AB24();
      result = sub_217F4B254();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_217F4B144();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_217F2DE3C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_217F2DF90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v41 = MEMORY[0x277D84F90];
    sub_217EA0CA0(0, v1, 0);
    v3 = v41;
    v4 = a1 + 64;
    v5 = sub_217F4AD84();
    if (v5 < 0 || (v6 = v5, v5 >= 1 << *(a1 + 32)))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      v7 = *(a1 + 36);
      v25 = v1;
      v8 = 1;
      v26 = v7;
      while (1)
      {
        v9 = v6 >> 6;
        if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          break;
        }

        if (v7 != *(a1 + 36))
        {
          goto LABEL_26;
        }

        v27 = v8;
        v10 = (*(a1 + 56) + (v6 << 6));
        v30 = *v10;
        v31 = v10[1];
        *v32 = v10[2];
        *&v32[9] = *(v10 + 41);
        v11 = (*(a1 + 48) + 16 * v6);
        v12 = v11[1];
        v28 = *v10;
        *v29 = v10[2];
        *&v29[9] = *&v32[9];
        v33[0] = *v11;
        v13 = v33[0];
        v33[1] = v12;
        v34 = v30;
        v35 = v31;
        v36[0] = *v32;
        *(v36 + 9) = *&v32[9];
        swift_bridgeObjectRetain_n();
        sub_217F3ADC4(v33, &qword_27CBF73C8, &qword_217F5A2C8);
        v37[0] = v13;
        v37[1] = v12;
        v38 = v28;
        v39 = v31;
        v40[0] = *v29;
        *(v40 + 9) = *&v32[9];
        sub_217F3ADC4(v37, &qword_27CBF73C8, &qword_217F5A2C8);
        v41 = v3;
        v15 = *(v3 + 16);
        v14 = *(v3 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_217EA0CA0((v14 > 1), v15 + 1, 1);
          v3 = v41;
        }

        v16 = *&v40[0];
        *(v3 + 16) = v15 + 1;
        *(v3 + 8 * v15 + 32) = v16;
        v17 = 1 << *(a1 + 32);
        if (v6 >= v17)
        {
          goto LABEL_27;
        }

        v4 = a1 + 64;
        v18 = *(a1 + 64 + 8 * v9);
        if ((v18 & (1 << v6)) == 0)
        {
          goto LABEL_28;
        }

        v7 = v26;
        if (v26 != *(a1 + 36))
        {
          goto LABEL_29;
        }

        v19 = v18 & (-2 << (v6 & 0x3F));
        if (v19)
        {
          v6 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v9 << 6;
          v21 = v9 + 1;
          v22 = (a1 + 72 + 8 * v9);
          while (v21 < (v17 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              sub_217F3AB3C(v6, v26, 0);
              v6 = __clz(__rbit64(v23)) + v20;
              goto LABEL_19;
            }
          }

          sub_217F3AB3C(v6, v26, 0);
          v6 = v17;
        }

LABEL_19:
        if (v27 == v25)
        {
          return;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          v8 = v27 + 1;
          if (v6 < 1 << *(a1 + 32))
          {
            continue;
          }
        }

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_217F2E298(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v41 = MEMORY[0x277D84F90];
    sub_217EA0CA0(0, v1, 0);
    v3 = v41;
    v4 = a1 + 64;
    v5 = sub_217F4AD84();
    if (v5 < 0 || (v6 = v5, v5 >= 1 << *(a1 + 32)))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      v7 = *(a1 + 36);
      v25 = v1;
      v8 = 1;
      v26 = v7;
      while (1)
      {
        v9 = v6 >> 6;
        if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          break;
        }

        if (v7 != *(a1 + 36))
        {
          goto LABEL_26;
        }

        v27 = v8;
        v10 = (*(a1 + 56) + (v6 << 6));
        v30 = *v10;
        v31 = v10[1];
        *v32 = v10[2];
        *&v32[9] = *(v10 + 41);
        v11 = (*(a1 + 48) + 16 * v6);
        v12 = v11[1];
        v28 = *v10;
        *v29 = v10[2];
        *&v29[9] = *&v32[9];
        v33[0] = *v11;
        v13 = v33[0];
        v33[1] = v12;
        v34 = v30;
        v35 = v31;
        v36[0] = *v32;
        *(v36 + 9) = *&v32[9];
        swift_bridgeObjectRetain_n();
        sub_217F3ADC4(v33, &qword_27CBF73C8, &qword_217F5A2C8);
        v37[0] = v13;
        v37[1] = v12;
        v38 = v28;
        v39 = v31;
        v40[0] = *v29;
        *(v40 + 9) = *&v32[9];
        sub_217F3ADC4(v37, &qword_27CBF73C8, &qword_217F5A2C8);
        v41 = v3;
        v15 = *(v3 + 16);
        v14 = *(v3 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_217EA0CA0((v14 > 1), v15 + 1, 1);
          v3 = v41;
        }

        v16 = *(&v38 + 1);
        *(v3 + 16) = v15 + 1;
        *(v3 + 8 * v15 + 32) = v16;
        v17 = 1 << *(a1 + 32);
        if (v6 >= v17)
        {
          goto LABEL_27;
        }

        v4 = a1 + 64;
        v18 = *(a1 + 64 + 8 * v9);
        if ((v18 & (1 << v6)) == 0)
        {
          goto LABEL_28;
        }

        v7 = v26;
        if (v26 != *(a1 + 36))
        {
          goto LABEL_29;
        }

        v19 = v18 & (-2 << (v6 & 0x3F));
        if (v19)
        {
          v6 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v9 << 6;
          v21 = v9 + 1;
          v22 = (a1 + 72 + 8 * v9);
          while (v21 < (v17 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              sub_217F3AB3C(v6, v26, 0);
              v6 = __clz(__rbit64(v23)) + v20;
              goto LABEL_19;
            }
          }

          sub_217F3AB3C(v6, v26, 0);
          v6 = v17;
        }

LABEL_19:
        if (v27 == v25)
        {
          return;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          v8 = v27 + 1;
          if (v6 < 1 << *(a1 + 32))
          {
            continue;
          }
        }

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_217F2E5A0(uint64_t a1, char **a2)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_8:
        v10 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
        v12 = *v10;
        v11 = v10[1];

        MEMORY[0x21CEAEAC0](v12, v11);
        v13 = *a2;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v13 = sub_217E8DE90(0, *(v13 + 2) + 1, 1, v13);
          *a2 = v13;
        }

        v16 = *(v13 + 2);
        v15 = *(v13 + 3);
        if (v16 >= v15 >> 1)
        {
          v13 = sub_217E8DE90((v15 > 1), v16 + 1, 1, v13);
          *a2 = v13;
        }

        v5 &= v5 - 1;
        *(v13 + 2) = v16 + 1;
        v17 = &v13[56 * v16];
        *(v17 + 4) = 2831206;
        *(v17 + 5) = 0xE300000000000000;
        *(v17 + 6) = v12;
        *(v17 + 7) = v11;
        *(v17 + 8) = 0;
        *(v17 + 9) = 0;
        v17[80] = 4;
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

void (*sub_217F2E770(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_217F2E804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, Swift::Double a9, uint64_t a10)
{
  v16 = *a7;
  v17 = *(a7 + 32);
  v18 = *(a7 + 72);
  v19 = *(a7 + 80);
  v20 = *(a7 + 88);
  v21 = *(a7 + 97);
  v48 = *(a7 + 98);
  v22 = a5[3];
  v23 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v22);
  v24 = (*(v23 + 24))(v22, v23);
  v50 = a1;
  LOBYTE(v22) = sub_217EA3608(a1, a2, v24);

  if (v22)
  {
    return 0;
  }

  v47 = v21;
  v26 = *(a3 + 16);
  if (v26)
  {
    v27 = (a3 + 40);
    v28 = MEMORY[0x277D84F90];
    do
    {
      if (*(a4 + 16))
      {
        v29 = *(v27 - 1);
        v30 = *v27;

        v31 = sub_217E8E88C(v29, v30);
        if (v32)
        {
          sub_217E844C0(*(a4 + 56) + 40 * v31, v51);

          sub_217F3AB48(v51, v52);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_217E8DD48(0, v28[2] + 1, 1, v28);
          }

          v34 = v28[2];
          v33 = v28[3];
          if (v34 >= v33 >> 1)
          {
            v28 = sub_217E8DD48((v33 > 1), v34 + 1, 1, v28);
          }

          v28[2] = v34 + 1;
          sub_217F3AB48(v52, &v28[5 * v34 + 4]);
        }

        else
        {
        }
      }

      v27 += 2;
      --v26;
    }

    while (v26);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  if (!v28[2])
  {

    return 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ReadonlyAggregateType.personalizationValue.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  v38 = v37;
  if (!v48)
  {
    v40 = sub_217E83714(a6, v28, AssociatedTypeWitness, AssociatedConformanceWitness, a9);

    v41 = a2;
    goto LABEL_24;
  }

  v39 = sub_217E835DC(a6, v28, AssociatedTypeWitness, AssociatedConformanceWitness, a9);

  v40 = v38 + v39;
  v41 = a2;
  if (v40 > 0.0)
  {
    v42 = 1.0;
    if (v40 > 1.0)
    {
      if (v38 < 1.0)
      {
        v40 = 1.0;
        if (v38 != 1.0)
        {
          goto LABEL_32;
        }

        goto LABEL_36;
      }

LABEL_35:
      v16 = v16 * pow(v42 / v38, v19);
      goto LABEL_36;
    }

LABEL_24:
    if (v40 > v38)
    {
      if (v38 != 1.0)
      {
        goto LABEL_32;
      }

      goto LABEL_36;
    }

    v42 = v40;
    if (v38 == 0.0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v38 >= 0.0)
  {
    if (v38 == 0.0)
    {
      goto LABEL_36;
    }

    v42 = 0.0;
    goto LABEL_35;
  }

  if (v38 != 1.0)
  {
    v40 = 0.0;
LABEL_32:
    v16 = 1.0 - (1.0 - v16) * pow((1.0 - v40) / (1.0 - v38), v18);
  }

LABEL_36:
  v43 = a5[3];
  v44 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v43);
  v45 = (*(v44 + 8))(v43, v44);
  v46 = sub_217EA3608(v50, v41, v45);

  if (v46)
  {
    if (v47)
    {
      v16 = 1.0 - pow(1.0 - v16, v17);
    }

    else
    {
      v16 = v20 + (1.0 - v20) * v16;
    }
  }

  return *&v16;
}

uint64_t sub_217F2EC1C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_217F194B0(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_217F2ED20(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_217E98274(v17))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(v1 + 48) + 96 * (v9 | (v8 << 6)));
    v11 = v10[1];
    v19[0] = *v10;
    v19[1] = v11;
    v13 = v10[3];
    v12 = v10[4];
    v14 = v10[2];
    *(v20 + 9) = *(v10 + 73);
    v19[3] = v13;
    v20[0] = v12;
    v19[2] = v14;
    sub_217E98218(v19, v17);
    sub_217F19600(v15, v19);
    v17[2] = v15[2];
    v17[3] = v15[3];
    v18[0] = v16[0];
    *(v18 + 9) = *(v16 + 9);
    v17[0] = v15[0];
    v17[1] = v15[1];
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_217F2EE6C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, double a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = *a8;
  v18 = *a10;
  v19 = *(a10 + 1);
  v20 = *(a10 + 2);
  v21 = a4[1];
  v37[0] = *a4;
  v37[1] = v21;
  v35 = v20;
  v36 = v17;
  v33[0] = v18;
  v34 = v19;
  v22 = MEMORY[0x277D84F90];
  v23 = sub_217ECBFEC(MEMORY[0x277D84F90]);
  v24 = sub_217ECBFEC(v22);
  v25 = sub_217ECBFEC(v22);
  v26 = sub_217ECC2C0(v22);
  v27 = sub_217F2EF98(a1, a2, a3, v37, a5, a6, a7, &v36, a9, v33, a11, a12, 0, v23, v24, v25, v26, a13, a14);

  return v27;
}

unint64_t sub_217F2EF98(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, double a9, unsigned __int8 *a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v163 = a8;
  v139 = a7;
  v143 = a2;
  v147 = a1;
  v151 = type metadata accessor for ClassicArticleData(0);
  v162 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v24);
  v152 = v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = *(a19 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v144 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v26);
  v28 = v123 - v27;
  v29 = *a4;
  v136 = a4[1];
  v145 = v29;
  memcpy(v176, a5, 0x3CBuLL);
  v30 = *a6;
  v178 = *(a6 + 16);
  v31 = *(a6 + 48);
  v179 = *(a6 + 32);
  v180 = v31;
  v181 = *(a6 + 64);
  v177 = v30;
  v140 = *v163;
  v141 = a18;
  v135 = *a10;
  v32 = *(a10 + 1);
  v33 = *(a10 + 2);
  v133 = a3;
  v134 = v33;
  v34 = v28;
  v170 = v145;
  v142 = a19;
  ClassicAggregateContextType.lookupBaseline(with:)(&v170, a18, a19, v28);
  if (qword_280C295F0 != -1)
  {
LABEL_36:
    swift_once();
  }

  v35 = qword_280C29458[0];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_217F4C8A0;
  *&v170 = *(v147 + 16);
  v38 = v170;
  v39 = sub_217F4B104();
  v41 = v40;
  v42 = MEMORY[0x277D837D0];
  *(v37 + 56) = MEMORY[0x277D837D0];
  v43 = sub_217E86438();
  *(v37 + 64) = v43;
  *(v37 + 32) = v39;
  *(v37 + 40) = v41;
  *&v170 = 0;
  *(&v170 + 1) = 0xE000000000000000;
  v44 = AssociatedTypeWitness;
  sub_217F4B124();
  v45 = v170;
  *(v37 + 96) = v42;
  *(v37 + 104) = v43;
  v130 = v43;
  *(v37 + 72) = v45;
  v46 = sub_217F4AD54();
  sub_217F4AA44("Xavier Headline Evaluator evaluating %{public}@ items with baseline %{public}@", 78, 2, &dword_217E7B000, v35, v46, v37);

  v150 = v38;
  if (v38)
  {
    v123[1] = v36;
    v124 = v35;
    v138 = v34;
    v47 = 0;
    v131 = a13;
    v129 = a17;
    v128 = a16;
    v127 = a15;
    v126 = a14;
    v137 = a12;
    v125 = a11;
    v48 = MEMORY[0x277D84F98];
    v149 = v147 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
    v148 = *(v162 + 72);
    v49 = v152;
    while (2)
    {
      sub_217E9D964(v149 + v148 * v47, v49);
      v34 = v47 + 1;
      v154 = v34;
      v52 = *(v49 + *(v151 + 92));

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v165 = v48;
      v54 = *(v52 + 64);
      v156 = v52 + 64;
      v55 = -1 << *(v52 + 32);
      if (-v55 < 64)
      {
        v56 = ~(-1 << -v55);
      }

      else
      {
        v56 = -1;
      }

      v162 = v52;
      v163 = (v56 & v54);
      v153 = v55;
      v155 = (63 - v55) >> 6;

      for (i = 0; ; i = v62)
      {
        v61 = v163;
        v62 = i;
        if (!v163)
        {
          v63 = i;
          while (1)
          {
            v62 = v63 + 1;
            if (__OFADD__(v63, 1))
            {
              break;
            }

            if (v62 >= v155)
            {
              v163 = 0;
              goto LABEL_5;
            }

            v61 = *(v156 + 8 * v62);
            ++v63;
            if (v61)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

LABEL_17:
        v64 = __clz(__rbit64(v61)) | (v62 << 6);
        v65 = (*(v162 + 48) + 16 * v64);
        v66 = *v65;
        v67 = v65[1];
        v68 = *(v162 + 56) + 80 * v64;
        v69 = *v68;
        v160 = *(v68 + 16);
        v161 = v69;
        v70 = *(v68 + 32);
        v158 = *(v68 + 48);
        v159 = v70;
        v157 = *(v68 + 64);
        v71 = *(v68 + 76);
        v34 = *(v68 + 72);

        if (!v67)
        {
          break;
        }

        v72 = sub_217E8E88C(v66, v67);
        v74 = v48[2];
        v75 = (v73 & 1) == 0;
        v76 = __OFADD__(v74, v75);
        v77 = v74 + v75;
        if (v76)
        {
          goto LABEL_34;
        }

        v78 = v73;
        if (v48[3] >= v77)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v163 = v72;
            sub_217E90238();
            v72 = v163;
          }
        }

        else
        {
          sub_217E935A4(v77, isUniquelyReferenced_nonNull_native & 1);
          v72 = sub_217E8E88C(v66, v67);
          if ((v78 & 1) != (v79 & 1))
          {
            result = sub_217F4B1C4();
            __break(1u);
            return result;
          }
        }

        v163 = ((v61 - 1) & v61);
        if (v78)
        {
          v48 = v165;
          v58 = 80 * v72;
          v59 = (*(v165 + 56) + 80 * v72);
          v171 = v59[1];
          v172 = v59[2];
          v173[0] = v59[3];
          *(v173 + 14) = *(v59 + 62);
          v170 = *v59;

          v60 = (v48[7] + v58);
          v60[1] = v171;
          v60[2] = v172;
          v60[3] = v173[0];
          *(v60 + 62) = *(v173 + 14);
          *v60 = v170;
        }

        else
        {
          v48 = v165;
          *(v165 + 8 * (v72 >> 6) + 64) |= 1 << v72;
          v80 = (v48[6] + 16 * v72);
          *v80 = v66;
          v80[1] = v67;
          v81 = v48[7] + 80 * v72;
          v82 = v160;
          *v81 = v161;
          *(v81 + 16) = v82;
          v83 = v158;
          *(v81 + 32) = v159;
          *(v81 + 48) = v83;
          *(v81 + 64) = v157;
          *(v81 + 76) = (v34 | (v71 << 32)) >> 32;
          *(v81 + 72) = v34;
          v84 = v48[2];
          v76 = __OFADD__(v84, 1);
          v85 = v84 + 1;
          if (v76)
          {
            goto LABEL_35;
          }

          v48[2] = v85;
        }

        isUniquelyReferenced_nonNull_native = 1;
      }

LABEL_5:
      sub_217E7F7A0(v162);

      v49 = v152;
      v50 = sub_217E9D9C8(v152);
      v47 = v154;
      if (v154 != v150)
      {
        continue;
      }

      break;
    }

    MEMORY[0x28223BE20](v50, v51);
    v86 = v143;
    v121 = v143;
    v87 = sub_217ECCBCC(MEMORY[0x277D84FA0], sub_217F38280, v120, v48);
    v162 = 0;
    v163 = v87;

    v174[4] = v176[33];
    v174[5] = v176[34];
    v174[0] = v176[29];
    v174[1] = v176[30];
    v174[2] = v176[31];
    v174[3] = v176[32];
    v170 = v176[24];
    v171 = v176[25];
    v172 = v176[26];
    v175 = *&v176[35];
    v173[0] = v176[27];
    v173[1] = v176[28];
    v88 = v147;
    v89 = v133;
    v91 = v141;
    v90 = v142;
    v92 = sub_217F2FE14(v147, v133, &v170, v141, v142);
    v171 = v178;
    v172 = v179;
    v173[0] = v180;
    *&v173[1] = v181;
    v170 = v177;
    v93 = sub_217F381C0(v89, &v170, v91, v90);
    v94 = AssociatedTypeWitness;
    *(&v166 + 1) = AssociatedTypeWitness;
    *&v167 = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v165);
    v96 = v138;
    (*(v144 + 16))(boxed_opaque_existential_1, v138, v94);
    v170 = v176[8];
    v171 = v176[9];
    v172 = v176[10];
    v97 = sub_217F30800(v93, &v165, &v170, v91, v90, a9);
    __swift_destroy_boxed_opaque_existential_1(&v165);
    v173[0] = *(&v176[57] + 8);
    v173[1] = *(&v176[58] + 8);
    v174[0] = *(&v176[59] + 8);
    *(v174 + 15) = *(&v176[60] + 7);
    v170 = *(&v176[54] + 8);
    v171 = *(&v176[55] + 8);
    v172 = *(&v176[56] + 8);
    v167 = v179;
    v168 = v180;
    v169 = v181;
    v165 = v177;
    v166 = v178;
    v164 = v140;
    v98 = v96;
    v99 = v139;
    v100 = sub_217F3092C(v88, v93, v86, v98, &v170, &v165, v139, &v164, a9, v137, v91, v90);
    if (v176[4] & 1) != 0 && (v131)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF7338, &qword_217F5A258);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_217F591E0;
      v102 = *(&v176[4] + 1);
      *(v101 + 48) = *(&v176[3] + 1);
      *(v101 + 72) = v102;
      v103 = *(&v176[5] + 1);
      *(v101 + 96) = *&v176[5];
      v104 = *&v176[6];
      *(v101 + 120) = *(&v176[6] + 1);
      *(v101 + 144) = *&v176[7];
      *(v101 + 168) = v103;
      *(v101 + 32) = 0xD000000000000025;
      *(v101 + 40) = 0x8000000217F5F2F0;
      *(v101 + 56) = 0xD000000000000032;
      *(v101 + 64) = 0x8000000217F5F350;
      *(v101 + 80) = 0xD00000000000003ALL;
      *(v101 + 88) = 0x8000000217F5F390;
      *(v101 + 104) = 0xD000000000000033;
      *(v101 + 112) = 0x8000000217F5F430;
      *(v101 + 128) = 0xD00000000000002DLL;
      *(v101 + 136) = 0x8000000217F5F470;
      *(v101 + 152) = 0xD000000000000029;
      *(v101 + 160) = 0x8000000217F5F3D0;
      *(v101 + 176) = 0xD000000000000029;
      *(v101 + 184) = 0x8000000217F5F400;
      *(v101 + 192) = v104;
      sub_217ECBFEC(v101);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CBF7340, &qword_217F5A260);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_217F4BC20;
      v106 = MEMORY[0x277D837D0];
      v107 = sub_217F4AA74();
      v109 = v108;

      v110 = v130;
      *(v105 + 56) = v106;
      *(v105 + 64) = v110;
      *(v105 + 32) = v107;
      *(v105 + 40) = v109;
      v111 = sub_217F4AD54();
      sub_217F4AA44("Evaluating headlines with client side engagement boost configurations %{public}@", 80, 2, &dword_217E7B000, v124, v111, v105);
      v99 = v139;
    }

    sub_217ECC0F0(MEMORY[0x277D84F90]);

    MEMORY[0x28223BE20](v112, v113);
    v114 = v142;
    v123[-28] = v141;
    v123[-27] = v114;
    v123[-26] = v143;
    v123[-25] = v93;
    v115 = v136;
    *&v123[-24] = v145;
    *&v123[-22] = v115;
    v116 = v138;
    v123[-20] = v138;
    v123[-19] = v176;
    v123[-18] = &v177;
    v123[-17] = v99;
    v123[-16] = v140;
    LOBYTE(v123[-15]) = v135;
    v123[-14] = v32;
    v123[-13] = v134;
    *&v123[-12] = a9;
    v117 = v137;
    v123[-11] = v125;
    v123[-10] = v117;
    v123[-9] = v92;
    v123[-8] = v97;
    v123[-7] = v163;
    v123[-6] = v100;
    LOBYTE(v123[-5]) = v131 & 1;
    v120[0] = v126;
    v120[1] = v127;
    v121 = v128;
    v122 = v129;
    v118 = sub_217ED1764(MEMORY[0x277D84F98], sub_217F3829C, &v123[-30], v147);
    v34 = v116;

    v44 = AssociatedTypeWitness;
  }

  else
  {
    v118 = sub_217ECC0F0(MEMORY[0x277D84F90]);
  }

  (*(v144 + 8))(v34, v44);
  return v118;
}

uint64_t sub_217F2FBA8(uint64_t a1, _OWORD *a2, void *a3)
{
  *&v22[14] = *(a2 + 78);
  v4 = a2[3];
  v21[2] = a2[2];
  v21[3] = v4;
  *v22 = a2[4];
  v5 = a2[1];
  v21[0] = *a2;
  v21[1] = v5;
  v6 = v21[0];
  if (v22[28] == 1)
  {
    v23 = v22[27];
    v7 = a3[3];
    v8 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v7);
    v9 = *(v8 + 8);
    sub_217F3AD5C(v21, &v20, &qword_27CBF5D30, &unk_217F5A2F0);
    v10 = v9(v7, v8);
    v11 = sub_217EA3608(v6, *(&v6 + 1), v10);

    if ((v22[29] & 1) == 0)
    {
      if ((v23 | v11))
      {
        goto LABEL_13;
      }

      return sub_217F3ADC4(v21, &qword_27CBF5D30, &unk_217F5A2F0);
    }

LABEL_7:
    v12 = a3[3];
    v13 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v12);
    v14 = (*(v13 + 16))(v12, v13);
    LOBYTE(v12) = sub_217EA3608(v6, *(&v6 + 1), v14);

    if (v12)
    {
      goto LABEL_13;
    }

    v15 = a3[3];
    v16 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v15);
    v17 = (*(v16 + 40))(v15, v16);
    v18 = sub_217EA3608(v6, *(&v6 + 1), v17);

    if ((v23 | v11) & 1) != 0 || (v18)
    {
      goto LABEL_13;
    }

    return sub_217F3ADC4(v21, &qword_27CBF5D30, &unk_217F5A2F0);
  }

  if (v22[29] == 1)
  {
    v23 = v22[27];
    sub_217F3AD5C(v21, &v20, &qword_27CBF5D30, &unk_217F5A2F0);
    v11 = 0;
    goto LABEL_7;
  }

  if ((v22[27] & 1) == 0)
  {
    return result;
  }

  sub_217F3AD5C(v21, &v20, &qword_27CBF5D30, &unk_217F5A2F0);
LABEL_13:
  sub_217F194B0(&v20, v6, *(&v6 + 1));
}

void *sub_217F2FE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ClassicArticleData(0);
  MEMORY[0x28223BE20](v10, v11);
  MEMORY[0x28223BE20](v12, v13);
  v18 = &v119 - v17;
  if (*(a3 + 104) <= 0.0 || *(a3 + 152) >= 1.0)
  {
    v20 = MEMORY[0x277D84F90];

    return sub_217ECBFEC(v20);
  }

  v22 = *(a3 + 24);
  v23 = *(a3 + 32);
  v24 = *(a3 + 40);
  v25 = *(a3 + 56);
  v27 = *(a3 + 72);
  v26 = *(a3 + 80);
  v28 = MEMORY[0x277D84FA0];
  v134 = MEMORY[0x277D84FA0];
  v29 = *(a1 + 16);
  v122 = a5;
  v121 = a4;
  v120 = a2;
  if (!v29)
  {
    i = MEMORY[0x277D84F98];
    v65 = MEMORY[0x277D84FA0];
    goto LABEL_34;
  }

  v119 = v25;
  v130 = v16;
  v30 = &v18[*(v14 + 56)];
  v31 = v14;
  v32 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v33 = *(v15 + 72);
  j = v32;
  v124 = v29;
  do
  {
    sub_217E9D964(v32, v18);
    v34 = *v30;
    v35 = v30[1];

    sub_217F194B0(&v132, v34, v35);

    sub_217F38150(v36);

    sub_217E9D9C8(v18);
    v32 += v33;
    --v29;
  }

  while (v29);
  v128 = v33;
  v37 = 0;
  v123 = v134;
  v127 = *(v31 + 64);
  v38 = MEMORY[0x277D84F98];
  v39 = v130;
  v126 = &v130[*(v31 + 56)];
  v125 = xmmword_217F4BC20;
  i = MEMORY[0x277D84F98];
  while (1)
  {
    sub_217E9D964(&j[v128 * v37], v39);
    v42 = *&v39[v127];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
    inited = swift_initStackObject();
    *(inited + 16) = v125;
    v44 = *(v126 + 1);
    *(inited + 32) = *v126;
    *(inited + 40) = v44;
    *&v132 = v42;

    sub_217E80630(inited);
    v45 = *(v132 + 16);
    v131 = v132;
    if (v45)
    {
      break;
    }

    v41 = v38;
LABEL_13:

    ++v37;
    v39 = v130;
    sub_217E9D9C8(v130);
    v38 = v41;
    if (v37 == v124)
    {
      v65 = v123;
      v28 = MEMORY[0x277D84FA0];
      v25 = v119;
LABEL_34:
      v66 = MEMORY[0x277D84F98];
      v132 = v25;
      v133 = v27;
      v130 = sub_217F30D2C(i, &v132);

      v134 = v28;
      v67 = v65 + 56;
      v68 = 1 << *(v65 + 32);
      v69 = -1;
      if (v68 < 64)
      {
        v69 = ~(-1 << v68);
      }

      v70 = v69 & *(v65 + 56);
      v71 = (v68 + 63) >> 6;
      v123 = v65;

      v72 = 0;
      while (v70)
      {
        v73 = v72;
LABEL_42:
        v74 = (*(v123 + 48) + ((v73 << 10) | (16 * __clz(__rbit64(v70)))));
        v75 = *v74;
        i = v74[1];
        v70 &= v70 - 1;
        *&v132 = 2831206;
        *(&v132 + 1) = 0xE300000000000000;

        MEMORY[0x21CEAEAC0](v75, i);
        sub_217F194B0(&v132, v132, *(&v132 + 1));
      }

      while (1)
      {
        v73 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          goto LABEL_82;
        }

        if (v73 >= v71)
        {
          v76 = v123;

          v132 = 0uLL;
          v77 = v122;
          v78 = v121;
          v79 = (*(*(v122 + 8) + 48))(v134, &v132, v121);

          v134 = v66;
          v80 = 1 << *(v76 + 32);
          v81 = -1;
          if (v80 < 64)
          {
            v81 = ~(-1 << v80);
          }

          v82 = v81 & *(v76 + 56);
          v83 = (v80 + 63) >> 6;

          v84 = 0;
          for (i = 0; v82; v84 = v85)
          {
            v85 = v84;
LABEL_51:
            v86 = (*(v76 + 48) + ((v85 << 10) | (16 * __clz(__rbit64(v82)))));
            v87 = v86[1];
            *&v132 = *v86;
            *(&v132 + 1) = v87;

            sub_217F31278(&v134, &v132, v79, v78, v77);
            v82 &= v82 - 1;
          }

          while (1)
          {
            v85 = v84 + 1;
            if (__OFADD__(v84, 1))
            {
              goto LABEL_83;
            }

            if (v85 >= v83)
            {

              *&v132 = v22;
              *(&v132 + 1) = v23;
              v133 = v24;
              v88 = sub_217F30D2C(v134, &v132);

              v89 = 1 << *(v76 + 32);
              v90 = -1;
              if (v89 < 64)
              {
                v90 = ~(-1 << v89);
              }

              v91 = v90 & *(v76 + 56);
              v92 = (v89 + 63) >> 6;

              v93 = 0;
              v94 = MEMORY[0x277D84F98];
              for (j = v88; ; v88 = j)
              {
                v95 = v130;
                if (!v91)
                {
                  break;
                }

                v131 = i;
                v96 = v93;
LABEL_64:
                v97 = (*(v76 + 48) + ((v96 << 10) | (16 * __clz(__rbit64(v91)))));
                i = *v97;
                v98 = v97[1];
                v99 = *(v130 + 2);

                v100 = 0.0;
                v101 = 0.0;
                if (v99)
                {
                  v102 = sub_217E8E88C(i, v98);
                  if (v103)
                  {
                    v101 = *(*(v95 + 7) + 8 * v102);
                  }
                }

                if (*(v88 + 2))
                {
                  v104 = sub_217E8E88C(i, v98);
                  if (v105)
                  {
                    v100 = *(*(v88 + 7) + 8 * v104);
                  }
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v132 = v94;
                v107 = sub_217E8E88C(i, v98);
                v109 = v94[2];
                v110 = (v108 & 1) == 0;
                v63 = __OFADD__(v109, v110);
                v111 = v109 + v110;
                if (v63)
                {
                  goto LABEL_85;
                }

                v112 = v108;
                if (v94[3] >= v111)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v118 = v107;
                    sub_217E8F918();
                    v107 = v118;
                  }
                }

                else
                {
                  sub_217E924FC(v111, isUniquelyReferenced_nonNull_native);
                  v107 = sub_217E8E88C(i, v98);
                  if ((v112 & 1) != (v113 & 1))
                  {
                    goto LABEL_87;
                  }
                }

                v91 &= v91 - 1;
                v114 = v26 * v101 + (1.0 - v26) * v100;
                v94 = v132;
                if (v112)
                {
                  *(*(v132 + 56) + 8 * v107) = v114;
                }

                else
                {
                  *(v132 + 8 * (v107 >> 6) + 64) |= 1 << v107;
                  v115 = (v94[6] + 16 * v107);
                  *v115 = i;
                  v115[1] = v98;
                  *(v94[7] + 8 * v107) = v114;
                  v116 = v94[2];
                  v63 = __OFADD__(v116, 1);
                  v117 = v116 + 1;
                  if (v63)
                  {
                    goto LABEL_86;
                  }

                  v94[2] = v117;
                }

                v93 = v96;
                v76 = v123;
                i = v131;
              }

              while (1)
              {
                v96 = v93 + 1;
                if (__OFADD__(v93, 1))
                {
                  goto LABEL_84;
                }

                if (v96 >= v92)
                {

                  return v94;
                }

                v91 = *(v67 + 8 * v96);
                ++v93;
                if (v91)
                {
                  v131 = i;
                  goto LABEL_64;
                }
              }
            }

            v82 = *(v67 + 8 * v85);
            ++v84;
            if (v82)
            {
              goto LABEL_51;
            }
          }
        }

        v70 = *(v67 + 8 * v73);
        ++v72;
        if (v70)
        {
          v72 = v73;
          goto LABEL_42;
        }
      }
    }
  }

  v46 = (v132 + 40);
  v41 = i;
  while (1)
  {
    v47 = *(v46 - 1);
    i = *v46;
    v48 = v41[2];

    v49 = 1.0;
    if (v48)
    {
      v50 = sub_217E8E88C(v47, i);
      if (v51)
      {
        v49 = *(v41[7] + 8 * v50) + 1.0;
      }
    }

    v52 = swift_isUniquelyReferenced_nonNull_native();
    *&v132 = v38;
    v54 = sub_217E8E88C(v47, i);
    v55 = v38[2];
    v56 = (v53 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      break;
    }

    v58 = v53;
    if (v38[3] >= v57)
    {
      if (v52)
      {
        v41 = v132;
        if (v53)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_217E8F918();
        v41 = v132;
        if (v58)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_217E924FC(v57, v52);
      v59 = sub_217E8E88C(v47, i);
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_87;
      }

      v54 = v59;
      v41 = v132;
      if (v58)
      {
LABEL_16:
        *(v41[7] + 8 * v54) = v49;

        goto LABEL_17;
      }
    }

    v41[(v54 >> 6) + 8] |= 1 << v54;
    v61 = (v41[6] + 16 * v54);
    *v61 = v47;
    v61[1] = i;
    *(v41[7] + 8 * v54) = v49;
    v62 = v41[2];
    v63 = __OFADD__(v62, 1);
    v64 = v62 + 1;
    if (v63)
    {
      goto LABEL_81;
    }

    v41[2] = v64;
LABEL_17:
    v46 += 2;
    i = v41;
    v38 = v41;
    if (!--v45)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  sub_217F4B1C4();
  __break(1u);
  MEMORY[0x21CEAF510](i);

  __break(1u);
  return result;
}

unint64_t sub_217F30800(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  if (*(a3 + 8) == 1.0 || *a3 == 0.0)
  {
    v17 = MEMORY[0x277D84F90];

    return sub_217ECBFEC(v17);
  }

  else
  {
    v10 = *(a3 + 16);
    v11 = a2[3];
    v12 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v11);
    ReadonlyAggregateType.personalizationValue.getter(v11, v12);
    v18[2] = a4;
    v18[3] = a5;
    v18[4] = a2;
    *&v18[5] = a6;
    v18[6] = MEMORY[0x28223BE20](v14, v15);
    *&v18[7] = v10;
    return sub_217ECCA70(MEMORY[0x277D84F98], sub_217F3AD30, v18, a1);
  }
}

uint64_t sub_217F3092C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t *a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = *(a5 + 80);
  v33[4] = *(a5 + 64);
  v34[0] = v18;
  *(v34 + 15) = *(a5 + 95);
  v19 = *(a5 + 16);
  v33[0] = *a5;
  v33[1] = v19;
  v20 = *(a5 + 48);
  v33[2] = *(a5 + 32);
  v33[3] = v20;
  v21 = *a6;
  v22 = a6[1];
  v23 = a6[2];
  v24 = a6[3];
  v32 = *(a6 + 8);
  v31[2] = v23;
  v31[3] = v24;
  v31[0] = v21;
  v31[1] = v22;
  v25 = *a8;
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D84F98];
  *(v26 + 16) = MEMORY[0x277D84F98];
  v30[2] = a11;
  v30[3] = a12;
  v30[4] = v26;
  v30[5] = v31;
  v30[6] = a7;
  v30[7] = v25;
  v30[8] = a2;
  v30[9] = a3;
  v30[10] = a4;
  v30[11] = v33;
  *&v30[12] = a9;
  v30[13] = a10;
  v28 = sub_217ED174C(v27, sub_217F3AC08, v30, a1);

  return v28;
}

uint64_t sub_217F30A54(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *__src, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double d5_0, double d6_0, double d7_0, uint64_t a14, char a15, uint64_t a16, double a17, uint64_t a18, double a19, uint64_t a20, void *a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *v74 = a9;
  *&v74[1] = a10;
  *&v74[2] = a11;
  *&v74[3] = a12;
  memcpy(__dst, __src, 0x3CBuLL);
  v32 = *(a7 + 48);
  v71[2] = *(a7 + 32);
  v71[3] = v32;
  v72 = *(a7 + 64);
  v33 = *(a7 + 16);
  v71[0] = *a7;
  v71[1] = v33;
  v69 = a16;
  v70 = a14;
  v67[0] = a15;
  v68 = a13;
  v35 = *(a2 + 8);
  v34 = *(a2 + 16);
  if (*(a22 + 16) && (v36 = sub_217E8E88C(*(a2 + 8), *(a2 + 16)), (v37 & 1) != 0))
  {
    v61 = *(*(a22 + 56) + 8 * v36);
  }

  else
  {
    v61 = sub_217ECC4E0(MEMORY[0x277D84F90]);
  }

  if (*(a24 + 16) && (v38 = sub_217E8E88C(v35, v34), (v39 & 1) != 0))
  {
    v59 = 0;
    v60 = *(*(a24 + 56) + 8 * v38);
  }

  else
  {
    v60 = 0.0;
    v59 = 1;
  }

  v40 = type metadata accessor for ClassicArticleData(0);
  v48 = 1.0;
  if (*(a26 + 16))
  {
    v49 = sub_217E8E88C(*(a2 + *(v40 + 56)), *(a2 + *(v40 + 56) + 8));
    if (v50)
    {
      v48 = *(*(a26 + 56) + 8 * v49);
    }
  }

  v51 = a19;
  v52 = a17;
  if (*(a27 + 16))
  {
    v53 = sub_217E8E88C(v35, v34);
    if (v54)
    {
      v55 = *(*(a27 + 56) + 8 * v53);
    }

    else
    {
      v55 = 0;
    }

    v51 = a19;
    v52 = a17;
  }

  else
  {
    v55 = 0;
  }

  v56 = sub_217F38910(a3, a4, a2, v48, v74, a5, __dst, v71, a8, v41, v42, v43, v44, v45, v46, v47, &v70, v67, v52, v51, a20, a21, v61, a23 & 1, v60, v59, a25, v55, a28, a29);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  __dst[0] = *a1;
  result = sub_217F1A318(v56, a2, isUniquelyReferenced_nonNull_native);
  *a1 = __dst[0];
  return result;
}

char *sub_217F30D2C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84FA0];
  if (v10)
  {
    while (1)
    {
      v14 = v12;
LABEL_9:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = v15 | (v14 << 6);
      v2 = *(*(a1 + 48) + 16 * v16 + 8);
      v17 = *(*(a1 + 56) + 8 * v16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v13;
      sub_217ED12EC(isUniquelyReferenced_nonNull_native, v17);

      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_9;
    }
  }

  v19 = *(v13 + 16);
  if (!v19)
  {
    goto LABEL_14;
  }

  v20 = sub_217E8E808(*(v13 + 16), 0);
  v70 = sub_217E97088(&v71, v20 + 4, v19, v13);
  v21 = v71;

  sub_217E7F7A0(v21);
  if (v70 != v19)
  {
    __break(1u);
LABEL_14:
    v20 = MEMORY[0x277D84F90];
  }

  v71 = v20;
  sub_217F357FC(&v71);

  v22 = v71;
  v2 = *(v71 + 2);
  if (!v2)
  {
    v24 = MEMORY[0x277D84F98];
LABEL_30:

    v39 = 1 << *(a1 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(a1 + 64);
    v42 = (v39 + 63) >> 6;
    v43 = v5 * v6;
    v44 = v5 + (*(v24 + 2) - 1);

    v2 = 0;
    v45 = MEMORY[0x277D84F98];
    while (v41)
    {
      v46 = v41;
LABEL_39:
      v41 = (v46 - 1) & v46;
      if (*(v24 + 2))
      {
        v48 = __clz(__rbit64(v46)) | (v2 << 6);
        v49 = (*(a1 + 48) + 16 * v48);
        v51 = *v49;
        v50 = v49[1];
        v52 = sub_217E8EA70(*(*(a1 + 56) + 8 * v48));
        if (v53)
        {
          v54 = *(*(v24 + 7) + 8 * v52);
          swift_bridgeObjectRetain_n();
          v68 = swift_isUniquelyReferenced_nonNull_native();
          v71 = v45;
          v56 = sub_217E8E88C(v51, v50);
          v57 = *(v45 + 2);
          v69 = v55;
          v58 = (v55 & 1) == 0;
          v59 = v57 + v58;
          if (__OFADD__(v57, v58))
          {
            goto LABEL_57;
          }

          if (*(v45 + 3) >= v59)
          {
            v62 = v55;
            if ((v68 & 1) == 0)
            {
              sub_217E8F918();
              v62 = v69;
            }
          }

          else
          {
            sub_217E924FC(v59, v68);
            v60 = sub_217E8E88C(v51, v50);
            v62 = v69;
            if ((v69 & 1) != (v61 & 1))
            {
              goto LABEL_60;
            }

            v56 = v60;
          }

          v63 = 1.0 - pow((v43 + v54) / v44, v4);
          if (v62)
          {

            v45 = v71;
            *(*(v71 + 7) + 8 * v56) = v63;
          }

          else
          {
            v45 = v71;
            *&v71[8 * (v56 >> 6) + 64] |= 1 << v56;
            v64 = (*(v45 + 6) + 16 * v56);
            *v64 = v51;
            v64[1] = v50;
            *(*(v45 + 7) + 8 * v56) = v63;

            v65 = *(v45 + 2);
            v31 = __OFADD__(v65, 1);
            v66 = v65 + 1;
            if (v31)
            {
              goto LABEL_58;
            }

            *(v45 + 2) = v66;
          }
        }
      }
    }

    while (1)
    {
      v47 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_53;
      }

      if (v47 >= v42)
      {

        return v45;
      }

      v46 = *(v7 + 8 * v47);
      ++v2;
      if (v46)
      {
        v2 = v47;
        goto LABEL_39;
      }
    }
  }

  v23 = 0;
  v24 = MEMORY[0x277D84F98];
  while (v23 < *(v22 + 2))
  {
    v25 = *&v22[8 * v23 + 32];
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v24;
    v27 = sub_217E8EA70(v25);
    v29 = *(v24 + 2);
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      goto LABEL_55;
    }

    v33 = v28;
    if (*(v24 + 3) >= v32)
    {
      if ((v26 & 1) == 0)
      {
        v38 = v27;
        sub_217E900EC();
        v27 = v38;
      }
    }

    else
    {
      sub_217E93348(v32, v26);
      v27 = sub_217E8EA70(v25);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_59;
      }
    }

    v35 = v23;
    v24 = v71;
    if (v33)
    {
      *(*(v71 + 7) + 8 * v27) = v35;
    }

    else
    {
      *&v71[8 * (v27 >> 6) + 64] |= 1 << v27;
      *(*(v24 + 6) + 8 * v27) = v25;
      *(*(v24 + 7) + 8 * v27) = v35;
      v36 = *(v24 + 2);
      v31 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v31)
      {
        goto LABEL_56;
      }

      *(v24 + 2) = v37;
    }

    if (v2 == ++v23)
    {
      goto LABEL_30;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  sub_217F4B1C4();
  __break(1u);
LABEL_60:
  sub_217F4B1C4();
  __break(1u);
  MEMORY[0x21CEAF510](v2);

  __break(1u);
  return result;
}

uint64_t sub_217F31278(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a1;
  v26[3] = a3;
  v26[1] = *(a5 + 8);
  v26[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_217F4AD74();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v26 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = v26 - v16;
  v18 = *a2;
  v19 = a2[1];
  v28 = 2831206;
  v29 = 0xE300000000000000;
  MEMORY[0x21CEAEAC0](v18, v19, v15);
  sub_217F4AAC4();

  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v20 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v20;
    result = sub_217F1A0A8(v18, v19, isUniquelyReferenced_nonNull_native, 0.0);
  }

  else
  {
    (*(v12 + 32))(v17, v11, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v20 = v27;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v20;
    sub_217F1A0A8(v18, v19, v25, v24);
    result = (*(v12 + 8))(v17, AssociatedTypeWitness);
  }

  *v20 = v28;
  return result;
}

void *sub_217F31550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 144);
  v57[8] = *(a4 + 128);
  v58 = v7;
  v59 = *(a4 + 160);
  v60 = *(a4 + 176);
  v8 = *(a4 + 80);
  v57[4] = *(a4 + 64);
  v57[5] = v8;
  v9 = *(a4 + 112);
  v57[6] = *(a4 + 96);
  v57[7] = v9;
  v10 = *(a4 + 16);
  v57[0] = *a4;
  v57[1] = v10;
  v11 = *(a4 + 48);
  v57[2] = *(a4 + 32);
  v57[3] = v11;
  v12 = type metadata accessor for ClassicArticleData(0);
  v13 = *(a1 + *(v12 + 92));
  result = sub_217F31900(v57, a1, a3);
  v16 = result;
  if (v59)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217F4BC20;
    v18 = (a1 + *(v12 + 56));
    v19 = v18[1];
    *(inited + 32) = *v18;
    *(inited + 40) = v19;
    v56 = v16;

    result = sub_217E80630(inited);
  }

  v20 = 0;
  v21 = 0;
  v22 = 1 << *(v13 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v13 + 64);
  v25 = 1.0;
  if (!v24)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_6:
    while (1)
    {
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v27 = *(v13 + 56) + 80 * (v26 | (v20 << 6));
      v21 |= *(v27 + 73);
      if ((*(v27 + 40) & 1) == 0)
      {
        break;
      }

      if (!v24)
      {
        goto LABEL_8;
      }
    }

    if (*(v27 + 32) < v25)
    {
      v25 = *(v27 + 32);
    }
  }

  while (v24);
  while (1)
  {
LABEL_8:
    v28 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v28 >= ((v22 + 63) >> 6))
    {
      break;
    }

    v24 = *(v13 + 64 + 8 * v28);
    ++v20;
    if (v24)
    {
      v20 = v28;
      goto LABEL_6;
    }
  }

  if (*&v58 < v25)
  {
    v52[2] = MEMORY[0x28223BE20](result, v15);
    v52[3] = a2;
    v52[4] = v13;
    v52[5] = a1;
    v52[6] = v57;
    v53 = v29 & 1;
    v54 = v30 & 1;
    v55 = v31;
    v32 = sub_217ECCE80(MEMORY[0x277D84F98], sub_217F3ABD8, v52, v16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5378, &qword_217F4CBE0);
    result = sub_217F4AEB4();
    v33 = result;
    v34 = 0;
    v35 = 1 << *(v32 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v32 + 64);
    v38 = (v35 + 63) >> 6;
    for (i = result + 8; v37; result = )
    {
      v40 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
LABEL_26:
      v43 = v40 | (v34 << 6);
      v44 = (*(v32 + 48) + 16 * v43);
      v45 = *v44;
      result = v44[1];
      v46 = *(*(v32 + 56) + 8 * v43);
      v47 = (*&v46 & 0xFFFFFFFFFFFFFLL) != 0 ? 0.0 : *(*(v32 + 56) + 8 * v43);
      if ((~*&v46 & 0x7FF0000000000000) == 0)
      {
        v46 = v47;
      }

      *(i + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      v48 = (v33[6] + 16 * v43);
      *v48 = v45;
      v48[1] = result;
      *(v33[7] + 8 * v43) = v46;
      v49 = v33[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_39;
      }

      v33[2] = v51;
    }

    v41 = v34;
    while (1)
    {
      v34 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v34 >= v38)
      {

        return v33;
      }

      v42 = *(v32 + 64 + 8 * v34);
      ++v41;
      if (v42)
      {
        v40 = __clz(__rbit64(v42));
        v37 = (v42 - 1) & v42;
        goto LABEL_26;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  return sub_217ECBFEC(MEMORY[0x277D84F90]);
}

uint64_t sub_217F31900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  result = type metadata accessor for ClassicArticleData(0);
  v7 = *(a2 + *(result + 64));
  if (v5)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = a3 + 56;
      v11 = MEMORY[0x277D84F90];
      while (1)
      {
        v12 = v9;
        while (1)
        {
          if (v12 >= *(v7 + 16))
          {
            __break(1u);
            return result;
          }

          v9 = v12 + 1;
          if (*(a3 + 16))
          {
            break;
          }

LABEL_6:
          v12 = v9;
          if (v9 == v8)
          {
            return v11;
          }
        }

        v13 = (v7 + 32 + 16 * v12);
        v15 = *v13;
        v14 = v13[1];
        sub_217F4B224();

        sub_217F4AB24();
        v16 = sub_217F4B254();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          break;
        }

        v19 = ~v17;
        while (1)
        {
          v20 = (*(a3 + 48) + 16 * v18);
          v21 = *v20 == v15 && v20[1] == v14;
          if (v21 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_217E8DB18(0, *(v11 + 16) + 1, 1, v11);
          v11 = result;
        }

        v23 = *(v11 + 16);
        v22 = *(v11 + 24);
        if (v23 >= v22 >> 1)
        {
          result = sub_217E8DB18((v22 > 1), v23 + 1, 1, v11);
          v11 = result;
        }

        *(v11 + 16) = v23 + 1;
        v24 = v11 + 16 * v23;
        *(v24 + 32) = v15;
        *(v24 + 40) = v14;
        if (v9 == v8)
        {
          return v11;
        }
      }

LABEL_5:

      goto LABEL_6;
    }

    return MEMORY[0x277D84F90];
  }

  else
  {

    return v7;
  }
}

uint64_t sub_217F31AF8(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10)
{
  v16 = result;
  v17 = *a2;
  v18 = a2[1];
  v19 = 0.0;
  if (*(a3 + 16))
  {
    result = sub_217E8E88C(*a2, a2[1]);
    if (v21)
    {
      v19 = *(*(a3 + 56) + 8 * result);
    }
  }

  if (*(a4 + 16))
  {
    result = sub_217E8E88C(v17, v18);
    if (v22)
    {
      v23 = *(a4 + 56) + 80 * result;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v23 + 24);
      v40 = *(v23 + 73);
      v28 = (a5 + *(type metadata accessor for ClassicArticleData(0) + 56));
      if (v17 == *v28 && v18 == v28[1])
      {
        v30 = 1;
        v31 = 1.0 - a9;
        if ((v25 & 1) == 0)
        {
LABEL_14:
          v32 = v31 * v19;
          if (v27)
          {
            v26 = *(a6 + 16);
          }

          v33 = 176;
          if (v30)
          {
            v33 = 136;
          }

          v34 = 168;
          if (v30)
          {
            v34 = 128;
          }

          v35 = *(a6 + v33);
          v36 = v32 + pow(1.0 - v24, *(a6 + v34)) * a9;
          v37 = pow(1.0 - v26, v35) * v36;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = *v16;
          if ((v40 | a7 & a8))
          {
            v39 = (1.0 - a10) * v37 + a10;
          }

          else
          {
            v39 = v37;
          }

          result = sub_217F1A0A8(v17, v18, isUniquelyReferenced_nonNull_native, v39);
          *v16 = v42;
          return result;
        }
      }

      else
      {
        v30 = sub_217F4B144();
        v31 = 1.0 - a9;
        if ((v25 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v24 = *(a6 + 8);
      goto LABEL_14;
    }
  }

  return result;
}