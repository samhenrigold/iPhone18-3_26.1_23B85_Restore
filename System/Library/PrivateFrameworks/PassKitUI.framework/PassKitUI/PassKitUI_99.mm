void sub_1BDA7BE54(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BE04D214();
  MEMORY[0x1EEE9AC00](v6);
  v7 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  sub_1BE048C84();
  v8 = sub_1BD469048(a1, a2, 0);
  if (v8)
  {
    v9 = v8;
    v10 = [v8 localizedName];
    if (!v10)
    {
      sub_1BE052434();
      v12 = v11;
      v10 = sub_1BE052404();
      v12, v13, v14, v15, v16, v17, v18, v19;
    }

    v20 = [objc_opt_self() preferenceSpecifierNamed:v10 target:v3 set:sel_setBackgroundAddAuthorization:: get:sel_backgroundAddAuthorizationWithSpecifier_ detail:0 cell:6 edit:0];

    if (v20)
    {
      v21 = sub_1BE052404();
      v22 = sub_1BE052404();
      [v20 setProperty:v21 forKey:v22];

      v23 = sub_1BE052404();
      [v20 setProperty:v23 forKey:*MEMORY[0x1E69C5948]];

      v24 = sub_1BE052824();
      v25 = *MEMORY[0x1E69C5950];
      [v20 setProperty:v24 forKey:v25];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id WalletPrivacySettingsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WalletPrivacySettingsProvider.init()()
{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalletPrivacySettingsProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WalletPrivacySettingsProvider.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WalletPrivacySettingsProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BDA7C344(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BE053B14();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v8 = v3;
      v9 = v2 / 2;
      if (v2 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1BD0E5E8C(0, &qword_1EBD46B20, 0x1E69C5748);
        v10 = sub_1BE0527B4();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v20[0] = ((v10 & 0xFFFFFFFFFFFFFF8) + 32);
      v20[1] = v9;
      v12 = v10;
      sub_1BDA7C5EC(v20, v21, a1, v8, v4, v5, v6, v7);
      *(v11 + 16) = 0;
      v12, v13, v14, v15, v16, v17, v18, v19;
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
    sub_1BDA7C458(0, v2, 1, a1);
  }
}

void sub_1BDA7C458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v57 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
    v6 = &selRef_metricsForTextStyle_;
LABEL_6:
    v55 = v4;
    v56 = a3;
    v21 = *(v57 + 8 * a3);
    v54 = v5;
    while (1)
    {
      v22 = *v4;
      v23 = v21;
      v24 = v22;
      v25 = [v23 v6[77]];
      if (!v25)
      {
        break;
      }

      v26 = v25;
      v27 = sub_1BE052434();
      v29 = v28;

      v30 = [v24 v6[77]];
      if (!v30)
      {
        __break(1u);
        break;
      }

      v31 = v30;
      v32 = sub_1BE052434();
      v34 = v33;

      if (v27 == v32 && v29 == v34)
      {

        v29, v7, v8, v9, v10, v11, v12, v13;
        v34, v14, v15, v16, v17, v18, v19, v20;
        v6 = &selRef_metricsForTextStyle_;
LABEL_5:
        a3 = v56 + 1;
        v4 = v55 + 8;
        v5 = v54 - 1;
        if (v56 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v36 = sub_1BE053B84();

      v29, v37, v38, v39, v40, v41, v42, v43;
      v34, v44, v45, v46, v47, v48, v49, v50;
      v6 = &selRef_metricsForTextStyle_;
      if (v36)
      {
        if (!v57)
        {
          goto LABEL_20;
        }

        v51 = *v4;
        v21 = *(v4 + 8);
        *v4 = v21;
        *(v4 + 8) = v51;
        v4 -= 8;
        if (!__CFADD__(v5++, 1))
        {
          continue;
        }
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void sub_1BDA7C5EC(void ***a1, const char *a2, unint64_t *a3, uint64_t a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = a3[1];
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v12 = &selRef_metricsForTextStyle_;
    while (1)
    {
      v13 = v10;
      v14 = v10 + 1;
      if (v10 + 1 >= v9)
      {
        goto LABEL_38;
      }

      v199 = v9;
      v192 = v11;
      v194 = v10;
      v8 = *a3;
      v15 = *(*a3 + 8 * v10);
      v16 = *(*a3 + 8 * v14);
      v17 = v15;
      v18 = [v16 v12[77]];
      if (!v18)
      {
        break;
      }

      v19 = v18;
      v10 = sub_1BE052434();
      v21 = v20;

      v22 = [v17 v12[77]];
      if (!v22)
      {
        goto LABEL_163;
      }

      v23 = v22;
      v24 = sub_1BE052434();
      v26 = v25;

      if (v10 == v24 && v21 == v26)
      {
        v205 = 0;
      }

      else
      {
        v205 = sub_1BE053B84();
      }

      v21, v27, v28, v29, v30, v31, v32, v33;
      v26, v35, v36, v37, v38, v39, v40, v41;

      v13 = v194;
      v14 = v194 + 2;
      if (v194 + 2 >= v199)
      {
        v12 = &selRef_metricsForTextStyle_;
        goto LABEL_29;
      }

      v202 = v194 + 2;
      v8 += 8 * v194 + 16;
      v12 = &selRef_metricsForTextStyle_;
      while (1)
      {
        v57 = *(v8 - 8);
        v58 = *v8;
        v59 = v57;
        v60 = [v58 v12[77]];
        if (!v60)
        {
          goto LABEL_157;
        }

        v61 = v60;
        v10 = sub_1BE052434();
        v63 = v62;

        v64 = [v59 v12[77]];
        if (!v64)
        {
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        v65 = v64;
        v66 = sub_1BE052434();
        v68 = v67;

        if (v10 == v66 && v63 == v68)
        {
          break;
        }

        v42 = sub_1BE053B84();

        v63, v43, v44, v45, v46, v47, v48, v49;
        v68, v50, v51, v52, v53, v54, v55, v56;
        if ((v205 ^ v42))
        {
          v12 = &selRef_metricsForTextStyle_;
          v14 = v202;
LABEL_28:
          v13 = v194;
LABEL_29:
          v11 = v192;
          if (v205)
          {
            goto LABEL_30;
          }

          goto LABEL_38;
        }

LABEL_16:
        v8 += 8;
        ++v202;
        v14 = v199;
        v12 = &selRef_metricsForTextStyle_;
        if (v199 == v202)
        {
          goto LABEL_28;
        }
      }

      v63, v70, v71, v72, v73, v74, v75, v76;
      v68, v77, v78, v79, v80, v81, v82, v83;
      if ((v205 & 1) == 0)
      {
        goto LABEL_16;
      }

      v11 = v192;
      v13 = v194;
      v12 = &selRef_metricsForTextStyle_;
      v14 = v202;
LABEL_30:
      if (v14 < v13)
      {
        goto LABEL_149;
      }

      if (v13 < v14)
      {
        v84 = 8 * v14 - 8;
        v85 = 8 * v13;
        v86 = v14;
        v87 = v13;
        do
        {
          if (v87 != --v14)
          {
            v88 = *a3;
            if (!*a3)
            {
              goto LABEL_159;
            }

            v89 = *(v88 + v85);
            *(v88 + v85) = *(v88 + v84);
            *(v88 + v84) = v89;
          }

          ++v87;
          v84 -= 8;
          v85 += 8;
        }

        while (v87 < v14);
        v14 = v86;
      }

LABEL_38:
      v90 = a3[1];
      if (v14 >= v90)
      {
        v10 = v14;
        if (v14 < v13)
        {
          goto LABEL_147;
        }

        goto LABEL_49;
      }

      if (__OFSUB__(v14, v13))
      {
        goto LABEL_148;
      }

      v91 = v14;
      if (v14 - v13 >= a4)
      {
LABEL_46:
        v10 = v14;
        if (v14 < v13)
        {
          goto LABEL_147;
        }

        goto LABEL_49;
      }

      v92 = v13 + a4;
      if (__OFADD__(v13, a4))
      {
        goto LABEL_150;
      }

      if (v92 >= v90)
      {
        v92 = a3[1];
      }

      if (v92 < v13)
      {
LABEL_151:
        __break(1u);
        goto LABEL_152;
      }

      if (v14 == v92)
      {
        goto LABEL_46;
      }

      v193 = v11;
      v195 = v13;
      v206 = *a3;
      v8 = *a3 + 8 * v14 - 8;
      v140 = v13 - v14;
      v197 = v92;
      do
      {
        v203 = v91;
        v155 = *(v206 + 8 * v91);
        v198 = v140;
        v200 = v8;
        while (1)
        {
          v156 = *v8;
          v157 = v155;
          v158 = v156;
          v159 = [v157 v12[77]];
          if (!v159)
          {
            goto LABEL_154;
          }

          v160 = v159;
          v161 = sub_1BE052434();
          v163 = v162;

          v164 = [v158 v12[77]];
          if (!v164)
          {
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

          v165 = v164;
          v166 = sub_1BE052434();
          v168 = v167;

          if (v161 == v166 && v163 == v168)
          {
            break;
          }

          v170 = sub_1BE053B84();

          v163, v171, v172, v173, v174, v175, v176, v177;
          v168, v178, v179, v180, v181, v182, v183, v184;
          v12 = &selRef_metricsForTextStyle_;
          if ((v170 & 1) == 0)
          {
            goto LABEL_100;
          }

          if (!v206)
          {
            goto LABEL_155;
          }

          v185 = *v8;
          v155 = *(v8 + 8);
          *v8 = v155;
          *(v8 + 8) = v185;
          v8 -= 8;
          if (__CFADD__(v140++, 1))
          {
            goto LABEL_100;
          }
        }

        v163, v141, v142, v143, v144, v145, v146, v147;
        v168, v148, v149, v150, v151, v152, v153, v154;
        v12 = &selRef_metricsForTextStyle_;
LABEL_100:
        v91 = v203 + 1;
        v8 = v200 + 8;
        v140 = v198 - 1;
      }

      while (v203 + 1 != v197);
      v10 = v197;
      v11 = v193;
      v13 = v195;
      if (v197 < v195)
      {
        goto LABEL_147;
      }

LABEL_49:
      v93 = v11;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v11 = v93;
      }

      else
      {
        v11 = sub_1BD1D7844(0, *(v93 + 2) + 1, 1, v93, a5, a6, a7, a8);
      }

      v8 = *(v11 + 2);
      v94 = *(v11 + 3);
      v95 = v8 + 1;
      if (v8 >= v94 >> 1)
      {
        v11 = sub_1BD1D7844((v94 > 1), v8 + 1, 1, v11, a5, a6, a7, a8);
      }

      *(v11 + 2) = v95;
      v96 = &v11[16 * v8];
      *(v96 + 4) = v13;
      *(v96 + 5) = v10;
      v97 = *a1;
      if (!*a1)
      {
        goto LABEL_161;
      }

      if (v8)
      {
        while (1)
        {
          v98 = v95 - 1;
          if (v95 >= 4)
          {
            break;
          }

          if (v95 == 3)
          {
            v99 = *(v11 + 4);
            v100 = *(v11 + 5);
            v109 = __OFSUB__(v100, v99);
            v101 = v100 - v99;
            v102 = v109;
LABEL_68:
            if (v102)
            {
              goto LABEL_136;
            }

            v115 = &v11[16 * v95];
            v117 = *v115;
            v116 = *(v115 + 1);
            v118 = __OFSUB__(v116, v117);
            v119 = v116 - v117;
            v120 = v118;
            if (v118)
            {
              goto LABEL_139;
            }

            v121 = &v11[16 * v98 + 32];
            v123 = *v121;
            v122 = *(v121 + 1);
            v109 = __OFSUB__(v122, v123);
            v124 = v122 - v123;
            if (v109)
            {
              goto LABEL_142;
            }

            if (__OFADD__(v119, v124))
            {
              goto LABEL_143;
            }

            if (v119 + v124 >= v101)
            {
              if (v101 < v124)
              {
                v98 = v95 - 2;
              }

              goto LABEL_89;
            }

            goto LABEL_82;
          }

          v125 = &v11[16 * v95];
          v127 = *v125;
          v126 = *(v125 + 1);
          v109 = __OFSUB__(v126, v127);
          v119 = v126 - v127;
          v120 = v109;
LABEL_82:
          if (v120)
          {
            goto LABEL_138;
          }

          v128 = &v11[16 * v98];
          v130 = *(v128 + 4);
          v129 = *(v128 + 5);
          v109 = __OFSUB__(v129, v130);
          v131 = v129 - v130;
          if (v109)
          {
            goto LABEL_141;
          }

          if (v131 < v119)
          {
            goto LABEL_3;
          }

LABEL_89:
          v8 = v98 - 1;
          if (v98 - 1 >= v95)
          {
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
LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

          if (!*a3)
          {
            goto LABEL_156;
          }

          v136 = v11;
          v137 = *&v11[16 * v8 + 32];
          v138 = *&v11[16 * v98 + 40];
          sub_1BDA7CE5C((*a3 + 8 * v137), (*a3 + 8 * *&v11[16 * v98 + 32]), (*a3 + 8 * v138), v97);
          if (v204)
          {
LABEL_129:
            v187 = v136;
            goto LABEL_130;
          }

          if (v138 < v137)
          {
            goto LABEL_132;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v136 = sub_1BD5ED6C8(v136, a2, a3, v11, a5, a6, a7, a8);
          }

          if (v8 >= *(v136 + 2))
          {
            goto LABEL_133;
          }

          v139 = &v136[16 * v8];
          *(v139 + 4) = v137;
          *(v139 + 5) = v138;
          sub_1BD5ED63C(v98);
          v11 = v136;
          v95 = *(v136 + 2);
          if (v95 <= 1)
          {
            goto LABEL_3;
          }
        }

        v103 = &v11[16 * v95 + 32];
        v104 = *(v103 - 64);
        v105 = *(v103 - 56);
        v109 = __OFSUB__(v105, v104);
        v106 = v105 - v104;
        if (v109)
        {
          goto LABEL_134;
        }

        v108 = *(v103 - 48);
        v107 = *(v103 - 40);
        v109 = __OFSUB__(v107, v108);
        v101 = v107 - v108;
        v102 = v109;
        if (v109)
        {
          goto LABEL_135;
        }

        v110 = &v11[16 * v95];
        v112 = *v110;
        v111 = *(v110 + 1);
        v109 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v109)
        {
          goto LABEL_137;
        }

        v109 = __OFADD__(v101, v113);
        v114 = v101 + v113;
        if (v109)
        {
          goto LABEL_140;
        }

        if (v114 >= v106)
        {
          v132 = &v11[16 * v98 + 32];
          v134 = *v132;
          v133 = *(v132 + 1);
          v109 = __OFSUB__(v133, v134);
          v135 = v133 - v134;
          if (v109)
          {
            goto LABEL_144;
          }

          if (v101 < v135)
          {
            v98 = v95 - 2;
          }

          goto LABEL_89;
        }

        goto LABEL_68;
      }

LABEL_3:
      v9 = a3[1];
      if (v10 >= v9)
      {
        goto LABEL_117;
      }
    }

LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_117:
  v10 = *a1;
  if (*a1)
  {
    v8 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v187 = v8;
    }

    else
    {
LABEL_152:
      v187 = sub_1BD5ED6C8(v8, a2, a3, v11, a5, a6, a7, a8);
    }

    v8 = *(v187 + 2);
    if (v8 < 2)
    {
LABEL_130:
      v187, a2, a3, v11, a5, a6, a7, a8;
      return;
    }

    while (*a3)
    {
      v188 = *&v187[16 * v8];
      v136 = v187;
      v189 = *&v187[16 * v8 + 24];
      sub_1BDA7CE5C((*a3 + 8 * v188), (*a3 + 8 * *&v187[16 * v8 + 16]), (*a3 + 8 * v189), v10);
      if (v204)
      {
        goto LABEL_129;
      }

      if (v189 < v188)
      {
        goto LABEL_145;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v136 = sub_1BD5ED6C8(v136, a2, a3, v11, a5, a6, a7, a8);
      }

      if (v8 - 2 >= *(v136 + 2))
      {
        goto LABEL_146;
      }

      v190 = &v136[16 * v8];
      *v190 = v188;
      *(v190 + 1) = v189;
      sub_1BD5ED63C(v8 - 1);
      v187 = v136;
      v8 = *(v136 + 2);
      if (v8 <= 1)
      {
        goto LABEL_130;
      }
    }

LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

LABEL_164:
  __break(1u);
}

uint64_t sub_1BDA7CE5C(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    v13 = __dst;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v117 = &v4[v8];
    if (v6 >= 8 && v12 < v5)
    {
      v14 = v12;
      v15 = &selRef_metricsForTextStyle_;
      v111 = v5;
      while (1)
      {
        v113 = v14;
        v16 = *v4;
        v17 = *v14;
        v18 = v16;
        result = [v17 v15[77]];
        if (!result)
        {
          goto LABEL_58;
        }

        v20 = result;
        v115 = v4;
        v21 = sub_1BE052434();
        v23 = v22;

        v24 = v15;
        result = [v18 v15[77]];
        if (!result)
        {
          goto LABEL_59;
        }

        v25 = result;
        v26 = sub_1BE052434();
        v28 = v27;

        if (v21 == v26 && v23 == v28)
        {
          break;
        }

        v30 = sub_1BE053B84();

        v23, v31, v32, v33, v34, v35, v36, v37;
        v28, v38, v39, v40, v41, v42, v43, v44;
        if ((v30 & 1) == 0)
        {
          goto LABEL_22;
        }

        v45 = v111;
        v46 = v113;
        v14 = v113 + 1;
        v4 = v115;
        v15 = v24;
        if (v13 != v113)
        {
          goto LABEL_23;
        }

LABEL_24:
        ++v13;
        if (v4 >= v117 || v14 >= v45)
        {
          goto LABEL_26;
        }
      }

      v23, v47, v48, v49, v50, v51, v52, v53;
      v28, v54, v55, v56, v57, v58, v59, v60;
LABEL_22:
      v14 = v113;
      v46 = v115;
      v4 = v115 + 1;
      v45 = v111;
      v15 = v24;
      if (v13 == v115)
      {
        goto LABEL_24;
      }

LABEL_23:
      *v13 = *v46;
      goto LABEL_24;
    }

LABEL_26:
    a2 = v13;
    goto LABEL_52;
  }

  if (__src != a2 || &a2[v11] <= __src)
  {
    v61 = a2;
    memmove(__src, a2, 8 * v11);
    a2 = v61;
  }

  v117 = &v4[v11];
  if (v9 < 8 || a2 <= __dst)
  {
LABEL_52:
    if (a2 != v4 || a2 >= (v4 + ((v117 - v4 + (v117 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, v4, 8 * (v117 - v4));
    }

    return 1;
  }

  v62 = &selRef_metricsForTextStyle_;
  v116 = v4;
LABEL_33:
  v114 = a2;
  v63 = a2 - 1;
  v64 = v117;
  v110 = a2 - 1;
  while (1)
  {
    v112 = v5;
    v65 = *--v64;
    v66 = *v63;
    v67 = v65;
    v68 = v66;
    result = [v67 v62[77]];
    if (!result)
    {
      break;
    }

    v69 = result;
    v70 = sub_1BE052434();
    v72 = v71;

    v73 = v62;
    result = [v68 v62[77]];
    if (!result)
    {
      goto LABEL_57;
    }

    v74 = result;
    v75 = sub_1BE052434();
    v77 = v76;

    if (v70 == v75 && v72 == v77)
    {

      v72, v95, v96, v97, v98, v99, v100, v101;
      v77, v102, v103, v104, v105, v106, v107, v108;
      v94 = v112;
      v5 = v112 - 1;
      v62 = v73;
    }

    else
    {
      v79 = sub_1BE053B84();

      v72, v80, v81, v82, v83, v84, v85, v86;
      v77, v87, v88, v89, v90, v91, v92, v93;
      v94 = v112;
      v5 = v112 - 1;
      v62 = v73;
      if (v79)
      {
        if (v112 != v114)
        {
          *v5 = *v110;
        }

        v4 = v116;
        if (v117 <= v116 || (a2 = v110, v110 <= __dst))
        {
          a2 = v110;
          goto LABEL_52;
        }

        goto LABEL_33;
      }
    }

    v63 = v110;
    if (v117 != v94)
    {
      *v5 = *v64;
    }

    v117 = v64;
    if (v64 <= v116)
    {
      v117 = v64;
      a2 = v114;
      v4 = v116;
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1BDA7D288(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D6F0, &qword_1EBD5D6E8, &qword_1BE1131F8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D6E8, &qword_1BE1131F8);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD43450, 0x1E69DD258);
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

uint64_t sub_1BDA7D428(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D700, &qword_1EBD5D6F8, &qword_1BE113200);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D6F8, &qword_1BE113200);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD45968, 0x1E69B8B00);
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

uint64_t sub_1BDA7D5C8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D730, &qword_1EBD38868, &qword_1BE0E4CA0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38868, &qword_1BE0E4CA0);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD406E0, 0x1E695CD58);
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

uint64_t sub_1BDA7D768(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D778, &unk_1EBD54D90, qword_1BE0FB688);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD54D90, qword_1BE0FB688);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD3D4A0, 0x1E69B8E90);
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

uint64_t sub_1BDA7D908(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D780, &qword_1EBD4D9A0, qword_1BE113230);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9A0, qword_1BE113230);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD390A8, 0x1E69B8C68);
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

uint64_t sub_1BDA7DAA8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D750, &qword_1EBD3C738, &qword_1BE0BF330);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C738, &qword_1BE0BF330);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD40650, 0x1E69B8A20);
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

uint64_t sub_1BDA7DC48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D740, &qword_1EBD416B0, &unk_1BE0E5EE0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416B0, &unk_1BE0E5EE0);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD45650, 0x1E69B9180);
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

uint64_t sub_1BDA7DDE8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D728, &qword_1EBD50270, &qword_1BE0D11C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50270, &qword_1BE0D11C0);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD43FC8, 0x1E69B8428);
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

uint64_t sub_1BDA7DF88(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D710, &qword_1EBD5D708, &qword_1BE113208);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D708, &qword_1BE113208);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD444C0, 0x1E69B8BC8);
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

uint64_t sub_1BDA7E128(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D738, &qword_1EBD40E70, &unk_1BE0D6840);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E70, &unk_1BE0D6840);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD456C0, 0x1E69B91E8);
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

uint64_t sub_1BDA7E2C8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D748, &qword_1EBD49E28, &unk_1BE113210);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E28, &unk_1BE113210);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD49E48, 0x1E6964E80);
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

uint64_t sub_1BDA7E468(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D770, &qword_1EBD51308, &qword_1BE0F2B18);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51308, &qword_1BE0F2B18);
            v9 = sub_1BD3F5888(v13, i, a3);
            v11 = *v10;
            sub_1BE048964();
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
        type metadata accessor for PeerPaymentGroupRecipient(0);
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

uint64_t sub_1BDA7E5F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D720, &qword_1EBD3BD10, &qword_1BE10AF20);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD10, &qword_1BE10AF20);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &unk_1EBD456F0, off_1E8004D38);
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

uint64_t sub_1BDA7E798(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D718, &unk_1EBD5BB70, &qword_1BE0D4600);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB70, &qword_1BE0D4600);
            v9 = sub_1BD3F5910(v13, i, a3);
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
        type metadata accessor for _AllowedValue();
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

uint64_t sub_1BDA7E928(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D760, &qword_1EBD5D758, &unk_1BE113220);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D758, &unk_1BE113220);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD46B20, 0x1E69C5748);
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

