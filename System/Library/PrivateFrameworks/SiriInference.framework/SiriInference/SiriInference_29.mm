BOOL sub_1DD5A397C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1DD4DDC08(a1, &v17 - v9, &qword_1ECCDBE50, &unk_1DD654F80);
  v11 = &v10[*(v5 + 56)];
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v13 = *(v11 + *(matched + 32));
  sub_1DD5A5488(v11, type metadata accessor for ContactMatchRuntimeData);
  sub_1DD4DDC08(a2, v7, &qword_1ECCDBE50, &unk_1DD654F80);
  v14 = &v7[*(v5 + 56)];
  v15 = *(v14 + *(matched + 32));
  sub_1DD5A5488(v14, type metadata accessor for ContactMatchRuntimeData);
  return v13 < v15;
}

void sub_1DD5A3AD4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1DD640CA8();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DD5A3F5C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_1DD5A3C1C(0, v2, 1, a1);
  }
}

void sub_1DD5A3C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v40 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v40 - v18;
  v42 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v17 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v47 = -v20;
    v48 = v19;
    v22 = a1 - a3;
    v41 = v20;
    v23 = v19 + v20 * a3;
    v24 = &unk_1DD654F80;
    while (2)
    {
      v45 = v21;
      v46 = a3;
      v43 = v23;
      v44 = v22;
      v53 = v22;
      do
      {
        v25 = v54;
        sub_1DD4DDC08(v23, v54, &qword_1ECCDBE50, v24);
        v26 = v50;
        sub_1DD4DDC08(v21, v50, &qword_1ECCDBE50, v24);
        v27 = v51;
        sub_1DD4DDC08(v25, v51, &qword_1ECCDBE50, v24);
        v28 = v8;
        v29 = v27 + *(v8 + 48);
        v30 = v24;
        matched = type metadata accessor for ContactMatchRuntimeData(0);
        v32 = *(v29 + *(matched + 32));
        v33 = v29;
        v8 = v28;
        sub_1DD5A5488(v33, type metadata accessor for ContactMatchRuntimeData);
        v34 = v52;
        sub_1DD4DDC08(v26, v52, &qword_1ECCDBE50, v30);
        v35 = v34 + *(v8 + 48);
        v36 = *(matched + 32);
        v24 = v30;
        v37 = *(v35 + v36);
        sub_1DD5A5488(v35, type metadata accessor for ContactMatchRuntimeData);
        sub_1DD390754(v26, &qword_1ECCDBE50, v30);
        sub_1DD390754(v54, &qword_1ECCDBE50, v30);
        if (v32 >= v37)
        {
          break;
        }

        if (!v48)
        {
          __break(1u);
          return;
        }

        v38 = v49;
        sub_1DD4DDCBC(v23, v49, &qword_1ECCDBE50, v30);
        swift_arrayInitWithTakeFrontToBack();
        sub_1DD4DDCBC(v38, v21, &qword_1ECCDBE50, v30);
        v21 += v47;
        v23 += v47;
      }

      while (!__CFADD__(v53++, 1));
      a3 = v46 + 1;
      v21 = v45 + v41;
      v22 = v44 - 1;
      v23 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1DD5A3F5C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v137 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
  v146 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v141 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v152 = &v134 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v156 = &v134 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v155 = &v134 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v154 = &v134 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v153 = &v134 - v17;
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v147 = a3;
  v22 = *(a3 + 8);
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_102:
    a3 = *v137;
    if (!*v137)
    {
      goto LABEL_144;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_104;
    }

    goto LABEL_138;
  }

  v135 = &v134 - v20;
  v136 = v21;
  v134 = a4;
  v23 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  v25 = &qword_1ECCDBE50;
  v157 = v6;
  while (1)
  {
    v26 = v23++;
    v148 = v24;
    if (v23 < v22)
    {
      v145 = v22;
      v27 = *v147;
      v28 = *(v146 + 72);
      a3 = *v147 + v28 * v23;
      v138 = v26;
      v29 = v135;
      sub_1DD4DDC08(a3, v135, v25, &unk_1DD654F80);
      v151 = v27;
      v30 = v138;
      v31 = v27 + v28 * v138;
      v32 = v29;
      v33 = v25;
      v34 = v136;
      sub_1DD4DDC08(v31, v136, v33, &unk_1DD654F80);
      v35 = v149;
      LODWORD(v144) = sub_1DD5A397C(v32, v34);
      v149 = v35;
      if (v35)
      {
        sub_1DD390754(v34, &qword_1ECCDBE50, &unk_1DD654F80);
        sub_1DD390754(v32, &qword_1ECCDBE50, &unk_1DD654F80);
LABEL_113:

        return;
      }

      sub_1DD390754(v34, v33, &unk_1DD654F80);
      sub_1DD390754(v32, v33, &unk_1DD654F80);
      v36 = v30 + 2;
      v37 = v151 + v28 * (v30 + 2);
      v25 = v33;
      v38 = v28;
      v150 = v28;
      v39 = v145;
      while (1)
      {
        v40 = v36;
        v41 = v23 + 1;
        if (v41 >= v39)
        {
          break;
        }

        v42 = v153;
        v151 = v36;
        sub_1DD4DDC08(v37, v153, &qword_1ECCDBE50, &unk_1DD654F80);
        v43 = v154;
        sub_1DD4DDC08(a3, v154, &qword_1ECCDBE50, &unk_1DD654F80);
        v44 = v41;
        v45 = v155;
        sub_1DD4DDC08(v42, v155, &qword_1ECCDBE50, &unk_1DD654F80);
        v46 = v45 + *(v6 + 48);
        v23 = v44;
        matched = type metadata accessor for ContactMatchRuntimeData(0);
        v48 = *(v46 + *(matched + 32));
        sub_1DD5A5488(v46, type metadata accessor for ContactMatchRuntimeData);
        v49 = v156;
        sub_1DD4DDC08(v43, v156, &qword_1ECCDBE50, &unk_1DD654F80);
        v50 = v49 + *(v157 + 48);
        v51 = *(matched + 32);
        v6 = v157;
        v52 = *(v50 + v51);
        sub_1DD5A5488(v50, type metadata accessor for ContactMatchRuntimeData);
        sub_1DD390754(v43, &qword_1ECCDBE50, &unk_1DD654F80);
        v53 = v42;
        v25 = &qword_1ECCDBE50;
        sub_1DD390754(v53, &qword_1ECCDBE50, &unk_1DD654F80);
        v38 = v150;
        v40 = v151;
        v39 = v145;
        v37 += v150;
        a3 += v150;
        v36 = v151 + 1;
        if (((v144 ^ (v48 >= v52)) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v23 = v39;
LABEL_10:
      if ((v144 & 1) == 0)
      {
        v24 = v148;
LABEL_31:
        v26 = v138;
        goto LABEL_32;
      }

      v26 = v138;
      if (v23 < v138)
      {
        goto LABEL_137;
      }

      v24 = v148;
      if (v138 < v23)
      {
        if (v39 >= v40)
        {
          v54 = v40;
        }

        else
        {
          v54 = v39;
        }

        v55 = v38 * (v54 - 1);
        v56 = v38 * v54;
        v57 = v138 * v38;
        v58 = v138;
        v59 = v23;
        do
        {
          if (v58 != --v59)
          {
            v60 = *v147;
            if (!*v147)
            {
              goto LABEL_142;
            }

            a3 = v60 + v57;
            sub_1DD4DDCBC(v60 + v57, v141, v25, &unk_1DD654F80);
            v61 = v57 < v55 || a3 >= v60 + v56;
            if (v61)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v55)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1DD4DDCBC(v141, v60 + v55, v25, &unk_1DD654F80);
            v24 = v148;
            v38 = v150;
          }

          ++v58;
          v55 -= v38;
          v56 -= v38;
          v57 += v38;
        }

        while (v58 < v59);
        v6 = v157;
        goto LABEL_31;
      }
    }

LABEL_32:
    v62 = v147[1];
    if (v23 < v62)
    {
      if (__OFSUB__(v23, v26))
      {
        goto LABEL_134;
      }

      if (v23 - v26 < v134)
      {
        break;
      }
    }

LABEL_48:
    if (v23 < v26)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD3BEB7C();
      v24 = v124;
    }

    v80 = *(v24 + 2);
    a3 = v80 + 1;
    if (v80 >= *(v24 + 3) >> 1)
    {
      sub_1DD3BEB7C();
      v24 = v125;
    }

    *(v24 + 2) = a3;
    v81 = v24 + 32;
    v82 = &v24[16 * v80 + 32];
    *v82 = v26;
    *(v82 + 1) = v23;
    v151 = *v137;
    if (!v151)
    {
      goto LABEL_143;
    }

    if (v80)
    {
      v148 = v24;
      while (1)
      {
        v83 = a3 - 1;
        v84 = &v81[16 * a3 - 16];
        v85 = &v24[16 * a3];
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v86 = *(v24 + 4);
          v87 = *(v24 + 5);
          v96 = __OFSUB__(v87, v86);
          v88 = v87 - v86;
          v89 = v96;
LABEL_69:
          if (v89)
          {
            goto LABEL_120;
          }

          v101 = *v85;
          v100 = *(v85 + 1);
          v102 = __OFSUB__(v100, v101);
          v103 = v100 - v101;
          v104 = v102;
          if (v102)
          {
            goto LABEL_123;
          }

          v105 = *(v84 + 1);
          v106 = v105 - *v84;
          if (__OFSUB__(v105, *v84))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v103, v106))
          {
            goto LABEL_128;
          }

          if (v103 + v106 >= v88)
          {
            if (v88 < v106)
            {
              v83 = a3 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (a3 < 2)
        {
          goto LABEL_122;
        }

        v108 = *v85;
        v107 = *(v85 + 1);
        v96 = __OFSUB__(v107, v108);
        v103 = v107 - v108;
        v104 = v96;
LABEL_84:
        if (v104)
        {
          goto LABEL_125;
        }

        v110 = *v84;
        v109 = *(v84 + 1);
        v96 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v96)
        {
          goto LABEL_127;
        }

        if (v111 < v103)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v83 - 1 >= a3)
        {
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
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v147)
        {
          goto LABEL_140;
        }

        a3 = &v81[16 * v83 - 16];
        v115 = *a3;
        v116 = v83;
        v117 = &v81[16 * v83];
        v118 = *(v117 + 1);
        v119 = v149;
        sub_1DD5A4A74(*v147 + *(v146 + 72) * *a3, *v147 + *(v146 + 72) * *v117, *v147 + *(v146 + 72) * v118, v151);
        v149 = v119;
        if (v119)
        {
          goto LABEL_113;
        }

        if (v118 < v115)
        {
          goto LABEL_115;
        }

        v120 = v23;
        v121 = v81;
        v122 = *(v148 + 2);
        if (v116 > v122)
        {
          goto LABEL_116;
        }

        *a3 = v115;
        *(a3 + 8) = v118;
        if (v116 >= v122)
        {
          goto LABEL_117;
        }

        a3 = v122 - 1;
        sub_1DD4EC4E4(v117 + 16, v122 - 1 - v116, v117);
        v24 = v148;
        *(v148 + 2) = v122 - 1;
        v123 = v122 > 2;
        v6 = v157;
        v81 = v121;
        v23 = v120;
        if (!v123)
        {
          goto LABEL_98;
        }
      }

      v90 = &v81[16 * a3];
      v91 = *(v90 - 8);
      v92 = *(v90 - 7);
      v96 = __OFSUB__(v92, v91);
      v93 = v92 - v91;
      if (v96)
      {
        goto LABEL_118;
      }

      v95 = *(v90 - 6);
      v94 = *(v90 - 5);
      v96 = __OFSUB__(v94, v95);
      v88 = v94 - v95;
      v89 = v96;
      if (v96)
      {
        goto LABEL_119;
      }

      v97 = *(v85 + 1);
      v98 = v97 - *v85;
      if (__OFSUB__(v97, *v85))
      {
        goto LABEL_121;
      }

      v96 = __OFADD__(v88, v98);
      v99 = v88 + v98;
      if (v96)
      {
        goto LABEL_124;
      }

      if (v99 >= v93)
      {
        v113 = *v84;
        v112 = *(v84 + 1);
        v96 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v96)
        {
          goto LABEL_132;
        }

        if (v88 < v114)
        {
          v83 = a3 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v22 = v147[1];
    if (v23 >= v22)
    {
      goto LABEL_102;
    }
  }

  v63 = v26 + v134;
  if (__OFADD__(v26, v134))
  {
    goto LABEL_135;
  }

  if (v63 >= v62)
  {
    v63 = v147[1];
  }

  if (v63 < v26)
  {
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    v24 = sub_1DD4EC2B8();
LABEL_104:
    v126 = (v24 + 16);
    for (i = *(v24 + 2); i >= 2; *v126 = i)
    {
      if (!*v147)
      {
        goto LABEL_141;
      }

      v128 = &v24[16 * i];
      v129 = *v128;
      v130 = &v126[2 * i];
      v131 = *(v130 + 1);
      v132 = v149;
      sub_1DD5A4A74(*v147 + *(v146 + 72) * *v128, *v147 + *(v146 + 72) * *v130, *v147 + *(v146 + 72) * v131, a3);
      v149 = v132;
      if (v132)
      {
        break;
      }

      if (v131 < v129)
      {
        goto LABEL_129;
      }

      if (i - 2 >= *v126)
      {
        goto LABEL_130;
      }

      *v128 = v129;
      *(v128 + 1) = v131;
      v133 = *v126 - i;
      if (*v126 < i)
      {
        goto LABEL_131;
      }

      i = *v126 - 1;
      sub_1DD4EC4E4(v130 + 16, v133, v130);
    }

    goto LABEL_113;
  }

  if (v23 == v63)
  {
    goto LABEL_48;
  }

  v64 = *v147;
  v65 = *(v146 + 72);
  v66 = *v147 + v65 * (v23 - 1);
  v150 = -v65;
  v151 = v64;
  v138 = v26;
  v139 = v65;
  v67 = v26 - v23;
  a3 = v64 + v23 * v65;
  v140 = v63;
LABEL_41:
  v144 = v66;
  v145 = v23;
  v142 = a3;
  v143 = v67;
  while (1)
  {
    v68 = v153;
    sub_1DD4DDC08(a3, v153, v25, &unk_1DD654F80);
    v69 = v154;
    sub_1DD4DDC08(v66, v154, &qword_1ECCDBE50, &unk_1DD654F80);
    v70 = v155;
    sub_1DD4DDC08(v68, v155, &qword_1ECCDBE50, &unk_1DD654F80);
    v71 = v70 + *(v6 + 48);
    v72 = type metadata accessor for ContactMatchRuntimeData(0);
    v73 = *(v71 + *(v72 + 32));
    v74 = v71;
    v6 = v157;
    sub_1DD5A5488(v74, type metadata accessor for ContactMatchRuntimeData);
    v75 = v156;
    sub_1DD4DDC08(v69, v156, &qword_1ECCDBE50, &unk_1DD654F80);
    v76 = v75 + *(v6 + 48);
    v77 = *(v76 + *(v72 + 32));
    sub_1DD5A5488(v76, type metadata accessor for ContactMatchRuntimeData);
    v78 = v69;
    v25 = &qword_1ECCDBE50;
    sub_1DD390754(v78, &qword_1ECCDBE50, &unk_1DD654F80);
    sub_1DD390754(v68, &qword_1ECCDBE50, &unk_1DD654F80);
    if (v73 >= v77)
    {
LABEL_46:
      v23 = v145 + 1;
      v66 = v144 + v139;
      v67 = v143 - 1;
      a3 = v142 + v139;
      if (v145 + 1 == v140)
      {
        v23 = v140;
        v24 = v148;
        v26 = v138;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v151)
    {
      break;
    }

    v79 = v152;
    sub_1DD4DDCBC(a3, v152, &qword_1ECCDBE50, &unk_1DD654F80);
    swift_arrayInitWithTakeFrontToBack();
    sub_1DD4DDCBC(v79, v66, &qword_1ECCDBE50, &unk_1DD654F80);
    v66 += v150;
    a3 += v150;
    v61 = __CFADD__(v67++, 1);
    if (v61)
    {
      goto LABEL_46;
    }
  }

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
}

void sub_1DD5A4A74(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v71 = a4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v59 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v59 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v59 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v16 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v16)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v15;
  v74 = a1;
  v73 = v71;
  v20 = v17 / v15;
  if (v19 >= v17 / v15)
  {
    v38 = v71;
    sub_1DD3C1D40(a2, v17 / v15, v71);
    v39 = v38 + v20 * v15;
    v40 = -v15;
    v41 = v39;
    v69 = a1;
    v61 = v40;
LABEL_37:
    v62 = a2;
    v63 = a2 + v40;
    v59 = v41;
    while (1)
    {
      if (v39 <= v71)
      {
        v74 = a2;
        v72 = v41;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v60 = v41;
      v68 = a3 + v40;
      v42 = v39 + v40;
      v43 = v64;
      v44 = a3;
      sub_1DD4DDC08(v39 + v40, v64, &qword_1ECCDBE50, &unk_1DD654F80);
      v45 = v65;
      sub_1DD4DDC08(v63, v65, &qword_1ECCDBE50, &unk_1DD654F80);
      v46 = v66;
      sub_1DD4DDC08(v43, v66, &qword_1ECCDBE50, &unk_1DD654F80);
      v47 = v70;
      v48 = v46 + *(v70 + 48);
      matched = type metadata accessor for ContactMatchRuntimeData(0);
      v50 = *(v48 + *(matched + 32));
      sub_1DD5A5488(v48, type metadata accessor for ContactMatchRuntimeData);
      v51 = v67;
      sub_1DD4DDC08(v45, v67, &qword_1ECCDBE50, &unk_1DD654F80);
      v52 = v51 + *(v47 + 48);
      v53 = *(v52 + *(matched + 32));
      sub_1DD5A5488(v52, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD390754(v45, &qword_1ECCDBE50, &unk_1DD654F80);
      sub_1DD390754(v43, &qword_1ECCDBE50, &unk_1DD654F80);
      if (v50 < v53)
      {
        a3 = v68;
        if (v44 < v62 || v68 >= v62)
        {
          a2 = v63;
          swift_arrayInitWithTakeFrontToBack();
          v41 = v60;
          v40 = v61;
          a1 = v69;
        }

        else
        {
          v57 = v60;
          v40 = v61;
          v41 = v60;
          v58 = v63;
          a2 = v63;
          a1 = v69;
          if (v44 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v58;
            v41 = v57;
          }
        }

        goto LABEL_37;
      }

      v54 = v68;
      v55 = v44 < v39 || v68 >= v39;
      a2 = v62;
      if (v55)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v54;
        v39 = v42;
        v41 = v42;
        a1 = v69;
        v40 = v61;
      }

      else
      {
        v41 = v42;
        v16 = v39 == v44;
        a3 = v68;
        v39 = v42;
        a1 = v69;
        v40 = v61;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v54;
          v39 = v42;
          v41 = v42;
        }
      }
    }

    v74 = a2;
    v72 = v59;
  }

  else
  {
    v21 = v71;
    sub_1DD3C1D40(a1, (a2 - a1) / v15, v71);
    v62 = v15;
    v63 = v21 + v19 * v15;
    v72 = v63;
    v68 = a3;
    while (v71 < v63 && a2 < a3)
    {
      v69 = a1;
      v23 = v64;
      sub_1DD4DDC08(a2, v64, &qword_1ECCDBE50, &unk_1DD654F80);
      v24 = v65;
      sub_1DD4DDC08(v71, v65, &qword_1ECCDBE50, &unk_1DD654F80);
      v25 = v66;
      sub_1DD4DDC08(v23, v66, &qword_1ECCDBE50, &unk_1DD654F80);
      v26 = v70;
      v27 = v25 + *(v70 + 48);
      v28 = type metadata accessor for ContactMatchRuntimeData(0);
      v29 = *(v27 + *(v28 + 32));
      sub_1DD5A5488(v27, type metadata accessor for ContactMatchRuntimeData);
      v30 = v67;
      sub_1DD4DDC08(v24, v67, &qword_1ECCDBE50, &unk_1DD654F80);
      v31 = v30 + *(v26 + 48);
      v32 = *(v31 + *(v28 + 32));
      sub_1DD5A5488(v31, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD390754(v24, &qword_1ECCDBE50, &unk_1DD654F80);
      sub_1DD390754(v23, &qword_1ECCDBE50, &unk_1DD654F80);
      if (v29 >= v32)
      {
        v33 = v62;
        v36 = v71 + v62;
        v34 = v69;
        if (v69 < v71 || v69 >= v36)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v68;
        }

        else
        {
          a3 = v68;
          if (v69 != v71)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v73 = v36;
        v71 = v36;
      }

      else
      {
        v33 = v62;
        v34 = v69;
        if (v69 < a2 || v69 >= a2 + v62)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 += v33;
          a3 = v68;
        }

        else
        {
          a3 = v68;
          if (v69 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v33;
        }
      }

      a1 = v34 + v33;
      v74 = a1;
    }
  }

LABEL_59:
  sub_1DD4EC2E8(&v74, &v73, &v72);
}

void sub_1DD5A5084()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v20 = 0;
      MEMORY[0x1E12B3DC0](&v20, 8);
      v5 = (v20 * v2) >> 64;
      if (v2 > v20 * v2)
      {
        v6 = -v2 % v2;
        if (v6 > v20 * v2)
        {
          do
          {
            v20 = 0;
            MEMORY[0x1E12B3DC0](&v20, 8);
          }

          while (v6 > v20 * v2);
          v5 = (v20 * v2) >> 64;
        }
      }

      v7 = v4 + v5;
      if (__OFADD__(v4, v5))
      {
        break;
      }

      if (v4 != v7)
      {
        v8 = *(v1 + 16);
        if (v4 >= v8)
        {
          goto LABEL_20;
        }

        if (v7 >= v8)
        {
          goto LABEL_21;
        }

        v9 = (v1 + 32 + 16 * v4);
        v11 = *v9;
        v10 = v9[1];
        v12 = (v1 + 32 + 16 * v7);
        v14 = *v12;
        v13 = v12[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD4EC6F4();
          v1 = v15;
        }

        if (v4 >= *(v1 + 16))
        {
          goto LABEL_22;
        }

        v16 = (v1 + 32 + 16 * v4);
        *v16 = v14;
        v16[1] = v13;

        if (v7 >= *(v1 + 16))
        {
          goto LABEL_23;
        }

        v17 = (v1 + 32 + 16 * v7);
        *v17 = v11;
        v17[1] = v10;

        *v19 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

unint64_t sub_1DD5A5208(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1E12B3DC0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1E12B3DC0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DD5A5294(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD63FDA8();

  [a3 setAnonymizedEntityIdentifier_];
}

void sub_1DD5A52F8(uint64_t a1, void *a2)
{
  v3 = sub_1DD6400F8();
  [a2 setAnonymizedEntitiesPresenteds_];
}

void sub_1DD5A5358(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD63FDA8();
  [a3 setAnonymizedEntityPresented_];
}

uint64_t sub_1DD5A53B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolver.SignalSet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DD5A5414(uint64_t a1, void *a2, SEL *a3)
{
  v5 = sub_1DD6400F8();

  [a2 *a3];
}

uint64_t sub_1DD5A5488(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_12_41(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

id sub_1DD5A5500(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DD63D0B8();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_1DD63D0F8();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_1DD5A559C()
{
  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isDiagnosticSubmissionAllowed];

    byte_1ECD0DE38 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD5A5600()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1DD63FDA8();
  v2 = [v0 BOOLForKey_];

  byte_1EE165208 = v2;
}

void sub_1DD5A5690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v14 = (v13 - v12);
  if (qword_1EE165200 != -1)
  {
    swift_once();
  }

  if (byte_1EE165208)
  {
    if (qword_1EE160508 != -1)
    {
      OUTLINED_FUNCTION_3_5(&qword_1EE160508);
    }

    v15 = sub_1DD63F9F8();
    v23 = OUTLINED_FUNCTION_11(v15, qword_1EE16EED0);
    v16 = sub_1DD640368();
    if (os_log_type_enabled(v23, v16))
    {
      v17 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_20_0(v17);
      _os_log_impl(&dword_1DD38D000, v23, v16, "Omitting SELF logging call as UsageLoggingDisabled flag present", v14, 2u);
      OUTLINED_FUNCTION_19_0();
    }

    v18 = v23;
  }

  else
  {
    v19 = [objc_opt_self() sharedAnalytics];
    v20 = [v19 defaultMessageStream];

    sub_1DD3BB660(a2, v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      sub_1DD3C34AC(v7);
      [v20 emitMessage_];
    }

    else
    {
      (*(v10 + 32))(v14, v7, v8);
      v21 = sub_1DD63D0B8();
      [v20 emitMessage:a1 isolatedStreamUUID:v21];

      (*(v10 + 8))(v14, v8);
    }
  }
}

id sub_1DD5A5950(uint64_t a1)
{
  v2 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = [objc_allocWithZone(MEMORY[0x1E69CEBD8]) init];
  if (v9)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E69CEBE0]) init];
    if (v10)
    {
      v11 = v10;
      sub_1DD39638C(0, &qword_1EE1638C0, 0x1E69CF638);
      (*(v4 + 16))(v8, a1, v2);
      v12 = sub_1DD5A5500(v8);
      [v11 setInferenceId_];

      [v9 setEventMetadata_];
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

void sub_1DD5A5AB4()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v41 = v7;
  v42 = v8;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v13);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_4_85();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  v21 = v20 - v19;
  v22 = sub_1DD5A5950(v2);
  if (v22)
  {
    v23 = v22;
    v40 = v6;
    v24 = [objc_allocWithZone(MEMORY[0x1E69CECD0]) init];
    if (v24)
    {
      v25 = v24;
      v39 = v2;
      sub_1DD39638C(0, &qword_1EE1638C0, 0x1E69CF638);
      v38 = *(v17 + 16);
      v38(v21, v4, v15);
      v26 = sub_1DD5A5500(v21);
      OUTLINED_FUNCTION_16_45(v26, sel_setOriginalResolutionContextId_);

      [v25 setTaskSuccessType_];
      [v25 setIsSuccess_];
      [v25 setIsExecuted_];
      [v25 setIsSuccessfulDirectExecution_];
      OUTLINED_FUNCTION_20_33([v25 setTaskSpecificInfo_], sel_setSimpleTaskInfoGenerated_);
      if (qword_1EE160508 != -1)
      {
        OUTLINED_FUNCTION_3_5(&qword_1EE160508);
      }

      v27 = sub_1DD63F9F8();
      v28 = OUTLINED_FUNCTION_11(v27, qword_1EE16EED0);
      v29 = sub_1DD640368();
      if (OUTLINED_FUNCTION_4_53(v29))
      {
        v30 = OUTLINED_FUNCTION_9();
        *v30 = 0;
        _os_log_impl(&dword_1DD38D000, v28, v12, "Emitting simple task info event to SELF", v30, 2u);
        OUTLINED_FUNCTION_0_1();
      }

      v38(v0, v39, v15);
      OUTLINED_FUNCTION_3_82();

      sub_1DD3C34AC(v0);
      OUTLINED_FUNCTION_17();
      return;
    }
  }

  if (qword_1EE160508 != -1)
  {
    OUTLINED_FUNCTION_3_5(&qword_1EE160508);
  }

  v31 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_11(v31, qword_1EE16EED0);
  v32 = sub_1DD640378();
  if (OUTLINED_FUNCTION_8_60(v32))
  {
    v33 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_20_0(v33);
    OUTLINED_FUNCTION_32_3(&dword_1DD38D000, v34, v35, "Failed to create Inference SELF event templates for SimpleTaskInfo");
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_17_36();
  OUTLINED_FUNCTION_17();
}

void sub_1DD5A5DDC()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v4 = v3;
  v49 = v5;
  v48 = v6;
  v47 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_4_85();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  v23 = sub_1DD5A5950(v9);
  if (v23)
  {
    v24 = v23;
    v46 = v4;
    v25 = [objc_allocWithZone(MEMORY[0x1E69CECA0]) init];
    if (v25)
    {
      v26 = v25;
      v43 = v2;
      v45 = v9;
      sub_1DD39638C(0, &qword_1EE1638C0, 0x1E69CF638);
      v27 = *(v18 + 16);
      v27(v22, v11, v16);
      v28 = sub_1DD5A5500(v22);
      [v26 setOriginalResolutionContextId_];

      v27(v22, v13, v16);
      v29 = sub_1DD5A5500(v22);
      OUTLINED_FUNCTION_16_45(v29, sel_setQueryId_);

      if ((v47 & 0x100000000) == 0)
      {
        [v26 setResolutionState_];
      }

      [v26 setForcePromptType_];
      sub_1DD5A69D0(v49, v46, v26);
      sub_1DD5A6A28(v44, v26);
      OUTLINED_FUNCTION_20_33(v30, sel_setResolutionQueryInfoGenerated_);
      if (qword_1EE160508 != -1)
      {
        OUTLINED_FUNCTION_3_5(&qword_1EE160508);
      }

      v31 = sub_1DD63F9F8();
      v32 = OUTLINED_FUNCTION_11(v31, qword_1EE16EED0);
      v33 = sub_1DD640368();
      if (OUTLINED_FUNCTION_4_53(v33))
      {
        *OUTLINED_FUNCTION_9() = 0;
        OUTLINED_FUNCTION_19_34(&dword_1DD38D000, v34, v35, "Emitting Resolution Query Info Event to SELF");
        OUTLINED_FUNCTION_0_1();
      }

      v27(v0, v45, v16);
      OUTLINED_FUNCTION_3_82();

      sub_1DD3C34AC(v0);
      OUTLINED_FUNCTION_17();
      return;
    }
  }

  if (qword_1EE160508 != -1)
  {
    OUTLINED_FUNCTION_3_5(&qword_1EE160508);
  }

  v36 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_11(v36, qword_1EE16EED0);
  v37 = sub_1DD640378();
  if (OUTLINED_FUNCTION_8_60(v37))
  {
    v38 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_20_0(v38);
    OUTLINED_FUNCTION_32_3(&dword_1DD38D000, v39, v40, "Failed to create Inference SELF event templates for ResolutionQueryInfo");
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_17_36();
  OUTLINED_FUNCTION_17();
}

void sub_1DD5A6114()
{
  OUTLINED_FUNCTION_18_4();
  v42 = v1;
  v43 = v2;
  v41 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_4_85();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v19 = sub_1DD5A5950(v7);
  if (v19)
  {
    v20 = v19;
    v21 = [objc_allocWithZone(MEMORY[0x1E69CEC90]) init];
    if (v21)
    {
      v22 = v21;
      v40 = v7;
      sub_1DD39638C(0, &qword_1EE1638C0, 0x1E69CF638);
      v23 = *(v14 + 16);
      v23(v18, v9, v12);
      v24 = sub_1DD5A5500(v18);
      [v22 setOriginalResolutionContextId_];

      v23(v18, v5, v12);
      v25 = sub_1DD5A5500(v18);
      OUTLINED_FUNCTION_16_45(v25, sel_setQueryId_);

      if ((v41 & 0x100000000) == 0)
      {
        v26 = [v22 setConfirmationResolution_];
      }

      if ((v42 & 0x100000000) == 0)
      {
        v26 = [v22 setDisambiguationResolution_];
      }

      if (v43)
      {
        v26 = sub_1DD63FDA8();
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      OUTLINED_FUNCTION_16_45(v26, sel_setAnonymizedSelectedEntityIdentifier_);

      OUTLINED_FUNCTION_20_33(v35, sel_setUserPromptSelectedInfoGenerated_);
      if (qword_1EE160508 != -1)
      {
        OUTLINED_FUNCTION_3_5(&qword_1EE160508);
      }

      v36 = sub_1DD63F9F8();
      v37 = OUTLINED_FUNCTION_11(v36, qword_1EE16EED0);
      v38 = sub_1DD640368();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_9();
        *v39 = 0;
        _os_log_impl(&dword_1DD38D000, v37, v38, "Emitting userPromptSelectedInfo event to SELF", v39, 2u);
        OUTLINED_FUNCTION_0_1();
      }

      v23(v0, v40, v12);
      OUTLINED_FUNCTION_3_82();

      sub_1DD3C34AC(v0);
      OUTLINED_FUNCTION_17();
      return;
    }
  }

  if (qword_1EE160508 != -1)
  {
    OUTLINED_FUNCTION_3_5(&qword_1EE160508);
  }

  v28 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_11(v28, qword_1EE16EED0);
  v29 = sub_1DD640378();
  if (OUTLINED_FUNCTION_8_60(v29))
  {
    v30 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_20_0(v30);
    OUTLINED_FUNCTION_32_3(&dword_1DD38D000, v31, v32, "Failed to create Inference SELF event templates for UserPromptSelectedInfo");
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_17_36();
  OUTLINED_FUNCTION_17();
}

void sub_1DD5A646C()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v4 = v3;
  v45 = v5;
  v44 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v13);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_4_85();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  v21 = v20 - v19;
  v22 = sub_1DD5A5950(v10);
  if (v22)
  {
    v23 = v22;
    v43 = v4;
    v24 = [objc_allocWithZone(MEMORY[0x1E69CEBF8]) init];
    if (v24)
    {
      v25 = v24;
      v42 = v10;
      sub_1DD39638C(0, &qword_1EE1638C0, 0x1E69CF638);
      v41 = v2;
      v26 = *(v17 + 16);
      v26(v21, v12, v15);
      v27 = sub_1DD5A5500(v21);
      [v25 setOriginalResolutionContextId_];

      v26(v21, v8, v15);
      v28 = sub_1DD5A5500(v21);
      OUTLINED_FUNCTION_16_45(v28, sel_setQueryId_);

      [v25 setContactQueryMetadata_];
      [v25 setOntologySource_];
      sub_1DD5A6954(v43, v25);
      OUTLINED_FUNCTION_20_33([v25 setIsEntityCandidateRetrievalEnabled_], sel_setContactCandidatesInfoGenerated_);
      if (qword_1EE160508 != -1)
      {
        OUTLINED_FUNCTION_3_5(&qword_1EE160508);
      }

      v29 = sub_1DD63F9F8();
      v30 = OUTLINED_FUNCTION_11(v29, qword_1EE16EED0);
      v31 = sub_1DD640368();
      if (OUTLINED_FUNCTION_4_53(v31))
      {
        *OUTLINED_FUNCTION_9() = 0;
        OUTLINED_FUNCTION_19_34(&dword_1DD38D000, v32, v33, "Emitting contact candidates info event to SELF");
        OUTLINED_FUNCTION_0_1();
      }

      v26(v0, v42, v15);
      OUTLINED_FUNCTION_3_82();

      sub_1DD3C34AC(v0);
      OUTLINED_FUNCTION_17();
      return;
    }
  }

  if (qword_1EE160508 != -1)
  {
    OUTLINED_FUNCTION_3_5(&qword_1EE160508);
  }

  v34 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_11(v34, qword_1EE16EED0);
  v35 = sub_1DD640378();
  if (OUTLINED_FUNCTION_8_60(v35))
  {
    v36 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_20_0(v36);
    OUTLINED_FUNCTION_32_3(&dword_1DD38D000, v37, v38, "Failed to create Inference SELF event templates for ContactCandidatesInfo");
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_17_36();
  OUTLINED_FUNCTION_17();
}

void sub_1DD5A67CC(uint64_t a1, uint64_t a2, SEL *a3, const char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = sub_1DD5A5950(a2);
  if (v12)
  {
    v13 = v12;
    [v12 *a3];
    v14 = sub_1DD63D0F8();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v14);
    sub_1DD5A5690(v13, v11);

    sub_1DD3C34AC(v11);
  }

  else
  {
    if (qword_1EE160508 != -1)
    {
      OUTLINED_FUNCTION_3_5(&qword_1EE160508);
    }

    v15 = sub_1DD63F9F8();
    v20 = OUTLINED_FUNCTION_11(v15, qword_1EE16EED0);
    v16 = sub_1DD640378();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = OUTLINED_FUNCTION_9();
      *v17 = 0;
      _os_log_impl(&dword_1DD38D000, v20, v16, a4, v17, 2u);
      OUTLINED_FUNCTION_0_1();
    }

    v18 = v20;
  }
}

