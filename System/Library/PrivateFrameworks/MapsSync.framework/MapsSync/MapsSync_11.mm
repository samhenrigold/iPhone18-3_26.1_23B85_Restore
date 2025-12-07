void sub_1B63A500C(SEL **a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v6 = v5;
  v141 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v153 = &v136 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v143 = &v136 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v144 = &v136 - v17;
  v160 = sub_1B63BE994();
  v18 = MEMORY[0x1EEE9AC00](v160);
  v151 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v155 = &v136 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v138 = &v136 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v145 = &v136 - v25;
  v26 = a3[1];
  if (v26 >= 1)
  {
    v27 = 0;
    v159 = (v24 + 56);
    v156 = (v24 + 32);
    v157 = (v24 + 48);
    v154 = (v24 + 8);
    v28 = MEMORY[0x1E69E7CC0];
    v147 = a3;
    v140 = a4;
    v152 = v12;
    while (1)
    {
      v29 = v27;
      v30 = v27 + 1;
      if (v27 + 1 >= v26)
      {
        v54 = &selRef_powerByConnector;
        goto LABEL_38;
      }

      v139 = v28;
      v4 = *a3;
      *&v164 = *(*a3 + 8 * v30);
      *&v162 = *(v4 + 8 * v27);
      v31 = v162;
      v32 = v164;
      v33 = v31;
      LODWORD(v158) = sub_1B63A33AC(&v164, &v162);
      if (v6)
      {

        return;
      }

      v30 = v27 + 2;
      if (v27 + 2 >= v26)
      {
        goto LABEL_29;
      }

      v137 = v27;
      v4 += 8 * v27 + 16;
      v34 = v144;
      v142 = 0;
      v150 = v26;
      do
      {
        v35 = v30;
        v36 = *(v4 - 8);
        v161 = *v4;
        v37 = v36;
        v38 = sub_1B63BEBC4();
        v39 = [v37 valueForKey_];

        if (v39)
        {
          sub_1B63BEF84();
          swift_unknownObjectRelease();
        }

        else
        {
          v162 = 0u;
          v163 = 0u;
        }

        v164 = v162;
        v165 = v163;
        v30 = v35;
        if (!*(&v163 + 1))
        {
          sub_1B6284EAC(&v164, &unk_1EB943740, &qword_1B63C5030);
          (*v159)(v34, 1, 1, v160);
LABEL_9:
          sub_1B6284EAC(v34, &unk_1EB943210, &unk_1B63C3F50);

          a3 = v147;
          if ((v158 & 1) == 0)
          {
            v28 = v139;
            a4 = v140;
            v54 = &selRef_powerByConnector;
            v29 = v137;
            goto LABEL_38;
          }

          goto LABEL_10;
        }

        v40 = v160;
        v41 = swift_dynamicCast();
        v42 = *v159;
        (*v159)(v34, v41 ^ 1u, 1, v40);
        v43 = *v157;
        if ((*v157)(v34, 1, v40) == 1)
        {
          goto LABEL_9;
        }

        v44 = *v156;
        (*v156)(v145, v34, v160);
        v45 = sub_1B63BEBC4();
        v46 = [v161 valueForKey_];

        if (v46)
        {
          sub_1B63BEF84();
          swift_unknownObjectRelease();
        }

        else
        {
          v162 = 0u;
          v163 = 0u;
        }

        v164 = v162;
        v165 = v163;
        v30 = v35;
        if (*(&v163 + 1))
        {
          v47 = v143;
          v48 = v160;
          v49 = swift_dynamicCast();
          v42(v47, v49 ^ 1u, 1, v48);
          if (v43(v47, 1, v48) != 1)
          {
            v50 = v138;
            v44(v138, v47, v48);
            v51 = v145;
            v52 = sub_1B63BE964();
            v53 = *v154;
            (*v154)(v50, v48);
            v53(v51, v48);
            v30 = v35;

            v6 = v142;
            a3 = v147;
            v34 = v144;
            if ((v158 ^ v52))
            {
              goto LABEL_28;
            }

            goto LABEL_10;
          }
        }

        else
        {
          sub_1B6284EAC(&v164, &unk_1EB943740, &qword_1B63C5030);
          v47 = v143;
          v48 = v160;
          v42(v143, 1, 1, v160);
        }

        (*v154)(v145, v48);
        sub_1B6284EAC(v47, &unk_1EB943210, &unk_1B63C3F50);

        v6 = v142;
        a3 = v147;
        v34 = v144;
        if (v158)
        {
          v28 = v139;
          a4 = v140;
          v54 = &selRef_powerByConnector;
          v29 = v137;
          goto LABEL_30;
        }

LABEL_10:
        ++v30;
        v4 += 8;
      }

      while (v150 != v30);
      v30 = v150;
LABEL_28:
      a4 = v140;
      v29 = v137;
LABEL_29:
      v28 = v139;
      v54 = &selRef_powerByConnector;
      if (v158)
      {
LABEL_30:
        if (v30 >= v29)
        {
          if (v29 < v30)
          {
            v55 = 8 * v30 - 8;
            v56 = 8 * v29;
            v57 = v30;
            v58 = v29;
            while (1)
            {
              if (v58 != --v57)
              {
                v59 = *a3;
                if (!*a3)
                {
                  goto LABEL_160;
                }

                v60 = *(v59 + v56);
                *(v59 + v56) = *(v59 + v55);
                *(v59 + v55) = v60;
              }

              ++v58;
              v55 -= 8;
              v56 += 8;
              if (v58 >= v57)
              {
                goto LABEL_38;
              }
            }
          }

          goto LABEL_38;
        }

LABEL_156:
        __break(1u);
LABEL_157:
        v131 = sub_1B63BCE9C(v4);
        goto LABEL_125;
      }

LABEL_38:
      v61 = a3[1];
      if (v30 >= v61)
      {
        goto LABEL_69;
      }

      if (__OFSUB__(v30, v29))
      {
        goto LABEL_153;
      }

      if (v30 - v29 >= a4)
      {
        goto LABEL_69;
      }

      v62 = v29 + a4;
      if (__OFADD__(v29, a4))
      {
        goto LABEL_154;
      }

      if (v62 >= v61)
      {
        v62 = a3[1];
      }

      v63 = v153;
      if (v62 < v29)
      {
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      if (v30 == v62)
      {
        goto LABEL_69;
      }

      v139 = v28;
      v142 = v6;
      v158 = *a3;
      v64 = (v158 + 8 * v30 - 8);
      v137 = v29;
      v65 = v29 - v30;
      v146 = v62;
      while (2)
      {
        v150 = v30;
        v66 = *(v158 + 8 * v30);
        v148 = v65;
        v149 = v64;
        while (2)
        {
          v4 = *v64;
          v161 = v66;
          v67 = v4;
          v68 = sub_1B63BEBC4();
          v69 = [v67 v54[127]];

          if (v69)
          {
            sub_1B63BEF84();
            swift_unknownObjectRelease();
          }

          else
          {
            v162 = 0u;
            v163 = 0u;
          }

          v164 = v162;
          v165 = v163;
          v70 = v160;
          if (!*(&v163 + 1))
          {
            sub_1B6284EAC(&v164, &unk_1EB943740, &qword_1B63C5030);
            (*v159)(v63, 1, 1, v70);
LABEL_59:
            sub_1B6284EAC(v63, &unk_1EB943210, &unk_1B63C3F50);

            goto LABEL_64;
          }

          v71 = swift_dynamicCast();
          v72 = *v159;
          (*v159)(v63, v71 ^ 1u, 1, v70);
          v4 = *v157;
          if ((*v157)(v63, 1, v70) == 1)
          {
            goto LABEL_59;
          }

          v73 = v63;
          v74 = *v156;
          (*v156)(v155, v73, v70);
          v75 = sub_1B63BEBC4();
          v76 = [v161 v54[127]];

          if (v76)
          {
            sub_1B63BEF84();
            swift_unknownObjectRelease();
          }

          else
          {
            v162 = 0u;
            v163 = 0u;
          }

          v77 = v152;
          v164 = v162;
          v165 = v163;
          v78 = v160;
          if (*(&v163 + 1))
          {
            v79 = swift_dynamicCast();
            v72(v77, v79 ^ 1u, 1, v78);
            if ((v4)(v77, 1, v78) == 1)
            {
              goto LABEL_48;
            }

            v80 = v151;
            v74(v151, v77, v78);
            v81 = v155;
            v82 = sub_1B63BE964();
            v4 = *v154;
            (*v154)(v80, v78);
            (v4)(v81, v78);
            v54 = &selRef_powerByConnector;

            v63 = v153;
            if ((v82 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_64:
            if (v158)
            {
              v83 = *v64;
              v66 = v64[1];
              *v64 = v66;
              v64[1] = v83;
              --v64;
              if (__CFADD__(v65++, 1))
              {
                goto LABEL_49;
              }

              continue;
            }

            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
            return;
          }

          break;
        }

        sub_1B6284EAC(&v164, &unk_1EB943740, &qword_1B63C5030);
        v72(v77, 1, 1, v78);
LABEL_48:
        (*v154)(v155, v78);
        sub_1B6284EAC(v77, &unk_1EB943210, &unk_1B63C3F50);

        v63 = v153;
LABEL_49:
        v30 = v150 + 1;
        v64 = v149 + 1;
        v65 = v148 - 1;
        if (v150 + 1 != v146)
        {
          continue;
        }

        break;
      }

      v30 = v146;
      v6 = v142;
      a3 = v147;
      v28 = v139;
      v29 = v137;
LABEL_69:
      if (v30 < v29)
      {
        goto LABEL_152;
      }

      v85 = v28;
      v27 = v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v28 = v85;
      }

      else
      {
        v28 = sub_1B62B24E4(0, *(v85 + 2) + 1, 1, v85);
      }

      v4 = *(v28 + 2);
      v86 = *(v28 + 3);
      v87 = v4 + 1;
      if (v4 >= v86 >> 1)
      {
        v28 = sub_1B62B24E4((v86 > 1), v4 + 1, 1, v28);
      }

      *(v28 + 2) = v87;
      v88 = &v28[16 * v4];
      *(v88 + 4) = v29;
      *(v88 + 5) = v27;
      v54 = *v141;
      if (!*v141)
      {
        goto LABEL_162;
      }

      if (v4)
      {
        while (2)
        {
          v89 = v87 - 1;
          if (v87 >= 4)
          {
            v94 = &v28[16 * v87 + 32];
            v95 = *(v94 - 64);
            v96 = *(v94 - 56);
            v100 = __OFSUB__(v96, v95);
            v97 = v96 - v95;
            if (v100)
            {
              goto LABEL_139;
            }

            v99 = *(v94 - 48);
            v98 = *(v94 - 40);
            v100 = __OFSUB__(v98, v99);
            v92 = v98 - v99;
            v93 = v100;
            if (v100)
            {
              goto LABEL_140;
            }

            v101 = &v28[16 * v87];
            v103 = *v101;
            v102 = *(v101 + 1);
            v100 = __OFSUB__(v102, v103);
            v104 = v102 - v103;
            if (v100)
            {
              goto LABEL_142;
            }

            v100 = __OFADD__(v92, v104);
            v105 = v92 + v104;
            if (v100)
            {
              goto LABEL_145;
            }

            if (v105 >= v97)
            {
              v123 = &v28[16 * v89 + 32];
              v125 = *v123;
              v124 = *(v123 + 1);
              v100 = __OFSUB__(v124, v125);
              v126 = v124 - v125;
              if (v100)
              {
                goto LABEL_149;
              }

              if (v92 < v126)
              {
                v89 = v87 - 2;
              }
            }

            else
            {
LABEL_89:
              if (v93)
              {
                goto LABEL_141;
              }

              v106 = &v28[16 * v87];
              v108 = *v106;
              v107 = *(v106 + 1);
              v109 = __OFSUB__(v107, v108);
              v110 = v107 - v108;
              v111 = v109;
              if (v109)
              {
                goto LABEL_144;
              }

              v112 = &v28[16 * v89 + 32];
              v114 = *v112;
              v113 = *(v112 + 1);
              v100 = __OFSUB__(v113, v114);
              v115 = v113 - v114;
              if (v100)
              {
                goto LABEL_147;
              }

              if (__OFADD__(v110, v115))
              {
                goto LABEL_148;
              }

              if (v110 + v115 < v92)
              {
                goto LABEL_103;
              }

              if (v92 < v115)
              {
                v89 = v87 - 2;
              }
            }
          }

          else
          {
            if (v87 == 3)
            {
              v90 = *(v28 + 4);
              v91 = *(v28 + 5);
              v100 = __OFSUB__(v91, v90);
              v92 = v91 - v90;
              v93 = v100;
              goto LABEL_89;
            }

            v116 = &v28[16 * v87];
            v118 = *v116;
            v117 = *(v116 + 1);
            v100 = __OFSUB__(v117, v118);
            v110 = v117 - v118;
            v111 = v100;
LABEL_103:
            if (v111)
            {
              goto LABEL_143;
            }

            v119 = &v28[16 * v89];
            v121 = *(v119 + 4);
            v120 = *(v119 + 5);
            v100 = __OFSUB__(v120, v121);
            v122 = v120 - v121;
            if (v100)
            {
              goto LABEL_146;
            }

            if (v122 < v110)
            {
              break;
            }
          }

          v4 = v89 - 1;
          if (v89 - 1 >= v87)
          {
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
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
            goto LABEL_155;
          }

          if (!*a3)
          {
            goto LABEL_159;
          }

          v127 = v28;
          v128 = *&v28[16 * v4 + 32];
          v129 = *&v28[16 * v89 + 40];
          sub_1B63A5FC8((*a3 + 8 * v128), (*a3 + 8 * *&v28[16 * v89 + 32]), (*a3 + 8 * v129), v54);
          if (v6)
          {
            goto LABEL_133;
          }

          if (v129 < v128)
          {
            goto LABEL_137;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v127 = sub_1B63BCE9C(v127);
          }

          if (v4 >= *(v127 + 2))
          {
            goto LABEL_138;
          }

          v130 = &v127[16 * v4];
          *(v130 + 4) = v128;
          *(v130 + 5) = v129;
          v166 = v127;
          v4 = &v166;
          sub_1B63BCE10(v89);
          v28 = v166;
          v87 = *(v166 + 2);
          if (v87 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v26 = a3[1];
      a4 = v140;
      if (v27 >= v26)
      {
        goto LABEL_122;
      }
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_122:
  v54 = *v141;
  if (!*v141)
  {
    goto LABEL_163;
  }

  v4 = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_157;
  }

  v131 = v4;
LABEL_125:
  v166 = v131;
  v4 = *(v131 + 2);
  if (v4 >= 2)
  {
    while (*a3)
    {
      v132 = *&v131[16 * v4];
      v133 = v131;
      v134 = *&v131[16 * v4 + 24];
      sub_1B63A5FC8((*a3 + 8 * v132), (*a3 + 8 * *&v131[16 * v4 + 16]), (*a3 + 8 * v134), v54);
      if (v6)
      {
        goto LABEL_133;
      }

      if (v134 < v132)
      {
        goto LABEL_150;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v133 = sub_1B63BCE9C(v133);
      }

      if (v4 - 2 >= *(v133 + 2))
      {
        goto LABEL_151;
      }

      v135 = &v133[16 * v4];
      *v135 = v132;
      *(v135 + 1) = v134;
      v166 = v133;
      sub_1B63BCE10(v4 - 1);
      v131 = v166;
      v4 = *(v166 + 2);
      if (v4 <= 1)
      {
        goto LABEL_133;
      }
    }

    goto LABEL_161;
  }

LABEL_133:
}

uint64_t sub_1B63A5FC8(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_1B63A33AC(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= (v21 + (v44 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = (v21 + 1);
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = v16 - a4 + 7;
    if ((v16 - a4) >= 0)
    {
      v46 = v16 - a4;
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = v16 + v28;
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *--v31;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_1B63A33AC(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = v6 + 1;
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= v51 + (v40 & 0xFFFFFFFFFFFFFFF8) || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

id sub_1B63A6364(uint64_t a1)
{
  sub_1B63BF114();

  v16 = 0x80000001B63CC560;
  v2 = sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
  v3 = MEMORY[0x1B8C923A0](a1, v2);
  MEMORY[0x1B8C92330](v3);

  _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0xD000000000000023, 0x80000001B63CC560);

  v15 = sub_1B63BCFE4(v4);
  sub_1B63A4904(&v15);
  v5 = v15;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1B63BF114();

  v15 = 0xD000000000000010;
  v16 = 0x80000001B63CC590;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1B8C92830](0, v5);
  }

  else
  {
    if (!*(v5 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;
  v8 = [v6 description];
  v9 = sub_1B63BEBD4();
  v11 = v10;

  MEMORY[0x1B8C92330](v9, v11);

  _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v15, v16);

  if ((v5 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B8C92830](0, v5);
  }

  else
  {
    v12 = *(v5 + 32);
  }

  v13 = v12;

  return v13;
}

id static MapsSyncService.shared.getter()
{
  if (qword_1EB942F30 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB942F38;

  return v1;
}

uint64_t sub_1B63A6598(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943720, &qword_1B63C6B20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B63C3D50;
  sub_1B63BF114();
  MEMORY[0x1B8C92330](0xD000000000000021, 0x80000001B63CC660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
  sub_1B63BF1B4();
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_1B63BF424();
}

void sub_1B63A66A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1B63A6708()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B628E340;

  return sub_1B63A7850();
}

uint64_t sub_1B63A67A8(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return MEMORY[0x1EEE6DEE8](v3, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1B63A69C8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1B63A6A70;

  return sub_1B63A7850();
}

uint64_t sub_1B63A6A70()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 16);
  if (v2)
  {
    v7 = sub_1B63BE814();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 16));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_1B63A6BD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B63A6C74;

  return sub_1B629E0C4();
}

uint64_t sub_1B63A6C74(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_1B63A6D9C()
{
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B63BEBC4();
  v3 = [v1 initWithMachServiceName:v2 options:0];

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v0[14] = sub_1B63A6598;
  v0[15] = 0;
  v5 = MEMORY[0x1E69E9820];
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B63A66A0;
  v0[13] = &block_descriptor_27;
  v6 = _Block_copy(v0 + 10);
  v7 = [v3 remoteObjectProxyWithErrorHandler_];
  _Block_release(v6);
  sub_1B63BEF84();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943750, &qword_1B63C6D68);
  if (swift_dynamicCast())
  {
    v9 = v0[18];
    v8 = v0[19];
    v0[20] = v9;
    v0[2] = v0;
    v0[7] = v8;
    v0[3] = sub_1B63A7094;
    v10 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943758, &qword_1B63C6D70);
    v0[10] = v5;
    v0[11] = 1107296256;
    v0[12] = sub_1B63A727C;
    v0[13] = &block_descriptor_7;
    v0[14] = v10;
    [v9 getLastSyncDateWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    sub_1B634DB54();
    swift_allocError();
    *v11 = 3;
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1B63A7094()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1B63A7208;
  }

  else
  {
    v2 = sub_1B63A71A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B63A71A4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B63A7208(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1B63A727C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B63BE994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;

    return MEMORY[0x1EEE6DEE8](v9, v10);
  }

  else
  {
    sub_1B63BE974();
    (*(v6 + 32))(*(*(v9 + 64) + 40), v8, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1B63A7560(const void *a1, void *a2)
{
  v2[2] = a2;
  v5 = sub_1B63BE994();
  v2[3] = v5;
  v2[4] = *(v5 - 8);
  v6 = swift_task_alloc();
  v2[5] = v6;
  v2[6] = _Block_copy(a1);
  v7 = a2;
  v8 = swift_task_alloc();
  v2[7] = v8;
  *v8 = v2;
  v8[1] = sub_1B63A767C;

  return sub_1B63A6D7C(v6);
}

uint64_t sub_1B63A767C()
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *v1;

  if (v0)
  {
    v5 = sub_1B63BE814();

    v6 = v5;
    v7 = 0;
  }

  else
  {
    v9 = v2[4];
    v8 = v2[5];
    v10 = v2[3];
    v11 = sub_1B63BE954();
    (*(v9 + 8))(v8, v10);
    v7 = v11;
    v6 = 0;
    v5 = v11;
  }

  v12 = v2[6];
  (v12)[2](v12, v7, v6);

  _Block_release(v12);

  v13 = *(v4 + 8);

  return v13();
}

id MapsSyncService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B63A786C()
{
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B63BEBC4();
  v3 = [v1 initWithMachServiceName:v2 options:0];

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v0[14] = sub_1B63A6598;
  v0[15] = 0;
  v5 = MEMORY[0x1E69E9820];
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B63A66A0;
  v0[13] = &block_descriptor_63;
  v6 = _Block_copy(v0 + 10);
  v7 = [v3 remoteObjectProxyWithErrorHandler_];
  _Block_release(v6);
  sub_1B63BEF84();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943750, &qword_1B63C6D68);
  if (swift_dynamicCast())
  {
    v8 = v0[18];
    v0[19] = v8;
    v0[2] = v0;
    v0[3] = sub_1B63A7B60;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943768, &unk_1B63C6E10);
    v0[10] = v5;
    v0[11] = 1107296256;
    v0[12] = sub_1B63A67A8;
    v0[13] = &block_descriptor_66_1;
    v0[14] = v9;
    [v8 prepareLibraryWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    sub_1B634DB54();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1B63A7B60()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1B63A7CD4;
  }

  else
  {
    v2 = sub_1B63A7C70;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B63A7C70()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B63A7CD4(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1B63A7D48(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 8);

  return v2(0);
}

uint64_t dispatch thunk of MapsSyncService.prepareLibrary()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B628CAA0;

  return v5();
}

uint64_t dispatch thunk of MapsSyncService.cloudKitSyncAllowed()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B628FBFC;

  return v5();
}

uint64_t dispatch thunk of MapsSyncService.lastSyncDate()(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628E340;

  return v7(a1);
}

uint64_t sub_1B63A814C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628E340;

  return sub_1B63A7560(v2, v3);
}

uint64_t sub_1B63A81F8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B628CAA0;

  return sub_1B63A69C8(v2);
}

id sub_1B63A8310(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedHistoryEvDirectionsItem();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1B63A8368(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B63BEA04();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MapsSyncHashing(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B639A52C(v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v12 = *v9;
      MEMORY[0x1B8C92B30](0);
      MEMORY[0x1B8C92B30](v12);

      return;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v23 = *v9;
      MEMORY[0x1B8C92B30](2);
      MEMORY[0x1B8C92B70](v23);
      sub_1B63BF474();
      return;
    }

    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x1B8C92B30](1);
    sub_1B63AACB0(&qword_1EB942FA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1B63BEB94();
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v11 = *v9;
      MEMORY[0x1B8C92B30](4);
      MEMORY[0x1B8C92B70](v11);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943780, &qword_1B63C6F38);
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x1B8C92B30](5);
    sub_1B63AACB0(&qword_1EB942FA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1B63BEB94();
    sub_1B63BF464();
LABEL_19:
    (*(v4 + 8))(v6, v3);
    return;
  }

  v13 = *(v9 + 1);
  v14 = *(v9 + 2);
  v15 = *(v9 + 3);
  v16 = *MEMORY[0x1E69A1670];
  v17 = *MEMORY[0x1E69A1670] / 111319.491;
  v18 = cos(v14 * 3.14159265 / 180.0);
  v19 = round(v14 / v17);
  v20 = round(v15 / (v16 / (v18 * 111319.491)));
  MEMORY[0x1B8C92B30](3);
  if (v19 == 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v19;
  }

  MEMORY[0x1B8C92B70](*&v21);
  if (v20 == 0.0)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v20;
  }

  MEMORY[0x1B8C92B70](*&v22);
  sub_1B63BF454();
  if (v13)
  {
    sub_1B63BEC24();
  }
}

uint64_t sub_1B63A8714()
{
  sub_1B63BF434();
  sub_1B63A8368(v1);
  return sub_1B63BF494();
}

uint64_t sub_1B63A8758(uint64_t a1)
{
  sub_1B63BF434();
  sub_1B63A8368(v2);
  return sub_1B63BF494();
}

id sub_1B63A87CC()
{
  sub_1B63AA55C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B63C3D80;
  *(v0 + 32) = type metadata accessor for CuratedCollection(0);
  *(v0 + 40) = type metadata accessor for CachedCuratedCollection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943408, &qword_1B63C5070);
  v1 = sub_1B63BEC94();

  return v1;
}

uint64_t sub_1B63A8870@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  v9 = type metadata accessor for MapsSyncHashing(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  swift_beginAccess();
  sub_1B628C510(v3 + v16, v8, &qword_1EB9435F0, &qword_1B63C6610);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v17 = 0x1FAA2A000;
    sub_1B6284EAC(v8, &qword_1EB9435F0, &qword_1B63C6610);
  }

  else
  {
    sub_1B639A148(v8, v15);
    v18 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
    [v18 lock];
    v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v20 = *(*(v3 + v19) + 16);
    v17 = &unk_1E7C32000;
    [v18 unlock];
    if (!v20)
    {
      v28 = v33;
      sub_1B639A148(v15, v33);
      return (*(v10 + 56))(v28, 0, 1, v9);
    }

    sub_1B639A0EC(v15);
  }

  v21 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v21 &selRef_setTitleLocale_];
  v22 = *(v3 + *v31);
  [v21 v17 + 376];
  [v21 &selRef_setTitleLocale_];
  v23 = *(v3 + *v32);
  [v21 v17 + 376];
  *v13 = v22;
  *(v13 + 2) = v23;
  swift_storeEnumTagMultiPayload();
  v24 = v30;
  sub_1B639A52C(v13, v30);
  v25 = *(v10 + 56);
  v25(v24, 0, 1, v9);
  swift_beginAccess();
  sub_1B63AACF8(v24, v3 + v16);
  swift_endAccess();
  v26 = v33;
  sub_1B639A148(v13, v33);
  return (v25)(v26, 0, 1, v9);
}

uint64_t sub_1B63A8BE4()
{
  v1 = [*v0 allowedClasses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943408, &qword_1B63C5070);
  v2 = sub_1B63BECA4();

  return v2;
}

uint64_t sub_1B63A8C7C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - v5;
  v7 = type metadata accessor for MapsSyncHashing(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  swift_beginAccess();
  sub_1B628C510(v1 + v14, v6, &qword_1EB9435F0, &qword_1B63C6610);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B6284EAC(v6, &qword_1EB9435F0, &qword_1B63C6610);
  }

  else
  {
    sub_1B639A148(v6, v13);
    v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
    [v15 lock];
    v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v17 = *(*(v1 + v16) + 16);
    [v15 property descriptor for VisitedLocation.hidden];
    if (!v17)
    {
      v24 = v27;
      sub_1B639A148(v13, v27);
      return (*(v8 + 56))(v24, 0, 1, v7);
    }

    sub_1B639A0EC(v13);
  }

  v18 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v18 lock];
  v19 = *(v1 + OBJC_IVAR___MSCollectionTransitItem__muid);
  [v18 unlock];
  *v11 = v19;
  swift_storeEnumTagMultiPayload();
  v20 = v26;
  sub_1B639A52C(v11, v26);
  v21 = *(v8 + 56);
  v21(v20, 0, 1, v7);
  swift_beginAccess();
  sub_1B63AACF8(v20, v1 + v14);
  swift_endAccess();
  v22 = v27;
  sub_1B639A148(v11, v27);
  return (v21)(v22, 0, 1, v7);
}

Swift::Bool __swiftcall CollectionTransitItem.isEqualTo(muid:)(Swift::UInt64 muid)
{
  v23 = muid;
  v1 = type metadata accessor for MapsSyncHashing(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v22 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943770, qword_1B63C6E48);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v22 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  sub_1B63A8C7C(&v22 - v15);
  *v14 = v23;
  swift_storeEnumTagMultiPayload();
  (*(v2 + 56))(v14, 0, 1, v1);
  v17 = *(v5 + 56);
  sub_1B628C510(v16, v7, &qword_1EB9435F0, &qword_1B63C6610);
  sub_1B628C510(v14, &v7[v17], &qword_1EB9435F0, &qword_1B63C6610);
  v18 = *(v2 + 48);
  if (v18(v7, 1, v1) != 1)
  {
    sub_1B628C510(v7, v11, &qword_1EB9435F0, &qword_1B63C6610);
    if (v18(&v7[v17], 1, v1) != 1)
    {
      v20 = v22;
      sub_1B639A148(&v7[v17], v22);
      v19 = sub_1B63AA5D4(v11, v20);
      sub_1B639A0EC(v20);
      sub_1B6284EAC(v14, &qword_1EB9435F0, &qword_1B63C6610);
      sub_1B6284EAC(v16, &qword_1EB9435F0, &qword_1B63C6610);
      sub_1B639A0EC(v11);
      sub_1B6284EAC(v7, &qword_1EB9435F0, &qword_1B63C6610);
      return v19 & 1;
    }

    sub_1B6284EAC(v14, &qword_1EB9435F0, &qword_1B63C6610);
    sub_1B6284EAC(v16, &qword_1EB9435F0, &qword_1B63C6610);
    sub_1B639A0EC(v11);
    goto LABEL_6;
  }

  sub_1B6284EAC(v14, &qword_1EB9435F0, &qword_1B63C6610);
  sub_1B6284EAC(v16, &qword_1EB9435F0, &qword_1B63C6610);
  if (v18(&v7[v17], 1, v1) != 1)
  {
LABEL_6:
    sub_1B6284EAC(v7, &qword_1EB943770, qword_1B63C6E48);
    v19 = 0;
    return v19 & 1;
  }

  sub_1B6284EAC(v7, &qword_1EB9435F0, &qword_1B63C6610);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_1B63A93C4@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - v6;
  v8 = type metadata accessor for MapsSyncHashing(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  swift_beginAccess();
  sub_1B628C510(v1 + v15, v7, &qword_1EB9435F0, &qword_1B63C6610);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v16 = sub_1B6284EAC(v7, &qword_1EB9435F0, &qword_1B63C6610);
    v18 = sub_1B6290B60(v16, v17);
    if (v18)
    {
      goto LABEL_3;
    }

    return (*(v9 + 56))(v37, 1, 1, v8);
  }

  sub_1B639A148(v7, v14);
  v31 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v31 lock];
  v32 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v33 = *(*(v1 + v32) + 16);
  [v31 unlock];
  if (!v33)
  {
    v36 = v37;
    sub_1B639A148(v14, v37);
    return (*(v9 + 56))(v36, 0, 1, v8);
  }

  v34 = sub_1B639A0EC(v14);
  v18 = sub_1B6290B60(v34, v35);
  if (!v18)
  {
    return (*(v9 + 56))(v37, 1, 1, v8);
  }

LABEL_3:
  v20 = v18;
  v21 = sub_1B6294630(v18, v19);
  v23 = v22;
  if ([v20 _hasMUID])
  {
    v24 = [v20 _placeDisplayType];
    if (v24 == 4 || v24 == 1)
    {
      [v20 _muid];
    }
  }

  [v20 coordinate];
  v26 = v25;
  [v20 coordinate];
  *v12 = v21;
  v12[1] = v23;
  v12[2] = v26;
  v12[3] = v27;
  swift_storeEnumTagMultiPayload();

  sub_1B639A52C(v12, v5);
  v28 = *(v9 + 56);
  v28(v5, 0, 1, v8);
  swift_beginAccess();
  sub_1B63AACF8(v5, v1 + v15);
  swift_endAccess();
  v29 = v37;
  sub_1B639A148(v12, v37);
  return (v28)(v29, 0, 1, v8);
}

uint64_t CollectionPlaceItem.isEqualTo(mapItem:name:)(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v5 = type metadata accessor for MapsSyncHashing(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943770, qword_1B63C6E48);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v30 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  sub_1B63A93C4(&v30 - v18);

  if ([swift_unknownObjectRetain() _hasMUID])
  {
    v20 = [a1 _placeDisplayType];
    if (v20 == 4 || v20 == 1)
    {
      [a1 _muid];
    }
  }

  [a1 coordinate];
  v22 = v21;
  [a1 coordinate];
  v24 = v23;
  swift_unknownObjectRelease();
  *v17 = v31;
  v17[1] = a3;
  v17[2] = v22;
  v17[3] = v24;
  swift_storeEnumTagMultiPayload();
  (*(v6 + 56))(v17, 0, 1, v5);
  v25 = *(v8 + 48);
  sub_1B628C510(v19, v10, &qword_1EB9435F0, &qword_1B63C6610);
  sub_1B628C510(v17, &v10[v25], &qword_1EB9435F0, &qword_1B63C6610);
  v26 = *(v6 + 48);
  if (v26(v10, 1, v5) != 1)
  {
    sub_1B628C510(v10, v14, &qword_1EB9435F0, &qword_1B63C6610);
    if (v26(&v10[v25], 1, v5) != 1)
    {
      v28 = v30;
      sub_1B639A148(&v10[v25], v30);
      v27 = sub_1B63AA5D4(v14, v28);
      sub_1B639A0EC(v28);
      sub_1B6284EAC(v17, &qword_1EB9435F0, &qword_1B63C6610);
      sub_1B6284EAC(v19, &qword_1EB9435F0, &qword_1B63C6610);
      sub_1B639A0EC(v14);
      sub_1B6284EAC(v10, &qword_1EB9435F0, &qword_1B63C6610);
      return v27 & 1;
    }

    sub_1B6284EAC(v17, &qword_1EB9435F0, &qword_1B63C6610);
    sub_1B6284EAC(v19, &qword_1EB9435F0, &qword_1B63C6610);
    sub_1B639A0EC(v14);
    goto LABEL_10;
  }

  sub_1B6284EAC(v17, &qword_1EB9435F0, &qword_1B63C6610);
  sub_1B6284EAC(v19, &qword_1EB9435F0, &qword_1B63C6610);
  if (v26(&v10[v25], 1, v5) != 1)
  {
LABEL_10:
    sub_1B6284EAC(v10, &qword_1EB943770, qword_1B63C6E48);
    v27 = 0;
    return v27 & 1;
  }

  sub_1B6284EAC(v10, &qword_1EB9435F0, &qword_1B63C6610);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_1B63A9C54@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - v6;
  v8 = type metadata accessor for MapsSyncHashing(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  swift_beginAccess();
  sub_1B628C510(v1 + v15, v7, &qword_1EB9435F0, &qword_1B63C6610);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v16 = sub_1B6284EAC(v7, &qword_1EB9435F0, &qword_1B63C6610);
    v18 = sub_1B6344B7C(v16, v17);
    if (v18)
    {
      goto LABEL_3;
    }

    return (*(v9 + 56))(v34, 1, 1, v8);
  }

  sub_1B639A148(v7, v14);
  v28 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v28 lock];
  v29 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v30 = *(*(v1 + v29) + 16);
  [v28 unlock];
  if (!v30)
  {
    v33 = v34;
    sub_1B639A148(v14, v34);
    return (*(v9 + 56))(v33, 0, 1, v8);
  }

  v31 = sub_1B639A0EC(v14);
  v18 = sub_1B6344B7C(v31, v32);
  if (!v18)
  {
    return (*(v9 + 56))(v34, 1, 1, v8);
  }

LABEL_3:
  v19 = v18;
  if ([v18 _hasMUID])
  {
    v20 = [v19 _placeDisplayType];
    if (v20 == 4 || v20 == 1)
    {
      [v19 _muid];
    }
  }

  [v19 coordinate];
  v22 = v21;
  [v19 coordinate];
  v24 = v23;

  *v12 = 0;
  v12[1] = 0;
  v12[2] = v22;
  v12[3] = v24;
  swift_storeEnumTagMultiPayload();
  sub_1B639A52C(v12, v5);
  v25 = *(v9 + 56);
  v25(v5, 0, 1, v8);
  swift_beginAccess();
  sub_1B63AACF8(v5, v1 + v15);
  swift_endAccess();
  v26 = v34;
  sub_1B639A148(v12, v34);
  return (v25)(v26, 0, 1, v8);
}

uint64_t sub_1B63AA008@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v38 - v3;
  v5 = sub_1B63BEA04();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for MapsSyncHashing(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - v17;
  v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  swift_beginAccess();
  sub_1B628C510(v1 + v19, v11, &qword_1EB9435F0, &qword_1B63C6610);
  v20 = *(v13 + 48);
  v42 = v12;
  if (v20(v11, 1, v12) == 1)
  {
    sub_1B6284EAC(v11, &qword_1EB9435F0, &qword_1B63C6610);
  }

  else
  {
    sub_1B639A148(v11, v18);
    v21 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
    [v21 lock];
    v22 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v23 = *(*(v1 + v22) + 16);
    [v21 unlock];
    if (!v23)
    {
      v37 = v43;
      sub_1B639A148(v18, v43);
      return (*(v13 + 56))(v37, 0, 1, v42);
    }

    sub_1B639A0EC(v18);
  }

  v24 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v24 &selRef_setTitleLocale_];
  v25 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  swift_beginAccess();
  sub_1B628C510(v1 + v25, v4, &unk_1EB943680, qword_1B63C4070);
  [v24 unlock];
  v26 = v40;
  v27 = v41;
  if ((*(v40 + 48))(v4, 1, v41) == 1)
  {
    sub_1B6284EAC(v4, &unk_1EB943680, qword_1B63C4070);
    return (*(v13 + 56))(v43, 1, 1, v42);
  }

  else
  {
    v29 = v38;
    (*(v26 + 32))(v38, v4, v27);
    v30 = v26;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943780, &qword_1B63C6F38) + 48);
    (*(v30 + 16))(v16, v29, v27);
    [v24 &selRef_setTitleLocale_];
    v32 = *(v1 + OBJC_IVAR___MSVisit__visitClassification);
    [v24 unlock];
    (*(v30 + 8))(v29, v27);
    *&v16[v31] = v32;
    v33 = v42;
    swift_storeEnumTagMultiPayload();
    v34 = v39;
    sub_1B639A52C(v16, v39);
    v35 = *(v13 + 56);
    v35(v34, 0, 1, v33);
    swift_beginAccess();
    sub_1B63AACF8(v34, v1 + v19);
    swift_endAccess();
    v36 = v43;
    sub_1B639A148(v16, v43);
    return (v35)(v36, 0, 1, v33);
  }
}