uint64_t sub_1BDA7EAC8(void x0_0, uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_1BE053704();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_1BD1DED90();
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1BD0E5E8C(0, &qword_1EBD3D4A0, 0x1E69B8E90);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_1BDA7EBDC(void *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v61 - v7;
  v9 = sub_1BE052404();
  v10 = [a1 propertyForKey_];

  if (v10)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v64[0] = v62;
  v64[1] = v63;
  if (!*(&v63 + 1))
  {
    sub_1BD0DE53C(v64, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_1BE04D1C4();
    v24 = sub_1BE04D204();
    v25 = sub_1BE052C34();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1BD026000, v24, v25, "Expected bundleID property on specifier", v26, 2u);
      MEMORY[0x1BFB45F20](v26, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    goto LABEL_16;
  }

  v12 = v61[0];
  v11 = v61[1];
  v13 = objc_opt_self();
  v14 = sub_1BE052404();
  v15 = [v13 authorizationStatusForCapability:0 bundleIdentifier:v14];

  if (v15 + 1 < 2 || v15 == 2)
  {
    v11, v16, v17, v18, v19, v20, v21, v22;
LABEL_16:
    v23 = 0;
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  if (v15 != 1)
  {
    sub_1BE04D1C4();
    sub_1BE048C84();
    v28 = sub_1BE04D204();
    v29 = sub_1BE052C34();
    v11, v30, v31, v32, v33, v34, v35, v36;
    if (os_log_type_enabled(v28, v29))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v64[0] = v38;
      *v37 = 134218242;
      *(v37 + 4) = v15;
      *(v37 + 12) = 2080;
      v39 = sub_1BD123690(v12, v11, v64);
      v11, v40, v41, v42, v43, v44, v45, v46;
      *(v37 + 14) = v39;
      _os_log_impl(&dword_1BD026000, v28, v29, "Unhandled authorization status %ld for bundle %s", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v38, v47, v48, v49, v50, v51, v52, v53);
      MEMORY[0x1BFB45F20](v38, -1, -1);
      MEMORY[0x1BFB45F20](v37, -1, -1);
    }

    else
    {

      v11, v54, v55, v56, v57, v58, v59, v60;
    }

    (*(v3 + 8))(v8, v2);
    goto LABEL_16;
  }

  v11, v16, v17, v18, v19, v20, v21, v22;
  v23 = 1;
  return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
}

uint64_t sub_1BDA7F178(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1BDA7F1D0()
{
  result = qword_1EBD5D788;
  if (!qword_1EBD5D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D788);
  }

  return result;
}

unint64_t sub_1BDA7F224()
{
  result = qword_1EBD5D790;
  if (!qword_1EBD5D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D790);
  }

  return result;
}

uint64_t sub_1BDA7F2AC()
{
  v0 = sub_1BE048EA4();
  __swift_allocate_value_buffer(v0, qword_1EBDAB968);
  v1 = __swift_project_value_buffer(v0, qword_1EBDAB968);
  v2 = *MEMORY[0x1E695A598];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

id sub_1BDA7F334()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_1BE04AA64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04A3B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  if ([v11 contactlessInterfaceCanBePresentedFromSource_])
  {
    result = [v11 sharedInstance];
    if (result)
    {
      v13 = result;
      [result presentContactlessInterfaceForDefaultPassFromSource:2 completion:0];

      return sub_1BE048774();
    }

    __break(1u);
    goto LABEL_9;
  }

  sub_1BE04A3A4();
  sub_1BE052434();
  sub_1BE04A394();
  sub_1BE04A364();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  (*(v4 + 32))(v6, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04A9C4();
    [v14 openSensitiveURL:v15 withOptions:0];

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
    return sub_1BE048774();
  }

LABEL_10:
  __break(1u);
  return result;
}

void (*sub_1BDA7F664(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1BE048864();
  return sub_1BD5191F0;
}

unint64_t sub_1BDA7F6DC()
{
  result = qword_1EBD5D798;
  if (!qword_1EBD5D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D798);
  }

  return result;
}

unint64_t sub_1BDA7F734()
{
  result = qword_1EBD5D7A0;
  if (!qword_1EBD5D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7A0);
  }

  return result;
}

unint64_t sub_1BDA7F78C()
{
  result = qword_1EBD5D7A8;
  if (!qword_1EBD5D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7A8);
  }

  return result;
}

uint64_t sub_1BDA7F898()
{
  sub_1BDA7F334();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BDA7F8FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BDA80308();
  *a1 = result;
  return result;
}

uint64_t sub_1BDA7F924(uint64_t a1)
{
  v2 = sub_1BDA7F6DC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BDA7F994(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4(0xD000000000000013, 0x80000001BE149840);
}

uint64_t sub_1BDA7FA08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D818, &unk_1BE1136A0);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEB8, &qword_1BE0BDBC8) - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BE0B69E0;
  sub_1BE048B84();
  v3 = sub_1BD1AED20(v2);
  swift_setDeallocating();
  sub_1BDA802A0(v2 + v1);
  result = swift_deallocClassInstance();
  qword_1EBDAB998 = v3;
  return result;
}

unint64_t sub_1BDA7FB10()
{
  result = qword_1EBD5D7B0;
  if (!qword_1EBD5D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7B0);
  }

  return result;
}

uint64_t sub_1BDA7FB64()
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BDA7FBC8(uint64_t a1)
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

void sub_1BDA7FC14(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_1BE053A44();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4 != 0;
}

unint64_t sub_1BDA7FC84()
{
  result = qword_1EBD5D7B8;
  if (!qword_1EBD5D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7B8);
  }

  return result;
}

unint64_t sub_1BDA7FCDC()
{
  result = qword_1EBD5D7C0;
  if (!qword_1EBD5D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7C0);
  }

  return result;
}

unint64_t sub_1BDA7FD34()
{
  result = qword_1EBD5D7C8;
  if (!qword_1EBD5D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7C8);
  }

  return result;
}

unint64_t sub_1BDA7FD88()
{
  result = qword_1EBD5D7D0;
  if (!qword_1EBD5D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7D0);
  }

  return result;
}

unint64_t sub_1BDA7FDDC()
{
  result = qword_1EBD5D7D8;
  if (!qword_1EBD5D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7D8);
  }

  return result;
}

unint64_t sub_1BDA7FE34()
{
  result = qword_1EBD5D7E0;
  if (!qword_1EBD5D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7E0);
  }

  return result;
}

uint64_t sub_1BDA7FEC0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

unint64_t sub_1BDA7FFDC()
{
  result = qword_1EBD5D7E8;
  if (!qword_1EBD5D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7E8);
  }

  return result;
}

uint64_t sub_1BDA80030(uint64_t a1)
{
  v2 = sub_1BDA7FFDC();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1BDA80080()
{
  result = qword_1EBD5D7F0;
  if (!qword_1EBD5D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7F0);
  }

  return result;
}

unint64_t sub_1BDA800D8()
{
  result = qword_1EBD5D7F8;
  if (!qword_1EBD5D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7F8);
  }

  return result;
}

unint64_t sub_1BDA80130()
{
  result = qword_1EBD5D800;
  if (!qword_1EBD5D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D800);
  }

  return result;
}

double sub_1BDA80184()
{
  if (qword_1EBD370D0 != -1)
  {
    swift_once();
  }

  sub_1BE048C84();
  return result;
}

uint64_t sub_1BDA801E0(uint64_t a1)
{
  sub_1BDA7FE34();

  return sub_1BE048E14();
}

uint64_t sub_1BDA802A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEB8, &qword_1BE0BDBC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BDA80308()
{
  v17 = sub_1BE048D74();
  v0 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1BE04A884();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D820, &unk_1BE1136B0);
  sub_1BE04A864();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 1;
  v14 = sub_1BE048654();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, *MEMORY[0x1E695A500], v17);
  sub_1BDA7FFDC();
  return sub_1BE0488A4();
}

id sub_1BDA80610()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDF8, &unk_1BE0BD960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  v28[0] = 1021;
  sub_1BE0537C4();
  (*(v3 + 104))(v5, *MEMORY[0x1E69B80D0], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v5, v2);
    v12 = MEMORY[0x1E69E6158];
    *(inited + 96) = MEMORY[0x1E69E6158];
    *(inited + 72) = v9;
    *(inited + 80) = v11;
    v13 = sub_1BD1AB16C(inited);
    swift_setDeallocating();
    sub_1BD4124EC(inited + 32);
    v14 = v1[1];
    if (v14)
    {
      v15 = *v1;
      *&v26 = 2;
      sub_1BE048C84();
      sub_1BE0537C4();
      v27 = v12;
      *&v26 = v15;
      *(&v26 + 1) = v14;
      sub_1BD1B6140(&v26, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v13;
      sub_1BD1DAFB0(v25, v28, isUniquelyReferenced_nonNull_native);
      sub_1BD149CE8(v28);
      v13 = v24;
    }

    v17 = v1[3];
    if (v17)
    {
      v18 = v1[2];
      *&v26 = 1037;
      sub_1BE048C84();
      sub_1BE0537C4();
      v27 = v12;
      *&v26 = v18;
      *(&v26 + 1) = v17;
      sub_1BD1B6140(&v26, v25);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v24 = v13;
      sub_1BD1DAFB0(v25, v28, v19);
      sub_1BD149CE8(v28);
      v13 = v24;
    }

    v20 = v1[5];
    if (v20)
    {
      v21 = v1[4];
      *&v26 = 1031;
      sub_1BE048C84();
      sub_1BE0537C4();
      v27 = v12;
      *&v26 = v21;
      *(&v26 + 1) = v20;
      sub_1BD1B6140(&v26, v25);
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v24 = v13;
      sub_1BD1DAFB0(v25, v28, v22);
      sub_1BD149CE8(v28);
      return v24;
    }

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA80950()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BDA809C4(uint64_t a1, char a2)
{
  *(v3 + 192) = a2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1BDA809E8, 0, 0);
}