void sub_1DD5A6954(uint64_t a1, void *a2)
{
  sub_1DD39638C(0, &unk_1EE160170, 0x1E69CEBD0);
  v3 = sub_1DD6400F8();
  [a2 setCandidates_];
}

void sub_1DD5A69D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD63FDA8();
  [a3 setRecommenderModelVersion_];
}

void sub_1DD5A6A28(uint64_t a1, void *a2)
{
  v3 = sub_1DD6400F8();
  [a2 setAnonymizedRecommendedEntityIdentifiers_];
}

void OUTLINED_FUNCTION_3_82()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  sub_1DD5A5690(v2, v0);
}

void OUTLINED_FUNCTION_19_34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t type metadata accessor for SELFLoggingService(uint64_t a1)
{
  result = qword_1ECCDF290;
  if (!qword_1ECCDF290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DD5A6B58(uint64_t a1)
{
  result = sub_1DD63F188();
  if (v2 <= 0x3F)
  {
    result = sub_1DD406E2C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1DD5A6BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v5 = sub_1DD63FB78();
  OUTLINED_FUNCTION_0();
  v39 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v42 = v8;
  v43 = sub_1DD63FBD8();
  OUTLINED_FUNCTION_0();
  v41 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v40 = v11;
  v12 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  type metadata accessor for SELFLoggingService(0);
  OUTLINED_FUNCTION_0();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a3;
  if (a3)
  {
    v35 = *(v3 + *(v23 + 20));
    sub_1DD5A7688(v3, &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v12);
    v25 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v26 = (v21 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = v5;
    v28 = (*(v14 + 80) + v26 + 16) & ~*(v14 + 80);
    v29 = swift_allocObject();
    sub_1DD5A76EC(v24, v29 + v25);
    v30 = (v29 + v26);
    v31 = v38;
    *v30 = v37;
    v30[1] = v31;
    (*(v14 + 32))(v29 + v28, &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    aBlock[4] = sub_1DD5A7750;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DD3CBCD0;
    aBlock[3] = &block_descriptor_18;
    v32 = _Block_copy(aBlock);

    v33 = v40;
    sub_1DD63FBA8();
    v44 = MEMORY[0x1E69E7CC0];
    sub_1DD5A7848(&qword_1EE163978, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
    sub_1DD44FA38();
    v34 = v42;
    sub_1DD640718();
    MEMORY[0x1E12B27A0](0, v33, v34, v32);
    _Block_release(v32);
    (*(v39 + 8))(v34, v27);
    (*(v41 + 8))(v33, v43);
  }
}

uint64_t sub_1DD5A6FDC@<X0>(uint64_t a1@<X8>)
{
  MEMORY[0x1E12B2260]();
  sub_1DD63F158();

  if (v4)
  {
    sub_1DD63D088();
  }

  else
  {
    v2 = sub_1DD63D0F8();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }
}

void sub_1DD5A70BC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29 = sub_1DD63D0F8();
  v7 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v30 = 0x3A64496B736174;
  v31 = 0xE700000000000000;
  v28 = a2;
  v12 = a2;
  v13 = a3;
  MEMORY[0x1E12B2260](v12, a3, v9);
  v30 = sub_1DD63D098();
  v31 = v14;
  sub_1DD63F168();

  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v15 = sub_1DD63F9F8();
  __swift_project_value_buffer(v15, qword_1EE16F0C8);
  v16 = v29;
  (*(v7 + 16))(v11, a4, v29);
  v17 = v13;

  v18 = sub_1DD63F9D8();
  v19 = sub_1DD640368();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = v16;
    v22 = swift_slowAlloc();
    v30 = v22;
    *v20 = 136315394;
    sub_1DD5A7848(&qword_1ECCDBAE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v23 = sub_1DD640CB8();
    v25 = v24;
    (*(v7 + 8))(v11, v21);
    v26 = sub_1DD39565C(v23, v25, &v30);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1DD39565C(v28, v17, &v30);
    _os_log_impl(&dword_1DD38D000, v18, v19, "[SELFLoggingService] Saved resolutionId:%s for taskId:%s to KVStore", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v22, -1, -1);
    MEMORY[0x1E12B3DA0](v20, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, v16);
  }
}

uint64_t sub_1DD5A7688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SELFLoggingService(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD5A76EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SELFLoggingService(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DD5A7750()
{
  v1 = *(type metadata accessor for SELFLoggingService(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1DD63D0F8() - 8);
  v5 = *(v0 + v3);
  v6 = *(v0 + v3 + 8);
  v7 = v0 + ((v3 + *(v4 + 80) + 16) & ~*(v4 + 80));

  sub_1DD5A70BC(v0 + v2, v5, v6, v7);
}

double block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1DD5A7848(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD5A78A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD5A7904(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1DD5A796C(NSObject *a1, uint64_t a2, uint64_t a3, int a4, const char *a5, ...)
{
  v84 = a5;
  v86 = a4;
  v6 = type metadata accessor for TaskMetadata(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_2_1();
  v88 = v7;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v8);
  v89 = (v81 - v9);
  sub_1DD640478();
  OUTLINED_FUNCTION_0();
  v93 = v11;
  v94 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v92 = v13 - v12;
  sub_1DD640438();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v15 = sub_1DD63FBD8();
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_2();
  v91 = type metadata accessor for SELFLoggingService(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v81 - v21;
  v23 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_1();
  v87 = v27;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v28);
  v85 = v81 - v29;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v30);
  v90 = v81 - v31;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v81 - v33;
  v95 = a1;
  if (*&a1->isa == __PAIR128__(0xE000000000000000, 0) || (sub_1DD640CD8() & 1) != 0)
  {
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EE166510);
    }

    v35 = sub_1DD63F9F8();
    __swift_project_value_buffer(v35, qword_1EE16F0C8);
    v95 = sub_1DD63F9D8();
    v36 = sub_1DD640368();
    if (os_log_type_enabled(v95, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1DD38D000, v95, v36, "[SELFTaskSuccessLogger] taskMetadata.id is empty, not logging any success metrics", v37, 2u);
      OUTLINED_FUNCTION_19_0();
    }

    v38 = v95;
  }

  else
  {
    v82 = v25;
    sub_1DD63D0E8();
    sub_1DD63F178();
    v39 = sub_1DD406E2C();
    v81[1] = "SELFLoggingService";
    v81[2] = v39;
    sub_1DD63FB98();
    v96 = MEMORY[0x1E69E7CC0];
    sub_1DD5A8364(&qword_1EE166488, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    v83 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
    sub_1DD3FC2BC();
    v40 = v23;
    sub_1DD640718();
    (*(v93 + 104))(v92, *MEMORY[0x1E69E8090], v94);
    *(v19 + *(v91 + 20)) = sub_1DD6404A8();
    sub_1DD5A6FDC(v22);
    sub_1DD5A7904(v19, type metadata accessor for SELFLoggingService);
    if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
    {
      v41 = v83;
      sub_1DD3C34AC(v22);
      v42 = v82;
      if (qword_1EE166510 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_1EE166510);
      }

      v43 = sub_1DD63F9F8();
      __swift_project_value_buffer(v43, qword_1EE16F0C8);
      v44 = v88;
      sub_1DD5A78A0(v95, v88);
      v45 = sub_1DD63F9D8();
      v46 = sub_1DD640368();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v96 = v48;
        *v47 = 136315138;
        v49 = *v44;
        v50 = v44[1];

        OUTLINED_FUNCTION_0_130();
        sub_1DD5A7904(v44, v51);
        v52 = sub_1DD39565C(v49, v50, &v96);

        *(v47 + 4) = v52;
        _os_log_impl(&dword_1DD38D000, v45, v46, "Could not find a resolutionId for taskId:%s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x1E12B3DA0](v48, -1, -1);
        OUTLINED_FUNCTION_19_0();
      }

      else
      {

        OUTLINED_FUNCTION_0_130();
        sub_1DD5A7904(v44, v78);
      }

      (*(v42 + 8))(v41, v40);
    }

    else
    {
      v53 = v82;
      v54 = v90;
      (*(v82 + 32))(v90, v22, v23);

      v55 = [objc_allocWithZone(MEMORY[0x1E69CECE8]) init];
      v56 = v83;
      sub_1DD5A5AB4();

      if (qword_1EE166510 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_1EE166510);
      }

      v57 = sub_1DD63F9F8();
      __swift_project_value_buffer(v57, qword_1EE16F0C8);
      v58 = *(v53 + 16);
      v59 = v85;
      v58(v85, v54, v40);
      v60 = v87;
      v58(v87, v56, v40);
      v61 = v89;
      sub_1DD5A78A0(v95, v89);
      v62 = sub_1DD63F9D8();
      v63 = sub_1DD640368();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v96 = v95;
        *v64 = 136315650;
        sub_1DD5A8364(&qword_1ECCDBAE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        LODWORD(v94) = v63;
        v65 = sub_1DD640CB8();
        v67 = v66;
        v68 = *(v53 + 8);
        v68(v59, v40);
        v69 = sub_1DD39565C(v65, v67, &v96);

        *(v64 + 4) = v69;
        *(v64 + 12) = 2080;
        v70 = sub_1DD640CB8();
        v72 = v71;
        v68(v60, v40);
        v73 = sub_1DD39565C(v70, v72, &v96);

        *(v64 + 14) = v73;
        *(v64 + 22) = 2080;
        v74 = *v61;
        v75 = v61[1];

        OUTLINED_FUNCTION_0_130();
        sub_1DD5A7904(v61, v76);
        v77 = sub_1DD39565C(v74, v75, &v96);

        *(v64 + 24) = v77;
        _os_log_impl(&dword_1DD38D000, v62, v94, v84, v64, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_19_0();
        MEMORY[0x1E12B3DA0](v64, -1, -1);

        v68(v90, v40);
        v68(v83, v40);
      }

      else
      {

        OUTLINED_FUNCTION_0_130();
        sub_1DD5A7904(v61, v79);
        v80 = *(v53 + 8);
        v80(v60, v40);
        v80(v59, v40);
        v80(v54, v40);
        v80(v56, v40);
      }
    }
  }
}

uint64_t sub_1DD5A8364(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1DD5A83BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:

    return a4;
  }

  v8 = sub_1DD6407B8();
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  MEMORY[0x1EEE9AC00](v8);
  v10[2] = a1;
  v11 = a2;
  v12 = a3;

  return sub_1DD5164E8(sub_1DD5A8498, v10, a4);
}

void sub_1DD5A84D8(uint64_t a1@<X0>, uint8_t *a2@<X8>)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1DD640778();
    type metadata accessor for DateTimeConstraint();
    sub_1DD49C1EC();
    sub_1DD6402A8();
    v2 = v117;
    v4 = v118;
    v5 = v119;
    v6 = v120;
    v7 = v121;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v114 = 0;
  v11 = (v5 + 64) >> 6;
  while (v2 < 0)
  {
    if (!sub_1DD6407F8() || (type metadata accessor for DateTimeConstraint(), swift_dynamicCast(), v16 = v116, v14 = v6, v15 = v7, !v116))
    {
LABEL_120:
      sub_1DD3AA5A4(v2);
      *a2 = v114;
      return;
    }

LABEL_17:
    v115 = v15;
    v17 = 0;
    v18 = *(v16 + 16);
    while (v17 != 7)
    {
      v19 = &unk_1F58ADBC0 + v17++;
      if (v19[32] == v18)
      {
        goto LABEL_22;
      }
    }

    if (!sub_1DD4E21DC(*(v16 + 16), &unk_1F58ADBE8))
    {
      goto LABEL_36;
    }

LABEL_22:
    if (*(v16 + 50) != 1)
    {
      if (!*(v16 + 50))
      {
        switch(v18)
        {
          case 1:
            if (qword_1ECCDB0C0 != -1)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v20 = sub_1DD63F9F8();
            v21 = OUTLINED_FUNCTION_11(v20, qword_1ECD0DDC0);
            v22 = sub_1DD640368();
            if (OUTLINED_FUNCTION_2_98(v22))
            {
              v23 = OUTLINED_FUNCTION_9();
              OUTLINED_FUNCTION_1_114(v23);
              OUTLINED_FUNCTION_7_57(&dword_1DD38D000, v21, v24, "[Set::toUserDefinedProperties()] inserting .second: absolute");
              OUTLINED_FUNCTION_3_83();
            }

            v25 = v114 | 0x40;
            goto LABEL_101;
          case 2:
            if (qword_1ECCDB0C0 != -1)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v80 = sub_1DD63F9F8();
            v81 = OUTLINED_FUNCTION_11(v80, qword_1ECD0DDC0);
            v82 = sub_1DD640368();
            if (OUTLINED_FUNCTION_2_98(v82))
            {
              v83 = OUTLINED_FUNCTION_9();
              OUTLINED_FUNCTION_1_114(v83);
              OUTLINED_FUNCTION_7_57(&dword_1DD38D000, v81, v84, "[Set::toUserDefinedProperties()] inserting .minute: absolute");
              OUTLINED_FUNCTION_3_83();
            }

            v25 = v114 | 0x20;
            goto LABEL_101;
          case 4:
            if (qword_1ECCDB0C0 != -1)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v69 = sub_1DD63F9F8();
            v70 = OUTLINED_FUNCTION_11(v69, qword_1ECD0DDC0);
            v71 = sub_1DD640368();
            if (OUTLINED_FUNCTION_2_98(v71))
            {
              v72 = OUTLINED_FUNCTION_9();
              OUTLINED_FUNCTION_1_114(v72);
              OUTLINED_FUNCTION_7_57(&dword_1DD38D000, v70, v73, "[Set::toUserDefinedProperties()] inserting .hour: absolute");
              OUTLINED_FUNCTION_3_83();
            }

            OUTLINED_FUNCTION_5_79();
            v39 = v32 | 0x30;
            v41 = (v74 & 0x30) == 0;
            goto LABEL_87;
          case 5:
            if (qword_1ECCDB0C0 != -1)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v94 = sub_1DD63F9F8();
            v95 = OUTLINED_FUNCTION_11(v94, qword_1ECD0DDC0);
            v96 = sub_1DD640368();
            if (OUTLINED_FUNCTION_2_98(v96))
            {
              v97 = OUTLINED_FUNCTION_9();
              OUTLINED_FUNCTION_4_86(v97);
              _os_log_impl(&dword_1DD38D000, v95, v98, "[Set::toUserDefinedProperties()] inserting .day: absolute", a2, 2u);
              OUTLINED_FUNCTION_9_52();
            }

            v25 = v114 | 8;
            goto LABEL_101;
          case 6:
            v113 = a2;
            if (qword_1ECCDB0C0 != -1)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v99 = sub_1DD63F9F8();
            v100 = OUTLINED_FUNCTION_11(v99, qword_1ECD0DDC0);
            v101 = sub_1DD640368();
            if (os_log_type_enabled(v100, v101))
            {
              *OUTLINED_FUNCTION_9() = 0;
              OUTLINED_FUNCTION_7_57(&dword_1DD38D000, v100, v101, "[Set::toUserDefinedProperties()] inserting .dayOfWeek: absolute");
              OUTLINED_FUNCTION_3_83();
            }

            if (*(v16 + 48) == 2 && (*(v16 + 40) & 1) == 0)
            {
              v108 = sub_1DD63F9D8();
              v109 = sub_1DD640368();
              if (OUTLINED_FUNCTION_2_98(v109))
              {
                v110 = OUTLINED_FUNCTION_9();
                OUTLINED_FUNCTION_1_114(v110);
                OUTLINED_FUNCTION_7_57(&dword_1DD38D000, v108, v111, "[Set::toUserDefinedProperties()] inserting .week: absolute");
                OUTLINED_FUNCTION_3_83();
              }

              v7 = v115;
              v112 = v114 | 0xC;
              if ((v114 & 4) != 0)
              {
                v112 = v114 | 8;
              }

              v114 = v112;
              v6 = v14;
              a2 = v113;
            }

            else
            {

              v6 = v14;
              v7 = v115;
              v114 |= 8uLL;
              a2 = v113;
            }

            continue;
          case 9:
            if (qword_1ECCDB0C0 != -1)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v75 = sub_1DD63F9F8();
            v76 = OUTLINED_FUNCTION_11(v75, qword_1ECD0DDC0);
            v77 = sub_1DD640368();
            if (OUTLINED_FUNCTION_2_98(v77))
            {
              v78 = OUTLINED_FUNCTION_9();
              OUTLINED_FUNCTION_4_86(v78);
              _os_log_impl(&dword_1DD38D000, v76, v79, "[Set::toUserDefinedProperties()] inserting .month: absolute", a2, 2u);
              OUTLINED_FUNCTION_9_52();
            }

            v25 = v114 | 2;
            goto LABEL_101;
          case 10:
            if (qword_1ECCDB0C0 != -1)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v85 = sub_1DD63F9F8();
            v86 = OUTLINED_FUNCTION_11(v85, qword_1ECD0DDC0);
            v87 = sub_1DD640368();
            if (OUTLINED_FUNCTION_2_98(v87))
            {
              v88 = OUTLINED_FUNCTION_9();
              OUTLINED_FUNCTION_1_114(v88);
              OUTLINED_FUNCTION_7_57(&dword_1DD38D000, v86, v89, "[Set::toUserDefinedProperties()] inserting .month, .day: absolute");
              OUTLINED_FUNCTION_3_83();
            }

            OUTLINED_FUNCTION_5_79();
            v33 = 10;
            goto LABEL_86;
          case 11:
            if (qword_1ECCDB0C0 != -1)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v90 = sub_1DD63F9F8();
            v54 = OUTLINED_FUNCTION_11(v90, qword_1ECD0DDC0);
            v91 = sub_1DD640368();
            if (!OUTLINED_FUNCTION_2_98(v91))
            {
              goto LABEL_95;
            }

            v92 = OUTLINED_FUNCTION_9();
            OUTLINED_FUNCTION_4_86(v92);
            _os_log_impl(&dword_1DD38D000, v54, v93, "[Set::toUserDefinedProperties()] inserting .year: absolute", a2, 2u);
            v58 = a2;
            a2 = v6;
            goto LABEL_94;
          case 12:
            if (qword_1ECCDB0C0 != -1)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v102 = sub_1DD63F9F8();
            v103 = OUTLINED_FUNCTION_11(v102, qword_1ECD0DDC0);
            v104 = sub_1DD640368();
            if (OUTLINED_FUNCTION_2_98(v104))
            {
              v105 = OUTLINED_FUNCTION_9();
              OUTLINED_FUNCTION_1_114(v105);
              OUTLINED_FUNCTION_7_57(&dword_1DD38D000, v103, v106, "[Set::toUserDefinedProperties()] inserting .hour, .minute, .second: absolute");
              OUTLINED_FUNCTION_3_83();
            }

            OUTLINED_FUNCTION_5_79();
            v39 = v32 | 0x70;
            v41 = (v107 & 0x70) == 0;
            goto LABEL_87;
          default:
            break;
        }
      }

LABEL_36:

      goto LABEL_102;
    }

    switch(v18)
    {
      case 1:
        if (qword_1ECCDB0C0 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v64 = sub_1DD63F9F8();
        v65 = OUTLINED_FUNCTION_11(v64, qword_1ECD0DDC0);
        v66 = sub_1DD640368();
        if (OUTLINED_FUNCTION_2_98(v66))
        {
          v67 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_1_114(v67);
          OUTLINED_FUNCTION_7_57(&dword_1DD38D000, v65, v68, "[Set::toUserDefinedProperties()] inserting .second: relative");
          OUTLINED_FUNCTION_3_83();
        }

        OUTLINED_FUNCTION_5_79();
        v33 = 123;
        goto LABEL_86;
      case 2:
        if (qword_1ECCDB0C0 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v42 = sub_1DD63F9F8();
        v43 = OUTLINED_FUNCTION_11(v42, qword_1ECD0DDC0);
        v44 = sub_1DD640368();
        if (OUTLINED_FUNCTION_2_98(v44))
        {
          v45 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_1_114(v45);
          OUTLINED_FUNCTION_7_57(&dword_1DD38D000, v43, v46, "[Set::toUserDefinedProperties()] inserting .minute: relative");
          OUTLINED_FUNCTION_3_83();
        }

        OUTLINED_FUNCTION_5_79();
        v33 = 59;
        goto LABEL_86;
      case 4:
        if (qword_1ECCDB0C0 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v59 = sub_1DD63F9F8();
        v60 = OUTLINED_FUNCTION_11(v59, qword_1ECD0DDC0);
        v61 = sub_1DD640368();
        if (OUTLINED_FUNCTION_2_98(v61))
        {
          v62 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_1_114(v62);
          OUTLINED_FUNCTION_7_57(&dword_1DD38D000, v60, v63, "[Set::toUserDefinedProperties()] inserting .hour: relative");
          OUTLINED_FUNCTION_3_83();
        }

        OUTLINED_FUNCTION_5_79();
        v33 = 27;
        goto LABEL_86;
      case 5:
      case 6:
        if (qword_1ECCDB0C0 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v26 = sub_1DD63F9F8();
        v27 = OUTLINED_FUNCTION_11(v26, qword_1ECD0DDC0);
        v28 = sub_1DD640368();
        if (OUTLINED_FUNCTION_2_98(v28))
        {
          v29 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_1_114(v29);
          OUTLINED_FUNCTION_7_57(&dword_1DD38D000, v27, v30, "[Set::toUserDefinedProperties()] inserting .year, .month, .day: relative");
          OUTLINED_FUNCTION_3_83();
        }

        OUTLINED_FUNCTION_5_79();
        v33 = 11;
LABEL_86:
        v39 = v32 | v33;
        v41 = (v31 & v33) == 0;
        goto LABEL_87;
      case 8:
        if (qword_1ECCDB0C0 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v34 = sub_1DD63F9F8();
        v35 = OUTLINED_FUNCTION_11(v34, qword_1ECD0DDC0);
        v36 = sub_1DD640368();
        if (OUTLINED_FUNCTION_2_98(v36))
        {
          v37 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_1_114(v37);
          OUTLINED_FUNCTION_7_57(&dword_1DD38D000, v35, v38, "[Set::toUserDefinedProperties()] inserting .year, .month, .week: relative");
          OUTLINED_FUNCTION_3_83();
        }

        OUTLINED_FUNCTION_5_79();
        v39 = v32 | 7;
        v41 = (v40 & 7) == 0;
        goto LABEL_87;
      case 9:
        if (qword_1ECCDB0C0 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v47 = sub_1DD63F9F8();
        v48 = OUTLINED_FUNCTION_11(v47, qword_1ECD0DDC0);
        v49 = sub_1DD640368();
        if (OUTLINED_FUNCTION_2_98(v49))
        {
          v50 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_1_114(v50);
          OUTLINED_FUNCTION_7_57(&dword_1DD38D000, v48, v51, "[Set::toUserDefinedProperties()] inserting .year, .month: relative");
          OUTLINED_FUNCTION_3_83();
        }

        OUTLINED_FUNCTION_5_79();
        v39 = v32 | 3;
        v41 = (v52 & 3) == 0;
LABEL_87:
        if (!v41)
        {
          v32 = v39;
        }

        v114 = v32;
        break;
      case 11:
        if (qword_1ECCDB0C0 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v53 = sub_1DD63F9F8();
        v54 = OUTLINED_FUNCTION_11(v53, qword_1ECD0DDC0);
        v55 = sub_1DD640368();
        if (OUTLINED_FUNCTION_2_98(v55))
        {
          v56 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_1_114(v56);
          OUTLINED_FUNCTION_7_57(&dword_1DD38D000, v54, v57, "[Set::toUserDefinedProperties()] inserting .year: relative");
          v58 = v6;
LABEL_94:
          MEMORY[0x1E12B3DA0](v58, -1, -1);
        }

LABEL_95:

        v25 = v114 | 1;
LABEL_101:
        v114 = v25;
        break;
      default:
        goto LABEL_36;
    }

LABEL_102:
    v6 = v14;
    v7 = v115;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_13:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v2 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
      goto LABEL_120;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_120;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void OUTLINED_FUNCTION_3_83()
{

  JUMPOUT(0x1E12B3DA0);
}

uint64_t static StringSignal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    if (v4 == *(a2 + 16) && v5 == *(a2 + 24))
    {
      return 1;
    }

    else
    {
      return sub_1DD640CD8();
    }
  }

  return result;
}

BOOL static DoubleSignal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0)
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  return result;
}

uint64_t BoolSignal.description.getter()
{
  if (*(v0 + 9))
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t sub_1DD5A91D0(uint64_t a1)
{
  v2 = sub_1DD5A93A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5A920C(uint64_t a1)
{
  v2 = sub_1DD5A93A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void BoolSignal.encode(to:)()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF2A0, &qword_1DD65E530);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21_5();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DD5A93A8();
  sub_1DD640EF8();
  OUTLINED_FUNCTION_10();
  sub_1DD640C58();
  if (!v0)
  {
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    OUTLINED_FUNCTION_16_46();
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_86();
}

unint64_t sub_1DD5A93A8()
{
  result = qword_1EE165C30;
  if (!qword_1EE165C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165C30);
  }

  return result;
}

void BoolSignal.init(from:)()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_8_61();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF2A8, &qword_1DD65E538);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_53();
  v4 = sub_1DD5A93A8();
  OUTLINED_FUNCTION_17_1(&type metadata for BoolSignal.CodingKeys, v5, v4);
  if (!v1)
  {
    OUTLINED_FUNCTION_1_115();
    v6 = sub_1DD640B68();
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_1_115();
    v7 = sub_1DD640B38();
    OUTLINED_FUNCTION_16_46();
    OUTLINED_FUNCTION_1_115();
    v8 = sub_1DD640B38();
    v9 = OUTLINED_FUNCTION_3_84();
    v10(v9);
    *v2 = v6;
    *(v2 + 8) = v7 & 1;
    *(v2 + 9) = v8 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD5A95E4(uint64_t a1)
{
  v2 = sub_1DD5A97DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5A9620(uint64_t a1)
{
  v2 = sub_1DD5A97DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DoubleSignal.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF2B0, &qword_1DD65E540);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21_5();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5A97DC();
  sub_1DD640EF8();
  OUTLINED_FUNCTION_10();
  sub_1DD640C58();
  if (!v1)
  {
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    sub_1DD640C38();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_1DD5A97DC()
{
  result = qword_1EE165A68;
  if (!qword_1EE165A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A68);
  }

  return result;
}

uint64_t DoubleSignal.init(from:)()
{
  OUTLINED_FUNCTION_8_61();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF2B8, &qword_1DD65E548);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_53();
  v4 = sub_1DD5A97DC();
  OUTLINED_FUNCTION_17_1(&type metadata for DoubleSignal.CodingKeys, v5, v4);
  if (!v1)
  {
    OUTLINED_FUNCTION_1_115();
    v6 = sub_1DD640B68();
    OUTLINED_FUNCTION_1_115();
    v7 = sub_1DD640B38();
    OUTLINED_FUNCTION_1_115();
    sub_1DD640B48();
    v10 = v9;
    v11 = OUTLINED_FUNCTION_3_84();
    v12(v11);
    *v2 = v6;
    *(v2 + 8) = v7 & 1;
    *(v2 + 16) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v0);
}

uint64_t StringSignal.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t StringSignal.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1DD5A9A88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_27(0x6E6F6973726576, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F7272457369 && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_27(0x726F7272457369, 0xE700000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_27(0x65756C6176, 0xE500000000000000);

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD5A9B78(uint64_t a1)
{
  v2 = sub_1DD5A9D5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5A9BB4(uint64_t a1)
{
  v2 = sub_1DD5A9D5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringSignal.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_93();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF2C0, &qword_1DD65E550);
  OUTLINED_FUNCTION_0();
  v25 = v24;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_21_5();
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_1DD5A9D5C();
  sub_1DD640EF8();
  OUTLINED_FUNCTION_10();
  sub_1DD640C58();
  if (!v19)
  {
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    OUTLINED_FUNCTION_16_46();
    sub_1DD640C18();
  }

  (*(v25 + 8))(v20, v23);
  OUTLINED_FUNCTION_86();
}

unint64_t sub_1DD5A9D5C()
{
  result = qword_1EE165A28;
  if (!qword_1EE165A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A28);
  }

  return result;
}

void StringSignal.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_93();
  a22 = v26;
  a23 = v27;
  OUTLINED_FUNCTION_8_61();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF2C8, qword_1DD65E558);
  OUTLINED_FUNCTION_0();
  v30 = v29;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  OUTLINED_FUNCTION_9_53();
  v34 = sub_1DD5A9D5C();
  OUTLINED_FUNCTION_17_1(&type metadata for StringSignal.CodingKeys, v35, v34);
  if (!v24)
  {
    a13 = 0;
    OUTLINED_FUNCTION_1_115();
    v36 = sub_1DD640B68();
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_1_115();
    v37 = sub_1DD640B38();
    OUTLINED_FUNCTION_16_46();
    OUTLINED_FUNCTION_1_115();
    v38 = sub_1DD640B28();
    v40 = v39;
    a10 = v37 & 1;
    v41 = v38;
    (*(v30 + 8))(v33, v28);
    *v25 = v36;
    *(v25 + 8) = a10;
    *(v25 + 16) = v41;
    *(v25 + 24) = v40;
  }

  __swift_destroy_boxed_opaque_existential_1(v23);

  OUTLINED_FUNCTION_86();
}

unint64_t sub_1DD5A9F50()
{
  result = qword_1ECCDF2D0;
  if (!qword_1ECCDF2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF2D0);
  }

  return result;
}

unint64_t sub_1DD5A9FFC()
{
  result = qword_1ECCDF2D8;
  if (!qword_1ECCDF2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF2D8);
  }

  return result;
}

unint64_t sub_1DD5AA0A8()
{
  result = qword_1ECCDF2E0;
  if (!qword_1ECCDF2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF2E0);
  }

  return result;
}

uint64_t sub_1DD5AA13C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = (a4)(a1, a2, a3);
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BoolSignal(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for BoolSignal(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DoubleSignal(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 24))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DoubleSignal(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_1DD5AA340(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5AA420()
{
  result = qword_1ECCDF2E8;
  if (!qword_1ECCDF2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF2E8);
  }

  return result;
}

unint64_t sub_1DD5AA478()
{
  result = qword_1ECCDF2F0;
  if (!qword_1ECCDF2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF2F0);
  }

  return result;
}

unint64_t sub_1DD5AA4D0()
{
  result = qword_1ECCDF2F8;
  if (!qword_1ECCDF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF2F8);
  }

  return result;
}

unint64_t sub_1DD5AA528()
{
  result = qword_1EE165A38;
  if (!qword_1EE165A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A38);
  }

  return result;
}

unint64_t sub_1DD5AA580()
{
  result = qword_1EE165A30;
  if (!qword_1EE165A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A30);
  }

  return result;
}

unint64_t sub_1DD5AA5D8()
{
  result = qword_1EE165A58;
  if (!qword_1EE165A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A58);
  }

  return result;
}

unint64_t sub_1DD5AA630()
{
  result = qword_1EE165A60;
  if (!qword_1EE165A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A60);
  }

  return result;
}

unint64_t sub_1DD5AA688()
{
  result = qword_1EE165C20;
  if (!qword_1EE165C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165C20);
  }

  return result;
}

unint64_t sub_1DD5AA6E0()
{
  result = qword_1EE165C28;
  if (!qword_1EE165C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165C28);
  }

  return result;
}

void sub_1DD5AA7B4(uint64_t result, uint64_t *a2)
{
  v5 = 0;
  v6 = *(result + 16);
  do
  {
    if (v6 == v5)
    {
      break;
    }

    v7 = *(sub_1DD63CE68() - 8);
    sub_1DD5AAFFC(result + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5++, a2);
  }

  while (!v2);
}

void *sub_1DD5AA874()
{
  v0 = sub_1DD63CE68();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE160CB0 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EE160CB8);
  (*(v1 + 16))(v3, v4, v0);
  result = sub_1DD5AAB58(v3, &v7);
  qword_1EE160CA0 = v7;
  return result;
}