uint64_t sub_1B63AA55C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943408, &qword_1B63C5070);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1EB943788;
    v3 = &unk_1B63C6F40;
  }

  else
  {
    v2 = &unk_1EB943670;
    v3 = qword_1B63C3F60;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_1B63AA5D4(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v3 = sub_1B63BEA04();
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v65 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v64 = &v61 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v63 = &v61 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v61 - v10;
  v11 = type metadata accessor for MapsSyncHashing(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v61 - v16);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v61 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v61 - v22);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v61 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = (&v61 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943790, qword_1B63C6F48);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v61 - v31;
  v33 = &v61 + *(v30 + 56) - v31;
  sub_1B639A52C(a1, &v61 - v31);
  sub_1B639A52C(v68, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B639A52C(v32, v26);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v36 = v66;
          v35 = v67;
          v37 = *(v66 + 32);
          v38 = v62;
          v37(v62, v26, v67);
          v39 = v63;
          v37(v63, v33, v35);
          v40 = sub_1B63BE9D4();
          v41 = *(v36 + 8);
          v41(v39, v35);
          v41(v38, v35);
LABEL_39:
          sub_1B639A0EC(v32);
          return v40 & 1;
        }

        (*(v66 + 8))(v26, v67);
      }

      else
      {
        sub_1B639A52C(v32, v20);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v40 = *v20 == *v33 && *(v20 + 2) == *(v33 + 2);
          goto LABEL_39;
        }
      }
    }

    else
    {
      sub_1B639A52C(v32, v28);
      v42 = *v28;
      if (!swift_getEnumCaseMultiPayload())
      {
        v58 = *v33;
        sub_1B6282B88();
        v40 = sub_1B63BEF24();

        goto LABEL_39;
      }
    }

    goto LABEL_33;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1B639A52C(v32, v17);
    v44 = *v17;
    v43 = v17[1];
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      goto LABEL_33;
    }

    v45 = *(v33 + 1);
    if (v43)
    {
      if (v45)
      {
        if (v44 == *v33 && v43 == v45)
        {
        }

        else
        {
          v47 = sub_1B63BF364();

          v40 = 0;
          if ((v47 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_38;
      }
    }

    else if (!v45)
    {
LABEL_38:
      GEOCalculateDistance();
      v40 = v59 < *MEMORY[0x1E69A1670];
      goto LABEL_39;
    }

    v40 = 0;
    goto LABEL_39;
  }

  if (EnumCaseMultiPayload == 4)
  {
    sub_1B639A52C(v32, v23);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v40 = *v23 == *v33;
      goto LABEL_39;
    }
  }

  else
  {
    sub_1B639A52C(v32, v14);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943780, &qword_1B63C6F38) + 48);
      LODWORD(v68) = *&v14[v49];
      v50 = *&v33[v49];
      v52 = v66;
      v51 = v67;
      v53 = *(v66 + 32);
      v54 = v64;
      v53(v64, v14, v67);
      v55 = v65;
      v53(v65, v33, v51);
      v56 = sub_1B63BE9D4();
      v57 = *(v52 + 8);
      v57(v55, v51);
      v57(v54, v51);
      v40 = v56 & (v68 == v50);
      goto LABEL_39;
    }

    (*(v66 + 8))(v14, v67);
  }

LABEL_33:
  sub_1B6284EAC(v32, &unk_1EB943790, qword_1B63C6F48);
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_1B63AACB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B63AACF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B63AAD74@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedMixinMapItem();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

uint64_t sub_1B63AADB8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedCollection();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

uint64_t VisitRequest.fetch(searchTerm:topLevelCategories:regions:dateRanges:sortDescriptors:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 16) = v7;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1B63AAEDC;

  return sub_1B63ACAF8(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1B63AAEDC(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 32) = a1;

  v5 = swift_task_alloc();
  *(v3 + 40) = v5;
  *v5 = v4;
  v5[1] = sub_1B62AC0B0;

  return sub_1B637C948(a1, v6);
}

uint64_t sub_1B63AB1F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *aBlock, void *a8)
{
  v9 = a8;
  v8[2] = a6;
  v8[3] = a8;
  v8[4] = _Block_copy(aBlock);
  if (a1)
  {
    v28 = sub_1B63BEBD4();
    a1 = v16;
    v8[5] = v16;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v28 = 0;
  v8[5] = 0;
  if (a2)
  {
LABEL_3:
    a2 = sub_1B63BECA4();
  }

LABEL_4:
  v8[6] = a2;
  if (a3)
  {
    sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
    a3 = sub_1B63BECA4();
    v17 = a4;
    v18 = a5;
    v19 = a6;
  }

  else
  {
    v17 = a6;
    v18 = v9;
    v19 = a4;
    v9 = a5;
  }

  v8[7] = a3;
  v20 = v17;
  v21 = v18;
  v22 = v19;
  v23 = v9;
  if (a4)
  {
    type metadata accessor for MapsSyncDateRange(0);
    v24 = sub_1B63BECA4();

    v8[8] = v24;
    if (a5)
    {
LABEL_11:
      sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
      v25 = sub_1B63BECA4();

      goto LABEL_14;
    }
  }

  else
  {
    v24 = 0;
    v8[8] = 0;
    if (a5)
    {
      goto LABEL_11;
    }
  }

  v25 = 0;
LABEL_14:
  v8[9] = v25;
  v26 = swift_task_alloc();
  v8[10] = v26;
  *v26 = v8;
  v26[1] = sub_1B63AB3FC;

  return sub_1B63ACAF8(v28, a1, a2, a3, v24, v25, a6);
}

uint64_t sub_1B63AB3FC(void *a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 88) = a1;

  v5 = a1;
  v6 = swift_task_alloc();
  *(v3 + 96) = v6;
  *v6 = v4;
  v6[1] = sub_1B63AB5F4;

  return sub_1B637C948(a1, v7);
}