uint64_t sub_1BDA809E8()
{
  v1 = *(v0 + 160);
  if (*(v0 + 192))
  {
    v2 = 1025;
  }

  else
  {
    v2 = 2;
  }

  v3 = OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_context;
  if ([*(v1 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_context) canEvaluatePolicy:v2 error:0])
  {
    v4 = *(v1 + v3);
    *(v0 + 168) = v4;
    v5 = v4;
    v6 = sub_1BDA80610();
    v7 = sub_1BE052224();
    *(v0 + 176) = v7;
    v6, v8, v9, v10, v11, v12, v13, v14;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1BDA80BD8;
    v15 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D848, &qword_1BE1137E8);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BDA80F68;
    *(v0 + 104) = &block_descriptor_251;
    *(v0 + 112) = v15;
    [v5 evaluatePolicy:v2 options:v7 reply:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1BDA80BD8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1BDA80E24;
  }

  else
  {
    v2 = sub_1BDA80CE8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BDA80CE8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  v2, v3, v4, v5, v6, v7, v8, v9;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = 1;
  sub_1BE048964();
  sub_1BE04D8C4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    KeyPath = swift_getKeyPath();
    v11 = swift_getKeyPath();
    sub_1BE04D8B4((v0 + 80));
    v11, v12, v13, v14, v15, v16, v17, v18;
    KeyPath, v19, v20, v21, v22, v23, v24, v25;
    sub_1BD2605F4(*(v0 + 80));
    swift_unknownObjectRelease();
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1BDA80E24(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[21];
  swift_willThrow();

  swift_getKeyPath();
  swift_getKeyPath();
  *(v1 + 80) = 0;
  sub_1BE048964();
  sub_1BE04D8C4();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = v1[23];
  if (Strong)
  {
    KeyPath = swift_getKeyPath();
    v7 = swift_getKeyPath();
    sub_1BE04D8B4(v1 + 10);
    v7, v8, v9, v10, v11, v12, v13, v14;
    KeyPath, v15, v16, v17, v18, v19, v20, v21;
    sub_1BD2605F4(*(v1 + 80));
    swift_unknownObjectRelease();
  }

  v22 = v1[1];

  return v22();
}

uint64_t sub_1BDA80F68(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_1BE052244();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1BDA81064()
{
  v1 = OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_context;
  [*(v0 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_context) invalidate];
  v2 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  v3 = *(v0 + v1);
  *(v0 + v1) = v2;

  swift_getKeyPath();
  swift_getKeyPath();
  BYTE1(v21) = 0;
  sub_1BE048964();
  sub_1BE04D8C4();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    KeyPath = swift_getKeyPath();
    v6 = swift_getKeyPath();
    sub_1BE04D8B4(&v21);
    KeyPath, v7, v8, v9, v10, v11, v12, v13;
    v6, v14, v15, v16, v17, v18, v19, v20;
    sub_1BD2605F4(v21);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BDA8117C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel__authenticated;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1BD0D4534(v0 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_delegate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviceAuthenticationModel(uint64_t a1)
{
  result = qword_1EBD5D838;
  if (!qword_1EBD5D838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BDA81298(uint64_t a1)
{
  sub_1BD1E1120();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BDA81350@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DeviceAuthenticationModel(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

char *sub_1BDA81390(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  __asm { FMOV            V0.2D, #1.0 }

  *&v4[OBJC_IVAR___PKStyledMicaView_originalAnimationViewSize] = _Q0;
  v13 = OBJC_IVAR___PKStyledMicaView_layerColorConfigurationSets;
  v14 = MEMORY[0x1E69E7CC0];
  *&v4[v13] = sub_1BD1ABCFC(MEMORY[0x1E69E7CC0]);
  *&v4[OBJC_IVAR___PKMicaView_package] = 0;
  *&v4[OBJC_IVAR___PKMicaView_availableStates] = v14;
  v15 = OBJC_IVAR___PKMicaView_namedLayers;
  *&v4[v15] = sub_1BD1ABEBC(v14);
  v44.receiver = v4;
  v44.super_class = type metadata accessor for MicaView();
  v16 = objc_msgSendSuper2(&v44, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BDA83478(a1, a2);

  a2, v17, v18, v19, v20, v21, v22, v23;
  v24 = v16;
  v25 = [v24 layer];
  [v25 bounds];
  v27 = v26;
  v29 = v28;

  v30 = &v24[OBJC_IVAR___PKStyledMicaView_originalAnimationViewSize];
  *v30 = v27;
  *(v30 + 1) = v29;
  [v24 setContentMode_];
  [v24 setClipsToBounds_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48C78, &unk_1BE0DD200);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BE0B6CA0;
  v32 = sub_1BE04D2A4();
  v33 = MEMORY[0x1E69DC0F8];
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  v34 = sub_1BE04D294();
  v35 = MEMORY[0x1E69DC0F0];
  *(v31 + 48) = v34;
  *(v31 + 56) = v35;
  sub_1BE052F94();

  swift_unknownObjectRelease();
  v31, v36, v37, v38, v39, v40, v41, v42;
  return v24;
}

void sub_1BDA815AC()
{
  v1 = [v0 layer];
  v2 = [v1 sublayers];

  if (v2)
  {
    sub_1BD84F9F0();
    v3 = sub_1BE052744();

    if (v3 >> 62)
    {
      if (sub_1BE053704())
      {
LABEL_4:
        if ((v3 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1BFB40900](0, v3);
        }

        else
        {
          if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v11 = *(v3 + 32);
        }

        v19 = v11;
        v3, v12, v13, v14, v15, v16, v17, v18;
        v21 = *&v0[OBJC_IVAR___PKStyledMicaView_originalAnimationViewSize];
        v20 = *&v0[OBJC_IVAR___PKStyledMicaView_originalAnimationViewSize + 8];
        [v0 bounds];
        v23 = v22;
        v25 = v24;
        v26 = [v0 contentMode];
        if (v26)
        {
          if (v26 == 1)
          {
            v27 = v23 / v21;
            if (v25 / v20 < v23 / v21)
            {
              v27 = v25 / v20;
            }
          }

          else
          {
            if (v26 != 2)
            {
              v28 = v21;
              v29 = v20;
              goto LABEL_18;
            }

            v27 = v23 / v21;
            if (v23 / v21 <= v25 / v20)
            {
              v27 = v25 / v20;
            }
          }

          v28 = v21 * v27;
          v29 = v20 * v27;
        }

        else
        {
          v28 = v23;
          v29 = v25;
        }

LABEL_18:
        v30 = [v0 contentMode];
        if (v30 > 0xC)
        {
          goto LABEL_22;
        }

        v31 = 0.0;
        if (((1 << v30) & 0x620) != 0)
        {
          goto LABEL_23;
        }

        if (((1 << v30) & 0x1840) != 0)
        {
          v31 = v25 - v29;
        }

        else
        {
LABEL_22:
          v31 = (v25 - v29) * 0.5;
        }

LABEL_23:
        v32 = [v0 contentMode];
        if (v32 <= 0xC)
        {
          v33 = 0.0;
          if (((1 << v32) & 0xA80) != 0)
          {
LABEL_28:
            CATransform3DMakeScale(&v34, v28 / v21, -v29 / v20, 1.0);
            [v19 setTransform_];
            [v19 setFrame_];

            return;
          }

          if (((1 << v32) & 0x1500) != 0)
          {
            v33 = v23 - v28;
            goto LABEL_28;
          }
        }

        v33 = (v23 - v28) * 0.5;
        goto LABEL_28;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    v3, v4, v5, v6, v7, v8, v9, v10;
  }
}

void sub_1BDA81874(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v173 = (v5 + 63) >> 6;
  sub_1BE048C84();
  v15 = 0;
  v171 = v4;
  v172 = v2;
LABEL_5:
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v173)
    {
      a1, v8, v9, v10, v11, v12, v13, v14;
      return;
    }

    v7 = *(v4 + 8 * v16);
    ++v15;
    if (v7)
    {
      v15 = v16;
LABEL_10:
      v17 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v18 = (*(a1 + 48) + ((v15 << 10) | (16 * v17)));
      v20 = *v18;
      v19 = v18[1];
      v21 = OBJC_IVAR___PKMicaView_namedLayers;
      swift_beginAccess();
      v22 = *(v3 + v21);
      if (v22[2])
      {
        sub_1BE048C84();
        sub_1BE048C84();
        v23 = sub_1BD148F70(v20, v19);
        v25 = v24;
        v19, v24, v26, v27, v28, v29, v30, v31;
        if (v25)
        {
          v39 = *(v22[7] + 8 * v23);
          sub_1BE048C84();
          v22, v40, v41, v42, v43, v44, v45, v46;
          v175 = v39;
          if (v39 >> 62)
          {
            v54 = sub_1BE053704();
            if (!v54)
            {
              goto LABEL_80;
            }

LABEL_14:
            v55 = 0;
            v203 = v39 & 0xFFFFFFFFFFFFFF8;
            v204 = v39 & 0xC000000000000001;
            v202 = (v39 + 32);
            v179 = v54;
            v174 = v7;
            while (2)
            {
              if (v204)
              {
                v56 = MEMORY[0x1BFB40900](v55, v175);
              }

              else
              {
                if (v55 >= *(v203 + 16))
                {
                  goto LABEL_84;
                }

                v56 = *&v202[8 * v55];
              }

              v57 = v56;
              if (__OFADD__(v55++, 1))
              {
                goto LABEL_83;
              }

              v59 = [v56 name];
              if (!v59)
              {
                goto LABEL_15;
              }

              v60 = v59;
              v61 = sub_1BE052434();
              v63 = v62;

              if (!*(a1 + 16))
              {

                v63, v101, v102, v103, v104, v105, v106, v107;
                goto LABEL_16;
              }

              v64 = sub_1BD148F70(v61, v63);
              v66 = v65;
              v63, v65, v67, v68, v69, v70, v71, v72;
              if ((v66 & 1) == 0)
              {
LABEL_15:

                goto LABEL_16;
              }

              v73 = *(a1 + 56) + 112 * v64;
              v74 = *v73;
              v75 = *(v73 + 8);
              v76 = *(v73 + 16);
              v77 = *(v73 + 24);
              v78 = *(v73 + 32);
              v79 = *(v73 + 40);
              v80 = *(v73 + 48);
              v81 = *(v73 + 64);
              v82 = *(v73 + 72);
              v83 = *(v73 + 80);
              v84 = *(v73 + 88);
              v197 = *(v73 + 56);
              if (a2 == 2)
              {
                v85 = *(v73 + 56);
              }

              else
              {
                v85 = *v73;
              }

              if (a2 == 2)
              {
                v86 = *(v73 + 64);
              }

              else
              {
                v86 = *(v73 + 8);
              }

              if (a2 == 2)
              {
                v87 = *(v73 + 72);
              }

              else
              {
                v87 = *(v73 + 16);
              }

              v199 = v87;
              if (a2 == 2)
              {
                v88 = *(v73 + 80);
              }

              else
              {
                v88 = *(v73 + 24);
              }

              v90 = *(v73 + 96);
              v89 = *(v73 + 104);
              if (a2 == 2)
              {
                v91 = *(v73 + 88);
              }

              else
              {
                v91 = *(v73 + 32);
              }

              v195 = v84;
              v196 = v91;
              if (a2 == 2)
              {
                v92 = v90;
              }

              else
              {
                v92 = v79;
              }

              if (a2 == 2)
              {
                v93 = v89;
              }

              else
              {
                v93 = v80;
              }

              v192 = v93;
              v193 = v86;
              v200 = v82;
              v185 = v81;
              v186 = v78;
              v189 = v83;
              v190 = v89;
              v187 = v79;
              v188 = v90;
              v194 = v80;
              v183 = v76;
              v184 = v77;
              v181 = v74;
              v182 = v75;
              v198 = v88;
              v191 = v92;
              v201 = v85;
              if (v85 == 1)
              {
                v94 = v80;
                v95 = v83;
                sub_1BDA82D14(v74, v75, v76, v77, v78, v79, v94);
                sub_1BDA82D14(v197, v81, v82, v95, v195, v90, v89);
                v96 = v192;
                v98 = v198;
                v97 = v199;
                sub_1BDA82D14(1, v193, v199, v198, v196, v191, v192);
                [v57 setBackgroundColor_];
                v99 = 0;
                v100 = v191;
              }

              else
              {
                v108 = v77;
                v109 = v76;
                v110 = v75;
                v177 = v57;
                v111 = v74;
                v112 = v85;
                v176 = v85;
                v113 = v111;
                v57 = v177;
                v114 = v110;
                v7 = v174;
                sub_1BDA82D14(v113, v114, v109, v108, v186, v187, v194);
                sub_1BDA82D14(v197, v81, v200, v189, v195, v90, v89);
                v115 = v112;
                v96 = v192;
                v97 = v199;
                sub_1BDA82D14(v115, v193, v199, v198, v196, v191, v192);
                [v177 setBackgroundColor_];

                v100 = v191;
                v98 = v198;
                v99 = v193;
              }

              [v57 setBorderColor_];

              if (v201 == 1)
              {
                v116 = 0;
              }

              else
              {
                v116 = v97;
              }

              [v57 setShadowColor_];

              objc_opt_self();
              v117 = swift_dynamicCastObjCClass();
              v118 = v200;
              if (v117)
              {
                v119 = v117;
                if (v201 == 1)
                {
                  v120 = v57;
                  [v119 setFillColor_];
                  v121 = 0;
                }

                else
                {
                  v122 = v98;
                  v123 = v57;
                  [v119 setFillColor_];

                  v121 = v196;
                }

                [v119 setStrokeColor_];

                v118 = v200;
                v97 = v199;
              }

              objc_opt_self();
              v124 = swift_dynamicCastObjCClass();
              if (v124)
              {
                v125 = v124;
                if (v201 == 1)
                {
                  v126 = 0;
                }

                else
                {
                  v126 = v100;
                }

                v127 = v57;
                [v125 setForegroundColor_];

                v118 = v200;
                v98 = v198;
                v97 = v199;
                v96 = v192;
              }

              objc_opt_self();
              v128 = swift_dynamicCastObjCClass();
              if (v128)
              {
                if (v201 == 1)
                {
                  sub_1BD2892F8(v181, v182, v183, v184, v186, v187, v194);
                  v129 = v197;
                  v130 = v185;
                  goto LABEL_66;
                }

                if (v96)
                {
                  v178 = v128;
                  v136 = v96[2];
                  if (v136)
                  {
                    v207 = MEMORY[0x1E69E7CC0];
                    v137 = v57;
                    sub_1BE048C84();
                    sub_1BD5319DC(0, v136, 0, v138, v139, v140, v141, v142);
                    v143 = v207;
                    v144 = 4;
                    do
                    {
                      v145 = v96;
                      v146 = v96[v144];
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D860, &qword_1BE113818);
                      swift_dynamicCast();
                      v207 = v143;
                      v153 = v143[2];
                      v152 = v143[3];
                      if (v153 >= v152 >> 1)
                      {
                        sub_1BD5319DC((v152 > 1), v153 + 1, 1, v147, v148, v149, v150, v151);
                        v143 = v207;
                      }

                      v143[2] = v153 + 1;
                      sub_1BD1B6140(&v206, &v143[4 * v153 + 4]);
                      ++v144;
                      --v136;
                      v96 = v145;
                    }

                    while (v136);
                    v145, v154, v155, v156, v157, v158, v159, v160;
                    v161 = v195;
                    v98 = v198;
                    v100 = v191;
                  }

                  else
                  {
                    v162 = v57;
                    v143 = MEMORY[0x1E69E7CC0];
                    v161 = v195;
                  }

                  v163 = sub_1BE052724();
                  v143, v164, v165, v166, v167, v168, v169, v170;
                  [v178 setColors_];
                  sub_1BD2892F8(v201, v193, v199, v98, v196, v100, v96);
                  sub_1BD2892F8(v181, v182, v183, v184, v186, v187, v194);
                  sub_1BD2892F8(v197, v185, v200, v189, v161, v188, v190);

                  v54 = v179;
LABEL_16:
                  if (v55 == v54)
                  {
                    goto LABEL_80;
                  }

                  continue;
                }

                sub_1BD2892F8(v181, v182, v183, v184, v186, v187, v194);
                sub_1BD2892F8(v197, v185, v118, v189, v195, v188, v190);
                v129 = v201;
                v130 = v193;
                v131 = v97;
                v132 = v98;
                v134 = v196;
                v133 = v100;
                v135 = 0;
              }

              else
              {
                sub_1BD2892F8(v201, v193, v97, v98, v196, v100, v96);
                sub_1BD2892F8(v181, v182, v183, v184, v186, v187, v194);
                v129 = v197;
                v130 = v185;
LABEL_66:
                v131 = v118;
                v133 = v188;
                v132 = v189;
                v134 = v195;
                v135 = v190;
              }

              break;
            }

            sub_1BD2892F8(v129, v130, v131, v132, v134, v133, v135);

            v54 = v179;
            goto LABEL_16;
          }

          v54 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v54)
          {
            goto LABEL_14;
          }

LABEL_80:
          v175, v47, v48, v49, v50, v51, v52, v53;
          v4 = v171;
          v3 = v172;
        }

        else
        {
          v22, v32, v33, v34, v35, v36, v37, v38;
        }
      }

      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

void sub_1BDA820BC(uint64_t a1)
{
  v2 = v1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v102 = (v4 + 63) >> 6;
  v103 = *MEMORY[0x1E69657E0];
  sub_1BE048C84();
  v14 = 0;
  v100 = v3;
  v101 = v1;
LABEL_5:
  if (v6)
  {
    v15 = a1;
    goto LABEL_12;
  }

  v15 = a1;
  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v102)
    {
      a1, v7, v8, v9, v10, v11, v12, v13;
      return;
    }

    v6 = *(v3 + 8 * v16);
    ++v14;
    if (v6)
    {
      v14 = v16;
LABEL_12:
      v17 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v18 = (*(v15 + 48) + ((v14 << 10) | (16 * v17)));
      v20 = *v18;
      v19 = v18[1];
      v21 = OBJC_IVAR___PKMicaView_namedLayers;
      swift_beginAccess();
      v22 = *(v2 + v21);
      if (v22[2])
      {
        sub_1BE048C84();
        sub_1BE048C84();
        v23 = sub_1BD148F70(v20, v19);
        v25 = v24;
        v19, v24, v26, v27, v28, v29, v30, v31;
        if ((v25 & 1) == 0)
        {
          v22, v32, v33, v34, v35, v36, v37, v38;
          goto LABEL_5;
        }

        v39 = *(v22[7] + 8 * v23);
        sub_1BE048C84();
        v22, v40, v41, v42, v43, v44, v45, v46;
        if (v39 >> 62)
        {
          v54 = sub_1BE053704();
          v55 = a1;
          if (!v54)
          {
            goto LABEL_32;
          }

LABEL_16:
          v56 = 0;
          v109 = v39 & 0xFFFFFFFFFFFFFF8;
          v110 = v39 & 0xC000000000000001;
          v107 = v39;
          v108 = v54;
          while (2)
          {
            if (v110)
            {
              v57 = MEMORY[0x1BFB40900](v56, v39);
            }

            else
            {
              if (v56 >= *(v109 + 16))
              {
                goto LABEL_36;
              }

              v57 = *(v39 + 8 * v56 + 32);
            }

            v58 = v57;
            v59 = v56 + 1;
            if (__OFADD__(v56, 1))
            {
              goto LABEL_35;
            }

            objc_opt_self();
            v60 = swift_dynamicCastObjCClass();
            if (v60)
            {
              v61 = v60;
              v111 = v58;
              v62 = [v61 name];
              if (v62)
              {
                v63 = v62;
                v64 = sub_1BE052434();
                v66 = v65;

                if (!*(v55 + 16))
                {
                  v66, v67, v68, v69, v70, v71, v72, v73;
                  goto LABEL_18;
                }

                v74 = sub_1BD148F70(v64, v66);
                v76 = v75;
                v66, v75, v77, v78, v79, v80, v81, v82;
                v39 = v107;
                if (v76)
                {
                  v83 = *(*(v55 + 56) + 8 * v74);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D868, &qword_1BE113820);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_1BE0B69E0;
                  *(inited + 32) = v103;
                  *(inited + 40) = 0;
                  v104 = v83;
                  v85 = v103;
                  v86 = sub_1BD1AC1E4(inited);
                  swift_setDeallocating();
                  sub_1BDA82DB8(inited + 32);
                  type metadata accessor for CFString(0);
                  sub_1BDA82E20();
                  v87 = sub_1BE052224();
                  v86, v88, v89, v90, v91, v92, v93, v94;
                  v105 = CTFontDescriptorCreateWithAttributes(v87);

                  [v104 pointSize];
                  CopyWithAttributes = CTFontCreateCopyWithAttributes(v104, v95, 0, v105);
                  [v61 setFont_];
                  [v104 pointSize];
                  [v61 setFontSize_];
                  v97 = [objc_opt_self() mainScreen];
                  [v97 scale];
                  v99 = v98;

                  v55 = a1;
                  [v61 setContentsScale_];

LABEL_18:
                  v39 = v107;
                }
              }

              v54 = v108;
            }

            ++v56;
            if (v59 == v54)
            {
              goto LABEL_32;
            }

            continue;
          }
        }

        v54 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v55 = a1;
        if (v54)
        {
          goto LABEL_16;
        }

LABEL_32:
        v39, v47, v48, v49, v50, v51, v52, v53;
        v3 = v100;
        v2 = v101;
      }

      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_1BDA82510(uint64_t a1)
{
  v2 = v1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v69 = a1;
  sub_1BE048C84();
  v15 = 0;
  while (v6)
  {
    v24 = v15;
LABEL_17:
    v27 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v28 = v27 | (v24 << 6);
    v29 = (v69[6] + 16 * v28);
    v31 = *v29;
    v30 = v29[1];
    sub_1BD038CD0(v69[7] + 32 * v28, v70);
    *&v71 = v31;
    *(&v71 + 1) = v30;
    sub_1BD1B6140(v70, &v72);
    sub_1BE048C84();
LABEL_18:
    v74 = v71;
    v75[0] = v72;
    v75[1] = v73;
    v32 = *(&v71 + 1);
    if (!*(&v71 + 1))
    {
      v69, v8, v9, v10, v11, v12, v13, v14;
      return;
    }

    v33 = v74;
    sub_1BD1B6140(v75, &v71);
    v34 = OBJC_IVAR___PKMicaView_namedLayers;
    swift_beginAccess();
    v42 = *(v2 + v34);
    if (!v42[2])
    {
      v16 = v32;
LABEL_5:
      v16, v35, v36, v37, v38, v39, v40, v41;
      goto LABEL_6;
    }

    sub_1BE048C84();
    v43 = sub_1BD148F70(v33, v32);
    v45 = v44;
    v32, v44, v46, v47, v48, v49, v50, v51;
    if ((v45 & 1) == 0)
    {
      v16 = v42;
      goto LABEL_5;
    }

    v52 = *(v42[7] + 8 * v43);
    sub_1BE048C84();
    v42, v53, v54, v55, v56, v57, v58, v59;
    MEMORY[0x1EEE9AC00](v60);
    v68[2] = &v71;
    sub_1BDA82E78(sub_1BDA82D9C, v68, v52);
    v52, v61, v62, v63, v64, v65, v66, v67;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_0(&v71, v17, v18, v19, v20, v21, v22, v23);
  }

  if (v7 <= v15 + 1)
  {
    v25 = v15 + 1;
  }

  else
  {
    v25 = v7;
  }

  v26 = v25 - 1;
  while (1)
  {
    v24 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v24 >= v7)
    {
      v6 = 0;
      v72 = 0u;
      v73 = 0u;
      v15 = v26;
      v71 = 0u;
      goto LABEL_18;
    }

    v6 = *(v3 + 8 * v24);
    ++v15;
    if (v6)
    {
      v15 = v24;
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_1BDA8275C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v64 = (v5 + 63) >> 6;
  v8 = 0;
  v62 = v1;
  v63 = sub_1BE048C84();
  v61 = v4;
  while (v7)
  {
LABEL_10:
    v17 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v18 = v17 | (v8 << 6);
    v19 = (v3[6] + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v3[7] + v18);
    v23 = OBJC_IVAR___PKMicaView_namedLayers;
    swift_beginAccess();
    v24 = *(v2 + v23);
    if (v24[2])
    {
      sub_1BE048C84();
      sub_1BE048C84();
      v25 = sub_1BD148F70(v20, v21);
      v27 = v26;
      v21, v26, v28, v29, v30, v31, v32, v33;
      if (v27)
      {
        v41 = *(v24[7] + 8 * v25);
        sub_1BE048C84();
        v24, v42, v43, v44, v45, v46, v47, v48;
        if (v41 >> 62)
        {
          v56 = sub_1BE053704();
          if (v56)
          {
LABEL_14:
            v57 = 0;
            do
            {
              if ((v41 & 0xC000000000000001) != 0)
              {
                v58 = MEMORY[0x1BFB40900](v57, v41);
              }

              else
              {
                if (v57 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_27;
                }

                v58 = *(v41 + 8 * v57 + 32);
              }

              v59 = v58;
              v60 = v57 + 1;
              if (__OFADD__(v57, 1))
              {
                goto LABEL_26;
              }

              [v58 setHidden_];

              ++v57;
            }

            while (v60 != v56);
          }
        }

        else
        {
          v56 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v56)
          {
            goto LABEL_14;
          }
        }

        v41, v49, v50, v51, v52, v53, v54, v55;
        v2 = v62;
        v3 = v63;
        v4 = v61;
      }

      else
      {
        v24, v34, v35, v36, v37, v38, v39, v40;
      }
    }
  }

  while (1)
  {
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v16 >= v64)
    {
      v3, v9, v10, v11, v12, v13, v14, v15;
      return;
    }

    v7 = *(v4 + 8 * v16);
    ++v8;
    if (v7)
    {
      v8 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1BDA82A90(void **a1, void *a2)
{
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v6 = v3;
    [v5 setString_];
    swift_unknownObjectRelease();
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 mainScreen];
    [v9 scale];
    v11 = v10;

    [v5 setContentsScale_];
  }
}

id StyledMicaView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StyledMicaView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BDA82C0C(char *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  result = [a2 userInterfaceStyle];
  if (v5 != result)
  {
    v7 = objc_opt_self();
    [v7 begin];
    [v7 setDisableActions_];
    v8 = *&a1[OBJC_IVAR___PKStyledMicaView_layerColorConfigurationSets];
    v9 = sub_1BE048C84();
    sub_1BDA81874(v9, v5);
    v8, v10, v11, v12, v13, v14, v15, v16;
    [v7 commit];

    return [a1 setNeedsDisplay];
  }

  return result;
}

id sub_1BDA82D14(id result, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  if (result != 1)
  {
    v12 = result;
    sub_1BE048C84();
    v13 = v12;
    v14 = a2;
    v15 = a3;
    v16 = a4;
    v17 = a5;

    return a6;
  }

  return result;
}

uint64_t sub_1BDA82DB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D870, &qword_1BE113828);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BDA82E20()
{
  result = qword_1EBD38158;
  if (!qword_1EBD38158)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38158);
  }

  return result;
}

void sub_1BDA82E78(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB40900](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

double sub_1BDA82F78()
{
  swift_beginAccess();
  sub_1BE048C84();
  return result;
}

void sub_1BDA82FC0(uint64_t a1)
{
  v3 = OBJC_IVAR___PKMicaView_namedLayers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v4, v5, v6, v7, v8, v9, v10, v11;
}

void sub_1BDA83078()
{
  v1 = [v0 layer];
  [v1 setSpeed_];

  v2 = [v0 layer];
  [v2 setTimeOffset_];

  v3 = [v0 layer];
  [v3 setBeginTime_];
}

void sub_1BDA8313C()
{
  v1 = [v0 layer];
  LODWORD(v2) = 1.0;
  [v1 setSpeed_];

  v3 = [v0 layer];
  [v3 setTimeOffset_];

  v7 = [v0 layer];
  v4 = [v0 layer];
  [v4 convertTime:0 fromLayer:CACurrentMediaTime()];
  v6 = v5;

  [v7 setBeginTime_];
}

void sub_1BDA83244()
{
  v1 = [v0 layer];
  [v1 convertTime:0 fromLayer:CACurrentMediaTime()];
  v3 = v2;

  v4 = [v0 layer];
  [v4 setSpeed_];

  v5 = [v0 layer];
  [v5 setTimeOffset_];
}

void sub_1BDA8331C()
{
  v1 = [v0 layer];
  [v1 timeOffset];
  v3 = v2;

  v4 = [v0 layer];
  LODWORD(v5) = 1.0;
  [v4 setSpeed_];

  v6 = [v0 layer];
  [v6 setTimeOffset_];

  v7 = [v0 layer];
  [v7 setBeginTime_];

  v8 = [v0 layer];
  [v8 convertTime:0 fromLayer:CACurrentMediaTime()];
  v10 = v9;

  v11 = [v0 layer];
  [v11 setBeginTime_];
}

id sub_1BDA83478(void *a1, void *a2)
{
  v4 = sub_1BE04D214();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v63 - v7;
  v9 = sub_1BE04AA64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v63 - v14;
  result = PKPassKitUIBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE052404();
    v18 = sub_1BE052404();
    v19 = [v16 URLForResource:v17 withExtension:v18];

    if (v19)
    {
      v20 = v68;
      sub_1BE04A9F4();

      sub_1BD0E5E8C(0, &qword_1EBD5C958, 0x1E6979400);
      v21 = v10;
      (*(v10 + 16))(v12, v20, v9);
      v22 = sub_1BE052434();
      v24 = sub_1BDA4BC34(v12, v22, v23, 0);
      v43 = OBJC_IVAR___PKMicaView_package;
      v44 = v64;
      v45 = *&v64[OBJC_IVAR___PKMicaView_package];
      *&v64[OBJC_IVAR___PKMicaView_package] = v24;
      v46 = v24;
      v47 = v24;

      sub_1BDA84EDC(v46);
      v49 = v48;

      v57 = MEMORY[0x1E69E7CC0];
      if (v49)
      {
        v57 = v49;
      }

      v58 = *&v44[OBJC_IVAR___PKMicaView_availableStates];
      *&v44[OBJC_IVAR___PKMicaView_availableStates] = v57;
      v58, v50, v51, v52, v53, v54, v55, v56;
      v59 = *&v44[v43];
      if (v59)
      {
        v60 = [v59 rootLayer];
        if (v60)
        {
          v61 = v60;
          v62 = [v44 layer];
          [v62 addSublayer_];

          sub_1BDA839D0(v61);
          sub_1BDA84000();
          sub_1BDA84610();
          sub_1BDA83CE4();
          [v61 frame];
          [v44 setFrame_];
        }
      }

      return (*(v21 + 8))(v68, v9);
    }

    else
    {
      sub_1BE04D064();
      sub_1BE048C84();
      v25 = sub_1BE04D204();
      v26 = sub_1BE052C54();
      a2, v27, v28, v29, v30, v31, v32, v33;
      if (os_log_type_enabled(v25, v26))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v69 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_1BD123690(a1, a2, &v69);
        _os_log_impl(&dword_1BD026000, v25, v26, "Mica resource %s.caar not found.", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35, v36, v37, v38, v39, v40, v41, v42);
        MEMORY[0x1BFB45F20](v35, -1, -1);
        MEMORY[0x1BFB45F20](v34, -1, -1);
      }

      return (*(v66 + 8))(v8, v67);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BDA839D0(void *a1)
{
  v2 = v1;
  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BE052434();
    v8 = v7;

    v9 = OBJC_IVAR___PKMicaView_namedLayers;
    swift_beginAccess();
    v10 = *(v2 + v9);
    if (v10[2])
    {
      sub_1BE048C84();
      v11 = sub_1BD148F70(v6, v8);
      if (v12)
      {
        v19 = *(v10[7] + 8 * v11);
        sub_1BE048C84();
        v10, v20, v21, v22, v23, v24, v25, v26;
        v27 = a1;
        MEMORY[0x1BFB3F7A0]();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = *(v2 + v9);
        *(v2 + v9) = 0x8000000000000000;
        sub_1BD1DB2C8(v19, v6, v8, isUniquelyReferenced_nonNull_native);
        v8, v29, v30, v31, v32, v33, v34, v35;
        v36 = v62;
        goto LABEL_9;
      }

      v10, v12, v13, v14, v15, v16, v17, v18;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1BE0B7020;
    *(v37 + 32) = a1;
    swift_beginAccess();
    v38 = a1;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v63 = *(v2 + v9);
    *(v2 + v9) = 0x8000000000000000;
    sub_1BD1DB2C8(v37, v6, v8, v39);
    v8, v40, v41, v42, v43, v44, v45, v46;
    v36 = v63;
LABEL_9:
    *(v2 + v9) = v36;
    swift_endAccess();
  }

  v47 = [a1 sublayers];
  if (v47)
  {
    v48 = v47;
    sub_1BD0E5E8C(0, &qword_1EBD558E0, 0x1E6979398);
    v49 = sub_1BE052744();

    if (v49 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
    {
      v58 = v2;
      if (!i)
      {
        break;
      }

      v2 = 0;
      while (1)
      {
        if ((v49 & 0xC000000000000001) != 0)
        {
          v59 = MEMORY[0x1BFB40900](v2, v49);
        }

        else
        {
          if (v2 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v59 = *(v49 + 8 * v2 + 32);
        }

        v60 = v59;
        v61 = (v2 + 1);
        if (__OFADD__(v2, 1))
        {
          break;
        }

        sub_1BDA839D0(v59);

        ++v2;
        if (v61 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_22:
    v49, v51, v52, v53, v54, v55, v56, v57;
  }
}

void sub_1BDA83CE4()
{
  v1 = v0;
  v2 = OBJC_IVAR___PKMicaView_namedLayers;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v63 = v3 + 64;
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v64 = v3;
  v65 = v2;
  sub_1BE048C84();
  v15 = 0;
  while (v6)
  {
    v16 = v6;
LABEL_10:
    v6 = (v16 - 1) & v16;
    v18 = *(v1 + v65);
    if (v18[2])
    {
      v66 = (v16 - 1) & v16;
      v19 = (v64[6] + ((v15 << 10) | (16 * __clz(__rbit64(v16)))));
      v20 = *v19;
      v21 = v19[1];
      sub_1BE048C84();
      sub_1BE048C84();
      v22 = sub_1BD148F70(v20, v21);
      v24 = v23;
      v21, v23, v25, v26, v27, v28, v29, v30;
      if ((v24 & 1) == 0)
      {
        v62 = v18;
        goto LABEL_26;
      }

      v38 = *(v18[7] + 8 * v22);
      sub_1BE048C84();
      v18, v39, v40, v41, v42, v43, v44, v45;
      if (!(v38 >> 62))
      {
        v46 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v46)
        {
          goto LABEL_14;
        }

        goto LABEL_25;
      }

      v46 = sub_1BE053704();
      if (v46)
      {
LABEL_14:
        if (v46 < 1)
        {
          goto LABEL_29;
        }

        for (i = 0; i != v46; ++i)
        {
          if ((v38 & 0xC000000000000001) != 0)
          {
            v55 = MEMORY[0x1BFB40900](i, v38);
          }

          else
          {
            v55 = *(v38 + 8 * i + 32);
          }

          v56 = v55;
          objc_opt_self();
          v57 = swift_dynamicCastObjCClass();
          if (v57)
          {
            v58 = v57;
            v56 = v56;
            [v58 transform];
            v67 = v68;
            CATransform3DScale(&v69, &v67, 1.0, -1.0, 1.0);
            v67 = v69;
            [v58 setTransform_];
            v59 = [objc_opt_self() mainScreen];
            [v59 scale];
            v61 = v60;

            [v58 setContentsScale_];
          }
        }

        v38, v48, v49, v50, v51, v52, v53, v54;
        v6 = v66;
      }

      else
      {
LABEL_25:
        v62 = v38;
LABEL_26:
        v62, v31, v32, v33, v34, v35, v36, v37;
        v6 = v66;
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v7)
    {
      v64, v8, v9, v10, v11, v12, v13, v14;
      return;
    }

    v16 = *(v63 + 8 * v17);
    ++v15;
    if (v16)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1BDA84000()
{
  v4 = OBJC_IVAR___PKMicaView_namedLayers;
  swift_beginAccess();
  v114 = v4;
  v115 = v0;
  v5 = *(v0 + v4);
  v110 = v5 + 64;
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v109 = (v6 + 63) >> 6;
  v113 = v5;
  sub_1BE048C84();
  v9 = v8;
  v10 = 0;
  while (v9)
  {
    v11 = v9;
LABEL_10:
    v9 = (v11 - 1) & v11;
    v13 = *(v115 + v114);
    if (v13[2])
    {
      v111 = (v11 - 1) & v11;
      v112 = v10;
      v14 = (v113[6] + ((v10 << 10) | (16 * __clz(__rbit64(v11)))));
      v15 = *v14;
      v16 = v14[1];
      sub_1BE048C84();
      sub_1BE048C84();
      v17 = sub_1BD148F70(v15, v16);
      v1 = v18;
      v16, v18, v19, v20, v21, v22, v23, v24;
      if (v1)
      {
        v32 = *(v13[7] + 8 * v17);
        sub_1BE048C84();
        v13, v33, v34, v35, v36, v37, v38, v39;
        if (v32 >> 62)
        {
          v40 = sub_1BE053704();
          if (v40)
          {
LABEL_14:
            v41 = 0;
            v119 = v32;
            v120 = v32 & 0xC000000000000001;
            v116 = (v32 + 32);
            v117 = v32 & 0xFFFFFFFFFFFFFF8;
            v118 = v40;
            while (1)
            {
              if (v120)
              {
                v58 = MEMORY[0x1BFB40900](v41, v32);
                v59 = __OFADD__(v41, 1);
                v60 = v41 + 1;
                if (v59)
                {
                  goto LABEL_45;
                }
              }

              else
              {
                if (v41 >= *(v117 + 16))
                {
                  goto LABEL_46;
                }

                v58 = *&v116[8 * v41];
                v59 = __OFADD__(v41, 1);
                v60 = v41 + 1;
                if (v59)
                {
                  goto LABEL_45;
                }
              }

              v121 = v58;
              v122 = v60;
              v123 = MEMORY[0x1E69E7CC0];
              sub_1BD531D40(0, 0x18, 0);
              v3 = v123;
              v1 = &unk_1F3B8CC60;
              v2 = 24;
              do
              {
                v62 = *(v1 - 8);
                v61 = *v1;
                v63 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
                sub_1BE048C84();
                v64 = [v63 init];
                v124 = v3;
                v66 = v3[2];
                v65 = v3[3];
                if (v66 >= v65 >> 1)
                {
                  v68 = v64;
                  sub_1BD531D40((v65 > 1), (v66 + 1), 1);
                  v64 = v68;
                  v3 = v124;
                }

                v3[2] = (v66 + 1);
                v67 = &v3[3 * v66];
                v67[4] = v62;
                v67[5] = v61;
                v67[6] = v64;
                v1 += 16;
                --v2;
              }

              while (v2);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E60, &qword_1BE0DD6E8);
              v69 = sub_1BE053A04();
              v125 = v69;
              v70 = v3[2];
              sub_1BE048964();
              if (v70)
              {
                break;
              }

LABEL_15:

              v42 = sub_1BD1A8804(v69);
              v69, v43, v44, v45, v46, v47, v48, v49;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D890, &unk_1BE113850);
              v50 = sub_1BE052224();
              v42, v51, v52, v53, v54, v55, v56, v57;
              [v121 setActions_];

              v32 = v119;
              v41 = v122;
              if (v122 == v118)
              {
                goto LABEL_38;
              }
            }

            v71 = 0;
            v72 = v3 + 6;
            while (v71 < v3[2])
            {
              v73 = *(v72 - 2);
              v1 = *(v72 - 1);
              v74 = *v72;
              sub_1BE048C84();
              v2 = v74;
              v75 = sub_1BD148F70(v73, v1);
              v77 = v69[2];
              v78 = (v76 & 1) == 0;
              v59 = __OFADD__(v77, v78);
              v79 = v77 + v78;
              if (v59)
              {
                goto LABEL_42;
              }

              v80 = v76;
              if (v69[3] < v79)
              {
                sub_1BD50145C(v79, 1);
                v69 = v125;
                v75 = sub_1BD148F70(v73, v1);
                if ((v80 & 1) != (v81 & 1))
                {
                  goto LABEL_50;
                }
              }

              if (v80)
              {
                goto LABEL_47;
              }

              v69[(v75 >> 6) + 8] |= 1 << v75;
              v82 = (v69[6] + 16 * v75);
              *v82 = v73;
              v82[1] = v1;
              *(v69[7] + 8 * v75) = v2;
              v83 = v69[2];
              v59 = __OFADD__(v83, 1);
              v84 = v83 + 1;
              if (v59)
              {
                goto LABEL_43;
              }

              ++v71;
              v69[2] = v84;
              v72 += 3;
              if (v70 == v71)
              {
                goto LABEL_15;
              }
            }

            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }
        }

        else
        {
          v40 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v40)
          {
            goto LABEL_14;
          }
        }

LABEL_38:
        v85 = v32;
      }

      else
      {
        v85 = v13;
      }

      v85, v25, v26, v27, v28, v29, v30, v31;
      v9 = v111;
      v10 = v112;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v109)
    {
      swift_arrayDestroy();
      v113, v86, v87, v88, v89, v90, v91, v92;
      return;
    }

    v11 = *(v110 + 8 * v12);
    ++v10;
    if (v11)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  v93 = swift_allocError();
  swift_willThrow();
  v94 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  if (swift_dynamicCast())
  {
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD00000000000001BLL, 0x80000001BE13DAD0);
    sub_1BE053974();
    MEMORY[0x1BFB3F610](39, 0xE100000000000000);
    sub_1BE053994();
    __break(1u);
  }

  v1, v95, v96, v97, v98, v99, v100, v101;

  v3, v102, v103, v104, v105, v106, v107, v108;
  swift_unexpectedError();
  __break(1u);
LABEL_50:
  sub_1BE053C14();
  __break(1u);
}

void sub_1BDA84610()
{
  v1 = v0;
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = OBJC_IVAR___PKMicaView_namedLayers;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(v1 + v5) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v71 = *(v1 + v5);
  v72 = v5;
  sub_1BE048C84();
  v21 = 0;
  while (v12)
  {
    v22 = v12;
LABEL_11:
    v12 = (v22 - 1) & v22;
    v24 = *(v1 + v72);
    if (v24[2])
    {
      v25 = (v71[6] + ((v21 << 10) | (16 * __clz(__rbit64(v22)))));
      v26 = *v25;
      v27 = v25[1];
      sub_1BE048C84();
      sub_1BE048C84();
      v28 = sub_1BD148F70(v26, v27);
      v30 = v29;
      v27, v29, v31, v32, v33, v34, v35, v36;
      if (v30)
      {
        v44 = *(v24[7] + 8 * v28);
        sub_1BE048C84();
        v24, v45, v46, v47, v48, v49, v50, v51;
        if (v44 >> 62)
        {
          v59 = sub_1BE053704();
          if (!v59)
          {
            goto LABEL_23;
          }

LABEL_15:
          if (v59 < 1)
          {
            goto LABEL_26;
          }

          v70 = v1;
          v60 = 0;
          do
          {
            if ((v44 & 0xC000000000000001) != 0)
            {
              v61 = MEMORY[0x1BFB40900](v60, v44);
            }

            else
            {
              v61 = *(v44 + 8 * v60 + 32);
            }

            v62 = v61;
            ++v60;
            [v61 setShouldRasterize_];
            [v62 setContentsScale_];
            [v62 setRasterizationScale_];
          }

          while (v59 != v60);
          v44, v63, v64, v65, v66, v67, v68, v69;
          v1 = v70;
        }

        else
        {
          v59 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v59)
          {
            goto LABEL_15;
          }

LABEL_23:
          v44, v52, v53, v54, v55, v56, v57, v58;
        }
      }

      else
      {
        v24, v37, v38, v39, v40, v41, v42, v43;
      }
    }
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v13)
    {
      v71, v14, v15, v16, v17, v18, v19, v20;
      return;
    }

    v22 = *(v8 + 8 * v23);
    ++v21;
    if (v22)
    {
      v21 = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1BDA8488C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PKMicaView_namedLayers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_1BE048C84();
  v5, v6, v7, v8, v9, v10, v11, v12;
}

id sub_1BDA848F4(void *a1)
{
  *&v1[OBJC_IVAR___PKMicaView_package] = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___PKMicaView_availableStates] = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR___PKMicaView_namedLayers;
  *&v1[v4] = sub_1BD1ABEBC(v3);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MicaView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id MicaView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MicaView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MicaView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BDA84EDC(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = a1;
  v3 = [v2 rootLayer];
  if (!v3)
  {
LABEL_19:

    return;
  }

  v4 = v3;
  v5 = [v3 states];
  if (!v5 || (v6 = v5, v7 = sub_1BE052744(), v6, v8 = sub_1BD3FD1D0(v7), v7, v9, v10, v11, v12, v13, v14, v15, !v8))
  {

    goto LABEL_19;
  }

  if (v8 >> 62)
  {
    goto LABEL_29;
  }

  v21 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v21)
  {
    while (1)
    {
      v64 = MEMORY[0x1E69E7CC0];
      sub_1BD03B254(0, v21 & ~(v21 >> 63), 0, v16, v17, v18, v19, v20);
      if (v21 < 0)
      {
        __break(1u);
        goto LABEL_32;
      }

      v63 = v2;
      if ((v8 & 0xC000000000000001) == 0)
      {
        break;
      }

      v22 = 0;
      v2 = &selRef_metricsForTextStyle_;
      while (1)
      {
        MEMORY[0x1BFB40900](v22, v8);
        v23 = [swift_unknownObjectRetain() name];
        if (v23)
        {
          v24 = v23;
          v25 = sub_1BE052434();
          v1 = v26;
        }

        else
        {
          v25 = 0;
          v1 = 0;
        }

        swift_unknownObjectRelease_n();
        if (!v1)
        {
          break;
        }

        v33 = *(v64 + 16);
        v32 = *(v64 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1BD03B254((v32 > 1), v33 + 1, 1, v27, v28, v29, v30, v31);
        }

        ++v22;
        *(v64 + 16) = v33 + 1;
        v34 = v64 + 16 * v33;
        *(v34 + 32) = v25;
        *(v34 + 40) = v1;
        if (v21 == v22)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_29:
      v21 = sub_1BE053704();
      if (!v21)
      {
        goto LABEL_30;
      }
    }

    v35 = v8 + 4;
    while (1)
    {
      v1 = *v35;
      v36 = [v1 name];
      if (!v36)
      {
        break;
      }

      v37 = v36;
      v38 = sub_1BE052434();
      v40 = v39;

      if (!v40)
      {
        goto LABEL_33;
      }

      v47 = *(v64 + 16);
      v46 = *(v64 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1BD03B254((v46 > 1), v47 + 1, 1, v41, v42, v43, v44, v45);
      }

      *(v64 + 16) = v47 + 1;
      v48 = v64 + 16 * v47;
      *(v48 + 32) = v38;
      *(v48 + 40) = v40;
      ++v35;
      if (!--v21)
      {
LABEL_27:

        v8, v49, v50, v51, v52, v53, v54, v55;
        return;
      }
    }

LABEL_32:

LABEL_33:
    __break(1u);
  }

  else
  {
LABEL_30:

    v8, v56, v57, v58, v59, v60, v61, v62;
  }
}

uint64_t type metadata accessor for SavingsBalanceHistoryView(uint64_t a1)
{
  result = qword_1EBD5D8A0;
  if (!qword_1EBD5D8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BDA85208(uint64_t a1)
{
  sub_1BD48E6D8(319);
  if (v1 <= 0x3F)
  {
    sub_1BDA8532C(319);
    if (v2 <= 0x3F)
    {
      sub_1BDA85390(319, &qword_1EBD393A8, MEMORY[0x1E697DBD0]);
      if (v3 <= 0x3F)
      {
        sub_1BDA85390(319, &qword_1EBD4B278, MEMORY[0x1E697E7E0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BDA8532C(uint64_t a1)
{
  if (!qword_1EBD5D8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40EC8, &unk_1BE0C9A60);
    v1 = sub_1BE051964();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD5D8B0);
    }
  }
}

void sub_1BDA85390(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE04E3A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BDA85400(char *a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v119 = type metadata accessor for SavingsBalanceHistoryView(0);
  v116 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v117 = v3;
  v118 = v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB18, &qword_1BE0BD090);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v130 = v105 - v5;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0, "FM\r");
  MEMORY[0x1EEE9AC00](v129);
  v124 = (v105 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8C0, &qword_1BE1138F0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v105 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8C8, &qword_1BE1138F8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v105 - v12;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8D0, &qword_1BE113900);
  v126 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v121 = v105 - v14;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8D8, &qword_1BE113908);
  v128 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v131 = v105 - v15;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8E0, &qword_1BE113910);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v123 = v105 - v16;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8E8, &qword_1BE113918);
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v110 = v105 - v17;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8F0, &qword_1BE113920);
  v113 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v111 = v105 - v18;
  v134 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8F8, &qword_1BE113928);
  sub_1BDA8CD18();
  sub_1BE04D694();
  sub_1BE052434();
  v20 = v19;
  sub_1BD0DE4F4(&qword_1EBD5D920, &qword_1EBD5D8C0, &qword_1BE1138F0, MEMORY[0x1E695B218]);
  sub_1BE050DE4();
  v20, v21, v22, v23, v24, v25, v26, v27;
  (*(v8 + 8))(v10, v7);
  v133 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D928, &qword_1BE113940);
  v29 = sub_1BDA8CF14();
  v122 = MEMORY[0x1E695B2D0];
  v30 = sub_1BD0DE4F4(&qword_1EBD5D938, &qword_1EBD5D928, &qword_1BE113940, MEMORY[0x1E695B2D0]);
  sub_1BE050734();
  sub_1BD0D224C(v13);
  KeyPath = swift_getKeyPath();
  v32 = swift_getKeyPath();
  v33 = v124;
  sub_1BE04D8B4(v124);
  KeyPath, v34, v35, v36, v37, v38, v39, v40;
  v32, v41, v42, v43, v44, v45, v46, v47;
  v48 = sub_1BE04D794();
  v49 = *(v48 - 8);
  v50 = *(v49 + 56);
  v51 = v130;
  v107 = v48;
  v106 = v50;
  v105[1] = v49 + 56;
  (v50)(v130, 1, 1);
  *&v137 = v11;
  *(&v137 + 1) = v28;
  *&v138 = v29;
  *(&v138 + 1) = v30;
  v52 = a1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = sub_1BDA8D004(&qword_1EBD5D940, &unk_1EBD387B0, "FM\r");
  v55 = v33;
  v56 = v51;
  v57 = v125;
  v58 = v129;
  v59 = v121;
  sub_1BE050774();
  sub_1BD0DE53C(v56, &qword_1EBD3BB18, &qword_1BE0BD090);
  sub_1BD0DE53C(v55, &unk_1EBD387B0, "FM\r");
  (*(v126 + 8))(v59, v57);
  v132 = v52;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D948, &unk_1BE113990);
  *&v137 = v57;
  *(&v137 + 1) = v58;
  *&v138 = OpaqueTypeConformance2;
  *(&v138 + 1) = v54;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v123;
  v63 = sub_1BD0DE4F4(&qword_1EBD5D950, &qword_1EBD5D948, &unk_1BE113990, v122);
  v64 = v127;
  v65 = v131;
  sub_1BE050754();
  (*(v128 + 8))(v65, v64);
  v131 = v52;
  v66 = sub_1BDA86D68();
  if (!*(v66 + 2))
  {
LABEL_6:
    v66, v67, v68, v69, v70, v71, v72, v73;
    __break(1u);
    goto LABEL_7;
  }

  v74 = *(v66 + 4);
  v66, v67, v68, v69, v70, v71, v72, v73;
  v75 = sub_1BDA86D68();
  v83 = *(v75 + 2);
  if (v83)
  {
    v84 = *&v75[8 * v83 + 24];
    v75, v76, v77, v78, v79, v80, v81, v82;
    if (v74 <= v84)
    {
      v135 = v74;
      v136 = v84;
      v85 = v130;
      v106(v130, 1, 1, v107);
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB80, &qword_1BE0BD160);
      *&v137 = v64;
      *(&v137 + 1) = v60;
      *&v138 = v61;
      *(&v138 + 1) = v63;
      v86 = swift_getOpaqueTypeConformance2();
      v87 = sub_1BDA8D004(&qword_1EBD3BB88, &qword_1EBD3BB80, &qword_1BE0BD160);
      v88 = v110;
      v89 = v109;
      sub_1BE050794();
      sub_1BD0DE53C(v85, &qword_1EBD3BB18, &qword_1BE0BD090);
      (*(v108 + 8))(v62, v89);
      v90 = v118;
      sub_1BDA8D41C(v131, v118, type metadata accessor for SavingsBalanceHistoryView);
      v91 = (*(v116 + 80) + 16) & ~*(v116 + 80);
      v92 = swift_allocObject();
      sub_1BDA8D270(v90, v92 + v91, type metadata accessor for SavingsBalanceHistoryView);
      sub_1BE051CD4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D958, &qword_1BE1139A0);
      *&v137 = v89;
      *(&v137 + 1) = v129;
      *&v138 = v86;
      *(&v138 + 1) = v87;
      swift_getOpaqueTypeConformance2();
      sub_1BD0DE4F4(&qword_1EBD5D960, &qword_1EBD5D958, &qword_1BE1139A0, MEMORY[0x1E6981F48]);
      v93 = v111;
      v94 = v114;
      sub_1BE0507A4();
      v92, v95, v96, v97, v98, v99, v100, v101;
      (*(v112 + 8))(v88, v94);
      sub_1BE051CD4();
      sub_1BE04E5E4();
      v102 = v120;
      (*(v113 + 32))(v120, v93, v115);
      v103 = (v102 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D968, &qword_1BE1139A8) + 36));
      v104 = v138;
      *v103 = v137;
      v103[1] = v104;
      v103[2] = v139;
      return;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  v75, v76, v77, v78, v79, v80, v81, v82;
  __break(1u);
}

void sub_1BDA8609C(uint64_t a1@<X8>)
{
  v252 = a1;
  v2 = sub_1BE04D604();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v251 = &v237 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04D574();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v250 = &v237 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SavingsBalanceHistoryView(0);
  v246 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v247 = v7;
  v248 = &v237 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccountBalance(0);
  v242 = *(v8 - 8);
  v243 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v240 = (&v237 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v237 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v238 = &v237 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v241 = (&v237 - v16);
  v17 = sub_1BE04AF64();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v237 = &v237 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v239 = &v237 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v237 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v237 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v237 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v245 = &v237 - v32;
  v244 = swift_allocBox();
  v254 = v33;
  v249 = v1;
  KeyPath = swift_getKeyPath();
  v35 = swift_getKeyPath();
  sub_1BE04D8B4(v255);
  KeyPath, v36, v37, v38, v39, v40, v41, v42;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v50 = *(v255[0] + 2);
  v255[0], v51, v52, v53, v54, v55, v56, v57;
  v253 = v18;
  if (!v50)
  {
    sub_1BE04AEF4();
    v160 = sub_1BE04AE64();
    v243 = v18[1];
    (v243)(v30, v17);
    v12 = PKStartOfDay();

    if (v12)
    {
      sub_1BE04AEE4();

      v161 = v18[4];
      v161(v254, v27, v17);
      sub_1BE04AEF4();
      v162 = sub_1BE04AE64();
      (v243)(v30, v17);
      v12 = PKEndOfDay();

      if (v12)
      {
        sub_1BE04AEE4();

        v158 = v245;
        v161(v245, v24, v17);
        v159 = v253;
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  v58 = swift_getKeyPath();
  v59 = swift_getKeyPath();
  sub_1BE04D8B4(v255);
  v58, v60, v61, v62, v63, v64, v65, v66;
  v59, v67, v68, v69, v70, v71, v72, v73;
  v74 = *(v255[0] + 2);
  v255[0], v75, v76, v77, v78, v79, v80, v81;
  v82 = swift_getKeyPath();
  v24 = swift_getKeyPath();
  if (v74 != 1)
  {
    sub_1BE04D8B4(v255);
    v82, v163, v164, v165, v166, v167, v168, v169;
    v24, v170, v171, v172, v173, v174, v175, v176;
    v24 = v255[0];
    v159 = v253;
    v184 = v242;
    if (*(v255[0] + 2))
    {
      v185 = (*(v242 + 80) + 32) & ~*(v242 + 80);
      sub_1BDA8D41C(v255[0] + v185, v12, type metadata accessor for AccountBalance);
      v24, v186, v187, v188, v189, v190, v191, v192;
      v193 = v243;
      v194 = v159[2];
      v194(v30, &v12[*(v243 + 20)], v17);
      sub_1BD0E5E24(v12);
      (v159[4])(v254, v30, v17);
      v195 = swift_getKeyPath();
      v196 = v184;
      v197 = swift_getKeyPath();
      sub_1BE04D8B4(v255);
      v195, v198, v199, v200, v201, v202, v203, v204;
      v197, v205, v206, v207, v208, v209, v210, v211;
      v12 = v255[0];
      v212 = *(v255[0] + 2);
      if (v212)
      {
        v213 = v240;
        sub_1BDA8D41C(v255[0] + v185 + *(v196 + 72) * (v212 - 1), v240, type metadata accessor for AccountBalance);
        v12, v214, v215, v216, v217, v218, v219, v220;
        v158 = v245;
        v194(v245, &v213[*(v193 + 20)], v17);
        sub_1BD0E5E24(v213);
        goto LABEL_14;
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_1BE04D8B4(v255);
  v82, v83, v84, v85, v86, v87, v88, v89;
  v24, v90, v91, v92, v93, v94, v95, v96;
  v12 = v255[0];
  v104 = v253;
  if (!*(v255[0] + 2))
  {
LABEL_17:
    v12, v97, v98, v99, v100, v101, v102, v103;
    __break(1u);
LABEL_18:
    v24, v177, v178, v179, v180, v181, v182, v183;
    __break(1u);
    goto LABEL_19;
  }

  v242 = (*(v242 + 80) + 32) & ~*(v242 + 80);
  v105 = v241;
  sub_1BDA8D41C(v255[0] + v242, v241, type metadata accessor for AccountBalance);
  v12, v106, v107, v108, v109, v110, v111, v112;
  v113 = &v105[*(v243 + 20)];
  v240 = v104[2];
  (v240)(v30, v113, v17);
  sub_1BD0E5E24(v105);
  v114 = sub_1BE04AE64();
  v115 = v104[1];
  v115(v30, v17);
  v12 = PKStartOfDay();

  if (!v12)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    v12, v116, v117, v118, v119, v120, v121, v122;
    __break(1u);
    goto LABEL_21;
  }

  v123 = v239;
  sub_1BE04AEE4();

  v241 = v104[4];
  (v241)(v254, v123, v17);
  v124 = swift_getKeyPath();
  v125 = swift_getKeyPath();
  sub_1BE04D8B4(v255);
  v124, v126, v127, v128, v129, v130, v131, v132;
  v125, v133, v134, v135, v136, v137, v138, v139;
  v12 = v255[0];
  if (!*(v255[0] + 2))
  {
LABEL_21:
    v12, v140, v141, v142, v143, v144, v145, v146;
    __break(1u);
    goto LABEL_22;
  }

  v147 = v238;
  sub_1BDA8D41C(v255[0] + v242, v238, type metadata accessor for AccountBalance);
  v12, v148, v149, v150, v151, v152, v153, v154;
  (v240)(v30, v147 + *(v243 + 20), v17);
  sub_1BD0E5E24(v147);
  v155 = sub_1BE04AE64();
  v115(v30, v17);
  v156 = PKEndOfDay();

  if (v156)
  {
    v157 = v237;
    sub_1BE04AEE4();

    v158 = v245;
    (v241)(v245, v157, v17);
    v159 = v253;
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAC0, &unk_1BE0BFD00);
    v221 = v159[9];
    v222 = (*(v159 + 80) + 32) & ~*(v159 + 80);
    v223 = swift_allocObject();
    *(v223 + 16) = xmmword_1BE0B6CA0;
    v224 = v223 + v222;
    v225 = v159[2];
    v225(v224, v254, v17);
    v225(v224 + v221, v158, v17);
    v226 = v248;
    sub_1BDA8D41C(v249, v248, type metadata accessor for SavingsBalanceHistoryView);
    v227 = (*(v246 + 80) + 24) & ~*(v246 + 80);
    v228 = swift_allocObject();
    v229 = v244;
    *(v228 + 16) = v244;
    sub_1BDA8D270(v226, v228 + v227, type metadata accessor for SavingsBalanceHistoryView);
    sub_1BE048964();
    sub_1BE04D564();
    sub_1BE04D5F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA48, &qword_1BE113AC0);
    sub_1BDA8DEC8();
    sub_1BE04D774();
    (v159[1])(v158, v17);
    v229, v230, v231, v232, v233, v234, v235, v236;
    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_1BDA86B38(uint64_t a1)
{
  v2 = sub_1BE04D604();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1BE04D574();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for SavingsBalanceHistoryView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = sub_1BDA86D68();
  sub_1BDA8D41C(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsBalanceHistoryView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1BDA8D270(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for SavingsBalanceHistoryView);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  sub_1BE048C84();
  sub_1BE04D564();
  sub_1BE04D5F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA08, &qword_1BE113A88);
  sub_1BDA8DB70();
  return sub_1BE04D774();
}

char *sub_1BDA86D68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8, &unk_1BE0C9A60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v61 - v5);
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  sub_1BE04D8B4(&v62);
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v8, v16, v17, v18, v19, v20, v21, v22;
  v23 = v62;
  sub_1BD510BBC(v62, v6);
  v23, v24, v25, v26, v27, v28, v29, v30;
  v31 = type metadata accessor for AccountBalance(0);
  v32 = *(*(v31 - 8) + 48);
  if (v32(v6, 1, v31) == 1)
  {
    sub_1BD0DE53C(v6, &qword_1EBD40EC8, &unk_1BE0C9A60);
    v33 = 0.0;
  }

  else
  {
    v33 = *v6;
    sub_1BD0E5E24(v6);
  }

  v34 = swift_getKeyPath();
  v35 = swift_getKeyPath();
  sub_1BE04D8B4(&v62);
  v34, v36, v37, v38, v39, v40, v41, v42;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v50 = v62;
  sub_1BD5DD508(v62, v3);
  v50, v51, v52, v53, v54, v55, v56, v57;
  if (v32(v3, 1, v31) == 1)
  {
    sub_1BD0DE53C(v3, &qword_1EBD40EC8, &unk_1BE0C9A60);
    v58 = 0.0;
  }

  else
  {
    v58 = *v3;
    sub_1BD0E5E24(v3);
  }

  v59 = type metadata accessor for SavingsBalanceHistoryView(0);
  return sub_1BD43860C(*(v0 + *(v59 + 64)), v33, v58);
}

uint64_t sub_1BDA86FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v34 = a2;
  v41 = a1;
  v42 = a3;
  v5 = type metadata accessor for SavingsBalanceHistoryView(0);
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v6;
  v7 = sub_1BE04D474();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v38 = v9;
  v11 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v8 + 16);
  v40(v11, a1, v7, v10);
  sub_1BDA8D41C(a2, &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsBalanceHistoryView);
  v12 = *(v8 + 80);
  v13 = (v12 + 16) & ~v12;
  v14 = *(v39 + 80);
  v15 = (v9 + v14 + v13) & ~v14;
  v37 = v12 | v14;
  v16 = swift_allocObject();
  v17 = *(v8 + 32);
  v18 = v16 + v13;
  v19 = v16;
  v39 = v16;
  v17(v18, v11, v7);
  v20 = v19 + v15;
  v21 = v32;
  sub_1BDA8D270(v32, v20, type metadata accessor for SavingsBalanceHistoryView);
  v22 = sub_1BE051C94();
  v35 = v23;
  v36 = v22;
  sub_1BDA8D41C(v34, v21, type metadata accessor for SavingsBalanceHistoryView);
  (v40)(v11, v41, v7);
  v24 = (v14 + 16) & ~v14;
  v25 = (v33 + v12 + v24) & ~v12;
  v26 = swift_allocObject();
  sub_1BDA8D270(v21, v26 + v24, type metadata accessor for SavingsBalanceHistoryView);
  result = (v17)(v26 + v25, v11, v7);
  v28 = v42;
  v29 = v39;
  *v42 = sub_1BDA8D0EC;
  v28[1] = v29;
  v30 = v35;
  v28[2] = v36;
  v28[3] = v30;
  v28[4] = sub_1BDA8D12C;
  v28[5] = v26;
  return result;
}

double sub_1BDA8727C@<D0>(_OWORD *a1@<X8>)
{
  v47 = a1;
  v2 = sub_1BE04E354();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48298, &qword_1BE113B40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BE0B98D0;
  v49 = *(type metadata accessor for SavingsBalanceHistoryView(0) + 28);
  v50 = v1;
  sub_1BD70A078(v8);
  v10 = *MEMORY[0x1E697DBB8];
  v48 = *(v3 + 104);
  v48(v5, v10, v2);
  v11 = sub_1BE04E344();
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(v8, v2);
  if (v11)
  {
    if (qword_1EBD36B58 != -1)
    {
      swift_once();
    }

    v13 = &qword_1EBDAAE80;
  }

  else
  {
    if (qword_1EBD36B60 != -1)
    {
      swift_once();
    }

    v13 = &qword_1EBDAAE88;
  }

  v14 = *v13;
  sub_1BE048964();
  sub_1BE051454();
  v14, v15, v16, v17, v18, v19, v20, v21;
  *(v9 + 32) = sub_1BE051B04();
  *(v9 + 40) = v22;
  sub_1BD70A078(v8);
  v48(v5, v10, v2);
  LOBYTE(v14) = sub_1BE04E344();
  v12(v5, v2);
  v12(v8, v2);
  if (v14)
  {
    if (qword_1EBD36B58 != -1)
    {
      swift_once();
    }

    v23 = &qword_1EBDAAE80;
  }

  else
  {
    if (qword_1EBD36B60 != -1)
    {
      swift_once();
    }

    v23 = &qword_1EBDAAE88;
  }

  v24 = *v23;
  sub_1BE048964();
  sub_1BE051454();
  v24, v25, v26, v27, v28, v29, v30, v31;
  *(v9 + 48) = sub_1BE051B04();
  *(v9 + 56) = v32;
  sub_1BD70A078(v8);
  v48(v5, v10, v2);
  LOBYTE(v24) = sub_1BE04E344();
  v12(v5, v2);
  v12(v8, v2);
  if (v24)
  {
    if (qword_1EBD36B58 != -1)
    {
      swift_once();
    }

    v33 = &qword_1EBDAAE80;
  }

  else
  {
    if (qword_1EBD36B60 != -1)
    {
      swift_once();
    }

    v33 = &qword_1EBDAAE88;
  }

  v34 = *v33;
  sub_1BE048964();
  sub_1BE051454();
  v34, v35, v36, v37, v38, v39, v40, v41;
  *(v9 + 64) = sub_1BE051B04();
  *(v9 + 72) = v42;
  sub_1BE051B14();
  sub_1BE051E94();
  sub_1BE051E84();
  sub_1BE04E874();
  result = *&v51;
  v44 = v52;
  v45 = v47;
  *v47 = v51;
  v45[1] = v44;
  *(v45 + 4) = v53;
  return result;
}

uint64_t sub_1BDA87744(uint64_t a1)
{
  v2 = type metadata accessor for SavingsBalanceHistoryView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_1BE04D8B4(&v25);
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v6, v14, v15, v16, v17, v18, v19, v20;
  swift_getKeyPath();
  sub_1BDA8D41C(a1, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsBalanceHistoryView);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  sub_1BDA8D270(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for SavingsBalanceHistoryView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD387A0, &qword_1BE113B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D910, &qword_1BE113930);
  sub_1BD0DE4F4(&qword_1EBD5DA88, &qword_1EBD387A0, &qword_1BE113B10, MEMORY[0x1E69E6338]);
  sub_1BDA8E32C(&qword_1EBD52550, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BDA8CD9C();
  return sub_1BE0519B4();
}

void sub_1BDA87990(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v200 = a1;
  v185 = a3;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA90, &qword_1BE113B18);
  MEMORY[0x1EEE9AC00](v184);
  v183 = &v164 - v4;
  v5 = sub_1BE04E354();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v176 = &v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v175 = &v164 - v9;
  v178 = sub_1BE04D754();
  v174 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v173 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D918, &qword_1BE113938);
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v177 = &v164 - v11;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA98, &unk_1BE113B20);
  v181 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v199 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v198 = &v164 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBD8, &qword_1BE0BD198);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v170 = &v164 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v193 = &v164 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v196 = &v164 - v20;
  v21 = sub_1BE04BD74();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v189 = &v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v194 = &v164 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v195 = &v164 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v201 = &v164 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v164 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B498, &qword_1BE113B30);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v188 = &v164 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v164 - v36;
  v192 = sub_1BE04D6E4();
  v191 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v190 = &v164 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DAA0, &qword_1BE113B38);
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v197 = &v164 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v202 = &v164 - v42;
  v43 = *MEMORY[0x1E69B80E0];
  v44 = *(v22 + 104);
  v205 = v21;
  v44(v32, v43, v21, v41);
  v45 = PKPassKitBundle();
  if (!v45)
  {
    __break(1u);
    goto LABEL_16;
  }

  v53 = v45;
  v165 = v6;
  v166 = v5;
  v203 = a2;
  v169 = "e";
  v168 = 0xD000000000000014;
  v54 = sub_1BE04B6F4();
  v56 = v55;

  v57 = *(v22 + 8);
  v58 = v205;
  (v57)(v32, v205);
  *&v211[0] = v54;
  *(&v211[0] + 1) = v56;
  v59 = *(type metadata accessor for AccountBalance(0) + 20);
  v60 = sub_1BE04AF64();
  v61 = sub_1BD0DDEBC();
  v167 = v59;
  v186 = v37;
  v187 = v60;
  v204 = v61;
  sub_1BE04D5E4();
  v56, v62, v63, v64, v65, v66, v67, v68;
  (v44)(v201, v43, v58);
  v45 = PKPassKitBundle();
  if (!v45)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v69 = v45;
  v70 = v43;
  v71 = v44;
  v72 = v201;
  v73 = sub_1BE04B6F4();
  v75 = v74;

  (v57)(v72, v205);
  *&v211[0] = v73;
  *(&v211[0] + 1) = v75;
  v45 = sub_1BDA86D68();
  if (!*(v45 + 2))
  {
LABEL_17:
    v45, v46, v47, v48, v49, v50, v51, v52;
    __break(1u);
    goto LABEL_18;
  }

  v76 = *(v45 + 4);
  v45, v46, v47, v48, v49, v50, v51, v52;
  *&v209[0] = v76;
  sub_1BE04D5E4();
  v75, v77, v78, v79, v80, v81, v82, v83;
  v84 = v195;
  (v71)(v195, v70, v205);
  v85 = PKPassKitBundle();
  v201 = v71;
  if (!v85)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v86 = v85;
  v164 = "DATE_VISUAL_ENCODING";
  v87 = v84;
  v88 = sub_1BE04B6F4();
  v90 = v89;

  v91 = v205;
  (v57)(v87, v205);
  *&v211[0] = v88;
  *(&v211[0] + 1) = v90;
  v195 = v57;
  v92 = *v200;
  *&v209[0] = *v200;
  sub_1BE04D5E4();
  v90, v93, v94, v95, v96, v97, v98, v99;
  v100 = v190;
  sub_1BE04D6D4();
  sub_1BDA8727C(v209);
  v211[0] = v209[0];
  v211[1] = v209[1];
  v212 = v210;
  v101 = v192;
  sub_1BE04D4B4();
  sub_1BDA8E374(v209);
  (*(v191 + 8))(v100, v101);
  v102 = v194;
  (v201)(v194, v70, v91);
  v103 = PKPassKitBundle();
  if (!v103)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v104 = v103;
  v105 = sub_1BE04B6F4();
  v107 = v106;

  v108 = v205;
  v109 = v195;
  (v195)(v102, v205);
  *&v211[0] = v105;
  *(&v211[0] + 1) = v107;
  sub_1BE04D5E4();
  v107, v110, v111, v112, v113, v114, v115, v116;
  v117 = v189;
  (v201)(v189, v70, v108);
  v118 = PKPassKitBundle();
  if (!v118)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v119 = v118;
  v120 = sub_1BE04B6F4();
  v122 = v121;

  v109(v117, v205);
  *&v211[0] = v120;
  *(&v211[0] + 1) = v122;
  v206 = v92;
  sub_1BE04D5E4();
  v122, v123, v124, v125, v126, v127, v128, v129;
  v130 = v173;
  sub_1BE04D744();
  type metadata accessor for SavingsBalanceHistoryView(0);
  sub_1BE04E3F4();
  v131 = MEMORY[0x1E695B2A0];
  v132 = v177;
  v133 = v178;
  sub_1BE04D504();
  sub_1BDA8E3C8(v211);
  (*(v174 + 8))(v130, v133);
  v134 = v175;
  sub_1BD70A078(v175);
  v135 = v165;
  v136 = v176;
  v137 = v166;
  (*(v165 + 104))(v176, *MEMORY[0x1E697DBB8], v166);
  LOBYTE(v119) = sub_1BE04E344();
  v138 = *(v135 + 8);
  v138(v136, v137);
  v138(v134, v137);
  if (v119)
  {
    v139 = v180;
    if (qword_1EBD36B58 != -1)
    {
      swift_once();
    }

    v140 = &qword_1EBDAAE80;
  }

  else
  {
    v139 = v180;
    if (qword_1EBD36B60 != -1)
    {
      swift_once();
    }

    v140 = &qword_1EBDAAE88;
  }

  v141 = *v140;
  sub_1BE048964();
  v207 = v131;
  v208 = v141;
  v206 = v133;
  swift_getOpaqueTypeConformance2();
  v142 = v198;
  sub_1BE04D4B4();
  v141, v143, v144, v145, v146, v147, v148, v149;
  (*(v179 + 8))(v132, v139);
  v150 = v171;
  v205 = *(v171 + 16);
  v151 = v197;
  v152 = v172;
  v205(v197, v202, v172);
  v153 = v181;
  v154 = *(v181 + 16);
  v155 = v199;
  v156 = v142;
  v157 = v182;
  v154(v199, v156, v182);
  v158 = v183;
  v205(v183, v151, v152);
  v159 = v184;
  v160 = *(v184 + 48);
  v154(&v158[v160], v155, v157);
  v161 = v185;
  (*(v150 + 32))(v185, v158, v152);
  (*(v153 + 32))(v161 + *(v159 + 48), &v158[v160], v157);
  v162 = *(v153 + 8);
  v162(v198, v157);
  v163 = *(v150 + 8);
  v163(v202, v152);
  v162(v199, v157);
  v163(v197, v152);
}

void sub_1BDA8894C(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v72 = a2;
  v74 = a3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA38, &qword_1BE113AA8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v62 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA20, &qword_1BE113A90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v62 - v5;
  v6 = sub_1BE04D654();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04D674();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v63 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B3B8, &qword_1BE113AA0);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v62 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA30, &qword_1BE113A98);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v68 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v62 - v14;
  v15 = sub_1BE04D494();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B3C8, &qword_1BE113AB0);
  v19 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v62 - v23;
  v25 = sub_1BE04D784();
  type metadata accessor for SavingsBalanceHistoryView(0);
  if (v25)
  {
    sub_1BE04E3F4();
    v79 = v76;
    v80 = v77;
    v81 = v78;
    sub_1BE04D484();
    if (qword_1EBD36B78 == -1)
    {
LABEL_11:
      v75 = qword_1EBDAAEA0;
      sub_1BE04D6F4();
      (*(v16 + 8))(v18, v15);
      (*(v19 + 32))(v74, v21, v73);
LABEL_15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA40, &qword_1BE113AB8);
      swift_storeEnumTagMultiPayload();
      return;
    }

LABEL_17:
    swift_once();
    goto LABEL_11;
  }

  sub_1BE04E3F4();
  v79 = v76;
  v80 = v77;
  v81 = v78;
  sub_1BE04D484();
  if (qword_1EBD36B68 != -1)
  {
    swift_once();
  }

  v75 = qword_1EBDAAE90;
  sub_1BE04D6F4();
  v26 = *(v16 + 8);
  v16 += 8;
  v26(v18, v15);
  v27 = sub_1BE04D784();
  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v28 = v72;
  if (v27 >= *(v72 + 16))
  {
    __break(1u);
  }

  else
  {
    v29 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDouble_];
    v30 = objc_allocWithZone(MEMORY[0x1E69B8780]);
    v31 = sub_1BE052404();
    v32 = [v30 initWithAmount:v29 currency:v31 exponent:0];

    if (v32)
    {
      v33 = [v32 minimalFormattedStringValue];

      if (v33)
      {
        sub_1BE052434();
        v35 = v34;

        v37 = 1;
        if (v35)
        {
          MEMORY[0x1EEE9AC00](v36);
          v38 = v63;
          sub_1BE04D664();
          v39 = v64;
          sub_1BE04D644();
          v61[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
          v61[5] = sub_1BD2A275C();
          v61[3] = v61;
          v40 = v62;
          sub_1BE04D5B4(2, 0, 0, 1, 0, 0, 1, v38, 2, v39, 0, 1, 0, 1, sub_1BDA8DE38);
          v35, v41, v42, v43, v44, v45, v46, v47;
          v48 = v65;
          v49 = v67;
          v50 = v66;
          (*(v65 + 32))(v67, v40, v66);
          v37 = 0;
LABEL_14:
          (*(v48 + 56))(v49, v37, 1, v50);
          v51 = *(v19 + 16);
          v52 = v24;
          v53 = v19;
          v54 = v73;
          v51(v21, v24, v73);
          v55 = v68;
          sub_1BD0DE19C(v49, v68, &qword_1EBD5DA30, &qword_1BE113A98);
          v56 = v69;
          v51(v69, v21, v54);
          sub_1BDA8DD18();
          v57 = v70;
          v58 = *(v70 + 48);
          sub_1BD0DE19C(v55, &v56[v58], &qword_1EBD5DA30, &qword_1BE113A98);
          v59 = v71;
          (*(v53 + 32))(v71, v56, v54);
          sub_1BDA8DDC8(&v56[v58], v59 + *(v57 + 48));
          sub_1BD0DE53C(v49, &qword_1EBD5DA30, &qword_1BE113A98);
          v60 = *(v53 + 8);
          v60(v52, v54);
          sub_1BD0DE53C(v55, &qword_1EBD5DA30, &qword_1BE113A98);
          v60(v21, v54);
          sub_1BD0DE204(v59, v74, &qword_1EBD5DA20, &qword_1BE113A90);
          goto LABEL_15;
        }
      }

      else
      {
        v37 = 1;
      }

      v49 = v67;
      v50 = v66;
      v48 = v65;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1BDA89280(uint64_t a4@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v5 = sub_1BE0506C4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (qword_1EBD36B70 != -1)
  {
    swift_once();
  }

  v12 = sub_1BE050564();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1BD0DDF10(v5, v7, (v9 & 1), v17, v19, v20, v21, v22);
  v11, v23, v24, v25, v26, v27, v28, v29;
  if (PKFontForDesign(*MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC70]))
  {
    v30 = sub_1BE050484();
    v31 = sub_1BE0505F4();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v30, v32, v34, v36, v38, v39, v40, v41;
    sub_1BD0DDF10(v12, v14, (v16 & 1), v42, v43, v44, v45, v46);
    v18, v47, v48, v49, v50, v51, v52, v53;
    v54 = sub_1BE050204();
    v55 = sub_1BE050214();
    sub_1BE050214();
    if (sub_1BE050214() != v54)
    {
      v55 = sub_1BE050214();
    }

    type metadata accessor for SavingsBalanceHistoryView(0);
    sub_1BE04E1F4();
    *a4 = v31;
    *(a4 + 8) = v33;
    *(a4 + 16) = v35 & 1;
    *(a4 + 24) = v37;
    *(a4 + 32) = v55;
    *(a4 + 40) = v56;
    *(a4 + 48) = v57;
    *(a4 + 56) = v58;
    *(a4 + 64) = v59;
    *(a4 + 72) = 0;
  }

  else
  {
    __break(1u);
  }
}

id sub_1BDA89478@<X0>(char *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a3;
  v83 = a4;
  v84 = a1;
  v5 = sub_1BE04D654();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04D674();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA68, &qword_1BE113AD8);
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA60, &qword_1BE113AD0);
  v76 = *(v14 - 8);
  v77 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA58, &qword_1BE113AC8);
  v80 = *(v20 - 8);
  v81 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v75 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA78, &qword_1BE113AE0);
  v78 = *(v26 - 8);
  v79 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v75 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v75 - v29;
  sub_1BE04AF64();
  swift_projectBox();
  if (sub_1BE04D784())
  {
    sub_1BE051E64();
    v32 = v31;
    v34 = v33;
    sub_1BE04D664();
    sub_1BE04D644();
    v74 = MEMORY[0x1E6981138];
    v72 = 0;
    v73 = MEMORY[0x1E6981148];
    sub_1BE04D5B4(2, v32, v34, 0, 0, 0, 1, v10, 2, v7, 0, 1, 0, 1, sub_1BDA89EA8);
    if (qword_1EBD36B70 != -1)
    {
      swift_once();
    }

    v87 = qword_1EBDAAE98;
    v35 = sub_1BD0DE4F4(&qword_1EBD5DA70, &qword_1EBD5DA68, &qword_1BE113AD8, MEMORY[0x1E695B160]);
    v36 = MEMORY[0x1E69815C0];
    v37 = MEMORY[0x1E6981568];
    v38 = v86;
    sub_1BE04D6F4();
    (*(v85 + 8))(v13, v38);
    result = PKFontForDesign(*MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC70]);
    if (result)
    {
      v40 = sub_1BE050484();
      v87 = v38;
      v88 = v36;
      v89 = v35;
      v90 = v37;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v42 = v77;
      sub_1BE04D704();
      v40, v43, v44, v45, v46, v47, v48, v49;
      (*(v76 + 8))(v16, v42);
      type metadata accessor for SavingsBalanceHistoryView(0);
      v87 = v42;
      v88 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v30 = v75;
      v50 = v81;
      sub_1BE04D714();
      v25 = v22;
LABEL_10:
      (*(v80 + 8))(v25, v50);
      (*(v78 + 32))(v83, v30, v79);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA80, &qword_1BE113AE8);
      return swift_storeEnumTagMultiPayload();
    }

    __break(1u);
  }

  else
  {
    v84 = v19;
    v51 = sub_1BE051E54();
    v53 = v52;
    v55 = v54;
    MEMORY[0x1EEE9AC00](v51);
    sub_1BE04D664();
    sub_1BE04D644();
    v74 = MEMORY[0x1E6981138];
    v72 = &v71;
    v73 = MEMORY[0x1E6981148];
    sub_1BE04D5B4(2, v53, v55, 0, 0, 0, 1, v10, 2, v7, 0, 1, 0, 1, sub_1BDA8E050);
    if (qword_1EBD36B70 != -1)
    {
      swift_once();
    }

    v87 = qword_1EBDAAE98;
    v56 = sub_1BD0DE4F4(&qword_1EBD5DA70, &qword_1EBD5DA68, &qword_1BE113AD8, MEMORY[0x1E695B160]);
    v57 = MEMORY[0x1E69815C0];
    v58 = MEMORY[0x1E6981568];
    v59 = v84;
    v60 = v86;
    sub_1BE04D6F4();
    (*(v85 + 8))(v13, v60);
    result = PKFontForDesign(*MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC70]);
    if (result)
    {
      v61 = sub_1BE050484();
      v87 = v60;
      v88 = v57;
      v89 = v56;
      v90 = v58;
      v62 = swift_getOpaqueTypeConformance2();
      v63 = v77;
      sub_1BE04D704();
      v61, v64, v65, v66, v67, v68, v69, v70;
      (*(v76 + 8))(v59, v63);
      type metadata accessor for SavingsBalanceHistoryView(0);
      v87 = v63;
      v88 = v62;
      swift_getOpaqueTypeConformance2();
      v50 = v81;
      sub_1BE04D714();
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1BDA89D3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  (*(v5 + 16))(v7, a1, v4);
  v8 = sub_1BE04AE64();
  (*(v5 + 8))(v7, v4);
  v9 = PKMediumDateString();

  if (v9)
  {
    v10 = sub_1BE052434();
    v12 = v11;

    v16[1] = v10;
    v16[2] = v12;
    sub_1BD0DDEBC();
    *a2 = sub_1BE0506C4();
    *(a2 + 8) = v13;
    *(a2 + 16) = v14 & 1;
    *(a2 + 24) = v15;
  }

  else
  {
    __break(1u);
  }
}