uint64_t static SignalProcessingPluginManager.sharedInstance.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE160C98 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EE160CA0;
}

uint64_t sub_1DD5AA9F8()
{
  v0 = sub_1DD63CE68();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_1EE160CB8);
  __swift_project_value_buffer(v0, qword_1EE160CB8);
  v5 = MEMORY[0x1E12B3270]();
  sub_1DD63FDD8();

  sub_1DD63CDE8();

  sub_1DD63CE18();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1DD5AAB58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1DD63CE68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = MEMORY[0x1E69E7CC0];
  sub_1DD5AAE88();
  result = (*(v5 + 8))(a1, v4);
  *a2 = v7;
  return result;
}

uint64_t sub_1DD5AAE88()
{
  v2 = v0;
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_self() defaultManager];
  v4 = sub_1DD63CE08();
  v11[0] = 0;
  v5 = [v3 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:0 error:v11];

  v6 = v11[0];
  if (v5)
  {
    sub_1DD63CE68();
    v7 = sub_1DD640118();
    v8 = v6;

    v11[0] = MEMORY[0x1E69E7CC0];
    sub_1DD5AA7B4(v7, v11);

    if (!v1)
    {
      *v2 = v11[0];
    }
  }

  else
  {
    v10 = v11[0];
    sub_1DD63CD98();

    return swift_willThrow();
  }

  return result;
}

void sub_1DD5AAFFC(uint64_t a1, uint64_t *a2)
{
  sub_1DD5AB33C();
  v3 = sub_1DD63CE58();
  v5 = sub_1DD5AB2C8(v3, v4);
  if (v5)
  {
    v6 = v5;
    if ([v5 isLoaded])
    {
      if ([v6 load])
      {
        if ([v6 principalClass])
        {
          ObjCClassMetadata = swift_getObjCClassMetadata();
          v8 = dynamic_cast_existential_1_conditional(ObjCClassMetadata, ObjCClassMetadata, &protocol descriptor for SignalProcessingPlugin);
          if (v8)
          {
            v9 = v8;
            v33 = &v31;
            v10 = *(v8 - 8);
            v11 = *(v10 + 64);
            v12 = MEMORY[0x1EEE9AC00](v8);
            v31 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
            v32 = v13;
            v14 = &v31 - v31;
            (*(v13 + 16))(v12);
            sub_1DD3BE000();
            v15 = *(*a2 + 16);
            sub_1DD3BE1D8();

            v17 = MEMORY[0x1EEE9AC00](v16);
            v18 = &v31 - v31;
            (*(v10 + 16))(&v31 - v31, v14, v9, v17);
            sub_1DD5AB3D4(v15, v18, a2, v9, v32);
            (*(v10 + 8))(v14, v9);
            return;
          }
        }

        v28 = sub_1DD63CE58();
        v30 = v29;
        sub_1DD5AB380();
        swift_allocError();
        *v26 = v28;
        *(v26 + 8) = v30;
        v27 = 2;
      }

      else
      {
        v23 = sub_1DD63CE58();
        v25 = v24;
        sub_1DD5AB380();
        swift_allocError();
        *v26 = v23;
        *(v26 + 8) = v25;
        v27 = 1;
      }

      *(v26 + 16) = v27;
      swift_willThrow();
    }
  }

  else
  {
    v19 = sub_1DD63CE58();
    v21 = v20;
    sub_1DD5AB380();
    swift_allocError();
    *v22 = v19;
    *(v22 + 8) = v21;
    *(v22 + 16) = 0;
    swift_willThrow();
  }
}

id sub_1DD5AB2C8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DD63FDA8();

  v4 = [v2 initWithPath_];

  return v4;
}

unint64_t sub_1DD5AB33C()
{
  result = qword_1EE160150;
  if (!qword_1EE160150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE160150);
  }

  return result;
}

unint64_t sub_1DD5AB380()
{
  result = qword_1ECCDF300;
  if (!qword_1ECCDF300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF300);
  }

  return result;
}

uint64_t sub_1DD5AB3D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1DD3AA4A8(&v12, v10 + 40 * a1 + 32);
}

void static SignalProcessingPluginRunner.metricName.setter(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  *&xmmword_1ECCDF308 = a1;
  *(&xmmword_1ECCDF308 + 1) = a2;
  byte_1ECCDF318 = a3;
}