uint64_t sub_1B63AB5F4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_1B62ACA58;
  }

  else
  {

    *(v4 + 112) = a1;
    v5 = sub_1B63AB724;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B63AB724()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  type metadata accessor for Visit(0);
  v3 = sub_1B63BEC94();

  v4 = *(v0 + 32);
  (v4)[2](v4, v3, 0);

  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t VisitRequest.count(searchTerm:topLevelCategories:regions:dateRanges:sortDescriptors:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[2] = v7;
  v8[3] = swift_getObjectType();
  v16 = swift_task_alloc();
  v8[4] = v16;
  *v16 = v8;
  v16[1] = sub_1B63AB8D0;

  return sub_1B63ACAF8(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1B63AB8D0(void *a1)
{
  *(*v1 + 40) = a1;

  v3 = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B63AB9DC, 0, 0);
}

uint64_t sub_1B63AB9DC()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
  v0[6] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v5 = v1;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1B62ACE18;

  return sub_1B629CD38(sub_1B629D160, v4);
}

uint64_t sub_1B63ABCB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *aBlock, void *a8)
{
  v9 = a8;
  v8[2] = a6;
  v8[3] = a8;
  v8[4] = _Block_copy(aBlock);
  if (a1)
  {
    v28 = sub_1B63BEBD4();
    a1 = v16;
    v8[5] = v16;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v28 = 0;
  v8[5] = 0;
  if (a2)
  {
LABEL_3:
    a2 = sub_1B63BECA4();
  }

LABEL_4:
  v8[6] = a2;
  if (a3)
  {
    sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
    a3 = sub_1B63BECA4();
    v17 = a4;
    v18 = a5;
    v19 = a6;
  }

  else
  {
    v17 = a6;
    v18 = v9;
    v19 = a4;
    v9 = a5;
  }

  v8[7] = a3;
  v20 = v17;
  v21 = v18;
  v22 = v19;
  v23 = v9;
  if (a4)
  {
    type metadata accessor for MapsSyncDateRange(0);
    v24 = sub_1B63BECA4();

    v8[8] = v24;
    if (a5)
    {
LABEL_11:
      sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
      v25 = sub_1B63BECA4();

      goto LABEL_14;
    }
  }

  else
  {
    v24 = 0;
    v8[8] = 0;
    if (a5)
    {
      goto LABEL_11;
    }
  }

  v25 = 0;
LABEL_14:
  v8[9] = v25;
  v26 = swift_task_alloc();
  v8[10] = v26;
  *v26 = v8;
  v26[1] = sub_1B62AD410;

  return VisitRequest.count(searchTerm:topLevelCategories:regions:dateRanges:sortDescriptors:range:)(v28, a1, a2, a3, v24, v25, a6);
}

uint64_t sub_1B63ABEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[62] = a2;
  v3[63] = a3;
  v3[61] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B63ABEE0, 0, 0);
}

uint64_t sub_1B63ABEE0()
{
  v2 = v0[61];
  v1 = v0[62];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943720, &qword_1B63C6B20);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 16) = xmmword_1B63C3D50;
  *(v3 + 56) = v4;
  *(v3 + 32) = 1684632941;
  *(v3 + 40) = 0xE400000000000000;
  v5 = objc_allocWithZone(type metadata accessor for MapsSyncDictionaryQueryOptions());
  v6 = OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToGroupBy;
  *&v5[OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToGroupBy] = 0;
  *&v5[OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToFetch] = v3;
  *&v5[v6] = 0;
  v7 = sub_1B62895F4(0, 0, 0);
  v0[64] = v7;
  v0[65] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D50;
  *(inited + 56) = v4;
  v9 = sub_1B6281318();
  v0[66] = v9;
  *(inited + 64) = v9;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  v10 = v7;

  v11 = sub_1B628E52C(0xD00000000000001DLL, 0x80000001B63C81A0, inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  v12 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_predicate;
  swift_beginAccess();
  v13 = *&v10[v12];
  *&v10[v12] = v11;

  v14 = objc_allocWithZone(type metadata accessor for CollectionPlaceItemRequest());
  if (qword_1EDB0F2A0 != -1)
  {
    v18 = v14;
    swift_once();
    v14 = v18;
  }

  v0[67] = [v14 initWithStore_];
  v15 = swift_task_alloc();
  v0[68] = v15;
  *v15 = v0;
  v15[1] = sub_1B63AC150;

  return sub_1B63AFE34(v10, v16);
}

uint64_t sub_1B63AC150(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 536);
  *(v3 + 552) = a1;
  *(v3 + 560) = v1;

  if (v1)
  {
    v5 = sub_1B62AED84;
  }

  else
  {
    v5 = sub_1B63AC284;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B63AC284()
{
  super_class = v0[34].super_class;
  receiver = v0[33].receiver;
  v3 = v0[30].super_class;
  v2 = v0[31].receiver;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B63C3D60;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D50;
  v6 = MEMORY[0x1E69E6158];
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = receiver;
  *(inited + 32) = v3;
  *(inited + 40) = v2;

  v7 = sub_1B628E52C(0xD000000000000024, 0x80000001B63CC920, inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  *(v4 + 32) = v7;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1B63C3D50;
  *(v8 + 56) = v6;
  *(v8 + 64) = receiver;
  *(v8 + 32) = v3;
  *(v8 + 40) = v2;

  v9 = sub_1B628E52C(0xD000000000000027, 0x80000001B63CC950, v8);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v8 + 32));
  *(v4 + 40) = v9;
  v10 = "Address CONTAINS[cd] %@";
  v53 = v0;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1B63C3D50;
  *(v11 + 56) = v6;
  *(v11 + 64) = receiver;
  *(v11 + 32) = v3;
  v12 = v11 + 32;
  *(v11 + 40) = v2;

  v13 = sub_1B628E52C(0xD000000000000028, 0x80000001B63CC980, v11);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v11 + 32));
  *(v4 + 48) = v13;
  v58 = v4;
  if (super_class >> 62)
  {
    v15 = v0;
    v14 = sub_1B63BF044();
    v56 = v4;
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v14 = *((super_class & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v0;
    v56 = v4;
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v16 = 0;
  v17 = (v15 + 376);
  v9 = super_class & 0xC000000000000001;
  v55 = *(v15 + 552) + 32;
  v4 = 1684632941;
  v54 = v14;
  do
  {
    if (v9)
    {
      v18 = MEMORY[0x1B8C92830](v16, *(v15 + 552));
    }

    else
    {
      v18 = *(v55 + 8 * v16);
    }

    v19 = v18;
    *(v15 + 432) = 1684632941;
    *(v15 + 440) = 0xE400000000000000;
    v20 = [v18 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v20)
    {
      sub_1B63BEF84();
      swift_unknownObjectRelease();
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
    }

    *v17 = v59;
    *(v17 + 1) = v60;
    if (*(v15 + 400))
    {
      v21 = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v22 = *(v15 + 480);
        v23 = swift_initStackObject();
        *(v23 + 16) = xmmword_1B63C3D50;
        *(v23 + 56) = v21;
        *(v23 + 64) = sub_1B62B03CC(&qword_1EB942B80, &qword_1EDB0F620, 0x1E696AD98);
        *(v23 + 32) = v22;
        v24 = v22;
        sub_1B628E67C(v23);
        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_1((v23 + 32));
        Predicate = type metadata accessor for MapsSyncQueryPredicate();
        v26 = objc_allocWithZone(Predicate);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1B63C3D70;
        v28 = sub_1B63BEBC4();
        v29 = sub_1B63BEC94();

        v30 = [objc_opt_self() predicateWithFormat:v28 argumentArray:v29];

        *(v27 + 32) = v30;
        sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
        v31 = sub_1B63BEC94();

        *(v15 + 464) = v26;
        *(v15 + 472) = Predicate;
        objc_msgSendSuper2((v15 + 464), sel_initWithType_subpredicates_, 1, v31);

        MEMORY[0x1B8C92370]();
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B63BECC4();
        }

        sub_1B63BECE4();

        v56 = v58;
        v9 = super_class & 0xC000000000000001;
        v14 = v54;
        v4 = 1684632941;
      }

      else
      {
      }

      v17 = (v15 + 376);
    }

    else
    {

      sub_1B62B0364(v17);
    }

    ++v16;
  }

  while (v14 != v16);
LABEL_21:
  v15 = *(v15 + 504);

  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v56;
    v15 = v56 & 0xFFFFFFFFFFFFFF8;
    v9 = v56 >> 62;
    if (!(v56 >> 62))
    {
      v32 = v53[31].super_class;
      v33 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33 >= v32)
      {
        v34 = v53[31].super_class;
      }

      else
      {
        v34 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v32)
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      if (v33 >= v35)
      {
        goto LABEL_30;
      }

LABEL_68:
      __break(1u);
LABEL_69:
      sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);

      sub_1B63BF2A4();

      goto LABEL_51;
    }
  }

  if (v4 < 0)
  {
    v14 = v4;
  }

  else
  {
    v14 = v15;
  }

  v50 = sub_1B63BF044();
  result = sub_1B63BF044();
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v51 = v53[31].super_class;
  if (v50 >= v51)
  {
    v52 = v53[31].super_class;
  }

  else
  {
    v52 = v50;
  }

  if (v50 < 0)
  {
    v52 = v53[31].super_class;
  }

  if (v51)
  {
    v35 = v52;
  }

  else
  {
    v35 = 0;
  }

  if (sub_1B63BF044() < v35)
  {
    goto LABEL_68;
  }

LABEL_30:
  if ((v4 & 0xC000000000000001) != 0)
  {

    if (v35)
    {
      type metadata accessor for MapsSyncQueryPredicate();
      v36 = 0;
      do
      {
        v37 = v36 + 1;
        sub_1B63BF134();
        v36 = v37;
      }

      while (v35 != v37);
    }
  }

  else
  {
  }

  if (v9)
  {
    v15 = sub_1B63BF2C4();
    v12 = v38;
    v14 = v39;
    v10 = v40;

    if (v10)
    {
      goto LABEL_41;
    }

LABEL_40:
    sub_1B62B7940(v15, v12, v14, v10);
    v42 = v41;
LABEL_47:
    swift_unknownObjectRelease();
    goto LABEL_48;
  }

  v14 = 0;
  v12 = v15 + 32;
  v10 = (2 * v35) | 1;
  if ((v10 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_41:
  sub_1B63BF384();
  swift_unknownObjectRetain_n();
  v43 = swift_dynamicCastClass();
  if (!v43)
  {
    swift_unknownObjectRelease();
    v43 = MEMORY[0x1E69E7CC0];
  }

  v44 = *(v43 + 16);

  if (__OFSUB__(v10 >> 1, v14))
  {
    goto LABEL_71;
  }

  if (v44 != (v10 >> 1) - v14)
  {
LABEL_72:
    swift_unknownObjectRelease_n();
    goto LABEL_40;
  }

  v42 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v42)
  {
    v42 = MEMORY[0x1E69E7CC0];
    goto LABEL_47;
  }

LABEL_48:
  v15 = type metadata accessor for MapsSyncQueryPredicate();
  v14 = objc_allocWithZone(v15);
  if (v42 < 0 || (v42 & 0x4000000000000000) != 0)
  {
    goto LABEL_69;
  }

  sub_1B63BF374();
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
LABEL_51:
  v45 = v53[32].receiver;

  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v46 = sub_1B63BEC94();

  v53[28].receiver = v14;
  v53[28].super_class = v15;
  v47 = objc_msgSendSuper2(v53 + 28, sel_initWithType_subpredicates_, 2, v46);

  v48 = v53->super_class;

  return v48(v47);
}

uint64_t sub_1B63ACAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[49] = a6;
  v7[50] = a7;
  v7[47] = a4;
  v7[48] = a5;
  v7[45] = a2;
  v7[46] = a3;
  v7[44] = a1;
  v8 = sub_1B63BE994();
  v7[51] = v8;
  v7[52] = *(v8 - 8);
  v7[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B63ACBC4, 0, 0);
}