id sub_1BDA89EA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80E0], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA8A018@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v23 = a1;
  v6 = type metadata accessor for SavingsBalanceHistoryView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = sub_1BE051CD4();
  v12 = v11;
  sub_1BDA8A3BC(v3, v42, a2, a3);
  v37 = v42[12];
  v38 = v42[13];
  v39 = v42[14];
  v40 = v42[15];
  v33 = v42[8];
  v34 = v42[9];
  v35 = v42[10];
  v36 = v42[11];
  v29 = v42[4];
  v30 = v42[5];
  v31 = v42[6];
  v32 = v42[7];
  v25 = v42[0];
  v26 = v42[1];
  v27 = v42[2];
  v28 = v42[3];
  v41[12] = v42[12];
  v41[13] = v42[13];
  v41[14] = v42[14];
  v41[15] = v42[15];
  v41[8] = v42[8];
  v41[9] = v42[9];
  v41[10] = v42[10];
  v41[11] = v42[11];
  v41[4] = v42[4];
  v41[5] = v42[5];
  v41[6] = v42[6];
  v41[7] = v42[7];
  v41[0] = v42[0];
  v41[1] = v42[1];
  v41[2] = v42[2];
  v41[3] = v42[3];
  sub_1BD0DE19C(&v25, v24, &qword_1EBD5D978, &qword_1BE1139B8);
  sub_1BD0DE53C(v41, &qword_1EBD5D978, &qword_1BE1139B8);
  *&v24[208] = v37;
  *&v24[224] = v38;
  *&v24[240] = v39;
  *&v24[256] = v40;
  *&v24[144] = v33;
  *&v24[160] = v34;
  *&v24[176] = v35;
  *&v24[192] = v36;
  *&v24[80] = v29;
  *&v24[96] = v30;
  *&v24[112] = v31;
  *&v24[128] = v32;
  *&v24[16] = v25;
  *&v24[32] = v26;
  *&v24[48] = v27;
  *&v24[64] = v28;
  *v24 = v10;
  *&v24[8] = v12;
  v24[272] = 0;
  sub_1BDA8D41C(v3, v9, type metadata accessor for SavingsBalanceHistoryView);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_1BDA8D270(v9, v14 + v13, type metadata accessor for SavingsBalanceHistoryView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D980, &qword_1BE1139C0);
  sub_1BDA8D338();
  sub_1BE0509D4();
  v14, v15, v16, v17, v18, v19, v20, v21;
  memcpy(v42, v24, 0x111uLL);
  return sub_1BD0DE53C(v42, &qword_1EBD5D980, &qword_1BE1139C0);
}