double sub_1DD5AB584@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_1ECCDF318;
  result = *&xmmword_1ECCDF308;
  *a1 = xmmword_1ECCDF308;
  *(a1 + 16) = v2;
  return result;
}

void sub_1DD5AB5D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  swift_beginAccess();
  *&xmmword_1ECCDF308 = v1;
  *(&xmmword_1ECCDF308 + 1) = v2;
  byte_1ECCDF318 = v3;
}

char *SignalProcessingPluginRunner.__allocating_init(withProcessingPlugin:activity:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  sub_1DD3C2388(a1, v5 + OBJC_IVAR____TtC13SiriInference28SignalProcessingPluginRunner_plugin);
  v6 = XPCActivityOperation.init(activity:)(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

char *SignalProcessingPluginRunner.init(withProcessingPlugin:activity:)(void *a1, uint64_t a2)
{
  sub_1DD3C2388(a1, v2 + OBJC_IVAR____TtC13SiriInference28SignalProcessingPluginRunner_plugin);
  v5 = XPCActivityOperation.init(activity:)(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

Swift::Void __swiftcall SignalProcessingPluginRunner.main()()
{
  v1 = v0;
  sub_1DD3C2388(v0 + OBJC_IVAR____TtC13SiriInference28SignalProcessingPluginRunner_plugin, v11);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  DynamicType = swift_getDynamicType();
  v3 = v11[4];
  __swift_destroy_boxed_opaque_existential_1(v11);
  v4 = (*(v3 + 8))(DynamicType, v3);
  v6 = v5;
  v8 = v7;
  v9 = sub_1DD6408F8();
  sub_1DD636E6C(v9, v10, v4, v6, v8, v1);
}

uint64_t sub_1DD5AB7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = sub_1DD63F9C8();
  MEMORY[0x1EEE9AC00](v18);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DD643F90;
  v9 = sub_1DD6408F8();
  v11 = v10;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1DD392BD8();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  OUTLINED_FUNCTION_0_131();
  sub_1DD63F998();

  sub_1DD5AB9F8(a1, a2, a3);
  if (v17)
  {

    sub_1DD6404C8();
    OUTLINED_FUNCTION_0_131();
    sub_1DD63F9A8();
    v15 = OUTLINED_FUNCTION_1_116();
    result = v16(v15);
    __break(1u);
  }

  else
  {
    sub_1DD6404C8();
    OUTLINED_FUNCTION_0_131();
    sub_1DD63F9A8();
    v12 = OUTLINED_FUNCTION_1_116();
    return v13(v12);
  }

  return result;
}

void sub_1DD5AB9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD63F9F8();
  __swift_project_value_buffer(v5, qword_1EE16F0C8);
  v6 = sub_1DD63F9D8();
  v7 = sub_1DD640368();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = sub_1DD6408F8();
    v12 = sub_1DD39565C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DD38D000, v6, v7, "about to run signal processing plugin with id: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E12B3DA0](v9, -1, -1);
    MEMORY[0x1E12B3DA0](v8, -1, -1);
  }

  sub_1DD5ABBD4();
  if (!v3)
  {
    v4 = v13;
  }

  sub_1DD395950();
  v14 = sub_1DD63FC88();
  sub_1DD50DFF8(v4, v3 != 0, v14);

  sub_1DD39A630(v4, v3 != 0);
}

uint64_t sub_1DD5ABBD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SiriInference28SignalProcessingPluginRunner_plugin + 24);
  v2 = *(v0 + OBJC_IVAR____TtC13SiriInference28SignalProcessingPluginRunner_plugin + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC13SiriInference28SignalProcessingPluginRunner_plugin), v1);
  v5 = v0;
  return (*(v2 + 24))(sub_1DD5ABE34, &v4, v1, v2);
}

id SignalProcessingPluginRunner.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SignalProcessingPluginRunner.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

SiriInference::TaskSuccessType_optional __swiftcall TaskSuccessType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1DD5ABE90@<X0>(uint64_t *a1@<X8>)
{
  result = TaskSuccessType.rawValue.getter();
  *a1 = result;
  return result;
}

BOOL static SimpleTaskInfo.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return (v7 & 1) != 0;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

unint64_t sub_1DD5ABFD0()
{
  result = qword_1ECCDF328;
  if (!qword_1ECCDF328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF328);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TaskSuccessType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5AC114()
{
  result = qword_1ECCDF330;
  if (!qword_1ECCDF330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF330);
  }

  return result;
}

void sub_1DD5AC168()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v5 = OUTLINED_FUNCTION_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v93 - v10;
  v12 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_4();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v93 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v93 - v23;
  if (v1)
  {
    OUTLINED_FUNCTION_73();
    sub_1DD63D088();
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      sub_1DD390754(v11, &qword_1ECCDBAC8, &qword_1DD643E60);
      if (qword_1EE160508 != -1)
      {
        OUTLINED_FUNCTION_3_5(&qword_1EE160508);
      }

      v25 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v25, qword_1EE16EED0);

      v26 = sub_1DD63F9D8();
      v27 = sub_1DD640378();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v100 = v29;
        *v28 = 136315138;
        v30 = OUTLINED_FUNCTION_73();
        *(v28 + 4) = sub_1DD39565C(v30, v31, v32);
        OUTLINED_FUNCTION_29_22();
        _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }
    }

    else
    {
      v98 = v14;
      v99 = v3;
      v96 = *(v14 + 32);
      v97 = v14 + 32;
      v96(v24, v11, v12);
      v51 = objc_opt_self();
      v52 = sub_1DD63D0B8();
      v53 = [v51 derivedIdentifierForComponentName:27 fromSourceIdentifier:v52];

      if (!v53)
      {
        if (qword_1EE160508 != -1)
        {
          OUTLINED_FUNCTION_3_5(&qword_1EE160508);
        }

        v67 = sub_1DD63F9F8();
        OUTLINED_FUNCTION_130(v67, qword_1EE16EED0);

        v68 = sub_1DD63F9D8();
        v69 = sub_1DD640378();

        v70 = os_log_type_enabled(v68, v69);
        v71 = v99;
        if (v70)
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v100 = v73;
          *v72 = 136315138;
          v74 = OUTLINED_FUNCTION_73();
          *(v72 + 4) = sub_1DD39565C(v74, v75, v76);
          OUTLINED_FUNCTION_29_22();
          _os_log_impl(v77, v78, v79, v80, v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v73);
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_0_1();
        }

        v82 = OUTLINED_FUNCTION_25_22();
        v83(v82);
        v65 = v71;
        goto LABEL_34;
      }

      sub_1DD63D0D8();

      v54 = [objc_allocWithZone(MEMORY[0x1E69CF5E0]) init];
      v3 = v99;
      if (v54)
      {
        v55 = v54;
        v56 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
        if (v56)
        {
          v57 = v56;
          v58 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
          if (v58)
          {
            v95 = v58;
            [v58 setComponent_];
            sub_1DD39638C(0, &qword_1EE1638C0, 0x1E69CF638);
            v94 = *(v98 + 16);
            v94(v18, v21, v12);
            v59 = sub_1DD5A5500(v18);
            [v95 setUuid_];

            [v57 setComponent_];
            v94(v18, v24, v12);
            v60 = sub_1DD5A5500(v18);
            [v57 setUuid_];

            v61 = v95;
            [v55 setSource_];
            [v55 setTarget_];
            __swift_storeEnumTagSinglePayload(v8, 1, 1, v12);
            sub_1DD5A5690(v55, v8);

            sub_1DD390754(v8, &qword_1ECCDBAC8, &qword_1DD643E60);
            v62 = OUTLINED_FUNCTION_25_22();
            v63(v62);
            v64 = v99;
            v96(v99, v21, v12);
            v65 = v64;
            v66 = 0;
LABEL_35:
            __swift_storeEnumTagSinglePayload(v65, v66, 1, v12);
            OUTLINED_FUNCTION_17();
            return;
          }
        }

        else
        {
          v57 = v55;
        }
      }

      if (qword_1EE160508 != -1)
      {
        OUTLINED_FUNCTION_3_5(&qword_1EE160508);
      }

      v84 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v84, qword_1EE16EED0);
      v85 = sub_1DD63F9D8();
      v86 = sub_1DD640378();
      if (OUTLINED_FUNCTION_9_0(v86))
      {
        *OUTLINED_FUNCTION_9() = 0;
        OUTLINED_FUNCTION_29_22();
        _os_log_impl(v87, v88, v89, v90, v91, 2u);
        OUTLINED_FUNCTION_0_1();
      }

      v92 = *(v98 + 8);
      v92(v21, v12);
      v92(v24, v12);
    }

    v65 = v3;
LABEL_34:
    v66 = 1;
    goto LABEL_35;
  }

  if (qword_1EE160508 != -1)
  {
    OUTLINED_FUNCTION_3_5(&qword_1EE160508);
  }

  v38 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v38, qword_1EE16EED0);
  v39 = sub_1DD63F9D8();
  v40 = sub_1DD640378();
  if (OUTLINED_FUNCTION_9_0(v40))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_29_22();
    _os_log_impl(v41, v42, v43, v44, v45, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  OUTLINED_FUNCTION_17();

  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
}

void sub_1DD5AC8AC()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_28_13();
  v7 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  v14 = OUTLINED_FUNCTION_73();
  sub_1DD3DD9B4(v14, v15, &qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_17_37();
  if (__swift_getEnumTagSinglePayload(v16, v17, v18) == 1)
  {
    sub_1DD390754(v0, &qword_1ECCDBAC8, &qword_1DD643E60);
    if (qword_1EE160508 != -1)
    {
      OUTLINED_FUNCTION_3_5(&qword_1EE160508);
    }

    v19 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v19, qword_1EE16EED0);
    v20 = sub_1DD63F9D8();
    v21 = sub_1DD640378();
    if (OUTLINED_FUNCTION_5_6(v21))
    {
      v22 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v22);
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v23, v24, "[ASR-E3] The inferenceId is Nil and skip emit SELF events for INFERENCEAsrEuclidEmbedding");
      OUTLINED_FUNCTION_0_1();
    }
  }

  else
  {
    (*(v9 + 32))(v13, v0, v7);
    v25 = [objc_allocWithZone(MEMORY[0x1E69CEBB0]) init];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1DD4BC37C(v4 & 0xFFFFFFFF000000FFLL, v2 & 1);
      [v26 setEuclidServiceMetrics_];

      v28 = sub_1DD4BC400();
      [v26 setEuclidDebugMetrics_];

      sub_1DD5A67B8(v26, v13);
    }

    else
    {
      if (qword_1EE160508 != -1)
      {
        OUTLINED_FUNCTION_3_5(&qword_1EE160508);
      }

      v29 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v29, qword_1EE16EED0);
      v30 = sub_1DD63F9D8();
      v31 = sub_1DD640378();
      if (OUTLINED_FUNCTION_9_0(v31))
      {
        v32 = OUTLINED_FUNCTION_9();
        *v32 = 0;
        _os_log_impl(&dword_1DD38D000, v30, v31, "[ASR-E3] Failed to create InferenceAsrEuclidEmbedding template. Skipping emission.", v32, 2u);
        OUTLINED_FUNCTION_0_1();
      }
    }

    (*(v9 + 8))(v13, v7);
  }

  OUTLINED_FUNCTION_17();
}

void sub_1DD5ACB80()
{
  OUTLINED_FUNCTION_18_4();
  v60 = v1;
  v62 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCB8, &unk_1DD64AEF0);
  OUTLINED_FUNCTION_3(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_28_13();
  v10 = type metadata accessor for PrivatizedContactResolverConfig(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v59 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - v16;
  v18 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1_4();
  v61 = v22 - v23;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v57 - v25;
  v27 = *v6;
  sub_1DD3DD9B4(v4, v17, &qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_17_37();
  if (__swift_getEnumTagSinglePayload(v28, v29, v30) == 1)
  {
    sub_1DD390754(v17, &qword_1ECCDBAC8, &qword_1DD643E60);
    if (qword_1EE160508 != -1)
    {
      OUTLINED_FUNCTION_3_5(&qword_1EE160508);
    }

    v31 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v31, qword_1EE16EED0);
    v32 = sub_1DD63F9D8();
    v33 = sub_1DD640378();
    if (OUTLINED_FUNCTION_5_6(v33))
    {
      v34 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v34);
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v35, v36, "The inferenceId is Nil and skip emit SELF events for ResolutionRequestStarted");
      OUTLINED_FUNCTION_0_1();
    }

    goto LABEL_20;
  }

  v37 = *(v20 + 32);
  v58 = v26;
  v37(v26, v17, v18);
  v38 = [objc_allocWithZone(MEMORY[0x1E69CECC0]) init];
  v39 = v20;
  if (v38)
  {
    v40 = v38;
    v57 = v20;
    v41 = [objc_allocWithZone(MEMORY[0x1E69CECA8]) init];
    if (v41)
    {
      v42 = v41;
      [v40 setSlotType_];
      v43 = [objc_allocWithZone(MEMORY[0x1E69CECC8]) init];
      if (v43)
      {
        v44 = v43;
        sub_1DD3DD9B4(v60, v0, &qword_1ECCDCCB8, &unk_1DD64AEF0);
        if (__swift_getEnumTagSinglePayload(v0, 1, v10) == 1)
        {

          sub_1DD390754(v0, &qword_1ECCDCCB8, &unk_1DD64AEF0);
        }

        else
        {
          v51 = v59;
          sub_1DD5AE6D4(v0, v59, type metadata accessor for PrivatizedContactResolverConfig);
          v52 = sub_1DD5A0C3C(1);
          [v44 setContactConfig_];

          [v40 setResolverConfig_];
          sub_1DD5AE734(v51, type metadata accessor for PrivatizedContactResolverConfig);
        }
      }

      sub_1DD39638C(0, &qword_1EE1638C0, 0x1E69CF638);
      v53 = v57;
      v54 = v61;
      (*(v57 + 16))(v61, v62, v18);
      v55 = sub_1DD5A5500(v54);
      [v42 setContextId_];

      [v42 setStartedOrChanged_];
      v56 = v58;
      sub_1DD5A67A4(v42, v58);

      (*(v53 + 8))(v56, v18);
      goto LABEL_20;
    }

    v39 = v57;
  }

  if (qword_1EE160508 != -1)
  {
    OUTLINED_FUNCTION_3_5(&qword_1EE160508);
  }

  v45 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v45, qword_1EE16EED0);
  v46 = sub_1DD63F9D8();
  v47 = sub_1DD640378();
  v48 = OUTLINED_FUNCTION_9_0(v47);
  v49 = v58;
  if (v48)
  {
    v50 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v50);
    _os_log_impl(&dword_1DD38D000, v46, v47, "Failed to create SELF message templates for ResolutionRequestStarted", &off_1E8655000, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  (*(v39 + 8))(v49, v18);
LABEL_20:
  OUTLINED_FUNCTION_17();
}

void sub_1DD5AD0D0()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v41 = v3;
  v42 = v2;
  v43 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_4();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1DD3DD9B4(v8, v12, &qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_17_37();
  if (__swift_getEnumTagSinglePayload(v23, v24, v25) != 1)
  {
    (*(v15 + 32))(v22, v12, v13);
    v30 = [objc_allocWithZone(*v6) init];
    v31 = v15;
    if (v30)
    {
      v32 = v30;
      v33 = [objc_allocWithZone(MEMORY[0x1E69CECA8]) init];
      if (v33)
      {
        v34 = v33;
        sub_1DD39638C(0, &qword_1EE1638C0, 0x1E69CF638);
        (*(v15 + 16))(v19, v42, v13);
        v35 = sub_1DD5A5500(v19);
        [v34 setContextId_];

        [v34 *v43];
        sub_1DD5A67A4(v34, v22);

LABEL_16:
        (*(v31 + 8))(v22, v13);
        goto LABEL_17;
      }
    }

    if (qword_1EE160508 != -1)
    {
      OUTLINED_FUNCTION_3_5(&qword_1EE160508);
    }

    v36 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v36, qword_1EE16EED0);
    v37 = sub_1DD63F9D8();
    v38 = sub_1DD640378();
    if (OUTLINED_FUNCTION_9_0(v38))
    {
      v39 = OUTLINED_FUNCTION_9();
      *v39 = 0;
      _os_log_impl(&dword_1DD38D000, v37, v38, v41, v39, 2u);
      OUTLINED_FUNCTION_0_1();
    }

    goto LABEL_16;
  }

  sub_1DD390754(v12, &qword_1ECCDBAC8, &qword_1DD643E60);
  if (qword_1EE160508 != -1)
  {
    OUTLINED_FUNCTION_3_5(&qword_1EE160508);
  }

  v26 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v26, qword_1EE16EED0);
  v27 = sub_1DD63F9D8();
  v28 = sub_1DD640378();
  if (OUTLINED_FUNCTION_5_6(v28))
  {
    v29 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v29);
    _os_log_impl(&dword_1DD38D000, v27, v15, v1, v22, 2u);
    OUTLINED_FUNCTION_0_1();
  }

LABEL_17:
  OUTLINED_FUNCTION_17();
}

void sub_1DD5AD434(uint64_t *a1@<X8>)
{
  v118 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC268, &qword_1DD64CE00);
  v2 = OUTLINED_FUNCTION_3(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_4();
  v120 = v3 - v4;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_18_0();
  v122 = v6;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_18_0();
  v119 = v8;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v115 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_0();
  v123 = v13;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v115 - v15;
  type metadata accessor for Contact(0);
  OUTLINED_FUNCTION_0();
  v124 = v18;
  v125 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_4();
  v121 = v19 - v20;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_0();
  v23 = v22;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v115 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v115 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v115 - v31;
  sub_1DD3DD9B4(v126, &v115 - v31, &qword_1ECCDBEE0, &unk_1DD645510);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_117();
      v76 = v32;
      v77 = v121;
      sub_1DD5AE6D4(v76, v121, v78);
      OUTLINED_FUNCTION_8_62();
      v79 = v122;
      sub_1DD45D5C4(v77, v122, v80);
      OUTLINED_FUNCTION_10_15();
      __swift_storeEnumTagSinglePayload(v81, v82, v83, v125);
      v84 = v120;
      sub_1DD3DD9B4(v79, v120, &qword_1ECCDC268, &qword_1DD64CE00);
      OUTLINED_FUNCTION_17_37();
      if (__swift_getEnumTagSinglePayload(v85, v86, v87) == 1)
      {
        OUTLINED_FUNCTION_33_15(v84);
        type metadata accessor for InferenceError();
        swift_allocObject();
        OUTLINED_FUNCTION_7_58();
        LOBYTE(v116) = v88;
        v115 = MEMORY[0x1E69E7CC0];
        v89 = OUTLINED_FUNCTION_6_70();
        v96 = sub_1DD4DE96C(v89, v90, v91, v92, v93, v94, v95, 35, v115, v116);
        OUTLINED_FUNCTION_15_45(v96);
        *(v84 + 24) = 0;
        *(v84 + 32) = 0xE000000000000000;

        sub_1DD426968();
        v97 = swift_allocError();
        OUTLINED_FUNCTION_21_32(v97, v98);
        OUTLINED_FUNCTION_33_15(v79);
        OUTLINED_FUNCTION_2_99();
        v54 = v77;
        goto LABEL_15;
      }

      sub_1DD390754(v79, &qword_1ECCDC268, &qword_1DD64CE00);
      OUTLINED_FUNCTION_2_99();
      sub_1DD5AE734(v77, v101);
      OUTLINED_FUNCTION_1_117();
      sub_1DD5AE6D4(v84, v118, v102);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE08, &qword_1DD644158);
      OUTLINED_FUNCTION_52_4();
      goto LABEL_21;
    case 2u:
      v55 = *v32;
      v56 = *(*v32 + 16);
      if (!v56)
      {

        v58 = MEMORY[0x1E69E7CC0];
        goto LABEL_20;
      }

      v128 = MEMORY[0x1E69E7CC0];
      sub_1DD42B5EC(0, v56, 0);
      v57 = 0;
      v58 = v128;
      v120 = (*(v124 + 80) + 32) & ~*(v124 + 80);
      v121 = v55;
      v122 = v55 + v120;
      v116 = "run(withAlreadyResolvedSlots:)";
      v117 = "ssingPluginRunner";
      v59 = &qword_1ECCDC268;
      v60 = v29;
      v61 = v16;
      v127 = v16;
      v119 = v56;
      while (v57 < *(v55 + 16))
      {
        v126 = v58;
        v62 = v59;
        sub_1DD45D5C4(v122 + *(v124 + 72) * v57, v26, type metadata accessor for Contact);
        sub_1DD45D5C4(v26, v61, type metadata accessor for Contact);
        OUTLINED_FUNCTION_10_15();
        v63 = v125;
        __swift_storeEnumTagSinglePayload(v64, v65, v66, v125);
        v67 = v61;
        v68 = v123;
        sub_1DD3DD9B4(v67, v123, v62, &qword_1DD64CE00);
        if (__swift_getEnumTagSinglePayload(v68, 1, v63) == 1)
        {

          OUTLINED_FUNCTION_33_15(v68);
          type metadata accessor for InferenceError();
          swift_allocObject();
          OUTLINED_FUNCTION_7_58();
          LOBYTE(v116) = v103;
          v115 = MEMORY[0x1E69E7CC0];
          v104 = OUTLINED_FUNCTION_6_70();
          v111 = sub_1DD4DE96C(v104, v105, v106, v107, v108, v109, v110, 37, v115, v116);
          OUTLINED_FUNCTION_15_45(v111);
          *(v63 + 24) = 0;
          *(v63 + 32) = 0xE000000000000000;

          sub_1DD426968();
          v112 = swift_allocError();
          OUTLINED_FUNCTION_21_32(v112, v113);
          OUTLINED_FUNCTION_33_15(v127);
          OUTLINED_FUNCTION_2_99();
          sub_1DD5AE734(v26, v114);

          return;
        }

        sub_1DD390754(v127, v62, &qword_1DD64CE00);
        OUTLINED_FUNCTION_2_99();
        v69 = v26;
        sub_1DD5AE734(v26, v70);
        OUTLINED_FUNCTION_1_117();
        sub_1DD5AE6D4(v68, v60, v71);
        v58 = v126;
        v128 = v126;
        v73 = *(v126 + 16);
        v72 = *(v126 + 24);
        v59 = v62;
        if (v73 >= v72 >> 1)
        {
          sub_1DD42B5EC(v72 > 1, v73 + 1, 1);
          v59 = v62;
          v58 = v128;
        }

        ++v57;
        *(v58 + 16) = v73 + 1;
        OUTLINED_FUNCTION_1_117();
        sub_1DD5AE6D4(v60, v74, v75);
        v26 = v69;
        v55 = v121;
        v61 = v127;
        if (v119 == v57)
        {

LABEL_20:
          *v118 = v58;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE08, &qword_1DD644158);
          OUTLINED_FUNCTION_52_4();
          goto LABEL_21;
        }
      }

      __break(1u);
      return;
    case 3u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE08, &qword_1DD644158);
      goto LABEL_21;
    default:
      OUTLINED_FUNCTION_1_117();
      sub_1DD5AE6D4(v32, v23, v33);
      OUTLINED_FUNCTION_8_62();
      sub_1DD45D5C4(v23, v11, v34);
      OUTLINED_FUNCTION_10_15();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v125);
      v38 = v119;
      sub_1DD3DD9B4(v11, v119, &qword_1ECCDC268, &qword_1DD64CE00);
      OUTLINED_FUNCTION_17_37();
      if (__swift_getEnumTagSinglePayload(v39, v40, v41) == 1)
      {
        sub_1DD390754(v38, &qword_1ECCDC268, &qword_1DD64CE00);
        type metadata accessor for InferenceError();
        swift_allocObject();
        OUTLINED_FUNCTION_7_58();
        LOBYTE(v116) = v42;
        v115 = MEMORY[0x1E69E7CC0];
        v43 = OUTLINED_FUNCTION_6_70();
        v50 = sub_1DD4DE96C(v43, v44, v45, v46, v47, v48, v49, 33, v115, v116);
        OUTLINED_FUNCTION_15_45(v50);
        *(v38 + 24) = 0;
        *(v38 + 32) = 0xE000000000000000;

        sub_1DD426968();
        OUTLINED_FUNCTION_52_4();
        v51 = swift_allocError();
        OUTLINED_FUNCTION_21_32(v51, v52);
        sub_1DD390754(v11, &qword_1ECCDC268, &qword_1DD64CE00);
        OUTLINED_FUNCTION_2_99();
        v54 = v23;
LABEL_15:
        sub_1DD5AE734(v54, v53);
      }

      else
      {
        sub_1DD390754(v11, &qword_1ECCDC268, &qword_1DD64CE00);
        OUTLINED_FUNCTION_2_99();
        sub_1DD5AE734(v23, v99);
        OUTLINED_FUNCTION_1_117();
        sub_1DD5AE6D4(v38, v118, v100);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE08, &qword_1DD644158);
        OUTLINED_FUNCTION_52_4();
