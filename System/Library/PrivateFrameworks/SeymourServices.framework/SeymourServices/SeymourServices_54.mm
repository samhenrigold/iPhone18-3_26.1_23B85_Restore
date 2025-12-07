uint64_t sub_227443A24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v32 = *a4;
    v4 = *a4 + 40 * a3 - 40;
    v5 = result - a3;
LABEL_5:
    v30 = v4;
    v31 = a3;
    v29 = v5;
    while (1)
    {
      v38 = v5;
      v34 = *(v4 + 40);
      v35 = v4 + 40;
      v6 = *(v4 + 56);
      v7 = *(v4 + 64);
      v8 = *(v4 + 72);
      v33 = *v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      v11 = *(v4 + 32);

      sub_226EB396C(v6, v7, v8);

      v37 = v11;
      sub_226EB396C(v10, v9, v11);
      v12 = sub_227667230();
      if (*(v12 + 16))
      {
        v13 = sub_226F491D8();
        if (v14)
        {
          v15 = *(*(v12 + 56) + 8 * v13);
        }

        else
        {
          v15 = -1;
        }

        v36 = v15;
      }

      else
      {
        v36 = -1;
      }

      v16 = sub_227667230();
      if (*(v16 + 16) && (v17 = sub_226F491D8(), (v18 & 1) != 0))
      {
        v19 = *(*(v16 + 56) + 8 * v17);

        sub_226EB2DFC(v10, v9, v37);

        result = sub_226EB2DFC(v6, v7, v8);
        v20 = v36;
        if (v36 != v19)
        {
          goto LABEL_18;
        }
      }

      else
      {

        sub_226EB2DFC(v10, v9, v37);

        result = sub_226EB2DFC(v6, v7, v8);
        v20 = v36;
        if (v36 != -1)
        {
          v19 = -1;
LABEL_18:
          v21 = v20 < v19;
          goto LABEL_20;
        }
      }

      v21 = v34 < v33;
LABEL_20:
      if (!v21)
      {
        goto LABEL_4;
      }

      if (!v32)
      {
        __break(1u);
        return result;
      }

      v23 = *(v4 + 40);
      v22 = *(v4 + 48);
      v24 = *(v4 + 72);
      v25 = *(v4 + 56);
      v26 = *(v4 + 16);
      v27 = *(v4 + 32);
      *v35 = *v4;
      *(v4 + 56) = v26;
      *v4 = v23;
      *(v4 + 8) = v22;
      *(v4 + 16) = v25;
      *(v4 + 32) = v24;
      v4 -= 40;
      *(v35 + 32) = v27;
      v5 = v38 + 1;
      if (v38 == -1)
      {
LABEL_4:
        a3 = v31 + 1;
        v4 = v30 + 40;
        v5 = v29 - 1;
        if (v31 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

void sub_227443CBC(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  v5 = sub_22766D130();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_22766C380();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_227442F54(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_227443A24(0, v4, 1, a1);
  }
}

uint64_t sub_227443E04(char **a1, unint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_2271177C4(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_227443CBC(v7, a2);

  *a1 = v4;
}

void sub_227443EC8(unint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5)
{
  v6 = v5;
  v142 = a1;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
  v155 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v144 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v147 = &v133 - v12;
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v133 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v133 - v20;
  MEMORY[0x28223BE20](v22);
  v27 = &v133 - v26;
  v156 = a3;
  v157 = a5;
  if (a3[1] < 1)
  {
    swift_bridgeObjectRetain_n();
    v30 = MEMORY[0x277D84F90];
LABEL_99:
    v154 = *v142;
    if (v154)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_101;
    }

    goto LABEL_143;
  }

  v28 = a3[1];
  v151 = v18;
  v152 = v25;
  v145 = v24;
  v146 = v23;
  swift_bridgeObjectRetain_n();
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v31 = &qword_27D7BAE90;
  v141 = a4;
  v138 = v27;
  v139 = v21;
  v32 = v28;
  while (1)
  {
    v33 = v29;
    v34 = v29 + 1;
    v154 = v32;
    v143 = v33;
    if (v34 >= v32)
    {
      v41 = v34;
    }

    else
    {
      v148 = v6;
      v35 = *v156;
      v36 = *(v155 + 72);
      v37 = *v156 + v36 * v34;
      sub_226E93170(v37, v27, v31, &unk_22767DF70);
      sub_226E93170(v35 + v36 * v33, v21, v31, &unk_22767DF70);
      v38 = v148;
      LODWORD(v153) = sub_227437AE0(v27, v21, v157);
      v148 = v38;
      if (v38)
      {
        sub_226E97D1C(v21, &qword_27D7BAE90, &unk_22767DF70);
        sub_226E97D1C(v27, &qword_27D7BAE90, &unk_22767DF70);
        swift_bridgeObjectRelease_n();

        return;
      }

      v140 = v30;
      sub_226E97D1C(v21, v31, &unk_22767DF70);
      sub_226E97D1C(v27, v31, &unk_22767DF70);
      v39 = v33 + 2;
      v150 = v36;
      v40 = v35 + v36 * v39;
      v6 = v148;
      while (1)
      {
        v41 = v154;
        if (v154 == v39)
        {
          break;
        }

        v42 = v151;
        sub_226E93170(v40, v151, v31, &unk_22767DF70);
        v43 = v31;
        v44 = v152;
        sub_226E93170(v37, v152, v43, &unk_22767DF70);
        v45 = sub_227437AE0(v42, v44, v157);
        if (v6)
        {
          sub_226E97D1C(v44, &qword_27D7BAE90, &unk_22767DF70);
          v132 = v42;
          goto LABEL_113;
        }

        v46 = v45;
        sub_226E97D1C(v44, v43, &unk_22767DF70);
        sub_226E97D1C(v42, v43, &unk_22767DF70);
        ++v39;
        v40 += v150;
        v37 += v150;
        v31 = v43;
        if ((v153 ^ v46))
        {
          v41 = v39 - 1;
          break;
        }
      }

      v30 = v140;
      if ((v153 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v41 < v143)
      {
        goto LABEL_137;
      }

      if (v143 < v41)
      {
        v47 = v150;
        v48 = v150 * (v41 - 1);
        v49 = v41;
        v50 = v41 * v150;
        v154 = v41;
        v51 = v143;
        v52 = v143 * v150;
        do
        {
          if (v51 != --v49)
          {
            v148 = v6;
            v53 = *v156;
            if (!*v156)
            {
              goto LABEL_141;
            }

            sub_226E95D18(v53 + v52, v144, &qword_27D7BAE90, &unk_22767DF70);
            if (v52 < v48 || v53 + v52 >= (v53 + v50))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v52 != v48)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_226E95D18(v144, v53 + v48, &qword_27D7BAE90, &unk_22767DF70);
            v6 = v148;
          }

          ++v51;
          v48 -= v47;
          v50 -= v47;
          v52 += v47;
        }

        while (v51 < v49);
        a4 = v141;
        v31 = &qword_27D7BAE90;
        v41 = v154;
      }

      else
      {
LABEL_25:
        a4 = v141;
      }
    }

    v54 = v156[1];
    if (v41 >= v54)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v41, v143))
    {
      goto LABEL_133;
    }

    if (v41 - v143 >= a4)
    {
LABEL_37:
      v56 = v41;
LABEL_38:
      v55 = v143;
      if (v56 < v143)
      {
        goto LABEL_132;
      }
    }

    else
    {
      v55 = v143;
      if (__OFADD__(v143, a4))
      {
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_139:
        swift_bridgeObjectRelease_n();
        __break(1u);
        goto LABEL_140;
      }

      if (v143 + a4 < v54)
      {
        v54 = v143 + a4;
      }

      if (v54 < v143)
      {
        goto LABEL_136;
      }

      if (v41 != v54)
      {
        v148 = v54;
        v140 = v30;
        v111 = *v156;
        v112 = *(v155 + 72);
        v113 = *v156 + v112 * (v41 - 1);
        v150 = -v112;
        v114 = v143 - v41;
        v153 = v111;
        v134 = v112;
        v115 = v111 + v41 * v112;
        while (1)
        {
          v154 = v41;
          v135 = v115;
          v136 = v114;
          v137 = v113;
          do
          {
            v116 = v145;
            sub_226E93170(v115, v145, v31, &unk_22767DF70);
            v117 = v146;
            sub_226E93170(v113, v146, v31, &unk_22767DF70);
            v118 = sub_227437AE0(v116, v117, v157);
            if (v6)
            {
              sub_226E97D1C(v117, &qword_27D7BAE90, &unk_22767DF70);
              v132 = v116;
LABEL_113:
              sub_226E97D1C(v132, &qword_27D7BAE90, &unk_22767DF70);
              swift_bridgeObjectRelease_n();
LABEL_114:

              return;
            }

            v119 = v118;
            sub_226E97D1C(v117, v31, &unk_22767DF70);
            sub_226E97D1C(v116, v31, &unk_22767DF70);
            if (!v119)
            {
              break;
            }

            if (!v153)
            {
              goto LABEL_139;
            }

            v120 = v147;
            sub_226E95D18(v115, v147, v31, &unk_22767DF70);
            swift_arrayInitWithTakeFrontToBack();
            sub_226E95D18(v120, v113, v31, &unk_22767DF70);
            v113 += v150;
            v115 += v150;
          }

          while (!__CFADD__(v114++, 1));
          v41 = v154 + 1;
          v113 = v137 + v134;
          v114 = v136 - 1;
          v115 = v135 + v134;
          if (v154 + 1 == v148)
          {
            v30 = v140;
            v56 = v148;
            goto LABEL_38;
          }
        }
      }

      v56 = v41;
      if (v41 < v143)
      {
        goto LABEL_132;
      }
    }

    v148 = v56;
    v57 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_2273A4F9C(0, *(v30 + 2) + 1, 1, v30);
    }

    v6 = *(v30 + 2);
    v58 = *(v30 + 3);
    v59 = v6 + 1;
    if (v6 >= v58 >> 1)
    {
      v30 = sub_2273A4F9C((v58 > 1), v6 + 1, 1, v30);
    }

    *(v30 + 2) = v59;
    v60 = &v30[16 * v6];
    v61 = v148;
    *(v60 + 4) = v55;
    *(v60 + 5) = v61;
    v154 = *v142;
    if (!v154)
    {
      goto LABEL_142;
    }

    if (v6)
    {
      break;
    }

LABEL_3:
    v32 = v156[1];
    v29 = v148;
    v6 = v57;
    a4 = v141;
    v27 = v138;
    v21 = v139;
    if (v148 >= v32)
    {
      goto LABEL_99;
    }
  }

  while (1)
  {
    v62 = v59 - 1;
    if (v59 >= 4)
    {
      v67 = &v30[16 * v59 + 32];
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_119;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_120;
      }

      v74 = &v30[16 * v59];
      v76 = *v74;
      v75 = *(v74 + 1);
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_122;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_125;
      }

      if (v78 >= v70)
      {
        v97 = &v30[16 * v62 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v73 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v73)
        {
          goto LABEL_131;
        }

        v79 = v57;
        if (v65 < v100)
        {
          v62 = v59 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_58;
    }

    if (v59 == 3)
    {
      v63 = *(v30 + 4);
      v64 = *(v30 + 5);
      v73 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      v66 = v73;
LABEL_58:
      v79 = v57;
      if (v66)
      {
        goto LABEL_121;
      }

      v80 = &v30[16 * v59];
      v82 = *v80;
      v81 = *(v80 + 1);
      v83 = __OFSUB__(v81, v82);
      v84 = v81 - v82;
      v85 = v83;
      if (v83)
      {
        goto LABEL_124;
      }

      v86 = &v30[16 * v62 + 32];
      v88 = *v86;
      v87 = *(v86 + 1);
      v73 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v73)
      {
        goto LABEL_127;
      }

      if (__OFADD__(v84, v89))
      {
        goto LABEL_128;
      }

      if (v84 + v89 >= v65)
      {
        if (v65 < v89)
        {
          v62 = v59 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v90 = &v30[16 * v59];
    v92 = *v90;
    v91 = *(v90 + 1);
    v73 = __OFSUB__(v91, v92);
    v84 = v91 - v92;
    v85 = v73;
    v79 = v57;
LABEL_73:
    if (v85)
    {
      goto LABEL_123;
    }

    v93 = &v30[16 * v62];
    v95 = *(v93 + 4);
    v94 = *(v93 + 5);
    v73 = __OFSUB__(v94, v95);
    v96 = v94 - v95;
    if (v73)
    {
      goto LABEL_126;
    }

    if (v96 < v84)
    {
      goto LABEL_3;
    }

LABEL_80:
    v101 = v62 - 1;
    if (v62 - 1 >= v59)
    {
      break;
    }

    v102 = *v156;
    if (!*v156)
    {
      goto LABEL_138;
    }

    v103 = *&v30[16 * v101 + 32];
    v104 = *&v30[16 * v62 + 40];
    v105 = *(v155 + 72);
    v106 = v102 + v105 * v103;
    v107 = v102 + v105 * *&v30[16 * v62 + 32];
    v108 = v102 + v105 * v104;
    v109 = v157;

    sub_227441B20(v106, v107, v108, v154, v109);
    v6 = v79;
    if (v79)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_114;
    }

    if (v104 < v103)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_2271171D0(v30);
    }

    if (v101 >= *(v30 + 2))
    {
      goto LABEL_118;
    }

    v57 = 0;
    v110 = &v30[16 * v101];
    *(v110 + 4) = v103;
    *(v110 + 5) = v104;
    v158 = v30;
    sub_227117144(v62);
    v30 = v158;
    v59 = *(v158 + 2);
    v31 = &qword_27D7BAE90;
    if (v59 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_129:
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
  v30 = sub_2271171D0(v30);
LABEL_101:
  v158 = v30;
  v122 = *(v30 + 2);
  if (v122 < 2)
  {
LABEL_109:

    swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v123 = *v156;
      if (!*v156)
      {
        break;
      }

      v124 = *&v30[16 * v122];
      v125 = *&v30[16 * v122 + 24];
      v126 = *(v155 + 72);
      v127 = v123 + v126 * v124;
      v128 = v123 + v126 * *&v30[16 * v122 + 16];
      v129 = v123 + v126 * v125;
      v130 = v157;

      sub_227441B20(v127, v128, v129, v154, v130);
      if (v6)
      {
        goto LABEL_109;
      }

      if (v125 < v124)
      {
        goto LABEL_129;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_2271171D0(v30);
      }

      if (v122 - 2 >= *(v30 + 2))
      {
        goto LABEL_130;
      }

      v131 = &v30[16 * v122];
      *v131 = v124;
      *(v131 + 1) = v125;
      v158 = v30;
      sub_227117144(v122 - 1);
      v30 = v158;
      v122 = *(v158 + 2);
      if (v122 <= 1)
      {
        goto LABEL_109;
      }
    }

LABEL_140:

    __break(1u);
LABEL_141:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_142:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_143:
    swift_bridgeObjectRelease_n();
    __break(1u);
  }
}

void sub_227444AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v37 = a5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
  MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v33 = -v19;
    v34 = v18;
    v21 = a1 - a3;
    v27 = v19;
    v22 = v18 + v19 * a3;
LABEL_4:
    v31 = v20;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    v23 = v20;
    while (1)
    {
      sub_226E93170(v22, v17, &qword_27D7BAE90, &unk_22767DF70);
      sub_226E93170(v23, v13, &qword_27D7BAE90, &unk_22767DF70);
      v24 = sub_227437AE0(v17, v13, v37);
      sub_226E97D1C(v13, &qword_27D7BAE90, &unk_22767DF70);
      sub_226E97D1C(v17, &qword_27D7BAE90, &unk_22767DF70);
      if (v5)
      {
        break;
      }

      if (v24)
      {
        if (!v34)
        {
          __break(1u);
          return;
        }

        v25 = v35;
        sub_226E95D18(v22, v35, &qword_27D7BAE90, &unk_22767DF70);
        swift_arrayInitWithTakeFrontToBack();
        sub_226E95D18(v25, v23, &qword_27D7BAE90, &unk_22767DF70);
        v23 += v33;
        v22 += v33;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v20 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_227444D08(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  v5 = sub_22766D130();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
        v8 = sub_22766C380();
        *(v8 + 16) = v7;
      }

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_227443EC8(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_227444AA0(0, v4, 1, a1, a2);
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_227444EA4(void **a1, uint64_t a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_2271177D8(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_227444D08(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

void sub_227444FA0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  v15 = [a1 identifier];
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = v15;
  v30 = sub_22766C000();
  v31 = v17;

  v18 = [a1 mediaType];
  if (!v18)
  {
LABEL_7:

LABEL_8:
    v25 = sub_227664DD0();
    sub_227445B00(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51028], v25);
    swift_willThrow();

    return;
  }

  v29 = a2;
  v19 = v18;
  v28 = sub_22766C000();
  v21 = v20;

  v22 = [a1 dateAdded];
  if (!v22)
  {

    goto LABEL_7;
  }

  v23 = v22;
  sub_227662710();

  (*(v5 + 32))(v14, v10, v4);
  v24 = [a1 index];
  if (([a1 healthKitActivityType] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v27 = v24 & ~(v24 >> 63);
    v32 = v28;
    v33 = v21;
    sub_226ED56C4();
    sub_227663AE0();
    v28 = v34;
    [a1 duration];
    (*(v5 + 16))(v7, v14, v4);
    sub_227664A20();

    (*(v5 + 8))(v14, v4);
  }
}

void *static UpNextQueueItem.representativeSamples()()
{
  v36 = sub_227662750();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v25 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB88, &qword_2276858E8);
  v1 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v25 - v2;
  v32 = sub_227664AA0();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766C090();
  sub_226FFFEB8();
  v7 = sub_22766CFA0();
  sub_226F5D220();
  v8 = sub_22766CFA0();
  sub_226FFFF0C();
  sub_226ED56C4();
  v9 = sub_227663B50();
  sub_226F5D274();
  v10 = sub_22766BE70();
  v11 = sub_227662630();
  v56 = v7;
  v57[0] = v6;
  v57[1] = v57;
  v57[2] = &v56;
  v54 = v9;
  v55 = v8;
  v57[3] = &v55;
  v57[4] = &v54;
  v52 = v11;
  v53 = v10;
  v57[5] = &v53;
  v57[6] = &v52;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B78, &qword_2276753E0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CE8, &qword_227671E40);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B80, &qword_2276753E8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v40 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v41 = sub_226F5BF60(&qword_27D7B9B88, &qword_27D7B9B78, &qword_2276753E0);
  v42 = sub_226F5BF60(&qword_27D7B8D08, &qword_27D7B8CE8, &qword_227671E40);
  v43 = sub_226F5BF60(&qword_27D7B9B90, &qword_27D7B9B80, &qword_2276753E8);
  v44 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v45 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v12 = sub_2276638E0();

  v13 = *(v12 + 16);
  if (v13)
  {
    v39 = MEMORY[0x277D84F90];
    result = sub_226F1F7E8(0, v13, 0);
    v15 = 0;
    v16 = v39;
    v27 = v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v26 = (v38 + 16);
    v25 = v3 + 32;
    v31 = v1;
    v30 = v3;
    v29 = v12;
    v28 = v13;
    while (v15 < *(v12 + 16))
    {
      v17 = v27 + *(v1 + 72) * v15;
      v38 = v16;
      v18 = v33;
      sub_2274459D0(v17, v33);
      v37 = *(v18 + 24);
      v19 = *(v18 + 32);
      v20 = *(v18 + 40);
      v21 = *(v18 + 48);
      (*v26)(v35, v18 + *(v34 + 112), v36);

      sub_226EB396C(v19, v20, v21);
      sub_227664A20();
      v22 = v18;
      v16 = v38;
      sub_227445A40(v22);
      v39 = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_226F1F7E8((v23 > 1), v24 + 1, 1);
        v16 = v39;
      }

      ++v15;
      *(v16 + 16) = v24 + 1;
      result = (*(v30 + 32))(v16 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, v5, v32);
      v1 = v31;
      v12 = v29;
      if (v28 == v15)
      {

        return v16;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2274459D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB88, &qword_2276858E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227445A40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB88, &qword_2276858E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227445AA8(uint64_t a1)
{
  result = sub_227445B00(&qword_2813A5780, MEMORY[0x277D50CD0], &protocol conformance descriptor for UpNextQueueItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227445B00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_227445B48(void *a1)
{
  v17[0] = sub_227662750();
  v2 = *(v17[0] - 8);
  MEMORY[0x28223BE20](v17[0]);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227664A30();
  v5 = sub_22766BFD0();

  [a1 setIdentifier_];

  v6 = sub_227664A50();
  if (v6 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  [a1 setIndex_];
  v8 = sub_227664A40();
  if (v8 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
  }

  [a1 setHealthKitActivityType_];
  v10 = sub_227664A90();
  v12 = v11;
  v17[3] = v10;
  v17[4] = v11;
  v14 = v13 & 1;
  v18 = v13 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B98, &qword_227675438);
  sub_227663AD0();
  v15 = sub_22766BFD0();
  sub_226EB2DFC(v10, v12, v14);

  [a1 setMediaType_];

  sub_227664A70();
  [a1 setDuration_];
  sub_227664A80();
  v16 = sub_2276626A0();
  (*(v2 + 8))(v4, v17[0]);
  [a1 setDateAdded_];
}

void sub_227445D58(id a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - v5;
  v7 = sub_227668D10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = [a1 behavior];
  if (!v15)
  {
    goto LABEL_6;
  }

  v31 = v8;
  v16 = a2;
  v17 = v15;
  v28 = sub_22766C000();
  v19 = v18;

  v20 = [a1 modalityConstraint];
  if (!v20)
  {

    goto LABEL_6;
  }

  v21 = v20;
  v25[1] = v16;
  v26 = v19;
  v27 = a1;
  sub_22766C000();

  sub_227668CF0();
  v22 = v31;
  if ((*(v31 + 48))(v6, 1, v7) == 1)
  {

    sub_226E97D1C(v6, &qword_27D7B9BA0, &qword_2276754B8);
    a1 = v27;
LABEL_6:
    v23 = sub_227664DD0();
    sub_22744673C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51028], v23);
    swift_willThrow();

    return;
  }

  (*(v22 + 32))(v14, v6, v7);
  v29 = v28;
  v30 = v26;
  sub_227125D94();
  sub_227663AE0();
  (*(v22 + 16))(v10, v14, v7);
  sub_227666F00();

  (*(v22 + 8))(v14, v7);
}

void *static BurnBarDisplayPreference.representativeSamples()()
{
  v0 = sub_227668D10();
  v1 = *(v0 - 8);
  v2 = v1;
  MEMORY[0x28223BE20](v0);
  v38 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB90, &qword_227685938);
  v30[0] = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v34 = v30 - v4;
  v36 = sub_227666F20();
  v40 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2274465E0();
  sub_227125D94();
  v6 = sub_227663B50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBA0, &qword_227685940);
  v7 = *(v1 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_227675BD0;
  v10 = v9 + v8;
  v11 = *MEMORY[0x277D53870];
  v31 = v2;
  v12 = *(v2 + 104);
  (v12)(v10, v11, v0);
  v13 = (v10 + v7);
  *v13 = 0x6E776F6E6B6E75;
  v13[1] = 0xE700000000000000;
  v12();
  v14 = (v10 + 2 * v7);
  *v14 = 0x6E776F6E6BLL;
  v14[1] = 0xE500000000000000;
  v39 = v0;
  v12();
  v46 = v9;
  v47[0] = v6;
  v47[1] = v47;
  v47[2] = &v46;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBA8, &qword_227685948);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBB0, &qword_227685950);
  v42 = sub_226F5BF60(&qword_27D7BDBB8, &qword_27D7BDBA8, &qword_227685948);
  v43 = sub_226F5BF60(&qword_27D7BDBC0, &qword_27D7BDBB0, &qword_227685950);
  v15 = sub_2276638E0();

  v16 = *(v15 + 16);
  if (v16)
  {
    v41 = MEMORY[0x277D84F90];
    result = sub_226F20308(0, v16, 0);
    v18 = 0;
    v32 = v15 + ((*(v30[0] + 80) + 32) & ~*(v30[0] + 80));
    v33 = v15;
    v19 = v41;
    v30[1] = v40 + 32;
    v31 += 2;
    v20 = v30[0];
    v22 = v34;
    v21 = v35;
    v23 = v38;
    while (v18 < *(v15 + 16))
    {
      v24 = v20;
      sub_227446674(v32 + *(v20 + 72) * v18, v22);
      v26 = *v22;
      v25 = *(v22 + 8);
      v27 = *(v22 + 16);
      (*v31)(v23, v22 + *(v37 + 48), v39);
      sub_226EB396C(v26, v25, v27);
      sub_227666F00();
      sub_226E97D1C(v22, &qword_27D7BDB90, &qword_227685938);
      v41 = v19;
      v29 = *(v19 + 16);
      v28 = *(v19 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_226F20308((v28 > 1), v29 + 1, 1);
        v19 = v41;
      }

      ++v18;
      *(v19 + 16) = v29 + 1;
      result = (*(v40 + 32))(v19 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v29, v21, v36);
      v20 = v24;
      v15 = v33;
      if (v16 == v18)
      {

        return v19;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_2274465E0()
{
  result = qword_27D7BDB98;
  if (!qword_27D7BDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDB98);
  }

  return result;
}

uint64_t sub_227446674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB90, &qword_227685938);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274466E4(uint64_t a1)
{
  result = sub_22744673C(&qword_2813A5638, MEMORY[0x277D52A80], &protocol conformance descriptor for BurnBarDisplayPreference);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22744673C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_227446784(void *a1)
{
  v13[0] = a1;
  v1 = sub_227668D10();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227666F10();
  v7 = v6;
  v13[3] = v5;
  v13[4] = v6;
  v9 = v8 & 1;
  v14 = v8 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBC8, &qword_22768B7D0);
  sub_227663AD0();
  v10 = sub_22766BFD0();
  sub_226EB2DFC(v5, v7, v9);

  v11 = v13[0];
  [v13[0] setBehavior_];

  sub_227666EF0();
  sub_227668D00();
  (*(v2 + 8))(v4, v1);
  v12 = sub_22766BFD0();

  [v11 setModalityConstraint_];
}

void sub_227446930(id a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - v5;
  v7 = sub_227668D10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = [a1 behavior];
  if (!v15)
  {
    goto LABEL_6;
  }

  v31 = v8;
  v16 = a2;
  v17 = v15;
  v28 = sub_22766C000();
  v19 = v18;

  v20 = [a1 modalityConstraint];
  if (!v20)
  {

    goto LABEL_6;
  }

  v21 = v20;
  v25[1] = v16;
  v26 = v19;
  v27 = a1;
  sub_22766C000();

  sub_227668CF0();
  v22 = v31;
  if ((*(v31 + 48))(v6, 1, v7) == 1)
  {

    sub_226E97D1C(v6, &qword_27D7B9BA0, &qword_2276754B8);
    a1 = v27;
LABEL_6:
    v23 = sub_227664DD0();
    sub_2274472C8(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51028], v23);
    swift_willThrow();

    return;
  }

  (*(v22 + 32))(v14, v6, v7);
  v29 = v28;
  v30 = v26;
  sub_227125CEC();
  sub_227663AE0();
  (*(v22 + 16))(v10, v14, v7);
  sub_2276675D0();

  (*(v22 + 8))(v14, v7);
}

void *static ProgressDisplayPreference.representativeSamples()()
{
  v0 = sub_227668D10();
  v1 = *(v0 - 8);
  v2 = v1;
  MEMORY[0x28223BE20](v0);
  v34 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBD0, &qword_2276859A0);
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v27 - v5;
  v32 = sub_2276675F0();
  v36 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22744716C();
  sub_227125CEC();
  v8 = sub_227663B50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBA0, &qword_227685940);
  v9 = *(v1 + 72);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2276728D0;
  v12 = v11 + v10;
  v13 = v2;
  v14 = *(v2 + 104);
  (v14)(v12, *MEMORY[0x277D53870], v0);
  v15 = (v12 + v9);
  *v15 = 0x6E776F6E6B6E75;
  v15[1] = 0xE700000000000000;
  v35 = v0;
  v14();
  v42 = v11;
  v43[0] = v8;
  v43[1] = v43;
  v43[2] = &v42;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBE0, &qword_2276859A8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBB0, &qword_227685950);
  v38 = sub_226F5BF60(&qword_27D7BDBE8, &qword_27D7BDBE0, &qword_2276859A8);
  v39 = sub_226F5BF60(&qword_27D7BDBC0, &qword_27D7BDBB0, &qword_227685950);
  v16 = sub_2276638E0();

  v17 = *(v16 + 16);
  if (v17)
  {
    v37 = MEMORY[0x277D84F90];
    result = sub_226F20348(0, v17, 0);
    v19 = 0;
    v29 = v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v30 = v16;
    v20 = v37;
    v27 = v36 + 32;
    v28 = (v13 + 16);
    v21 = v31;
    while (v19 < *(v16 + 16))
    {
      sub_227447200(v29 + *(v4 + 72) * v19, v6);
      v23 = *v6;
      v22 = *(v6 + 1);
      v24 = v6[16];
      (*v28)(v34, &v6[*(v33 + 48)], v35);
      sub_226EB396C(v23, v22, v24);
      sub_2276675D0();
      sub_226E97D1C(v6, &qword_27D7BDBD0, &qword_2276859A0);
      v37 = v20;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_226F20348((v25 > 1), v26 + 1, 1);
        v20 = v37;
      }

      ++v19;
      *(v20 + 16) = v26 + 1;
      result = (*(v36 + 32))(v20 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v26, v21, v32);
      v16 = v30;
      if (v17 == v19)
      {

        return v20;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_22744716C()
{
  result = qword_27D7BDBD8;
  if (!qword_27D7BDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDBD8);
  }

  return result;
}

uint64_t sub_227447200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBD0, &qword_2276859A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227447270(uint64_t a1)
{
  result = sub_2274472C8(&qword_2813A55E8, MEMORY[0x277D52EC0], &protocol conformance descriptor for ProgressDisplayPreference);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2274472C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_227447310(void *a1)
{
  v13[0] = a1;
  v1 = sub_227668D10();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2276675E0();
  v7 = v6;
  v13[3] = v5;
  v13[4] = v6;
  v9 = v8 & 1;
  v14 = v8 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBF0, &qword_22768B7B0);
  sub_227663AD0();
  v10 = sub_22766BFD0();
  sub_226EB2DFC(v5, v7, v9);

  v11 = v13[0];
  [v13[0] setBehavior_];

  sub_2276675C0();
  sub_227668D00();
  (*(v2 + 8))(v4, v1);
  v12 = sub_22766BFD0();

  [v11 setModalityConstraint_];
}

uint64_t getEnumTagSinglePayload for ServicesTransactions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServicesTransactions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22744760C(char a1)
{
  result = 0x72702E7465737361;
  switch(a1)
  {
    case 1:
    case 19:
      result = 0xD00000000000001ELL;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0x7265732E636E7973;
      break;
    case 7:
      result = 0x6961702E636E7973;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x61727473746F6F62;
      break;
    case 12:
    case 14:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x6F6974617267696DLL;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD00000000000001DLL;
      break;
    case 17:
      result = 0x61746143636E7973;
      break;
    case 18:
      result = 0x61436574656C6564;
      break;
    case 21:
      result = 0xD00000000000001CLL;
      break;
    case 22:
      result = 0xD000000000000015;
      break;
    case 23:
      result = 0xD000000000000015;
      break;
    case 24:
      result = 0x747069726373;
      break;
    default:
      result = 0xD000000000000023;
      break;
  }

  return result;
}

uint64_t sub_2274478E8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22744760C(*a1);
  v5 = v4;
  if (v3 == sub_22744760C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22766D190();
  }

  return v8 & 1;
}

uint64_t sub_227447970()
{
  v1 = *v0;
  sub_22766D370();
  sub_22744760C(v1);
  sub_22766C100();

  return sub_22766D3F0();
}

double sub_2274479D4(uint64_t a1)
{
  sub_22744760C(*v1);
  sub_22766C100();

  return result;
}

uint64_t sub_227447A28(uint64_t a1)
{
  v2 = *v1;
  sub_22766D370();
  sub_22744760C(v2);
  sub_22766C100();

  return sub_22766D3F0();
}

unint64_t sub_227447A88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227447B3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_227447AB8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22744760C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_227447AE8()
{
  result = qword_27D7BDBF8;
  if (!qword_27D7BDBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDBF8);
  }

  return result;
}

unint64_t sub_227447B3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_22766D1E0();

  if (v2 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_227447BA4()
{
  result = qword_27D7BDC00;
  if (!qword_27D7BDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDC00);
  }

  return result;
}

uint64_t sub_227447BF8(uint64_t a1, uint64_t a2)
{
  sub_2276623D0();
  sub_226FB2548();
  v4 = sub_22766CBD0();

  MEMORY[0x22AA98450](95, 0xE100000000000000);

  v5 = sub_22766C0A0();
  v7 = v6;

  MEMORY[0x22AA98450](v5, v7);

  MEMORY[0x22AA98450](a1, a2);

  return v4;
}

uint64_t sub_227447D30()
{
  v1[19] = v0;
  v2 = sub_227662820();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC08, &qword_227685B78);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC10, &qword_227685B80);
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227447E6C, 0, 0);
}