uint64_t sub_1BDA8A3BC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v37[1] = a1;
  v38 = sub_1BE04E354();
  v7 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v37 - v11;
  v13 = objc_opt_self();
  v14 = [v13 systemGrayColor];
  v41 = sub_1BE0511C4();
  type metadata accessor for SavingsBalanceHistoryView(0);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  *&v92[3] = *&v92[27];
  *&v92[11] = *&v92[35];
  *&v92[19] = *&v92[43];
  v15 = sub_1BE051364();
  KeyPath = swift_getKeyPath();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v16 = [v13 systemGray5Color];
  v39 = sub_1BE0511C4();
  sub_1BD70A078(v12);
  v17 = v38;
  (*(v7 + 104))(v9, *MEMORY[0x1E697DBB8], v38);
  LOBYTE(v13) = sub_1BE04E344();
  v18 = *(v7 + 8);
  v18(v9, v17);
  v18(v12, v17);
  if (v13)
  {
    if (qword_1EBD36B58 != -1)
    {
      swift_once();
    }

    v19 = &qword_1EBDAAE80;
  }

  else
  {
    if (qword_1EBD36B60 != -1)
    {
      swift_once();
    }

    v19 = &qword_1EBDAAE88;
  }

  v20 = *v19;
  sub_1BE048964();
  v21 = a4 + a3 * -0.5;
  v22 = swift_getKeyPath();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v23 = KeyPath;
  *&v61[0] = v41;
  WORD4(v61[0]) = 256;
  *(v61 + 10) = *v92;
  *(&v61[1] + 10) = *&v92[8];
  *(&v61[2] + 10) = *&v92[16];
  *(&v61[3] + 1) = *&v92[23];
  *&v62 = KeyPath;
  v24 = v60;
  v42 = v61[0];
  v43 = v61[1];
  *(&v62 + 1) = v15;
  *&v63 = 0;
  v44 = v61[2];
  v45 = v61[3];
  *(&v63 + 1) = v21;
  v65 = v94;
  v66 = v95;
  v64 = v93;
  v25 = v39;
  *&v67 = v39;
  *(&v67 + 1) = 0x4010000000000000;
  v69 = 0;
  v68 = 0;
  v46 = v62;
  v47 = v63;
  v50 = v95;
  v51 = v67;
  v48 = v93;
  v49 = v94;
  *&v70 = v22;
  *(&v70 + 1) = v20;
  *&v71 = 0;
  *(&v71 + 1) = v21;
  v26 = v59;
  v73 = v59;
  v74 = v60;
  v27 = v58;
  v72 = v58;
  v52 = 0u;
  v53 = v70;
  v56 = v59;
  v57 = v60;
  v54 = v71;
  v55 = v58;
  v28 = v61[3];
  a2[2] = v61[2];
  a2[3] = v28;
  v29 = v43;
  *a2 = v42;
  a2[1] = v29;
  v30 = v49;
  a2[6] = v48;
  a2[7] = v30;
  v31 = v47;
  a2[4] = v46;
  a2[5] = v31;
  v32 = v53;
  a2[10] = v52;
  a2[11] = v32;
  v33 = v51;
  a2[8] = v50;
  a2[9] = v33;
  v34 = v57;
  a2[14] = v56;
  a2[15] = v34;
  v35 = v55;
  a2[12] = v54;
  a2[13] = v35;
  v75[0] = v22;
  v75[1] = v20;
  v75[2] = 0;
  *&v75[3] = v21;
  v76 = v27;
  v77 = v26;
  v78 = v24;
  sub_1BD0DE19C(v61, v79, &qword_1EBD3CDC0, &qword_1BE113A50);
  sub_1BD0DE19C(&v62, v79, &qword_1EBD5D9A0, &qword_1BE113A58);
  sub_1BD0DE19C(&v70, v79, &qword_1EBD5D9A8, &qword_1BE113A60);
  sub_1BD0DE53C(v75, &qword_1EBD5D9A8, &qword_1BE113A60);
  v79[0] = v23;
  v79[1] = v15;
  v79[2] = 0;
  *&v79[3] = v21;
  v80 = v93;
  v81 = v94;
  v82 = v95;
  v83 = v25;
  v84 = 0x4010000000000000;
  v86 = 0;
  v85 = 0;
  sub_1BD0DE53C(v79, &qword_1EBD5D9A0, &qword_1BE113A58);
  v87 = v41;
  v88 = 256;
  v89 = *v92;
  v90 = *&v92[8];
  *v91 = *&v92[16];
  *&v91[14] = *&v92[23];
  return sub_1BD0DE53C(&v87, &qword_1EBD3CDC0, &qword_1BE113A50);
}