LABEL_21:
        swift_storeEnumTagMultiPayload();
      }

      return;
  }
}

void sub_1DD5ADCC0()
{
  OUTLINED_FUNCTION_18_4();
  v88 = v0;
  v89 = v1;
  v85 = v2;
  v4 = v3;
  v84 = v5;
  v7 = v6;
  v9 = v8;
  v91 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v78 - v13;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v15 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched - 8);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF10, &qword_1DD64C7E0);
  v20 = OUTLINED_FUNCTION_3(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_4();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v78 - v25);
  v27 = type metadata accessor for ContactResolverRunTimeData(0);
  sub_1DD5AD434(v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE08, &qword_1DD644158);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v28);
  v29 = *(v9 + 40);
  v81 = *(v9 + 48);
  v92 = sub_1DD5A0C3C(0);
  v30 = v7 + v27[15];
  v31 = *(v30 + 1);
  v86 = v4;
  v82 = v29;
  if (v31 == 1)
  {
    v90 = 0;
  }

  else
  {
    v95 = *v30;
    v96 = v31;
    v32 = *(v30 + 2);
    v97 = *(v30 + 1);
    v98 = v32;
    v90 = sub_1DD5A0AC4();
  }

  v93 = v26;
  v33 = v7[35];
  v80 = v7[34];
  v79 = v33;
  v34 = v7[37];
  v35 = MEMORY[0x1E69E7CC0];
  v94 = MEMORY[0x1E69E7CC0];
  v36 = *(v34 + 16);
  if (v36)
  {
    v37 = v34 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v38 = *(v15 + 72);
    do
    {
      sub_1DD45D5C4(v37, v18, type metadata accessor for ContactMatchRuntimeData);
      v39 = sub_1DD5A0EE0();
      v40 = sub_1DD5AE734(v18, type metadata accessor for ContactMatchRuntimeData);
      if (v39)
      {
        MEMORY[0x1E12B23F0](v40);
        if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DD640138();
        }

        sub_1DD640168();
        v35 = v94;
      }

      v37 += v38;
      --v36;
    }

    while (v36);
  }

  sub_1DD3DD9B4(v93, v23, &qword_1ECCDCF10, &qword_1DD64C7E0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE08, &qword_1DD644158);
  if (__swift_getEnumTagSinglePayload(v23, 1, v41) == 1)
  {
    sub_1DD390754(v23, &qword_1ECCDCF10, &qword_1DD64C7E0);
    v83 = 0;
  }

  else
  {
    v83 = sub_1DD5AE450();
    sub_1DD390754(v23, &qword_1ECCDBE08, &qword_1DD644158);
  }

  v42 = v88;
  v43 = v89;
  v44 = sub_1DD5A0C30(*(v7 + v27[11]));
  v45 = v7 + *(type metadata accessor for StitchedContactResolverRecommendation(0) + 20);
  v46 = v45[24];
  if (v46 == 255)
  {
    v47 = 0;
  }

  else
  {
    v47 = sub_1DD5A2ACC(*v45, *(v45 + 1), *(v45 + 2), v46);
  }

  v48 = dword_1DD65EEF4[v42];
  if (v43 == 2)
  {
    v49 = 0;
  }

  else
  {
    v49 = sub_1DD5A0950(v43 & 0xFFFF0101010101);
  }

  v50 = *(v7 + v27[16]);
  v51 = v27[21];
  v52 = *(v7 + v27[20]);
  v53 = *(v7 + v51);
  v54 = *(v7 + v51 + 8);
  v55 = sub_1DD5A5950(v91);
  if (v55)
  {
    v56 = v55;
    v89 = v53;
    v57 = [objc_allocWithZone(MEMORY[0x1E69CEBC8]) init];
    if (v57)
    {
      v58 = v57;
      sub_1DD5AE548(v82, v81, v57);
      [v58 setResolverConfig_];
      [v58 setTrialEnrollment_];
      sub_1DD5AE5A0(v80, v79, v58);
      sub_1DD5AE5F8(v35, v58);

      [v58 setResolutionState_];
      [v58 setResolutionType_];
      [v58 setForcePrompt_];
      sub_1DD5AE674(v84, v58);
      [v58 setIsInteractionExecuted_];
      [v58 setIsInteractionSuccess_];
      [v58 setInteractionDurationInSecBucket_];
      [v58 setInteractionContext_];
      [v58 setIsPlusContactSuggesterEnabled_];
      [v58 setIsEntityCandidateRetrievalEnabled_];
      if (v54)
      {
        v59 = sub_1DD5A2E68(v89, v54);
      }

      else
      {
        v59 = 0;
      }

      v64 = v93;
      [v58 setCrrCommsAppSelectionJointId_];

      [v56 setCrrTrainingSampleCollected_];
      if (qword_1EE160508 != -1)
      {
        OUTLINED_FUNCTION_3_5(&qword_1EE160508);
      }

      v67 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v67, qword_1EE16EED0);
      v68 = sub_1DD63F9D8();
      v69 = sub_1DD640368();
      if (OUTLINED_FUNCTION_9_0(v69))
      {
        *OUTLINED_FUNCTION_9() = 0;
        OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v70, v71, "Emitting CRR training sample event to SELF");
        OUTLINED_FUNCTION_0_1();
      }

      v72 = sub_1DD63D0F8();
      OUTLINED_FUNCTION_7();
      v74 = v87;
      (*(v73 + 16))(v87, v91, v72);
      OUTLINED_FUNCTION_10_15();
      __swift_storeEnumTagSinglePayload(v75, v76, v77, v72);
      sub_1DD5A5690(v56, v74);

      sub_1DD390754(v74, &qword_1ECCDBAC8, &qword_1DD643E60);
      goto LABEL_36;
    }
  }

  if (qword_1EE160508 != -1)
  {
    OUTLINED_FUNCTION_3_5(&qword_1EE160508);
  }

  v60 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v60, qword_1EE16EED0);
  v61 = sub_1DD63F9D8();
  v62 = sub_1DD640378();
  v63 = OUTLINED_FUNCTION_9_0(v62);
  v64 = v93;
  if (v63)
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v65, v66, "Failed to create Inference SELF event templates for CRRTrainingSample");
    OUTLINED_FUNCTION_0_1();
  }

LABEL_36:
  sub_1DD390754(v64, &qword_1ECCDCF10, &qword_1DD64C7E0);
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD5AE450()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE08, &qword_1DD644158);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - v2;
  sub_1DD3DD9B4(v0, &v7 - v2, &qword_1ECCDBE08, &qword_1DD644158);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 4;
  v6 = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v6 = 2;
      goto LABEL_4;
    case 2:
      v6 = 3;
      goto LABEL_4;
    case 3:
      return result;
    default:
LABEL_4:
      sub_1DD390754(v3, &qword_1ECCDBE08, &qword_1DD644158);
      return v6;
  }
}

void sub_1DD5AE548(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD63FDA8();
  [a3 setIntentTypeName_];
}

void sub_1DD5AE5A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD63FDA8();
  [a3 setModelVersion_];
}

void sub_1DD5AE5F8(uint64_t a1, void *a2)
{
  sub_1DD39638C(0, &unk_1ECCDF338, 0x1E69CEC10);
  v3 = sub_1DD6400F8();
  [a2 setMatches_];
}

void sub_1DD5AE674(uint64_t a1, void *a2)
{
  v3 = sub_1DD6400F8();
  [a2 setAnonymizedContactIdentifiers_];
}

uint64_t sub_1DD5AE6D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DD5AE734(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_33_15(uint64_t a1)
{

  return sub_1DD390754(a1, v1, v2);
}

uint64_t static SiriInferenceSuggestionsBridge.getInstance()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NoopSuggestionsBridge();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for NoopSuggestionsBridge;
  *a1 = result;
  return result;
}

uint64_t sub_1DD5AE82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DD4B66D4;

  return static SiriInferenceSuggestionsBridge.getInstanceAsync()(a1, a2, a3);
}

uint64_t static SiriInferenceSuggestionsBridge.getInstanceAsync()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_7_1();
}

uint64_t sub_1DD5AE8F4()
{
  OUTLINED_FUNCTION_34_0();
  (*(*(v0 + 32) + 16))();
  OUTLINED_FUNCTION_2_100();

  return v1();
}

uint64_t sub_1DD5AE964(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DD4B66D4;

  return SiriInferenceSuggestionsBridge.onEvent<A>(event:)(a1);
}

uint64_t sub_1DD5AEA10()
{
  OUTLINED_FUNCTION_34_0();
  if (qword_1EE162680 != -1)
  {
    OUTLINED_FUNCTION_7_59(&qword_1EE162680);
  }

  sub_1DD5B1244(&byte_1EE162688, *(v0 + 16));
  OUTLINED_FUNCTION_26();

  return v1();
}

double sub_1DD5AEA90()
{
  type metadata accessor for SiriInferenceSuggestionsBridgeProvider();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 144) = 0;
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  qword_1EE1633D0 = v0;
  return result;
}

double static SiriInferenceSuggestionsBridgeProvider.instance.getter()
{
  if (qword_1EE1633C8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1DD5AEB34()
{
  OUTLINED_FUNCTION_34_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_42(v1);

  return sub_1DD5AF2FC(v3);
}

uint64_t static SiriInferenceSuggestionsBridgeProvider.getAsync(_:callback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A0, &qword_1DD644940);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  sub_1DD6401D8();
  v9 = sub_1DD6401F8();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;

  sub_1DD5AF090(0, 0, v8, &unk_1DD65EF60, v10);
}

uint64_t sub_1DD5AECC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v7 = swift_task_alloc();
  v6[9] = v7;
  *v7 = v6;
  v7[1] = sub_1DD5AED60;

  return sub_1DD5AF2FC((v6 + 2));
}

uint64_t sub_1DD5AED60()
{
  OUTLINED_FUNCTION_44_11();
  OUTLINED_FUNCTION_30_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v5 = v4;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD5AF06C, 0, 0);
  }

  else
  {
    v8 = (v3[7] + *v3[7]);
    v6 = swift_task_alloc();
    v3[11] = v6;
    *v6 = v4;
    v6[1] = sub_1DD5AEF28;

    return v8(v3 + 2);
  }
}

uint64_t sub_1DD5AEF28()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_30_1();
  v1 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DD5AF014, 0, 0);
}

uint64_t sub_1DD5AF014()
{
  OUTLINED_FUNCTION_34_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_2_100();

  return v1();
}

uint64_t sub_1DD5AF090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A0, &qword_1DD644940);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1DD4AC924(a3, v22 - v9, &qword_1ECCDF3A0, &qword_1DD644940);
  v11 = sub_1DD6401F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1DD417838(v10, &qword_1ECCDF3A0, &qword_1DD644940);
  }

  else
  {
    sub_1DD6401E8();
    OUTLINED_FUNCTION_72();
    (*(v13 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1DD6401A8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1DD63FE68() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = OUTLINED_FUNCTION_16_47();

      sub_1DD417838(a3, &qword_1ECCDF3A0, &qword_1DD644940);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DD417838(a3, &qword_1ECCDF3A0, &qword_1DD644940);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return OUTLINED_FUNCTION_16_47();
}

uint64_t sub_1DD5AF2FC(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v2[30] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DD5AF344, v1, 0);
}

uint64_t sub_1DD5AF344()
{
  OUTLINED_FUNCTION_34_0();
  v1 = *(v0 + 232);
  swift_beginAccess();
  sub_1DD4AC924(v1 + 112, v0 + 56, &qword_1ECCDF3A8, &qword_1DD65EF70);
  if (*(v0 + 80))
  {
    v2 = *(v0 + 224);
    sub_1DD3AA4A8((v0 + 56), v0 + 16);
    sub_1DD3AA4A8((v0 + 16), v2);
    OUTLINED_FUNCTION_2_100();

    return v3();
  }

  else
  {
    sub_1DD417838(v0 + 56, &qword_1ECCDF3A8, &qword_1DD65EF70);
    v5 = swift_task_alloc();
    *(v0 + 248) = v5;
    *v5 = v0;
    v5[1] = sub_1DD5AF474;

    return sub_1DD5AF880(v0 + 96);
  }
}

uint64_t sub_1DD5AF474()
{
  OUTLINED_FUNCTION_44_11();
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 232);
  if (v0)
  {
    v4 = sub_1DD5AF630;
  }

  else
  {
    v4 = sub_1DD5AF59C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DD5AF59C()
{
  OUTLINED_FUNCTION_34_0();
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  sub_1DD5B1244(v0 + 96, v0 + 136);
  swift_beginAccess();
  sub_1DD5B12A4(v0 + 136, v1 + 112);
  swift_endAccess();
  sub_1DD3AA4A8((v0 + 96), v2);
  OUTLINED_FUNCTION_2_100();

  return v3();
}

uint64_t sub_1DD5AF630()
{
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EE166510);
  }

  v1 = *(v0 + 256);
  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F0C8);
  v3 = v1;
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640378();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 256);
    v7 = OUTLINED_FUNCTION_54();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1DD38D000, v4, v5, "Unable to load suggestion bridge: %@", v7, 0xCu);
    sub_1DD417838(v8, &qword_1ECCDBF90, &qword_1DD6445B0);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  return MEMORY[0x1EEE6DFA0](sub_1DD5AF79C, 0, 0);
}

uint64_t sub_1DD5AF79C()
{
  OUTLINED_FUNCTION_44_11();
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = type metadata accessor for NoopSuggestionsBridge();
  inited = swift_initStaticObject();
  v2[3] = v3;
  v2[4] = &protocol witness table for NoopSuggestionsBridge;
  *v2 = inited;

  return MEMORY[0x1EEE6DFA0](sub_1DD5AF828, v1, 0);
}

uint64_t sub_1DD5AF828()
{
  OUTLINED_FUNCTION_34_0();

  OUTLINED_FUNCTION_2_100();

  return v1();
}

uint64_t sub_1DD5AF880(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_1DD63CE68();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD5AF94C, 0, 0);
}

uint64_t sub_1DD5AF94C()
{
  v59 = v0;
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EE166510);
  }

  v1 = sub_1DD63F9F8();
  __swift_project_value_buffer(v1, qword_1EE16F0C8);
  v2 = sub_1DD63F9D8();
  v3 = sub_1DD640358();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_9();
    *v4 = 0;
    _os_log_impl(&dword_1DD38D000, v2, v3, "loading suggestions service via inference bridge...", v4, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[8];

  v9 = MEMORY[0x1E12B3270]();
  sub_1DD63FDD8();

  sub_1DD63CDE8();

  sub_1DD63CE18();
  (*(v8 + 40))(v6, v5, v7);
  sub_1DD5AB33C();
  (*(v8 + 16))(v5, v6, v7);
  v10 = sub_1DD5B033C(v5);
  v0[11] = v10;
  if (v10)
  {
    v11 = v10;
    if ([v10 principalClass])
    {
      ObjCClassMetadata = swift_getObjCClassMetadata();
      v13 = sub_1DD63F9D8();
      v14 = sub_1DD640368();
      if (OUTLINED_FUNCTION_9_0(v14))
      {
        v15 = OUTLINED_FUNCTION_54();
        v16 = swift_slowAlloc();
        v58[0] = v16;
        *v15 = 136315138;
        v17 = sub_1DD640F28();
        v19 = sub_1DD39565C(v17, v18, v58);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_1DD38D000, v13, v14, "found principal class: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      v20 = dynamic_cast_existential_1_conditional(ObjCClassMetadata, ObjCClassMetadata, &protocol descriptor for SiriInferenceSuggestionsBridge);
      v22 = v21;
      v23 = sub_1DD63F9D8();
      if (v20)
      {
        v24 = sub_1DD640358();
        if (OUTLINED_FUNCTION_9_0(v24))
        {
          v25 = OUTLINED_FUNCTION_54();
          v26 = swift_slowAlloc();
          v58[0] = v26;
          *v25 = 136315138;
          v27 = sub_1DD640F28();
          v29 = sub_1DD39565C(v27, v28, v58);

          *(v25 + 4) = v29;
          _os_log_impl(&dword_1DD38D000, v23, v24, "successfully instantiated suggestions bundle with principalClass: %s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v26);
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_0_1();
        }

        v57 = (*(v22 + 24) + **(v22 + 24));
        v30 = swift_task_alloc();
        v0[12] = v30;
        *v30 = v0;
        v30[1] = sub_1DD5B0098;
        v31 = v0[6];

        return v57(v31, v20, v22);
      }

      v46 = sub_1DD640378();
      if (OUTLINED_FUNCTION_9_0(v46))
      {
        v47 = swift_slowAlloc();
        v58[0] = swift_slowAlloc();
        *v47 = 136315394;
        v48 = sub_1DD640F28();
        v50 = sub_1DD39565C(v48, v49, v58);

        *(v47 + 4) = v50;
        *(v47 + 12) = 2080;
        v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3D8, &qword_1DD65F278);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF3E0, &qword_1DD65F280);
        v51 = sub_1DD63FE38();
        v53 = sub_1DD39565C(v51, v52, v58);

        *(v47 + 14) = v53;
        _os_log_impl(&dword_1DD38D000, v23, v46, "principal class %s does not conform to %s", v47, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      sub_1DD5B1314();
      swift_allocError();
      v45 = 2;
    }

    else
    {
      v41 = sub_1DD63F9D8();
      v42 = sub_1DD640378();
      if (OUTLINED_FUNCTION_9_0(v42))
      {
        v43 = OUTLINED_FUNCTION_9();
        *v43 = 0;
        _os_log_impl(&dword_1DD38D000, v41, v42, "suggestions bundle principal class not found", v43, 2u);
        OUTLINED_FUNCTION_0_1();
      }

      sub_1DD5B1314();
      swift_allocError();
      v45 = 1;
    }

    *v44 = v45;
    swift_willThrow();
  }

  else
  {
    v33 = sub_1DD63F9D8();
    v34 = sub_1DD640378();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_54();
      v36 = swift_slowAlloc();
      v58[0] = v36;
      *v35 = 136315138;
      swift_beginAccess();
      sub_1DD3C5CC8();
      v37 = sub_1DD640CB8();
      v39 = sub_1DD39565C(v37, v38, v58);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_1DD38D000, v33, v34, "suggestions bundle not found on expected path:%s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    sub_1DD5B1314();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();
  }

  v54 = OUTLINED_FUNCTION_15_46();
  v55(v54);

  OUTLINED_FUNCTION_26();

  return v56();
}

uint64_t sub_1DD5B0098()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_30_1();
  v2 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v3 = v2;
  *(v4 + 104) = v0;

  if (v0)
  {
    v5 = sub_1DD5B022C;
  }

  else
  {
    v5 = sub_1DD5B019C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DD5B019C()
{
  OUTLINED_FUNCTION_44_11();
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 56);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_2_100();

  return v4();
}

uint64_t sub_1DD5B022C()
{
  OUTLINED_FUNCTION_44_11();

  v1 = OUTLINED_FUNCTION_15_46();
  v2(v1);

  OUTLINED_FUNCTION_26();

  return v3();
}

uint64_t sub_1DD5B02C4()
{
  OUTLINED_FUNCTION_34_0();
  v1 = *(v0 + 16);
  v2 = type metadata accessor for NoopSuggestionsBridge();
  inited = swift_initStaticObject();
  v1[3] = v2;
  v1[4] = &protocol witness table for NoopSuggestionsBridge;
  *v1 = inited;
  OUTLINED_FUNCTION_2_100();

  return v4();
}

id sub_1DD5B033C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DD63CE08();
  v4 = [v2 initWithURL_];

  v5 = sub_1DD63CE68();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t SiriInferenceSuggestionsBridgeProvider.deinit()
{
  sub_1DD417838(v0 + 112, &qword_1ECCDF3A8, &qword_1DD65EF70);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SiriInferenceSuggestionsBridgeProvider.__deallocating_deinit()
{
  sub_1DD417838(v0 + 112, &qword_1ECCDF3A8, &qword_1DD65EF70);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1DD5B04C0()
{
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EE166510);
  }

  v0 = sub_1DD63F9F8();
  __swift_project_value_buffer(v0, qword_1EE16F0C8);
  oslog = sub_1DD63F9D8();
  v1 = sub_1DD640378();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = OUTLINED_FUNCTION_9();
    *v2 = 0;
    _os_log_impl(&dword_1DD38D000, oslog, v1, "startSiriSuggestionsService: No suggestion bridge loaded", v2, 2u);
    OUTLINED_FUNCTION_0_1();
  }
}

uint64_t sub_1DD5B059C()
{
  OUTLINED_FUNCTION_44_11();
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EE166510);
  }

  v1 = sub_1DD63F9F8();
  __swift_project_value_buffer(v1, qword_1EE16F0C8);
  v2 = sub_1DD63F9D8();
  v3 = sub_1DD640378();
  if (OUTLINED_FUNCTION_9_0(v3))
  {
    v4 = OUTLINED_FUNCTION_9();
    *v4 = 0;
    _os_log_impl(&dword_1DD38D000, v2, v3, "onEvent: No suggestion bridge loaded", v4, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  if (qword_1EE162680 != -1)
  {
    OUTLINED_FUNCTION_7_59(&qword_1EE162680);
  }

  sub_1DD5B1244(&byte_1EE162688, *(v0 + 16));
  OUTLINED_FUNCTION_26();

  return v5();
}

uint64_t sub_1DD5B06E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DD4B6C2C;

  return static NoopSuggestionsBridge.getInstanceAsync()(a1);
}

uint64_t sub_1DD5B0778(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DD4B6C2C;

  return sub_1DD5B0588(a1);
}

uint64_t SuggestionEvents.BiomeEvent.__allocating_init(biomeEvent:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SuggestionEvents.BiomeEvent.__deallocating_deinit()
{
  SuggestionEvents.BiomeEvent.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s13SiriInference0aB5ErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1DD640E28();
  MEMORY[0x1E12B3140](v1);
  return sub_1DD640E78();
}

void sub_1DD5B08F4()
{
  qword_1ECCDF360 = &unk_1F58C01A0;
  unk_1ECCDF368 = &off_1F58C01B8;
  byte_1ECCDF348 = 0;
}

void sub_1DD5B093C()
{
  qword_1ECCDF388 = &unk_1F58C01A0;
  unk_1ECCDF390 = &off_1F58C01B8;
  byte_1ECCDF370 = 1;
}

uint64_t sub_1DD5B0988@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return sub_1DD5B1244(a2, a4);
}

void sub_1DD5B09D0()
{
  qword_1EE1626A0 = &unk_1F58C01A0;
  unk_1EE1626A8 = &off_1F58C01B8;
  byte_1EE162688 = 2;
}

uint64_t sub_1DD5B09F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_12_1(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_12_42(v7);

  return sub_1DD5AECC4(v9, v1, v2, v3, v4, v5);
}

unint64_t sub_1DD5B0AE4()
{
  result = qword_1ECCDF3B0;
  if (!qword_1ECCDF3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF3B0);
  }

  return result;
}

unint64_t sub_1DD5B0B3C()
{
  result = qword_1ECCDF3B8;
  if (!qword_1ECCDF3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF3B8);
  }

  return result;
}

uint64_t dispatch thunk of static SiriInferenceSuggestionsBridge.getInstanceAsync()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(a3 + 24) + **(a3 + 24));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_12_1(v6);
  *v7 = v8;
  v7[1] = sub_1DD4B66D4;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of SiriInferenceSuggestionsBridge.onEvent<A>(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(a6 + 32) + **(a6 + 32));
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_12_1(v12);
  *v13 = v14;
  v13[1] = sub_1DD4B66D4;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of SiriInferenceSuggestionsBridgeProvider.get()()
{
  OUTLINED_FUNCTION_44_11();
  v6 = (*(*v0 + 128) + **(*v0 + 128));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_12_42(v2);

  return v6(v4);
}