uint64_t sub_227447E6C()
{
  v1 = v0[19];
  v2 = *MEMORY[0x277CE5DE0];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_227447FA0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC18, &qword_227685B88);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22744860C;
  v0[13] = &block_descriptor_31;
  v0[14] = v3;
  [v1 loadMediaSelectionGroupForMediaCharacteristic:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_227447FA0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_227448574;
  }

  else
  {
    v2 = sub_2274480B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2274480B0()
{
  v1 = *(v0 + 144);
  if (!v1)
  {
    v11 = sub_227663190();
    sub_226F92508();
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D4FDB8], v11);
    swift_willThrow();
LABEL_23:

    v33 = *(v0 + 8);

    return v33();
  }

  v2 = [*(v0 + 152) assetCache];
  if (!v2)
  {
LABEL_22:
    v31 = sub_227663190();
    sub_226F92508();
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D4FDB0], v31);
    swift_willThrow();

    goto LABEL_23;
  }

  v3 = v2;
  v4 = [v2 mediaSelectionOptionsInMediaSelectionGroup_];
  sub_2274486DC();
  v5 = sub_22766C2C0();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_21:

    goto LABEL_22;
  }

  result = sub_22766CD20();
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x22AA991A0](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;

  v9 = [v8 locale];

  if (v9)
  {
    sub_227662800();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v14 = *(v0 + 184);
  v13 = *(v0 + 192);
  v15 = sub_227662840();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v14, v10, 1, v15);
  sub_227448728(v14, v13);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    v17 = *(v0 + 192);

    v18 = &qword_27D7BDC08;
    v19 = &qword_227685B78;
LABEL_16:
    sub_226E97D1C(v17, v18, v19);
    goto LABEL_22;
  }

  v20 = *(v0 + 192);
  v21 = *(v0 + 200);
  v23 = *(v0 + 168);
  v22 = *(v0 + 176);
  v24 = *(v0 + 160);
  sub_227662830();
  (*(v16 + 8))(v20, v15);
  sub_227662810();
  (*(v23 + 8))(v22, v24);
  v25 = sub_2276627F0();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 48))(v21, 1, v25);
  v17 = *(v0 + 200);
  if (v27 == 1)
  {

    v18 = &qword_27D7BDC10;
    v19 = &qword_227685B80;
    goto LABEL_16;
  }

  v34 = sub_2276627E0();
  v29 = v28;

  (*(v26 + 8))(v17, v25);

  v30 = *(v0 + 8);

  return v30(v34, v29);
}

uint64_t sub_227448574(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_22744860C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

unint64_t sub_2274486DC()
{
  result = qword_27D7BDC20;
  if (!qword_27D7BDC20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7BDC20);
  }

  return result;
}

uint64_t sub_227448728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC08, &qword_227685B78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274487A8(uint64_t a1)
{
  v43 = sub_227663180();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2276624A0();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v39 = v7;
    v31 = v1;
    v47 = MEMORY[0x277D84F90];
    v33 = a1;
    sub_226F1F548(0, v8, 0);
    v10 = v5;
    v11 = v33;
    v45 = v33 + 56;
    v46 = v47;
    result = sub_22766CC90();
    v12 = result;
    v13 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v40 = v10;
    v35 = v3;
    v36 = v10 + 32;
    v32 = v11 + 64;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v11 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v44 = *(v11 + 36);
      v18 = v42;
      v17 = v43;
      (*(v3 + 16))(v42, *(v11 + 48) + *(v3 + 72) * v12, v43);
      v19 = v39;
      sub_227663170();
      (*(v3 + 8))(v18, v17);
      v20 = v46;
      v47 = v46;
      v22 = *(v46 + 16);
      v21 = *(v46 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F1F548((v21 > 1), v22 + 1, 1);
        v20 = v47;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v46 = v20;
      result = (*(v40 + 32))(v20 + v23 + *(v40 + 72) * v22, v19, v41);
      v14 = 1 << *(v11 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v45 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v44 != *(v11 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
        v3 = v35;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        v15 = v34;
        v3 = v35;
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_226EB526C(v12, v44, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v12, v44, 0);
LABEL_19:
        v11 = v33;
      }

      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_227448B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9398, &qword_227673C18);
  v29 = *(v33 - 8);
  v32 = *(v29 + 64);
  MEMORY[0x28223BE20](v33);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v30 = &v28 - v7;
  v8 = sub_227668C20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227668910();
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8, v13);
  sub_226E91B50(v3 + 216, v37);
  sub_227668C10();
  sub_227668BE0();
  sub_227668BF0();
  __swift_project_boxed_opaque_existential_0(v37, v38);
  __swift_project_boxed_opaque_existential_0(v37, v38);
  sub_227668C00();
  sub_227668900();
  (*(v9 + 8))(v11, v8);
  __swift_destroy_boxed_opaque_existential_0(v37);
  v16 = v28;
  __swift_project_boxed_opaque_existential_0((v28 + 376), *(v28 + 400));
  v17 = off_283AA5528[0];
  type metadata accessor for AssetScriptClient();
  v18 = v30;
  v19 = v15;
  v17(v15);
  v20 = v29;
  v21 = v31;
  v22 = v33;
  (*(v29 + 16))(v31, v18, v33);
  v23 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v24 = (v32 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v20 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_22744F338;
  v26[1] = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
  sub_227669270();
  (*(v20 + 8))(v18, v22);
  return (*(v34 + 8))(v19, v35);
}

uint64_t sub_227448F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a1;
  v46 = a2;
  v5 = sub_2276642E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v7;
  v39 = v7;
  v9 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v44 = *(v10 - 8);
  v45 = v10;
  v43 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v42 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v36 = &v33 - v13;
  v34 = v3[75];
  v40 = v3[76];
  v35 = __swift_project_boxed_opaque_existential_0(v3 + 72, v34);
  v37 = *(v6 + 16);
  v33 = v5;
  v37(v9, a1, v5);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = swift_allocObject();
  v17 = *(v6 + 32);
  v17(v16 + v15, v9, v5);
  *(v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  v18 = sub_2276624A0();
  v41 = v18;

  v19 = v36;
  sub_226ECF5D8(sub_22744F3FC, v16, v34, v18, v40, v36);

  v20 = v33;
  v37(v9, v38, v33);
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  v17(v21 + ((v14 + 24) & ~v14), v9, v20);
  v22 = v44;
  v23 = v42;
  v24 = v19;
  v25 = v19;
  v26 = v45;
  (*(v44 + 16))(v42, v24, v45);
  v27 = v22;
  v28 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v29 = (v43 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v23, v26);
  v31 = (v30 + v29);
  *v31 = sub_22744F4A4;
  v31[1] = v21;

  sub_227669270();
  return (*(v27 + 8))(v25, v26);
}

void sub_22744930C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  __swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520));
  sub_2276696A0();
  if (!v4)
  {
    v8 = sub_22707AC34(v9, v10, a3, a1);

    *a4 = v8;
  }
}

uint64_t sub_2274493C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276728D0;
  __swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520));
  sub_2276696A0();
  if (v4)
  {
    goto LABEL_3;
  }

  v10 = v85;
  *(inited + 32) = v84;
  *(inited + 40) = v10;
  __swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_2276696A0();
  v12 = v85;
  if (!v85)
  {
    v19 = sub_227663190();
    sub_22744F3B4(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D4FD80], v19);
    swift_willThrow();

LABEL_3:
    swift_setDeallocating();
    return swift_arrayDestroy();
  }

  v87 = a3;
  v76 = a4;
  v79 = 0;
  *(inited + 48) = v84;
  *(inited + 56) = v12;
  v78 = sub_226F3E6A8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v13 = *(sub_227663440() + 16);
  if (v13)
  {
    v81 = a1;
    v84 = MEMORY[0x277D84F90];
    sub_226F1F468(0, v13, 0);
    v14 = 32;
    v15 = v84;
    while (1)
    {
      v16 = sub_227663450();
      if (v16 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v16 > 0x7FFFFFFF)
      {
        goto LABEL_33;
      }

      v84 = v15;
      a4 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (a4 >= v17 >> 1)
      {
        v18 = v16;
        sub_226F1F468((v17 > 1), a4 + 1, 1);
        LODWORD(v16) = v18;
        v15 = v84;
      }

      *(v15 + 16) = a4 + 1;
      *(v15 + 4 * a4 + 32) = v16;
      ++v14;
      if (!--v13)
      {

        a1 = v81;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
LABEL_15:
    v21 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(v21 + 16);
    v25 = v21[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    a4 = swift_allocObject();
    v26 = v22;
    v27 = v23;

    sub_22766A070();
    *(a4 + 16) = v26;
    *(a4 + 24) = v27;
    *(a4 + 32) = v24;
    *(a4 + 40) = v25;
    swift_getKeyPath();
    sub_227230638(v87);
    v29 = v28;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
    v86 = v77;
    v84 = v29;
    v30 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v87 = v30;
    v31 = sub_22766C820();
    sub_226E93170(&v84, v82, &unk_27D7BC990, &qword_227670A30);
    v32 = v83;
    if (v83)
    {
      v33 = __swift_project_boxed_opaque_existential_0(v82, v83);
      v34 = *(v32 - 8);
      v35 = MEMORY[0x28223BE20](v33);
      v37 = &v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v34 + 16))(v37, v35);
      v38 = sub_22766D170();
      (*(v34 + 8))(v37, v32);
      __swift_destroy_boxed_opaque_existential_0(v82);
    }

    else
    {
      v38 = 0;
    }

    v81 = objc_opt_self();
    v39 = [v81 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
    [objc_allocWithZone(v80) initWithLeftExpression:v31 rightExpression:v39 modifier:0 type:10 options:0];

    sub_226E97D1C(&v84, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v13 = sub_22766A080();
    v41 = v40;
    MEMORY[0x22AA985C0]();
    if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }
  }

  sub_22766C360();
LABEL_19:
  sub_22766C3A0();
  (v13)(&v84, 0);
  swift_endAccess();

  swift_getKeyPath();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC3E8, &unk_227685D70);
  v84 = v15;

  v42 = sub_22766C820();
  sub_226E93170(&v84, v82, &unk_27D7BC990, &qword_227670A30);
  v43 = v83;
  if (v83)
  {
    v44 = __swift_project_boxed_opaque_existential_0(v82, v83);
    v45 = *(v43 - 8);
    v46 = MEMORY[0x28223BE20](v44);
    v48 = &v75 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v45 + 16))(v48, v46);
    v49 = sub_22766D170();
    (*(v45 + 8))(v48, v43);
    __swift_destroy_boxed_opaque_existential_0(v82);
  }

  else
  {
    v49 = 0;
  }

  v50 = [v81 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(v80) initWithLeftExpression:v42 rightExpression:v50 modifier:0 type:10 options:0];

  sub_226E97D1C(&v84, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v51 = sub_22766A080();
  v53 = v52;
  MEMORY[0x22AA985C0]();
  if (*((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v51(&v84, 0);
  swift_endAccess();

  swift_getKeyPath();
  sub_227230638(v78);
  v55 = v54;

  v86 = v77;
  v84 = v55;

  v56 = sub_22766C820();
  sub_226E93170(&v84, v82, &unk_27D7BC990, &qword_227670A30);
  v57 = v83;
  if (v83)
  {
    v58 = __swift_project_boxed_opaque_existential_0(v82, v83);
    v59 = *(v57 - 8);
    v60 = MEMORY[0x28223BE20](v58);
    v62 = &v75 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v59 + 16))(v62, v60);
    v63 = sub_22766D170();
    (*(v59 + 8))(v62, v57);
    __swift_destroy_boxed_opaque_existential_0(v82);
  }

  else
  {
    v63 = 0;
  }

  v64 = [v81 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(v80) initWithLeftExpression:v56 rightExpression:v64 modifier:0 type:10 options:0];

  sub_226E97D1C(&v84, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v65 = sub_22766A080();
  v67 = v66;
  MEMORY[0x22AA985C0]();
  if (*((*v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v65(&v84, 0);
  swift_endAccess();

  v68 = v79;
  v69 = sub_2272328B8(100);
  if (v68)
  {
    swift_setDeallocating();

    v70 = qword_2813B2078;
    v71 = sub_22766A100();
    (*(*(v71 - 8) + 8))(a4 + v70, v71);
    return swift_deallocClassInstance();
  }

  else
  {
    v72 = v69;
    swift_setDeallocating();

    v73 = qword_2813B2078;
    v74 = sub_22766A100();
    (*(*(v74 - 8) + 8))(a4 + v73, v74);
    result = swift_deallocClassInstance();
    *v76 = v72;
  }

  return result;
}

void sub_227449FF0(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  __swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520));
  sub_2276696A0();
  if (!v3)
  {
    v6 = sub_22707D7F0(v7, v8, a1);

    *a3 = v6;
  }
}

void sub_22744A098(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char **a4@<X8>)
{
  __swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520));
  v8 = sub_227393794(a3 & 1);
  if (!v4)
  {
    v10 = v9;
    v11 = v8;
    v12 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_22744ECE8(v11, v10, *v12, v12[1], *(v12 + 16), v12[3]);

    v13 = sub_2272328B8(100);

    *a4 = v13;
  }
}

void sub_22744A160(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520));
  v8 = sub_227393794(a3 & 1);
  if (!v4)
  {
    v10 = sub_22707D6D4(v8, v9, a1);

    *a4 = v10;
  }
}