uint64_t sub_1B63ACBC4()
{
  v2 = v0;
  receiver = v0[23].receiver;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B63C3D70;
  *(v4 + 32) = sub_1B628E52C(0xD00000000000007BLL, 0x80000001B63CC810, MEMORY[0x1E69E7CC0]);
  v0[21].receiver = v4;
  if (receiver)
  {
    v5 = v0[23].receiver;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B63C3D50;
    *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943078, &qword_1B63C3E28);
    *(inited + 64) = sub_1B62B0310(&qword_1EB943080, &qword_1EB943078, &qword_1B63C3E28);
    *(inited + 32) = v5;
    v1 = (inited + 32);

    sub_1B628E52C(0xD000000000000026, 0x80000001B63CC8F0, inited);
    swift_setDeallocating();
    v7 = __swift_destroy_boxed_opaque_existential_1((inited + 32));
    MEMORY[0x1B8C92370](v7);
    if (*((v0[21].receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[21].receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v4 = v0[21].receiver;
    v8 = 998;
    super_class = v0[23].super_class;
    if (!super_class)
    {
LABEL_5:
      v10 = v0[24].receiver;
      if (!v10)
      {
        goto LABEL_53;
      }

LABEL_11:
      if (v10 >> 62)
      {
        v13 = sub_1B63BF044();
      }

      else
      {
        v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = MEMORY[0x1E69E7CC0];
      if (v13)
      {
        v81 = MEMORY[0x1E69E7CC0];
        sub_1B63BF184();
        if (v13 < 0)
        {
          __break(1u);
LABEL_78:
          sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);

          sub_1B63BF2A4();

          goto LABEL_59;
        }

        v73 = v8;
        v15 = v0[26].receiver;
        v16 = 0;
        v76 = v0[24].receiver & 0xC000000000000001;
        v77 = objc_opt_self();
        v75 = (v15 + 16);
        v74 = (v15 + 8);
        v78 = v13;
        v79 = v10;
        do
        {
          if (v76)
          {
            v17 = MEMORY[0x1B8C92830](v16, v10);
          }

          else
          {
            v17 = *(v10 + 8 * v16 + 32);
          }

          v80 = v17;
          v18 = v2[26].super_class;
          v19 = v2[25].super_class;
          ++v16;
          v20 = &v17[OBJC_IVAR____TtC8MapsSync17MapsSyncDateRange__range];
          v21 = *v75;
          (*v75)(v18, &v17[OBJC_IVAR____TtC8MapsSync17MapsSyncDateRange__range], v19);
          v22 = sub_1B63BE954();
          v23 = *v74;
          (*v74)(v18, v19);
          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943630, &qword_1B63C3E10);
          v21(v18, &v20[*(v24 + 36)], v19);
          v25 = sub_1B63BE954();
          v23(v18, v19);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
          v26 = swift_initStackObject();
          *(v26 + 16) = xmmword_1B63C3D80;
          v27 = sub_1B6281C60(0, &qword_1EDB0E6D0, 0x1E695DF00);
          *(v26 + 56) = v27;
          v28 = sub_1B62B03CC(&qword_1EDB0E6C8, &qword_1EDB0E6D0, 0x1E695DF00);
          v29 = v2;
          *(v26 + 32) = v22;
          *(v26 + 96) = v27;
          *(v26 + 104) = v28;
          *(v26 + 64) = v28;
          *(v26 + 72) = v25;
          v30 = v22;
          v31 = v25;
          sub_1B628E67C(v26);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943060, &qword_1B63C3E18);
          swift_arrayDestroy();
          Predicate = type metadata accessor for MapsSyncQueryPredicate();
          v33 = objc_allocWithZone(Predicate);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_1B63C3D70;
          v35 = sub_1B63BEBC4();
          v36 = sub_1B63BEC94();

          v37 = [v77 predicateWithFormat:v35 argumentArray:v36];

          *(v34 + 32) = v37;
          sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
          v38 = sub_1B63BEC94();
          v2 = v29;

          v29[19].receiver = v33;
          v29[19].super_class = Predicate;
          objc_msgSendSuper2(v29 + 19, sel_initWithType_subpredicates_, 1, v38);

          sub_1B63BF164();
          sub_1B63BF194();
          sub_1B63BF1A4();
          sub_1B63BF174();
          v10 = v79;
        }

        while (v78 != v16);
        v14 = v81;
        v8 = v73;
      }

      v39 = v14 >> 62;
      if (!(v14 >> 62))
      {
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v8)
        {
          v40 = v8;
        }

        else
        {
          v40 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        goto LABEL_25;
      }

      result = sub_1B63BF044();
      if (result >= v8)
      {
        v71 = v8;
      }

      else
      {
        v71 = result;
      }

      if (result >= 0)
      {
        v40 = v71;
      }

      else
      {
        v40 = v8;
      }

      if (v40 < 0)
      {
        __break(1u);
      }

      else
      {
        result = sub_1B63BF044();
        if ((result & 0x8000000000000000) == 0)
        {
          if (sub_1B63BF044() < v40)
          {
            __break(1u);
            goto LABEL_73;
          }

LABEL_25:
          if ((v14 & 0xC000000000000001) != 0)
          {

            if (v40)
            {
              type metadata accessor for MapsSyncQueryPredicate();
              v41 = 0;
              do
              {
                v42 = v41 + 1;
                sub_1B63BF134();
                v41 = v42;
              }

              while (v40 != v42);
            }
          }

          else
          {
          }

          if (v39)
          {
            v44 = sub_1B63BF2C4();
            v45 = v47;
            v43 = v48;
            v46 = v49;

            if ((v46 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v43 = 0;
            v44 = v14 & 0xFFFFFFFFFFFFFF8;
            v45 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
            v46 = (2 * v40) | 1;
            if ((v46 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          sub_1B63BF384();
          swift_unknownObjectRetain_n();
          v52 = swift_dynamicCastClass();
          if (!v52)
          {
            swift_unknownObjectRelease();
            v52 = MEMORY[0x1E69E7CC0];
          }

          v53 = *(v52 + 16);

          if (__OFSUB__(v46 >> 1, v43))
          {
            __break(1u);
          }

          else if (v53 == (v46 >> 1) - v43)
          {
            v51 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            if (v51)
            {
              goto LABEL_43;
            }

            v51 = MEMORY[0x1E69E7CC0];
LABEL_42:
            swift_unknownObjectRelease();
LABEL_43:
            LODWORD(v39) = v51 < 0 || (v51 & 0x4000000000000000) != 0;
            if (v39 != 1)
            {
              v54 = *(v51 + 16);
              v55 = __OFSUB__(v8, v54);
              v8 -= v54;
              if (!v55)
              {
                goto LABEL_48;
              }

              goto LABEL_75;
            }

LABEL_73:
            v72 = sub_1B63BF044();
            v55 = __OFSUB__(v8, v72);
            v8 -= v72;
            if (!v55)
            {
LABEL_48:
              v56 = type metadata accessor for MapsSyncQueryPredicate();
              v57 = objc_allocWithZone(v56);
              if (v39)
              {
                sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);

                sub_1B63BF2A4();
              }

              else
              {

                sub_1B63BF374();
                sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
              }

              sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
              v58 = sub_1B63BEC94();

              v2[20].receiver = v57;
              v2[20].super_class = v56;
              objc_msgSendSuper2(v2 + 20, sel_initWithType_subpredicates_, 2, v58);

              MEMORY[0x1B8C92370]();
              if (*((v2[21].receiver & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v2[21].receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_52;
              }

              goto LABEL_76;
            }

LABEL_75:
            __break(1u);
LABEL_76:
            sub_1B63BECC4();
LABEL_52:
            sub_1B63BECE4();
            v4 = v2[21].receiver;
            goto LABEL_53;
          }

          swift_unknownObjectRelease_n();
LABEL_35:
          sub_1B62B7940(v44, v45, v43, v46);
          v51 = v50;
          goto LABEL_42;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {
    v8 = 999;
    super_class = v0[23].super_class;
    if (!super_class)
    {
      goto LABEL_5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1B63C3D50;
  *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943068, &qword_1B63C3E20);
  *(v11 + 64) = sub_1B62B0310(&qword_1EB943070, &qword_1EB943068, &qword_1B63C3E20);
  *(v11 + 32) = super_class;
  v1 = (v11 + 32);

  sub_1B628E52C(0xD000000000000022, 0x80000001B63CC8C0, v11);
  swift_setDeallocating();
  v12 = __swift_destroy_boxed_opaque_existential_1((v11 + 32));
  MEMORY[0x1B8C92370](v12);
  if (*((v0[21].receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[21].receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B63BECC4();
  }

  sub_1B63BECE4();
  v4 = v0[21].receiver;
  --v8;
  v10 = v0[24].receiver;
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_53:
  v2[27].receiver = v4;
  v59 = v2[22].super_class;
  if (v59)
  {
    v60 = swift_task_alloc();
    v2[27].super_class = v60;
    *v60 = v2;
    *(v60 + 1) = sub_1B62AFA24;
    v61 = v2[22].receiver;

    return sub_1B63ABEBC(v61, v59, v8);
  }

  v10 = type metadata accessor for MapsSyncQueryPredicate();
  v1 = objc_allocWithZone(v10);
  if (v4 >> 62)
  {
    goto LABEL_78;
  }

  sub_1B63BF374();
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
LABEL_59:
  v64 = v2[24].super_class;
  v63 = v2[25].receiver;

  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v65 = sub_1B63BEC94();

  v2[17].receiver = v1;
  v2[17].super_class = v10;
  v66 = objc_msgSendSuper2(v2 + 17, sel_initWithType_subpredicates_, 1, v65);

  v67 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v68 = v63;

  v69 = sub_1B62895F4(v66, v64, v63);

  v70 = v2->super_class;

  return v70(v69);
}

uint64_t sub_1B63AD734()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1B628E340;

  return sub_1B63ABCB4(v2, v3, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1B63AD81C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1B628CAA0;

  return sub_1B63AB1F8(v2, v3, v4, v5, v6, v7, v9, v8);
}

id sub_1B63AD904()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCollection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B63AD990()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCollectionTransitItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FavoriteItemRequest.fetch(searchTerm:sortDescriptors:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[76] = v4;
  v5[75] = a4;
  v5[74] = a3;
  v5[73] = a2;
  v5[72] = a1;
  v5[77] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v5[78] = swift_task_alloc();
  v6 = sub_1B63BEA04();
  v5[79] = v6;
  v5[80] = *(v6 - 8);
  v5[81] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B63ADAD8, 0, 0);
}

uint64_t sub_1B63ADAD8()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v5 = qword_1EDB0F2A8;
  v6 = type metadata accessor for CollectionPlaceItem(0);
  *(v0 + 656) = v6;
  v7 = type metadata accessor for MapsSyncRequest();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = v5;
  *&v8[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v6;
  *(v0 + 536) = v8;
  *(v0 + 544) = v7;
  v9 = v5;
  *(v0 + 664) = objc_msgSendSuper2((v0 + 536), sel_init);
  *(v0 + 672) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D80;
  *(inited + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1B6281318();
  *(v0 + 680) = v11;
  *(inited + 64) = v11;
  *(inited + 32) = v4;
  *(inited + 40) = v3;
  v12 = MEMORY[0x1E69E72E8];
  *(inited + 96) = MEMORY[0x1E69E7290];
  *(inited + 104) = v12;
  *(inited + 72) = 2;

  v13 = sub_1B628E52C(0xD000000000000050, 0x80000001B63CC9D0, inited);
  *(v0 + 688) = v13;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943060, &qword_1B63C3E18);
  swift_arrayDestroy();
  Options = type metadata accessor for MapsSyncQueryOptions();
  *(v0 + 696) = Options;
  v15 = objc_allocWithZone(Options);
  v16 = v1;
  v17 = v13;

  v18 = sub_1B62895F4(v13, v2, v1);
  *(v0 + 704) = v18;

  v19 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_lazyLoad;
  swift_beginAccess();
  v18[v19] = 1;
  v20 = swift_task_alloc();
  *(v0 + 712) = v20;
  *v20 = v0;
  v20[1] = sub_1B63ADD70;

  return sub_1B63AF410(v18, v21);
}

uint64_t sub_1B63ADD70(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 720) = a1;
  *(v3 + 728) = v1;

  if (v1)
  {
    v4 = sub_1B63AEDD0;
  }

  else
  {
    v4 = sub_1B63ADE88;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B63ADE88()
{
  v1 = *(v0 + 720);
  v89 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 720);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 720);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v1 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v1, *(v0 + 720));
      }

      else
      {
        if (v1 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v1);
      }

      v10 = v9;
      v5 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v1;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v8 = v89;
  }

  while (v5 != v3);
LABEL_21:
  v86 = v8;
  v11 = *(v0 + 680);
  v12 = *(v0 + 584);
  v13 = *(v0 + 576);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B63C7050;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D50;
  v16 = MEMORY[0x1E69E6158];
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = v11;
  *(inited + 32) = v13;
  *(inited + 40) = v12;

  v17 = sub_1B628E52C(0xD00000000000001ALL, 0x80000001B63CA370, inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  *(v14 + 32) = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1B63C3D50;
  *(v18 + 56) = v16;
  *(v18 + 64) = v11;
  *(v18 + 32) = v13;
  *(v18 + 40) = v12;

  v19 = sub_1B628E52C(0xD00000000000001BLL, 0x80000001B63C81C0, v18);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v18 + 32));
  *(v14 + 40) = v19;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1B63C3D50;
  *(v20 + 56) = v16;
  *(v20 + 64) = v11;
  *(v20 + 32) = v13;
  *(v20 + 40) = v12;

  v21 = sub_1B628E52C(0xD00000000000001ELL, 0x80000001B63C81E0, v20);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v20 + 32));
  *(v14 + 48) = v21;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1B63C3D50;
  *(v22 + 56) = v16;
  *(v22 + 64) = v11;
  v23 = v86;
  *(v22 + 32) = v13;
  v24 = v22 + 32;
  *(v22 + 40) = v12;

  v25 = sub_1B628E52C(0xD00000000000001FLL, 0x80000001B63C8200, v22);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v22 + 32));
  *(v14 + 56) = v25;
  *(v0 + 568) = v14;
  if (v86 >> 62)
  {
    v26 = sub_1B63BF044();
    if (!v26)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v26 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_35;
    }
  }

  if (v26 < 1)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v27 = 0;
  v28 = *(v0 + 640);
  v29 = (v28 + 48);
  v84 = (v28 + 32);
  v83 = (v28 + 8);
  v85 = v26;
  v82 = (v28 + 48);
  do
  {
    if ((v86 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1B8C92830](v27, v23);
    }

    else
    {
      v31 = *(v23 + 8 * v27 + 32);
    }

    v32 = v31;
    v33 = *(v0 + 632);
    v34 = *(v0 + 624);
    sub_1B62D4AD4(v34);
    if ((*v29)(v34, 1, v33) == 1)
    {
      v30 = *(v0 + 624);

      sub_1B62B2DF0(v30);
    }

    else
    {
      (*v84)(*(v0 + 648), *(v0 + 624), *(v0 + 632));
      v35 = swift_initStackObject();
      *(v35 + 16) = xmmword_1B63C3D50;
      v36 = sub_1B63BE9C4();
      *(v35 + 56) = sub_1B6281C60(0, &qword_1EB943690, 0x1E696AFB0);
      *(v35 + 64) = sub_1B63A489C();
      *(v35 + 32) = v36;
      sub_1B628E67C(v35);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((v35 + 32));
      Predicate = type metadata accessor for MapsSyncQueryPredicate();
      v38 = objc_allocWithZone(Predicate);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1B63C3D70;
      v40 = sub_1B63BEBC4();
      v41 = sub_1B63BEC94();

      v42 = [objc_opt_self() predicateWithFormat:v40 argumentArray:v41];

      *(v39 + 32) = v42;
      sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
      v43 = sub_1B63BEC94();

      *(v0 + 552) = v38;
      *(v0 + 560) = Predicate;
      objc_msgSendSuper2((v0 + 552), sel_initWithType_subpredicates_, 1, v43);

      MEMORY[0x1B8C92370]();
      if (*((*(v0 + 568) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 568) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B63BECC4();
      }

      v44 = *(v0 + 648);
      v45 = *(v0 + 632);
      sub_1B63BECE4();

      (*v83)(v44, v45);
      v14 = *(v0 + 568);
      v23 = v86;
      v26 = v85;
      v29 = v82;
    }

    ++v27;
  }

  while (v26 != v27);
LABEL_35:
  *(v0 + 736) = v14;

  v46 = v14 >> 62;
  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 0x3B6)
    {
      v48 = 950;
    }

    else
    {
      v48 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result >= v48)
    {
      goto LABEL_40;
    }

LABEL_76:
    __break(1u);
    return result;
  }

  v80 = sub_1B63BF044();
  if (sub_1B63BF044() < 0)
  {
    __break(1u);
LABEL_65:
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);

    sub_1B63BF2A4();

    goto LABEL_60;
  }

  if (v80 >= 0x3B6)
  {
    v81 = 950;
  }

  else
  {
    v81 = v80;
  }

  if (v80 >= 0)
  {
    v48 = v81;
  }

  else
  {
    v48 = 950;
  }

  result = sub_1B63BF044();
  if (result < v48)
  {
    goto LABEL_76;
  }

LABEL_40:
  if ((v14 & 0xC000000000000001) == 0)
  {

    if (!v46)
    {
      goto LABEL_45;
    }

LABEL_48:

    v25 = sub_1B63BF2C4();
    v22 = v52;
    v23 = v53;
    if (v53)
    {
      goto LABEL_50;
    }

LABEL_49:
    sub_1B62B7940(v25, v51, v22, v23);
    v55 = v54;
LABEL_56:
    swift_unknownObjectRelease();
    goto LABEL_57;
  }

  if (v48)
  {
    type metadata accessor for MapsSyncQueryPredicate();
    v49 = 0;
    do
    {
      v50 = v49 + 1;
      sub_1B63BF134();
      v49 = v50;
    }

    while (v48 != v50);
  }

  if (v46)
  {
    goto LABEL_48;
  }

LABEL_45:
  v22 = 0;
  v25 = v14 & 0xFFFFFFFFFFFFFF8;
  v51 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
  v23 = (2 * v48) | 1;
  if ((v23 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_50:
  v24 = v51;
  sub_1B63BF384();
  swift_unknownObjectRetain_n();
  v56 = swift_dynamicCastClass();
  if (!v56)
  {
    swift_unknownObjectRelease();
    v56 = MEMORY[0x1E69E7CC0];
  }

  v57 = *(v56 + 16);

  if (__OFSUB__(v23 >> 1, v22))
  {
    goto LABEL_67;
  }

  if (v57 != (v23 >> 1) - v22)
  {
LABEL_68:
    swift_unknownObjectRelease();
    v51 = v24;
    goto LABEL_49;
  }

  v55 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v55)
  {
    v55 = MEMORY[0x1E69E7CC0];
    goto LABEL_56;
  }

LABEL_57:
  if (v55 < 0 || (v55 & 0x4000000000000000) != 0)
  {
    goto LABEL_65;
  }

  sub_1B63BF374();
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
LABEL_60:
  v87 = *(v0 + 696);
  v88 = *(v0 + 616);
  v58 = *(v0 + 608);
  v59 = *(v0 + 600);
  v60 = *(v0 + 592);

  v61 = type metadata accessor for MapsSyncQueryPredicate();
  v62 = objc_allocWithZone(v61);
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v63 = sub_1B63BEC94();

  v64 = [v62 initWithType:2 subpredicates:v63];
  *(v0 + 744) = v64;

  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1B63C4B90;
  *(v65 + 32) = _s8MapsSync0aB14QueryPredicateC013mapsFavoritesD06hidden20includeNearbyTransitACSb_SbtFZ_0(0, 1);
  *(v65 + 40) = v64;
  v66 = objc_allocWithZone(v61);
  v67 = v64;
  v68 = sub_1B63BEC94();

  v69 = [v66 initWithType:1 subpredicates:v68];
  *(v0 + 752) = v69;

  v70 = objc_allocWithZone(v87);

  v71 = v59;
  v72 = v69;
  v73 = sub_1B62895F4(v69, v60, v59);
  *(v0 + 760) = v73;

  v74 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_lazyLoad;
  swift_beginAccess();
  v73[v74] = 1;
  v75 = v73;
  *(v0 + 768) = sub_1B62835B4();
  v76 = swift_allocObject();
  *(v0 + 776) = v76;
  v76[2] = v58;
  v76[3] = v73;
  v76[4] = v88;
  v77 = v75;
  v78 = v58;
  v79 = swift_task_alloc();
  *(v0 + 784) = v79;
  *v79 = v0;
  v79[1] = sub_1B63AE9A0;

  return sub_1B62857BC(sub_1B6283660, v76);
}

uint64_t sub_1B63AE9A0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 792) = a1;
  *(v3 + 800) = v1;

  if (v1)
  {
    v4 = sub_1B63AECE8;
  }

  else
  {

    v4 = sub_1B63AEACC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B63AEACC()
{
  v1 = *(v0 + 792);

  v18 = MEMORY[0x1E69E7CC0];
  if (!(v1 >> 62))
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  v3 = sub_1B63BF044();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = *(v0 + 792) + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = v4;
    while (1)
    {
      if (v5)
      {
        v8 = MEMORY[0x1B8C92830](v7, *(v0 + 792));
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v8 = *(v6 + 8 * v7);
      }

      v9 = v8;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for FavoriteItem(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v18;
  }

  while (v4 != v3);
LABEL_21:
  v17 = v1;
  v10 = *(v0 + 760);
  v11 = *(v0 + 752);
  v12 = *(v0 + 744);
  v13 = *(v0 + 704);
  v14 = *(v0 + 688);

  v15 = *(v0 + 8);

  return v15(v17);
}

uint64_t sub_1B63AECE8()
{
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[93];
  v4 = v0[88];
  v5 = v0[86];
  v6 = v0[83];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B63AEDD0()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 664);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B63AEFFC(uint64_t a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = sub_1B63BEBD4();
  v11 = v10;
  v5[5] = v10;
  if (a2)
  {
    sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
    a2 = sub_1B63BECA4();
  }

  v5[6] = a2;
  v12 = a3;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_1B63AF120;

  return FavoriteItemRequest.fetch(searchTerm:sortDescriptors:range:)(v9, v11, a2, a3);
}

uint64_t sub_1B63AF120(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_1B63BE814();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for FavoriteItem(0);
    v8 = sub_1B63BEC94();

    v10 = v8;
    v9 = 0;
  }

  v11 = *(v4 + 32);
  (v11)[2](v11, v10, v9);

  _Block_release(v11);
  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_1B63AF304()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B628E340;

  return sub_1B63AEFFC(v2, v3, v4, v5, v6);
}

uint64_t sub_1B63AF3CC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedIncidentReport();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

uint64_t sub_1B63AF410(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B629DA68, 0, 0);
}

uint64_t sub_1B63AF480(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B63AF5DC, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1B63AF5DC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1B63AF648(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = a2;
  v4 = 0;
  v5 = a1 + 32;
  v26 = *(a1 + 16);
  v28 = a1 + 32;
  v29 = OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type;
  do
  {
    v6 = *(v5 + 8 * v4);
    if (v6 >> 62)
    {
      if (sub_1B63BF044() < 2)
      {
        goto LABEL_4;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_4;
    }

    v7 = *(v30 + v29);
    v8 = sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);

    v9 = sub_1B63BEC94();
    v32 = [v7 mergeWithDuplicates_];

    v33 = MEMORY[0x1E69E7CC0];
    if (v6 >> 62)
    {
      v10 = sub_1B63BF044();
      if (v10)
      {
LABEL_9:
        v31 = v4;
        v11 = 0;
        v12 = (v6 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1B8C92830](v11, v6);
          }

          else
          {
            if (v11 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_45;
            }

            v13 = *(v6 + 8 * v11 + 32);
          }

          v14 = v13;
          v2 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          v7 = v8;
          if (sub_1B63BEF24())
          {
          }

          else
          {
            sub_1B63BF164();
            v3 = *(v33 + 2);
            sub_1B63BF194();
            sub_1B63BF1A4();
            v7 = &v33;
            sub_1B63BF174();
          }

          ++v11;
          if (v2 == v10)
          {
            v7 = v33;
            v2 = v26;
            v3 = a2;
            v4 = v31;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        swift_once();
LABEL_42:
        v24 = qword_1EDB0F680;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1B63C3D50;
        *(v25 + 56) = MEMORY[0x1E69E6158];
        *(v25 + 64) = sub_1B6281318();
        *(v25 + 32) = v3;
        *(v25 + 40) = v2;
        sub_1B63BEA14(v7, &dword_1B627F000, v24, "%{public}@", 10, 2, v25);

        return;
      }
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_9;
      }
    }

    v7 = MEMORY[0x1E69E7CC0];
LABEL_22:

    if (v7 < 0 || (v7 & 0x4000000000000000) != 0)
    {
      v15 = sub_1B63BF044();
      if (v15)
      {
LABEL_25:
        v16 = 0;
        v12 = (v7 & 0xC000000000000001);
        do
        {
          if (v12)
          {
            v17 = MEMORY[0x1B8C92830](v16, v7);
          }

          else
          {
            if (v16 >= *(v7 + 16))
            {
              goto LABEL_47;
            }

            v17 = *(v7 + 8 * v16 + 32);
          }

          v18 = v17;
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_46;
          }

          [v3 deleteObject_];

          ++v16;
        }

        while (v19 != v15);
      }
    }

    else
    {
      v15 = *(v7 + 16);
      if (v15)
      {
        goto LABEL_25;
      }
    }

    v5 = v28;
LABEL_4:
    ++v4;
  }

  while (v4 != v2);
  v33 = 0;
  v20 = [v3 save_];
  v21 = v33;
  if (!v20)
  {
    v23 = v33;
    v12 = sub_1B63BE824();

    swift_willThrow();
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1B63BF114();
    MEMORY[0x1B8C92330](0x616620656772654DLL, 0xEE00203A64656C69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    sub_1B63BF1B4();
    v3 = v33;
    v2 = v34;
    v7 = sub_1B63BEDC4();
    if (qword_1EDB0F690 != -1)
    {
      goto LABEL_48;
    }

    goto LABEL_42;
  }

  v22 = v21;
}

uint64_t sub_1B63AFAF8(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B63AFB68, 0, 0);
}

uint64_t sub_1B63AFB68()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B63AFC6C;

  return sub_1B629CD38(sub_1B629D160, v3);
}

uint64_t sub_1B63AFC6C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B63AFDC8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1B63AFDC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B63AFE34(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B63AFEA4, 0, 0);
}

uint64_t sub_1B63AFEA4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B629D880;

  return sub_1B62AD654(sub_1B63B10C8, v4);
}

uint64_t sub_1B63B0128(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = swift_getObjectType();
  v2[4] = _Block_copy(a1);
  v5 = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B63B01B4, 0, 0);
}

uint64_t sub_1B63B01B4()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[5] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[6] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1B63B02B8;

  return sub_1B629CD38(sub_1B629D148, v3);
}

uint64_t sub_1B63B02B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1B63B0478;
  }

  else
  {

    *(v4 + 72) = a1;
    v5 = sub_1B63B03F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B63B03F0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);

  (*(v2 + 16))(v2, v1, 0);
  _Block_release(*(v0 + 32));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B63B0478()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  v4 = sub_1B63BE814();
  (*(v2 + 16))(v2, 0, v4);

  _Block_release(*(v0 + 32));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B63B06B8(void *a1, const void *a2, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = swift_getObjectType();
  v3[5] = _Block_copy(a2);
  v7 = a1;
  v8 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1B63B0754, 0, 0);
}

uint64_t sub_1B63B0754()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[6] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v3;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1B63B0864;

  return sub_1B629CD38(sub_1B629D148, v4);
}

uint64_t sub_1B63B0864(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1B63B0A30;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_1B63B099C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B63B099C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);

  (*(v2 + 16))(v2, v1, 0);
  _Block_release(*(v0 + 40));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B63B0A30()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  v5 = sub_1B63BE814();
  (*(v2 + 16))(v2, 0, v5);

  _Block_release(*(v0 + 40));
  v6 = *(v0 + 8);

  return v6();
}

void sub_1B63B0AF4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type);
  v9 = swift_conformsToProtocol2();
  if (v9)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    (*(v9 + 8))(*(a2 + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store), a1, v8);
    if (v40)
    {
      return;
    }

    v40 = 0;
  }

  if (*(*(a2 + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store) + OBJC_IVAR____TtC8MapsSync13MapsSyncStore_shouldDeleteDuplicates) == 1)
  {
    v11 = [v8 findDuplicatesWithContext_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943710, &qword_1B63C3EB8);
    v12 = sub_1B63BECA4();

    sub_1B63AF648(v12, a1);
  }

  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v8 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = (*(v13 + 8))(a3, v8, v13);
    sub_1B639E494(v15);
  }

  v8[68]();
  v16 = [swift_getObjCClassFromMetadata() entityName];
  if (!v16)
  {
    sub_1B63BEBD4();
    v16 = sub_1B63BEBC4();
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

  [v17 setResultType_];
  v18 = sub_1B63BEC94();
  [v17 setPropertiesToFetch_];

  v19 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_predicate;
  swift_beginAccess();
  v20 = *(a3 + v19);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1B63C4B90;
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    v22 = v20;
    *(v21 + 32) = sub_1B63BED94();
    *(v21 + 40) = v22;
    v23 = objc_allocWithZone(MEMORY[0x1E696AB28]);
    v24 = v22;
    v25 = sub_1B63BEC94();

    v26 = [v23 initWithType:1 subpredicates:v25];
  }

  else
  {
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    v26 = sub_1B63BED94();
  }

  [v17 setPredicate_];

  v27 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_sortDescriptors;
  swift_beginAccess();
  if (!*(a3 + v27))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1B63C3D70;
    v29 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v30 = sub_1B63BEBC4();
    v31 = [v29 initWithKey:v30 ascending:1];

    *(v28 + 32) = v31;
  }

  sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);

  v32 = sub_1B63BEC94();

  [v17 setSortDescriptors_];

  v33 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_range;
  swift_beginAccess();
  v34 = *(a3 + v33);
  if (v34)
  {
    v35 = &v34[OBJC_IVAR____TtC8MapsSync13MapsSyncRange__range];
    v36 = *&v34[OBJC_IVAR____TtC8MapsSync13MapsSyncRange__range];
    v37 = v34;
    [v17 setFetchOffset_];
    [v17 setFetchLimit_];
  }

  if (*(a3 + OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToGroupBy))
  {

    v38 = sub_1B63BEC94();

    [v17 setPropertiesToGroupBy_];
  }

  sub_1B6281C60(0, &qword_1EB942B90, 0x1E695DF20);
  v39 = sub_1B63BEEA4();

  if (!v40)
  {
    *a4 = v39;
  }
}

uint64_t sub_1B63B1270(void *a1, const void *a2, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = swift_getObjectType();
  v3[5] = _Block_copy(a2);
  v7 = a1;
  v8 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1B63B130C, 0, 0);
}