uint64_t dispatch thunk of NoopSuggestionsBridge.onEvent<A>(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = (*(*v4 + 88) + **(*v4 + 88));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_12_1(v9);
  *v10 = v11;
  v10[1] = sub_1DD4B6C2C;

  return v13(a1, a2, a3, a4);
}

_BYTE *storeEnumTagSinglePayload for SuggestionEvents(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1DD5B1244(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_72();
  (*v3)(a2);
  return a2;
}

uint64_t sub_1DD5B12A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A8, &qword_1DD65EF70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD5B1314()
{
  result = qword_1ECCDF3C8;
  if (!qword_1ECCDF3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF3C8);
  }

  return result;
}

_BYTE *sub_1DD5B1368(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD5B1470(char a1, uint64_t a2, uint64_t a3)
{
  sub_1DD5B1D74();
  v6 = sub_1DD5B185C(0xD000000000000018, 0x80000001DD667000, 4096);
  v7 = [objc_opt_self() interfaceWithProtocol_];
  [v6 setRemoteObjectInterface_];

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v29 = sub_1DD5B1DB8;
  v30 = v8;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v27 = sub_1DD3CBCD0;
  v28 = &block_descriptor_19;
  v9 = _Block_copy(&aBlock);

  [v6 setInterruptionHandler_];
  _Block_release(v9);
  v29 = sub_1DD5B1A04;
  v30 = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v27 = sub_1DD3CBCD0;
  v28 = &block_descriptor_7_0;
  v10 = _Block_copy(&aBlock);
  [v6 setInvalidationHandler_];
  _Block_release(v10);
  [v6 resume];
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v11 = sub_1DD63F9F8();
  __swift_project_value_buffer(v11, qword_1EE16F0C8);
  v12 = v6;
  v13 = sub_1DD63F9D8();
  v14 = sub_1DD640358();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_1DD38D000, v13, v14, "XPC connection established to siriinferenced. %@", v15, 0xCu);
    sub_1DD3CBE0C(v16);
    MEMORY[0x1E12B3DA0](v16, -1, -1);
    MEMORY[0x1E12B3DA0](v15, -1, -1);
  }

  if (a1)
  {
    OUTLINED_FUNCTION_0_132();
    v27 = v18;
    v28 = &block_descriptor_13_0;
    v19 = _Block_copy(&aBlock);

    v20 = &selRef_remoteObjectProxyWithErrorHandler_;
  }

  else
  {
    OUTLINED_FUNCTION_0_132();
    v27 = v21;
    v28 = &block_descriptor_10;
    v19 = _Block_copy(&aBlock);

    v20 = &selRef_synchronousRemoteObjectProxyWithErrorHandler_;
  }

  v22 = [v12 *v20];
  _Block_release(v19);
  sub_1DD6406F8();
  swift_unknownObjectRelease();

  sub_1DD400AE4(&aBlock, &v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF410, &unk_1DD65F3D0);
  swift_dynamicCast();
  return v24;
}

id sub_1DD5B185C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1DD63FDA8();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void sub_1DD5B18D8(void (*a1)(void))
{
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F0C8);
  v3 = sub_1DD63F9D8();
  v4 = sub_1DD640378();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DD38D000, v3, v4, "XPC connection interrupted", v5, 2u);
    MEMORY[0x1E12B3DA0](v5, -1, -1);
  }

  sub_1DD5B1DD8();
  v6 = swift_allocError();
  *v7 = 0;
  a1();
}

void sub_1DD5B1A04()
{
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD63F9F8();
  __swift_project_value_buffer(v0, qword_1EE16F0C8);
  oslog = sub_1DD63F9D8();
  v1 = sub_1DD640378();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DD38D000, oslog, v1, "XPC connection invalidated", v2, 2u);
    MEMORY[0x1E12B3DA0](v2, -1, -1);
  }
}

SiriInference::XPCError_optional __swiftcall XPCError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1DD5B1B14()
{
  result = qword_1ECCDF3F0;
  if (!qword_1ECCDF3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF3F0);
  }

  return result;
}

uint64_t sub_1DD5B1B70@<X0>(uint64_t *a1@<X8>)
{
  result = XPCError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DD5B1B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD5B1CCC();
  v5 = sub_1DD5B1D20();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

_BYTE *storeEnumTagSinglePayload for XPCError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5B1CCC()
{
  result = qword_1ECCDF3F8;
  if (!qword_1ECCDF3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF3F8);
  }

  return result;
}

unint64_t sub_1DD5B1D20()
{
  result = qword_1ECCDF400;
  if (!qword_1ECCDF400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF400);
  }

  return result;
}

unint64_t sub_1DD5B1D74()
{
  result = qword_1ECCDF408;
  if (!qword_1ECCDF408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCDF408);
  }

  return result;
}

double block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1DD5B1DD8()
{
  result = qword_1ECCDF418;
  if (!qword_1ECCDF418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF418);
  }

  return result;
}

uint64_t sub_1DD5B1E44(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1DD6402E8();
  if (!v19)
  {
    return sub_1DD640148();
  }

  v41 = v19;
  v45 = sub_1DD6409C8();
  v32 = sub_1DD6409D8();
  sub_1DD640978();
  result = sub_1DD6402D8();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1DD640308();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1DD6409B8();
      result = sub_1DD6402F8();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DD5B2260()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v54 = v4;
  v55 = v5;
  v7 = v6;
  v9 = v8;
  v56 = v10;
  v57 = v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v48 = &v47 - v18;
  v19 = *(v9 + 16);
  v60 = *(v7 + 16);
  v61 = v19;
  if (v60 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v60;
  }

  sub_1DD640988();
  v50 = v7;
  v51 = v9;
  v58 = v3;
  v59 = v1;
  if (v20)
  {
    v21 = v7;
    v22 = (v9 + 32);
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v3, v1) - 8);
    v52 = v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80));

    v24 = 0;
    while (v61 != v24)
    {
      memcpy(v63, v22, 0x108uLL);
      if (v60 == v24)
      {
        goto LABEL_20;
      }

      v25 = v24 + 1;
      v26 = v52 + *(v23 + 72) * v24;
      v27 = *(v53 + 48);
      memcpy(v14, v22, 0x108uLL);
      sub_1DD4DDC08(v26, &v14[v27], v58, v59);
      sub_1DD3C9478(v63, v62);
      v54(v14, &v14[v27]);
      sub_1DD390754(v14, v56, v57);
      sub_1DD640958();
      sub_1DD640998();
      sub_1DD6409A8();
      sub_1DD640968();
      v22 += 264;
      v24 = v25;
      if (v20 == v25)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {

LABEL_11:
    v28 = 264 * v20 + 32;
    v29 = v61;
    while (1)
    {
      v30 = v50;
      v31 = v51;
      if (v29 == v20)
      {
        break;
      }

      if (v20 >= v29)
      {
        goto LABEL_21;
      }

      memcpy(v63, (v51 + v28), 0x108uLL);
      if (__OFADD__(v20, 1))
      {
        goto LABEL_22;
      }

      if (v60 == v20)
      {
        break;
      }

      if (v20 >= v60)
      {
        goto LABEL_23;
      }

      v33 = v58;
      v32 = v59;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v58, v59);
      OUTLINED_FUNCTION_51(v34);
      v37 = v30 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v36 + 72) * v20;
      v38 = v53;
      v39 = *(v53 + 48);
      v40 = (v31 + v28);
      v41 = v49;
      memcpy(v49, v40, 0x108uLL);
      sub_1DD4DDC08(v37, &v41[v39], v33, v32);
      v42 = v41;
      v43 = v48;
      v45 = v56;
      v44 = v57;
      sub_1DD4DDCBC(v42, v48, v56, v57);
      v46 = *(v38 + 48);
      v29 = v61;
      sub_1DD3C9478(v63, v62);
      v54(v43, (v43 + v46));
      sub_1DD390754(v43, v45, v44);
      sub_1DD640958();
      sub_1DD640998();
      sub_1DD6409A8();
      sub_1DD640968();
      ++v20;
      v28 += 264;
    }

    OUTLINED_FUNCTION_86();
  }
}

uint64_t sub_1DD5B2650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v6 = *(a1 + 16);
  v20 = *(a2 + 16);
  if (v20 >= v6)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1DD640988();
  v19 = a1;
  v16 = a2;
  if (!v7)
  {

    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_21:
    v14 = 264 * v11 + 32;
    if ((v9 & 1) == 0)
    {
      while (v6 != v11)
      {
        if (v11 >= v6)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        result = memcpy(v21, (v19 + v14), 0x108uLL);
        if (__OFADD__(v11, 1))
        {
          goto LABEL_31;
        }

        if (v20 == v10)
        {
          break;
        }

        if (v10 >= v20)
        {
          goto LABEL_32;
        }

        if (__OFADD__(v10, 1))
        {
          goto LABEL_33;
        }

        v15 = *(v16 + 32 + 8 * v10);
        memcpy(__dst, (v19 + v14), 0x108uLL);
        __dst[33] = v15;
        sub_1DD3C9478(v21, __src);

        a3(__dst, v15);
        memcpy(__src, __dst, sizeof(__src));
        sub_1DD390754(__src, &qword_1ECCDBF88, &qword_1DD644468);
        sub_1DD640958();
        sub_1DD640998();
        sub_1DD6409A8();
        result = sub_1DD640968();
        ++v10;
        ++v11;
        v14 += 264;
      }
    }

    return v24;
  }

  v17 = a2 + 32;
  v18 = a1 + 32;

  v9 = 0;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (v9)
    {
      sub_1DD3C94EC(__src);
      memcpy(__dst, __src, 0x110uLL);
      v9 = 1;
      goto LABEL_17;
    }

    v12 = v6;
    if (v11 == v6)
    {
      goto LABEL_12;
    }

    if (v11 >= v6)
    {
      break;
    }

    result = memcpy(__src, (v18 + 264 * v11), 0x108uLL);
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_35;
    }

    if (v10 != v20)
    {
      if (v10 >= v20)
      {
        goto LABEL_36;
      }

      if (__OFADD__(v10, 1))
      {
        goto LABEL_37;
      }

      v13 = *(v17 + 8 * v10);
      memcpy(__dst, (v18 + 264 * v11), 0x108uLL);
      __dst[33] = v13;
      nullsub_1();
      sub_1DD3C9478(__src, v21);

      v9 = 0;
      ++v10;
      goto LABEL_16;
    }

LABEL_12:
    sub_1DD3C94EC(__src);
    memcpy(__dst, __src, 0x110uLL);
    v9 = 1;
LABEL_16:
    v11 = v12;
LABEL_17:
    memcpy(__src, __dst, sizeof(__src));
    result = sub_1DD3C94D4(__src);
    if (result == 1)
    {
      goto LABEL_38;
    }

    a3(__dst, __dst[33]);
    memcpy(v21, __dst, sizeof(v21));
    sub_1DD390754(v21, &qword_1ECCDBF88, &qword_1DD644468);
    sub_1DD640958();
    sub_1DD640998();
    sub_1DD6409A8();
    result = sub_1DD640968();
    if (!--v7)
    {
      goto LABEL_21;
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1DD5B29DC(char a1)
{
  v4[3] = &type metadata for ContactFeatures;
  v4[4] = sub_1DD3E6184();
  LOBYTE(v4[0]) = a1;
  v2 = sub_1DD63DA48();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2 & 1;
}

uint64_t sub_1DD5B2A74(uint64_t a1, uint64_t (*a2)(void))
{
  v4[3] = a1;
  v4[4] = a2();
  v2 = sub_1DD63DA48();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2 & 1;
}

uint64_t SiriKitContactResolver.init(useSuggestedContactConfidenceWorkaround:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for ContactResolver(0);
  swift_allocObject();
  result = ContactResolver.init()();
  *(a1 + 32) = v2;
  *(a1 + 40) = &off_1F58B3CC8;
  *(a1 + 8) = result;
  return result;
}

uint64_t SiriKitContactResolver.resolve<A>(queries:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v19 = a3;
  v20 = a4;
  v5 = sub_1DD640178();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1DD5B1E44(sub_1DD5B2C48, v18, v5, &type metadata for ContactQuery, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);
  SiriKitContactResolver.resolve(queries:config:)(v8, a2, v9, v10, v11, v12, v13, v14, v18[0], v18[1], v19, v20, v21, v22, v23, v24, v25, v26, vars0, vars8);
  v16 = v15;

  return v16;
}

void SiriKitContactResolver.resolve(queries:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  v22 = v20;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050);
  OUTLINED_FUNCTION_51(v27);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_7_3();
  v132 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE08, &qword_1DD644158);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_7_3();
  v130 = v32;
  type metadata accessor for ContactSlotResolutionTask(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2();
  v36 = v35 - v34;
  v134[3] = &type metadata for ContactFeatures;
  v134[4] = sub_1DD3E6184();
  LOBYTE(v134[0]) = 10;
  v37 = sub_1DD63DA48();
  __swift_destroy_boxed_opaque_existential_1Tm(v134);
  if (v37)
  {
    v127 = v30;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v38 = sub_1DD63F9F8();
    __swift_project_value_buffer(v38, qword_1EE16F068);
    v39 = sub_1DD63F9D8();
    v40 = sub_1DD640368();
    if (OUTLINED_FUNCTION_2_4(v40))
    {
      *OUTLINED_FUNCTION_9() = 0;
      OUTLINED_FUNCTION_35_6();
      _os_log_impl(v41, v42, v43, v44, v45, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    OUTLINED_FUNCTION_8_63();
    sub_1DD5B618C(v24, v36 + v46, v47);
    sub_1DD3C2388(v22 + 8, v36);
    *(v36 + 40) = v26;

    v48 = ContactSlotResolutionTask.run(withAlreadyResolvedSlots:)();
    if (v21)
    {
      OUTLINED_FUNCTION_0_133();
      sub_1DD5B61EC(v36, v49);
    }

    else
    {
      v62 = v48;
      v128 = v22;

      v63 = sub_1DD63F9D8();
      v64 = sub_1DD640368();

      if (os_log_type_enabled(v63, v64))
      {
        v120 = v64;
        v122 = v63;
        v65 = OUTLINED_FUNCTION_54();
        v116 = OUTLINED_FUNCTION_62();
        v134[0] = v116;
        v118 = v65;
        *v65 = 136315138;
        v66 = *(v62 + 2);
        v67 = MEMORY[0x1E69E7CC0];
        if (v66)
        {
          v135 = MEMORY[0x1E69E7CC0];
          sub_1DD42C01C(0, v66, 0);
          v67 = v135;
          OUTLINED_FUNCTION_18_3();
          v69 = &v62[v68];
          v131 = *(v70 + 72);
          do
          {
            sub_1DD4DDC08(v69, v132, &qword_1ECCDBED0, &qword_1DD64A050);
            sub_1DD4DDC08(v132, v130, &qword_1ECCDBE08, &qword_1DD644158);
            sub_1DD390754(v132, &qword_1ECCDBED0, &qword_1DD64A050);
            v72 = *(v135 + 16);
            v71 = *(v135 + 24);
            if (v72 >= v71 >> 1)
            {
              v75 = OUTLINED_FUNCTION_1_0(v71);
              sub_1DD42C01C(v75, v72 + 1, 1);
            }

            *(v135 + 16) = v72 + 1;
            OUTLINED_FUNCTION_18_3();
            sub_1DD4DDCBC(v130, v135 + v73 + *(v74 + 72) * v72, &qword_1ECCDBE08, &qword_1DD644158);
            v69 += v131;
            --v66;
          }

          while (v66);
        }

        v96 = MEMORY[0x1E12B2430](v67, v127);
        v98 = v97;

        v99 = sub_1DD39565C(v96, v98, v134);

        *(v118 + 1) = v99;
        _os_log_impl(&dword_1DD38D000, v122, v120, "recommendations: %s", v118, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v116);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      else
      {
      }

      MEMORY[0x1EEE9AC00](v95);
      OUTLINED_FUNCTION_10_52();
      *(v100 - 16) = v128;
      *(v100 - 8) = v24;
      sub_1DD5B2260();

      v101 = sub_1DD63F9D8();
      v102 = sub_1DD640368();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = OUTLINED_FUNCTION_54();
        v104 = OUTLINED_FUNCTION_62();
        v134[0] = v104;
        *v103 = 136315138;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF420, &unk_1DD65F3E0);
        v105 = sub_1DD63FE38();
        v107 = sub_1DD39565C(v105, v106, v134);

        *(v103 + 4) = v107;
        OUTLINED_FUNCTION_33_16(&dword_1DD38D000, v108, v109, "persons: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v104);
        OUTLINED_FUNCTION_8_2();
        OUTLINED_FUNCTION_4_6();
      }

      OUTLINED_FUNCTION_0_133();
      sub_1DD5B61EC(v36, v110);
    }
  }

  else
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v50 = sub_1DD63F9F8();
    __swift_project_value_buffer(v50, qword_1EE16F068);
    v51 = sub_1DD63F9D8();
    v52 = sub_1DD640368();
    if (OUTLINED_FUNCTION_2_4(v52))
    {
      *OUTLINED_FUNCTION_9() = 0;
      OUTLINED_FUNCTION_31_22(&dword_1DD38D000, v53, v54, "Using legacy ContactResolver API");
      OUTLINED_FUNCTION_8_2();
    }

    __swift_project_boxed_opaque_existential_1((v22 + 8), *(v22 + 32));
    sub_1DD43D1BC(v26, v24, v55, v56, v57, v58, v59, v60, v111, v112, v113, v114, v115, v117, v119, v121, v123, v124, v125, v126);
    if (!v21)
    {
      v76 = v61;
      v129 = v22;

      v77 = sub_1DD63F9D8();
      v78 = sub_1DD640368();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = OUTLINED_FUNCTION_54();
        v133 = OUTLINED_FUNCTION_62();
        v134[0] = v133;
        *v79 = 136315138;
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
        v81 = MEMORY[0x1E12B2430](v76, v80);
        v83 = sub_1DD39565C(v81, v82, v134);

        *(v79 + 4) = v83;
        _os_log_impl(&dword_1DD38D000, v77, v78, "recommendations: %s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v133);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      MEMORY[0x1EEE9AC00](v84);
      OUTLINED_FUNCTION_10_52();
      *(v85 - 16) = v129;
      *(v85 - 8) = v24;
      sub_1DD5B2260();

      v86 = sub_1DD63F9D8();
      v87 = sub_1DD640368();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = OUTLINED_FUNCTION_54();
        v89 = OUTLINED_FUNCTION_62();
        v134[0] = v89;
        *v88 = 136315138;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF420, &unk_1DD65F3E0);
        v90 = sub_1DD63FE38();
        v92 = sub_1DD39565C(v90, v91, v134);

        *(v88 + 4) = v92;
        OUTLINED_FUNCTION_33_16(&dword_1DD38D000, v93, v94, "persons: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        OUTLINED_FUNCTION_8_2();
        OUTLINED_FUNCTION_4_6();
      }
    }
  }

  OUTLINED_FUNCTION_86();
}

void SiriKitContactResolver.resolveContacts(queries:config:)()
{
  OUTLINED_FUNCTION_93();
  v170 = v1;
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF428, &qword_1DD65F3F0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_3();
  v177 = v8;
  v192 = type metadata accessor for ContactResolverRunTimeData(0);
  OUTLINED_FUNCTION_0();
  v181 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v174 = (v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_0();
  v173 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_3();
  v167 = v16;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF430, &qword_1DD65F3F8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_7_3();
  v184 = v18;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050);
  OUTLINED_FUNCTION_0();
  v182 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v171 = &v165 - v24;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE08, &qword_1DD644158);
  OUTLINED_FUNCTION_0();
  v172 = v25;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_7_3();
  v166 = v27;
  type metadata accessor for ContactSlotResolutionTask(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2();
  v169 = v30 - v29;
  v191[3] = &type metadata for ContactFeatures;
  v191[4] = sub_1DD3E6184();
  LOBYTE(v191[0]) = 10;
  v31 = sub_1DD63DA48();
  __swift_destroy_boxed_opaque_existential_1Tm(v191);
  v185 = v4;
  v183 = v6;
  if (v31)
  {
    if (qword_1EE165FB0 != -1)
    {
      goto LABEL_83;
    }

    while (1)
    {
      v32 = sub_1DD63F9F8();
      v177 = __swift_project_value_buffer(v32, qword_1EE16F068);
      v33 = sub_1DD63F9D8();
      v34 = sub_1DD640368();
      if (OUTLINED_FUNCTION_2_4(v34))
      {
        *OUTLINED_FUNCTION_9() = 0;
        OUTLINED_FUNCTION_31_22(&dword_1DD38D000, v35, v36, "Using the unified resolve() API to resolve Contacts");
        OUTLINED_FUNCTION_0_1();
      }

      OUTLINED_FUNCTION_8_63();
      v37 = v169;
      sub_1DD5B618C(v4, v169 + v38, v39);
      sub_1DD3C2388(v2 + 8, v37);
      *(v37 + 40) = v183;

      v40 = v170;
      v41 = ContactSlotResolutionTask.run(withAlreadyResolvedSlots:)();
      v170 = v40;
      if (v40)
      {
        break;
      }

      v59 = v41;

      v60 = sub_1DD63F9D8();
      v61 = sub_1DD640368();

      v62 = os_log_type_enabled(v60, v61);
      v181 = v59;
      v175 = v22;
      if (v62)
      {
        LODWORD(v173) = v61;
        v174 = v60;
        v63 = OUTLINED_FUNCTION_54();
        v165 = OUTLINED_FUNCTION_62();
        v191[0] = v165;
        v167 = v63;
        *v63 = 136315138;
        v64 = *(v59 + 2);
        v65 = MEMORY[0x1E69E7CC0];
        if (v64)
        {
          v176 = v2;
          v186[0] = MEMORY[0x1E69E7CC0];
          sub_1DD42C01C(0, v64, 0);
          v65 = v186[0];
          OUTLINED_FUNCTION_18_3();
          v67 = &v59[v66];
          v178 = *(v68 + 72);
          v69 = v166;
          do
          {
            v193 = v64;
            v70 = v65;
            v71 = v171;
            sub_1DD4DDC08(v67, v171, &qword_1ECCDBED0, &qword_1DD64A050);
            sub_1DD4DDC08(v71, v69, &qword_1ECCDBE08, &qword_1DD644158);
            v72 = v71;
            v65 = v70;
            sub_1DD390754(v72, &qword_1ECCDBED0, &qword_1DD64A050);
            v186[0] = v70;
            v74 = *(v70 + 16);
            v73 = *(v70 + 24);
            if (v74 >= v73 >> 1)
            {
              v77 = OUTLINED_FUNCTION_1_0(v73);
              sub_1DD42C01C(v77, v74 + 1, 1);
              v65 = v186[0];
            }

            *(v65 + 16) = v74 + 1;
            OUTLINED_FUNCTION_18_3();
            sub_1DD4DDCBC(v69, v65 + v75 + *(v76 + 72) * v74, &qword_1ECCDBE08, &qword_1DD644158);
            v67 += v178;
            v64 = v193 - 1;
          }

          while (v193 != 1);
          v4 = v185;
          v22 = v175;
          v2 = v176;
          v59 = v181;
        }

        v96 = MEMORY[0x1E12B2430](v65, v168);
        v98 = v97;

        v99 = sub_1DD39565C(v96, v98, v191);

        v100 = v167;
        *(v167 + 1) = v99;
        v101 = v174;
        _os_log_impl(&dword_1DD38D000, v174, v173, "recommendations: %s", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v165);
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_0_1();
      }

      else
      {
      }

      MEMORY[0x1EEE9AC00](v95);
      OUTLINED_FUNCTION_10_52();
      *(v102 - 16) = v2;
      *(v102 - 8) = v4;
      v103 = v170;
      sub_1DD5B2260();
      v105 = v104;
      v170 = v103;

      v106 = sub_1DD63F9D8();
      v107 = sub_1DD640368();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = OUTLINED_FUNCTION_54();
        v2 = OUTLINED_FUNCTION_62();
        v191[0] = v2;
        *v108 = 136315138;
        v186[0] = v105;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF420, &unk_1DD65F3E0);
        v109 = sub_1DD63FE38();
        v111 = sub_1DD39565C(v109, v110, v191);
        v59 = v181;

        *(v108 + 4) = v111;
        v4 = v185;
        OUTLINED_FUNCTION_35_6();
        _os_log_impl(v112, v113, v114, v115, v116, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v2);
        OUTLINED_FUNCTION_8_2();
        OUTLINED_FUNCTION_4_6();
      }

      v117 = 0;
      v183 = *(v59 + 2);
      v118 = (v105 & 0xFFFFFFFFFFFFFF8);
      if (v105 < 0)
      {
        v119 = v105;
      }

      else
      {
        v119 = v105 & 0xFFFFFFFFFFFFFF8;
      }

      v173 = v119;
      v120 = MEMORY[0x1E69E7CC0];
      v177 = (v105 & 0xC000000000000001);
      v178 = v105 >> 62;
      v174 = (v105 & 0xFFFFFFFFFFFFFF8);
      v176 = v105;
      while (1)
      {
        v194 = v120;
        if (v183 == v117)
        {

LABEL_59:
          OUTLINED_FUNCTION_0_133();
          sub_1DD5B61EC(v169, v138);
          goto LABEL_77;
        }

        if (v117 >= *(v59 + 2))
        {
          break;
        }

        OUTLINED_FUNCTION_18_3();
        sub_1DD4DDC08(&v59[v121 + *(v122 + 72) * v117], v22, &qword_1ECCDBED0, &qword_1DD64A050);
        if (v178)
        {
          isa = sub_1DD6407B8();
        }

        else
        {
          isa = v118[2].isa;
        }

        if (v117 == isa)
        {

          sub_1DD390754(v22, &qword_1ECCDBED0, &qword_1DD64A050);
          goto LABEL_59;
        }

        if (v177)
        {
          v124 = MEMORY[0x1E12B2C10](v117, v105);
        }

        else
        {
          if (v117 >= v118[2].isa)
          {
            goto LABEL_81;
          }

          v124 = *(v105 + 8 * v117 + 32);
        }

        v125 = v124;
        v126 = *(v180 + 48);
        v127 = v184;
        sub_1DD4DDCBC(v22, v184, &qword_1ECCDBED0, &qword_1DD64A050);
        *(v127 + v126) = v125;
        v128 = v127 + *(v179 + 9);
        v129 = *v128;
        v2 = 0;
        if (*(v4 + *(type metadata accessor for ContactResolverConfig(0) + 72)) == 1)
        {
          v2 = *(v128 + 8);
        }

        v130 = *(v128 + 16);
        if ((v129 - 1) >= 0xB)
        {
          v131 = 0;
        }

        else
        {
          v131 = v129;
        }

        v132 = v125;
        sub_1DD390754(v184, &qword_1ECCDF430, &qword_1DD65F3F8);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v120 = v194;
        }

        else
        {
          OUTLINED_FUNCTION_29_23();
          v120 = v136;
        }

        v134 = *(v120 + 16);
        v133 = *(v120 + 24);
        if (v134 >= v133 >> 1)
        {
          OUTLINED_FUNCTION_1_0(v133);
          sub_1DD3C0CB0();
          v120 = v137;
        }

        *(v120 + 16) = v134 + 1;
        v135 = v120 + 32 * v134;
        *(v135 + 32) = v132;
        *(v135 + 40) = v129;
        *(v135 + 48) = v2;
        *(v135 + 56) = v130;
        *(v135 + 60) = v131;
        v117 = (v117 + 1);
        v4 = v185;
        v22 = v175;
        v105 = v176;
        v59 = v181;
        v118 = v174;
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    OUTLINED_FUNCTION_0_133();
    sub_1DD5B61EC(v37, v42);
  }

  else
  {
    v180 = v13;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v43 = sub_1DD63F9F8();
    __swift_project_value_buffer(v43, qword_1EE16F068);
    v44 = sub_1DD63F9D8();
    v45 = sub_1DD640368();
    if (OUTLINED_FUNCTION_2_4(v45))
    {
      *OUTLINED_FUNCTION_9() = 0;
      OUTLINED_FUNCTION_35_6();
      _os_log_impl(v46, v47, v48, v49, v50, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    __swift_project_boxed_opaque_existential_1((v2 + 8), *(v2 + 32));
    v51 = v170;
    sub_1DD43DA04(v183, v4, v52, v53, v54, v55, v56, v57, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176);
    if (!v51)
    {
      v78 = v58;
      v170 = 0;

      v79 = sub_1DD63F9D8();
      v22 = sub_1DD640368();

      v80 = os_log_type_enabled(v79, v22);
      v184 = v78;
      v176 = v2;
      if (v80)
      {
        v81 = OUTLINED_FUNCTION_54();
        v179 = OUTLINED_FUNCTION_62();
        v191[0] = v179;
        *v81 = 136315138;
        v82 = *(v78 + 16);
        v83 = MEMORY[0x1E69E7CC0];
        if (v82)
        {
          v171 = v81;
          LODWORD(v172) = v22;
          v175 = v79;
          v186[0] = MEMORY[0x1E69E7CC0];
          sub_1DD42BA74(0, v82, 0);
          v83 = v186[0];
          OUTLINED_FUNCTION_18_3();
          v85 = v78 + v84;
          v182 = *(v86 + 72);
          v87 = v167;
          do
          {
            OUTLINED_FUNCTION_9_54();
            v88 = v174;
            sub_1DD5B618C(v85, v174, v89);
            sub_1DD4DDC08(v88 + *(v192 + 40), v87, &qword_1ECCDBEE0, &unk_1DD645510);
            sub_1DD5B61EC(v88, type metadata accessor for ContactResolverRunTimeData);
            v186[0] = v83;
            v91 = *(v83 + 16);
            v90 = *(v83 + 24);
            if (v91 >= v90 >> 1)
            {
              v94 = OUTLINED_FUNCTION_1_0(v90);
              sub_1DD42BA74(v94, v91 + 1, 1);
              v83 = v186[0];
            }

            *(v83 + 16) = v91 + 1;
            OUTLINED_FUNCTION_18_3();
            sub_1DD4DDCBC(v87, v83 + v92 + *(v93 + 72) * v91, &qword_1ECCDBEE0, &unk_1DD645510);
            v85 += v182;
            --v82;
          }

          while (v82);
          v78 = v184;
          v79 = v175;
          v22 = v172;
          v81 = v171;
        }

        v139 = MEMORY[0x1E12B2430](v83, v180);
        v141 = v140;

        v142 = sub_1DD39565C(v139, v141, v191);

        *(v81 + 4) = v142;
        _os_log_impl(&dword_1DD38D000, v79, v22, "recommendations: %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v179);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_8_2();

        v4 = v185;
      }

      else
      {
      }

      v143 = v183;
      v144 = v183[2];

      v2 = 0;
      v195 = MEMORY[0x1E69E7CC0];
      v145 = 32;
      v180 = 32;
LABEL_62:
      v146 = v145 + 264 * v2;
      while (1)
      {
        if (v144 == v2)
        {

          goto LABEL_77;
        }

        if (v2 >= v144)
        {
          goto LABEL_79;
        }

        memcpy(v191, (v143 + v146), 0x108uLL);
        if (__OFADD__(v2, 1))
        {
          goto LABEL_80;
        }

        v147 = *(v78 + 16);
        if (v2 == v147)
        {
          break;
        }

        if (v2 >= v147)
        {
          goto LABEL_82;
        }

        v182 = v2 + 1;
        v22 = v144;
        OUTLINED_FUNCTION_18_3();
        v150 = v78 + v148 + *(v149 + 72) * v2;
        v151 = *(v178 + 48);
        v152 = (v143 + v146);
        v153 = v177;
        memcpy(v177, v152, 0x108uLL);
        OUTLINED_FUNCTION_9_54();
        sub_1DD5B618C(v150, v153 + v151, v154);
        sub_1DD3C9478(v191, v186);
        sub_1DD5B43E8(v153, v153 + v151, v4, &v187);
        sub_1DD390754(v153, &qword_1ECCDF428, &qword_1DD65F3F0);
        v155 = v187;
        v156 = v188;
        v158 = v189;
        v157 = v190;
        if (v187)
        {
          v144 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_29_23();
            v195 = v163;
          }

          v2 = v182;
          v159 = v195;
          v161 = *(v195 + 16);
          v160 = *(v195 + 24);
          v22 = v161 + 1;
          if (v161 >= v160 >> 1)
          {
            OUTLINED_FUNCTION_1_0(v160);
            sub_1DD3C0CB0();
            v159 = v164;
          }

          *(v159 + 16) = v22;
          v195 = v159;
          v162 = v159 + 32 * v161;
          *(v162 + 32) = v155;
          *(v162 + 40) = v156;
          *(v162 + 48) = v158;
          *(v162 + 56) = v157;
          *(v162 + 60) = HIDWORD(v157);
          v78 = v184;
          v4 = v185;
          v143 = v183;
          v145 = v180;
          goto LABEL_62;
        }

        sub_1DD5B5F00(0);
        ++v2;
        v146 += 264;
        v78 = v184;
        v4 = v185;
        v143 = v183;
        v144 = v22;
      }

      sub_1DD3C9478(v191, v186);

      sub_1DD3C9580(v191);
    }
  }

LABEL_77:
  OUTLINED_FUNCTION_86();
}

uint64_t ResolvedSiriKitContact.init(person:personType:resolutionSignals:forcePromptType:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  if ((a2 - 1) >= 0xB)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  *(a5 + 28) = v6;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  return result;
}

void sub_1DD5B43E8(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v37 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1C8, qword_1DD64ADD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  memcpy(v39, a1, 0x108uLL);
  v13 = type metadata accessor for ContactResolverRunTimeData(0);
  sub_1DD4DDC08(a2 + v13[14], v9, &qword_1ECCDC1C8, qword_1DD64ADD0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1DD4DDC08(a2 + v13[10], v12, &qword_1ECCDBEE0, &unk_1DD645510);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_1DD390754(v9, &qword_1ECCDC1C8, qword_1DD64ADD0);
    }
  }

  else
  {
    sub_1DD4DDCBC(v9, v12, &qword_1ECCDBEE0, &unk_1DD645510);
  }

  v14 = sub_1DD5B5940(v39, v12, v37, &qword_1ECCDBEE0, &unk_1DD645510);
  sub_1DD390754(v12, &qword_1ECCDBEE0, &unk_1DD645510);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v15 = sub_1DD63F9F8();
  __swift_project_value_buffer(v15, qword_1EE16F068);
  v16 = v14;
  v17 = sub_1DD63F9D8();
  v18 = sub_1DD640368();

  v19 = os_log_type_enabled(v17, v18);
  v36 = v16;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v38 = v16;
    v39[0] = v21;
    *v20 = 136315138;
    sub_1DD39638C(0, qword_1EE166068, 0x1E696E940);
    v22 = v16;
    v23 = sub_1DD63FE38();
    v25 = a2;
    v26 = a4;
    v27 = v13;
    v28 = sub_1DD39565C(v23, v24, v39);

    *(v20 + 4) = v28;
    v13 = v27;
    a4 = v26;
    a2 = v25;
    _os_log_impl(&dword_1DD38D000, v17, v18, "person: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1E12B3DA0](v21, -1, -1);
    MEMORY[0x1E12B3DA0](v20, -1, -1);
  }

  v29 = sub_1DD45E2B8();
  v30 = type metadata accessor for ContactResolverConfig(0);
  v31 = 0;
  if (*(v37 + *(v30 + 72)) == 1)
  {
    sub_1DD45DC70();
  }

  v32 = *(a2 + v13[13]);
  v33 = v29 - 1;
  if (v33 >= 0xB)
  {
    v34 = 0;
  }

  else
  {
    v34 = (v33 << 32) + 0x100000000;
  }

  *a4 = v36;
  a4[1] = v29;
  a4[2] = v31;
  a4[3] = v34 | v32;
}

uint64_t SiriKitContactResolver.findMatches(queries:config:)(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + 8), *(v2 + 32));
  sub_1DD441958();
  if (!v3)
  {
    v6 = v5;
    MEMORY[0x1EEE9AC00](v5);

    a2 = sub_1DD5B2650(v7, v6, sub_1DD5B5F40);
  }

  return a2;
}