uint64_t sub_1BDA8A8FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_1BE04AF64();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_1BDA8A9D8(v2, 0);
  return sub_1BD0DE53C(v2, &unk_1EBD39970, &unk_1BE0B9F80);
}

uint64_t sub_1BDA8A9D8(uint64_t a1, int a2)
{
  LODWORD(v124) = a2;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750, &unk_1BE0D3540);
  MEMORY[0x1EEE9AC00](v118);
  v119 = v109 - v3;
  v4 = type metadata accessor for AccountBalance(0);
  v128 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v113 = v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v126 = v109 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v109 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8, &unk_1BE0C9A60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v109 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v117 = v109 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v125 = v109 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v109 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v115 = v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v122 = v109 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v127 = v109 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v109 - v31;
  v33 = sub_1BE04AF64();
  MEMORY[0x1EEE9AC00](v33);
  v112 = v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v109 - v36;
  v38 = a1;
  v40 = v39;
  v42 = v41;
  sub_1BD0DE19C(v38, v32, &unk_1EBD39970, &unk_1BE0B9F80);
  v116 = *(v40 + 48);
  if (v116(v32, 1, v42) == 1)
  {
    sub_1BD0DE53C(v32, &unk_1EBD39970, &unk_1BE0B9F80);
    (*(v128 + 56))(v16, 1, 1, v4);
    type metadata accessor for SavingsBalanceHistoryView(0);
    sub_1BD0DE19C(v16, v13, &qword_1EBD40EC8, &unk_1BE0C9A60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898, &unk_1BE113860);
    sub_1BE0518F4();
    return sub_1BD0DE53C(v16, &qword_1EBD40EC8, &unk_1BE0C9A60);
  }

  v111 = v40 + 48;
  v120 = v42;
  v121 = v13;
  v123 = v40;
  v44 = *(v40 + 32);
  v109[1] = v40 + 32;
  v109[0] = v44;
  v44(v37, v32, v42);
  v45 = v128;
  v129 = *(v128 + 56);
  v130 = v128 + 56;
  v129(v23, 1, 1, v4);
  KeyPath = swift_getKeyPath();
  v47 = swift_getKeyPath();
  sub_1BE04D8B4(v131);
  KeyPath, v48, v49, v50, v51, v52, v53, v54;
  v47, v55, v56, v57, v58, v59, v60, v61;
  v69 = *(v131[0] + 2);
  v114 = v16;
  if (v69)
  {
    v70 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v110 = v131[0];
    v71 = v131[0] + v70;
    v72 = *(v45 + 72);
    v73 = 0.0;
    do
    {
      sub_1BDA8D41C(v71, v10, type metadata accessor for AccountBalance);
      sub_1BE04ADC4();
      v82 = fabs(v81);
      if (v73 == 0.0 || v82 < v73)
      {
        sub_1BD0DE53C(v23, &qword_1EBD40EC8, &unk_1BE0C9A60);
        sub_1BDA8D270(v10, v23, type metadata accessor for AccountBalance);
        v129(v23, 0, 1, v4);
        v73 = v82;
      }

      else
      {
        sub_1BD0E5E24(v10);
      }

      v71 += v72;
      --v69;
    }

    while (v69);
    v110, v74, v75, v76, v77, v78, v79, v80;
    v45 = v128;
    v16 = v114;
  }

  else
  {
    v131[0], v62, v63, v64, v65, v66, v67, v68;
  }

  v84 = v125;
  sub_1BD0DE19C(v23, v125, &qword_1EBD40EC8, &unk_1BE0C9A60);
  v128 = *(v45 + 48);
  v85 = (v128)(v84, 1, v4);
  v86 = v121;
  v87 = v126;
  v88 = v127;
  if (v85 != 1)
  {
    sub_1BDA8D270(v84, v126, type metadata accessor for AccountBalance);
    if (v124)
    {
      v90 = v123;
      v91 = v120;
      (*(v123 + 16))(v88, v87 + *(v4 + 20), v120);
      v92 = v88;
      v93 = *(v90 + 56);
      v93(v92, 0, 1, v91);
      v94 = *(type metadata accessor for SavingsBalanceHistoryView(0) + 24);
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898, &unk_1BE113860);
      v125 = v94;
      v95 = v117;
      MEMORY[0x1BFB3E970]();
      if ((v128)(v95, 1, v4))
      {
        sub_1BD0DE53C(v95, &qword_1EBD40EC8, &unk_1BE0C9A60);
        v96 = 1;
        v97 = v122;
      }

      else
      {
        v98 = v113;
        sub_1BDA8D41C(v95, v113, type metadata accessor for AccountBalance);
        sub_1BD0DE53C(v95, &qword_1EBD40EC8, &unk_1BE0C9A60);
        v97 = v122;
        (v109[0])(v122, v98 + *(v4 + 20), v91);
        v96 = 0;
      }

      v93(v97, v96, 1, v91);
      v99 = v119;
      v100 = *(v118 + 48);
      v101 = v127;
      sub_1BD0DE19C(v127, v119, &unk_1EBD39970, &unk_1BE0B9F80);
      sub_1BD0DE19C(v97, v99 + v100, &unk_1EBD39970, &unk_1BE0B9F80);
      v102 = v116;
      if (v116(v99, 1, v91) == 1)
      {
        sub_1BD0DE53C(v97, &unk_1EBD39970, &unk_1BE0B9F80);
        sub_1BD0DE53C(v101, &unk_1EBD39970, &unk_1BE0B9F80);
        if (v102(v99 + v100, 1, v91) == 1)
        {
          sub_1BD0DE53C(v99, &unk_1EBD39970, &unk_1BE0B9F80);
          v87 = v126;
          v86 = v121;
LABEL_30:
          v108 = v114;
          v129(v114, 1, 1, v4);
          sub_1BD0DE19C(v108, v86, &qword_1EBD40EC8, &unk_1BE0C9A60);
          sub_1BE0518F4();
          sub_1BD0DE53C(v108, &qword_1EBD40EC8, &unk_1BE0C9A60);
          sub_1BD0E5E24(v87);
          goto LABEL_16;
        }

        goto LABEL_26;
      }

      v103 = v115;
      sub_1BD0DE19C(v99, v115, &unk_1EBD39970, &unk_1BE0B9F80);
      if (v102(v99 + v100, 1, v91) == 1)
      {
        sub_1BD0DE53C(v122, &unk_1EBD39970, &unk_1BE0B9F80);
        sub_1BD0DE53C(v127, &unk_1EBD39970, &unk_1BE0B9F80);
        (*(v123 + 8))(v103, v91);
LABEL_26:
        sub_1BD0DE53C(v99, &qword_1EBD3A750, &unk_1BE0D3540);
        v87 = v126;
        v86 = v121;
        goto LABEL_27;
      }

      v105 = v112;
      (v109[0])(v112, v99 + v100, v91);
      sub_1BDA8E32C(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v106 = sub_1BE052334();
      v107 = *(v123 + 8);
      v107(v105, v91);
      sub_1BD0DE53C(v122, &unk_1EBD39970, &unk_1BE0B9F80);
      sub_1BD0DE53C(v127, &unk_1EBD39970, &unk_1BE0B9F80);
      v107(v115, v91);
      v86 = v121;
      sub_1BD0DE53C(v99, &unk_1EBD39970, &unk_1BE0B9F80);
      v87 = v126;
      if (v106)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v104 = v114;
    sub_1BDA8D41C(v87, v114, type metadata accessor for AccountBalance);
    v129(v104, 0, 1, v4);
    type metadata accessor for SavingsBalanceHistoryView(0);
    sub_1BD0DE19C(v104, v86, &qword_1EBD40EC8, &unk_1BE0C9A60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898, &unk_1BE113860);
    sub_1BE0518F4();
    sub_1BD0DE53C(v104, &qword_1EBD40EC8, &unk_1BE0C9A60);
    sub_1BD0E5E24(v87);
    v89 = v23;
    goto LABEL_28;
  }

  sub_1BD0DE53C(v84, &qword_1EBD40EC8, &unk_1BE0C9A60);
  v129(v16, 1, 1, v4);
  type metadata accessor for SavingsBalanceHistoryView(0);
  sub_1BD0DE19C(v16, v86, &qword_1EBD40EC8, &unk_1BE0C9A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898, &unk_1BE113860);
  sub_1BE0518F4();
  sub_1BD0DE53C(v16, &qword_1EBD40EC8, &unk_1BE0C9A60);
LABEL_16:
  v89 = v23;
LABEL_28:
  sub_1BD0DE53C(v89, &qword_1EBD40EC8, &unk_1BE0C9A60);
  return (*(v123 + 8))(v37, v120);
}

void sub_1BDA8B69C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v115 = a3;
  v112 = a2;
  v113 = a1;
  v108 = a4;
  v4 = sub_1BE04E394();
  v5 = *(v4 - 8);
  v104 = v4;
  v105 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v101 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D9B0, &qword_1BE113A68);
  v8 = *(v7 - 8);
  v106 = v7;
  v107 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v102 = &v80 - v9;
  v10 = type metadata accessor for SavingsBalanceHistoryView(0);
  v99 = *(v10 - 8);
  v116 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v111 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1BE04E6A4();
  v12 = *(v110 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v14 = sub_1BE04D474();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v84 = sub_1BE04F9F4();
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1BE04F484();
  v94 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v82 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D9B8, &qword_1BE113A70);
  MEMORY[0x1EEE9AC00](v100);
  v114 = &v80 - v19;
  v103 = sub_1BE051404();
  v117 = v103;
  v118 = 256;
  v119 = 0;
  sub_1BE04FD14();
  sub_1BE04F474();
  v20 = v15;
  v21 = *(v15 + 16);
  v97 = v15 + 16;
  v98 = v21;
  v22 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v22;
  v86 = v14;
  v21(v22, v112, v14);
  v23 = *(v12 + 16);
  v95 = v12 + 16;
  v96 = v23;
  v109 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v110;
  v23(v109, v113, v110);
  v81 = type metadata accessor for SavingsBalanceHistoryView;
  sub_1BDA8D41C(v115, v111, type metadata accessor for SavingsBalanceHistoryView);
  v25 = *(v20 + 80);
  v26 = v20;
  v27 = (v25 + 16) & ~v25;
  v28 = *(v12 + 80);
  v91 = v27;
  v29 = *(v99 + 80);
  v30 = v13 + v29 + ((v16 + v28 + v27) & ~v28);
  v31 = (v16 + v28 + v27) & ~v28;
  v87 = v31;
  v32 = v30 & ~v29;
  v99 = v29 | v25 | v28;
  v33 = swift_allocObject();
  v34 = *(v26 + 32);
  v92 = v26 + 32;
  v93 = v34;
  v34(&v33[v27], v22, v14);
  v35 = *(v12 + 32);
  v88 = v12 + 32;
  v89 = v35;
  v35(&v33[v31], v109, v24);
  v36 = v111;
  v37 = v81;
  sub_1BDA8D270(v111, &v33[v32], v81);
  sub_1BDA8E32C(&qword_1EBD5D9C0, MEMORY[0x1E697C468], MEMORY[0x1E697C460]);
  v38 = v90;
  v39 = v82;
  sub_1BE0519F4();
  v33, v40, v41, v42, v43, v44, v45, v46;
  (*(v94 + 8))(v39, v38);
  sub_1BE04FD14();
  v47 = v101;
  sub_1BE04E374();
  v48 = v115;
  sub_1BDA8D41C(v115, v36, v37);
  v49 = swift_allocObject();
  sub_1BDA8D270(v36, v49 + ((v29 + 16) & ~v29), v37);
  sub_1BDA8E32C(&qword_1EBD5D9C8, MEMORY[0x1E697BEA8], MEMORY[0x1E697BEA0]);
  v50 = v102;
  v51 = v104;
  sub_1BE0519F4();
  v49, v52, v53, v54, v55, v56, v57, v58;
  (*(v105 + 8))(v47, v51);
  v59 = v85;
  v60 = v86;
  v98(v85, v112, v86);
  v62 = v109;
  v61 = v110;
  v96(v109, v113, v110);
  sub_1BDA8D41C(v48, v36, v37);
  v63 = swift_allocObject();
  v93(&v63[v91], v59, v60);
  v89(&v63[v87], v62, v61);
  sub_1BDA8D270(v36, &v63[v32], v37);
  sub_1BD0DE4F4(&qword_1EBD5D9D0, &qword_1EBD5D9B0, &qword_1BE113A68, MEMORY[0x1E697E238]);
  sub_1BDA8E32C(&qword_1EBD5D9D8, MEMORY[0x1E697BE90], MEMORY[0x1E697BE98]);
  v64 = v114;
  v65 = v106;
  sub_1BE051A04();
  v63, v66, v67, v68, v69, v70, v71, v72;
  (*(v107 + 8))(v50, v65);
  sub_1BE04E3B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D9E0, &qword_1BE113A78);
  sub_1BDA8D9E0();
  sub_1BD0DE4F4(&qword_1EBD5DA00, &qword_1EBD5D9B8, &qword_1BE113A70, MEMORY[0x1E697F820]);
  sub_1BE050FD4();
  sub_1BD0DE53C(v64, &qword_1EBD5D9B8, &qword_1BE113A70);
  v103, v73, v74, v75, v76, v77, v78, v79;
}

void *sub_1BDA8C058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  v10 = sub_1BE04AF64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BE04D464();
  if (result)
  {
    v15 = result;
    type metadata accessor for CGRect(0);
    sub_1BE04E6B4();
    sub_1BE04F464();
    sub_1BE04D434();
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1BD0DE53C(v9, &unk_1EBD39970, &unk_1BE0B9F80);
      (*(v11 + 56))(v6, 1, 1, v10);
      sub_1BDA8A9D8(v6, 0);
      v15, v16, v17, v18, v19, v20, v21, v22;
      return sub_1BD0DE53C(v6, &unk_1EBD39970, &unk_1BE0B9F80);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      (*(v11 + 16))(v6, v13, v10);
      (*(v11 + 56))(v6, 0, 1, v10);
      sub_1BDA8A9D8(v6, 1);
      v15, v23, v24, v25, v26, v27, v28, v29;
      sub_1BD0DE53C(v6, &unk_1EBD39970, &unk_1BE0B9F80);
      return (*(v11 + 8))(v13, v10);
    }
  }

  return result;
}

uint64_t sub_1BDA8C334()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_1BE04AF64();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_1BDA8A9D8(v2, 0);
  return sub_1BD0DE53C(v2, &unk_1EBD39970, &unk_1BE0B9F80);
}

void *sub_1BDA8C410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[0] = a1;
  v33[1] = a4;
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v33 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v33 - v15;
  result = sub_1BE04D464();
  if (result)
  {
    v18 = result;
    type metadata accessor for CGRect(0);
    sub_1BE04E6B4();
    sub_1BE04E384();
    sub_1BE04D434();
    sub_1BD0DE19C(v16, v13, &unk_1EBD39970, &unk_1BE0B9F80);
    if ((*(v5 + 48))(v13, 1, v4) == 1)
    {
      sub_1BD0DE53C(v13, &unk_1EBD39970, &unk_1BE0B9F80);
      (*(v5 + 56))(v10, 1, 1, v4);
      sub_1BDA8A9D8(v10, 0);
      v18, v19, v20, v21, v22, v23, v24, v25;
      sub_1BD0DE53C(v10, &unk_1EBD39970, &unk_1BE0B9F80);
    }

    else
    {
      (*(v5 + 32))(v7, v13, v4);
      (*(v5 + 16))(v10, v7, v4);
      (*(v5 + 56))(v10, 0, 1, v4);
      sub_1BDA8A9D8(v10, 0);
      v18, v26, v27, v28, v29, v30, v31, v32;
      sub_1BD0DE53C(v10, &unk_1EBD39970, &unk_1BE0B9F80);
      (*(v5 + 8))(v7, v4);
    }

    return sub_1BD0DE53C(v16, &unk_1EBD39970, &unk_1BE0B9F80);
  }

  return result;
}

uint64_t sub_1BDA8C73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a1;
  v61 = a3;
  v66 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D970, &qword_1BE1139B0);
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v56 - v6;
  v57 = sub_1BE04EB44();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  v12 = sub_1BE04AF64();
  v62 = *(v12 - 8);
  v63 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8, &unk_1BE0C9A60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v56 - v16;
  v18 = type metadata accessor for AccountBalance(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SavingsBalanceHistoryView(0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898, &unk_1BE113860);
  v59 = a2;
  MEMORY[0x1BFB3E970](v22);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1BD0DE53C(v17, &qword_1EBD40EC8, &unk_1BE0C9A60);
LABEL_13:
    v54 = 1;
    v53 = v65;
    v41 = v66;
    return (*(v64 + 56))(v41, v54, 1, v53);
  }

  sub_1BDA8D270(v17, v21, type metadata accessor for AccountBalance);
  v23 = sub_1BE04D464();
  if (!v23)
  {
    sub_1BD0E5E24(v21);
    goto LABEL_13;
  }

  v24 = v23;
  type metadata accessor for CGRect(0);
  sub_1BE04E6B4();
  v25 = v67;
  v26 = v68;
  v27 = v69;
  v28 = v70;
  (*(v62 + 16))(v14, v21 + *(v18 + 20), v63);
  v67 = *v21;
  v29 = COERCE_DOUBLE(sub_1BE04D454());
  if (v30)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v29;
  }

  v32 = COERCE_DOUBLE(sub_1BE04D444());
  if (v33)
  {
    v32 = 0.0;
  }

  v34 = v25 + v32;
  v71.origin.x = v25;
  v71.origin.y = v26;
  v71.size.width = v27;
  v71.size.height = v28;
  MaxY = CGRectGetMaxY(v71);
  sub_1BD70A548(v11);
  v36 = v56;
  v37 = v57;
  (*(v56 + 104))(v8, *MEMORY[0x1E697E7D8], v57);
  v38 = sub_1BE04EB34();
  v39 = *(v36 + 8);
  v39(v8, v37);
  v39(v11, v37);
  if (v38)
  {
    sub_1BE04E684();
    v34 = v40 - v34;
  }

  v41 = v66;
  v72.origin.x = v25;
  v72.origin.y = v26;
  v72.size.width = v27;
  v72.size.height = v28;
  Height = CGRectGetHeight(v72);
  v43 = v58;
  sub_1BDA8A018(v58, Height, v31);
  v24, v44, v45, v46, v47, v48, v49, v50;
  (*(v62 + 8))(v14, v63);
  sub_1BD0E5E24(v21);
  v51 = v65;
  v52 = (v43 + *(v65 + 36));
  *v52 = v34;
  v52[1] = MaxY * 0.5;
  sub_1BD0DE204(v43, v41, &qword_1EBD5D970, &qword_1BE1139B0);
  v53 = v51;
  v54 = 0;
  return (*(v64 + 56))(v41, v54, 1, v53);
}

void sub_1BDA8CCBC(uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8B8, &qword_1BE1138E8);
  sub_1BDA85400(v2, a2 + *(v4 + 44));
}

unint64_t sub_1BDA8CD18()
{
  result = qword_1EBD5D900;
  if (!qword_1EBD5D900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D8F8, &qword_1BE113928);
    sub_1BDA8CD9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D900);
  }

  return result;
}

unint64_t sub_1BDA8CD9C()
{
  result = qword_1EBD5D908;
  if (!qword_1EBD5D908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D910, &qword_1BE113930);
    sub_1BE04D6E4();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D918, &qword_1BE113938);
    sub_1BE04D754();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D908);
  }

  return result;
}

unint64_t sub_1BDA8CF14()
{
  result = qword_1EBD5D930;
  if (!qword_1EBD5D930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D8C8, &qword_1BE1138F8);
    sub_1BD0DE4F4(&qword_1EBD5D920, &qword_1EBD5D8C0, &qword_1BE1138F0, MEMORY[0x1E695B218]);
    sub_1BDA8E32C(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D930);
  }

  return result;
}