uint64_t sub_1B63B130C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[6] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v3;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1B63B141C;

  return sub_1B62AD654(sub_1B63B45AC, v4);
}

uint64_t sub_1B63B141C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1B63B1614;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_1B63B1554;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B63B1554()
{
  v1 = *(v0 + 24);

  sub_1B6281C60(0, &qword_1EB942B90, 0x1E695DF20);
  v2 = sub_1B63BEC94();

  v3 = *(v0 + 40);
  (v3)[2](v3, v2, 0);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B63B1614()
{
  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];

  v4 = sub_1B63BE814();
  v5 = v0[5];
  (v5)[2](v5, 0, v4);

  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

void sub_1B63B16D0(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type);
  (*(v6 + 544))();
  v7 = [swift_getObjCClassFromMetadata() entityName];
  if (!v7)
  {
    sub_1B63BEBD4();
    v7 = sub_1B63BEBC4();
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E695D560]) initWithEntityName_];

  [v8 setResultType_];
  *&v36 = 0;
  sub_1B63BEB64();
  [v8 setPropertiesToUpdate_];

  v9 = swift_conformsToProtocol2();
  if (v9)
  {
    v10 = (*(v9 + 8))(a4, v6, v9);
  }

  else
  {
    if (!a4)
    {
      goto LABEL_11;
    }

    v10 = a4;
  }

  a4 = v10;
  v11 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_predicate;
  swift_beginAccess();
  v12 = *&a4[v11];
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B63C4B90;
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    v14 = v12;
    *(v13 + 32) = sub_1B63BED94();
    *(v13 + 40) = v14;
    v15 = objc_allocWithZone(MEMORY[0x1E696AB28]);
    v16 = v14;
    v17 = sub_1B63BEC94();

    v18 = [v15 initWithType:1 subpredicates:v17];
  }

  else
  {
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    v18 = sub_1B63BED94();
  }

  [v8 setPredicate_];

LABEL_11:
  *&v36 = 0;
  v19 = [a1 executeRequest:v8 error:&v36];
  v20 = v36;
  if (!v19)
  {
    v24 = v36;
    sub_1B63BE824();

    swift_willThrow();
LABEL_23:

    return;
  }

  v21 = v19;
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  v23 = v20;
  if (!v22)
  {

    v36 = 0u;
    v37 = 0u;
LABEL_25:
    sub_1B6284EAC(&v36, &unk_1EB943740, &qword_1B63C5030);
    return;
  }

  if ([v22 result])
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {

    goto LABEL_25;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437B8, &qword_1B63C7120);
  if (swift_dynamicCast())
  {
    *&v36 = 0;
    *(&v36 + 1) = 0xE000000000000000;
    sub_1B63BF114();

    *&v36 = 0xD000000000000018;
    *(&v36 + 1) = 0x80000001B63CCC10;
    if (v34 >> 62)
    {
      sub_1B63BF044();
    }

    v26 = sub_1B63BF344();
    MEMORY[0x1B8C92330](v26);

    MEMORY[0x1B8C92330](0x287463656A626F20, 0xEA00000000002973);
    _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v36, *(&v36 + 1));

    v27 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB9437C0, &qword_1B63C7128);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B63C3D50;
    *&v36 = sub_1B63BEBD4();
    *(&v36 + 1) = v29;
    sub_1B63BF0C4();
    *(inited + 96) = v25;
    *(inited + 72) = v34;
    sub_1B6382C3C(inited);
    swift_setDeallocating();
    sub_1B6284EAC(inited + 32, &qword_1EB9434F0, &qword_1B63C61A8);
    v30 = sub_1B63BEB54();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1B63C3D70;
    *(v31 + 32) = a1;
    sub_1B6281C60(0, &unk_1EDB0EF80, 0x1E695D628);
    v32 = a1;
    v33 = sub_1B63BEC94();

    [v27 mergeChangesFromRemoteContextSave:v30 intoContexts:v33];

    goto LABEL_23;
  }
}

uint64_t sub_1B63B1F3C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;

  return MEMORY[0x1EEE6DFA0](sub_1B63B1FD4, 0, 0);
}

uint64_t sub_1B63B1FD4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v0[6] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v5 = v3;
  v6 = v2;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1B63B20EC;

  return (sub_1B62ADB40)();
}

uint64_t sub_1B63B20EC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B63B22A0;
  }

  else
  {

    v2 = sub_1B63B2210;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B63B2210()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 40));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B63B22A0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  v5 = sub_1B63BE814();
  (*(v2 + 16))(v2, v5);

  _Block_release(*(v0 + 40));
  v6 = *(v0 + 8);

  return v6();
}

void sub_1B63B2368(void *a1, uint64_t a2, char *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type);
  (*(v5 + 544))();
  v6 = [swift_getObjCClassFromMetadata() fetchRequest];
  v7 = swift_conformsToProtocol2();
  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (!a3)
    {
      goto LABEL_16;
    }

    v9 = a3;
  }

  else
  {
    v9 = (*(v7 + 8))(a3, v5, v7);
  }

  a3 = v9;
  v10 = a1;
  v11 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_predicate;
  swift_beginAccess();
  v12 = *&a3[v11];
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B63C4B90;
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    v14 = v12;
    *(v13 + 32) = sub_1B63BED94();
    *(v13 + 40) = v14;
    v15 = objc_allocWithZone(MEMORY[0x1E696AB28]);
    v16 = v14;
    v17 = sub_1B63BEC94();

    v18 = [v15 initWithType:1 subpredicates:v17];
  }

  else
  {
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    v18 = sub_1B63BED94();
  }

  [v6 setPredicate_];

  v19 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_sortDescriptors;
  swift_beginAccess();
  if (!*&a3[v19])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1B63C3D70;
    v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v22 = sub_1B63BEBC4();
    v23 = [v21 initWithKey:v22 ascending:1];

    *(v20 + 32) = v23;
  }

  a1 = v10;
  sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);

  v24 = sub_1B63BEC94();

  [v6 setSortDescriptors_];

  v25 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_range;
  swift_beginAccess();
  v26 = *&a3[v25];
  if (v26)
  {
    v27 = &v26[OBJC_IVAR____TtC8MapsSync13MapsSyncRange__range];
    v28 = *&v26[OBJC_IVAR____TtC8MapsSync13MapsSyncRange__range];
    v29 = v26;
    [v6 setFetchOffset_];
    [v6 setFetchLimit_];
  }

LABEL_16:
  v30 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  [v30 setResultType_];
  *&v49 = 0;
  v31 = [a1 executeRequest:v30 error:&v49];
  v32 = v49;
  if (!v31)
  {
    v36 = v49;
    sub_1B63BE824();

    swift_willThrow();
    return;
  }

  v33 = v31;
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  v35 = v32;
  if (!v34)
  {

    v49 = 0u;
    v50 = 0u;
LABEL_29:
    sub_1B6284EAC(&v49, &unk_1EB943740, &qword_1B63C5030);
    return;
  }

  if ([v34 result])
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49 = v47;
  v50 = v48;
  if (!*(&v48 + 1))
  {

    goto LABEL_29;
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437B8, &qword_1B63C7120);
  if (swift_dynamicCast())
  {
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    sub_1B63BF114();

    *&v49 = 0xD000000000000018;
    *(&v49 + 1) = 0x80000001B63CCBF0;
    v38 = a1;
    if (v47 >> 62)
    {
      sub_1B63BF044();
    }

    v39 = sub_1B63BF344();
    MEMORY[0x1B8C92330](v39);

    MEMORY[0x1B8C92330](0x287463656A626F20, 0xEA00000000002973);
    _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v49, *(&v49 + 1));

    v46 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB9437C0, &qword_1B63C7128);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B63C3D50;
    *&v49 = sub_1B63BEBD4();
    *(&v49 + 1) = v41;
    sub_1B63BF0C4();
    *(inited + 96) = v37;
    *(inited + 72) = v47;
    sub_1B6382C3C(inited);
    swift_setDeallocating();
    sub_1B6284EAC(inited + 32, &qword_1EB9434F0, &qword_1B63C61A8);
    v42 = sub_1B63BEB54();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1B63C3D70;
    *(v43 + 32) = v38;
    sub_1B6281C60(0, &unk_1EDB0EF80, 0x1E695D628);
    v44 = v38;
    v45 = sub_1B63BEC94();

    [v46 mergeChangesFromRemoteContextSave:v42 intoContexts:v45];
  }

  else
  {
  }
}

uint64_t sub_1B63B2CCC(void *a1, const void *a2, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = swift_getObjectType();
  v3[5] = _Block_copy(a2);
  v7 = a1;
  v8 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1B63B2D68, 0, 0);
}

uint64_t sub_1B63B2D68()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[6] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v3;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1B63B2E78;

  return sub_1B62ADB40(sub_1B62ADB40, sub_1B63B34C8, v4);
}

uint64_t sub_1B63B2E78()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B63B3020;
  }

  else
  {

    v2 = sub_1B63B2F9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B63B2F9C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 40));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B63B3020()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);

  v4 = sub_1B63BE814();
  (*(v2 + 16))(v2, v4);

  _Block_release(*(v0 + 40));
  v5 = *(v0 + 8);

  return v5();
}

id MapsSyncRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSyncRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of MapsSyncRequest.count()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of MapsSyncRequest.fetchProperties(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B63B3414()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B63B2CCC(v2, v3, v4);
}

double sub_1B63B3540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t))
{
  (*(*(a5 + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type) + 544))();
  v10 = [swift_getObjCClassFromMetadata() entityName];
  if (!v10)
  {
    sub_1B63BEBD4();
    v10 = sub_1B63BEBC4();
  }

  v42 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

  [v42 setResultType_];
  v11 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  v12 = sub_1B63BEBC4();
  [v11 setName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943720, &qword_1B63C6B20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B63C3D50;
  v14 = sub_1B63BEBC4();
  v15 = objc_opt_self();
  v16 = [v15 expressionForKeyPath_];

  *(v13 + 56) = sub_1B6281C60(0, &qword_1EDB0F2F0, 0x1E696ABC8);
  *(v13 + 32) = v16;
  v17 = sub_1B63BEBC4();
  v18 = sub_1B63BEC94();

  v19 = [v15 expressionForFunction:v17 arguments:v18];

  [v11 setExpression_];
  [v11 setExpressionResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943700, &unk_1B63C3EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D50;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_1B639C584(inited);
  sub_1B639CA54(a4);

  v21 = sub_1B63BEC94();

  v22 = v42;
  [v42 setPropertiesToGroupBy_];

  v23 = sub_1B639CA54(a4);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1B63C3D80;
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 32) = a1;
  *(v24 + 40) = a2;
  *(v24 + 88) = sub_1B6281C60(0, &unk_1EDB0F2E0, 0x1E695D5C8);
  *(v24 + 64) = v11;
  *&v47[0] = v23;
  v25 = v11;

  sub_1B639C48C(v24);
  v26 = sub_1B63BEC94();

  [v42 setPropertiesToFetch_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1B63C3D70;
  v28 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v29 = sub_1B63BEBC4();
  v30 = [v28 initWithKey:v29 ascending:0];

  *(v27 + 32) = v30;
  sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
  v31 = sub_1B63BEC94();

  [v42 setSortDescriptors_];

  sub_1B6281C60(0, &qword_1EB942B90, 0x1E695DF20);
  v32 = sub_1B63BEEA4();
  if (v41)
  {
  }

  else
  {
    v34 = v32;
    if (v32 >> 62)
    {
      goto LABEL_28;
    }

    for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B63BF044())
    {
      v40 = v25;
      v25 = 0;
      while (1)
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x1B8C92830](v25, v34);
        }

        else
        {
          if (v25 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v36 = *(v34 + 8 * v25 + 32);
        }

        v37 = v36;
        v38 = (v25 + 1);
        if (__OFADD__(v25, 1))
        {
          break;
        }

        *&v45 = 0x746E756F63;
        *(&v45 + 1) = 0xE500000000000000;
        v22 = [v36 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v22)
        {
          sub_1B63BEF84();
          swift_unknownObjectRelease();
        }

        else
        {
          v45 = 0u;
          v46 = 0u;
        }

        v47[0] = v45;
        v47[1] = v46;
        if (*(&v46 + 1))
        {
          if (swift_dynamicCast())
          {
            if (v48 < 2)
            {

              v39 = v40;
              goto LABEL_25;
            }

            a7(v37, a6);
          }
        }

        else
        {

          sub_1B6284EAC(v47, &unk_1EB943740, &qword_1B63C5030);
        }

        ++v25;
        if (v38 == i)
        {

          v39 = v42;
LABEL_25:

          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }

LABEL_30:
  }

  return result;
}

double sub_1B63B3BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  (*(*(a5 + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type) + 544))();
  v12 = [swift_getObjCClassFromMetadata() entityName];
  if (!v12)
  {
    sub_1B63BEBD4();
    v12 = sub_1B63BEBC4();
  }

  v42 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

  [v42 setResultType_];
  v13 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  v14 = sub_1B63BEBC4();
  [v13 setName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943720, &qword_1B63C6B20);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B63C3D50;
  v16 = sub_1B63BEBC4();
  v17 = objc_opt_self();
  v18 = [v17 expressionForKeyPath_];

  *(v15 + 56) = sub_1B6281C60(0, &qword_1EDB0F2F0, 0x1E696ABC8);
  *(v15 + 32) = v18;
  v19 = sub_1B63BEBC4();
  v20 = sub_1B63BEC94();

  v21 = [v17 expressionForFunction:v19 arguments:v20];

  [v13 setExpression_];
  [v13 setExpressionResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943700, &unk_1B63C3EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D50;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_1B639C584(inited);
  sub_1B639CA54(a4);

  v23 = sub_1B63BEC94();

  [v42 setPropertiesToGroupBy_];

  v24 = sub_1B639CA54(a4);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1B63C3D80;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 32) = a1;
  *(v25 + 40) = a2;
  *(v25 + 88) = sub_1B6281C60(0, &unk_1EDB0F2E0, 0x1E695D5C8);
  *(v25 + 64) = v13;
  *&v50[0] = v24;
  v26 = v13;

  sub_1B639C48C(v25);
  v27 = sub_1B63BEC94();

  [v42 setPropertiesToFetch_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B63C3D70;
  v29 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v30 = sub_1B63BEBC4();
  v31 = [v29 initWithKey:v30 ascending:0];

  v32 = v42;
  *(v28 + 32) = v31;
  sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
  v33 = sub_1B63BEC94();

  [v42 setSortDescriptors_];

  sub_1B6281C60(0, &qword_1EB942B90, 0x1E695DF20);
  v34 = v46;
  v47 = sub_1B63BEEA4();
  if (v34)
  {
  }

  else
  {
    if (v47 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B63BF044())
    {
      v32 = 0;
      while (1)
      {
        if ((v47 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x1B8C92830](v32, v47);
        }

        else
        {
          if (v32 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v37 = *(v47 + 8 * v32 + 32);
        }

        v38 = v37;
        v39 = (v32 + 1);
        if (__OFADD__(v32, 1))
        {
          break;
        }

        *&v48 = 0x746E756F63;
        *(&v48 + 1) = 0xE500000000000000;
        v40 = [v37 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v40)
        {
          sub_1B63BEF84();
          swift_unknownObjectRelease();
        }

        else
        {
          v48 = 0u;
          v49 = 0u;
        }

        v50[0] = v48;
        v50[1] = v49;
        if (*(&v49 + 1))
        {
          if (swift_dynamicCast())
          {
            if (v51 < 2)
            {

              goto LABEL_29;
            }

            sub_1B639F524(v38, a6, a7, a8, a9, a10);
          }
        }

        else
        {

          sub_1B6284EAC(v50, &unk_1EB943740, &qword_1B63C5030);
        }

        ++v32;
        if (v39 == i)
        {

          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_29:
  }

  return result;
}

uint64_t sub_1B63B4298()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B628CAA0;

  return sub_1B63B1F3C(v2, v3, v5, v4);
}

uint64_t sub_1B63B4378()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628CAA0;

  return sub_1B63B1270(v2, v3, v4);
}

uint64_t sub_1B63B442C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628CAA0;

  return sub_1B63B06B8(v2, v3, v4);
}

uint64_t sub_1B63B44E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B63B0128(v2, v3);
}

id sub_1B63B4620(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedAnalyticsIdentifier();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1B63B46D0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B63B472C(uint64_t a1)
{
  result = 0xD000000000000010;
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 == 3)
      {
        return 0xD00000000000001BLL;
      }

      return result;
    }

    if (a1 == 5)
    {
      return 0xD000000000000016;
    }

    if (a1 == 6)
    {
      return 0xD00000000000002ALL;
    }

LABEL_16:
    result = sub_1B63BF3A4();
    __break(1u);
    return result;
  }

  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  if (a1 != 2)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B63B4880(uint64_t a1, uint64_t a2)
{
  sub_1B63BF434();
  sub_1B63BEB94();
  return sub_1B63BF494();
}

uint64_t sub_1B63B48E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B63B4C4C();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

uint64_t sub_1B63B4930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B63BF434();
  sub_1B63BEB94();
  return sub_1B63BF494();
}

uint64_t sub_1B63B4990(uint64_t a1)
{
  v2 = sub_1B63B4C4C();

  return MEMORY[0x1EEDC2D80](a1, v2);
}

uint64_t sub_1B63B49CC(uint64_t a1)
{
  v2 = sub_1B63B4C4C();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_1B63B4A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B63B4C4C();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

unint64_t sub_1B63B4A84()
{
  result = qword_1EB942F50;
  if (!qword_1EB942F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942F50);
  }

  return result;
}

unint64_t sub_1B63B4ADC()
{
  result = qword_1EB942F68;
  if (!qword_1EB942F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942F68);
  }

  return result;
}

unint64_t sub_1B63B4B34()
{
  result = qword_1EB942F58;
  if (!qword_1EB942F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942F58);
  }

  return result;
}

unint64_t sub_1B63B4B8C()
{
  result = qword_1EB942F48;
  if (!qword_1EB942F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942F48);
  }

  return result;
}

unint64_t sub_1B63B4BE4()
{
  result = qword_1EB942BA8;
  if (!qword_1EB942BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942BA8);
  }

  return result;
}

unint64_t sub_1B63B4C4C()
{
  result = qword_1EB942F60;
  if (!qword_1EB942F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942F60);
  }

  return result;
}