char *sub_1DD5B4890(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[1] = a4;
  v29[2] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v29 - v8;
  v29[0] = type metadata accessor for Contact(0);
  v10 = *(v29[0] - 8);
  MEMORY[0x1EEE9AC00](v29[0]);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v31, a1, sizeof(v31));
  v13 = *(a2 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v30[0] = MEMORY[0x1E69E7CC0];
    sub_1DD42B5EC(0, v13, 0);
    v14 = v30[0];
    v15 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v16 = *(v7 + 72);
    do
    {
      sub_1DD4DDC08(v15, v9, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD5B618C(v9, v12, type metadata accessor for Contact);
      sub_1DD390754(v9, &qword_1ECCDBBE8, &qword_1DD644470);
      v30[0] = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1DD42B5EC(v17 > 1, v18 + 1, 1);
        v14 = v30[0];
      }

      *(v14 + 16) = v18 + 1;
      sub_1DD3C95D4(v12, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v19 = sub_1DD63F9F8();
  __swift_project_value_buffer(v19, qword_1EE16F068);

  v20 = sub_1DD63F9D8();
  v21 = sub_1DD640368();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30[0] = v23;
    *v22 = 136315138;
    v24 = MEMORY[0x1E12B2430](v14, v29[0]);
    v26 = sub_1DD39565C(v24, v25, v30);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1DD38D000, v20, v21, "contacts: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1E12B3DA0](v23, -1, -1);
    MEMORY[0x1E12B3DA0](v22, -1, -1);
  }

  if (*(v14 + 16))
  {
    memcpy(v30, v31, sizeof(v30));
    v27 = sub_1DD5B4E1C(v30, v14, 2);
  }

  else
  {

    memcpy(v30, v31, sizeof(v30));
    return sub_1DD5B4C70(v30);
  }

  return v27;
}

void *sub_1DD5B4C70(const void *a1)
{
  v2 = type metadata accessor for Contact(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v13, a1, sizeof(v13));
  memcpy(v12, a1, sizeof(v12));
  sub_1DD3C9478(v13, &v11);
  sub_1DD40ED6C(v12, v4);
  v5 = Contact.makeINPersons(explode:)(1);
  if (sub_1DD3CC020() <= 1)
  {
    sub_1DD408BFC();
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E12B2C10](0, v5);
    }

    else
    {
      v8 = *(v5 + 32);
    }

    v7 = v8;

    sub_1DD5B61EC(v4, type metadata accessor for Contact);
  }

  else
  {
    sub_1DD5B61EC(v4, type metadata accessor for Contact);
    sub_1DD408BFC();
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E12B2C10](0, v5);
    }

    else
    {
      v6 = *(v5 + 32);
    }

    v7 = v6;
  }

  [v7 setSourceAppBundleIdentifier_];
  sub_1DD5B5DB4(MEMORY[0x1E69E7CC0], v7);
  return v7;
}

char *sub_1DD5B4E1C(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Contact(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v74 - v10;
  memcpy(v88, a1, 0x108uLL);
  v11 = *(a2 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = 0;
    v81 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    v79 = a3;
    v80 = v14;
    v76 = v11;
    while (1)
    {
      sub_1DD5B618C(v81 + v80 * v13, v85, type metadata accessor for Contact);
      v15 = Contact.makeINPersons(explode:)(v11 == 1);
      a3 = v15;
      i = v15 >> 62;
      if (v15 >> 62)
      {
        v17 = sub_1DD6407B8();
      }

      else
      {
        v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = v12 >> 62;
      if (v12 >> 62)
      {
        v19 = sub_1DD6407B8();
      }

      else
      {
        v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v19 + v17;
      if (__OFADD__(v19, v17))
      {
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v18)
      {
        goto LABEL_13;
      }

LABEL_14:
      v12 = sub_1DD640918();
      v21 = v12 & 0xFFFFFFFFFFFFFF8;
LABEL_15:
      v83 = v13;
      v84 = v17;
      v22 = *(v21 + 16);
      v23 = (*(v21 + 24) >> 1) - v22;
      v24 = v21 + 8 * v22;
      v82 = v21;
      if (i)
      {
        if (a3 < 0)
        {
          i = a3;
        }

        else
        {
          i = a3 & 0xFFFFFFFFFFFFFF8;
        }

        v26 = sub_1DD6407B8();
        if (!v26)
        {
LABEL_32:

          a3 = v79;
          if (v84 > 0)
          {
            goto LABEL_84;
          }

          goto LABEL_33;
        }

        v27 = v26;
        v28 = sub_1DD6407B8();
        if (v23 < v28)
        {
          goto LABEL_88;
        }

        if (v27 < 1)
        {
          goto LABEL_90;
        }

        v77 = v28;
        v78 = v12;
        v29 = v24 + 32;
        sub_1DD5B6244();
        for (i = 0; i != v27; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF420, &unk_1DD65F3E0);
          v30 = sub_1DD5B5E98(v87, i, a3);
          v32 = *v31;
          v30(v87, 0);
          *(v29 + 8 * i) = v32;
        }

        v25 = v77;
        v12 = v78;
        v11 = v76;
      }

      else
      {
        i = a3 & 0xFFFFFFFFFFFFFF8;
        v25 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v25)
        {
          goto LABEL_32;
        }

        if (v23 < v25)
        {
          goto LABEL_89;
        }

        sub_1DD39638C(0, qword_1EE166068, 0x1E696E940);
        swift_arrayInitWithCopy();
      }

      a3 = v79;
      if (v25 < v84)
      {
        goto LABEL_84;
      }

      if (v25 > 0)
      {
        v33 = *(v82 + 16);
        v34 = __OFADD__(v33, v25);
        v35 = v33 + v25;
        if (v34)
        {
          goto LABEL_85;
        }

        *(v82 + 16) = v35;
      }

LABEL_33:
      v13 = v83 + 1;
      sub_1DD5B61EC(v85, type metadata accessor for Contact);
      if (v13 == v11)
      {
        goto LABEL_37;
      }
    }

    if (!v18)
    {
      v21 = v12 & 0xFFFFFFFFFFFFFF8;
      if (v20 <= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_13:
    sub_1DD6407B8();
    goto LABEL_14;
  }

LABEL_37:
  memcpy(v87, v88, sizeof(v87));
  sub_1DD3C9478(v88, &v86);
  v36 = v75;
  sub_1DD40ED6C(v87, v75);
  i = Contact.makeINPersons(explode:)(1);
  if (sub_1DD3CC020() <= 1)
  {
    sub_1DD408BFC();
    if ((i & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x1E12B2C10](0, i);
    }

    else
    {
      v39 = *(i + 32);
    }

    v38 = v39;

    sub_1DD5B61EC(v75, type metadata accessor for Contact);
    goto LABEL_44;
  }

  sub_1DD5B61EC(v36, type metadata accessor for Contact);
  sub_1DD408BFC();
  if ((i & 0xC000000000000001) != 0)
  {
    goto LABEL_92;
  }

  for (j = *(i + 32); ; j = MEMORY[0x1E12B2C10](0, i))
  {
    v38 = j;

LABEL_44:
    [v38 setSourceAppBundleIdentifier_];
    v40 = sub_1DD3CC020();
    if (!v40)
    {

      v43 = MEMORY[0x1E69E7CC0];
      goto LABEL_50;
    }

    v41 = v40;
    v87[0] = MEMORY[0x1E69E7CC0];
    i = v87;
    sub_1DD640988();
    if ((v41 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_91:
    __break(1u);
LABEL_92:
    ;
  }

  v85 = v38;
  v42 = 32;
  do
  {
    [objc_allocWithZone(MEMORY[0x1E696E9C0]) initWithPerson:*(v12 + v42) recommendation:a3];
    sub_1DD640958();
    sub_1DD640998();
    sub_1DD6409A8();
    sub_1DD640968();
    v42 += 8;
    --v41;
  }

  while (v41);

  v43 = v87[0];
  v38 = v85;
LABEL_50:
  sub_1DD5B5DB4(v43, v38);
  v44 = [v38 relationship];
  if (v44)
  {
  }

  else
  {
    v61 = sub_1DD3CA3EC(v38, &selRef_scoredAlternatives, &qword_1EE160210, 0x1E696E9C0);
    if (v61)
    {
      v62 = v61;
      if (sub_1DD3CC020())
      {
        sub_1DD408BFC();
        if ((v62 & 0xC000000000000001) != 0)
        {
          v63 = MEMORY[0x1E12B2C10](0, v62);
        }

        else
        {
          v63 = *(v62 + 32);
        }

        v64 = v63;

        v12 = [v64 person];

        v65 = [v12 relationship];
        if (v65)
        {
          [v38 setRelationship_];
        }
      }

      else
      {
      }
    }
  }

  v45 = [v38 personHandle];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 label];
    if (v47)
    {

      v48 = sub_1DD3CA3EC(v38, &selRef_siriMatches, qword_1EE166068, 0x1E696E940);
      if (v48)
      {
        i = v48;
        v83 = v46;
        v85 = v38;
        v49 = sub_1DD3CC020();
        v50 = 0;
        v84 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          while (1)
          {
            if (v49 == v50)
            {

              if (*(v84 + 16))
              {
                v66 = *(v84 + 32);

                v46 = v83;
                v67 = sub_1DD4E098C(v83);
                v69 = v68;
                v70 = [v46 type];
                objc_allocWithZone(MEMORY[0x1E696E948]);
                v71 = v66;
                v72 = sub_1DD5B5CD8(v67, v69, v70, v66);
                v38 = v85;
                [v85 setPersonHandle_];
              }

              else
              {

                v38 = v85;
                v46 = v83;
              }

              goto LABEL_80;
            }

            if ((i & 0xC000000000000001) != 0)
            {
              v51 = MEMORY[0x1E12B2C10](v50, i);
            }

            else
            {
              if (v50 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_87;
              }

              v51 = *(i + 8 * v50 + 32);
            }

            v12 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              goto LABEL_86;
            }

            v52 = v51;
            v53 = [v52 personHandle];
            if (v53)
            {
              break;
            }

LABEL_69:
            ++v50;
          }

          a3 = v53;
          v54 = [v53 label];

          if (!v54)
          {
            goto LABEL_69;
          }

          v55 = v84;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DD3C0D6C();
            v55 = v59;
          }

          v57 = *(v55 + 16);
          v56 = *(v55 + 24);
          v84 = v55;
          if (v57 >= v56 >> 1)
          {
            sub_1DD3C0D6C();
            v84 = v60;
          }

          v58 = v84;
          *(v84 + 16) = v57 + 1;
          *(v58 + 8 * v57 + 32) = v54;
          v50 = v12;
        }
      }
    }

LABEL_80:
  }

  return v38;
}