uint64_t sub_1BDA8D004(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1BDA8D06C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v5 = *(type metadata accessor for SavingsBalanceHistoryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BDA86FB4(a1, v6, a2);
}

uint64_t sub_1BDA8D16C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  v7 = *(a2(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(a3(0) - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return a4(a1, v4 + v8, v11);
}

uint64_t sub_1BDA8D270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BDA8D2D8()
{
  type metadata accessor for SavingsBalanceHistoryView(0);

  return sub_1BDA8A8FC();
}

unint64_t sub_1BDA8D338()
{
  result = qword_1EBD5D988;
  if (!qword_1EBD5D988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D980, &qword_1BE1139C0);
    sub_1BD0DE4F4(&qword_1EBD5D990, &qword_1EBD5D998, &unk_1BE1139C8, MEMORY[0x1E6981880]);
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8, &qword_1BE0DC350, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D988);
  }

  return result;
}

uint64_t sub_1BDA8D41C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BDA8D49C()
{
  type metadata accessor for SavingsBalanceHistoryView(0);

  return sub_1BDA8C334();
}

uint64_t objectdestroy_30Tm_1()
{
  v1 = sub_1BE04D474();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1BE04E6A4();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for SavingsBalanceHistoryView(0);
  v10 = (v7 + v8 + *(*(v9 - 1) + 80)) & ~*(*(v9 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v11 = v0 + v10;

  *(v0 + v10 + 24), v12, v13, v14, v15, v16, v17, v18;
  v19 = (v0 + v10 + v9[6]);
  *v19, v20, v21, v22, v23, v24, v25, v26;
  v19[1], v27, v28, v29, v30, v31, v32, v33;
  v34 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898, &unk_1BE113860) + 32);
  v35 = type metadata accessor for AccountBalance(0);
  if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
  {
    v36 = *(v35 + 20);
    v37 = sub_1BE04AF64();
    (*(*(v37 - 8) + 8))(&v34[v36], v37);
  }

  v38 = v9[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = sub_1BE04E354();
    (*(*(v46 - 8) + 8))(v11 + v38, v46);
  }

  else
  {
    *(v11 + v38), v39, v40, v41, v42, v43, v44, v45;
  }

  v47 = v9[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8, &qword_1BE0E2E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = sub_1BE04EB44();
    (*(*(v55 - 8) + 8))(v11 + v47, v55);
  }

  else
  {
    *(v11 + v47), v48, v49, v50, v51, v52, v53, v54;
  }

  return swift_deallocObject();
}

uint64_t sub_1BDA8D894(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_1BE04D474() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1BE04E6A4() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for SavingsBalanceHistoryView(0) - 8);
  v11 = v2 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return a2(a1, v2 + v5, v2 + v8, v11);
}

unint64_t sub_1BDA8D9E0()
{
  result = qword_1EBD5D9E8;
  if (!qword_1EBD5D9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D9E0, &qword_1BE113A78);
    sub_1BD0DE4F4(&qword_1EBD5D9F0, &qword_1EBD5D9F8, &qword_1BE113A80, MEMORY[0x1E697DB78]);
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8, &qword_1BE0DC350, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D9E8);
  }

  return result;
}

void sub_1BDA8DAC4(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SavingsBalanceHistoryView(0) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BDA8894C(v4, a1);
}

unint64_t sub_1BDA8DB70()
{
  result = qword_1EBD5DA10;
  if (!qword_1EBD5DA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DA08, &qword_1BE113A88);
    sub_1BDA8DC40();
    sub_1BE04D494();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DA10);
  }

  return result;
}

unint64_t sub_1BDA8DC40()
{
  result = qword_1EBD5DA18;
  if (!qword_1EBD5DA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DA20, &qword_1BE113A90);
    sub_1BE04D494();
    swift_getOpaqueTypeConformance2();
    sub_1BDA8DD18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DA18);
  }

  return result;
}

unint64_t sub_1BDA8DD18()
{
  result = qword_1EBD5DA28;
  if (!qword_1EBD5DA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DA30, &qword_1BE113A98);
    sub_1BD0DE4F4(&qword_1EBD4B3B0, &qword_1EBD4B3B8, &qword_1BE113AA0, MEMORY[0x1E695B160]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DA28);
  }

  return result;
}

uint64_t sub_1BDA8DDC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA30, &qword_1BE113A98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1BDA8DE44@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SavingsBalanceHistoryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1BDA89478(a1, v6, a2);
}

unint64_t sub_1BDA8DEC8()
{
  result = qword_1EBD5DA50;
  if (!qword_1EBD5DA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DA48, &qword_1BE113AC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DA58, &qword_1BE113AC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DA60, &qword_1BE113AD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DA68, &qword_1BE113AD8);
    sub_1BD0DE4F4(&qword_1EBD5DA70, &qword_1EBD5DA68, &qword_1BE113AD8, MEMORY[0x1E695B160]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DA50);
  }

  return result;
}

uint64_t objectdestroyTm_128()
{
  v1 = type metadata accessor for SavingsBalanceHistoryView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  *(v2 + 24), v3, v4, v5, v6, v7, v8, v9;
  v10 = (v2 + v1[6]);
  *v10, v11, v12, v13, v14, v15, v16, v17;
  v10[1], v18, v19, v20, v21, v22, v23, v24;
  v25 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898, &unk_1BE113860) + 32);
  v26 = type metadata accessor for AccountBalance(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = *(v26 + 20);
    v28 = sub_1BE04AF64();
    (*(*(v28 - 8) + 8))(&v25[v27], v28);
  }

  v29 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = sub_1BE04E354();
    (*(*(v37 - 8) + 8))(v2 + v29, v37);
  }

  else
  {
    *(v2 + v29), v30, v31, v32, v33, v34, v35, v36;
  }

  v38 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8, &qword_1BE0E2E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = sub_1BE04EB44();
    (*(*(v46 - 8) + 8))(v2 + v38, v46);
  }

  else
  {
    *(v2 + v38), v39, v40, v41, v42, v43, v44, v45;
  }

  return swift_deallocObject();
}

void sub_1BDA8E2AC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SavingsBalanceHistoryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BDA87990(a1, v6, a2);
}

uint64_t sub_1BDA8E32C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1BDA8E41C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F00, &qword_1BE0CC620);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v240 - v5;
  v245 = sub_1BE04F824();
  v243 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v8 = &v240 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v240 - v11;
  v13 = [a1 imageName];
  sub_1BE052434();

  v14 = sub_1BE050354();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v242 = sub_1BE0503B4();
  sub_1BD0DE53C(v12, &qword_1EBD49130, &qword_1BE0C7180);
  v15 = [a1 style];
  v244 = a2;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      if (v15 == 3)
      {
        sub_1BE04F7F4();
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    sub_1BE04F814();
  }

  else
  {
    if (v15)
    {
LABEL_7:
      sub_1BE04F7E4();
      goto LABEL_10;
    }

    sub_1BE04F804();
  }

LABEL_10:
  v16 = [a1 color1];
  if (v16)
  {
    v17 = v16;
    sub_1BDA8EFA4();
    v19 = v18;

    v20 = [a1 color2];
    if (v20)
    {
      v28 = v20;
      sub_1BDA8EFA4();
      v30 = v29;

      v31 = [a1 color3];
      if (v31)
      {
        v39 = v31;
        sub_1BDA8EFA4();
        v41 = v40;

        v42 = sub_1BE051574();
        v43 = v243;
        v44 = *(v243 + 16);
        v241 = v8;
        v45 = v8;
        v46 = v245;
        v44(v6, v45, v245);
        (*(v43 + 56))(v6, 0, 1, v46);
        v47 = sub_1BE0515B4();
        v42, v48, v49, v50, v51, v52, v53, v54;
        sub_1BD0DE53C(v6, &qword_1EBD41F00, &qword_1BE0CC620);
        KeyPath = swift_getKeyPath();
        *&v246 = v47;
        *(&v246 + 1) = KeyPath;
        v56 = v242;
        *&v247 = v242;
        *(&v247 + 1) = v19;
        *&v248 = v30;
        *(&v248 + 1) = v41;
        LOBYTE(v249) = 0;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E28, &qword_1BE0D0F08);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E48, &unk_1BE0D0F18);
        sub_1BD3A3050();
        sub_1BD3A3108();
        sub_1BE04F9A4();
        LOBYTE(v251) = v253[16];
        v252 = 0;
        *&v253[16] = v253[16];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E18, &qword_1BE0D0F00);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E58, &qword_1BE0D0F28);
        sub_1BD3A2FC4();
        sub_1BD3A31C0();
        sub_1BE04F9A4();
        v41, v57, v58, v59, v60, v61, v62, v63;
        v30, v64, v65, v66, v67, v68, v69, v70;
        v19, v71, v72, v73, v74, v75, v76, v77;
        v56, v78, v79, v80, v81, v82, v83, v84;
        KeyPath, v85, v86, v87, v88, v89, v90, v91;
        v47, v92, v93, v94, v95, v96, v97, v98;
        (*(v43 + 8))(v241, v245);
        goto LABEL_24;
      }

      v19, v32, v33, v34, v35, v36, v37, v38;
    }

    else
    {
      v30 = v19;
    }

    v30, v21, v22, v23, v24, v25, v26, v27;
  }

  v99 = [a1 color1];
  if (v99)
  {
    v100 = v99;
    sub_1BDA8EFA4();
    v102 = v101;

    v103 = [a1 color2];
    if (v103)
    {
      v111 = v103;
      sub_1BDA8EFA4();
      v113 = v112;

      v114 = sub_1BE051574();
      v115 = v243;
      v116 = *(v243 + 16);
      v241 = v8;
      v117 = v245;
      v116(v6, v8, v245);
      (*(v115 + 56))(v6, 0, 1, v117);
      v118 = sub_1BE0515B4();
      v114, v119, v120, v121, v122, v123, v124, v125;
      sub_1BD0DE53C(v6, &qword_1EBD41F00, &qword_1BE0CC620);
      v126 = swift_getKeyPath();
      *&v246 = v118;
      *(&v246 + 1) = v126;
      v127 = v242;
      *&v247 = v242;
      *(&v247 + 1) = v102;
      v248 = v113;
      LOBYTE(v249) = 1;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E28, &qword_1BE0D0F08);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E48, &unk_1BE0D0F18);
      sub_1BD3A3050();
      sub_1BD3A3108();
      sub_1BE04F9A4();
      LOBYTE(v251) = v253[16];
      v252 = 0;
      *&v253[16] = v253[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E18, &qword_1BE0D0F00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E58, &qword_1BE0D0F28);
      sub_1BD3A2FC4();
      sub_1BD3A31C0();
      sub_1BE04F9A4();
      v113, v128, v129, v130, v131, v132, v133, v134;
      v102, v135, v136, v137, v138, v139, v140, v141;
      v127, v142, v143, v144, v145, v146, v147, v148;
      v126, v149, v150, v151, v152, v153, v154, v155;
      v118, v156, v157, v158, v159, v160, v161, v162;
      (*(v115 + 8))(v241, v117);
      goto LABEL_24;
    }

    v102, v104, v105, v106, v107, v108, v109, v110;
  }

  v163 = [a1 color1];
  if (v163)
  {
    v164 = v163;
    sub_1BDA8EFA4();
    v166 = v165;

    v167 = sub_1BE051574();
    v168 = v243;
    v169 = v245;
    (*(v243 + 16))(v6, v8, v245);
    (*(v168 + 56))(v6, 0, 1, v169);
    v170 = sub_1BE0515B4();
    v167, v171, v172, v173, v174, v175, v176, v177;
    sub_1BD0DE53C(v6, &qword_1EBD41F00, &qword_1BE0CC620);
    v178 = swift_getKeyPath();
    *&v246 = v170;
    *(&v246 + 1) = v178;
    v179 = v242;
    *&v247 = v242;
    *(&v247 + 1) = v166;
    LOBYTE(v248) = 0;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E68, &unk_1BE0D0F30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E78, &unk_1BE0D0F40);
    sub_1BD3A324C();
    sub_1BD3A3304();
    sub_1BE04F9A4();
    v252 = v253[0];
    v250 = 1;
    *&v253[1] = v251;
    v253[17] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E18, &qword_1BE0D0F00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E58, &qword_1BE0D0F28);
    sub_1BD3A2FC4();
    sub_1BD3A31C0();
    sub_1BE04F9A4();
    v166, v180, v181, v182, v183, v184, v185, v186;
    v179, v187, v188, v189, v190, v191, v192, v193;
    v178, v194, v195, v196, v197, v198, v199, v200;
    v170, v201, v202, v203, v204, v205, v206, v207;
    (*(v168 + 8))(v8, v169);
  }

  else
  {
    v208 = sub_1BE051574();
    v209 = v243;
    v210 = v245;
    (*(v243 + 16))(v6, v8, v245);
    (*(v209 + 56))(v6, 0, 1, v210);
    v211 = sub_1BE0515B4();
    v208, v212, v213, v214, v215, v216, v217, v218;
    sub_1BD0DE53C(v6, &qword_1EBD41F00, &qword_1BE0CC620);
    v219 = swift_getKeyPath();
    v220 = v242;
    sub_1BE048964();
    v221 = sub_1BE04FC74();
    *&v246 = v211;
    *(&v246 + 1) = v219;
    *&v247 = v220;
    *(&v247 + 1) = v221;
    LOBYTE(v248) = 1;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E68, &unk_1BE0D0F30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E78, &unk_1BE0D0F40);
    sub_1BD3A324C();
    sub_1BD3A3304();
    sub_1BE04F9A4();
    v252 = v253[0];
    v250 = 1;
    *&v253[1] = v251;
    v253[17] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E18, &qword_1BE0D0F00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E58, &qword_1BE0D0F28);
    sub_1BD3A2FC4();
    sub_1BD3A31C0();
    sub_1BE04F9A4();
    v219, v222, v223, v224, v225, v226, v227, v228;
    v211, v229, v230, v231, v232, v233, v234, v235;

    (*(v209 + 8))(v8, v210);
  }

LABEL_24:
  *v253 = v248;
  v236 = v249;
  v237 = v247;
  v238 = v244;
  *v244 = v246;
  v238[1] = v237;
  result = *v253;
  v238[2] = *v253;
  *(v238 + 24) = v236;
  return result;
}

void sub_1BDA8EFA4()
{
  v1 = [v0 type];
  if (v1 == 1)
  {
    v5 = [v0 builtInColor];
    if (v5 > 1)
    {
      if (v5 == 2)
      {

        sub_1BE051244();
        return;
      }

      if (v5 == 3)
      {
        v6 = [objc_opt_self() quaternaryLabelColor];

        goto LABEL_7;
      }
    }

    else if (v5 == 1)
    {

      sub_1BE051494();
      return;
    }

LABEL_18:

    sub_1BE051464();
    return;
  }

  if (v1)
  {
    goto LABEL_18;
  }

  v2 = [v0 hexString];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = v2;
  v4 = [objc_opt_self() pkui:v2 colorWithHexString:?];

  if (v4)
  {

LABEL_7:
    sub_1BE0511C4();
    return;
  }

  __break(1u);
}

void sub_1BDA8F118(void *a1)
{
  v2 = v1;
  v4 = sub_1BE052404();
  [a1 setText_];

  if ((*(v2 + 16) & 1) == 0)
  {
    [a1 setTextAlignment_];
  }

  if (*(v2 + 40))
  {
    [a1 setTextFont_];
  }

  v5 = *(v2 + 48);
  if (v5)
  {
    sub_1BD0E5E8C(0, &qword_1EBD43100, 0x1E69DC888);
    swift_retain_n();
    v6 = sub_1BE052FE4();
    [a1 setTextColor_];
    v5, v7, v8, v9, v10, v11, v12, v13;
  }

  sub_1BD0E5E8C(0, &qword_1EBD43EA8, off_1E8006508);
  v14 = sub_1BE052724();
  [a1 setSources_];
}

void sub_1BDA8F250(void *a1, void *a2, void (*a3)(id, uint64_t, void *), void *a4, void (*a5)(char *), void *a6)
{
  v12 = sub_1BE04AA64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v63 - v18;
  v20 = [a1 termsIdentifier];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1BE052434();
    v24 = v23;

    if (a2 && a3)
    {
      v64 = a2;
      sub_1BD0D44B8(a3, a4);
      a3(v64, v22, v24);
      v24, v32, v33, v34, v35, v36, v37, v38;
      sub_1BD0D4744(a3, a4, v39, v40, v41, v42, v43, v44);
      v45 = v64;
    }

    else
    {

      v24, v25, v26, v27, v28, v29, v30, v31;
    }
  }

  else
  {
    v46 = [a1 linkURL];
    if (v46)
    {
      v47 = v46;
      sub_1BE04A9F4();

      (*(v13 + 32))(v19, v15, v12);
      if (a5)
      {
        sub_1BE048964();
        v48 = sub_1BE04A9C4();
        v49 = PKIsURLHttpScheme();

        if ((v49 & 1) == 0 || [a1 behavior] == 1)
        {
          v56 = sub_1BE04A9C4();
          PKOpenURL();
          sub_1BD0D4744(a5, a6, v57, v58, v59, v60, v61, v62);
        }

        else
        {
          a5(v19);
          sub_1BD0D4744(a5, a6, v50, v51, v52, v53, v54, v55);
        }
      }

      (*(v13 + 8))(v19, v12);
    }
  }
}

id sub_1BDA8F520()
{
  v0 = [objc_allocWithZone(PKMultiHyperlinkView) init];
  [v0 setAccessibilityIdentifier_];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 clearColor];
  [v2 setBackgroundColor_];

  return v2;
}

id sub_1BDA8F5C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1BE052404();
  [a3 setText_];

  result = [a3 systemLayoutSizeFittingSize_];
  *a1 = v7;
  *(a1 + 8) = v8;
  return result;
}

uint64_t sub_1BDA8F638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BDA8F72C();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BDA8F69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BDA8F72C();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BDA8F700(uint64_t a1)
{
  sub_1BDA8F72C();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BDA8F72C()
{
  result = qword_1EBD5DAB8;
  if (!qword_1EBD5DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DAB8);
  }

  return result;
}

id sub_1BDA8F780(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
  *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_provisionedPasses] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_identifier];
  *v6 = 0xD000000000000014;
  *(v6 + 1) = 0x80000001BE1499C0;
  *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_configuration] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_1BDA8F920()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v364 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = sub_1BE04BD74();
  v380 = *(v379 - 8);
  MEMORY[0x1EEE9AC00](v379);
  v371 = &v364 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v372 = &v364 - v8;
  v378 = sub_1BE04B8D4();
  v377 = *(v378 - 1);
  MEMORY[0x1EEE9AC00](v378);
  v376 = &v364 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v375 = &v364 - v11;
  v12 = sub_1BE04B944();
  v382 = *(v12 - 1);
  v383 = v12;
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = &v364 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04C384();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v364 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v364 - v19;
  v21 = *&v0[OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_configuration];
  v22 = sub_1BE04C3A4();
  if (!v22[2])
  {
    v22, v23, v24, v25, v26, v27, v28, v29;
    return;
  }

  v30 = v22;
  (*(v15 + 16))(v17, v22 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v14);
  v30, v31, v32, v33, v34, v35, v36, v37;
  (*(v15 + 32))(v20, v17, v14);
  v38 = sub_1BE04C2E4();
  if (!v38)
  {
    (*(v15 + 8))(v20, v14);
    return;
  }

  v373 = v21;
  v365 = v15;
  v366 = v14;
  v374 = v1;
  v390 = MEMORY[0x1E69E7CC0];
  v369 = v38;
  v39 = [v38 _effectiveDetails];
  sub_1BD0E5E8C(0, &qword_1EBD5DAF0, 0x1E69B8970);
  v40 = sub_1BE052744();

  v364 = v20;
  v368 = v2;
  v367 = v3;
  v370 = v5;
  if (v40 >> 62)
  {
    v48 = sub_1BE053704();
    if (!v48)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v48 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v48)
    {
      goto LABEL_18;
    }
  }

  v49 = objc_opt_self();
  if (v48 < 1)
  {
    __break(1u);
    goto LABEL_65;
  }

  v50 = v49;
  v51 = 0;
  do
  {
    if ((v40 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x1BFB40900](v51, v40);
    }

    else
    {
      v54 = *(v40 + 8 * v51 + 32);
    }

    v55 = v54;
    v56 = [v54 label];
    if (!v56)
    {
      sub_1BE052434();
      v58 = v57;
      v56 = sub_1BE052404();
      v58, v59, v60, v61, v62, v63, v64, v65;
    }

    v66 = [v55 value];
    if (!v66)
    {
      sub_1BE052434();
      v68 = v67;
      v66 = sub_1BE052404();
      v68, v69, v70, v71, v72, v73, v74, v75;
    }

    ++v51;
    v52 = [v50 readOnlyPaymentSetupFieldWithDisplayName:v56 value:v66];

    v385 = v52;
    v53 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AC0, &qword_1BE0D5160);
    sub_1BE052754();
  }

  while (v48 != v51);