char *sub_22744A1F4@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_22707B578(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_22744A220(void *a1@<X0>, char **a2@<X8>)
{
  sub_2276625E0();
  v6 = sub_22707F154(a1, v5);
  if (!v2)
  {
    v7 = sub_22707B7C4(v6, a1);

    *a2 = v7;
  }
}

char *sub_22744A28C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_22707FF94(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22744A2B8@<X0>(void (***a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_0((a2 + 176), *(a2 + 200));
  result = sub_227076360(a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_22744A34C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = v68 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8620, &qword_2276711C0);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = v68 - v8;
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  v13 = v9[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v14 = swift_allocObject();
  v15 = v10;
  v16 = v11;

  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v12;
  *(v14 + 40) = v13;
  swift_getKeyPath();
  v17 = sub_227662390();
  v19 = v18;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v75[0] = v17;
  v75[1] = v19;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v20 = sub_22766C820();
  sub_226E93170(v75, v73, &unk_27D7BC990, &qword_227670A30);
  v21 = v74;
  if (v74)
  {
    v22 = __swift_project_boxed_opaque_existential_0(v73, v74);
    v23 = *(v21 - 8);
    v24 = MEMORY[0x28223BE20](v22);
    v26 = v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    v27 = sub_22766D170();
    (*(v23 + 8))(v26, v21);
    __swift_destroy_boxed_opaque_existential_0(v73);
  }

  else
  {
    v27 = 0;
  }

  v28 = objc_opt_self();
  v29 = [v28 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590, &unk_2276777E0);
  v30 = [objc_allocWithZone(v71) initWithLeftExpression:v20 rightExpression:v29 modifier:0 type:4 options:0];

  sub_226E97D1C(v75, &unk_27D7BC990, &qword_227670A30);
  v31 = qword_2813B2078;
  swift_beginAccess();
  v32 = v30;
  v33 = sub_22766A080();
  v35 = v34;
  MEMORY[0x22AA985C0]();
  if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v33(v75, 0);
  swift_endAccess();

  swift_getKeyPath();
  v36 = sub_227664570();
  v76 = MEMORY[0x277D83B88];
  v75[0] = v36;

  v37 = sub_22766C820();
  sub_226E93170(v75, v73, &unk_27D7BC990, &qword_227670A30);
  v38 = v74;
  if (v74)
  {
    v39 = __swift_project_boxed_opaque_existential_0(v73, v74);
    v68[1] = v31;
    v40 = v28;
    v41 = *(v38 - 8);
    v42 = MEMORY[0x28223BE20](v39);
    v44 = v68 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v44, v42);
    v45 = sub_22766D170();
    (*(v41 + 8))(v44, v38);
    v28 = v40;
    __swift_destroy_boxed_opaque_existential_0(v73);
  }

  else
  {
    v45 = 0;
  }

  v46 = [v28 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v47 = [objc_allocWithZone(v71) initWithLeftExpression:v37 rightExpression:v46 modifier:0 type:4 options:0];

  sub_226E97D1C(v75, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v48 = v47;
  v49 = sub_22766A080();
  v51 = v50;
  MEMORY[0x22AA985C0]();
  if (*((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v49(v75, 0);
  swift_endAccess();

  v52 = MEMORY[0x22AA99A00]();
  v53 = v72;
  sub_227544DD4(v77);
  if (v53)
  {
    objc_autoreleasePoolPop(v52);
    swift_setDeallocating();

    v54 = qword_2813B2078;
    v55 = sub_22766A100();
    (*(*(v55 - 8) + 8))(v14 + v54, v55);
    return swift_deallocClassInstance();
  }

  objc_autoreleasePoolPop(v52);
  swift_setDeallocating();

  v57 = qword_2813B2078;
  v58 = sub_22766A100();
  (*(*(v58 - 8) + 8))(v14 + v57, v58);
  swift_deallocClassInstance();
  v59 = v69;
  sub_226E93170(v77, v69, &qword_27D7B8620, &qword_2276711C0);
  v60 = sub_227663180();
  v61 = *(v60 - 8);
  if ((*(v61 + 48))(v59, 1, v60) == 1)
  {
    sub_226E97D1C(v59, &qword_27D7B8620, &qword_2276711C0);
    v62 = sub_2276624A0();
    v63 = v70;
    (*(*(v62 - 8) + 56))(v70, 1, 1, v62);
LABEL_16:
    sub_226E97D1C(v63, &unk_27D7BB570, &unk_227670FC0);
    v66 = sub_227663190();
    sub_22744F3B4(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    swift_allocError();
    (*(*(v66 - 8) + 104))(v67, *MEMORY[0x277D4FD58], v66);
    swift_willThrow();
    return sub_226E97D1C(v77, &qword_27D7B8620, &qword_2276711C0);
  }

  v63 = v70;
  sub_227663160();
  (*(v61 + 8))(v59, v60);
  v64 = sub_2276624A0();
  v65 = *(v64 - 8);
  if ((*(v65 + 48))(v63, 1, v64) == 1)
  {
    goto LABEL_16;
  }

  sub_226E97D1C(v77, &qword_27D7B8620, &qword_2276711C0);
  return (*(v65 + 32))(v68[0], v63, v64);
}

uint64_t sub_22744ADBC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v194 = a3;
  v200 = a4;
  v6 = sub_22766B390();
  v198 = *(v6 - 8);
  v199 = v6;
  MEMORY[0x28223BE20](v6);
  v203 = &v186 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v190 = &v186 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v10 - 8);
  v202 = &v186 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8620, &qword_2276711C0);
  MEMORY[0x28223BE20](v12 - 8);
  v201 = (&v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v205 = &v186 - v15;
  v216 = sub_2276624A0();
  v209 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v197 = &v186 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v189 = &v186 - v18;
  MEMORY[0x28223BE20](v19);
  v196 = &v186 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v186 - v22;
  v192 = a2;
  sub_227664240();
  v24 = a1[3];
  v191 = a1;
  v25 = __swift_project_boxed_opaque_existential_0(a1, v24);
  v26 = *v25;
  v27 = v25[1];
  v28 = *(v25 + 16);
  v29 = v25[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v30 = swift_allocObject();
  v31 = v26;
  v32 = v27;

  sub_22766A070();
  *(v30 + 16) = v31;
  *(v30 + 24) = v32;
  *(v30 + 32) = v28;
  *(v30 + 40) = v29;
  swift_getKeyPath();
  v210 = v23;
  v33 = sub_227662390();
  v35 = v34;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v215 = v193;
  v213 = v33;
  v214 = v35;
  v36 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v37 = sub_22766C820();
  sub_226E93170(&v213, v211, &unk_27D7BC990, &qword_227670A30);
  v38 = v212;
  if (v212)
  {
    v39 = __swift_project_boxed_opaque_existential_0(v211, v212);
    v40 = *(v38 - 8);
    v41 = MEMORY[0x28223BE20](v39);
    v43 = &v186 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v43, v41);
    v44 = sub_22766D170();
    (*(v40 + 8))(v43, v38);
    __swift_destroy_boxed_opaque_existential_0(v211);
  }

  else
  {
    v44 = 0;
  }

  v45 = objc_opt_self();
  v46 = [v45 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590, &unk_2276777E0);
  v47 = [objc_allocWithZone(v206) initWithLeftExpression:v37 rightExpression:v46 modifier:0 type:4 options:0];

  sub_226E97D1C(&v213, &unk_27D7BC990, &qword_227670A30);
  v48 = qword_2813B2078;
  swift_beginAccess();
  v49 = v47;
  v207 = v48;
  v50 = sub_22766A080();
  v52 = v51;
  MEMORY[0x22AA985C0]();
  if (*((*v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v50(&v213, 0);
  swift_endAccess();

  swift_getKeyPath();
  v53 = sub_227664570();
  v215 = MEMORY[0x277D83B88];
  v213 = v53;

  v195 = v36;
  v54 = sub_22766C820();
  sub_226E93170(&v213, v211, &unk_27D7BC990, &qword_227670A30);
  v55 = v212;
  v204 = v45;
  if (v212)
  {
    v56 = __swift_project_boxed_opaque_existential_0(v211, v212);
    v57 = *(v55 - 8);
    v58 = MEMORY[0x28223BE20](v56);
    v60 = &v186 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v57 + 16))(v60, v58);
    v61 = sub_22766D170();
    (*(v57 + 8))(v60, v55);
    v45 = v204;
    __swift_destroy_boxed_opaque_existential_0(v211);
  }

  else
  {
    v61 = 0;
  }

  v62 = v209;
  v63 = [v45 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v64 = [objc_allocWithZone(v206) initWithLeftExpression:v54 rightExpression:v63 modifier:0 type:4 options:0];

  sub_226E97D1C(&v213, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v65 = v64;
  v66 = sub_22766A080();
  v68 = v67;
  MEMORY[0x22AA985C0]();
  if (*((*v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v66(&v213, 0);
  swift_endAccess();

  v69 = v208;
  v70 = sub_2272325B8(100);
  if (v69)
  {
    (*(v62 + 8))(v210, v216);
    swift_setDeallocating();

    v71 = qword_2813B2078;
    v72 = sub_22766A100();
    (*(*(v72 - 8) + 8))(v30 + v71, v72);
    return swift_deallocClassInstance();
  }

  v74 = v70;
  swift_setDeallocating();

  v75 = qword_2813B2078;
  v76 = sub_22766A100();
  v77 = *(v76 - 8);
  v78 = *(v77 + 8);
  v79 = (v77 + 8);
  v78(v30 + v75, v76);
  swift_deallocClassInstance();
  v80 = v205;
  sub_22722AE54(v74, v205);

  v81 = v201;
  sub_226E93170(v80, v201, &qword_27D7B8620, &qword_2276711C0);
  v82 = sub_227663180();
  v83 = *(v82 - 8);
  if ((*(v83 + 48))(v81, 1, v82) == 1)
  {
    sub_226E97D1C(v81, &qword_27D7B8620, &qword_2276711C0);
    v84 = v202;
    v85 = v216;
    (*(v62 + 56))(v202, 1, 1, v216);
    v86 = v210;
LABEL_16:
    sub_226E97D1C(v84, &unk_27D7BB570, &unk_227670FC0);
    v90 = v203;
    sub_22766A6C0();
    v91 = v197;
    (*(v62 + 16))(v197, v86, v85);
    v92 = sub_22766B380();
    v93 = sub_22766C8B0();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = v91;
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v213 = v96;
      *v95 = 141558274;
      *(v95 + 4) = 1752392040;
      *(v95 + 12) = 2080;
      v97 = sub_227662390();
      v99 = v98;
      (*(v62 + 8))(v94, v216);
      v100 = sub_226E97AE8(v97, v99, &v213);

      *(v95 + 14) = v100;
      _os_log_impl(&dword_226E8E000, v92, v93, "Preferred URL - no local URL. Using remote URL: %{mask.hash}s", v95, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x22AA9A450](v96, -1, -1);
      v85 = v216;
      MEMORY[0x22AA9A450](v95, -1, -1);

      (*(v198 + 8))(v203, v199);
    }

    else
    {

      (*(v62 + 8))(v91, v85);
      (*(v198 + 8))(v90, v199);
    }

    sub_226E97D1C(v205, &qword_27D7B8620, &qword_2276711C0);
    return (*(v62 + 32))(v200, v210, v85);
  }

  v208 = v79;
  v87 = v202;
  sub_227663160();
  (*(v83 + 8))(v81, v82);
  v84 = v87;
  v88 = v87;
  v85 = v216;
  v89 = (*(v62 + 48))(v88, 1, v216);
  v86 = v210;
  if (v89 == 1)
  {
    goto LABEL_16;
  }

  v207 = v76;
  v101 = *(v62 + 32);
  v101(v196, v84, v85);
  __swift_project_boxed_opaque_existential_0(v194 + 62, v194[65]);
  sub_2276696A0();
  v201 = v78;
  v187 = v101;
  v188 = v62 + 32;
  v206 = 0;
  v102 = v213;
  v103 = v214;
  v104 = __swift_project_boxed_opaque_existential_0(v191, v191[3]);
  v105 = *v104;
  v106 = v104[1];
  v107 = *(v104 + 16);
  v108 = v104[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v109 = swift_allocObject();
  v110 = v105;
  v111 = v106;

  sub_22766A070();
  v203 = v110;
  *(v109 + 16) = v110;
  *(v109 + 24) = v111;
  v197 = v111;
  *(v109 + 32) = v107;
  v202 = v108;
  *(v109 + 40) = v108;
  swift_getKeyPath();
  v215 = v193;
  v213 = v102;
  v214 = v103;

  v112 = sub_22766C820();
  sub_226E93170(&v213, v211, &unk_27D7BC990, &qword_227670A30);
  v113 = v212;
  if (v212)
  {
    v114 = __swift_project_boxed_opaque_existential_0(v211, v212);
    v115 = *(v113 - 8);
    v116 = MEMORY[0x28223BE20](v114);
    v118 = &v186 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v115 + 16))(v118, v116);
    v119 = sub_22766D170();
    (*(v115 + 8))(v118, v113);
    __swift_destroy_boxed_opaque_existential_0(v211);
  }

  else
  {
    v119 = 0;
  }

  v120 = v204;
  v121 = [v204 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  v122 = [objc_allocWithZone(v208) initWithLeftExpression:v112 rightExpression:v121 modifier:0 type:4 options:0];

  sub_226E97D1C(&v213, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v123 = v122;
  v124 = sub_22766A080();
  v126 = v125;
  MEMORY[0x22AA985C0]();
  if (*((*v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v124(&v213, 0);
  swift_endAccess();

  swift_getKeyPath();
  v127 = sub_227664570();
  v215 = MEMORY[0x277D83B88];
  v213 = v127;

  v128 = sub_22766C820();
  sub_226E93170(&v213, v211, &unk_27D7BC990, &qword_227670A30);
  v129 = v212;
  if (v212)
  {
    v130 = __swift_project_boxed_opaque_existential_0(v211, v212);
    v194 = &v186;
    v131 = *(v129 - 8);
    v132 = MEMORY[0x28223BE20](v130);
    v134 = &v186 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v131 + 16))(v134, v132);
    v135 = sub_22766D170();
    (*(v131 + 8))(v134, v129);
    v120 = v204;
    __swift_destroy_boxed_opaque_existential_0(v211);
  }

  else
  {
    v135 = 0;
  }

  v136 = [v120 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v137 = [objc_allocWithZone(v208) initWithLeftExpression:v128 rightExpression:v136 modifier:0 type:4 options:0];

  sub_226E97D1C(&v213, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v138 = v137;
  v139 = sub_22766A080();
  v141 = v140;
  MEMORY[0x22AA985C0]();
  if (*((*v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v141 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v139(&v213, 0);
  swift_endAccess();

  swift_getKeyPath();
  v142 = sub_227664230();
  v215 = v193;
  v213 = v142;
  v214 = v143;

  v144 = sub_22766C820();
  sub_226E93170(&v213, v211, &unk_27D7BC990, &qword_227670A30);
  v145 = v212;
  if (v212)
  {
    v146 = __swift_project_boxed_opaque_existential_0(v211, v212);
    v195 = &v186;
    v147 = *(v145 - 8);
    v148 = MEMORY[0x28223BE20](v146);
    v150 = &v186 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v147 + 16))(v150, v148);
    v151 = sub_22766D170();
    (*(v147 + 8))(v150, v145);
    v120 = v204;
    __swift_destroy_boxed_opaque_existential_0(v211);
  }

  else
  {
    v151 = 0;
  }

  v152 = v209;
  v153 = [v120 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v154 = [objc_allocWithZone(v208) initWithLeftExpression:v144 rightExpression:v153 modifier:0 type:4 options:0];

  sub_226E97D1C(&v213, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v155 = v154;
  v156 = sub_22766A080();
  v158 = v157;
  MEMORY[0x22AA985C0]();
  if (*((*v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v156(&v213, 0);
  swift_endAccess();

  v159 = v206;
  v160 = sub_227284664(0);
  if (v159)
  {

    swift_setDeallocating();
    v201(v109 + qword_2813B2078, v207);
    swift_deallocClassInstance();
    v161 = *(v152 + 8);
    v162 = v216;
    v161(v196, v216);
    sub_226E97D1C(v205, &qword_27D7B8620, &qword_2276711C0);
    return (v161)(v210, v162);
  }

  else
  {
    v163 = v160;
    [v160 setResultType_];
    [v163 setFetchLimit_];
    [v163 setFetchOffset_];
    [v163 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v164 = v203;
    v165 = sub_22766C9D0();
    v166 = v216;
    v167 = v196;
    v168 = v165;

    swift_setDeallocating();
    v201(v109 + qword_2813B2078, v207);
    swift_deallocClassInstance();
    if (v168 <= 0)
    {
      v206 = 0;
      v169 = v166;
      v170 = v190;
      sub_22766A6C0();
      v171 = v189;
      v172 = v210;
      (*(v152 + 16))(v189, v210, v169);
      v173 = sub_22766B380();
      v174 = sub_22766C8B0();
      if (os_log_type_enabled(v173, v174))
      {
        v175 = swift_slowAlloc();
        v176 = v171;
        v177 = swift_slowAlloc();
        v213 = v177;
        *v175 = 141558274;
        *(v175 + 4) = 1752392040;
        *(v175 + 12) = 2080;
        v178 = sub_227662390();
        v180 = v179;
        v181 = *(v152 + 8);
        v181(v176, v216);
        v182 = sub_226E97AE8(v178, v180, &v213);

        *(v175 + 14) = v182;
        _os_log_impl(&dword_226E8E000, v173, v174, "Preferred URL - have local URL, but bundle isn't completed. Using remote URL: %{mask.hash}s", v175, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v177);
        v183 = v177;
        v172 = v210;
        MEMORY[0x22AA9A450](v183, -1, -1);
        v184 = v175;
        v169 = v216;
        MEMORY[0x22AA9A450](v184, -1, -1);

        (*(v198 + 8))(v190, v199);
        v181(v196, v169);
      }

      else
      {

        v185 = *(v152 + 8);
        v185(v171, v169);
        (*(v198 + 8))(v170, v199);
        v185(v196, v169);
      }

      sub_226E97D1C(v205, &qword_27D7B8620, &qword_2276711C0);
      return v187(v200, v172, v169);
    }

    else
    {
      sub_226E97D1C(v205, &qword_27D7B8620, &qword_2276711C0);
      (*(v152 + 8))(v210, v166);
      return v187(v200, v167, v166);
    }
  }
}

uint64_t sub_22744C878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a3;
  v62 = a2;
  v75 = a4;
  v5 = sub_2276642E0();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  v63 = v6;
  v64 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 8);
  MEMORY[0x28223BE20](v7);
  v68 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v61 - v10;
  v11 = sub_2276624A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  v18 = sub_22766B390();
  v73 = *(v18 - 8);
  v74 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - v22;
  if ((sub_2276622E0() & 1) == 0)
  {
    (*(v12 + 16))(v14, a1, v11);
    v39 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v40 = swift_allocObject();
    (*(v12 + 32))(v40 + v39, v14, v11);
    return sub_227669280();
  }

  v61 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v11;
  sub_227662450();
  v24 = [objc_opt_self() defaultManager];
  v25 = sub_22766BFD0();

  v26 = [v24 fileExistsAtPath_];

  if (v26)
  {
    sub_22766A6C0();
    v27 = *(v12 + 16);
    v28 = v72;
    v27(v17, a1, v72);
    v29 = sub_22766B380();
    v30 = sub_22766C8B0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v70 = v27;
      v71 = a1;
      v32 = v31;
      v33 = swift_slowAlloc();
      v76 = v33;
      *v32 = 141558274;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2080;
      LODWORD(v69) = v30;
      v34 = sub_227662390();
      v36 = v35;
      (*(v12 + 8))(v17, v72);
      v37 = sub_226E97AE8(v34, v36, &v76);
      v28 = v72;

      *(v32 + 14) = v37;
      _os_log_impl(&dword_226E8E000, v29, v69, "Preferred URL - have local URL with completed bundle. Using local URL: %{mask.hash}s", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AA9A450](v33, -1, -1);
      v38 = v32;
      v27 = v70;
      a1 = v71;
      MEMORY[0x22AA9A450](v38, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v17, v28);
    }

    (*(v73 + 8))(v23, v74);
    v58 = v61;
    v27(v61, a1, v28);
    v59 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v60 = swift_allocObject();
    (*(v12 + 32))(v60 + v59, v58, v28);
    return sub_227669280();
  }

  sub_22766A6C0();
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_226E8E000, v41, v42, "Running asset validator on media streams...", v43, 2u);
    MEMORY[0x22AA9A450](v43, -1, -1);
  }

  (*(v73 + 8))(v20, v74);
  __swift_project_boxed_opaque_existential_0((v62 + 416), *(v62 + 440));
  v44 = v69;
  sub_22708193C(byte_283A950D8, v69);
  v45 = v66;
  v46 = v64;
  v47 = v67;
  (*(v66 + 16))(v64, v65, v67);
  v48 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v49 = swift_allocObject();
  (*(v45 + 32))(v49 + v48, v46, v47);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_22744F568;
  *(v50 + 24) = v49;
  v52 = v70;
  v51 = v71;
  v53 = v68;
  (*(v70 + 2))(v68, v44, v71);
  v54 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v55 = swift_allocObject();
  (*(v52 + 4))(v55 + v54, v53, v51);
  v56 = (v55 + ((v8 + v54 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v56 = sub_226F09740;
  v56[1] = v50;
  sub_227669270();
  return (*(v52 + 1))(v44, v51);
}

uint64_t sub_22744D034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_2276624A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v32[-v8];
  v10 = sub_2276642E0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_22766B390();
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22766A6C0();
  v17 = *(v11 + 16);
  v40 = a1;
  v17(v13, a1, v10);
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36 = v3;
    v21 = v20;
    v34 = swift_slowAlloc();
    v42 = v34;
    *v21 = 141558274;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2080;
    v33 = v19;
    sub_227664240();
    v22 = sub_227662390();
    v35 = v6;
    v23 = v9;
    v25 = v24;
    (*(v4 + 8))(v23, v36);
    (*(v11 + 8))(v13, v10);
    v26 = sub_226E97AE8(v22, v25, &v42);
    v9 = v23;
    v6 = v35;

    *(v21 + 14) = v26;
    _os_log_impl(&dword_226E8E000, v18, v33, "Preferred URL - local URL is missing from disk. Using remote URL: %{mask.hash}s", v21, 0x16u);
    v27 = v34;
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x22AA9A450](v27, -1, -1);
    v28 = v21;
    v3 = v36;
    MEMORY[0x22AA9A450](v28, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  (*(v37 + 8))(v16, v38);
  sub_227664240();
  (*(v4 + 16))(v6, v9, v3);
  v29 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v30 = swift_allocObject();
  (*(v4 + 32))(v30 + v29, v6, v3);
  sub_227669280();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_22744D4A8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  v13 = v9[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v14 = swift_allocObject();
  v15 = v10;
  v16 = v11;

  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v12;
  *(v14 + 40) = v13;
  v17 = a4(100);
  if (v5)
  {
    swift_setDeallocating();

    v18 = qword_2813B2078;
    v19 = sub_22766A100();
    (*(*(v19 - 8) + 8))(v14 + v18, v19);
    return swift_deallocClassInstance();
  }

  else
  {
    v21 = v17;
    swift_setDeallocating();

    v22 = qword_2813B2078;
    v23 = sub_22766A100();
    (*(*(v23 - 8) + 8))(v14 + v22, v23);
    result = swift_deallocClassInstance();
    *a5 = v21;
  }

  return result;
}

uint64_t sub_22744D6D8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD400, qword_22767B9F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  v12 = *a1;
  v13 = a2[75];
  v14 = a2[76];
  __swift_project_boxed_opaque_existential_0(a2 + 72, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6C0, qword_227670F00);
  sub_226ECF5D8(sub_22744F368, v15, v13, v16, v14, v11);

  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  (*(v6 + 16))(v8, v11, v5);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v6 + 32))(v20 + v18, v8, v5);
  v21 = (v20 + v19);
  *v21 = sub_22744F384;
  v21[1] = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
  sub_227669270();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_22744D950@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v71 = a3;
  v81 = sub_2276624A0();
  v5 = *(v81 - 1);
  MEMORY[0x28223BE20](v81);
  v76 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v12 = swift_allocObject();
  v13 = v8;
  v14 = v9;

  v15 = MEMORY[0x277D84F90];
  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  KeyPath = swift_getKeyPath();
  v17 = *(a2 + 16);
  if (v17)
  {
    v69 = KeyPath;
    v70 = v12;
    v79[0] = v15;
    sub_226F1EFF0(0, v17, 0);
    v15 = v79[0];
    v19 = *(v5 + 16);
    v18 = v5 + 16;
    v20 = a2 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v73 = *(v18 + 56);
    v74 = v19;
    v75 = v18;
    v21 = (v18 - 8);
    do
    {
      v22 = v76;
      v23 = v81;
      v74(v76, v20, v81);
      v24 = sub_227662390();
      v26 = v25;
      (*v21)(v22, v23);
      v79[0] = v15;
      v28 = *(v15 + 16);
      v27 = *(v15 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_226F1EFF0((v27 > 1), v28 + 1, 1);
        v15 = v79[0];
      }

      *(v15 + 16) = v28 + 1;
      v29 = v15 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v20 += v73;
      --v17;
    }

    while (v17);
    v12 = v70;
  }

  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v79[0] = v15;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v30 = sub_22766C820();
  sub_226E93170(v79, v77, &unk_27D7BC990, &qword_227670A30);
  v31 = v78;
  if (v78)
  {
    v32 = __swift_project_boxed_opaque_existential_0(v77, v78);
    v33 = *(v31 - 8);
    v34 = MEMORY[0x28223BE20](v32);
    v36 = &v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v36, v34);
    v37 = sub_22766D170();
    (*(v33 + 8))(v36, v31);
    __swift_destroy_boxed_opaque_existential_0(v77);
  }

  else
  {
    v37 = 0;
  }

  v81 = objc_opt_self();
  v38 = [v81 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590, &unk_2276777E0);
  [objc_allocWithZone(v39) initWithLeftExpression:v30 rightExpression:v38 modifier:0 type:10 options:0];

  sub_226E97D1C(v79, &unk_27D7BC990, &qword_227670A30);
  v40 = qword_2813B2078;
  swift_beginAccess();
  v41 = sub_22766A080();
  v43 = v42;
  MEMORY[0x22AA985C0]();
  if (*((*v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v76 = v40;
    sub_22766C360();
  }

  sub_22766C3A0();
  v41(v79, 0);
  swift_endAccess();

  swift_getKeyPath();
  v44 = sub_227664570();
  v80 = MEMORY[0x277D83B88];
  v79[0] = v44;

  v45 = sub_22766C820();
  sub_226E93170(v79, v77, &unk_27D7BC990, &qword_227670A30);
  v46 = v78;
  if (v78)
  {
    v47 = __swift_project_boxed_opaque_existential_0(v77, v78);
    v76 = &v69;
    v48 = v39;
    v49 = v12;
    v50 = *(v46 - 8);
    v51 = MEMORY[0x28223BE20](v47);
    v53 = &v69 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v50 + 16))(v53, v51);
    v54 = sub_22766D170();
    (*(v50 + 8))(v53, v46);
    v12 = v49;
    v39 = v48;
    __swift_destroy_boxed_opaque_existential_0(v77);
  }

  else
  {
    v54 = 0;
  }

  v55 = [v81 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v56 = [objc_allocWithZone(v39) initWithLeftExpression:v45 rightExpression:v55 modifier:0 type:4 options:0];

  sub_226E97D1C(v79, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v57 = v56;
  v58 = sub_22766A080();
  v60 = v59;
  MEMORY[0x22AA985C0]();
  if (*((*v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v58(v79, 0);
  swift_endAccess();

  v61 = v72;
  v62 = sub_2272325B8(100);
  if (v61)
  {
    swift_setDeallocating();

    v63 = qword_2813B2078;
    v64 = sub_22766A100();
    (*(*(v64 - 8) + 8))(v12 + v63, v64);
    return swift_deallocClassInstance();
  }

  else
  {
    v66 = v62;
    swift_setDeallocating();

    v67 = qword_2813B2078;
    v68 = sub_22766A100();
    (*(*(v68 - 8) + 8))(v12 + v67, v68);
    result = swift_deallocClassInstance();
    *v71 = v66;
  }

  return result;
}

uint64_t sub_22744E210@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v13);
  v51 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  v21 = sub_2274487A8(*a1);
  v22 = sub_226F40798(v21);

  v47 = *(a2 + 16);
  if (v47)
  {
    v42 = v17;
    v43 = v9;
    v44 = v20;
    v45 = v7;
    v46 = a3;
    v23 = 0;
    v26 = *(v7 + 16);
    v25 = v7 + 16;
    v24 = v26;
    v48 = a2 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v27 = *(v25 + 56);
    v50 = v22 + 56;
    v28 = (v25 - 8);
    v29 = v51;
    while (1)
    {
      v49 = v23;
      v24(v29, v48 + v27 * v23, v6);
      if (*(v22 + 16))
      {
        sub_22744F3B4(&qword_28139BDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        v30 = sub_22766BF50();
        v29 = v51;
        v31 = -1 << *(v22 + 32);
        v32 = v30 & ~v31;
        if ((*(v50 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
        {
          break;
        }
      }

LABEL_3:
      v23 = v49 + 1;
      (*v28)(v29, v6);
      if (v23 == v47)
      {

        v35 = 1;
        v7 = v45;
        v20 = v44;
        goto LABEL_11;
      }
    }

    v33 = ~v31;
    while (1)
    {
      v24(v12, *(v22 + 48) + v32 * v27, v6);
      sub_22744F3B4(&qword_28139BDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v34 = sub_22766BFB0();
      (*v28)(v12, v6);
      if (v34)
      {
        break;
      }

      v32 = (v32 + 1) & v33;
      v29 = v51;
      if (((*(v50 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v20 = v44;
    v7 = v45;
    (*(v45 + 32))(v44, v51, v6);
    v35 = 0;
LABEL_11:
    v17 = v42;
    v9 = v43;
  }

  else
  {

    v35 = 1;
  }

  (*(v7 + 56))(v20, v35, 1, v6);
  sub_226E93170(v20, v17, &unk_27D7BB570, &unk_227670FC0);
  if ((*(v7 + 48))(v17, 1, v6) == 1)
  {
    sub_226E97D1C(v17, &unk_27D7BB570, &unk_227670FC0);
    *(swift_allocObject() + 16) = MEMORY[0x277D84FA0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
    sub_227669280();
  }

  else
  {
    (*(v7 + 32))(v9, v17, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC38, &unk_22767FF60);
    v36 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_227670CD0;
    (*(v7 + 16))(v37 + v36, v9, v6);
    v38 = sub_226F4F878(v37);
    swift_setDeallocating();
    v39 = *(v7 + 8);
    v39(v37 + v36, v6);
    swift_deallocClassInstance();
    *(swift_allocObject() + 16) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
    sub_227669280();
    v39(v9, v6);
  }

  return sub_226E97D1C(v20, &unk_27D7BB570, &unk_227670FC0);
}

void sub_22744E7E8(void *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_227670CD0;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;

  v14 = sub_226F87158(v13, 0, 1, a1);

  if (!v4)
  {
    if (*(v14 + 16))
    {
      v15 = sub_2276642E0();
      (*(*(v15 - 8) + 16))(a4, v14 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)), v15);
    }

    else
    {

      sub_22766A6C0();

      v16 = sub_22766B380();
      v17 = sub_22766C8B0();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v23 = v19;
        *v18 = 136446210;
        *(v18 + 4) = sub_226E97AE8(a2, a3, &v23);
        _os_log_impl(&dword_226E8E000, v16, v17, "[Request Provider] Bundle requests - Catalog workout not found for identifier %{public}s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x22AA9A450](v19, -1, -1);
        MEMORY[0x22AA9A450](v18, -1, -1);
      }

      (*(v10 + 8))(v12, v9);
      v20 = sub_227663190();
      sub_22744F3B4(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D4FD68], v20);
      swift_willThrow();
    }
  }
}

uint64_t sub_22744EB04(uint64_t a1, void *a2)
{
  v4 = sub_2276642E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227667D10();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4, v10);
  __swift_project_boxed_opaque_existential_0(a2 + 27, a2[30]);
  __swift_project_boxed_opaque_existential_0(a2 + 27, a2[30]);
  sub_227667D00();
  __swift_project_boxed_opaque_existential_0(a2 + 47, a2[50]);
  v13 = off_283AA5520[0];
  type metadata accessor for AssetScriptClient();
  v13(v12);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22744ECE8(unint64_t a1, uint64_t a2, void *a3, void *a4, char a5, uint64_t a6)
{
  v57 = a1;
  v62[3] = &type metadata for PersistenceHandle;
  v62[4] = &off_283A9AF78;
  v11 = swift_allocObject();
  v62[0] = v11;
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a5;
  *(v11 + 40) = a6;
  v12 = __swift_project_boxed_opaque_existential_0(v62, &type metadata for PersistenceHandle);
  v14 = *v12;
  v13 = v12[1];
  v15 = *(v12 + 16);
  v16 = v12[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v17 = swift_allocObject();
  v18 = a3;
  v19 = a4;

  v20 = v14;
  v21 = v13;

  sub_22766A070();
  *(v17 + 16) = v20;
  *(v17 + 24) = v21;
  *(v17 + 32) = v15;
  *(v17 + 40) = v16;
  swift_getKeyPath();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v60[0] = v57;
  v60[1] = a2;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v22 = sub_22766C820();
  sub_226E93170(v60, v58, &unk_27D7BC990, &qword_227670A30);
  v23 = v59;
  if (v59)
  {
    v24 = __swift_project_boxed_opaque_existential_0(v58, v59);
    v25 = *(v23 - 8);
    v26 = MEMORY[0x28223BE20](v24);
    v28 = &v58[-1] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v28, v26);
    v29 = sub_22766D170();
    (*(v25 + 8))(v28, v23);
    __swift_destroy_boxed_opaque_existential_0(v58);
  }

  else
  {
    v29 = 0;
  }

  v30 = objc_opt_self();
  v31 = &off_2785D6000;
  v32 = [v30 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  v34 = [objc_allocWithZone(v33) initWithLeftExpression:v22 rightExpression:v32 modifier:0 type:4 options:0];

  sub_226E97D1C(v60, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v35 = v34;
  v36 = sub_22766A080();
  v38 = v37;
  MEMORY[0x22AA985C0]();
  if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v57 = *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v36(v60, 0);
  swift_endAccess();

  swift_getKeyPath();
  v39 = sub_227664570();
  v61 = MEMORY[0x277D83B88];
  v60[0] = v39;

  v40 = sub_22766C820();
  sub_226E93170(v60, v58, &unk_27D7BC990, &qword_227670A30);
  v41 = v59;
  if (v59)
  {
    v42 = __swift_project_boxed_opaque_existential_0(v58, v59);
    v57 = &v57;
    v43 = v33;
    v44 = v30;
    v45 = *(v41 - 8);
    v46 = MEMORY[0x28223BE20](v42);
    v48 = &v58[-1] - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v45 + 16))(v48, v46);
    v49 = sub_22766D170();
    (*(v45 + 8))(v48, v41);
    v30 = v44;
    v33 = v43;
    v31 = &off_2785D6000;
    __swift_destroy_boxed_opaque_existential_0(v58);
  }

  else
  {
    v49 = 0;
  }

  v50 = [v30 v31[297]];
  swift_unknownObjectRelease();
  v51 = [objc_allocWithZone(v33) initWithLeftExpression:v40 rightExpression:v50 modifier:0 type:4 options:0];

  sub_226E97D1C(v60, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v52 = v51;
  v53 = sub_22766A080();
  v55 = v54;
  MEMORY[0x22AA985C0]();
  if (*((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v53(v60, 0);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0(v62);
  return v17;
}

uint64_t sub_22744F3B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22744F3FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276642E0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_22744ADBC(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_22744F4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276642E0() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_22744C878(a1, v6, v7, a2);
}

uint64_t sub_22744F568@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_2276642E0() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_22744D034(v4, a1);
}

uint64_t sub_22744F600(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t objectdestroy_42Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

unint64_t sub_22744F7DC(uint64_t a1, uint64_t a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9558, &qword_227674778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276770E0;
  strcpy((inited + 32), "prefersCache");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = sub_22766C400();
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = sub_22766C4E0();
  *(inited + 80) = 0x646F43726F727265;
  *(inited + 88) = 0xE900000000000065;
  if (a2)
  {
    swift_getErrorValue();
    sub_22766D2C0();
    v5 = sub_22766BFD0();

    *(inited + 96) = v5;
    *(inited + 104) = 0x6D6F44726F727265;
    *(inited + 112) = 0xEB000000006E6961;
    swift_getErrorValue();
    sub_22766D2D0();
  }

  else
  {
    v6 = sub_22766BFD0();

    *(inited + 96) = v6;
    *(inited + 104) = 0x6D6F44726F727265;
    *(inited + 112) = 0xEB000000006E6961;
  }

  v7 = sub_22766BFD0();

  *(inited + 120) = v7;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000227696560;
  if (a2)
  {
    swift_getErrorValue();
    v8 = sub_22766D260();
    if (v8)
    {
      v9 = v8;
      swift_getErrorValue();
      sub_22766D2C0();
    }

    v11 = sub_22766BFD0();

    *(inited + 144) = v11;
    *(inited + 152) = 0xD000000000000015;
    *(inited + 160) = 0x8000000227696580;
    swift_getErrorValue();
    v12 = sub_22766D260();
    if (v12)
    {
      v13 = v12;
      swift_getErrorValue();
      sub_22766D2D0();
    }
  }

  else
  {
    v10 = sub_22766BFD0();

    *(inited + 144) = v10;
    *(inited + 152) = 0xD000000000000015;
    *(inited + 160) = 0x8000000227696580;
  }

  v14 = sub_22766BFD0();

  *(inited + 168) = v14;
  v15 = sub_227148D24(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9560, &qword_227674780);
  swift_arrayDestroy();
  return v15;
}

uint64_t sub_22744FB48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22744FBA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

BOOL sub_22744FC08(double a1)
{
  v3 = sub_227665030();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_22766B390();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_227664FA0();
  sub_227662680();
  v14 = v13;
  v15 = *(v10 + 8);
  v15(v12, v9);
  sub_22766A730();
  v16 = *(v4 + 16);
  v29 = v3;
  v16(v6, v1, v3);
  v31 = v8;
  v17 = sub_22766B380();
  v18 = sub_22766C8B0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33 = v28;
    *v19 = 136315650;
    v27 = v18;
    sub_227664FA0();
    sub_227331C00();
    v20 = sub_22766D140();
    v22 = v21;
    v15(v12, v9);
    (*(v4 + 8))(v6, v29);
    v23 = sub_226E97AE8(v20, v22, &v33);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v14;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a1;
    _os_log_impl(&dword_226E8E000, v17, v27, "Last sync: %s, intervalSinceLastSync: %f, syncInterval: %f", v19, 0x20u);
    v24 = v28;
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9A450](v24, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v29);
  }

  (*(v32 + 8))(v31, v30);
  return v14 > a1;
}

uint64_t sub_22744FFA0()
{
  result = sub_226F4A780(&unk_283A91B40);
  qword_2813B20C0 = result;
  return result;
}

uint64_t sub_22744FFC8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D80];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double sub_22745003C()
{
  if (qword_28139B270 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_227450098@<X0>(uint64_t *a2@<X8>)
{
  result = sub_227669430();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2274500C0(uint64_t a1)
{
  *(a1 + 24) = sub_227450128(&qword_2813A54F0, &unk_227673548);
  result = sub_227450128(&unk_2813A54E0, MEMORY[0x277D53C90]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_227450128(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227669480();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22745016C(uint64_t a1)
{
  v71 = sub_2276658E0();
  v2 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_227664E50();
  MEMORY[0x28223BE20](v62);
  v63 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = v55 - v7;
  v66 = sub_227665BA0();
  v8 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    v41 = *(MEMORY[0x277D84F90] + 16);
    v43 = MEMORY[0x277D84F90];
    if (!v41)
    {
LABEL_53:

      return;
    }

LABEL_36:
    v44 = 0;
    v45 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v44 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v46 = *(v43 + 8 * v44 + 32);
      v47 = *(v46 + 16);
      v48 = v45[2];
      v49 = v48 + v47;
      if (__OFADD__(v48, v47))
      {
        goto LABEL_59;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v49 <= v45[3] >> 1)
      {
        if (!*(v46 + 16))
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v48 <= v49)
        {
          v51 = v48 + v47;
        }

        else
        {
          v51 = v48;
        }

        v45 = sub_2273A4E34(isUniquelyReferenced_nonNull_native, v51, 1, v45);
        if (!*(v46 + 16))
        {
LABEL_37:

          if (v47)
          {
            goto LABEL_60;
          }

          goto LABEL_38;
        }
      }

      v52 = (v45[3] >> 1) - v45[2];
      sub_2276640B0();
      if (v52 < v47)
      {
        goto LABEL_61;
      }

      swift_arrayInitWithCopy();

      if (v47)
      {
        v53 = v45[2];
        v36 = __OFADD__(v53, v47);
        v54 = v53 + v47;
        if (v36)
        {
          goto LABEL_62;
        }

        v45[2] = v54;
      }

LABEL_38:
      if (v41 == ++v44)
      {
        goto LABEL_53;
      }
    }
  }

  v72 = MEMORY[0x277D84F90];
  v57 = v10;
  sub_226F1F110(0, v10, 0);
  v12 = 0;
  v14 = *(v8 + 16);
  v13 = v8 + 16;
  v61 = v14;
  v60 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v56 = (v13 - 8);
  v70 = v2 + 16;
  v68 = v72;
  v69 = (v2 + 8);
  v15 = *(v13 + 56);
  v58 = v13;
  v59 = v15;
  v55[0] = v2;
  while (1)
  {
    v64 = v12;
    v61(v65, v60 + v59 * v12, v66);
    v16 = v67;
    sub_227665B70();
    sub_227450838(v16, v63);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v18 = MEMORY[0x277D52890];
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_22745089C(v67, MEMORY[0x277D510D0]);
      (*v56)(v65, v66);
      v26 = *v63;
      goto LABEL_31;
    }

    if (EnumCaseMultiPayload != 3)
    {
      v18 = MEMORY[0x277D52FB8];
    }

    sub_22745089C(v63, v18);
LABEL_26:
    sub_22745089C(v67, MEMORY[0x277D510D0]);
    (*v56)(v65, v66);
    v26 = v11;
LABEL_31:
    v38 = v68;
    v72 = v68;
    v40 = *(v68 + 16);
    v39 = *(v68 + 24);
    v41 = v40 + 1;
    v42 = v64;
    if (v40 >= v39 >> 1)
    {
      sub_226F1F110((v39 > 1), v40 + 1, 1);
      v42 = v64;
      v38 = v72;
    }

    v12 = v42 + 1;
    *(v38 + 16) = v41;
    v68 = v38;
    *(v38 + 8 * v40 + 32) = v26;
    if (v12 == v57)
    {
      v43 = v68;
      goto LABEL_36;
    }
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_26;
  }

  v19 = *v63;
  v20 = *(*v63 + 16);
  if (!v20)
  {

    v11 = MEMORY[0x277D84F90];
    v26 = MEMORY[0x277D84F90];
LABEL_30:
    sub_22745089C(v67, MEMORY[0x277D510D0]);
    (*v56)(v65, v66);
    goto LABEL_31;
  }

  v21 = *(v2 + 80);
  v55[1] = *v63;
  v22 = v19 + ((v21 + 32) & ~v21);
  v23 = v2;
  v24 = *(v2 + 72);
  v25 = *(v23 + 16);
  v26 = MEMORY[0x277D84F90];
  while (2)
  {
    v27 = v71;
    v25(v4, v22, v71);
    v28 = sub_2276658C0();
    (*v69)(v4, v27);
    v29 = *(v28 + 16);
    v30 = v26[2];
    v31 = v30 + v29;
    if (!__OFADD__(v30, v29))
    {
      v32 = swift_isUniquelyReferenced_nonNull_native();
      if (v32 && v31 <= v26[3] >> 1)
      {
        if (!*(v28 + 16))
        {
LABEL_11:

          if (v29)
          {
            goto LABEL_55;
          }

          goto LABEL_12;
        }
      }

      else
      {
        if (v30 <= v31)
        {
          v33 = v30 + v29;
        }

        else
        {
          v33 = v30;
        }

        v26 = sub_2273A4E34(v32, v33, 1, v26);
        if (!*(v28 + 16))
        {
          goto LABEL_11;
        }
      }

      v34 = (v26[3] >> 1) - v26[2];
      sub_2276640B0();
      if (v34 < v29)
      {
        goto LABEL_56;
      }

      swift_arrayInitWithCopy();

      if (v29)
      {
        v35 = v26[2];
        v36 = __OFADD__(v35, v29);
        v37 = v35 + v29;
        if (v36)
        {
          goto LABEL_57;
        }

        v26[2] = v37;
      }

LABEL_12:
      v22 += v24;
      if (!--v20)
      {

        v11 = MEMORY[0x277D84F90];
        v2 = v55[0];
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

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
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

uint64_t sub_227450838(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664E50();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22745089C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2274508FC(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v56 = sub_227666F60();
  v60 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v47 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_227663DD0();
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84B0, &qword_227670D08);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v12 = sub_227663590();
  v49 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276640B0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v64 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v66 = &v44 - v19;
  v20 = sub_227664990();
  v62 = *(v20 - 8);
  v63 = v20;
  MEMORY[0x28223BE20](v20);
  v65 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v61 = v12;
    v67 = MEMORY[0x277D84F90];
    v57 = v11;
    sub_226F1F150(0, v22, 0);
    v24 = v57;
    v23 = v67;
    v25 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v55 = (v60 + 32);
    v58 = *(v16 + 72);
    v59 = 0;
    v51 = (v50 + 6);
    v52 = (v49 + 32);
    v44 = (v50 + 4);
    v50 = (v49 + 8);
    v60 = v14;
    v45 = v4;
    v53 = v15;
    do
    {
      v26 = v66;
      sub_227141704(v25, v66);
      v27 = v26;
      v28 = v64;
      sub_227141704(v27, v64);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = (*v52)(v14, v28, v61);
        MEMORY[0x28223BE20](v29);
        *(&v44 - 2) = v14;
        v30 = v14;
        v31 = v8;
        v32 = v59;
        sub_227543988(sub_226F1C4F4, v54, v24);
        v59 = v32;
        v8 = v31;
        sub_226F1C514(v24, v31);
        if ((*v51)(v31, 1, v4) == 1)
        {
          sub_226F1C584(v31);
          v33 = sub_227663560();
          v48 = v34;
          v49 = v33;
          sub_227663570();
          sub_227663580();
          v35 = v56;
          v8 = v31;
          v36 = v47;
          v4 = v45;
          sub_227666F30();
          sub_226F1C584(v57);
          v37 = v36;
          v24 = v57;
          (*v55)(v65, v37, v35);
        }

        else
        {
          sub_226F1C584(v24);
          v38 = *v44;
          v39 = v46;
          (*v44)(v46, v31, v4);
          v40 = v39;
          v24 = v57;
          v38(v65, v40, v4);
        }

        swift_storeEnumTagMultiPayload();
        (*v50)(v30, v61);
      }

      else
      {
        (*v55)(v65, v28, v56);
        swift_storeEnumTagMultiPayload();
      }

      sub_227141768(v66);
      v67 = v23;
      v42 = *(v23 + 16);
      v41 = *(v23 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_226F1F150((v41 > 1), v42 + 1, 1);
        v24 = v57;
        v23 = v67;
      }

      *(v23 + 16) = v42 + 1;
      sub_2271417C4(v65, v23 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v42);
      v25 += v58;
      --v22;
      v14 = v60;
    }

    while (v22);
  }

  return v23;
}

uint64_t sub_227450F9C(uint64_t a1)
{
  v1 = sub_227663560();
  v3 = v2;
  if (v1 == sub_227663D80() && v3 == v4)
  {
  }

  else
  {
    v5 = sub_22766D190();

    v6 = 0;
    if ((v5 & 1) == 0)
    {
      return v6 & 1;
    }
  }

  v7 = sub_227663580();
  v9 = v8;
  v10 = sub_227663DA0();
  if (v9)
  {
    if (v11)
    {
      if (v7 == v10 && v9 == v11)
      {

        v6 = 1;
      }

      else
      {
        v6 = sub_22766D190();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    if (!v11)
    {
      v6 = 1;
      return v6 & 1;
    }

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2274510E0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D48];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_227451160@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227667E40();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_227451188(uint64_t a1)
{
  *(a1 + 24) = sub_2274511F0(&qword_2813A55B0, &unk_22767ED78);
  result = sub_2274511F0(&qword_2813A55A8, MEMORY[0x277D533C0]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2274511F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227667E50();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227451234()
{
  v1 = v0;
  v2 = sub_227669A70();
  v38 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = *(v1 + 16);
  v37 = *(v1 + 32);
  v41 = v1;
  ObjectType = swift_getObjectType();
  v44 = v10;
  v11 = *MEMORY[0x277D4EC80];
  v39 = *(v3 + 104);
  v43 = v3 + 104;
  v39(v5, v11, v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6A8, &unk_227680630);
  sub_227453450();
  sub_2274534CC();
  sub_227669ED0();

  v36 = *(v3 + 8);
  v12 = v38;
  v36(v5, v38);
  v40 = v3 + 8;
  swift_unknownObjectRelease();
  v44 = v10;
  v13 = v39;
  v39(v5, *MEMORY[0x277D4E4F0], v12);
  swift_allocObject();
  swift_weakInit();
  sub_227664030();
  sub_227664420();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v14 = v36;
  v36(v5, v12);
  swift_unknownObjectRelease();
  v44 = v10;
  v13(v5, *MEMORY[0x277D4E648], v12);
  swift_allocObject();
  swift_weakInit();
  sub_2276676E0();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v14(v5, v12);
  swift_unknownObjectRelease();
  v44 = v10;
  v31 = *MEMORY[0x277D4E668];
  v15 = v39;
  (v39)(v5);
  swift_allocObject();
  swift_weakInit();
  v30 = sub_227664E20();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v16 = v36;
  v36(v5, v12);
  swift_unknownObjectRelease();
  v44 = v10;
  v29 = *MEMORY[0x277D4E6C8];
  v15(v5);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8568, &unk_227685490);
  v35 = sub_227453808();
  v34 = sub_22745388C();
  sub_227669EE0();

  v17 = v16;
  v16(v5, v38);
  swift_unknownObjectRelease();
  v44 = v10;
  v28 = *MEMORY[0x277D4E818];
  v18 = v39;
  (v39)(v5);
  swift_allocObject();
  swift_weakInit();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC28, &qword_227685EE0);
  v19 = sub_227453A20();
  v20 = sub_227453AA4();
  v27[0] = v19;
  v27[1] = v20;
  sub_227669EE0();

  v21 = v38;
  v17(v5, v38);
  swift_unknownObjectRelease();
  v44 = v10;
  v18(v5, *MEMORY[0x277D4E6A0], v21);
  swift_allocObject();
  v22 = v41;
  swift_weakInit();
  sub_227669EC0();

  v23 = v38;
  v17(v5, v38);
  swift_unknownObjectRelease();
  v24 = *(v22 + 40);
  ObjectType = *(v22 + 56);
  v37 = swift_getObjectType();
  v44 = v24;
  v18(v5, v31, v23);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_227669EE0();

  v25 = v36;
  v36(v5, v23);
  swift_unknownObjectRelease();
  v44 = v24;
  v18(v5, v29, v23);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v25(v5, v23);
  swift_unknownObjectRelease();
  v44 = v24;
  v39(v5, v28, v23);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v25(v5, v23);
  return swift_unknownObjectRelease();
}

uint64_t sub_227451C68(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_227451C88, 0, 0);
}

uint64_t sub_227451C88()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, v0 + 16);

    v2 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    __swift_project_boxed_opaque_existential_0((*v2 + 120), *(*v2 + 144));
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_226FAA538;

    return sub_227320744();
  }

  else
  {
    **(v0 + 80) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_227451DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_227664030();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227451E70, 0, 0);
}

uint64_t sub_227451E70()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    v0[16] = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = sub_227451FC8;

    return sub_226F226A8();
  }

  else
  {
    v4 = v0[10];
    v5 = sub_227664420();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_227451FC8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  *(v4 + 144) = a1;
  *(v4 + 152) = a2;
  *(v4 + 176) = a3;

  return MEMORY[0x2822009F8](sub_2274520CC, 0, 0);
}

uint64_t sub_2274520CC()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_0((*(v0 + 128) + 120), *(*(v0 + 128) + 144));
  sub_227664020();
  sub_226EB2DFC(v2, v1, v3 & 1);
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_2274521BC;
  v5 = *(v0 + 120);
  v6 = *(v0 + 80);

  return sub_227320BCC(v6, v5);
}

uint64_t sub_2274521BC()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  *(*v1 + 168) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2274523DC;
  }

  else
  {
    v5 = sub_22745232C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22745232C()
{
  v1 = v0[10];
  v2 = sub_227664420();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2274523DC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22745244C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v5 = sub_227667200();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v8 = a2[1];
  v3[14] = v6;
  v3[15] = v7;
  v3[16] = v8;

  return MEMORY[0x2822009F8](sub_227452518, 0, 0);
}

uint64_t sub_227452518()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    v0[17] = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_227452670;

    return sub_226F226A8();
  }

  else
  {
    v4 = v0[10];
    v5 = sub_2276676E0();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_227452670(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  *(v4 + 152) = a1;
  *(v4 + 160) = a2;
  *(v4 + 184) = a3;

  return MEMORY[0x2822009F8](sub_227452774, 0, 0);
}

uint64_t sub_227452774()
{
  v1 = v0[17];

  sub_2276671F0();
  __swift_project_boxed_opaque_existential_0((v1 + 120), *(v1 + 144));
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_227452868;
  v3 = v0[14];
  v4 = v0[10];

  return sub_227320F5C(v4, v3);
}

uint64_t sub_227452868()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_227452A44;
  }

  else
  {
    v2 = sub_22745297C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22745297C()
{
  v1 = v0[10];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v2 = sub_2276676E0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_227452A44()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227452ACC(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_227452AEC, 0, 0);
}

uint64_t sub_227452AEC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F620FC;
    v3 = v0[10];

    return sub_226F23E24(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_227452C00(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_227452C24, 0, 0);
}

uint64_t sub_227452C24()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F623A8;
    v3 = v0[11];

    return sub_226F24870(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_227452D38(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_227452D5C, 0, 0);
}

uint64_t sub_227452D5C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_22710CB58;
    v3 = v0[11];

    return sub_226F21C5C(v3, 0);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_227452E74(uint64_t a1, void *a2, uint64_t a3)
{
  v3[11] = a1;
  v3[12] = a3;
  v3[13] = *a2;
  return MEMORY[0x2822009F8](sub_227452E9C, 0, 0);
}

uint64_t sub_227452E9C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 104);
    sub_226E91B50(Strong + 64, v0 + 16);

    v3 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = *v3;
    v5 = *(*v3 + 56);
    v6 = *(*v3 + 64);
    __swift_project_boxed_opaque_existential_0((*v3 + 32), v5);
    v7 = swift_allocObject();
    *(v0 + 112) = v7;
    *(v7 + 16) = v4;
    *(v7 + 24) = v2;
    v8 = *(v6 + 24);

    v13 = (v8 + *v8);
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8568, &unk_227685490);
    *v9 = v0;
    v9[1] = sub_2274530D4;

    return (v13)(v0 + 80, sub_227453DF0, v7, v10, v5, v6);
  }

  else
  {
    **(v0 + 88) = 0;
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_2274530D4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_2274531F0;
  }

  else
  {

    v2 = sub_226FABD80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2274531F0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22745325C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_22745327C, 0, 0);
}

uint64_t sub_22745327C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F623A8;
    v3 = v0[10];

    return sub_226F23E24(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2274533B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227451C68(a1, v1);
}

unint64_t sub_227453450()
{
  result = qword_281399078;
  if (!qword_281399078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC6A8, &unk_227680630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399078);
  }

  return result;
}

unint64_t sub_2274534CC()
{
  result = qword_281399070;
  if (!qword_281399070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC6A8, &unk_227680630);
    sub_227453940(&qword_28139B750, MEMORY[0x277D51C68], MEMORY[0x277D51C60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399070);
  }

  return result;
}

uint64_t sub_227453580(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_227451DAC(a1, a2, v2);
}

uint64_t sub_22745362C(uint64_t a1, uint64_t *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E92F34;

  return sub_22745244C(a1, a2, v2);
}

uint64_t sub_2274536D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227452ACC(a1, v1);
}

uint64_t sub_227453770(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227452C00(a1, v1);
}

unint64_t sub_227453808()
{
  result = qword_281398DD0;
  if (!qword_281398DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8568, &unk_227685490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398DD0);
  }

  return result;
}

unint64_t sub_22745388C()
{
  result = qword_281398DC8;
  if (!qword_281398DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8568, &unk_227685490);
    sub_227453940(&qword_28139B8C8, MEMORY[0x277D51068], MEMORY[0x277D51060]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398DC8);
  }

  return result;
}

uint64_t sub_227453940(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227453988(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227452D38(a1, v1);
}

unint64_t sub_227453A20()
{
  result = qword_281398C30;
  if (!qword_281398C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BDC28, &qword_227685EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C30);
  }

  return result;
}

unint64_t sub_227453AA4()
{
  result = qword_281398C28;
  if (!qword_281398C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BDC28, &qword_227685EE0);
    sub_227453B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C28);
  }

  return result;
}

unint64_t sub_227453B28()
{
  result = qword_28139B278;
  if (!qword_28139B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B278);
  }

  return result;
}

uint64_t sub_227453B7C(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_227452E74(a1, a2, v2);
}

uint64_t sub_227453C28(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22745325C(a1, v1);
}

uint64_t sub_227453CC0(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227452C00(a1, v1);
}

uint64_t sub_227453D58(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227452D38(a1, v1);
}

uint64_t sub_227453E0C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_227453E70()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v5, v2);
  v25 = sub_2276693E0();
  v26[0] = v6;
  v7 = sub_2276693B0();
  v8 = 0;
  v9 = 0x8000000227691D80;
  v10 = 0xD000000000000018;
  if ((v7 & 1) == 0)
  {
    v10 = 0;
    v9 = 0;
  }

  v26[1] = v10;
  v26[2] = v9;
  v11 = MEMORY[0x277D84F90];
LABEL_4:
  v12 = &v26[2 * v8];
  while (++v8 != 3)
  {
    v13 = v12 + 2;
    v14 = *v12;
    v12 += 2;
    if (v14)
    {
      v15 = *(v13 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_226EB3F78(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_226EB3F78((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = v15;
      *(v18 + 5) = v14;
      goto LABEL_4;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  swift_arrayDestroy();
  __swift_project_boxed_opaque_existential_0((v1 + 64), *(v1 + 88));
  v19 = sub_22766AC40();

  if (sub_2276693B0())
  {
    v20 = 0;
  }

  else
  {
    v20 = sub_227669390() ^ 1;
  }

  v21 = *(v1 + 16);
  v22 = sub_227669410();
  return v21 & ~((v22 != sub_227669410()) | v20 | v19) & 1;
}

uint64_t sub_227454118@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23[1] = a1;
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBCE8, &unk_22767E460);
  v3 = *(v23[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v23[0]);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v10 + 8))(v12, v9);
  v13 = sub_2276693E0();
  v15 = v14;
  __swift_project_boxed_opaque_existential_0((v2 + 24), *(v2 + 48));
  sub_22766AE80();
  swift_getObjectType();
  sub_22766AD90();
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  v17 = v23[0];
  (*(v3 + 16))(v5, v8, v23[0]);
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = (v4 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v18, v5, v17);
  v21 = (v20 + v19);
  *v21 = sub_227454780;
  v21[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC30, &qword_227685FA0);
  sub_227669270();
  swift_unknownObjectRelease();
  return (*(v3 + 8))(v8, v17);
}

uint64_t sub_22745442C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  sub_227454844(a1, v30);
  if (v31)
  {
    v13 = v30[0];
    sub_22766A730();

    v14 = v13;
    v15 = sub_22766B380();
    v16 = sub_22766C890();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = a2;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_226E97AE8(v17, a3, &v29);
      *(v18 + 12) = 2082;
      swift_getErrorValue();
      v20 = sub_22766D250();
      v22 = sub_226E97AE8(v20, v21, &v29);

      *(v18 + 14) = v22;
      _os_log_impl(&dword_226E8E000, v15, v16, "ApplicationInstaller failed to request install for %{public}s with error: %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v19, -1, -1);
      MEMORY[0x22AA9A450](v18, -1, -1);
    }

    else
    {
    }

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_22766A730();

    v23 = sub_22766B380();
    v24 = sub_22766C8B0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_226E97AE8(a2, a3, &v29);
      _os_log_impl(&dword_226E8E000, v23, v24, "ApplicationInstaller successfully requested install for %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AA9A450](v26, -1, -1);
      MEMORY[0x22AA9A450](v25, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    return sub_2274548B4(v30);
  }
}

uint64_t sub_227454788(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBCE8, &unk_22767E460) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_2272B2730(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_227454844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC38, &qword_227685FA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274548B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC38, &qword_227685FA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227454964(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v6 = *(a2 + 16);
  if (!v6)
  {
    return 0;
  }

  v11 = *(a3(0) - 8);
  v12 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v13 = *(v11 + 72);
  sub_22745AE98(a4, a5, a6);
  v14 = 0;
  while ((sub_22766BFB0() & 1) == 0)
  {
    ++v14;
    v12 += v13;
    if (v6 == v14)
    {
      return 0;
    }
  }

  return v14;
}

uint64_t getEnumTagSinglePayload for ConnectedComponent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConnectedComponent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_227454B28(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2276681F0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2274582DC(*(a2 + *(v5 + 28)));
  if (v2)
  {
    return;
  }

  v25 = v12;
  v24 = 0;
  sub_227667240();
  v13 = a2;
  v14 = sub_227668090();
  (*(v9 + 8))(v11, v8);
  v15 = v24;
  v16 = sub_227433850(*(v13 + *(v5 + 32)));
  v24 = v15;
  v17 = sub_226F43CB8(v16);

  sub_2274424B0(v13, a1);
  if (v14 < 0)
  {
    goto LABEL_17;
  }

  if (!v14)
  {
LABEL_13:

    return;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    if (!sub_22718C954(v19, v17))
    {
      WorkoutPlanGenerationScaffold.withUnscheduledDay()(v7);
      sub_227442514(a1);
      sub_227442570(v7, a1);
      goto LABEL_6;
    }

    v20 = *(v25 + 16);
    if (!v20)
    {
      break;
    }

    if (v18 % v20 < 0)
    {
      goto LABEL_16;
    }

    WorkoutPlanGenerationScaffold.withScheduledDay(withDailySchedule:)(v21, v7);

    sub_227442514(a1);
    sub_227442570(v7, a1);
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_13;
    }

LABEL_6:
    if (v14 == ++v19)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

unint64_t sub_227454D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v30[2] = a2;
  v7 = sub_227664B70();
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v30 - v11;
  v13 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  MEMORY[0x28223BE20](v13);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v30 - v17;
  v19 = sub_227668780();
  if (v19 == sub_227668780())
  {
    v30[1] = v4;
    sub_2274424B0(a1, v18);
    v20 = *(a1 + *(v13 + 64));
    v21 = a3;
    if (!*(v20 + 16))
    {
      return sub_227442570(v18, v21);
    }

    v22 = sub_226F491D8();
    if ((v23 & 1) == 0 || *(*(v20 + 56) + 8 * v22) < 1)
    {
LABEL_14:
      if (*(v20 + 16))
      {
        v28 = sub_226F491D8();
        if ((v29 & 1) != 0 && *(*(v20 + 56) + 8 * v28) >= 1)
        {
          sub_227456EAC(v18, v15);
          sub_227442514(v18);
          sub_227442570(v15, v18);
        }
      }

      return sub_227442570(v18, v21);
    }

    v24 = sub_227664B40();
    v25 = *(v24 + 16);
    if (!v25)
    {

      v27 = v31;
      (*(v31 + 104))(v12, *MEMORY[0x277D50DB0], v7);
      goto LABEL_13;
    }

    result = sub_2274580D4(v25);
    v27 = v31;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v24 + 16))
    {
      (*(v31 + 16))(v9, v24 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * result, v7);

      (*(v27 + 32))(v12, v9, v7);
LABEL_13:
      sub_227455104(v18, v12, v15);
      (*(v27 + 8))(v12, v7);
      sub_227442514(v18);
      sub_227442570(v15, v18);
      goto LABEL_14;
    }

    __break(1u);
  }

  else
  {

    return sub_2274424B0(a1, a3);
  }

  return result;
}

void sub_227455104(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v115 = a2;
  v120 = a3;
  v5 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v114 = v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v117 = v112 - v9;
  v122 = sub_227664B70();
  v118 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  MEMORY[0x28223BE20](v10);
  v116 = v112 - v11;
  v12 = *(v6 + 68);
  v119 = a1;
  v13 = *(a1 + v12);
  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  v113 = v16;
  if (!v14)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v136 = MEMORY[0x277D84F90];
  v124 = v14;
  sub_226F1F090(0, v14, 0);
  v17 = 0;
  v15 = v136;
  v121 = v13;
  v126 = v13 + 32;
  v18 = 40;
  v131 = xmmword_227685FB0;
  do
  {
    v128 = v15;
    *&v127 = v17;
    v19 = *(v126 + 8 * v17);
    v20 = *(v19 + 16);

    if (v20)
    {
      v3 = sub_226F48150();
      sub_226EC1E18();
      v22 = 0;
      v23 = v19;
      v24 = (v19 + 64);
      while (1)
      {
        v25 = *v24;
        v132 = *(v24 - 1);
        v133 = v25;
        v134 = v131;
        v135 = 1;
        v21 = sub_227663B20();
        if (v21)
        {
          break;
        }

        ++v22;
        v24 += 40;
        if (v20 == v22)
        {
          goto LABEL_9;
        }
      }

      v20 = v22;
LABEL_9:
      v19 = v23;
    }

    v26 = *(v19 + 16);
    if (v26 >= v20)
    {
      if (v20 == v26)
      {

        v27 = 0;
        goto LABEL_26;
      }

      v130 = 1;
      *&v129 = v26;
    }

    else
    {
      v130 = -1;
      *&v129 = v20;
      v20 = v26;
    }

    v27 = 0;
    v125 = v19;
    v28 = v19 + 32;
    do
    {
      v29 = __OFADD__(v27, v130);
      v27 += v130;
      if (v29)
      {
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if (v20 == v26)
      {
        goto LABEL_101;
      }

      do
      {
        v30 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (v30 == v26)
        {
          v20 = v26;
          goto LABEL_17;
        }

        if (v30 >= v26)
        {
          goto LABEL_35;
        }

        v31 = v28 + 40 * v30;
        v32 = *(v31 + 32);
        v132 = *(v31 + 16);
        v133 = v32;
        v134 = v131;
        v135 = 1;
        v3 = sub_226F48150();
        sub_226EC1E18();
        v21 = sub_227663B20();
        ++v20;
      }

      while ((v21 & 1) == 0);
      v20 = v30;
LABEL_17:
      ;
    }

    while (v20 != v129);

LABEL_26:
    v15 = v128;
    v136 = v128;
    v34 = v128[2];
    v33 = v128[3];
    v3 = v34 + 1;
    v35 = v127;
    if (v34 >= v33 >> 1)
    {
      sub_226F1F090((v33 > 1), v34 + 1, 1);
      v35 = v127;
      v15 = v136;
    }

    v17 = v35 + 1;
    *(v15 + 16) = v3;
    *(v15 + 8 * v34 + 32) = v27;
  }

  while (v17 != v124);
  v76 = v121;
  v77 = *(v121 + 16);
  v18 = MEMORY[0x277D84F90];
  if (!v77)
  {
    goto LABEL_31;
  }

  v136 = MEMORY[0x277D84F90];
  v128 = v15;
  sub_226F1FE28(0, v77, 0);
  v78 = 0;
  v18 = v136;
  v112[1] = OBJC_IVAR____TtC15SeymourServices21WorkoutPlanFocusUtils_configuration;
  v112[0] = v77;
  while (2)
  {
    if (v78 >= *(v76 + 16))
    {
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      return;
    }

    v130 = v18;
    v125 = v78;
    v79 = *(v126 + 8 * v78);

    v80 = sub_227667310();
    v81 = v80;
    v82 = *(v79 + 16);
    if (!v82)
    {
LABEL_82:

      v96 = 0;
      goto LABEL_83;
    }

    v83 = 0;
    *&v127 = v79 + 32;
    v84 = v80 + 56;
    *&v129 = v79;
    v124 = v82;
    while (2)
    {
      if (v83 >= *(v79 + 16))
      {
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      if (!*(v81 + 16))
      {
LABEL_73:
        if (++v83 == v82)
        {
          goto LABEL_82;
        }

        continue;
      }

      break;
    }

    v85 = v127 + 40 * v83;
    v86 = *(v85 + 8);
    v88 = *(v85 + 24);
    v89 = *(v85 + 32);
    *&v134 = *(v85 + 16);
    v87 = v134;
    *(&v134 + 1) = v88;
    v135 = v89;
    sub_22766D370();
    *&v131 = v86;

    sub_226EB396C(v87, v88, v89);
    sub_226EB396C(v87, v88, v89);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    v90 = sub_22766D3F0();
    v91 = -1 << *(v81 + 32);
    v92 = v90 & ~v91;
    if (((*(v84 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92) & 1) == 0)
    {
LABEL_72:
      sub_226EB2DFC(v87, v88, v89);

      sub_226EB2DFC(v87, v88, v89);
      v79 = v129;
      v82 = v124;
      goto LABEL_73;
    }

    v93 = ~v91;
    sub_226F48150();
    sub_226EC1E18();
    while (1)
    {
      v94 = *(v81 + 48) + 24 * v92;
      v95 = *(v94 + 16);
      v132 = *v94;
      v133 = v95;
      *&v134 = v87;
      *(&v134 + 1) = v88;
      v135 = v89;
      if (sub_227663B20())
      {
        break;
      }

      v92 = (v92 + 1) & v93;
      if (((*(v84 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    sub_226EB2DFC(v87, v88, v89);
    sub_226EB2DFC(v87, v88, v89);

    v96 = 1;
LABEL_83:
    v18 = v130;
    v136 = v130;
    v98 = *(v130 + 16);
    v97 = *(v130 + 24);
    v15 = v128;
    v99 = v125;
    if (v98 >= v97 >> 1)
    {
      sub_226F1FE28((v97 > 1), v98 + 1, 1);
      v99 = v125;
      v15 = v128;
      v18 = v136;
    }

    v78 = v99 + 1;
    *(v18 + 16) = v98 + 1;
    *(v18 + v98 + 32) = v96;
    v76 = v121;
    if (v78 != v112[0])
    {
      continue;
    }

    break;
  }

LABEL_31:
  v26 = v15;
  v21 = sub_2274CFCF0(v15);
  if (v36)
  {

    goto LABEL_33;
  }

LABEL_36:
  v37 = v21;
  v128 = v26;
  if (v21 == 2)
  {
    v38 = 0;
    v39 = v128;
    v40 = v128[2];
    v41 = v128 + 4;
    LODWORD(v124) = *MEMORY[0x277D50DB0];
    v42 = (v118 + 104);
    v123 = *MEMORY[0x277D50DA0];
    LODWORD(v131) = *MEMORY[0x277D50DA8];
    v130 = v18;
    v126 = v18 + 31;
    v43 = 1;
    v44 = MEMORY[0x277D84F90];
    v127 = xmmword_2276728D0;
    v129 = xmmword_227670CD0;
LABEL_38:
    v45 = v38;
    while (v40 != v45)
    {
      if (v45 >= *(v39 + 16))
      {
        __break(1u);
        goto LABEL_105;
      }

      v38 = v45 + 1;
      v46 = v41[v45];
      if (v46 == 2)
      {
        if (v43)
        {
          v125 = v44;
          v50 = *(v118 + 72);
          LODWORD(v51) = *(v118 + 80);
          goto LABEL_49;
        }

        if (v45 >= *(v130 + 16))
        {
          goto LABEL_107;
        }

        v50 = *(v118 + 72);
        v51 = *(v118 + 80);
        if (*(v126 + v38) == 1)
        {
          v125 = v44;
LABEL_49:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE28, &qword_227679890);
          v52 = (v51 + 32) & ~v51;
          v49 = swift_allocObject();
          *(v49 + 16) = v127;
          v53 = v49 + v52;
          v54 = *v42;
          v55 = v50;
          v56 = v42;
          v57 = v131;
          v58 = v122;
          v54(v53, v131, v122);
          v59 = v57;
          v42 = v56;
          v54(v53 + v55, v59, v58);
          v44 = v125;
LABEL_50:
          v43 = 0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_51:
            v61 = v44[2];
            v60 = v44[3];
            v39 = v128;
            if (v61 >= v60 >> 1)
            {
              v44 = sub_2273A61B8((v60 > 1), v61 + 1, 1, v44);
              v39 = v128;
            }

            v44[2] = v61 + 1;
            v62 = &v44[2 * v61];
            v62[4] = v38 - 1;
            v62[5] = v49;
            goto LABEL_38;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE28, &qword_227679890);
          v63 = (v51 + 32) & ~v51;
          v49 = swift_allocObject();
          *(v49 + 16) = v127;
          v64 = v49 + v63;
          v65 = *v42;
          v66 = v122;
          (*v42)(v64, v124, v122);
          v65(v64 + v50, v123, v66);
          v43 = 1;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_51;
          }
        }

        v44 = sub_2273A61B8(0, v44[2] + 1, 1, v44);
        goto LABEL_51;
      }

      ++v45;
      if (v46 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE28, &qword_227679890);
        v47 = v118;
        v48 = (*(v118 + 80) + 32) & ~*(v118 + 80);
        v49 = swift_allocObject();
        *(v49 + 16) = v129;
        (*(v47 + 104))(v49 + v48, v131, v122);
        goto LABEL_50;
      }
    }

    if (v44[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9860, &qword_227674CB0);
      v75 = sub_22766D010();
    }

    else
    {
      v75 = MEMORY[0x277D84F98];
    }

    *&v132 = v75;
    sub_227457D68(v44, 1, &v132);

    WorkoutPlanGenerationScaffold.withBodyFocuses(bodyFocusesByDay:forModality:)(v132, 0xB, 0, 1, v120);

    return;
  }

  v67 = v128[2];
  if (v67)
  {
    v68 = v128 + 4;
    v69 = MEMORY[0x277D84F90];
    do
    {
      v73 = *v68++;
      v72 = v73;
      if (v73 >= 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v132 = v69;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226F1F090(0, *(v69 + 16) + 1, 1);
          v69 = v132;
        }

        v71 = *(v69 + 16);
        v70 = *(v69 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_226F1F090((v70 > 1), v71 + 1, 1);
          v69 = v132;
        }

        *(v69 + 16) = v71 + 1;
        *(v69 + 8 * v71 + 32) = v72;
      }

      --v67;
    }

    while (v67);
  }

  else
  {
    v69 = MEMORY[0x277D84F90];
  }

  v100 = *(v69 + 16);

  if (v100 <= 3)
  {

    sub_227455FB8(v119, v128, v120);

    return;
  }

  if (v100 < 7)
  {
    v101 = sub_22745A0B0(v128);
    v3 = v118;
    v102 = v118 + 16;
    v103 = *(v118 + 16);
    v20 = v116;
    v26 = v122;
    v103(v116, v115, v122);
    v27 = v117;
    sub_2274424B0(v119, v117);
    v104 = *(v101 + 16);
    if (v104)
    {
      *&v127 = v101;
      v130 = v18;
      *&v131 = v102;
      v105 = (v101 + 32);
      v106 = (v3 + 8);
      v118 = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v107 = v114;
      v108 = v113;
      *&v129 = v103;
      do
      {
        v109 = *v105++;
        v132 = v109;
        v110 = sub_227456678(v108, &v132, v128, v130, v20);
        v111 = *v106;
        (*v106)(v20, v26);
        (v129)(v20, v108, v26);
        WorkoutPlanGenerationScaffold.withBodyFocuses(bodyFocusesByDay:forModality:)(v110, 0xB, 0, 1, v107);
        v26 = v122;

        v111(v108, v26);
        sub_227442514(v27);
        sub_227442570(v107, v27);
        --v104;
      }

      while (v104);
      goto LABEL_103;
    }

LABEL_102:
    v111 = *(v3 + 8);
LABEL_103:
    v111(v20, v26);

    sub_227442570(v27, v120);
    return;
  }

  if (v37 == 1 && v100 == 7)
  {
    sub_227456308(v119, v120);
  }

  else
  {
LABEL_33:
    sub_2274424B0(v119, v120);
  }
}

void sub_227455FB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_227664B70();
  v7.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *(a2 + 16);
  v12 = a2 + 32;
  v13 = *MEMORY[0x277D50DA8];
  v15 = (v14 + 104);
  v16 = v14 + 16;
  v41 = v14;
  v39 = (v14 + 8);
  v17 = MEMORY[0x277D84F90];
  while (v11 != v10)
  {
    if (v10 >= v11)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      return;
    }

    v18 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_21;
    }

    v19 = *(v12 + 8 * v10++);
    if (v19)
    {
      v42 = v16;
      v43 = v17;
      v20 = *v15;
      v38 = v15;
      v20(v9, v13, v6, v7);
      if (v19 < 0)
      {
        goto LABEL_22;
      }

      v34 = v12;
      v35 = a3;
      v37 = v13;
      v36 = a1;
      v21 = sub_22766C380();
      *(v21 + 16) = v19;
      v22 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v23 = *(v41 + 16);
      v40 = v21;
      v23(v21 + v22, v9, v6);
      v24 = v19 - 1;
      if (v19 != 1)
      {
        v25 = v22;
        v26 = *(v41 + 72);
        v27 = v40 + v26 + v25;
        do
        {
          v23(v27, v9, v6);
          v27 += v26;
          --v24;
        }

        while (v24);
      }

      (*v39)(v9, v6);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        a3 = v35;
        a1 = v36;
        v17 = v43;
      }

      else
      {
        v17 = sub_2273A61B8(0, v43[2] + 1, 1, v43);
        a3 = v35;
        a1 = v36;
      }

      v29 = v17[2];
      v28 = v17[3];
      if (v29 >= v28 >> 1)
      {
        v17 = sub_2273A61B8((v28 > 1), v29 + 1, 1, v17);
      }

      v12 = v34;
      v17[2] = v29 + 1;
      v30 = &v17[2 * v29];
      v31 = v40;
      v30[4] = v10 - 1;
      v30[5] = v31;
      v10 = v18;
      v13 = v37;
      v15 = v38;
      v16 = v42;
    }
  }

  if (v17[2])
  {
    v32 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9860, &qword_227674CB0);
    v33 = sub_22766D010();
    v17 = v32;
  }

  else
  {
    v33 = MEMORY[0x277D84F98];
  }

  v44 = v33;
  sub_227457D68(v17, 1, &v44);
  WorkoutPlanGenerationScaffold.withBodyFocuses(bodyFocusesByDay:forModality:)(v44, 0xB, 0, 1, a3);
}

void sub_227456308(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28[0] = a2;
  v28[1] = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC60, &qword_227686048);
  MEMORY[0x28223BE20](v42);
  v40 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v41 = v28 - v4;
  v5 = sub_227667340();
  v6 = *(v5 + 16);
  if (v6)
  {
    v44 = MEMORY[0x277D84F90];
    sub_226F1FE08(0, v6, 0);
    v7 = v44;
    v39 = *(v5 + 16);
    v8 = sub_227664B70();
    v9 = 0;
    v10 = *(v8 - 8);
    v11 = *(v10 + 80);
    v35 = (v11 + 32) & ~v11;
    v36 = v11;
    v34 = v5 + v35;
    v32 = v8;
    v33 = v10 + 16;
    v30 = v10 + 32;
    v31 = v10;
    v29 = xmmword_227670CD0;
    v37 = v6;
    v38 = v5;
    v12 = v40;
    do
    {
      if (v39 == v9)
      {
        __break(1u);
LABEL_14:
        __break(1u);
        swift_unexpectedError();
        __break(1u);
        return;
      }

      if (v9 >= *(v5 + 16))
      {
        goto LABEL_14;
      }

      v13 = v41;
      v14 = v42;
      v15 = *(v42 + 48);
      v16 = v31;
      v17 = v34 + *(v31 + 72) * v9;
      v18 = *(v31 + 16);
      v43 = v7;
      v19 = v32;
      v18(&v41[v15], v17, v32);
      *v12 = v9;
      v20 = *(v14 + 48);
      (*(v16 + 32))(&v12[v20], &v13[v15], v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE28, &qword_227679890);
      v21 = v35;
      v22 = swift_allocObject();
      *(v22 + 16) = v29;
      v23 = v19;
      v7 = v43;
      v18((v22 + v21), &v12[v20], v23);
      sub_226E97D1C(v12, &qword_27D7BDC60, &qword_227686048);
      v44 = v7;
      v25 = v7[2];
      v24 = v7[3];
      if (v25 >= v24 >> 1)
      {
        sub_226F1FE08((v24 > 1), v25 + 1, 1);
        v7 = v44;
      }

      v7[2] = v25 + 1;
      v26 = &v7[2 * v25];
      v26[4] = v9;
      v26[5] = v22;
      ++v9;
      v5 = v38;
    }

    while (v37 != v9);

    if (!v7[2])
    {
      goto LABEL_11;
    }
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_11:
      v27 = MEMORY[0x277D84F98];
      goto LABEL_12;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9860, &qword_227674CB0);
  v27 = sub_22766D010();
LABEL_12:
  v44 = v27;
  sub_227457D68(v7, 1, &v44);
  WorkoutPlanGenerationScaffold.withBodyFocuses(bodyFocusesByDay:forModality:)(v44, 0xB, 0, 1, v28[0]);
}

void *sub_227456678(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_227664B70();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v78 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v69 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v79 = &v69 - v21;
  v23 = *a2;
  v22 = a2[1];
  v83 = *(v11 + 16);
  v84 = v11 + 16;
  v83(a1, a5, v10, v20);
  v92 = v23;
  v93 = v22;
  v24 = sub_22745A574(&v92, a3, a4);
  v25 = v24;
  v70 = v24[2];
  if (!v70)
  {

    return MEMORY[0x277D84F98];
  }

  v26 = 0;
  v71 = v24 + 4;
  v77 = *MEMORY[0x277D50DA0];
  v82 = (v11 + 104);
  v87 = (v11 + 8);
  v75 = v11 + 32;
  v27 = MEMORY[0x277D84F98];
  v80 = v11;
  v76 = v18;
  v69 = v24;
  while (v26 < v25[2])
  {
    v28 = &v71[3 * v26];
    v29 = v28[1];
    if (v29 < 0)
    {
      goto LABEL_50;
    }

    v74 = *v28;
    if (v29)
    {
      v72 = v27;
      v73 = v26;
      v85 = *(v28 + 16);
      v91 = MEMORY[0x277D84F90];
      sub_226F1FDE8(0, v29, 0);
      v88 = v91;
      v81 = *v82;
      while (1)
      {
        v81(v18, v77, v10);
        sub_22745AE98(&qword_27D7BDC58, MEMORY[0x277D50DB8], MEMORY[0x277D50DD0]);
        sub_22766C290();
        sub_22766C290();
        v30 = v92 == v89 && v93 == v90;
        v31 = v85;
        if (!v30)
        {
          v31 = sub_22766D190() & v85;
        }

        v32 = *v87;
        (*v87)(v18, v10);

        if (v31)
        {
          sub_227456D50(v15);
        }

        else
        {
          (v83)(v15, a1, v10);
        }

        v33 = sub_227664B40();
        v34 = sub_227454964(v15, v33, MEMORY[0x277D50DB8], &qword_27D7BA7E8, MEMORY[0x277D50DB8], MEMORY[0x277D50DC8]);
        v36 = v35;

        v37 = (v36 & 1) != 0 ? 0 : v34;
        v38 = v37 - 1;
        if (__OFSUB__(v37, 1))
        {
          break;
        }

        v39 = *(sub_227664B40() + 16);

        v40 = __OFADD__(v38, v39);
        v41 = v38 + v39;
        if (v40)
        {
          goto LABEL_45;
        }

        v42 = *(sub_227664B40() + 16);

        if (!v42)
        {
          goto LABEL_46;
        }

        v43 = v41 % v42;
        v44 = sub_227664B40();
        if ((v43 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        if (v43 >= *(v44 + 16))
        {
          goto LABEL_48;
        }

        v86 = v29;
        v45 = v80;
        v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v47 = *(v80 + 72);
        v48 = v78;
        (v83)(v78, v44 + v46 + v47 * v43, v10);

        v32(a1, v10);
        v49 = *(v45 + 32);
        v49(a1, v48, v10);
        v50 = v79;
        v49(v79, v15, v10);
        v51 = v88;
        v91 = v88;
        v53 = *(v88 + 16);
        v52 = *(v88 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_226F1FDE8((v52 > 1), v53 + 1, 1);
          v50 = v79;
          v51 = v91;
        }

        *(v51 + 16) = v53 + 1;
        v88 = v51;
        v49((v51 + v46 + v53 * v47), v50, v10);
        v29 = v86 - 1;
        v18 = v76;
        if (v86 == 1)
        {
          v11 = v80;
          v25 = v69;
          v26 = v73;
          v27 = v72;
          goto LABEL_30;
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
      __break(1u);
      break;
    }

    v88 = MEMORY[0x277D84F90];
LABEL_30:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v27;
    v56 = sub_226F491D4(v74);
    v57 = v27[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      goto LABEL_51;
    }

    if (v27[3] >= v59)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v27 = v92;
        if (v55)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v64 = v25;
        v65 = v11;
        v66 = v55;
        sub_226FF309C();
        v67 = v66;
        v11 = v65;
        v25 = v64;
        v27 = v92;
        if (v67)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      LODWORD(v86) = v55;
      sub_226FE8748(v59, isUniquelyReferenced_nonNull_native);
      v60 = sub_226F491D4(v74);
      if ((v86 & 1) != (v61 & 1))
      {
        goto LABEL_53;
      }

      v56 = v60;
      v27 = v92;
      if (v86)
      {
LABEL_3:
        *(v27[7] + 8 * v56) = v88;

        goto LABEL_4;
      }
    }

    v27[(v56 >> 6) + 8] |= 1 << v56;
    *(v27[6] + 8 * v56) = v74;
    *(v27[7] + 8 * v56) = v88;
    v62 = v27[2];
    v40 = __OFADD__(v62, 1);
    v63 = v62 + 1;
    if (v40)
    {
      goto LABEL_52;
    }

    v27[2] = v63;
LABEL_4:
    if (++v26 == v70)
    {

      return v27;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_22766D220();
  __break(1u);
  return result;
}

void sub_227456D50(uint64_t a2@<X8>)
{
  v4 = sub_227664B40();
  v5 = sub_227454964(v2, v4, MEMORY[0x277D50DB8], &qword_27D7BA7E8, MEMORY[0x277D50DB8], MEMORY[0x277D50DC8]);
  v7 = v6;

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = *(sub_227664B40() + 16);

  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = *(sub_227664B40() + 16);

  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = v12 % v13;
  v15 = sub_227664B40();
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = v15;
  if (v14 >= *(v15 + 16))
  {
LABEL_16:
    __break(1u);
    return;
  }

  v17 = sub_227664B70();
  (*(*(v17 - 8) + 16))(a2, v16 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(*(v17 - 8) + 72) * v14, v17);
}

void sub_227456EAC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + *(type metadata accessor for WorkoutPlanGenerationScaffold(0) + 60));
  v23 = *(v2 + 16);
  if (v23)
  {
    v3 = 0;
    v21 = v2 + 32;
    v20 = MEMORY[0x277D84F90];
    v22 = v2;
    while (v3 < *(v2 + 16))
    {
      v4 = *(v21 + 8 * v3);
      v24 = v3 + 1;

      v6 = sub_226F43E68(v5, sub_2274571F0, 0);
      if (*(v6 + 16) && (v27 = 0, v28 = 0, v29 = 1, sub_22766D370(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560), sub_226F480FC(), sub_227663B10(), v7 = sub_22766D3F0(), v8 = -1 << *(v6 + 32), v9 = v7 & ~v8, ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
      {
        v10 = ~v8;
        sub_226F48150();
        sub_226EC1E18();
        while (1)
        {
          v11 = *(v6 + 48) + 24 * v9;
          v12 = *(v11 + 16);
          v25 = *v11;
          v26 = v12;
          v27 = 0;
          v28 = 0;
          v29 = 1;
          if (sub_227663B20())
          {
            break;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_2274571FC(v4);
        v14 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_2273A61B8(0, v20[2] + 1, 1, v20);
        }

        v16 = v20[2];
        v15 = v20[3];
        if (v16 >= v15 >> 1)
        {
          v20 = sub_2273A61B8((v15 > 1), v16 + 1, 1, v20);
        }

        v20[2] = v16 + 1;
        v17 = &v20[2 * v16];
        v17[4] = v3;
        v17[5] = v14;
      }

      else
      {
LABEL_3:
      }

      ++v3;
      v2 = v22;
      if (v24 == v23)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
LABEL_18:
    if (v20[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9860, &qword_227674CB0);
      *&v25 = sub_22766D010();
      sub_227457D68(v20, 1, &v25);
      WorkoutPlanGenerationScaffold.withBodyFocuses(bodyFocusesByDay:forModality:)(v25, 0, 0, 1, a2);
    }

    else
    {
      sub_2274424B0(a1, a2);
    }
  }
}

void sub_2274571FC(uint64_t a1)
{
  v2 = sub_227664B70();
  MEMORY[0x28223BE20](v2);
  v91 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v93 = &v83 - v5;
  MEMORY[0x28223BE20](v6);
  v98 = &v83 - v7;
  MEMORY[0x28223BE20](v8);
  v97 = &v83 - v9;
  MEMORY[0x28223BE20](v10);
  v96 = &v83 - v11;
  MEMORY[0x28223BE20](v12);
  v95 = &v83 - v13;
  MEMORY[0x28223BE20](v14);
  v89 = &v83 - v15;
  MEMORY[0x28223BE20](v16);
  v86 = &v83 - v17;
  MEMORY[0x28223BE20](v18);
  v85 = &v83 - v19;
  MEMORY[0x28223BE20](v20);
  v90 = &v83 - v22;
  v115 = MEMORY[0x277D84FA0];
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v94 = OBJC_IVAR____TtC15SeymourServices21WorkoutPlanFocusUtils_configuration;
    v102 = v21 + 32;
    v99 = (v21 + 16);
    v100 = (v21 + 8);
    v84 = *MEMORY[0x277D50DA8];
    v101 = v21;
    v83 = (v21 + 104);
    v88 = v23 - 1;
    v92 = MEMORY[0x277D84F90];
    v25 = a1 + 64;
    v87 = a1 + 64;
    v103 = v2;
    v107 = v23;
    while (1)
    {
      v26 = (v25 + 40 * v24);
      v27 = v24;
      while (1)
      {
        if (v27 >= v23)
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          return;
        }

        v24 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_44;
        }

        v29 = *(v26 - 4);
        v28 = *(v26 - 3);
        v31 = *(v26 - 2);
        v30 = *(v26 - 1);
        v32 = *v26;
        v114 = 0;
        v108 = v27;
        v109 = v31;
        v110 = v30;
        LOBYTE(v111) = v32;
        v33 = v28;

        sub_226EB396C(v31, v30, v32);
        sub_226F48150();
        sub_226EC1E18();
        if (sub_227663B40())
        {
          break;
        }

        v114 = 11;
        v109 = v31;
        v110 = v30;
        LOBYTE(v111) = v32;
        if (sub_227663B40())
        {
          v109 = v29;
          v110 = v33;
          v111 = v31;
          v112 = v30;
          v113 = v32;
          sub_22745A7D4(&v109);
          if (*(v34 + 16))
          {
            v35 = v101;
            v36 = *(v101 + 16);
            v37 = v34 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
            v104 = v33;
            v105 = v24;
            v38 = v96;
            v106 = v32;
            v39 = v103;
            v36(v96, v37, v103);

            v40 = v95;
            (*(v35 + 32))(v95, v38, v39);
            v41 = v98;
            v36(v98, v40, v39);
            v42 = v97;
            v43 = v41;
            v24 = v105;
            sub_2270C0F38(v97, v43);

            sub_226EB2DFC(v31, v30, v106);
            v44 = *(v35 + 8);
            v44(v42, v39);
            v45 = v40;
            v23 = v107;
            v44(v45, v39);
            goto LABEL_6;
          }

          sub_226EB2DFC(v31, v30, v32);
        }

        else
        {
          v114 = 8;
          v109 = v31;
          v110 = v30;
          LOBYTE(v111) = v32;
          if (sub_227663B40())
          {
            goto LABEL_18;
          }

          v46 = sub_227667320();
          if (!*(v46 + 16) || (v47 = sub_226F491D8(), (v48 & 1) == 0))
          {

LABEL_18:

            sub_226EB2DFC(v31, v30, v32);
            goto LABEL_5;
          }

          v49 = v101;
          v50 = *(v46 + 56) + *(v101 + 72) * v47;
          v51 = *(v101 + 16);
          v52 = v91;
          v106 = v32;
          v104 = v33;
          v53 = v103;
          v54 = v51;
          v51(v91, v50, v103);

          v55 = v93;
          (*(v49 + 32))(v93, v52, v53);
          v105 = v24;
          v56 = v98;
          v54(v98, v55, v53);
          v57 = v97;
          v58 = v56;
          v24 = v105;
          sub_2270C0F38(v97, v58);

          sub_226EB2DFC(v31, v30, v106);
          v59 = *(v49 + 8);
          v59(v57, v53);
          v59(v93, v53);
        }

LABEL_5:
        v23 = v107;
LABEL_6:
        v27 = v108 + 1;
        v26 += 40;
        if (v24 == v23)
        {
          goto LABEL_42;
        }
      }

      v106 = v32;
      v60 = v107;
      v61 = 0;
      v62 = 0;
      v63 = v115;
      v64 = 1 << *(v115 + 32);
      v65 = v103;
      v66 = v90;
      while (1)
      {
        v67 = *(v115 + 8 * v62 + 56);
        if (v67)
        {
          break;
        }

        ++v62;
        v61 -= 64;
        if ((v64 + 63) >> 6 == v62)
        {
          goto LABEL_24;
        }
      }

      v68 = __clz(__rbit64(v67));
      if (v68 - v64 == v61)
      {
LABEL_24:
        (*v83)(v90, v84, v103);
        (*v99)(v89, v66, v65);
        goto LABEL_32;
      }

      if (-v61 < 0)
      {
        goto LABEL_45;
      }

      v69 = v68 - v61;
      if (v69 >= v64)
      {
        goto LABEL_45;
      }

      if (((*(v115 + 56 + 8 * (v62 & 0x3FFFFFFFFFFFFFFLL)) >> v68) & 1) == 0)
      {
        goto LABEL_46;
      }

      v70 = v101;
      v71 = *(v115 + 48) + *(v101 + 72) * v69;
      v72 = v86;
      v73 = v103;
      v105 = *(v101 + 16);
      v105(v86, v71, v103);
      v74 = *(v70 + 32);
      v75 = v85;
      v104 = v74;
      (v74)(v85, v72, v73);
      if (*(v63 + 16) == 1)
      {
        v76 = v90;
        v104();
      }

      else
      {
        (*v100)(v75, v73);
        v76 = v90;
        (*v83)(v90, v84, v73);
      }

      v105(v89, v76, v73);
LABEL_32:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v92 = sub_2273A6FA4(0, v92[2] + 1, 1, v92);
      }

      v77 = v106;
      v79 = v92[2];
      v78 = v92[3];
      if (v79 >= v78 >> 1)
      {
        v92 = sub_2273A6FA4((v78 > 1), v79 + 1, 1, v92);
      }

      v80 = v92;
      v92[2] = v79 + 1;
      v81 = v80 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v79;
      v82 = v103;
      (*(v101 + 32))(v81, v89, v103);

      if (v88 == v108)
      {
        sub_226EB2DFC(v31, v30, v77);
        (*v100)(v90, v82);
      }

      else
      {

        sub_226EB2DFC(v31, v30, v77);
        (*v100)(v90, v82);
        v115 = MEMORY[0x277D84FA0];
      }

      v23 = v60;
      v25 = v87;
      if (v24 == v60)
      {
        goto LABEL_42;
      }
    }
  }

  v92 = MEMORY[0x277D84F90];
LABEL_42:
}

uint64_t sub_227457BCC()
{
  v1 = OBJC_IVAR____TtC15SeymourServices21WorkoutPlanFocusUtils_configuration;
  v2 = sub_227667370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanFocusUtils(uint64_t a1)
{
  result = qword_27D7BDC40;
  if (!qword_27D7BDC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227457CCC(uint64_t a1)
{
  result = sub_227667370();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_227457D68(void *a1, char a2, void *a3)
{
  v43 = a1[2];
  if (!v43)
  {
    goto LABEL_23;
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = *a3;
  v9 = sub_226F491D4(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_226FF309C();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_226FE8748(v13, a2 & 1);
  v17 = sub_226F491D4(v7);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_22766D220();
    __break(1u);
LABEL_29:
    sub_22766CE20();
    MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
    sub_22766CF90();
    MEMORY[0x22AA98450](39, 0xE100000000000000);
    sub_22766CFB0();
    __break(1u);
    return;
  }

  v14 = v17;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v21[6] + 8 * v14) = v7;
  *(v21[7] + 8 * v14) = v6;
  v22 = v21[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v24;
  if (v43 != 1)
  {
    v25 = a1 + 7;
    v26 = 1;
    while (v26 < a1[2])
    {
      v28 = *(v25 - 1);
      v27 = *v25;
      v29 = *a3;
      v30 = sub_226F491D4(v28);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_25;
      }

      v35 = v30;
      v36 = v31;
      v37 = v29[3];

      if (v37 < v34)
      {
        sub_226FE8748(v34, 1);
        v38 = sub_226F491D4(v28);
        if ((v36 & 1) != (v39 & 1))
        {
          goto LABEL_28;
        }

        v35 = v38;
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v40 = *a3;
      *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      *(v40[6] + 8 * v35) = v28;
      *(v40[7] + 8 * v35) = v27;
      v41 = v40[2];
      v23 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      ++v26;
      v40[2] = v42;
      v25 += 2;
      if (v43 == v26)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

unint64_t sub_2274580D4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_227664440();
    sub_22745AE98(&qword_27D7BB388, MEMORY[0x277D508E8], MEMORY[0x277D508F0]);
    v2 = sub_22766BF40();
    v3 = v2 * v1;
    result = (v2 * v1) >> 64;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      if (v4 > v3)
      {
        do
        {
          v5 = sub_22766BF40();
        }

        while (v4 > v5 * v1);
        return (v5 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_22745819C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227458238(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2274582DC(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v190[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_227664B70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v190[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 <= 39)
  {
    switch(a1)
    {
      case 10:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
        v205 = swift_allocObject();
        *(v205 + 16) = xmmword_227675BD0;
        *&v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E38, &qword_227686050);
        v114 = swift_allocObject();
        v201 = xmmword_227670CD0;
        *(v114 + 16) = xmmword_227670CD0;
        v115 = *MEMORY[0x277D50DA8];
        v197 = *(v7 + 104);
        v197(v9, v115, v6);
        v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACD8, &qword_227679728);
        v116 = swift_allocObject();
        *(v116 + 16) = v201;
        *(v116 + 32) = sub_227664B60();
        *(v116 + 40) = v117;
        *(v116 + 48) = 0;
        v118 = sub_226F3EAA8(v116);
        swift_setDeallocating();
        sub_22745AE44(v116 + 32);
        swift_deallocClassInstance();
        v198 = xmmword_227685FB0;
        *(v114 + 48) = xmmword_227685FB0;
        *(v114 + 64) = 1;
        *(v114 + 32) = 10;
        *(v114 + 40) = v118;
        *&v196 = *(v7 + 8);
        v203 = v6;
        v204 = v7 + 8;
        (v196)(v9, v6);
        v119 = v205;
        *(v205 + 32) = v114;
        v120 = swift_allocObject();
        *(v120 + 16) = v201;
        v121 = v197;
        v197(v9, *MEMORY[0x277D50DB0], v6);
        v122 = swift_allocObject();
        *(v122 + 16) = v201;
        *(v122 + 32) = sub_227664B60();
        *(v122 + 40) = v123;
        *(v122 + 48) = 0;
        v124 = sub_226F3EAA8(v122);
        swift_setDeallocating();
        sub_22745AE44(v122 + 32);
        swift_deallocClassInstance();
        *(v120 + 48) = v198;
        *(v120 + 64) = 1;
        *(v120 + 32) = 10;
        *(v120 + 40) = v124;
        v125 = v203;
        v126 = v196;
        (v196)(v9, v203);
        v127 = v119;
        *(v119 + 40) = v120;
        v128 = swift_allocObject();
        *(v128 + 16) = v201;
        v121(v9, *MEMORY[0x277D50DA0], v125);
        v129 = swift_allocObject();
        *(v129 + 16) = v201;
        *(v129 + 32) = sub_227664B60();
        *(v129 + 40) = v130;
        *(v129 + 48) = 0;
        v131 = sub_226F3EAA8(v129);
        swift_setDeallocating();
        sub_22745AE44(v129 + 32);
        swift_deallocClassInstance();
        *(v128 + 48) = v198;
        *(v128 + 64) = 1;
        *(v128 + 32) = 10;
        *(v128 + 40) = v131;
        v126(v9, v203);
        result = v127;
        *(v127 + 48) = v128;
        return result;
      case 20:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
        v205 = swift_allocObject();
        *(v205 + 16) = xmmword_227675BD0;
        v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E38, &qword_227686050);
        v167 = swift_allocObject();
        v201 = xmmword_227670CD0;
        *(v167 + 16) = xmmword_227670CD0;
        v168 = *MEMORY[0x277D50DA8];
        v197 = *(v7 + 104);
        v197(v9, v168, v6);
        *&v198 = v7 + 104;
        *&v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACD8, &qword_227679728);
        v169 = swift_allocObject();
        *(v169 + 16) = v201;
        *(v169 + 32) = sub_227664B60();
        *(v169 + 40) = v170;
        *(v169 + 48) = 0;
        v171 = sub_226F3EAA8(v169);
        swift_setDeallocating();
        sub_22745AE44(v169 + 32);
        swift_deallocClassInstance();
        v200 = xmmword_227685FB0;
        *(v167 + 48) = xmmword_227685FB0;
        *(v167 + 64) = 1;
        *(v167 + 32) = 20;
        *(v167 + 40) = v171;
        v172 = *(v7 + 8);
        v204 = v7 + 8;
        *&v195 = v172;
        v172(v9, v6);
        *(v205 + 32) = v167;
        v173 = swift_allocObject();
        v193 = xmmword_2276728D0;
        *(v173 + 16) = xmmword_2276728D0;
        LODWORD(v194) = *MEMORY[0x277D50DA0];
        v174 = v197;
        (v197)(v9);
        v175 = swift_allocObject();
        *(v175 + 16) = v201;
        *(v175 + 32) = sub_227664B60();
        *(v175 + 40) = v176;
        *(v175 + 48) = 0;
        v177 = sub_226F3EAA8(v175);
        swift_setDeallocating();
        sub_22745AE44(v175 + 32);
        swift_deallocClassInstance();
        *(v173 + 48) = v200;
        *(v173 + 64) = 1;
        *(v173 + 32) = 10;
        *(v173 + 40) = v177;
        v203 = v6;
        v178 = v6;
        v179 = v195;
        (v195)(v9, v178);
        LODWORD(v192) = *MEMORY[0x277D50DB0];
        v174(v9);
        v180 = swift_allocObject();
        *(v180 + 16) = v201;
        *(v180 + 32) = sub_227664B60();
        *(v180 + 40) = v181;
        *(v180 + 48) = 0;
        v182 = sub_226F3EAA8(v180);
        swift_setDeallocating();
        sub_22745AE44(v180 + 32);
        swift_deallocClassInstance();
        *(v173 + 88) = v200;
        *(v173 + 104) = 1;
        *(v173 + 72) = 10;
        *(v173 + 80) = v182;
        v183 = v203;
        v179(v9, v203);
        *(v205 + 40) = v173;
        v32 = swift_allocObject();
        *(v32 + 16) = v193;
        v62 = v197;
        v197(v9, v192, v183);
        v184 = swift_allocObject();
        *(v184 + 16) = v201;
        *(v184 + 32) = sub_227664B60();
        *(v184 + 40) = v185;
        *(v184 + 48) = 0;
        v65 = sub_226F3EAA8(v184);
        swift_setDeallocating();
        sub_22745AE44(v184 + 32);
        swift_deallocClassInstance();
        *(v32 + 48) = v200;
        *(v32 + 64) = 1;
        v66 = 10;
        break;
      case 30:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
        v205 = swift_allocObject();
        *(v205 + 16) = xmmword_227675BD0;
        v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E38, &qword_227686050);
        v45 = swift_allocObject();
        v201 = xmmword_227670CD0;
        *(v45 + 16) = xmmword_227670CD0;
        v46 = *MEMORY[0x277D50DA8];
        v197 = *(v7 + 104);
        v197(v9, v46, v6);
        *&v198 = v7 + 104;
        *&v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACD8, &qword_227679728);
        v47 = swift_allocObject();
        *(v47 + 16) = v201;
        *(v47 + 32) = sub_227664B60();
        *(v47 + 40) = v48;
        *(v47 + 48) = 0;
        v49 = sub_226F3EAA8(v47);
        swift_setDeallocating();
        sub_22745AE44(v47 + 32);
        swift_deallocClassInstance();
        v200 = xmmword_227685FB0;
        *(v45 + 48) = xmmword_227685FB0;
        *(v45 + 64) = 1;
        *(v45 + 32) = 30;
        *(v45 + 40) = v49;
        v50 = *(v7 + 8);
        v204 = v7 + 8;
        *&v195 = v50;
        v50(v9, v6);
        *(v205 + 32) = v45;
        v51 = swift_allocObject();
        v193 = xmmword_2276728D0;
        *(v51 + 16) = xmmword_2276728D0;
        LODWORD(v194) = *MEMORY[0x277D50DA0];
        v52 = v197;
        (v197)(v9);
        v53 = swift_allocObject();
        *(v53 + 16) = v201;
        *(v53 + 32) = sub_227664B60();
        *(v53 + 40) = v54;
        *(v53 + 48) = 0;
        v55 = sub_226F3EAA8(v53);
        swift_setDeallocating();
        sub_22745AE44(v53 + 32);
        swift_deallocClassInstance();
        *(v51 + 48) = v200;
        *(v51 + 64) = 1;
        *(v51 + 32) = 20;
        *(v51 + 40) = v55;
        v203 = v6;
        v56 = v6;
        v57 = v195;
        (v195)(v9, v56);
        LODWORD(v192) = *MEMORY[0x277D50DB0];
        v52(v9);
        v58 = swift_allocObject();
        *(v58 + 16) = v201;
        *(v58 + 32) = sub_227664B60();
        *(v58 + 40) = v59;
        *(v58 + 48) = 0;
        v60 = sub_226F3EAA8(v58);
        swift_setDeallocating();
        sub_22745AE44(v58 + 32);
        swift_deallocClassInstance();
        *(v51 + 88) = v200;
        *(v51 + 104) = 1;
        *(v51 + 72) = 10;
        *(v51 + 80) = v60;
        v61 = v203;
        v57(v9, v203);
        *(v205 + 40) = v51;
        v32 = swift_allocObject();
        *(v32 + 16) = v193;
        v62 = v197;
        v197(v9, v192, v61);
        v63 = swift_allocObject();
        *(v63 + 16) = v201;
        *(v63 + 32) = sub_227664B60();
        *(v63 + 40) = v64;
        *(v63 + 48) = 0;
        v65 = sub_226F3EAA8(v63);
        swift_setDeallocating();
        sub_22745AE44(v63 + 32);
        swift_deallocClassInstance();
        *(v32 + 48) = v200;
        *(v32 + 64) = 1;
        v66 = 20;
        break;
      default:
        goto LABEL_14;
    }

    *(v32 + 32) = v66;
    *(v32 + 40) = v65;
    v186 = v203;
    v39 = v195;
    (v195)(v9, v203);
    v62(v9, v194, v186);
    v187 = swift_allocObject();
    *(v187 + 16) = v201;
    *(v187 + 32) = sub_227664B60();
    *(v187 + 40) = v188;
    *(v187 + 48) = 0;
    v189 = sub_226F3EAA8(v187);
    swift_setDeallocating();
    sub_22745AE44(v187 + 32);
    swift_deallocClassInstance();
    *(v32 + 88) = v200;
    *(v32 + 104) = 1;
    *(v32 + 72) = 10;
    *(v32 + 80) = v189;
    v165 = v9;
    v166 = v203;
    goto LABEL_21;
  }

  if (a1 > 59)
  {
    if (a1 == 60)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
      v205 = swift_allocObject();
      *(v205 + 16) = xmmword_227675BD0;
      v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E38, &qword_227686050);
      v138 = swift_allocObject();
      v196 = xmmword_2276728D0;
      *(v138 + 16) = xmmword_2276728D0;
      LODWORD(v193) = *MEMORY[0x277D50DA8];
      v139 = v7;
      *&v198 = *(v7 + 104);
      (v198)(v9);
      *&v195 = v7 + 104;
      v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACD8, &qword_227679728);
      v140 = v6;
      inited = swift_initStackObject();
      v201 = xmmword_227670CD0;
      *(inited + 16) = xmmword_227670CD0;
      *(inited + 32) = sub_227664B60();
      *(inited + 40) = v142;
      *(inited + 48) = 0;
      v143 = sub_226F3EAA8(inited);
      swift_setDeallocating();
      sub_22745AE44(inited + 32);
      v200 = xmmword_227685FB0;
      *(v138 + 48) = xmmword_227685FB0;
      *(v138 + 64) = 1;
      *(v138 + 32) = 30;
      *(v138 + 40) = v143;
      v199 = *(v139 + 8);
      v203 = v140;
      v199(v9, v140);
      v204 = v139 + 8;
      v144 = v140;
      v145 = v198;
      (v198)(v9, v193, v144);
      v146 = swift_initStackObject();
      *(v146 + 16) = v201;
      *(v146 + 32) = sub_227664B60();
      *(v146 + 40) = v147;
      *(v146 + 48) = 0;
      v148 = sub_226F3EAA8(v146);
      swift_setDeallocating();
      sub_22745AE44(v146 + 32);
      *(v138 + 88) = v200;
      *(v138 + 104) = 1;
      *(v138 + 72) = 30;
      *(v138 + 80) = v148;
      v199(v9, v203);
      *(v205 + 32) = v138;
      v149 = swift_allocObject();
      *(v149 + 16) = v196;
      LODWORD(v193) = *MEMORY[0x277D50DA0];
      v150 = v145;
      v145(v9);
      v151 = swift_initStackObject();
      *(v151 + 16) = v201;
      *(v151 + 32) = sub_227664B60();
      *(v151 + 40) = v152;
      *(v151 + 48) = 0;
      v153 = sub_226F3EAA8(v151);
      swift_setDeallocating();
      sub_22745AE44(v151 + 32);
      *(v149 + 48) = v200;
      *(v149 + 64) = 1;
      *(v149 + 32) = 30;
      *(v149 + 40) = v153;
      v154 = v199;
      v199(v9, v203);
      LODWORD(v192) = *MEMORY[0x277D50DB0];
      v150(v9);
      v155 = swift_initStackObject();
      *(v155 + 16) = v201;
      *(v155 + 32) = sub_227664B60();
      *(v155 + 40) = v156;
      *(v155 + 48) = 0;
      v157 = sub_226F3EAA8(v155);
      swift_setDeallocating();
      sub_22745AE44(v155 + 32);
      *(v149 + 88) = v200;
      *(v149 + 104) = 1;
      *(v149 + 72) = 30;
      *(v149 + 80) = v157;
      v158 = v203;
      v154(v9, v203);
      *(v205 + 40) = v149;
      v32 = swift_allocObject();
      *(v32 + 16) = v196;
      (v198)(v9, v192, v158);
      v159 = swift_initStackObject();
      *(v159 + 16) = v201;
      *(v159 + 32) = sub_227664B60();
      *(v159 + 40) = v160;
      *(v159 + 48) = 0;
      v161 = sub_226F3EAA8(v159);
      swift_setDeallocating();
      sub_22745AE44(v159 + 32);
      *(v32 + 48) = v200;
      *(v32 + 64) = 1;
      *(v32 + 32) = 30;
      *(v32 + 40) = v161;
      v162 = v203;
      v39 = v199;
      v199(v9, v203);
      v40 = v162;
      (v198)(v9, v193, v162);
      v163 = swift_initStackObject();
      *(v163 + 16) = v201;
      *(v163 + 32) = sub_227664B60();
      *(v163 + 40) = v164;
      *(v163 + 48) = 0;
      v43 = sub_226F3EAA8(v163);
      swift_setDeallocating();
      sub_22745AE44(v163 + 32);
      *(v32 + 88) = v200;
      *(v32 + 104) = 1;
      v44 = 30;
      goto LABEL_18;
    }

    if (a1 == 90)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
      v205 = swift_allocObject();
      v195 = xmmword_227675BD0;
      *(v205 + 16) = xmmword_227675BD0;
      v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E38, &qword_227686050);
      v67 = swift_allocObject();
      *(v67 + 16) = v195;
      LODWORD(v194) = *MEMORY[0x277D50DA8];
      v68 = *(v7 + 104);
      *&v198 = v7 + 104;
      v68(v9);
      v69 = v68;
      v197 = v68;
      v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACD8, &qword_227679728);
      v70 = swift_initStackObject();
      v201 = xmmword_227670CD0;
      *(v70 + 16) = xmmword_227670CD0;
      *(v70 + 32) = sub_227664B60();
      *(v70 + 40) = v71;
      *(v70 + 48) = 0;
      v72 = sub_226F3EAA8(v70);
      swift_setDeallocating();
      sub_22745AE44(v70 + 32);
      v200 = xmmword_227685FB0;
      *(v67 + 48) = xmmword_227685FB0;
      *(v67 + 64) = 1;
      *(v67 + 32) = 30;
      *(v67 + 40) = v72;
      *&v196 = *(v7 + 8);
      v204 = v7 + 8;
      (v196)(v9, v6);
      LODWORD(v193) = *MEMORY[0x277D50DB0];
      v69(v9);
      v73 = swift_initStackObject();
      *(v73 + 16) = v201;
      *(v73 + 32) = sub_227664B60();
      *(v73 + 40) = v74;
      *(v73 + 48) = 0;
      v75 = sub_226F3EAA8(v73);
      swift_setDeallocating();
      sub_22745AE44(v73 + 32);
      *(v67 + 88) = v200;
      *(v67 + 104) = 1;
      *(v67 + 72) = 30;
      *(v67 + 80) = v75;
      v76 = v196;
      (v196)(v9, v6);
      v191 = *MEMORY[0x277D50DA0];
      (v197)(v9);
      v77 = swift_initStackObject();
      *(v77 + 16) = v201;
      *(v77 + 32) = sub_227664B60();
      *(v77 + 40) = v78;
      *(v77 + 48) = 0;
      v79 = v6;
      v80 = sub_226F3EAA8(v77);
      swift_setDeallocating();
      sub_22745AE44(v77 + 32);
      *(v67 + 128) = v200;
      *(v67 + 144) = 1;
      *(v67 + 112) = 30;
      *(v67 + 120) = v80;
      v76(v9, v79);
      *(v205 + 32) = v67;
      v81 = swift_allocObject();
      *(v81 + 16) = v195;
      v82 = v79;
      v83 = v79;
      v84 = v197;
      v197(v9, v193, v82);
      v85 = swift_initStackObject();
      *(v85 + 16) = v201;
      *(v85 + 32) = sub_227664B60();
      *(v85 + 40) = v86;
      *(v85 + 48) = 0;
      v87 = sub_226F3EAA8(v85);
      swift_setDeallocating();
      sub_22745AE44(v85 + 32);
      *(v81 + 48) = v200;
      *(v81 + 64) = 1;
      *(v81 + 32) = 30;
      *(v81 + 40) = v87;
      v88 = v83;
      v203 = v83;
      v89 = v83;
      v90 = v196;
      (v196)(v9, v89);
      v84(v9, v191, v88);
      v91 = swift_initStackObject();
      *(v91 + 16) = v201;
      *(v91 + 32) = sub_227664B60();
      *(v91 + 40) = v92;
      *(v91 + 48) = 0;
      v93 = sub_226F3EAA8(v91);
      swift_setDeallocating();
      sub_22745AE44(v91 + 32);
      *(v81 + 88) = v200;
      *(v81 + 104) = 1;
      *(v81 + 72) = 30;
      *(v81 + 80) = v93;
      v94 = v203;
      v90(v9, v203);
      v197(v9, v194, v94);
      v95 = swift_initStackObject();
      *(v95 + 16) = v201;
      *(v95 + 32) = sub_227664B60();
      *(v95 + 40) = v96;
      *(v95 + 48) = 0;
      v97 = sub_226F3EAA8(v95);
      swift_setDeallocating();
      sub_22745AE44(v95 + 32);
      *(v81 + 128) = v200;
      *(v81 + 144) = 1;
      *(v81 + 112) = 30;
      *(v81 + 120) = v97;
      v98 = v196;
      (v196)(v9, v94);
      *(v205 + 40) = v81;
      v99 = swift_allocObject();
      *(v99 + 16) = v195;
      v100 = v197;
      v197(v9, v191, v94);
      v101 = swift_initStackObject();
      *(v101 + 16) = v201;
      *(v101 + 32) = sub_227664B60();
      *(v101 + 40) = v102;
      *(v101 + 48) = 0;
      v103 = sub_226F3EAA8(v101);
      swift_setDeallocating();
      sub_22745AE44(v101 + 32);
      *(v99 + 48) = v200;
      *(v99 + 64) = 1;
      *(v99 + 32) = 30;
      *(v99 + 40) = v103;
      v104 = v203;
      v98(v9, v203);
      v105 = v104;
      v100(v9, v194, v104);
      v106 = swift_initStackObject();
      *(v106 + 16) = v201;
      *(v106 + 32) = sub_227664B60();
      *(v106 + 40) = v107;
      *(v106 + 48) = 0;
      v108 = sub_226F3EAA8(v106);
      swift_setDeallocating();
      sub_22745AE44(v106 + 32);
      *(v99 + 88) = v200;
      *(v99 + 104) = 1;
      *(v99 + 72) = 30;
      *(v99 + 80) = v108;
      v109 = v196;
      (v196)(v9, v105);
      v197(v9, v193, v105);
      v110 = swift_initStackObject();
      *(v110 + 16) = v201;
      *(v110 + 32) = sub_227664B60();
      *(v110 + 40) = v111;
      *(v110 + 48) = 0;
      v112 = sub_226F3EAA8(v110);
      swift_setDeallocating();
      sub_22745AE44(v110 + 32);
      *(v99 + 128) = v200;
      *(v99 + 144) = 1;
      *(v99 + 112) = 30;
      *(v99 + 120) = v112;
      v109(v9, v105);
      result = v205;
      *(v205 + 48) = v99;
      return result;
    }
  }

  else if (a1 == 40 || a1 == 45)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
    v205 = swift_allocObject();
    *(v205 + 16) = xmmword_227675BD0;
    v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E38, &qword_227686050);
    v10 = swift_allocObject();
    v196 = xmmword_2276728D0;
    *(v10 + 16) = xmmword_2276728D0;
    LODWORD(v193) = *MEMORY[0x277D50DA8];
    v11 = *(v7 + 104);
    v199 = (v7 + 104);
    v11(v9);
    *&v195 = v11;
    v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACD8, &qword_227679728);
    v12 = v7;
    v13 = v6;
    v14 = swift_initStackObject();
    v200 = xmmword_227670CD0;
    *(v14 + 16) = xmmword_227670CD0;
    *(v14 + 32) = sub_227664B60();
    *(v14 + 40) = v15;
    *(v14 + 48) = 0;
    v16 = sub_226F3EAA8(v14);
    swift_setDeallocating();
    sub_22745AE44(v14 + 32);
    v201 = xmmword_227685FB0;
    *(v10 + 48) = xmmword_227685FB0;
    *(v10 + 64) = 1;
    *(v10 + 32) = 20;
    *(v10 + 40) = v16;
    *&v198 = *(v12 + 8);
    (v198)(v9, v13);
    v204 = v12 + 8;
    (v11)(v9, v193, v13);
    v17 = swift_initStackObject();
    *(v17 + 16) = v200;
    *(v17 + 32) = sub_227664B60();
    *(v17 + 40) = v18;
    *(v17 + 48) = 0;
    v19 = sub_226F3EAA8(v17);
    swift_setDeallocating();
    sub_22745AE44(v17 + 32);
    *(v10 + 88) = v201;
    *(v10 + 104) = 1;
    *(v10 + 72) = 20;
    *(v10 + 80) = v19;
    v203 = v13;
    v20 = v13;
    v21 = v198;
    (v198)(v9, v20);
    *(v205 + 32) = v10;
    v22 = swift_allocObject();
    *(v22 + 16) = v196;
    LODWORD(v193) = *MEMORY[0x277D50DA0];
    v23 = v195;
    (v195)(v9);
    v24 = swift_initStackObject();
    *(v24 + 16) = v200;
    *(v24 + 32) = sub_227664B60();
    *(v24 + 40) = v25;
    *(v24 + 48) = 0;
    v26 = sub_226F3EAA8(v24);
    swift_setDeallocating();
    sub_22745AE44(v24 + 32);
    *(v22 + 48) = v201;
    *(v22 + 64) = 1;
    *(v22 + 32) = 20;
    *(v22 + 40) = v26;
    v27 = v203;
    v21(v9, v203);
    LODWORD(v192) = *MEMORY[0x277D50DB0];
    v28 = v27;
    v23(v9);
    v29 = swift_allocObject();
    *(v29 + 16) = v200;
    *(v29 + 32) = sub_227664B60();
    *(v29 + 40) = v30;
    *(v29 + 48) = 0;
    v31 = sub_226F3EAA8(v29);
    swift_setDeallocating();
    sub_22745AE44(v29 + 32);
    swift_deallocClassInstance();
    *(v22 + 88) = v201;
    *(v22 + 104) = 1;
    *(v22 + 72) = 20;
    *(v22 + 80) = v31;
    (v198)(v9, v28);
    *(v205 + 40) = v22;
    v32 = swift_allocObject();
    *(v32 + 16) = v196;
    v33 = v28;
    v34 = v195;
    (v195)(v9, v192, v33);
    v35 = swift_allocObject();
    *(v35 + 16) = v200;
    *(v35 + 32) = sub_227664B60();
    *(v35 + 40) = v36;
    *(v35 + 48) = 0;
    v37 = sub_226F3EAA8(v35);
    swift_setDeallocating();
    sub_22745AE44(v35 + 32);
    swift_deallocClassInstance();
    *(v32 + 48) = v201;
    *(v32 + 64) = 1;
    *(v32 + 32) = 20;
    *(v32 + 40) = v37;
    v38 = v203;
    v39 = v198;
    (v198)(v9, v203);
    v40 = v38;
    v34(v9, v193, v38);
    v41 = swift_allocObject();
    *(v41 + 16) = v200;
    *(v41 + 32) = sub_227664B60();
    *(v41 + 40) = v42;
    *(v41 + 48) = 0;
    v43 = sub_226F3EAA8(v41);
    swift_setDeallocating();
    sub_22745AE44(v41 + 32);
    swift_deallocClassInstance();
    *(v32 + 88) = v201;
    *(v32 + 104) = 1;
    v44 = 20;
LABEL_18:
    *(v32 + 72) = v44;
    *(v32 + 80) = v43;
    v165 = v9;
    v166 = v40;
LABEL_21:
    v39(v165, v166);
    result = v205;
    *(v205 + 48) = v32;
    return result;
  }

LABEL_14:
  sub_22766A630();
  v132 = sub_22766B380();
  v133 = sub_22766C890();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    *v134 = 134217984;
    *(v134 + 4) = a1;
    _os_log_impl(&dword_226E8E000, v132, v133, "Duration %ld not supported.", v134, 0xCu);
    MEMORY[0x22AA9A450](v134, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v135 = sub_227664EC0();
  sub_22745AE98(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
  v136 = swift_allocError();
  (*(*(v135 - 8) + 104))(v137, *MEMORY[0x277D51188], v135);
  v202 = v136;
  return swift_willThrow();
}

uint64_t sub_22745A0B0(uint64_t a1)
{
  v2 = sub_227662950();
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227662970();
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = &v38 - v9;
  v10 = MEMORY[0x277D84F90];
  v41 = *(a1 + 16);
  if (v41)
  {
    v11 = 0;
    v12 = a1 + 32;
    v13 = v41;
    do
    {
      if (*(v12 + 8 * v11) >= 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226F1F090(0, v10[2] + 1, 1);
          v13 = v41;
          v10 = v42;
        }

        v15 = v10[2];
        v14 = v10[3];
        if (v15 >= v14 >> 1)
        {
          sub_226F1F090((v14 > 1), v15 + 1, 1);
          v13 = v41;
          v10 = v42;
        }

        v10[2] = v15 + 1;
        v10[v15 + 4] = v11;
      }

      ++v11;
    }

    while (v13 != v11);
  }

  sub_22745AE98(&qword_27D7BDC68, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
  sub_22766CC70();
  v17 = v10[2];
  if (v17)
  {
    v18 = v10 + 4;
    do
    {
      v19 = *v18++;
      v43 = v19;
      sub_22766CC50();
      --v17;
    }

    while (v17);
  }

  v20 = v39;
  v21 = v40;
  (*(v40 + 32))(v39, v7, v5);
  sub_227662960();
  (*(v21 + 8))(v20, v5);
  sub_22745AE98(&qword_27D7BDC70, MEMORY[0x277CC9A18], MEMORY[0x277CC9A20]);
  v22 = sub_22766C7B0();
  if (v22)
  {
    v23 = v22;
    v43 = MEMORY[0x277D84F90];
    sub_226F1FDA8(0, v22 & ~(v22 >> 63), 0);
    v24 = v43;
    v25 = v4;
    sub_22766C760();
    if ((v23 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        v26 = sub_22766C7D0();
        v28 = *v27;
        v25 = v27[1];
        v26(&v42, 0);
        if (__OFSUB__(v25, 1))
        {
          break;
        }

        v43 = v24;
        v30 = v24[2];
        v29 = v24[3];
        if (v30 >= v29 >> 1)
        {
          sub_226F1FDA8((v29 > 1), v30 + 1, 1);
          v24 = v43;
        }

        v24[2] = v30 + 1;
        v31 = &v24[2 * v30];
        v31[4] = v28;
        v31[5] = v25 - 1;
        sub_22766C7C0();
        if (!--v23)
        {
          (*(v38 + 8))(v4, v2);
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_34:
    result = sub_2272EC588(v24);
    v24 = result;
    v37 = *(result + 16);
    if (!v37)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  (*(v38 + 8))(v4, v2);
  v24 = MEMORY[0x277D84F90];
LABEL_21:
  v32 = v24[2];
  if (!v32)
  {
    return v24;
  }

  if (v24[4])
  {
    return v24;
  }

  v33 = &v24[2 * v32 + 4];
  v34 = *(v33 - 8);
  if (v34 != v41 - 1)
  {
    return v24;
  }

  v2 = v24[5];
  v25 = *(v33 - 16);
  if (!v25 && v2 == v34)
  {
    return v24;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_34;
  }

  v37 = v24[2];
  if (v37)
  {
LABEL_30:
    v24[4] = v25;
    v24[5] = v2;
    v24[2] = v37 - 1;
    return v24;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t *sub_22745A574(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v26 = *(a2 + 16);
  if (v26 != *(a3 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v6 = *result;
  v5 = result[1];
  v7 = v5 - *result;
  if (v5 >= *result)
  {
    if (__OFSUB__(v5, *result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v13 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v7 != -1)
    {
      v14 = sub_2274CD830(v7 + 1, 0);
      result = sub_227458238(v27, (v14 + 4), v13, v6, v5);
      if (result != v13)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      v11 = v14;
      v12 = v14[2];
      if (!v12)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

LABEL_24:
    v11 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (!v12)
    {
      goto LABEL_25;
    }

LABEL_16:
    v27[0] = MEMORY[0x277D84F90];
    v25 = v11;
    sub_226F1FDC8(0, v12, 0);
    result = v25;
    v15 = v26;
    v16 = v27[0];
    v17 = a2 + 32;
    for (i = 4; ; ++i)
    {
      v19 = result[i];
      if (v19 >= v15)
      {
        break;
      }

      v20 = *(v17 + 8 * v19);
      v21 = *(a3 + 32 + v19);
      v27[0] = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F1FDC8((v22 > 1), v23 + 1, 1);
        result = v25;
        v15 = v26;
        v16 = v27[0];
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 24 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v20;
      *(v24 + 48) = v21;
      if (!--v12)
      {

        return v16;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v8 = (v26 - v6);
  if (v26 < v6)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (__OFSUB__(v26, v6))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v8)
  {
    v9 = MEMORY[0x277D84F90];
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  v9 = sub_2274CD830(v26 - v6, 0);
  result = sub_22745819C(v27, (v9 + 4), v8, v6, v26);
  if (result != v8)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v5 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_8:
  v10 = sub_2274CD830(v5 + 1, 0);
  result = sub_227458238(v27, (v10 + 4), v5 + 1, 0, v5);
  if (result != (v5 + 1))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v27[0] = v9;
  sub_227460C54(v10);
  v11 = v27[0];
  v12 = *(v27[0] + 16);
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_25:

  return MEMORY[0x277D84F90];
}

void sub_22745A7D4(uint64_t a1)
{
  v53 = sub_22766B390();
  v2 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v56 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = &qword_27D7BDC50;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC50, &unk_227686038);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = sub_227664B70();
  MEMORY[0x28223BE20](v10);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v46 - v14;
  v48 = v13;
  v15 = *(a1 + 8);
  v16 = v15 + 56;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 56);
  v20 = (v17 + 63) >> 6;
  v60 = (v13 + 48);
  v61 = (v13 + 56);
  v54 = (v13 + 32);
  v52 = (v2 + 8);

  v21 = 0;
  v55 = MEMORY[0x277D84F90];
  *&v22 = 136315138;
  v50 = v22;
  for (i = v15; v19; v15 = i)
  {
LABEL_11:
    while (1)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v25 = *(v15 + 48) + 24 * (v24 | (v21 << 6));
      if (!*(v25 + 16))
      {
        break;
      }

      (*v61)(v9, 1, 1, v10);
LABEL_6:
      sub_226E97D1C(v9, v4, &unk_227686038);
      if (!v19)
      {
        goto LABEL_7;
      }
    }

    v26 = *v25;
    v27 = *(v25 + 8);
    swift_bridgeObjectRetain_n();
    v28 = v10;
    v29 = v57;
    sub_227664B50();
    v59 = *v60;
    if (v59(v29, 1, v28) == 1)
    {
      v51 = v28;
      sub_226E97D1C(v29, v4, &unk_227686038);
      v30 = v56;
      sub_22766A630();

      v31 = sub_22766B380();
      v32 = sub_22766C890();
      sub_226F49200(v26, v27, 0);
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v46 = v31;
        v34 = v33;
        v35 = v32;
        v36 = swift_slowAlloc();
        v62 = v36;
        *v34 = v50;
        *(v34 + 4) = sub_226E97AE8(v26, v27, &v62);
        v37 = v35;
        v38 = v46;
        _os_log_impl(&dword_226E8E000, v46, v37, "Could not determine strength focus from identifier: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x22AA9A450](v36, -1, -1);
        MEMORY[0x22AA9A450](v34, -1, -1);

        (*v52)(v56, v53);
      }

      else
      {

        (*v52)(v30, v53);
      }

      v39 = 1;
      v4 = &qword_27D7BDC50;
      v10 = v51;
    }

    else
    {
      (*v54)(v9, v29, v28);
      v39 = 0;
      v10 = v28;
    }

    v15 = i;
    (*v61)(v9, v39, 1, v10);
    sub_226F49200(v26, v27, 0);
    if (v59(v9, 1, v10) == 1)
    {
      goto LABEL_6;
    }

    v40 = *v54;
    v41 = v47;
    (*v54)(v47, v9, v10);
    v40(v49, v41, v10);
    v42 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_2273A6FA4(0, *(v55 + 2) + 1, 1, v55);
    }

    v44 = *(v55 + 2);
    v43 = *(v55 + 3);
    if (v44 >= v43 >> 1)
    {
      v55 = sub_2273A6FA4((v43 > 1), v44 + 1, 1, v55);
    }

    v45 = v55;
    *(v55 + 2) = v44 + 1;
    v40(&v45[((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v44], v49, v10);
    v4 = v42;
  }

LABEL_7:
  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {

      return;
    }

    v19 = *(v16 + 8 * v23);
    ++v21;
    if (v19)
    {
      v21 = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
}