void SiriKitContactResolver.correctResolution(queries:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  __swift_project_boxed_opaque_existential_1((v20 + 8), *(v20 + 32));
  sub_1DD43FF34();
  if (!v21)
  {
    v28 = v27;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v29 = sub_1DD63F9F8();
    __swift_project_value_buffer(v29, qword_1EE16F068);

    v30 = sub_1DD63F9D8();
    v31 = sub_1DD640368();

    if (os_log_type_enabled(v30, v31))
    {
      v39 = OUTLINED_FUNCTION_54();
      v40 = OUTLINED_FUNCTION_62();
      a10 = v40;
      *v39 = 136315138;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
      v33 = MEMORY[0x1E12B2430](v28, v32);
      v35 = v31;
      v36 = sub_1DD39565C(v33, v34, &a10);

      *(v39 + 4) = v36;
      _os_log_impl(&dword_1DD38D000, v30, v35, "corrections: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    MEMORY[0x1EEE9AC00](v37);
    OUTLINED_FUNCTION_10_52();
    *(v38 - 16) = v24;
    *(v38 - 8) = v26;
    sub_1DD5B2260();
  }

  OUTLINED_FUNCTION_86();
}

void *sub_1DD5B5940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v25[1] = a3;
  v8 = type metadata accessor for Contact(0);
  v9 = OUTLINED_FUNCTION_51(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v25 - v14);
  sub_1DD4DDC08(a2, v25 - v14, a4, a5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD3C95D4(v15, v12);
      OUTLINED_FUNCTION_21_33();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD58, &unk_1DD649DD0);
      v23 = OUTLINED_FUNCTION_24_22(v22);
      OUTLINED_FUNCTION_7_60(v23, xmmword_1DD643F90);
      v18 = v23;
      v19 = 1;
      goto LABEL_6;
    case 2u:
      v20 = *v15;
      OUTLINED_FUNCTION_21_33();
      v21 = sub_1DD5B4E1C(v26, v20, 2);

      break;
    case 3u:
      OUTLINED_FUNCTION_21_33();
      v21 = sub_1DD5B4C70(v26);
      break;
    default:
      sub_1DD3C95D4(v15, v12);
      OUTLINED_FUNCTION_21_33();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD58, &unk_1DD649DD0);
      v17 = OUTLINED_FUNCTION_24_22(v16);
      OUTLINED_FUNCTION_7_60(v17, xmmword_1DD643F90);
      v18 = v17;
      v19 = 0;
LABEL_6:
      v21 = sub_1DD5B4E1C(v26, v18, v19);
      swift_setDeallocating();
      sub_1DD46CC04();
      sub_1DD5B61EC(v12, type metadata accessor for Contact);
      break;
  }

  return v21;
}

void ResolvedSiriKitContact.init(person:personType:)(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  if ((a2 - 1) >= 0xB)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
  }

  *(a3 + 28) = v3;
  *(a3 + 16) = 0;
  OUTLINED_FUNCTION_13_46(a3);
}

void ResolvedSiriKitContact.init(person:personType:resolutionSignals:)(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  if ((a2 - 1) >= 0xB)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  *(a4 + 28) = v4;
  *(a4 + 16) = a3;
  OUTLINED_FUNCTION_13_46(a4);
}

void ResolvedSiriKitContact.init(person:recipientType:)(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 28) = a2;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  OUTLINED_FUNCTION_13_46(a3);
}

id sub_1DD5B5CD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1DD63FDA8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithValue:v8 type:a3 label:a4];

  return v9;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_16_48(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_1DD5B5DB4(uint64_t a1, void *a2)
{
  sub_1DD39638C(0, &qword_1EE160210, 0x1E696E9C0);
  v3 = sub_1DD6400F8();

  [a2 setScoredAlternatives_];
}

uint64_t sub_1DD5B5E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_3_85(a1, a2, a3);
  sub_1DD408BF4(v5);
  OUTLINED_FUNCTION_2_101();
  sub_1DD408BFC();
  if (v4)
  {
    OUTLINED_FUNCTION_30_19();
  }

  else
  {
    OUTLINED_FUNCTION_25_23();
  }

  *v3 = v6;
  return OUTLINED_FUNCTION_14_42();
}

uint64_t sub_1DD5B5E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_3_85(a1, a2, a3);
  sub_1DD408BF4(v7);
  OUTLINED_FUNCTION_2_101();
  sub_1DD408BFC();
  if (v6)
  {
    v8 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    OUTLINED_FUNCTION_25_23();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_14_42();
}

void *sub_1DD5B5F00(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DD5B5F48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD5B5F88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD5B5FD4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD5B6014(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD5B6064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_3_85(a1, a2, a3);
  sub_1DD408BF4(v7);
  OUTLINED_FUNCTION_2_101();
  sub_1DD408BFC();
  if (v6)
  {
    v8 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    OUTLINED_FUNCTION_25_23();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_14_42();
}

uint64_t sub_1DD5B60D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_3_85(a1, a2, a3);
  sub_1DD408BF4(v5);
  OUTLINED_FUNCTION_2_101();
  sub_1DD408BFC();
  if (v4)
  {
    OUTLINED_FUNCTION_30_19();
  }

  else
  {
    OUTLINED_FUNCTION_25_23();
  }

  *v3 = v6;
  return OUTLINED_FUNCTION_14_42();
}

unint64_t sub_1DD5B6138()
{
  result = qword_1ECCDF438;
  if (!qword_1ECCDF438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF438);
  }

  return result;
}

uint64_t sub_1DD5B618C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD5B61EC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1DD5B6244()
{
  result = qword_1ECCDF440;
  if (!qword_1ECCDF440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDF420, &unk_1DD65F3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF440);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_22(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_29_23()
{

  sub_1DD3C0CB0();
}

double OUTLINED_FUNCTION_30_19()
{

  return result;
}

void OUTLINED_FUNCTION_31_22(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_33_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t type metadata accessor for SiriRemembersContactSignalProvider(uint64_t a1)
{
  result = qword_1EE163468;
  if (!qword_1EE163468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD5B640C(uint64_t a1)
{
  v1 = sub_1DD63F308();
  if (v2 <= 0x3F)
  {
    sub_1DD4F9804();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1DD5B64C8(319);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1DD5B64C8(uint64_t a1)
{
  if (!qword_1EE162E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCCC8, &unk_1DD64AF38);
    v1 = sub_1DD6405F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE162E38);
    }
  }
}

void sub_1DD5B652C(uint64_t *a1)
{
  v263 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF458, &qword_1DD65F4F0);
  OUTLINED_FUNCTION_0();
  v253 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_25(&v246 - v4);
  v286 = sub_1DD63F2B8();
  OUTLINED_FUNCTION_0();
  v265 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25(&v246 - v16);
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF460, &unk_1DD65F4F8);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25(&v246 - v20);
  v287 = sub_1DD63F028();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1_4();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v246 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_25(&v246 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  v290 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v246 - v36;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0();
  v267 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_1_4();
  v42 = v40 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v291 = &v246 - v44;
  if (qword_1EE165FB0 != -1)
  {
    goto LABEL_109;
  }

  while (1)
  {
    v45 = sub_1DD63F9F8();
    v258 = __swift_project_value_buffer(v45, qword_1EE16F068);
    v46 = sub_1DD63F9D8();
    v47 = sub_1DD640358();
    v48 = os_log_type_enabled(v46, v47);
    v271 = v22;
    v298 = v42;
    if (v48)
    {
      v49 = OUTLINED_FUNCTION_9();
      v42 = v29;
      *v49 = 0;
      _os_log_impl(&dword_1DD38D000, v46, v47, "SiriRemembersContactSignalProvider emit trigger logic", v49, 2u);
      v22 = v271;
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v50 = type metadata accessor for SiriRemembersContactSignalProvider(0);
    v51 = v266;
    sub_1DD4DDC08(v266 + *(v50 + 28), &v300, &qword_1ECCDC250, &qword_1DD645B10);
    v254 = v1;
    v256 = v50;
    if (v301)
    {
      __swift_project_boxed_opaque_existential_1(&v300, v301);
      sub_1DD601998(1, *(v51 + *(v50 + 32)), *(v51 + *(v50 + 32) + 8));
      v52 = __swift_destroy_boxed_opaque_existential_1(&v300);
    }

    else
    {
      v52 = sub_1DD390754(&v300, &qword_1ECCDC250, &qword_1DD645B10);
    }

    v53 = v287;
    v1 = *v263;
    v54 = *(*v263 + 16);
    v55 = MEMORY[0x1E69E7CC0];
    v247 = v26;
    v270 = v1;
    if (!v54)
    {
      break;
    }

    if (v54 == 1)
    {
      v56 = OUTLINED_FUNCTION_21_34(v52);
      v57 = sub_1DD640368();
      if (OUTLINED_FUNCTION_5_6(v57))
      {
        v58 = OUTLINED_FUNCTION_9();
        *v58 = 0;
        v59 = "one contact entity match group to resolve. relying on individual signals.";
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    v246 = v29;
    v78 = 0;
    v269 = v1 + 32;
    v292 = (v291 + 272);
    v277 = (v22 + 8);
    v276 = *MEMORY[0x1E69D29C0];
    v275 = (v18 + 104);
    v274 = (v18 + 8);
    v273 = v22 + 32;
    v288 = MEMORY[0x1E69E7CC0];
    v29 = MEMORY[0x1E69E7CC0];
    v268 = v54;
    while (v78 < *(v1 + 16))
    {
      v289 = v29;
      v272 = v78;
      v79 = *(v269 + 8 * v78);
      v80 = *(v79 + 16);
      if (v80)
      {
        v300 = v55;

        sub_1DD42A2D4(0, v80, 0, v81, v82, v83, v84);
        v85 = v300;
        OUTLINED_FUNCTION_24_0();
        v87 = v79 + v86;
        v302 = *(v88 + 72);
        v295 = v79 + v86;
        *&v296 = v79;
        v55 = &qword_1ECCDBBE8;
        do
        {
          v89 = v298;
          sub_1DD4DDC08(v87, v298, &qword_1ECCDBBE8, &qword_1DD644470);
          v90 = *v89;
          v91 = v89[1];

          v92 = sub_1DD390754(v89, &qword_1ECCDBBE8, &qword_1DD644470);
          v300 = v85;
          v94 = *(v85 + 16);
          v93 = *(v85 + 24);
          if (v94 >= v93 >> 1)
          {
            v96 = OUTLINED_FUNCTION_1_0(v93);
            sub_1DD42A2D4(v96, v94 + 1, 1, v97, v98, v99, v100);
            v55 = &qword_1ECCDBBE8;
            v85 = v300;
          }

          *(v85 + 16) = v94 + 1;
          v95 = v85 + 16 * v94;
          *(v95 + 32) = v90;
          *(v95 + 40) = v91;
          v87 += v302;
          --v80;
        }

        while (v80);
        v278 = v85;
        v101 = v296;
        v294 = *(v296 + 16);
        if (v294)
        {
          v102 = 0;
          v293 = *(v264 + 36);
          v103 = MEMORY[0x1E69E7CC0];
          v104 = MEMORY[0x1E69E7CC0];
          v105 = v291;
          while (1)
          {
            if (v102 >= *(v101 + 2))
            {
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
              goto LABEL_84;
            }

            v299 = v102;
            sub_1DD4DDC08(v295 + v302 * v102, v105, &qword_1ECCDBBE8, &qword_1DD644470);
            v110 = *&v292[v293];
            v111 = *(v110 + 16);
            if (v111)
            {
              v297 = v104;
              v300 = v103;
              sub_1DD42A2D4(0, v111, 0, v106, v107, v108, v109);
              v55 = v300;
              OUTLINED_FUNCTION_24_0();
              v113 = v110 + v112;
              v115 = *(v114 + 72);
              do
              {
                sub_1DD4DDC08(v113, v37, &qword_1ECCDBBD8, &unk_1DD645A90);
                v117 = *(v37 + 7);
                v116 = *(v37 + 8);

                sub_1DD390754(v37, &qword_1ECCDBBD8, &unk_1DD645A90);
                v300 = v55;
                v119 = v55[2];
                v118 = v55[3];
                if (v119 >= v118 >> 1)
                {
                  v121 = OUTLINED_FUNCTION_1_0(v118);
                  sub_1DD42A2D4(v121, v119 + 1, 1, v122, v123, v124, v125);
                  v55 = v300;
                }

                v55[2] = v119 + 1;
                v120 = &v55[2 * v119];
                v120[4] = v117;
                v120[5] = v116;
                v113 += v115;
                --v111;
              }

              while (v111);
              v105 = v291;
              v92 = sub_1DD390754(v291, &qword_1ECCDBBE8, &qword_1DD644470);
              v103 = MEMORY[0x1E69E7CC0];
              v104 = v297;
            }

            else
            {
              v92 = sub_1DD390754(v105, &qword_1ECCDBBE8, &qword_1DD644470);
              v55 = v103;
            }

            v126 = v55[2];
            v101 = v104[2];
            v127 = v101 + v126;
            if (__OFADD__(v101, v126))
            {
              goto LABEL_82;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v127 > (v104[3] >> 1))
            {
              sub_1DD3BE2A4();
              v104 = isUniquelyReferenced_nonNull_native;
            }

            if (v55[2])
            {
              if (((v104[3] >> 1) - v104[2]) < v126)
              {
                __break(1u);
                goto LABEL_87;
              }

              swift_arrayInitWithCopy();

              v55 = &qword_1ECCDBBE8;
              if (v126)
              {
                v129 = v104[2];
                v130 = __OFADD__(v129, v126);
                v131 = v129 + v126;
                if (v130)
                {
                  __break(1u);
LABEL_99:
                  v238 = v92;

                  v239 = v270;
                  v240 = *(v270 + 16);
                  if (v240)
                  {
                    v241 = 0;
                    v242 = 32;
                    while (1)
                    {
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_1DD586A30();
                        v239 = v243;
                      }

                      if (v241 >= *(v239 + 16))
                      {
                        break;
                      }

                      ++v241;
                      sub_1DD5B81B8((v239 + v242), v290, v279, v278, v238);
                      v242 += 8;
                      if (v240 == v241)
                      {

                        OUTLINED_FUNCTION_22_30();

                        *v263 = v239;
                        goto LABEL_107;
                      }
                    }

                    __break(1u);
                  }

                  else
                  {

                    OUTLINED_FUNCTION_22_30();

LABEL_107:
                    OUTLINED_FUNCTION_15_47();
                    v244 = v302;
                    v302();
                    v245 = OUTLINED_FUNCTION_12_43();
                    v244(v245, v240);
                  }

                  return;
                }

                v104[2] = v131;
              }
            }

            else
            {

              v55 = &qword_1ECCDBBE8;
              if (v126)
              {
                goto LABEL_83;
              }
            }

            v102 = (v299 + 1);
            v101 = v296;
            if (v299 + 1 == v294)
            {
              v297 = v104;

              v53 = v287;
              v22 = v271;
              goto LABEL_48;
            }
          }
        }

        v53 = v287;
        v22 = v271;
        v55 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v278 = v55;
      }

      v297 = v55;
LABEL_48:
      v132 = v278;
      if (!*(v278 + 16))
      {

        v56 = OUTLINED_FUNCTION_21_34(v192);
        v193 = sub_1DD640368();
        if (OUTLINED_FUNCTION_5_6(v193))
        {
          v58 = OUTLINED_FUNCTION_9();
          *v58 = 0;
          v59 = "one candidateSet has no contact ids. use individual signals for all candidates.";
LABEL_71:
          _os_log_impl(&dword_1DD38D000, v56, v55, v59, v58, 2u);
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
        }

LABEL_72:

        v194 = OUTLINED_FUNCTION_18_36();
        sub_1DD5B8114(v194);
        return;
      }

      v133 = v281;
      sub_1DD63F018();
      v134 = v280;
      sub_1DD63F008();
      v135 = v53;
      v136 = *v277;
      (*v277)(v133, v135);
      v137 = v283;
      *v283 = v132;
      v138 = v284;
      v302 = *v275;
      (v302)(v137, v276, v284);
      sub_1DD63EFF8();
      v299 = *v274;
      (v299)(v137, v138);
      v136(v134, v135);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v139 = v289;
      }

      else
      {
        OUTLINED_FUNCTION_19_35();
        v139 = v154;
      }

      v141 = *(v139 + 2);
      v140 = *(v139 + 3);
      if (v141 >= v140 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v140);
        sub_1DD3BF964();
        v139 = v155;
      }

      *(v139 + 2) = v141 + 1;
      OUTLINED_FUNCTION_24_0();
      v289 = v142;
      v295 = v143;
      v26 = *(v22 + 72);
      v144 = &v142[v143 + v26 * v141];
      v145 = v287;
      *&v296 = *(v22 + 32);
      (v296)(v144, v279, v287);
      v146 = v281;
      sub_1DD63F018();
      v147 = v280;
      sub_1DD63F008();
      v136(v146, v145);
      v42 = v283;
      *v283 = v297;
      v148 = v284;
      (v302)(v42, v276, v284);
      sub_1DD63EFF8();
      (v299)(v42, v148);
      v136(v147, v145);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_19_35();
        v288 = v156;
      }

      v1 = v270;
      v53 = v287;
      v150 = *(v288 + 16);
      v149 = *(v288 + 24);
      v151 = v272;
      v22 = v271;
      if (v150 >= v149 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v149);
        sub_1DD3BF964();
        v151 = v272;
        v288 = v157;
      }

      v152 = v288;
      *(v288 + 16) = v150 + 1;
      v153 = v152 + v295 + v150 * v26;
      v18 = v151 + 1;
      (v296)(v153, v282, v53);
      v78 = v18;
      v29 = v289;
      v55 = MEMORY[0x1E69E7CC0];
      if (v18 == v268)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_109:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v246 = v29;
  v288 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v289 = v29;
  v60 = v260;
  sub_1DD63F2A8();
  v61 = v265;
  v62 = v257;
  v63 = v286;
  v291 = *(v265 + 16);
  v292 = (v265 + 16);
  (v291)(v257, v60, v286);
  v64 = *(v289 + 2);
  if (v64)
  {
    v65 = v22 + 16;
    OUTLINED_FUNCTION_24_0();
    v68 = v67 + v66;
    v298 = *(v65 + 56);
    v299 = v69;
    v302 = v65;
    v297 = (v65 - 8);
    v70 = v61 + 8;
    v71 = (v61 + 32);
    *&v296 = v70;
    v295 = v70 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v72 = v287;
    v73 = v246;
    do
    {
      (v299)(v73, v68, v72);
      sub_1DD63F238();
      v74 = v285;
      (*v297)(v73, v72);
      v75 = *v296;
      v76 = v286;
      (*v296)(v62, v286);
      (*v71)(v62, v74, v76);
      v68 += v298;
      --v64;
    }

    while (v64);
    v63 = v286;
    v61 = v265;
    v77 = v295;
  }

  else
  {
    v75 = *(v61 + 8);
    v77 = (v61 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v302 = v75;
  v295 = v77;
  (v75)(v260, v63);
  v158 = *(v61 + 32);
  v265 = v61 + 32;
  v299 = v158;
  (v158)(v262, v62, v63);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF468, &qword_1DD65F508);
  v160 = sub_1DD63F1C8();
  OUTLINED_FUNCTION_0();
  v162 = v161;
  v164 = *(v161 + 80);
  v165 = (v164 + 32) & ~v164;
  v297 = *(v163 + 72);
  v293 = v159;
  v166 = swift_allocObject();
  v296 = xmmword_1DD643F90;
  *(v166 + 16) = xmmword_1DD643F90;
  v167 = *MEMORY[0x1E69D2A38];
  v170 = *(v162 + 104);
  v168 = v162 + 104;
  v169 = v170;
  v171 = *MEMORY[0x1E69D2A38];
  v294 = v160;
  v170(v166 + v165, v171, v160);
  v172 = v262;
  v173 = v261;
  v174 = sub_1DD63F208();
  if (v173)
  {
    (v302)(v172, v286);

    return;
  }

  v280 = v169;
  LODWORD(v281) = v167;
  v282 = v164;
  v283 = ((v164 + 32) & ~v164);
  v284 = v168;
  v298 = 0;
  v175 = v174;

  if (!*(v175 + 16))
  {

    v196 = OUTLINED_FUNCTION_21_34(v195);
    v197 = sub_1DD640368();
    if (OUTLINED_FUNCTION_5_6(v197))
    {
      v198 = OUTLINED_FUNCTION_9();
      *v198 = 0;
      _os_log_impl(&dword_1DD38D000, v196, v175, "no group interactions found, use individual signals for all candidates.", v198, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v199 = OUTLINED_FUNCTION_18_36();
    v200 = v298;
    sub_1DD5B8114(v199);
    if (v200)
    {
      v201 = OUTLINED_FUNCTION_12_43();
      (v302)(v201, v286);
    }

    else
    {
      v206 = v286;
      v207 = OUTLINED_FUNCTION_12_43();
      (v302)(v207, v206);
    }

    return;
  }

  v290 = v175;
  v177 = OUTLINED_FUNCTION_21_34(v176);
  v178 = sub_1DD640368();
  if (os_log_type_enabled(v177, v178))
  {
    v179 = OUTLINED_FUNCTION_9();
    *v179 = 0;
    _os_log_impl(&dword_1DD38D000, v177, v178, "group interactions found.", v179, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v180 = v256;
  v181 = v266;
  v277 = *(v256 + 20);
  LOBYTE(v300) = *(v277 + v266);
  if (sub_1DD450A6C(v182, v183, v184))
  {
    OUTLINED_FUNCTION_6_71();
    sub_1DD63F278();
    v185 = v252;
    *v252 = 5;
    v186 = v253;
    v187 = v254;
    (*(v253 + 104))(v185, *MEMORY[0x1E69D29B8], v254);
    v188 = v251;
    sub_1DD63F248();
    v55 = v188;
    (*(v186 + 8))(v185, v187);
    v105 = v286;
    v101 = v302;
    (v302)(v165, v286);
    OUTLINED_FUNCTION_5_80();
    *(swift_allocObject() + 16) = v296;
    OUTLINED_FUNCTION_2_102();
    v189();
    v190 = v298;
    v92 = sub_1DD63F208();
    v298 = v190;
    if (v190)
    {

      (v101)(v188, v105);
      v191 = OUTLINED_FUNCTION_12_43();
      (v101)(v191, v105);
LABEL_90:

      return;
    }

LABEL_84:
    v279 = v92;
    (v101)(v55, v105);

    v127 = v255;
  }

  else
  {
    v127 = v255;
    if (*(v181 + *(v180 + 24) + 8))
    {
      v101 = v249;
      v202 = v262;
      sub_1DD63F268();
      OUTLINED_FUNCTION_5_80();
      *(swift_allocObject() + 16) = v296;
      OUTLINED_FUNCTION_2_102();
      v203();
      v204 = v298;
      isUniquelyReferenced_nonNull_native = sub_1DD63F208();
      v298 = v204;
      if (v204)
      {

        OUTLINED_FUNCTION_15_47();
        v205 = v302;
        v302();
        v205(v202, v101);
        goto LABEL_90;
      }

LABEL_87:
      v279 = isUniquelyReferenced_nonNull_native;
      (v302)(v101, v286);
    }

    else
    {
    }
  }

  v208 = v262;
  sub_1DD63F228();
  v209 = v283;
  OUTLINED_FUNCTION_5_80();
  v210 = swift_allocObject();
  OUTLINED_FUNCTION_8_64(v210);
  OUTLINED_FUNCTION_2_102();
  v211();
  v212 = v298;
  v213 = sub_1DD63F208();
  v298 = v212;
  if (v212)
  {

    OUTLINED_FUNCTION_22_30();

    OUTLINED_FUNCTION_15_47();
    v214 = v302;
    v302();
    v214(v208, v209);
    goto LABEL_90;
  }

  v278 = v213;
  v215 = v286;
  (v302)(v127, v286);

  v216 = v250;
  sub_1DD63F2A8();
  v217 = v259;
  (v291)(v259, v216, v215);
  v218 = v287;
  v219 = *(v288 + 16);
  v220 = v285;
  v221 = v247;
  if (v219)
  {
    v222 = v271 + 16;
    OUTLINED_FUNCTION_24_0();
    v224 = v288 + v223;
    v291 = *(v222 + 56);
    v292 = v225;
    do
    {
      (v292)(v221, v224, v218);
      sub_1DD63F238();
      v217 = v259;
      (*(v222 - 8))(v221, v218);
      (v302)(v217, v215);
      (v299)(v217, v220, v215);
      v224 += v291;
      --v219;
    }

    while (v219);
  }

  v226 = v302;
  (v302)(v250, v215);
  v227 = v248;
  v228 = v299;
  (v299)(v248, v217, v215);

  LOBYTE(v300) = *(v277 + v266);
  if (sub_1DD450A6C(v229, v230, v231))
  {
    OUTLINED_FUNCTION_6_71();
    sub_1DD63F278();
    v232 = v286;
    (v302)(v227, v286);
    v233 = v226;
    v226 = v302;
    v228(v227, v233, v232);
  }

  OUTLINED_FUNCTION_5_80();
  v234 = swift_allocObject();
  OUTLINED_FUNCTION_8_64(v234);
  OUTLINED_FUNCTION_2_102();
  v235();
  v236 = v298;
  v92 = sub_1DD63F208();
  if (!v236)
  {
    goto LABEL_99;
  }

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_15_47();
  v226();
  v237 = OUTLINED_FUNCTION_12_43();
  (v226)(v237, v227);
}