id sub_1B63B4D00(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedSharedTripBlockedItem();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B63B4DDC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x64756F6C43;
  }

  else
  {
    v2 = 0x6C61636F4CLL;
  }

  if (*a2)
  {
    v3 = 0x64756F6C43;
  }

  else
  {
    v3 = 0x6C61636F4CLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B63BF364();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1B63B4E5C()
{
  sub_1B63BF434();
  sub_1B63BEC24();

  return sub_1B63BF494();
}

double sub_1B63B4ECC(uint64_t a1)
{
  sub_1B63BEC24();

  return result;
}

uint64_t sub_1B63B4F20(uint64_t a1)
{
  sub_1B63BF434();
  sub_1B63BEC24();

  return sub_1B63BF494();
}

void sub_1B63B4F8C(char *a2@<X8>)
{
  v3 = sub_1B63BF314();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1B63B4FEC(uint64_t *a1@<X8>)
{
  v2 = 0x6C61636F4CLL;
  if (*v1)
  {
    v2 = 0x64756F6C43;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

unint64_t sub_1B63B5038@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B63B5264(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static MapsSyncStoreConfig.withConfig(primary:cache:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsSyncStoreConfig();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC8MapsSync19MapsSyncStoreConfig_primary] = a1;
  *&v5[OBJC_IVAR____TtC8MapsSync19MapsSyncStoreConfig_cache] = a2;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

id MapsSyncStoreConfig.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSyncStoreConfig.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncStoreConfig();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B63B5264(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B63B52A0()
{
  result = qword_1EB942F88;
  if (!qword_1EB942F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942F88);
  }

  return result;
}

id MapsSyncManagedCachedMapItemStorage.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id MapsSyncManagedCachedMapItemStorage.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MapsSyncManagedCachedMapItemStorage();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id MapsSyncManagedCachedMapItemStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCachedMapItemStorage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CollectionItem.__allocating_init(collection:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollection_];

  return v3;
}

id CollectionItem.init(collection:)(void *a1)
{
  v3 = [v1 init];
  sub_1B62CDF2C(a1);

  return v3;
}

id sub_1B63B55A4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedHistoryTransitItem();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B63B55FC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedCuratedCollection();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

uint64_t sub_1B63B5640@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedReviewedPlace();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

uint64_t sub_1B63B5728(void *a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;
  v8 = a2;
  MapsSyncCatchObjC(_:)(sub_1B63B5BD8, v6);
}

void sub_1B63B5910(void *a1, uint64_t a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v5 = [a1 countForFetchRequest:a2 error:v18];
  if (v18[0])
  {
    swift_willThrow();
  }

  else if (v5 > a3)
  {
    v6 = v5;
    type metadata accessor for MapsSyncManagedHistoryItem();
    v7 = [swift_getObjCClassFromMetadata() fetchRequest];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B63C3D70;
    v9 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v10 = sub_1B63BEBC4();
    v11 = [v9 initWithKey:v10 ascending:1];

    *(v8 + 32) = v11;
    sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
    v12 = sub_1B63BEC94();

    [v7 setSortDescriptors_];

    if (__OFSUB__(v6, a3))
    {
      __break(1u);
    }

    [v7 setFetchLimit_];
    v13 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
    v18[0] = 0;
    v14 = [a1 executeRequest:v13 error:v18];
    if (v14)
    {
      v15 = v14;
      v16 = v18[0];
    }

    else
    {
      v17 = v18[0];
      sub_1B63BE824();

      swift_willThrow();
    }
  }
}

unint64_t sub_1B63B5BF8(unint64_t result)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v1 = result;
  v2 = sub_1B63BF044();
  result = v1;
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1B8C92830](0, result);
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(result + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B63B5C84(id a1, uint64_t a2, char a3, uint64_t a4, char a5, void *a6)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  v8 = [swift_getObjCClassFromMetadata() entityName];
  if (!v8)
  {
    sub_1B63BEBD4();
    v8 = sub_1B63BEBC4();
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B63C4B90;
  v11 = (a5 & 1) == 0;
  v12 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v13 = sub_1B63BEBC4();
  v14 = [v12 initWithKey:v13 ascending:v11];

  *(v10 + 32) = v14;
  v15 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v16 = sub_1B63BEBC4();
  v17 = [v15 initWithKey:v16 ascending:v11];

  *(v10 + 40) = v17;
  sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
  v18 = sub_1B63BEC94();

  [v9 setSortDescriptors_];

  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  isEscapingClosureAtFileLocation = MEMORY[0x1E69E7CC0];
  v20 = sub_1B63BED94();
  [v9 setPredicate_];

  if (a1)
  {
    a1 = a1;
    v21 = sub_1B63BEBC4();
    v22 = [a1 valueForKey_];

    if (v22)
    {
      sub_1B63BEF84();
      swift_unknownObjectRelease();
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
    }

    aBlock = v71;
    v74 = v72;
    if (*(&v72 + 1))
    {
      if (swift_dynamicCast())
      {
        v65 = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
        if (a5)
        {
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1B63C3D50;
          v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
          *(v23 + 56) = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
          *(v23 + 64) = sub_1B62B03CC(&qword_1EB942B80, &qword_1EDB0F620, 0x1E696AD98);
          *(v23 + 32) = v24;
          v25 = sub_1B63BED94();
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_1B63C4B90;
          v27 = v25;
          *(v26 + 32) = sub_1B63BED94();
          *(v26 + 40) = v27;
          v28 = objc_allocWithZone(MEMORY[0x1E696AB28]);
          v29 = v27;
          v30 = sub_1B63BEC94();

          v31 = [v28 initWithType:1 subpredicates:v30];

          [v9 setPredicate_];
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_1B63C4B90;
          v33 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
          v34 = sub_1B63BEBC4();
          v35 = [v33 initWithKey:v34 ascending:0];

          *(v32 + 32) = v35;
          v36 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
          v37 = sub_1B63BEBC4();
          isEscapingClosureAtFileLocation = MEMORY[0x1E69E7CC0];
          v38 = [v36 initWithKey:v37 ascending:0];

          *(v32 + 40) = v38;
        }

        else
        {
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1B63C3D50;
          v41 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
          *(v40 + 56) = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
          *(v40 + 64) = sub_1B62B03CC(&qword_1EB942B80, &qword_1EDB0F620, 0x1E696AD98);
          *(v40 + 32) = v41;
          v42 = sub_1B63BED94();
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_1B63C4B90;
          v44 = v42;
          *(v43 + 32) = sub_1B63BED94();
          *(v43 + 40) = v44;
          v45 = objc_allocWithZone(MEMORY[0x1E696AB28]);
          v46 = v44;
          v47 = sub_1B63BEC94();

          v48 = [v45 initWithType:1 subpredicates:v47];

          [v9 setPredicate_];
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_1B63C4B90;
          v50 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
          v51 = sub_1B63BEBC4();
          v52 = [v50 initWithKey:v51 ascending:1];

          *(v49 + 32) = v52;
          v53 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
          v54 = sub_1B63BEBC4();
          v55 = [v53 initWithKey:v54 ascending:0];

          *(v49 + 40) = v55;
        }

        v39 = sub_1B63BEC94();

        [v9 setSortDescriptors_];

        goto LABEL_13;
      }
    }

    else
    {
      sub_1B6284EAC(&aBlock, &unk_1EB943740, &qword_1B63C5030);
    }

    v59 = 0x80000001B63CD2F0;
    v56 = sub_1B63BEDC4();
    if (qword_1EDB0F690 == -1)
    {
LABEL_19:
      v62 = qword_1EDB0F680;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1B63C3D50;
      *(v63 + 56) = MEMORY[0x1E69E6158];
      *(v63 + 64) = sub_1B6281318();
      *(v63 + 32) = 0xD000000000000036;
      *(v63 + 40) = v59;
      sub_1B63BEA14(v56, &dword_1B627F000, v62, "%{public}@", 10, 2, v63);

      return isEscapingClosureAtFileLocation;
    }

LABEL_22:
    swift_once();
    goto LABEL_19;
  }

LABEL_13:
  if ((a3 & 1) == 0)
  {
    [v9 setFetchOffset_];
  }

  [v9 setFetchLimit_];
  *&v71 = isEscapingClosureAtFileLocation;
  v56 = swift_allocObject();
  v56[2] = a6;
  v56[3] = v9;
  v56[4] = &v71;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_1B63BD808;
  *(v57 + 24) = v56;
  v75 = sub_1B62B8284;
  v76 = v57;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v74 = sub_1B62B1294;
  *(&v74 + 1) = &block_descriptor_29;
  v58 = _Block_copy(&aBlock);
  v59 = v76;
  v60 = a6;
  v61 = v9;

  [v60 performBlockAndWait_];

  _Block_release(v58);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_22;
  }

  isEscapingClosureAtFileLocation = v71;

  return isEscapingClosureAtFileLocation;
}

void sub_1B63B66F4(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
  v4 = sub_1B63BEEA4();
  v5 = v4;
  if (v4 >> 62)
  {
    v6 = sub_1B63BF044();
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v6; ++i)
    {
      MEMORY[0x1B8C92830](i, v5);
      type metadata accessor for MapsSyncManagedFavoriteItem();
      if (swift_dynamicCastClass())
      {
        v8 = swift_unknownObjectRetain();
        MEMORY[0x1B8C92370](v8);
        if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B63BECC4();
        }

        sub_1B63BECE4();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    type metadata accessor for MapsSyncManagedFavoriteItem();
    v9 = 32;
    do
    {
      if (swift_dynamicCastClass())
      {
        v10 = swift_unknownObjectRetain_n();
        MEMORY[0x1B8C92370](v10);
        if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B63BECC4();
        }

        sub_1B63BECE4();
        swift_unknownObjectRelease();
      }

      v9 += 8;
      --v6;
    }

    while (v6);
  }

LABEL_18:
}

void sub_1B63B6938(unint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  if (a4)
  {
    v7 = 2147483646;
    if (v6 >= 0x7FFFFFFE)
    {
      return;
    }
  }

  else
  {
    v7 = a3;
    if (a3 < 0 || (v6 & 0x8000000000000000) != 0 || v6 >= a3)
    {
      return;
    }
  }

  v8 = pow((v7 - v6), 0.492063492);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = v8;
  if (a5)
  {
    v12 = v7 - v9;
    if (__OFSUB__(v7, v9))
    {
LABEL_36:
      __break(1u);
      return;
    }

    v11 = v7;
  }

  else
  {
    v10 = __OFADD__(v6, v9);
    v11 = v6 + v9;
    if (v10)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v12 = v6;
  }

  v13 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    goto LABEL_30;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (HIDWORD(v13))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = arc4random_uniform(v13);
  if (__OFADD__(v12, v14))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v15 = 1;
  if (a5)
  {
    v15 = -1;
  }

  if (__OFADD__(v12 + v14, v15))
  {
    goto LABEL_34;
  }
}

void sub_1B63B6A80(void *a1, char a2, void *a3, unint64_t a4)
{
  if (a4 < 0x11)
  {
    v9 = a2 & 1;
    v10 = sub_1B63B5C84(a1, 0, 1, 1, !(a2 & 1), a3);
    v11 = sub_1B63B5BF8(v10);

    if (v11)
    {
      v12 = sub_1B63BEBC4();
      v42 = v11;
      v13 = [v11 valueForKey_];

      if (v13)
      {
        sub_1B63BEF84();
        swift_unknownObjectRelease();
        sub_1B628E928(v45, v46);
        swift_dynamicCast();
        v14 = sub_1B63BEBC4();
        v15 = [a1 valueForKey_];

        if (v15)
        {
          sub_1B63BEF84();
          swift_unknownObjectRelease();
          sub_1B628E928(v45, v46);
          swift_dynamicCast();
          *&v46[0] = 0;
          *(&v46[0] + 1) = 0xE000000000000000;
          sub_1B63BF114();

          *&v46[0] = 0xD000000000000021;
          *(&v46[0] + 1) = 0x80000001B63CD190;
          *&v45[0] = v44;
          v16 = sub_1B63BF344();
          MEMORY[0x1B8C92330](v16);

          MEMORY[0x1B8C92330](0x7463656A626F202CLL, 0xEC00000020746120);
          *&v45[0] = v44;
          v17 = sub_1B63BF344();
          MEMORY[0x1B8C92330](v17);

          _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(*&v46[0], *(&v46[0] + 1));

          sub_1B63B6938(v44, 0, v44, 0, v9 != 0);
          if ((v23 & 1) == 0)
          {
            v33 = v22;
            *&v46[0] = 0;
            *(&v46[0] + 1) = 0xE000000000000000;
            sub_1B63BF114();

            *&v46[0] = 0xD000000000000021;
            *(&v46[0] + 1) = 0x80000001B63CD290;
            *&v45[0] = v33;
            v34 = sub_1B63BF344();
            MEMORY[0x1B8C92330](v34);

            _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(*&v46[0], *(&v46[0] + 1));

            v32 = sub_1B63BF414();
            goto LABEL_21;
          }

          *&v46[0] = 0;
          *(&v46[0] + 1) = 0xE000000000000000;
          sub_1B63BF114();
          MEMORY[0x1B8C92330](0xD000000000000029, 0x80000001B63CD1C0);
          *&v45[0] = v44;
          v24 = sub_1B63BF344();
          MEMORY[0x1B8C92330](v24);

          MEMORY[0x1B8C92330](0x656B616D206F7420, 0xED00006D6F6F7220);
          _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(*&v46[0], *(&v46[0] + 1));

          sub_1B63B6A80(v11, v9, a3, a4 + 1);
          if ((v25 & 1) == 0)
          {
            _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0xD00000000000002FLL, 0x80000001B63CD1F0);

            return;
          }

          v26 = sub_1B63BEBC4();
          v27 = [v42 valueForKey_];

          if (v27)
          {
            sub_1B63BEF84();
            swift_unknownObjectRelease();
            sub_1B628E928(v45, v46);
            swift_dynamicCast();
            if (v9)
            {
              sub_1B63B6938(v44, 0, v44, 0, v9);
              if ((v39 & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            else
            {
              sub_1B63B6938(v44, 0, v44, 0, 0);
              if ((v29 & 1) == 0)
              {
LABEL_19:
                v30 = v28;
                *&v46[0] = 0;
                *(&v46[0] + 1) = 0xE000000000000000;
                sub_1B63BF114();

                *&v46[0] = 0xD00000000000002CLL;
                *(&v46[0] + 1) = 0x80000001B63CD260;
                *&v45[0] = v30;
                v31 = sub_1B63BF344();
                MEMORY[0x1B8C92330](v31);

                _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(*&v46[0], *(&v46[0] + 1));

                v32 = sub_1B63BF414();
LABEL_21:
                v35 = sub_1B63BEBC4();
                [a1 setValue:v32 forKey:v35];

                goto LABEL_24;
              }
            }

            *&v46[0] = 0;
            *(&v46[0] + 1) = 0xE000000000000000;
            sub_1B63BF114();
            MEMORY[0x1B8C92330](0xD000000000000039, 0x80000001B63CD220);
            *&v45[0] = v44;
            v40 = sub_1B63BF344();
            MEMORY[0x1B8C92330](v40);

            MEMORY[0x1B8C92330](8236, 0xE200000000000000);
            *&v45[0] = v44;
            v41 = sub_1B63BF344();
            MEMORY[0x1B8C92330](v41);

            _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(*&v46[0], *(&v46[0] + 1));

            return;
          }

LABEL_31:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      v18 = sub_1B63BEBC4();
      v19 = [a1 valueForKey_];

      if (v19)
      {
        sub_1B63BEF84();
        swift_unknownObjectRelease();
        sub_1B628E928(v45, v46);
        swift_dynamicCast();
        if (v9)
        {
          sub_1B63B6938(v44, 0, 0x7FFFFFFFFFFFFFFFLL, 0, 1);
          if (v36)
          {
            return;
          }
        }

        else
        {
          sub_1B63B6938(0, 0, v44, 0, 0);
          if (v21)
          {
            return;
          }
        }

        v37 = v20;
        *&v46[0] = 0;
        *(&v46[0] + 1) = 0xE000000000000000;
        sub_1B63BF114();
        MEMORY[0x1B8C92330](0xD000000000000032, 0x80000001B63CD150);
        *&v45[0] = v37;
        v38 = sub_1B63BF344();
        MEMORY[0x1B8C92330](v38);

        _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(*&v46[0], *(&v46[0] + 1));

        v32 = sub_1B63BF414();
        v35 = sub_1B63BEBC4();
        [a1 setValue:v32 forKey:v35];
LABEL_24:

        return;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v4 = sub_1B63BEDC4();
  if (qword_1EDB0F690 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDB0F680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B63C3D50;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1B6281318();
  *(v6 + 32) = 0xD000000000000026;
  *(v6 + 40) = 0x80000001B63CD2C0;
  sub_1B63BEA14(v4, &dword_1B627F000, v5, "%{public}@", 10, 2, v6);
}

void sub_1B63B73A8(void *a1, char a2, void *a3)
{
  if (a1)
  {
    v6 = a1;
    goto LABEL_9;
  }

  v3 = 0;
  v7 = sub_1B63B5C84(0, 0, 1, 1, (a2 & 1) == 0, a3);
  if (v7 >> 62)
  {
    v47 = v7;
    v48 = sub_1B63BF044();
    v7 = v47;
    if (v48)
    {
      goto LABEL_5;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v7 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1B8C92830](0, v7);

      swift_unknownObjectRetain();
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_58;
      }

      v8 = *(v7 + 32);

      v6 = v8;
    }

    a1 = 0;
LABEL_9:
    v9 = a1;
    v10 = sub_1B63BEBC4();
    v11 = &selRef_powerByConnector;
    v12 = [v6 valueForKey_];

    if (!v12)
    {
      memset(v52, 0, sizeof(v52));
      sub_1B6284EAC(v52, &unk_1EB943740, &qword_1B63C5030);
      v3 = 0x80000001B63CD050;
      v14 = sub_1B63BEDC4();
      if (qword_1EDB0F690 == -1)
      {
LABEL_17:
        v18 = qword_1EDB0F680;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1B63C3D50;
        *(v19 + 56) = MEMORY[0x1E69E6158];
        *(v19 + 64) = sub_1B6281318();
        *(v19 + 32) = 0xD000000000000032;
        *(v19 + 40) = v3;
        sub_1B63BEA14(v14, &dword_1B627F000, v18, "%{public}@", 10, 2, v19);

        return;
      }

LABEL_55:
      swift_once();
      goto LABEL_17;
    }

    sub_1B63BEF84();
    swift_unknownObjectRelease();
    sub_1B6284EAC(v52, &unk_1EB943740, &qword_1B63C5030);
    v13 = a2 & 1;
    v14 = v6;
    v15 = sub_1B63B5C84(v6, 0, 1, 1, v13, a3);

    if (v15 >> 62)
    {
      if (sub_1B63BF044())
      {
        goto LABEL_12;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_12:
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1B8C92830](0, v15);
        goto LABEL_15;
      }

      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v16 = *(v15 + 32);
LABEL_15:
        v17 = v16;

        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_55;
    }

    v17 = 0;
LABEL_20:
    v20 = sub_1B63BEBC4();
    v21 = [v14 valueForKey_];

    if (v21)
    {
      sub_1B63BEF84();
      swift_unknownObjectRelease();
      sub_1B628E928(v51, v52);
      swift_dynamicCast();
      if (!v17)
      {
        if (v13)
        {
          v25 = 0;
        }

        else
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (!v13)
        {
          goto LABEL_24;
        }

        goto LABEL_29;
      }

      v22 = v17;
      v23 = sub_1B63BEBC4();
      v24 = [v22 &selRef:v23 initWithOffset:? limit:?];

      if (v24)
      {
        sub_1B63BEF84();
        swift_unknownObjectRelease();

        sub_1B628E928(v51, v52);
        swift_dynamicCast();
        v25 = v50;
        v11 = &selRef_powerByConnector;
        if (!v13)
        {
LABEL_24:
          v26 = v50;
          v27 = 0;
          goto LABEL_30;
        }

LABEL_29:
        v26 = v25;
        v25 = v50;
        v27 = v13;
LABEL_30:
        sub_1B63B6938(v26, 0, v25, 0, v27);
        if ((v29 & 1) == 0)
        {
          v40 = v28;
          *&v52[0] = 0;
          *(&v52[0] + 1) = 0xE000000000000000;
          sub_1B63BF114();

          v41 = 0x80000001B63CD130;
          v42 = 0xD000000000000015;
LABEL_49:
          *&v52[0] = v42;
          *(&v52[0] + 1) = v41;
          *&v51[0] = v40;
          v46 = sub_1B63BF344();
          MEMORY[0x1B8C92330](v46);

          _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(*&v52[0], *(&v52[0] + 1));

          return;
        }

        sub_1B63B6A80(v14, v13, a3, 0);
        if ((v30 & 1) == 0)
        {
          if (!v17 || (v31 = v17, sub_1B63B6A80(v31, v13, a3, 0), v33 = v32, v31, (v33 & 1) == 0))
          {
            _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0xD000000000000021, 0x80000001B63CD090);

            return;
          }
        }

        v34 = sub_1B63BEBC4();
        v35 = [v14 v11[127]];

        if (v35)
        {
          sub_1B63BEF84();
          swift_unknownObjectRelease();
          sub_1B628E928(v51, v52);
          swift_dynamicCast();
          if (!v17)
          {
            if (v13)
            {
              v39 = 0;
LABEL_45:
              v43 = v39;
              v39 = v50;
              goto LABEL_46;
            }

            v39 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_43:
            v43 = v50;
LABEL_46:
            sub_1B63B6938(v43, 0, v39, 0, v13);
            if (v45)
            {
              _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0xD000000000000037, 0x80000001B63CD0C0);

              return;
            }

            v40 = v44;
            *&v52[0] = 0;
            *(&v52[0] + 1) = 0xE000000000000000;
            sub_1B63BF114();

            v41 = 0x80000001B63CD100;
            v42 = 0xD000000000000022;
            goto LABEL_49;
          }

          v36 = v17;
          v37 = sub_1B63BEBC4();
          v38 = [v36 v11[127]];

          if (v38)
          {
            sub_1B63BEF84();
            swift_unknownObjectRelease();

            sub_1B628E928(v51, v52);
            swift_dynamicCast();
            v39 = v50;
            if (v13)
            {
              goto LABEL_45;
            }

            goto LABEL_43;
          }

          goto LABEL_62;
        }

        goto LABEL_60;
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  sub_1B63B6938(0, 0, 0x7FFFFFFFFFFFFFFFLL, 0, 0);
  if (v49)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }
}

void sub_1B63B7B48(void *a1, void *a2)
{
  swift_getObjectType();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
    v7 = *(v4 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
    v10 = a1;
    [v7 lock];
    v8 = *(v5 + OBJC_IVAR___MSFavoriteItem__positionIndex);
    [*(v5 + v6) unlock];
    if (!v8)
    {
      sub_1B63B73A8(0, 0, a2);
      sub_1B62E5EBC(v9);
    }
  }
}

uint64_t sub_1B63B7D68(void **a1, void **a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - v8;
  v10 = sub_1B63BE994();
  v44 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v40 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v37 - v13;
  v14 = *a1;
  v15 = *a2;
  v16 = sub_1B63BEBC4();
  v41 = v14;
  v17 = [v14 valueForKey_];

  if (v17)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (!*(&v46 + 1))
  {
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v18 = v49;
  v19 = sub_1B63BEBC4();
  v20 = [v15 valueForKey_];

  if (v20)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (!*(&v46 + 1))
  {
LABEL_13:
    sub_1B6284EAC(&v47, &unk_1EB943740, &qword_1B63C5030);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) != 0 && v49 != v18)
  {
    v21 = v18 < v49;
    return v21 & 1;
  }

LABEL_14:
  v22 = sub_1B63BEBC4();
  v23 = [v15 valueForKey_];

  if (v23)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v24 = v44;
  v47 = v45;
  v48 = v46;
  if (*(&v46 + 1))
  {
    v25 = swift_dynamicCast();
    v26 = v24[7];
    v26(v9, v25 ^ 1u, 1, v10);
    v27 = v24[6];
    if (v27(v9, 1, v10) != 1)
    {
      v39 = v2;
      v38 = v24[4];
      v38(v43, v9, v10);
      v28 = sub_1B63BEBC4();
      v29 = [v41 valueForKey_];

      if (v29)
      {
        sub_1B63BEF84();
        swift_unknownObjectRelease();
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      v30 = v42;
      v47 = v45;
      v48 = v46;
      v31 = v44;
      if (*(&v46 + 1))
      {
        v32 = swift_dynamicCast();
        v26(v30, v32 ^ 1u, 1, v10);
        if (v27(v30, 1, v10) != 1)
        {
          v33 = v40;
          v38(v40, v30, v10);
          v34 = v43;
          v21 = sub_1B63BE964();
          v35 = v31[1];
          v35(v33, v10);
          v35(v34, v10);
          return v21 & 1;
        }
      }

      else
      {
        sub_1B6284EAC(&v47, &unk_1EB943740, &qword_1B63C5030);
        v26(v30, 1, 1, v10);
      }

      (v31[1])(v43, v10);
      sub_1B6284EAC(v30, &unk_1EB943210, &unk_1B63C3F50);
      v21 = 0;
      return v21 & 1;
    }
  }

  else
  {
    sub_1B6284EAC(&v47, &unk_1EB943740, &qword_1B63C5030);
    (v24[7])(v9, 1, 1, v10);
  }

  sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  v21 = 1;
  return v21 & 1;
}

void sub_1B63B83B0(uint64_t a1)
{
  v3 = (*MEMORY[0x1E69E7D40] & *type metadata accessor for FavoriteItem(0));
  v81.receiver = v1;
  v81.super_class = v3;
  v4 = objc_msgSendSuper2(&v81, sel_findDuplicatesWithContext_, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943710, &qword_1B63C3EB8);
  v76 = sub_1B63BECA4();

  v5 = sub_1B63BEBC4();
  v6 = objc_opt_self();
  v7 = [v6 expressionForKeyPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943720, &qword_1B63C6B20);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B63C3D50;
  *(v8 + 56) = sub_1B6281C60(0, &qword_1EDB0F2F0, 0x1E696ABC8);
  *(v8 + 32) = v7;
  v74 = v7;
  v9 = sub_1B63BEBC4();
  v10 = sub_1B63BEC94();

  v11 = [v6 expressionForFunction:v9 arguments:v10];

  v12 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  [v12 setExpression_];
  v13 = v12;
  v14 = sub_1B63BEBC4();
  [v13 setName_];

  [v13 setExpressionResultType_];
  type metadata accessor for MapsSyncManagedFavoriteItem();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [ObjCClassFromMetadata entityName];
  if (!v15)
  {
    sub_1B63BEBD4();
    v15 = sub_1B63BEBC4();
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

  [v16 setReturnsObjectsAsFaults_];
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B63C3D50;
  v18 = MEMORY[0x1E69E6158];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 32) = 0xD000000000000018;
  *(v17 + 40) = 0x80000001B63C8DA0;
  v19 = sub_1B63BEC94();

  [v16 setPropertiesToGroupBy_];

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B63C3D80;
  *(v20 + 56) = v18;
  *(v20 + 32) = 0xD000000000000018;
  *(v20 + 40) = 0x80000001B63C8DA0;
  *(v20 + 88) = sub_1B6281C60(0, &unk_1EDB0F2E0, 0x1E695D5C8);
  *(v20 + 64) = v13;
  v21 = v13;
  v22 = sub_1B63BEC94();

  [v16 setPropertiesToFetch_];

  [v16 setResultType_];
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v23 = sub_1B63BED94();
  [v16 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
  v24 = sub_1B63BEEA4();
  v68 = v21;
  v69 = v16;
  v70 = v11;
  v25 = v76;
  v26 = sub_1B639CB54(v24);

  v27 = sub_1B639CD4C(v26);

  v28 = *(v27 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  if (!v28)
  {
LABEL_17:

    v40 = v29[2];
    if (!v40)
    {
LABEL_53:

      return;
    }

    v41 = 0;
    v77 = v29 + 4;
    v42 = MEMORY[0x1E69E6158];
    v73 = v29;
    v72 = v29[2];
    while (1)
    {
      if (v41 >= v29[2])
      {
        goto LABEL_59;
      }

      v43 = v77[v41];
      if (*(v43 + 16))
      {

        v44 = sub_1B6380EF4(0xD000000000000018, 0x80000001B63C8DA0);
        if (v45)
        {
          sub_1B629E3F0(*(v43 + 56) + 32 * v44, v80);

          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_21;
          }

          v47 = *(&v79[0] + 1);
          v46 = *&v79[0];
          v48 = [ObjCClassFromMetadata fetchRequest];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_1B63C3D50;
          *(v49 + 56) = v42;
          *(v49 + 64) = sub_1B6281318();
          *(v49 + 32) = __PAIR128__(v47, v46);
          v50 = sub_1B63BED94();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
          v51 = swift_allocObject();
          *(v51 + 16) = xmmword_1B63C4B90;
          v52 = v50;
          v53 = MEMORY[0x1E69E7CC0];
          *(v51 + 32) = sub_1B63BED94();
          *(v51 + 40) = v52;
          v54 = objc_allocWithZone(MEMORY[0x1E696AB28]);
          v55 = v52;
          v56 = sub_1B63BEC94();

          v57 = [v54 initWithType:1 subpredicates:v56];

          [v48 setPredicate_];
          v58 = sub_1B63BEEA4();
          v59 = v58;
          v80[0].receiver = v53;
          receiver = v53;
          v61 = v58 & 0xFFFFFFFFFFFFFF8;
          if (v58 >> 62)
          {
            v62 = sub_1B63BF044();
          }

          else
          {
            v62 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v71 = v48;
          if (v62)
          {
            v63 = 0;
            do
            {
              v64 = v63;
              while (1)
              {
                if ((v59 & 0xC000000000000001) != 0)
                {
                  MEMORY[0x1B8C92830](v64, v59);
                  v63 = v64 + 1;
                  if (__OFADD__(v64, 1))
                  {
                    goto LABEL_54;
                  }
                }

                else
                {
                  if (v64 >= *(v61 + 16))
                  {
                    goto LABEL_55;
                  }

                  swift_unknownObjectRetain();
                  v63 = v64 + 1;
                  if (__OFADD__(v64, 1))
                  {
LABEL_54:
                    __break(1u);
LABEL_55:
                    __break(1u);
                    goto LABEL_56;
                  }
                }

                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  break;
                }

                swift_unknownObjectRelease();
                ++v64;
                if (v63 == v62)
                {
                  goto LABEL_43;
                }
              }

              MEMORY[0x1B8C92370]();
              if (*((v80[0].receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80[0].receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1B63BECC4();
              }

              sub_1B63BECE4();
              receiver = v80[0].receiver;
            }

            while (v63 != v62);
          }

LABEL_43:

          if (receiver >> 62)
          {
            v65 = sub_1B63BF044();
          }

          else
          {
            v65 = *((receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v42 = MEMORY[0x1E69E6158];
          v29 = v73;
          v40 = v72;
          if (v65 >= 2)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1B62B25E8(0, v25[2] + 1, 1, v25);
            }

            v67 = v25[2];
            v66 = v25[3];
            if (v67 >= v66 >> 1)
            {
              v25 = sub_1B62B25E8((v66 > 1), v67 + 1, 1, v25);
            }

            v25[2] = v67 + 1;
            v25[v67 + 4] = receiver;
            v29 = v73;
            goto LABEL_21;
          }
        }
      }

LABEL_21:
      if (++v41 == v40)
      {
        goto LABEL_53;
      }
    }
  }

  v30 = 0;
LABEL_5:
  v31 = v30;
  while (v31 < *(v27 + 16))
  {
    v32 = *(v27 + 32 + 8 * v31);
    if (!*(v32 + 16))
    {
      goto LABEL_57;
    }

    v33 = sub_1B6380EF4(0x746E756F63, 0xE500000000000000);
    if ((v34 & 1) == 0)
    {
      goto LABEL_58;
    }

    sub_1B629E3F0(*(v32 + 56) + 32 * v33, v79);
    sub_1B628E928(v79, v80);
    swift_dynamicCast();
    if (v78 > 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1B62B24C0(0, v29[2] + 1, 1, v29);
      }

      v35 = v29;
      v36 = v29[2];
      v37 = v35;
      v38 = v35[3];
      if (v36 >= v38 >> 1)
      {
        v37 = sub_1B62B24C0((v38 > 1), v36 + 1, 1, v37);
      }

      v30 = v31 + 1;
      v37[2] = v36 + 1;
      v39 = &v37[v36];
      v29 = v37;
      v39[4] = v32;
      if (v28 - 1 == v31)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    }

    ++v31;

    if (v28 == v31)
    {
      goto LABEL_17;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

void sub_1B63B8F50(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B63BE814();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1B63B8FCC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *, uint64_t, uint64_t))
{
  v7 = *&v3[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = v3;
  v9 = v3;

  v10 = v7;
  a3(inited, v9, a1, a2);

  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_1B63B90B8(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, char a6)
{
  if (a1 || !a2)
  {
    goto LABEL_13;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v19 = a4;
    v20 = a6;
    v21 = a3;
    v22 = a2;
    v23 = sub_1B63BF044();
    a2 = v22;
    a3 = v21;
    a6 = v20;
    a4 = v19;
    v24 = v23;
    a1 = 0;
    if (!v24)
    {
      goto LABEL_13;
    }
  }

  else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    (a4)(a1, a2, a3);
    return;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = a3;
    v8 = a6;
    v9 = a1;
    v10 = a4;
    v11 = MEMORY[0x1B8C92830](0);
  }

  else
  {
    if (!*(v6 + 16))
    {
      __break(1u);
      return;
    }

    v7 = a3;
    v8 = a6;
    v9 = a1;
    v10 = a4;
    v11 = *(a2 + 32);
  }

  v25 = v11;
  type metadata accessor for MapsSyncManagedFavoriteItem();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {

    goto LABEL_12;
  }

  v13 = v12;
  v14 = *(v7 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B62814B4();

  v15 = sub_1B629409C();
  LOBYTE(v14) = v16;

  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();

    sub_1B6295C20(v15);
LABEL_12:
    a4 = v10;
    a1 = v9;
    goto LABEL_13;
  }

  sub_1B63B73A8(0, v8, v15);
  v17 = sub_1B63BF414();
  v18 = sub_1B63BEBC4();
  [v13 setValue:v17 forKey:v18];

  v10(0);
  sub_1B6295C20(v15);
}

uint64_t sub_1B63B934C(char *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, char *, uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = *&a1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = a1;
  v13 = a1;
  v14 = v11;
  a6(inited, v13, a5, v10);

  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t sub_1B63B94C4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, char *, uint64_t, uint64_t, id))
{
  v9 = *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C4B90;
  *(inited + 32) = v4;
  *(inited + 40) = a1;
  v11 = v4;

  v12 = a1;
  v13 = v9;
  a4(inited, v11, a2, a3, v12);

  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_1B63B95C4(uint64_t a1, unint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, int a7)
{
  v98 = a6;
  v111 = a3;
  v12 = sub_1B63BEA04();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v85[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943848, &qword_1B63C7750);
  v15 = MEMORY[0x1EEE9AC00](v113);
  v103 = &v85[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v85[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v93 = &v85[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v95 = &v85[-v23];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v94 = &v85[-v25];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v99 = &v85[-v27];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v85[-v29];
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v85[-v31];
  if (a1)
  {
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  v115 = sub_1B63A3248(a2);
  if (!v115)
  {
    goto LABEL_6;
  }

  v86 = a7;
  v87 = a5;
  v88 = a4;
  v33 = *(v111 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  v34 = sub_1B62814B4();

  v35 = sub_1B629409C();
  LOBYTE(v33) = v36;

  if (v33)
  {

    v116 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v35);
    a4 = v88;
LABEL_6:
    a4(a1);
    return;
  }

  v91 = v35;
  v105 = v115 & 0xFFFFFFFFFFFFFF8;
  v100 = v18;
  if (v115 >> 62)
  {
    goto LABEL_55;
  }

  v37 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  v101 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v102 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  swift_beginAccess();
  v110 = v37;
  if (v37)
  {
    v38 = 0;
    v108 = (v13 + 7);
    v109 = v115 & 0xC000000000000001;
    v107 = v13 + 6;
    v89 = (v13 + 4);
    v92 = (v13 + 1);
    v13 = &unk_1EB943680;
    v104 = v12;
    v90 = v32;
    while (1)
    {
      if (v109)
      {
        v40 = MEMORY[0x1B8C92830](v38, v115);
        v41 = (v38 + 1);
        if (__OFADD__(v38, 1))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          v97 = v34;
          sub_1B6284EAC(v40, &unk_1EB943680, qword_1B63C4070);
LABEL_30:
          v57 = 0;
          v13 = v95;
          v30 = v94;
          while (2)
          {
            if (v109)
            {
              v61 = MEMORY[0x1B8C92830](v57, v115);
            }

            else
            {
              if (v57 >= *(v105 + 16))
              {
                goto LABEL_54;
              }

              v61 = *(v115 + 8 * v57 + 32);
            }

            v62 = v61;
            v32 = (v57 + 1);
            if (__OFADD__(v57, 1))
            {
              goto LABEL_53;
            }

            v63 = [v61 identifier];
            v111 = v57 + 1;
            v112 = v62;
            if (v63)
            {
              v64 = v63;
              sub_1B63BE9E4();

              v65 = 0;
            }

            else
            {
              v65 = 1;
            }

            v106(v30, v65, 1, v12);
            v66 = v98;
            v67 = *(v98 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
            [v67 lock];
            v68 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
            swift_beginAccess();
            v32 = qword_1B63C4070;
            sub_1B628C510(v66 + v68, v13, &unk_1EB943680, qword_1B63C4070);
            [v67 unlock];
            v69 = *(v113 + 48);
            v70 = v103;
            sub_1B628C510(v30, v103, &unk_1EB943680, qword_1B63C4070);
            sub_1B628C510(v13, &v70[v69], &unk_1EB943680, qword_1B63C4070);
            v71 = v97;
            if (v97(v70, 1, v12) == 1)
            {
              sub_1B6284EAC(v13, &unk_1EB943680, qword_1B63C4070);
              sub_1B6284EAC(v30, &unk_1EB943680, qword_1B63C4070);
              v58 = v71(&v70[v69], 1, v12);
              v34 = v91;
              v59 = v112;
              v60 = v110;
              if (v58 == 1)
              {
                sub_1B6284EAC(v70, &unk_1EB943680, qword_1B63C4070);
LABEL_51:

                sub_1B63B73A8(v59, v86, v34);
                v82 = sub_1B63BF414();
                v83 = sub_1B63BEBC4();
                v84 = v114;
                [v114 setValue:v82 forKey:v83];

                v88(0);
                v81 = v34;
                goto LABEL_49;
              }

LABEL_32:
              sub_1B6284EAC(v70, &qword_1EB943848, &qword_1B63C7750);
            }

            else
            {
              v72 = v93;
              sub_1B628C510(v70, v93, &unk_1EB943680, qword_1B63C4070);
              v73 = v71(&v70[v69], 1, v12);
              v34 = v91;
              if (v73 == 1)
              {
                v32 = v95;
                sub_1B6284EAC(v95, &unk_1EB943680, qword_1B63C4070);
                v30 = v94;
                sub_1B6284EAC(v94, &unk_1EB943680, qword_1B63C4070);
                v74 = v72;
                v13 = v32;
                (*v92)(v74, v12);
                v60 = v110;
                v59 = v112;
                goto LABEL_32;
              }

              v75 = v96;
              (*v89)(v96, &v70[v69], v12);
              sub_1B63BD868();
              v76 = sub_1B63BEBB4();
              v77 = *v92;
              (*v92)(v75, v104);
              v32 = v95;
              sub_1B6284EAC(v95, &unk_1EB943680, qword_1B63C4070);
              v30 = v94;
              sub_1B6284EAC(v94, &unk_1EB943680, qword_1B63C4070);
              v78 = v72;
              v13 = v32;
              v77(v78, v104);
              v12 = v104;
              sub_1B6284EAC(v103, &unk_1EB943680, qword_1B63C4070);
              v60 = v110;
              v59 = v112;
              if (v76)
              {
                goto LABEL_51;
              }
            }

            ++v57;
            if (v111 == v60)
            {

              goto LABEL_48;
            }

            continue;
          }
        }
      }

      else
      {
        if (v38 >= *(v105 + 16))
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          v37 = sub_1B63BF044();
          goto LABEL_10;
        }

        v40 = *(v115 + 8 * v38 + 32);
        v41 = (v38 + 1);
        if (__OFADD__(v38, 1))
        {
          goto LABEL_28;
        }
      }

      v112 = v41;
      v114 = v40;
      v42 = [v40 identifier];
      if (v42)
      {
        v43 = v42;
        sub_1B63BE9E4();

        v44 = 0;
      }

      else
      {
        v44 = 1;
      }

      v106 = *v108;
      v106(v32, v44, 1, v12);
      v45 = v111;
      v46 = *(v111 + v102);
      [v46 lock];
      sub_1B628C510(v45 + v101, v30, &unk_1EB943680, qword_1B63C4070);
      [v46 unlock];
      v47 = *(v113 + 48);
      v48 = v100;
      sub_1B628C510(v32, v100, &unk_1EB943680, qword_1B63C4070);
      sub_1B628C510(v30, v48 + v47, &unk_1EB943680, qword_1B63C4070);
      v34 = *v107;
      if ((*v107)(v48, 1, v12) == 1)
      {
        break;
      }

      v49 = v30;
      v50 = v99;
      sub_1B628C510(v48, v99, &unk_1EB943680, qword_1B63C4070);
      v97 = v34;
      if ((v34)(v48 + v47, 1, v12) == 1)
      {
        v51 = v49;
        sub_1B6284EAC(v49, &unk_1EB943680, qword_1B63C4070);
        v32 = v90;
        sub_1B6284EAC(v90, &unk_1EB943680, qword_1B63C4070);
        v52 = v50;
        v30 = v51;
        (*v92)(v52, v12);
        v40 = v48;
LABEL_13:
        sub_1B6284EAC(v40, &qword_1EB943848, &qword_1B63C7750);
        goto LABEL_14;
      }

      v53 = v96;
      (*v89)(v96, v48 + v47, v12);
      sub_1B63BD868();
      v34 = sub_1B63BEBB4();
      v54 = *v92;
      (*v92)(v53, v104);
      v55 = v49;
      sub_1B6284EAC(v49, &unk_1EB943680, qword_1B63C4070);
      v32 = v90;
      sub_1B6284EAC(v90, &unk_1EB943680, qword_1B63C4070);
      v56 = v50;
      v30 = v55;
      v54(v56, v104);
      v12 = v104;
      sub_1B6284EAC(v48, &unk_1EB943680, qword_1B63C4070);
      if (v34)
      {
        goto LABEL_30;
      }

LABEL_14:

      ++v38;
      if (v112 == v110)
      {
        goto LABEL_48;
      }
    }

    sub_1B6284EAC(v30, &unk_1EB943680, qword_1B63C4070);
    sub_1B6284EAC(v32, &unk_1EB943680, qword_1B63C4070);
    v39 = (v34)(v48 + v47, 1, v12) == 1;
    v40 = v48;
    if (v39)
    {
      goto LABEL_29;
    }

    goto LABEL_13;
  }

LABEL_48:

  sub_1B634DB54();
  v79 = swift_allocError();
  *v80 = 2;
  (v88)();

  v81 = v91;
LABEL_49:
  sub_1B6295C20(v81);
}

uint64_t sub_1B63BA204(char *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, char *, uint64_t, uint64_t, id))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = *&a1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C4B90;
  *(inited + 32) = a1;
  *(inited + 40) = a3;
  v15 = a1;
  v16 = a3;
  v17 = v15;
  v18 = v13;
  a7(inited, v17, a6, v12, v16);

  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t FavoriteItem.placeItemNote()()
{
  v1[14] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v1[15] = swift_task_alloc();
  v2 = sub_1B63BEA04();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B63BA428, 0, 0);
}

uint64_t sub_1B63BA428()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = *(v4 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  swift_beginAccess();
  sub_1B628C510(v4 + v6, v3, &unk_1EB943680, qword_1B63C4070);
  [v5 unlock];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B6284EAC(v0[15], &unk_1EB943680, qword_1B63C4070);

    v7 = v0[1];

    return v7(0, 0);
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B63C3D50;
    v10 = sub_1B63BE9C4();
    *(inited + 56) = sub_1B6281C60(0, &qword_1EB943690, 0x1E696AFB0);
    *(inited + 64) = sub_1B62B03CC(&qword_1EB943730, &qword_1EB943690, 0x1E696AFB0);
    *(inited + 32) = v10;
    v11 = sub_1B628E52C(0xD000000000000018, 0x80000001B63CCFF0, inited);
    v0[19] = v11;
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
    v12 = v11;
    v13 = sub_1B62895F4(v11, 0, 0);
    v0[20] = v13;

    v14 = objc_allocWithZone(type metadata accessor for CollectionPlaceItemRequest());
    if (qword_1EDB0F2A0 != -1)
    {
      v18 = v14;
      swift_once();
      v14 = v18;
    }

    v0[21] = [v14 initWithStore_];
    v15 = v13;
    v16 = swift_task_alloc();
    v0[22] = v16;
    *v16 = v0;
    v16[1] = sub_1B63BA73C;

    return sub_1B628B2B4(v13, v17);
  }
}

uint64_t sub_1B63BA73C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v5 = *(*v2 + 160);
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v6 = sub_1B63BA9E4;
  }

  else
  {
    v6 = sub_1B63BA88C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B63BA88C()
{
  v1 = *(v0 + 184);
  if (v1 >> 62)
  {
    result = sub_1B63BF044();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = *(v0 + 152);

    v8 = 0;
    v10 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1B8C92830](0, *(v0 + 184));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 184) + 32);
  }

  v5 = *(v0 + 152);
  v4 = *(v0 + 160);

  v8 = sub_1B62D5984(v6, v7);
  v10 = v9;

LABEL_9:
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

  v12 = *(v0 + 8);

  return v12(v8, v10);
}

uint64_t sub_1B63BA9E4()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B63BAC00(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B634EA3C;

  return FavoriteItem.placeItemNote()();
}

uint64_t FavoriteItem.setPlaceItemNote(_:)(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v4 = sub_1B63BEA04();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B63BADE8, 0, 0);
}

uint64_t sub_1B63BADE8()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[29];
  v5 = *(v4 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v0[36] = v5;
  [v5 lock];
  v6 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v0[37] = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  swift_beginAccess();
  sub_1B628C510(v4 + v6, v3, &unk_1EB943680, qword_1B63C4070);
  [v5 unlock];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B6284EAC(v0[32], &unk_1EB943680, qword_1B63C4070);

    v7 = v0[1];

    return v7();
  }

  else
  {
    (*(v0[34] + 32))(v0[35], v0[32], v0[33]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B63C3D50;
    v10 = sub_1B63BE9C4();
    *(inited + 56) = sub_1B6281C60(0, &qword_1EB943690, 0x1E696AFB0);
    *(inited + 64) = sub_1B62B03CC(&qword_1EB943730, &qword_1EB943690, 0x1E696AFB0);
    *(inited + 32) = v10;
    v11 = sub_1B628E52C(0xD000000000000018, 0x80000001B63CCFF0, inited);
    v0[38] = v11;
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
    v12 = v11;
    v13 = sub_1B62895F4(v11, 0, 0);
    v0[39] = v13;

    v14 = objc_allocWithZone(type metadata accessor for CollectionPlaceItemRequest());
    if (qword_1EDB0F2A0 != -1)
    {
      v18 = v14;
      swift_once();
      v14 = v18;
    }

    v0[40] = qword_1EDB0F2A8;
    v0[41] = [v14 initWithStore_];
    v15 = v13;
    v16 = swift_task_alloc();
    v0[42] = v16;
    *v16 = v0;
    v16[1] = sub_1B63BB118;

    return sub_1B628B2B4(v13, v17);
  }
}

uint64_t sub_1B63BB118(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 328);
  v5 = *(*v2 + 312);
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {
    v6 = sub_1B63BB9F8;
  }

  else
  {
    v6 = sub_1B63BB268;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B63BB268()
{
  v1 = v0[43];
  if (v1 >> 62)
  {
    result = sub_1B63BF044();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = v0[36];
    v12 = v0[30];
    v11 = v0[31];
    v13 = v0[29];
    v25 = v0[37];
    v26 = v0[28];
    v27 = v0[27];

    v14 = [objc_allocWithZone(type metadata accessor for CollectionPlaceItem(0)) init];
    v0[49] = v14;
    v15 = v14;
    [v10 lock];
    v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
    swift_beginAccess();
    sub_1B628C510(v13 + v16, v12, &unk_1EB943210, &unk_1B63C3F50);
    [v10 unlock];
    sub_1B6396BEC(v12, 1);
    sub_1B6284EAC(v12, &unk_1EB943210, &unk_1B63C3F50);
    sub_1B62D6290(2);
    [v10 lock];
    sub_1B628C510(v13 + v25, v11, &unk_1EB943680, qword_1B63C4070);
    [v10 unlock];
    v17 = sub_1B62D50D4(v11);
    v19 = sub_1B6296C10(v17, v18);
    v21 = sub_1B62D0934(v19, v20);
    v23 = sub_1B6296250(v21, v22);
    v24 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
    [*&v15[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock] lock];
    sub_1B62D67AC(*&v15[v24], v23, v15);
    [*&v15[v24] unlock];

    sub_1B62D5DB0(v27, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    inited = swift_initStackObject();
    v0[50] = inited;
    *(inited + 16) = xmmword_1B63C3D70;
    *(inited + 32) = v15;
    v8 = swift_task_alloc();
    v0[51] = v8;
    *v8 = v0;
    v9 = sub_1B63BB7E8;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1B8C92830](0, v0[43]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[43] + 32);
  }

  v0[45] = v3;
  v5 = v0[27];
  v4 = v0[28];

  sub_1B62D5DB0(v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  v0[46] = inited;
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = v3;
  v7 = v3;
  v8 = swift_task_alloc();
  v0[47] = v8;
  *v8 = v0;
  v9 = sub_1B63BB5D8;
LABEL_9:
  v8[1] = v9;

  return sub_1B637E4F8(inited);
}

uint64_t sub_1B63BB5D8()
{
  *(*v1 + 384) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  if (v0)
  {
    v2 = sub_1B63BBAB0;
  }

  else
  {
    v2 = sub_1B63BB720;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B63BB720()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 264);

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B63BB7E8()
{
  *(*v1 + 416) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  if (v0)
  {
    v2 = sub_1B63BBB70;
  }

  else
  {
    v2 = sub_1B63BB930;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B63BB930()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 264);

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B63BB9F8()
{
  v1 = *(v0 + 304);

  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B63BBAB0()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B63BBB70()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B63BBDB8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_1B63BEBD4();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1B634FBD4;

  return FavoriteItem.setPlaceItemNote(_:)(a1, v7);
}

uint64_t sub_1B63BBE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1B628C510(a3, v23 - v10, &qword_1EB943830, &qword_1B63C5100);
  v12 = sub_1B63BED34();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B6284EAC(v11, &qword_1EB943830, &qword_1B63C5100);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B63BED24();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1B63BECF4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1B63BEC04() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1B6284EAC(a3, &qword_1EB943830, &qword_1B63C5100);

    return v21;
  }

LABEL_8:
  sub_1B6284EAC(a3, &qword_1EB943830, &qword_1B63C5100);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1B63BC198(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B62AB2F4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B63BC214(v6);
  return sub_1B63BF174();
}

void sub_1B63BC214(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B63BF334();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
        v6 = sub_1B63BECD4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1B63BC418(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B63BC328(0, v2, 1, a1);
  }
}

void sub_1B63BC328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v18 = v7;
    while (1)
    {
      v20 = v9;
      v19 = *v7;
      v11 = v19;
      v12 = v9;
      v13 = v11;
      v14 = sub_1B63B7D68(&v20, &v19);

      if (v4)
      {
        break;
      }

      if (v14)
      {
        if (!v6)
        {
          __break(1u);
          return;
        }

        v15 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v15;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v18 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1B63BC418(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v5 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 >= v6)
    {
      goto LABEL_20;
    }

    v98 = v6;
    v10 = *a3;
    v11 = *(*a3 + 8 * v7);
    v101 = *(*a3 + 8 * v9);
    v12 = v101;
    v102 = v11;
    v13 = v11;
    v14 = v12;
    v15 = sub_1B63B7D68(&v102, &v101);
    if (v4)
    {

      return;
    }

    v16 = v15;

    v17 = v9 + 2;
    v95 = v9;
    v18 = 8 * v9;
    v5 = v10 + v18 + 16;
    while (1)
    {
      v7 = v98;
      if (v98 == v17)
      {
        break;
      }

      v19 = *v5;
      v101 = *(v5 - 8);
      v20 = v101;
      v102 = v19;
      v21 = v19;
      v22 = v20;
      v23 = sub_1B63B7D68(&v102, &v101);

      ++v17;
      v5 += 8;
      if ((v16 ^ v23))
      {
        v7 = v17 - 1;
        break;
      }
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_18;
    }

    v24 = v95;
    if (v7 < v95)
    {
      goto LABEL_124;
    }

    if (v95 < v7)
    {
      v25 = 8 * v7 - 8;
      v26 = v7;
      do
      {
        if (v24 != --v26)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v28 = *(v27 + v18);
          *(v27 + v18) = *(v27 + v25);
          *(v27 + v25) = v28;
        }

        ++v24;
        v25 -= 8;
        v18 += 8;
      }

      while (v24 < v26);
LABEL_18:
      v9 = v95;
      goto LABEL_20;
    }

    v9 = v95;
LABEL_20:
    v29 = a3[1];
    if (v7 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_120;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_133;
    }

    if (__OFADD__(v9, a4))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v9 + a4 >= v29)
    {
      v30 = a3[1];
    }

    else
    {
      v30 = v9 + a4;
    }

    if (v30 < v9)
    {
      goto LABEL_123;
    }

    if (v7 == v30)
    {
LABEL_133:
      if (v7 < v9)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = v9;
      v78 = *a3;
      v5 = *a3 + 8 * v7 - 8;
      v96 = v77;
      v79 = v77 - v7;
      v92 = v30;
      do
      {
        v80 = *(v78 + 8 * v7);
        v93 = v79;
        v99 = v5;
        do
        {
          v101 = *v5;
          v81 = v101;
          v102 = v80;
          v82 = v80;
          v83 = v81;
          v84 = sub_1B63B7D68(&v102, &v101);
          if (v4)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v5;
          v80 = *(v5 + 8);
          *v5 = v80;
          *(v5 + 8) = v86;
          v5 -= 8;
        }

        while (!__CFADD__(v79++, 1));
        ++v7;
        v5 = v99 + 8;
        v79 = v93 - 1;
      }

      while (v7 != v92);
      v7 = v92;
      v9 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1B62B24E4(0, *(v8 + 2) + 1, 1, v8);
    }

    v32 = *(v8 + 2);
    v31 = *(v8 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v8 = sub_1B62B24E4((v31 > 1), v32 + 1, 1, v8);
    }

    *(v8 + 2) = v33;
    v34 = &v8[16 * v32];
    *(v34 + 4) = v9;
    *(v34 + 5) = v7;
    v35 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v36 = v33 - 1;
    if (v33 >= 4)
    {
      v41 = &v8[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_106;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_107;
      }

      v48 = &v8[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_109;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_112;
      }

      if (v52 >= v44)
      {
        v70 = &v8[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_118;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v37 = *(v8 + 4);
      v38 = *(v8 + 5);
      v47 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      v40 = v47;
LABEL_49:
      if (v40)
      {
        goto LABEL_108;
      }

      v53 = &v8[16 * v33];
      v55 = *v53;
      v54 = *(v53 + 1);
      v56 = __OFSUB__(v54, v55);
      v57 = v54 - v55;
      v58 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v59 = &v8[16 * v36 + 32];
      v61 = *v59;
      v60 = *(v59 + 1);
      v47 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v47)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v57, v62))
      {
        goto LABEL_115;
      }

      if (v57 + v62 >= v39)
      {
        if (v39 < v62)
        {
          v36 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v63 = &v8[16 * v33];
    v65 = *v63;
    v64 = *(v63 + 1);
    v47 = __OFSUB__(v64, v65);
    v57 = v64 - v65;
    v58 = v47;
LABEL_63:
    if (v58)
    {
      goto LABEL_110;
    }

    v66 = &v8[16 * v36];
    v68 = *(v66 + 4);
    v67 = *(v66 + 5);
    v47 = __OFSUB__(v67, v68);
    v69 = v67 - v68;
    if (v47)
    {
      goto LABEL_113;
    }

    if (v69 < v57)
    {
      goto LABEL_3;
    }

LABEL_70:
    v74 = v36 - 1;
    if (v36 - 1 >= v33)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_125;
    }

    v5 = *&v8[16 * v74 + 32];
    v75 = *&v8[16 * v36 + 40];
    sub_1B63BCA74((*a3 + 8 * v5), (*a3 + 8 * *&v8[16 * v36 + 32]), (*a3 + 8 * v75), v35);
    if (v4)
    {
      goto LABEL_100;
    }

    if (v75 < v5)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1B63BCE9C(v8);
    }

    if (v74 >= *(v8 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v8[16 * v74];
    *(v76 + 4) = v5;
    *(v76 + 5) = v75;
    v103 = v8;
    sub_1B63BCE10(v36);
    v8 = v103;
    v33 = *(v103 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
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
  v8 = sub_1B63BCE9C(v8);
LABEL_92:
  v103 = v8;
  v88 = *(v8 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*a3)
    {
      v89 = *&v8[16 * v88];
      v90 = *&v8[16 * v88 + 24];
      sub_1B63BCA74((*a3 + 8 * v89), (*a3 + 8 * *&v8[16 * v88 + 16]), (*a3 + 8 * v90), v5);
      if (v4)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1B63BCE9C(v8);
      }

      if (v88 - 2 >= *(v8 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v8[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v103 = v8;
      sub_1B63BCE10(v88 - 1);
      v8 = v103;
      v88 = *(v103 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

uint64_t sub_1B63BCA74(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_1B63B7D68(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= (v21 + (v44 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = (v21 + 1);
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = v16 - a4 + 7;
    if ((v16 - a4) >= 0)
    {
      v46 = v16 - a4;
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = v16 + v28;
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *--v31;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_1B63B7D68(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = v6 + 1;
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= v51 + (v40 & 0xFFFFFFFFFFFFFFF8) || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

uint64_t sub_1B63BCE10(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B63BCE9C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void (*sub_1B63BCEB0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8C92830](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B63BD8C0;
  }

  __break(1u);
  return result;
}

void (*sub_1B63BCF30(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8C92830](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B63BCFB0;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B63BD010(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1B63BF044();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B63BD0B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B63BF044();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1B63BF044();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B63BD814(&qword_1EB943840, &qword_1EB943838, &qword_1B63C7748);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943838, &qword_1B63C7748);
            v9 = sub_1B63BCF30(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MapsSyncManagedVisit();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B63BD244(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B63BF044();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1B63BF044();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B63BD814(&unk_1EB943800, &unk_1EB943710, &qword_1B63C3EB8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943710, &qword_1B63C3EB8);
            v9 = sub_1B63BCEB0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1B63BD3E4(uint64_t a1)
{
  sub_1B63BF114();

  v16 = 0x80000001B63CD030;
  v2 = sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
  v3 = MEMORY[0x1B8C923A0](a1, v2);
  MEMORY[0x1B8C92330](v3);

  _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0xD00000000000001DLL, 0x80000001B63CD030);

  v15 = sub_1B63BD010(v4, sub_1B62903E4, sub_1B63BD244);
  sub_1B63BC198(&v15);
  v5 = v15;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1B63BF114();

  v15 = 0xD000000000000010;
  v16 = 0x80000001B63CC590;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1B8C92830](0, v5);
  }

  else
  {
    if (!*(v5 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;
  v8 = [v6 description];
  v9 = sub_1B63BEBD4();
  v11 = v10;

  MEMORY[0x1B8C92330](v9, v11);

  _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v15, v16);

  if ((v5 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B8C92830](0, v5);
  }

  else
  {
    v12 = *(v5 + 32);
  }

  v13 = v12;

  return v13;
}

uint64_t sub_1B63BD5E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628CAA0;

  return sub_1B63BBDB8(v2, v3, v4);
}

uint64_t sub_1B63BD69C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628E340;

  return sub_1B6282F1C(a1, v4);
}

uint64_t sub_1B63BD754()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628E340;

  return sub_1B63BAC00(v2, v3);
}

uint64_t sub_1B63BD814(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B63BD868()
{
  result = qword_1EDB0E5F8;
  if (!qword_1EDB0E5F8)
  {
    sub_1B63BEA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB0E5F8);
  }

  return result;
}

uint64_t sub_1B63BD8CC(uint64_t a1)
{
  type metadata accessor for MapsSyncObject(0);
  v1 = swift_dynamicCastMetatype();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  sub_1B63AA55C();
  result = swift_allocObject();
  *(result + 16) = xmmword_1B63C3D50;
  *(result + 32) = v2;
  return result;
}

id sub_1B63BD9A0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedUserRoute();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B63BD9F8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedUserRoute();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

void *MapsSyncMapItemWithClientAttributes<A>(_:mapItemStorage:)(void *a1, void *a2)
{
  v4 = sub_1B63BEA04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - v12;
  if (a2)
  {
    (*(v5 + 56))(&v44 - v12, 1, 1, v4);
    type metadata accessor for FavoriteItem(0);
    v14 = swift_dynamicCastClass();
    v46 = a1;
    v44 = v7;
    if (v14)
    {
      v45 = v5;
      v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
      v16 = *(v14 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
      v17 = v14;
      v18 = a1;
      v19 = a2;
      [v16 lock];
      v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
      swift_beginAccess();
      sub_1B628C510(v17 + v20, v11, &unk_1EB943680, qword_1B63C4070);
      [v16 unlock];
      sub_1B62B2C7C(v11, v13);
      v21 = *(v17 + v15);
      [v21 lock];
      LOWORD(v16) = *(v17 + OBJC_IVAR___MSFavoriteItem__type);
      [v21 unlock];

      v22 = sub_1B6296B88(v16);
      v23 = 0;
      if ((v22 & 0x10000) != 0)
      {
        v5 = v45;
      }

      else
      {
        v5 = v45;
        if (v22 < 7u)
        {
          v23 = dword_1B63C7844[v22 & 7];
        }
      }
    }

    else
    {
      type metadata accessor for HistoryPlaceItem(0);
      v24 = swift_dynamicCastClass();
      if (!v24)
      {
        type metadata accessor for CollectionPlaceItem(0);
        v24 = swift_dynamicCastClass();
        if (!v24)
        {
          a2 = 0;
LABEL_21:
          sub_1B6284EAC(v13, &unk_1EB943680, qword_1B63C4070);
          return a2;
        }
      }

      v25 = *(v24 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
      v26 = v24;
      v27 = a1;
      v28 = a2;
      [v25 lock];
      v29 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
      swift_beginAccess();
      sub_1B628C510(v26 + v29, v11, &unk_1EB943680, qword_1B63C4070);
      [v25 unlock];

      sub_1B62B2C7C(v11, v13);
      v23 = 0;
    }

    v30 = a2;
    v31 = [v30 _clientAttributes];
    if (!v31)
    {
      v31 = [objc_allocWithZone(MEMORY[0x1E69A21B0]) init];
    }

    v32 = [objc_allocWithZone(MEMORY[0x1E69A21C8]) init];
    if (v32)
    {
      LODWORD(v45) = v23;
      if ((*(v5 + 48))(v13, 1, v4))
      {
        v33 = v32;
        v34 = 0;
      }

      else
      {
        v35 = v44;
        (*(v5 + 16))(v44, v13, v4);
        v36 = v32;
        sub_1B63BE9B4();
        (*(v5 + 8))(v35, v4);
        v34 = sub_1B63BEBC4();
      }

      [v32 setMapsSyncIdentifier_];

      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v38 = v32;
      v39 = NSStringFromClass(ObjCClassFromMetadata);
      if (!v39)
      {
        sub_1B63BEBD4();
        v39 = sub_1B63BEBC4();
      }

      [v38 setMapsSyncObjectType_];

      v23 = v45;
    }

    [v32 setSecondaryObjectType_];
    [v31 setMapsSyncAttributes_];
    v40 = objc_opt_self();
    v41 = v30;
    v42 = [v40 mapItemStorageForGEOMapItem:v41 clientAttributes:v31];

    if (v42)
    {

      a2 = v42;
    }

    goto LABEL_21;
  }

  return a2;
}

id MapsSyncCategoryForMapItem(mapItem:)(void *a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1B63BE2E4(a1);
}

void MapsSyncObjectIdentifierForMapItem(mapItem:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 _clientAttributes];
  if (v3 && (v4 = v3, v5 = [v3 mapsSyncAttributes], v4, v5) && (v6 = objc_msgSend(v5, sel_mapsSyncIdentifier), v5, v6))
  {
    sub_1B63BEBD4();

    sub_1B63BE9A4();
  }

  else
  {
    v7 = sub_1B63BEA04();
    v8 = *(*(v7 - 8) + 56);

    v8(a2, 1, 1, v7);
  }
}

double sub_1B63BE0D0()
{
  result = *MEMORY[0x1E69A1670] + 20.0;
  *&qword_1EDB0E5F0 = result;
  return result;
}

double MapsSyncDeduplicationRadiusMeters.getter()
{
  if (qword_1EDB0E5E8 != -1)
  {
    swift_once();
  }

  return *&qword_1EDB0E5F0;
}

Swift::Bool __swiftcall MapsSyncIsHostedByMapsSyncDaemon()()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1B63BEBD4();
    v4 = v3;

    if (v2 == 0xD000000000000018 && 0x80000001B63CAAF0 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_1B63BF364();
    }
  }

  return v1 & 1;
}

id MapsSyncClassTypeForMapItem(mapItem:)(void *a1)
{
  result = [a1 _clientAttributes];
  if (result)
  {
    v2 = result;
    v3 = [result mapsSyncAttributes];

    if (v3 && (v4 = [v3 mapsSyncObjectType], v3, v4) && (sub_1B63BEBD4(), v4, v5 = sub_1B63BEBC4(), , v6 = NSClassFromString(v5), v5, v6))
    {
      return swift_getObjCClassMetadata();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1B63BE2E4(void *a1)
{
  v22 = sub_1B63BE844();
  v19 = *(v22 - 8);
  v2 = MEMORY[0x1EEE9AC00](v22);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - v5;
  v28 = MEMORY[0x1E69E7CD0];
  v7 = [a1 _place];
  v8 = [v7 firstBusiness];

  v9 = [v8 localizedCategories];
  if (!v9)
  {
    sub_1B6281C60(0, &qword_1EB942B88, 0x1E695DF70);
    v9 = MEMORY[0x1B8C925C0](MEMORY[0x1E69E7CC0]);
  }

  sub_1B63BEEE4();

  sub_1B63BE834();
  if (!v27)
  {
LABEL_16:
    (*(v19 + 8))(v6, v22);
    v26 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943328, &unk_1B63C4B40);
    sub_1B6349C10();
    sub_1B6349C74();
    v17 = sub_1B63BEC74();

    return v17;
  }

  v10 = sub_1B6281C60(0, &qword_1EB943330, 0x1E69A1BD0);
  v20 = (v19 + 8);
  v21 = v10;
  while (1)
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_6;
    }

    v11 = v6;
    v12 = v24;
    v13 = [v24 localizedNames];
    if (!v13)
    {
      sub_1B6281C60(0, &qword_1EB942B88, 0x1E695DF70);
      v13 = MEMORY[0x1B8C925C0](MEMORY[0x1E69E7CC0]);
    }

    sub_1B63BEEE4();

    sub_1B63BE834();
    if (v25)
    {
      break;
    }

LABEL_5:
    (*v20)(v4, v22);

    v6 = v11;
LABEL_6:
    sub_1B63BE834();
    if (!v27)
    {
      goto LABEL_16;
    }
  }

  sub_1B6281C60(0, qword_1EB943338, 0x1E69A1E68);
  while ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_1B63BE834();
    if (!v25)
    {
      goto LABEL_5;
    }
  }

  v14 = v23;
  result = [v23 name];
  if (result)
  {
    v16 = result;
    sub_1B63BEBD4();

    sub_1B62CD684();

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_1B63BE6F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedVehicle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}