LABEL_18:
  v40, v41, v42, v43, v44, v45, v46, v47;
  v76 = v369;
  v77 = [v369 style];
  v78 = v374;
  v79 = v370;
  if (v77 != 1)
  {
    v80 = [v76 paymentNetwork];
    if (!v80)
    {
      goto LABEL_32;
    }

    v88 = v80;
    v89 = sub_1BE052434();
    v91 = v90;
    v92 = sub_1BE052434();
    v94 = v93;
    if (v89 == v92 && v91 == v93)
    {

      v91, v95, v96, v97, v98, v99, v100, v101;
      v94, v102, v103, v104, v105, v106, v107, v108;
    }

    else
    {
      v109 = sub_1BE053B84();

      v91, v110, v111, v112, v113, v114, v115, v116;
      v94, v117, v118, v119, v120, v121, v122, v123;
      if ((v109 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  v124 = KeyPath;
  sub_1BE04BB94();
  v125 = v375;
  sub_1BE04B924();
  v382[1](v124, v383);
  v126 = v377;
  v127 = v376;
  v128 = v378;
  (*(v377 + 104))(v376, *MEMORY[0x1E69B7F80], v378);
  LOBYTE(v124) = sub_1BE04B8C4();
  v129 = *(v126 + 8);
  v129(v127, v128);
  v129(v125, v128);
  v130 = *MEMORY[0x1E69B80D8];
  v131 = v380[13];
  if (v124)
  {
    v132 = v372;
    v133 = v379;
    v131(v372, v130, v379);
    v134 = PKPassKitBundle();
    if (!v134)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v135 = v134;
  }

  else
  {
    v132 = v371;
    v133 = v379;
    v131(v371, v130, v379);
    v136 = PKPassKitBundle();
    if (!v136)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v135 = v136;
  }

  sub_1BE04B6F4();
  v138 = v137;

  (v380[1])(v132, v133);
  v139 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v140 = sub_1BE052404();
  v138, v141, v142, v143, v144, v145, v146, v147;
  v148 = [v139 initWithString_];

  v149 = objc_allocWithZone(MEMORY[0x1E69B8E28]);
  v150 = sub_1BE052404();
  v151 = [v149 initWithIdentifier:v150 body:v148];

  [v151 setPosition_];
  v152 = v151;
  MEMORY[0x1BFB3F7A0]();
  if (*((v390 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v390 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();

LABEL_32:
  v153 = v390;
  v154 = sub_1BD3F0574(v390, v81, v82, v83, v84, v85, v86, v87);
  v153, v155, v156, v157, v158, v159, v160, v161;
  v162 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
  v163 = sub_1BE052724();
  v154, v164, v165, v166, v167, v168, v169, v170;
  v171 = [v162 initWithPaymentSetupFields_];

  v172 = *&v78[OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_context];
  v173 = v76;
  v174 = v171;
  v175 = sub_1BE04C3C4();
  v176 = v175[2];
  v175, v177, v178, v179, v180, v181, v182, v183;
  LOBYTE(v154) = v176 > 1;
  v184 = type metadata accessor for ProvisioningAddPaymentPassViewController();
  v185 = objc_allocWithZone(v184);
  *&v185[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_coordinator] = 0;
  *&v185[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_provisioningContext] = v172;
  *&v185[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_configuration] = v173;
  v185[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_hasMultipleDestinationDevices] = v154;
  sub_1BE052434();
  v187 = v186;
  v188 = v173;
  sub_1BE048964();
  v189 = sub_1BE04BB74();
  v187, v190, v191, v192, v193, v194, v195, v196;
  *&v185[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_reporter] = v189;
  v197 = KeyPath;
  sub_1BE04BB94();
  v198 = sub_1BE04B8E4();
  v382[1](v197, v383);
  sub_1BE04BC34();
  v199 = sub_1BE04B9A4();
  (*(v367 + 8))(v79, v368);
  v389.receiver = v185;
  v389.super_class = v184;
  v200 = objc_msgSendSuper2(&v389, sel_initWithWebService_context_setupDelegate_setupFieldsModel_, v198, v199, 0, v174);

  v383 = v200;
  if (!v200)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v380 = v174;

  v382 = v188;
  KeyPath = swift_getKeyPath();
  v386 = sub_1BD187098(v78, KeyPath) & 1;
  v387 = v201;
  v388 = v202;
  v379 = v172;
  sub_1BD4F8958();
  v203 = v387;
  if (!*(v387 + 16))
  {
    goto LABEL_41;
  }

  sub_1BE053D04();
  sub_1BE052524();
  v204 = sub_1BE053D64();
  v212 = -1 << *(v203 + 32);
  v213 = v204 & ~v212;
  if (((*(v203 + 56 + ((v213 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v213) & 1) == 0)
  {
    goto LABEL_41;
  }

  v214 = ~v212;
  while (1)
  {
    v215 = *(*(v203 + 48) + v213);
    v216 = 0xEE00415049506165;
    if (v215 == 1)
    {
      goto LABEL_39;
    }

    if (v215 != 2)
    {
      break;
    }

    v216 = 0x80000001BE117610;
LABEL_39:
    v217 = sub_1BE053B84();
    v216, v218, v219, v220, v221, v222, v223, v224;
    if (v217)
    {
      goto LABEL_44;
    }

    v213 = (v213 + 1) & v214;
    if (((*(v203 + 56 + ((v213 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v213) & 1) == 0)
    {
LABEL_41:
      v225 = v386;
      v226 = v388;
      v227 = v374;
      v228 = KeyPath;
      sub_1BD12F64C(v225, v203, v226, v227, KeyPath);
      v226, v229, v230, v231, v232, v233, v234, v235;
      v203, v236, v237, v238, v239, v240, v241, v242;

      v228, v243, v244, v245, v246, v247, v248, v249;
      v250 = v366;
      v251 = v382;
      goto LABEL_42;
    }
  }

  0xE400000000000000, v205, v206, v207, v208, v209, v210, v211;
LABEL_44:
  v260 = v388;
  if (v388[2])
  {
    sub_1BE053D04();
    sub_1BE052524();
    v261 = sub_1BE053D64();
    v269 = -1 << *(v260 + 32);
    v270 = v261 & ~v269;
    if ((*(v260 + 56 + ((v270 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v270))
    {
      v271 = ~v269;
      do
      {
        v272 = *(*(v260 + 48) + v270);
        v273 = 0xEE00415049506165;
        if (v272 != 1)
        {
          if (v272 != 2)
          {
            0xE400000000000000, v262, v263, v264, v265, v266, v267, v268;
            goto LABEL_41;
          }

          v273 = 0x80000001BE117610;
        }

        v274 = sub_1BE053B84();
        v273, v275, v276, v277, v278, v279, v280, v281;
        if (v274)
        {
          goto LABEL_41;
        }

        v270 = (v270 + 1) & v271;
      }

      while (((*(v260 + 56 + ((v270 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v270) & 1) != 0);
    }
  }

  v282 = v386;
  v283 = v374;
  v284 = v282;
  v285 = KeyPath;
  sub_1BD12F64C(v284, v203, v260, v283, KeyPath);
  v260, v286, v287, v288, v289, v290, v291, v292;
  v203, v293, v294, v295, v296, v297, v298, v299;

  v285, v300, v301, v302, v303, v304, v305, v306;
  KeyPath = swift_getKeyPath();
  LODWORD(v377) = sub_1BD187098(v283, KeyPath);
  v378 = v307;
  v309 = v308;
  sub_1BE053D04();
  sub_1BE052524();
  v310 = sub_1BE053D64();
  v318 = -1 << *(v309 + 32);
  v319 = v310 & ~v318;
  if (((*(v309 + 56 + ((v319 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v319) & 1) == 0)
  {
LABEL_59:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v385 = v309;
    sub_1BD2A9690(0, v319, isUniquelyReferenced_nonNull_native, v332, v333, v334, v335, v336);
    v309 = v385;
    goto LABEL_60;
  }

  v320 = ~v318;
  while (2)
  {
    v321 = *(*(v309 + 48) + v319);
    v322 = 0xEE00415049506165;
    if (v321 == 1)
    {
LABEL_57:
      v323 = sub_1BE053B84();
      v322, v324, v325, v326, v327, v328, v329, v330;
      if (v323)
      {
        goto LABEL_60;
      }

      v319 = (v319 + 1) & v320;
      if (((*(v309 + 56 + ((v319 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v319) & 1) == 0)
      {
        goto LABEL_59;
      }

      continue;
    }

    break;
  }

  if (v321 == 2)
  {
    v322 = 0x80000001BE117610;
    goto LABEL_57;
  }

  0xE400000000000000, v311, v312, v313, v314, v315, v316, v317;
LABEL_60:
  v337 = v283;
  v338 = v378;
  v339 = KeyPath;
  sub_1BD12F64C(v377 & 1, v378, v309, v337, KeyPath);
  v309, v340, v341, v342, v343, v344, v345, v346;
  v338, v347, v348, v349, v350, v351, v352, v353;

  v339, v354, v355, v356, v357, v358, v359, v360;
  v361 = [v383 dockView];
  v251 = v382;
  if (!v361)
  {
LABEL_68:
    __break(1u);
    return;
  }

  v362 = v361;
  v363 = [objc_opt_self() pk:9 privacyLinkForContext:?];
  [v362 setPrivacyLink_];

  v250 = v366;
LABEL_42:
  v252 = type metadata accessor for ProvisioningUICoordinator();
  v253 = objc_allocWithZone(v252);
  *&v253[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v253[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v254 = &v253[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
  *&v253[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v253[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex] = 0;
  *&v253[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = MEMORY[0x1E69E7CC0];
  *&v253[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer] = 0;
  *&v253[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = 0;
  v253[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements] = 0;
  *&v253[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;
  *&v253[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = 0;
  *&v253[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion] = 0;
  *&v253[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle] = 0;
  *&v253[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter] = 0;
  *&v253[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context] = v379;
  *&v253[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration] = v373;
  v255 = v383;
  swift_unknownObjectWeakAssign();
  *(v254 + 1) = &off_1F3BAED88;
  swift_unknownObjectWeakAssign();
  v253[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_previouslyAcceptedTerms] = 0;
  v256 = v255;
  sub_1BE048964();
  v257 = v256;
  sub_1BE048964();
  *&v253[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter] = sub_1BE04BBB4();
  v384.receiver = v253;
  v384.super_class = v252;
  v258 = objc_msgSendSuper2(&v384, sel_init);

  (*(v365 + 8))(v364, v250);
  *&v258[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = &off_1F3BCFCE0;
  swift_unknownObjectWeakAssign();
  v259 = *&v257[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_coordinator];
  *&v257[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_coordinator] = v258;
}

uint64_t sub_1BDA90B4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BDA90B88(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BDA90BE4(void *a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v14[0] = a1;
    sub_1BD0E5E8C(0, qword_1EBD45AD0, 0x1E69B90E8);
    sub_1BD412688();
    swift_willThrowTypedImpl();
    v4 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:2 userInfo:0];
    v5 = 1;
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_provisionedPasses);
    *(v2 + OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_provisionedPasses) = a1;
    v7 = a1;

    v4 = sub_1BE04BD44();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E70, &unk_1BE0D6840);
    v5 = 0;
    v14[3] = v8;
  }

  v14[0] = v4;
  v15 = v5;
  v9 = v3 + OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD39F614(v14, v13);
    sub_1BD865A00(v3, &off_1F3BCFCF0, v13, ObjectType, v10);
    swift_unknownObjectRelease();
    sub_1BD12FF7C(v13);
  }

  return sub_1BD39F670(v14);
}

uint64_t sub_1BDA90D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v44 = a5;
  v5 = sub_1BE04F714();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DAF8, &qword_1BE113E08);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - v8;
  v35 = sub_1BE050274();
  v10 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v11 = sub_1BE04F754();
  v12 = *(v11 - 8);
  v38 = v11;
  v39 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE0518C4();
  v36 = *(v15 - 8);
  v37 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB00, &qword_1BE113E10);
  MEMORY[0x1EEE9AC00](v40);
  v19 = &v29 - v18;
  v31 = sub_1BE04F7C4();
  v50 = 1;
  v30 = sub_1BE04F504();
  v49 = 1;
  sub_1BDA91360(&v63);
  v57 = v69;
  v58 = v70;
  v59 = v71;
  v53 = v65;
  v54 = v66;
  v55 = v67;
  v56 = v68;
  v51 = v63;
  v52 = v64;
  v61[6] = v69;
  v61[7] = v70;
  v61[8] = v71;
  v61[2] = v65;
  v61[3] = v66;
  v61[4] = v67;
  v61[5] = v68;
  v60 = v72;
  v62 = v72;
  v61[0] = v63;
  v61[1] = v64;
  sub_1BD0DE19C(&v51, &v45, &qword_1EBD5DB08, &qword_1BE113E18);
  sub_1BD0DE53C(v61, &qword_1EBD5DB08, &qword_1BE113E18);
  *&v48[55] = v54;
  *&v48[39] = v53;
  *&v48[103] = v57;
  *&v48[119] = v58;
  *&v48[135] = v59;
  v48[151] = v60;
  *&v48[71] = v55;
  *&v48[87] = v56;
  *&v48[7] = v51;
  *&v48[23] = v52;
  *&v47[105] = *&v48[96];
  *&v47[121] = *&v48[112];
  *&v47[137] = *&v48[128];
  *&v47[41] = *&v48[32];
  *&v47[57] = *&v48[48];
  *&v47[73] = *&v48[64];
  *&v47[89] = *&v48[80];
  *&v47[9] = *v48;
  v45 = v31;
  LOBYTE(v46) = v50;
  *(&v46 + 1) = v30;
  *v47 = 0;
  v47[8] = v49;
  *&v47[153] = *&v48[144];
  *&v47[25] = *&v48[16];
  sub_1BE051894();
  sub_1BE050264();
  (*(v10 + 56))(v9, 0, 1, v35);
  sub_1BE050254();
  sub_1BD0DE53C(v9, &qword_1EBD5DAF8, &qword_1BE113E08);
  sub_1BE04F744();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB10, &qword_1BE113E20);
  sub_1BDA917F8();
  sub_1BDA9185C(v20);
  v21 = v38;
  sub_1BE050994();
  (*(v39 + 8))(v14, v21);
  (*(v36 + 8))(v17, v37);
  v73 = *&v47[128];
  v74 = *&v47[144];
  v75 = v47[160];
  v69 = *&v47[64];
  v70 = *&v47[80];
  v71 = *&v47[96];
  v72 = *&v47[112];
  v65 = *v47;
  v66 = *&v47[16];
  v67 = *&v47[32];
  v68 = *&v47[48];
  v63 = v45;
  v64 = v46;
  sub_1BD0DE53C(&v63, &qword_1EBD5DB10, &qword_1BE113E20);
  LOBYTE(v9) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v22 = v41;
  v23 = &v19[*(v40 + 36)];
  *v23 = v9;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_1BE04F6F4();
  sub_1BDA918B4();
  sub_1BE050CB4();
  (*(v42 + 8))(v22, v43);
  return sub_1BD0D2DC4(v19);
}

uint64_t sub_1BDA91360@<X0>(uint64_t a5@<X8>)
{
  v6 = sub_1BE04F7C4();
  LOBYTE(v30) = 0;
  sub_1BDA91560(v24);
  *&v23[7] = v24[0];
  *&v23[23] = v24[1];
  *&v23[39] = v24[2];
  *&v23[55] = v24[3];
  v7 = v30;
  v8 = sub_1BE0501D4();
  sub_1BE04E1F4();
  *&v25 = v6;
  *(&v25 + 1) = 0x4000000000000000;
  v26[0] = v7;
  v9 = *v23;
  *&v26[1] = *v23;
  v10 = *&v23[16];
  *&v26[17] = *&v23[16];
  v11 = *&v23[32];
  *&v26[33] = *&v23[32];
  v12 = *&v23[48];
  *&v26[49] = *&v23[48];
  *&v26[64] = *&v23[63];
  v26[72] = v8;
  *&v27 = v13;
  *(&v27 + 1) = v14;
  *&v28 = v15;
  *(&v28 + 1) = v16;
  v36 = v27;
  v37 = v28;
  v34 = *&v26[48];
  v35 = *&v26[64];
  v32 = *&v26[16];
  v33 = *&v26[32];
  v30 = v25;
  v31 = *v26;
  v17 = v28;
  *(a5 + 96) = v27;
  *(a5 + 112) = v17;
  v18 = v33;
  *(a5 + 32) = v32;
  *(a5 + 48) = v18;
  v19 = v35;
  *(a5 + 64) = v34;
  *(a5 + 80) = v19;
  v20 = v31;
  *a5 = v30;
  *(a5 + 16) = v20;
  v29 = 0;
  LOBYTE(v38) = 0;
  v22[136] = 1;
  *(a5 + 128) = v38;
  *(a5 + 136) = 0;
  *(a5 + 144) = 1;
  v39[0] = v6;
  v39[1] = 0x4000000000000000;
  v40 = v7;
  v42 = v10;
  v43 = v11;
  *v44 = v12;
  *&v44[15] = *&v23[63];
  v41 = v9;
  v45 = v8;
  v46 = v13;
  v47 = v14;
  v48 = v15;
  v49 = v16;
  v50 = 0;
  sub_1BD0DE19C(&v25, v22, &qword_1EBD5DB30, &unk_1BE113E28);
  return sub_1BD0DE53C(v39, &qword_1EBD5DB30, &unk_1BE113E28);
}

void sub_1BDA91560(uint64_t a5@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v6 = sub_1BE0506C4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_1BE0502A4();
  v14 = sub_1BE0505F4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v13, v15, v17, v19, v21, v22, v23, v24;
  sub_1BD0DDF10(v6, v8, (v10 & 1), v25, v26, v27, v28, v29);
  v12, v30, v31, v32, v33, v34, v35, v36;
  v37 = sub_1BE051494();
  v38 = sub_1BE050574();
  v117 = v39;
  v118 = v38;
  v116 = v40;
  v119 = v41;
  sub_1BD0DDF10(v14, v16, (v18 & 1), v41, v42, v43, v44, v45);
  v37, v46, v47, v48, v49, v50, v51, v52;
  v20, v53, v54, v55, v56, v57, v58, v59;
  sub_1BE048C84();
  v60 = sub_1BE0506C4();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  if (PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB958]))
  {
    v67 = sub_1BE050484();
    v68 = sub_1BE0505F4();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v67, v69, v71, v73, v75, v76, v77, v78;
    sub_1BD0DDF10(v60, v62, (v64 & 1), v79, v80, v81, v82, v83);
    v66, v84, v85, v86, v87, v88, v89, v90;
    v91 = (v72 & 1);
    *a5 = v118;
    *(a5 + 8) = v117;
    *(a5 + 16) = v116 & 1;
    *(a5 + 24) = v119;
    *(a5 + 32) = v68;
    *(a5 + 40) = v70;
    *(a5 + 48) = v91;
    *(a5 + 56) = v74;
    sub_1BD0D7F18(v118, v117, v116 & 1);
    sub_1BE048C84();
    sub_1BD0D7F18(v68, v70, v91);
    sub_1BE048C84();
    sub_1BD0DDF10(v68, v70, v91, v92, v93, v94, v95, v96);
    v74, v97, v98, v99, v100, v101, v102, v103;
    sub_1BD0DDF10(v118, v117, (v116 & 1), v104, v105, v106, v107, v108);
    v119, v109, v110, v111, v112, v113, v114, v115;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BDA917F8()
{
  result = qword_1EBD5DB18;
  if (!qword_1EBD5DB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DB10, &qword_1BE113E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DB18);
  }

  return result;
}

unint64_t sub_1BDA9185C(double a1)
{
  result = qword_1EBD5DB20;
  if (!qword_1EBD5DB20)
  {
    sub_1BE04F754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DB20);
  }

  return result;
}

unint64_t sub_1BDA918B4()
{
  result = qword_1EBD5DB28;
  if (!qword_1EBD5DB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DB00, &qword_1BE113E10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DB10, &qword_1BE113E20);
    sub_1BE04F754();
    sub_1BDA917F8();
    sub_1BDA9185C(v1);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DB28);
  }

  return result;
}

void sub_1BDA919EC(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD46188, 0x1E6985C40);
  if (v1 <= 0x3F)
  {
    sub_1BDA91A88(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BDA91A88(uint64_t a1)
{
  if (!qword_1EBD46190)
  {
    sub_1BE0491B4();
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD46190);
    }
  }
}

void sub_1BDA91B28(uint64_t a1)
{
  type metadata accessor for FinanceKitTransactionMapView.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v2 <= 0x3F)
    {
      sub_1BD10EE48();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BDA91BE4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v83 = a1;
  v2 = type metadata accessor for FinanceKitTransactionMapView(0);
  v67[0] = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v67[1] = v3;
  v68 = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB58, &qword_1BE113EE8);
  MEMORY[0x1EEE9AC00](v81);
  v69 = v67 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB60, &unk_1BE113EF0);
  MEMORY[0x1EEE9AC00](v78);
  v6 = v67 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v75 = v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358, &qword_1BE0DBE98);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v76 = v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB68, &unk_1BE113F00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v80 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v79 = v67 - v14;
  v74 = sub_1BE04CE54();
  MEMORY[0x1EEE9AC00](v74);
  v73 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D638, &qword_1BE1130F0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v67 - v17;
  v70 = v67 - v17;
  v19 = sub_1BE04CE74();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BE04CE44();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v71 = v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB70, &qword_1BE113F10);
  MEMORY[0x1EEE9AC00](v72);
  v26 = v67 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB78, &qword_1BE113F18);
  v28 = v27 - 8;
  MEMORY[0x1EEE9AC00](v27);
  v77 = v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = v67 - v32;
  [*v83 coordinate];
  sub_1BE04CE64();
  sub_1BE04CE34();
  (*(v20 + 8))(v22, v19);
  v34 = sub_1BE04CE24();
  (*(*(v34 - 8) + 56))(v18, 1, 1, v34);
  *&v102[0] = MEMORY[0x1E69E7CC0];
  sub_1BDA93FA4(&qword_1EBD5D658, MEMORY[0x1E6985CD8], MEMORY[0x1E6985CE0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D660, &qword_1BE113110);
  sub_1BD0DE4F4(&qword_1EBD5D668, &qword_1EBD5D660, &qword_1BE113110, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  v35 = v83;
  v84 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D688, &qword_1BE113120);
  sub_1BD0DE4F4(&qword_1EBD5D680, &qword_1EBD5D688, &qword_1BE113120, MEMORY[0x1E6985CE8]);
  v36 = v75;
  sub_1BE04CDF4();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v37 = &v26[*(v72 + 36)];
  v38 = v102[8];
  *v37 = v102[7];
  *(v37 + 1) = v38;
  *(v37 + 2) = v102[9];
  sub_1BDA93764();
  sub_1BE0506F4();
  sub_1BD0DE53C(v26, &qword_1EBD5DB70, &qword_1BE113F10);
  v39 = *(v28 + 44);
  v40 = v35;
  v41 = &v33[v39];
  v42 = type metadata accessor for FinanceKitTransactionMapView.ViewModel(0);
  *v41 = 0u;
  *(v41 + 1) = 0u;
  v41[32] = 0;
  sub_1BD0DE19C(v35 + *(v42 + 24), v36, &qword_1EBD3F7C0, &unk_1BE0D6570);
  v43 = sub_1BE0491B4();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v36, 1, v43) == 1)
  {
    sub_1BD0DE53C(v36, &qword_1EBD3F7C0, &unk_1BE0D6570);
    v45 = sub_1BE049294();
    v46 = v76;
    (*(*(v45 - 8) + 56))(v76, 1, 1, v45);
  }

  else
  {
    v46 = v76;
    sub_1BE0491A4();
    (*(v44 + 8))(v36, v43);
    v47 = sub_1BE049294();
    if ((*(*(v47 - 8) + 48))(v46, 1, v47) != 1)
    {
      sub_1BD0DE53C(v46, &qword_1EBD48358, &qword_1BE0DBE98);
      v54 = v68;
      sub_1BDA939E4(v40, v68);
      v55 = (*(v67[0] + 80) + 16) & ~*(v67[0] + 80);
      v56 = swift_allocObject();
      v57 = sub_1BDA93A48(v54, v56 + v55);
      MEMORY[0x1EEE9AC00](v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DBA0, &qword_1BE113F30);
      sub_1BDA9381C();
      v58 = v69;
      sub_1BE051704();
      v59 = sub_1BE051464();
      KeyPath = swift_getKeyPath();
      v61 = (v58 + *(v81 + 36));
      *v61 = KeyPath;
      v61[1] = v59;
      sub_1BD0DE19C(v58, v6, &qword_1EBD5DB58, &qword_1BE113EE8);
      swift_storeEnumTagMultiPayload();
      sub_1BDA93900();
      v53 = v79;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v58, &qword_1EBD5DB58, &qword_1BE113EE8);
      goto LABEL_6;
    }
  }

  sub_1BD0DE53C(v46, &qword_1EBD48358, &qword_1BE0DBE98);
  v48 = sub_1BE04F504();
  v94 = 1;
  sub_1BDA93308(v40, &v86);
  v99 = v90;
  v100 = v91;
  v101 = v92;
  v95 = v86;
  v96 = v87;
  v97 = v88;
  v98 = v89;
  v102[0] = v86;
  v102[1] = v87;
  v102[2] = v88;
  v102[3] = v89;
  v102[4] = v90;
  v102[5] = v91;
  v102[6] = v92;
  sub_1BD0DE19C(&v95, &v85, &qword_1EBD5DB98, &qword_1BE113F28);
  sub_1BD0DE53C(v102, &qword_1EBD5DB98, &qword_1BE113F28);
  *&v93[55] = v98;
  *&v93[71] = v99;
  *&v93[87] = v100;
  *&v93[103] = v101;
  *&v93[7] = v95;
  *&v93[23] = v96;
  *&v93[39] = v97;
  v49 = *&v93[80];
  *(v6 + 81) = *&v93[64];
  *(v6 + 97) = v49;
  *(v6 + 113) = *&v93[96];
  v50 = *&v93[16];
  *(v6 + 17) = *v93;
  *(v6 + 33) = v50;
  v51 = *&v93[48];
  *(v6 + 49) = *&v93[32];
  v52 = v94;
  LOBYTE(v86) = 0;
  *v6 = v48;
  *(v6 + 1) = 0;
  v6[16] = v52;
  *(v6 + 16) = *&v93[111];
  *(v6 + 65) = v51;
  *(v6 + 136) = xmmword_1BE0F0EB0;
  *(v6 + 152) = xmmword_1BE0F0EB0;
  v6[168] = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DBA0, &qword_1BE113F30);
  sub_1BDA9381C();
  sub_1BDA93900();
  v53 = v79;
  sub_1BE04F9A4();
LABEL_6:
  v62 = v77;
  sub_1BD0D3170(v33, v77);
  v63 = v80;
  sub_1BD0DE19C(v53, v80, &qword_1EBD5DB68, &unk_1BE113F00);
  v64 = v82;
  sub_1BD0D3170(v62, v82);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DBD8, &qword_1BE113F58);
  sub_1BD0DE19C(v63, v64 + *(v65 + 48), &qword_1EBD5DB68, &unk_1BE113F00);
  sub_1BD0DE53C(v53, &qword_1EBD5DB68, &unk_1BE113F00);
  sub_1BD0D31E0(v33);
  sub_1BD0DE53C(v63, &qword_1EBD5DB68, &unk_1BE113F00);
  return sub_1BD0D31E0(v62);
}