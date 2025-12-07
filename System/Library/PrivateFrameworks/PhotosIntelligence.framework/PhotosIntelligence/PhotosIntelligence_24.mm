void sub_1C71277F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for PersonalTrait(0);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v26 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v31 = v19;
      v32 = a3;
      v29 = v22;
      v30 = v21;
      while (1)
      {
        sub_1C712A7D0(v22, v16, type metadata accessor for PersonalTrait);
        sub_1C712A7D0(v19, v12, type metadata accessor for PersonalTrait);
        if (*v16 == *v12 && v16[1] == v12[1])
        {
          break;
        }

        v24 = sub_1C7551DBC();
        sub_1C712A82C(v12, type metadata accessor for PersonalTrait);
        sub_1C712A82C(v16, type metadata accessor for PersonalTrait);
        if (v24)
        {
          if (!v33)
          {
            __break(1u);
            return;
          }

          sub_1C7129CC4(v22, v9, type metadata accessor for PersonalTrait);
          swift_arrayInitWithTakeFrontToBack();
          sub_1C7129CC4(v9, v19, type metadata accessor for PersonalTrait);
          v19 += v20;
          v22 += v20;
          if (!__CFADD__(v21++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_1C712A82C(v12, type metadata accessor for PersonalTrait);
      sub_1C712A82C(v16, type metadata accessor for PersonalTrait);
LABEL_14:
      a3 = v32 + 1;
      v19 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1C7127A80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v22 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 48 * a3;
    v7 = result - a3;
    while (2)
    {
      v8 = v7;
      v9 = v6;
      do
      {
        sub_1C712A774(v9, v20, &qword_1EC217AC0, &qword_1C75711D0);
        v10 = v9 - 3;
        sub_1C712A774((v9 - 3), v18, &qword_1EC217AC0, &qword_1C75711D0);
        v11 = v21;
        v12 = v19;
        sub_1C6FB5FC8(v18, &qword_1EC217AC0, &qword_1C75711D0);
        result = sub_1C6FB5FC8(v20, &qword_1EC217AC0, &qword_1C75711D0);
        if (v12 >= v11)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        v14 = v9[1];
        v13 = v9[2];
        v15 = *v9;
        v16 = *(v9 - 2);
        *v9 = *v10;
        v9[1] = v16;
        v9[2] = *(v9 - 1);
        *v10 = v15;
        *(v9 - 2) = v14;
        v9 -= 3;
        v10[2] = v13;
      }

      while (!__CFADD__(v8++, 1));
      ++v4;
      v6 += 48;
      --v7;
      if (v4 != v22)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C7127BB4(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v124 = a1;
  v140 = type metadata accessor for PersonalTrait(0);
  v131 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v128 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v139 = &v120 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v141 = (&v120 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v120 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v137 = (&v120 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v136 = (&v120 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v123 = (&v120 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v122 = (&v120 - v21);
  v134 = a3;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_112:
    v23 = *v124;
    if (!*v124)
    {
      goto LABEL_152;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_114:
      v112 = (v24 + 16);
      for (i = *(v24 + 2); i >= 2; *v112 = i)
      {
        if (!*v134)
        {
          goto LABEL_149;
        }

        v114 = &v24[16 * i];
        v115 = *v114;
        v116 = &v112[2 * i];
        v117 = *(v116 + 1);
        v118 = v138;
        sub_1C7128C8C(*v134 + *(v131 + 72) * *v114, *v134 + *(v131 + 72) * *v116, *v134 + *(v131 + 72) * v117, v23);
        v138 = v118;
        if (v118)
        {
          break;
        }

        if (v117 < v115)
        {
          goto LABEL_137;
        }

        if (i - 2 >= *v112)
        {
          goto LABEL_138;
        }

        *v114 = v115;
        *(v114 + 1) = v117;
        v119 = *v112 - i;
        if (*v112 < i)
        {
          goto LABEL_139;
        }

        i = *v112 - 1;
        sub_1C7423CF4(v116 + 16, v119, v116);
      }

LABEL_110:

      return;
    }

LABEL_146:
    v24 = sub_1C7420830();
    goto LABEL_114;
  }

  v120 = a4;
  v23 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  v133 = v13;
  while (1)
  {
    v25 = v23++;
    v127 = v25;
    if (v23 < v22)
    {
      v129 = v22;
      v26 = *v134;
      v27 = *(v131 + 72);
      v28 = v122;
      sub_1C712A7D0(*v134 + v27 * v23, v122, type metadata accessor for PersonalTrait);
      v132 = v27;
      v29 = v26 + v27 * v25;
      v30 = v123;
      sub_1C712A7D0(v29, v123, type metadata accessor for PersonalTrait);
      if (*v28 == *v30 && v28[1] == v30[1])
      {
        LODWORD(v130) = 0;
      }

      else
      {
        LODWORD(v130) = sub_1C7551DBC();
      }

      v121 = v24;
      sub_1C712A82C(v123, type metadata accessor for PersonalTrait);
      sub_1C712A82C(v122, type metadata accessor for PersonalTrait);
      v32 = v127 + 2;
      v33 = v132 * (v127 + 2);
      v34 = v26 + v33;
      v35 = v23;
      v36 = v132 * v23;
      v37 = v26 + v132 * v23;
      do
      {
        v38 = v32;
        v39 = v35;
        v23 = v36;
        v40 = v33;
        if (v32 >= v129)
        {
          break;
        }

        v135 = v32;
        v41 = v136;
        sub_1C712A7D0(v34, v136, type metadata accessor for PersonalTrait);
        v42 = v137;
        sub_1C712A7D0(v37, v137, type metadata accessor for PersonalTrait);
        v43 = *v41 == *v42 && v41[1] == v42[1];
        v44 = v43 ? 0 : sub_1C7551DBC();
        v38 = v135;
        sub_1C712A82C(v137, type metadata accessor for PersonalTrait);
        sub_1C712A82C(v136, type metadata accessor for PersonalTrait);
        v32 = v38 + 1;
        v13 = v133;
        v34 += v132;
        v37 += v132;
        v35 = v39 + 1;
        v36 = v23 + v132;
        v33 = v40 + v132;
      }

      while (((v130 ^ v44) & 1) == 0);
      if (v130)
      {
        v25 = v127;
        if (v38 < v127)
        {
          goto LABEL_143;
        }

        if (v127 < v38)
        {
          v45 = v127 * v132;
          v46 = v127;
          do
          {
            if (v46 != v39)
            {
              v47 = *v134;
              if (!*v134)
              {
                goto LABEL_150;
              }

              sub_1C7129CC4(v47 + v45, v128, type metadata accessor for PersonalTrait);
              v48 = v45 < v23 || v47 + v45 >= (v47 + v40);
              if (v48)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v45 != v23)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1C7129CC4(v128, v47 + v23, type metadata accessor for PersonalTrait);
              v25 = v127;
            }

            ++v46;
            v23 -= v132;
            v40 -= v132;
            v45 += v132;
            v49 = v46 < v39--;
          }

          while (v49);
        }

        v23 = v38;
        v24 = v121;
      }

      else
      {
        v23 = v38;
        v24 = v121;
        v25 = v127;
      }
    }

    v50 = v134[1];
    if (v23 < v50)
    {
      if (__OFSUB__(v23, v25))
      {
        goto LABEL_142;
      }

      if (v23 - v25 < v120)
      {
        break;
      }
    }

LABEL_59:
    if (v23 < v25)
    {
      goto LABEL_141;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v24 + 2) + 1, 1, v24);
      v24 = v110;
    }

    v65 = *(v24 + 2);
    v64 = *(v24 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      sub_1C6FB17EC(v64 > 1, v65 + 1, 1, v24);
      v24 = v111;
    }

    *(v24 + 2) = v66;
    v67 = v24 + 32;
    v68 = &v24[16 * v65 + 32];
    *v68 = v25;
    *(v68 + 1) = v23;
    v135 = *v124;
    if (!v135)
    {
      goto LABEL_151;
    }

    if (v65)
    {
      while (1)
      {
        v69 = v66 - 1;
        v70 = &v67[16 * v66 - 16];
        v71 = &v24[16 * v66];
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v72 = *(v24 + 4);
          v73 = *(v24 + 5);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_79:
          if (v75)
          {
            goto LABEL_128;
          }

          v87 = *v71;
          v86 = *(v71 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_131;
          }

          v91 = *(v70 + 1);
          v92 = v91 - *v70;
          if (__OFSUB__(v91, *v70))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v89, v92))
          {
            goto LABEL_136;
          }

          if (v89 + v92 >= v74)
          {
            if (v74 < v92)
            {
              v69 = v66 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v66 < 2)
        {
          goto LABEL_130;
        }

        v94 = *v71;
        v93 = *(v71 + 1);
        v82 = __OFSUB__(v93, v94);
        v89 = v93 - v94;
        v90 = v82;
LABEL_94:
        if (v90)
        {
          goto LABEL_133;
        }

        v96 = *v70;
        v95 = *(v70 + 1);
        v82 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v82)
        {
          goto LABEL_135;
        }

        if (v97 < v89)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v69 - 1 >= v66)
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
          goto LABEL_145;
        }

        if (!*v134)
        {
          goto LABEL_148;
        }

        v101 = v23;
        v102 = v24;
        v103 = &v67[16 * v69 - 16];
        v104 = *v103;
        v105 = v67;
        v106 = v69;
        v107 = &v67[16 * v69];
        v108 = *(v107 + 1);
        v109 = v138;
        sub_1C7128C8C(*v134 + *(v131 + 72) * *v103, *v134 + *(v131 + 72) * *v107, *v134 + *(v131 + 72) * v108, v135);
        v138 = v109;
        if (v109)
        {
          goto LABEL_110;
        }

        if (v108 < v104)
        {
          goto LABEL_123;
        }

        v23 = *(v102 + 2);
        if (v106 > v23)
        {
          goto LABEL_124;
        }

        *v103 = v104;
        *(v103 + 1) = v108;
        if (v106 >= v23)
        {
          goto LABEL_125;
        }

        v66 = v23 - 1;
        sub_1C7423CF4(v107 + 16, v23 - 1 - v106, v107);
        v24 = v102;
        *(v102 + 2) = v23 - 1;
        v49 = v23 > 2;
        v23 = v101;
        v67 = v105;
        v13 = v133;
        if (!v49)
        {
          goto LABEL_108;
        }
      }

      v76 = &v67[16 * v66];
      v77 = *(v76 - 8);
      v78 = *(v76 - 7);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_126;
      }

      v81 = *(v76 - 6);
      v80 = *(v76 - 5);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_127;
      }

      v83 = *(v71 + 1);
      v84 = v83 - *v71;
      if (__OFSUB__(v83, *v71))
      {
        goto LABEL_129;
      }

      v82 = __OFADD__(v74, v84);
      v85 = v74 + v84;
      if (v82)
      {
        goto LABEL_132;
      }

      if (v85 >= v79)
      {
        v99 = *v70;
        v98 = *(v70 + 1);
        v82 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v82)
        {
          goto LABEL_140;
        }

        if (v74 < v100)
        {
          v69 = v66 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v22 = v134[1];
    if (v23 >= v22)
    {
      goto LABEL_112;
    }
  }

  v51 = v25 + v120;
  if (__OFADD__(v25, v120))
  {
    goto LABEL_144;
  }

  if (v51 >= v50)
  {
    v51 = v134[1];
  }

  if (v51 < v25)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v23 == v51)
  {
    goto LABEL_59;
  }

  v121 = v24;
  v52 = *v134;
  v53 = *(v131 + 72);
  v54 = *v134 + v53 * (v23 - 1);
  v55 = -v53;
  v56 = v25 - v23;
  v125 = v53;
  v126 = v51;
  v57 = v52 + v23 * v53;
LABEL_46:
  v135 = v23;
  v129 = v57;
  v130 = v56;
  v58 = v57;
  v132 = v54;
  v59 = v54;
  while (1)
  {
    sub_1C712A7D0(v58, v13, type metadata accessor for PersonalTrait);
    v60 = v141;
    sub_1C712A7D0(v59, v141, type metadata accessor for PersonalTrait);
    if (*v13 == *v60 && v13[1] == v60[1])
    {
      sub_1C712A82C(v141, type metadata accessor for PersonalTrait);
      sub_1C712A82C(v13, type metadata accessor for PersonalTrait);
LABEL_57:
      v23 = v135 + 1;
      v54 = v132 + v125;
      v56 = v130 - 1;
      v57 = v129 + v125;
      if (v135 + 1 == v126)
      {
        v23 = v126;
        v24 = v121;
        v25 = v127;
        goto LABEL_59;
      }

      goto LABEL_46;
    }

    v62 = sub_1C7551DBC();
    sub_1C712A82C(v141, type metadata accessor for PersonalTrait);
    sub_1C712A82C(v13, type metadata accessor for PersonalTrait);
    if ((v62 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (!v52)
    {
      break;
    }

    v63 = v139;
    sub_1C7129CC4(v58, v139, type metadata accessor for PersonalTrait);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C7129CC4(v63, v59, type metadata accessor for PersonalTrait);
    v59 += v55;
    v58 += v55;
    v48 = __CFADD__(v56++, 1);
    if (v48)
    {
      goto LABEL_57;
    }
  }

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
}

void sub_1C71285B8(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v111 = *result;
    if (!*result)
    {
      goto LABEL_133;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v94 = v6;
      v97 = *(v6 + 2);
      v95 = (v6 + 16);
      for (i = v97; i >= 2; *v95 = i)
      {
        if (!*a3)
        {
          goto LABEL_130;
        }

        v98 = &v94[16 * i];
        v99 = *v98;
        v100 = &v95[2 * i];
        v101 = *(v100 + 1);
        v102 = v117;
        sub_1C71291B8((*a3 + 48 * *v98), (*a3 + 48 * *v100), (*a3 + 48 * v101), v111);
        v117 = v102;
        if (v102)
        {
          break;
        }

        if (v101 < v99)
        {
          goto LABEL_118;
        }

        if (i - 2 >= *v95)
        {
          goto LABEL_119;
        }

        *v98 = v99;
        *(v98 + 1) = v101;
        v103 = *v95 - i;
        if (*v95 < i)
        {
          goto LABEL_120;
        }

        i = *v95 - 1;
        sub_1C7423CF4(v100 + 16, v103, v100);
      }

LABEL_102:

      return;
    }

LABEL_127:
    v6 = sub_1C7420830();
    goto LABEL_94;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5 + 1;
    if (v5 + 1 < v4)
    {
      v108 = v6;
      v8 = *a3;
      sub_1C712A774(*a3 + 48 * v7, v115, &qword_1EC217AC0, &qword_1C75711D0);
      v9 = 48 * v5;
      sub_1C712A774(v8 + 48 * v5, v113, &qword_1EC217AC0, &qword_1C75711D0);
      v10 = v116;
      v11 = v114;
      sub_1C6FB5FC8(v113, &qword_1EC217AC0, &qword_1C75711D0);
      sub_1C6FB5FC8(v115, &qword_1EC217AC0, &qword_1C75711D0);
      v12 = v5;
      v13 = v8 + 48 * v5 + 96;
      v14 = v12;
      v15 = v12 + 2;
      while (1)
      {
        v16 = v15;
        if (++v7 >= v4)
        {
          break;
        }

        sub_1C712A774(v13, v115, &qword_1EC217AC0, &qword_1C75711D0);
        sub_1C712A774(v13 - 48, v113, &qword_1EC217AC0, &qword_1C75711D0);
        v17 = v116;
        v18 = v114;
        sub_1C6FB5FC8(v113, &qword_1EC217AC0, &qword_1C75711D0);
        sub_1C6FB5FC8(v115, &qword_1EC217AC0, &qword_1C75711D0);
        v13 += 48;
        v15 = v16 + 1;
        if (v11 < v10 == v18 >= v17)
        {
          goto LABEL_9;
        }
      }

      v7 = v4;
LABEL_9:
      if (v11 >= v10)
      {
        v6 = v108;
        v5 = v14;
      }

      else
      {
        if (v7 < v14)
        {
          goto LABEL_124;
        }

        v5 = v14;
        if (v14 < v7)
        {
          if (v4 >= v16)
          {
            v19 = v16;
          }

          else
          {
            v19 = v4;
          }

          v20 = 48 * v19 - 48;
          v21 = v7;
          v22 = v14;
          do
          {
            if (v22 != --v21)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_131;
              }

              v24 = (v23 + v9);
              v25 = (v23 + v20);
              v26 = *v24;
              v27 = v24[1];
              v28 = v24[2];
              v30 = v25[1];
              v29 = v25[2];
              *v24 = *v25;
              v24[1] = v30;
              v24[2] = v29;
              v25[1] = v27;
              v25[2] = v28;
              *v25 = v26;
            }

            ++v22;
            v20 -= 48;
            v9 += 48;
          }

          while (v22 < v21);
        }

        v6 = v108;
      }
    }

    v31 = a3[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v5))
      {
        goto LABEL_123;
      }

      if (v7 - v5 < a4)
      {
        break;
      }
    }

LABEL_38:
    if (v7 < v5)
    {
      goto LABEL_122;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v6 + 2) + 1, 1, v6);
      v6 = v92;
    }

    v47 = *(v6 + 2);
    v46 = *(v6 + 3);
    v48 = v47 + 1;
    v107 = v7;
    if (v47 >= v46 >> 1)
    {
      sub_1C6FB17EC(v46 > 1, v47 + 1, 1, v6);
      v6 = v93;
    }

    *(v6 + 2) = v48;
    v49 = v6 + 32;
    v50 = &v6[16 * v47 + 32];
    *v50 = v5;
    *(v50 + 1) = v107;
    v111 = *result;
    if (!*result)
    {
      goto LABEL_132;
    }

    if (v47)
    {
      v110 = v6 + 32;
      while (1)
      {
        v51 = v48 - 1;
        v52 = &v49[16 * v48 - 16];
        v53 = &v6[16 * v48];
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v54 = *(v6 + 4);
          v55 = *(v6 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_59:
          if (v57)
          {
            goto LABEL_109;
          }

          v69 = *v53;
          v68 = *(v53 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_112;
          }

          v73 = *(v52 + 1);
          v74 = v73 - *v52;
          if (__OFSUB__(v73, *v52))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v71, v74))
          {
            goto LABEL_117;
          }

          if (v71 + v74 >= v56)
          {
            if (v56 < v74)
            {
              v51 = v48 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v48 < 2)
        {
          goto LABEL_111;
        }

        v76 = *v53;
        v75 = *(v53 + 1);
        v64 = __OFSUB__(v75, v76);
        v71 = v75 - v76;
        v72 = v64;
LABEL_74:
        if (v72)
        {
          goto LABEL_114;
        }

        v78 = *v52;
        v77 = *(v52 + 1);
        v64 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v64)
        {
          goto LABEL_116;
        }

        if (v79 < v71)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v51 - 1 >= v48)
        {
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
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v83 = &v49[16 * v51 - 16];
        v84 = *v83;
        v85 = v51;
        v86 = &v49[16 * v51];
        v87 = *(v86 + 1);
        v88 = v117;
        sub_1C71291B8((*a3 + 48 * *v83), (*a3 + 48 * *v86), (*a3 + 48 * v87), v111);
        v117 = v88;
        if (v88)
        {
          goto LABEL_102;
        }

        if (v87 < v84)
        {
          goto LABEL_104;
        }

        v89 = v6;
        v90 = *(v6 + 2);
        if (v85 > v90)
        {
          goto LABEL_105;
        }

        *v83 = v84;
        *(v83 + 1) = v87;
        if (v85 >= v90)
        {
          goto LABEL_106;
        }

        v48 = v90 - 1;
        sub_1C7423CF4(v86 + 16, v90 - 1 - v85, v86);
        *(v89 + 2) = v90 - 1;
        v91 = v90 > 2;
        v6 = v89;
        v49 = v110;
        if (!v91)
        {
          goto LABEL_88;
        }
      }

      v58 = &v49[16 * v48];
      v59 = *(v58 - 8);
      v60 = *(v58 - 7);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_107;
      }

      v63 = *(v58 - 6);
      v62 = *(v58 - 5);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_108;
      }

      v65 = *(v53 + 1);
      v66 = v65 - *v53;
      if (__OFSUB__(v65, *v53))
      {
        goto LABEL_110;
      }

      v64 = __OFADD__(v56, v66);
      v67 = v56 + v66;
      if (v64)
      {
        goto LABEL_113;
      }

      if (v67 >= v61)
      {
        v81 = *v52;
        v80 = *(v52 + 1);
        v64 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v64)
        {
          goto LABEL_121;
        }

        if (v56 < v82)
        {
          v51 = v48 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v4 = a3[1];
    v5 = v107;
    if (v107 >= v4)
    {
      goto LABEL_92;
    }
  }

  v32 = v5 + a4;
  if (__OFADD__(v5, a4))
  {
    goto LABEL_125;
  }

  if (v32 >= v31)
  {
    v32 = a3[1];
  }

  if (v32 < v5)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v7 == v32)
  {
    goto LABEL_38;
  }

  v106 = v5;
  v109 = v6;
  v33 = *a3;
  v34 = *a3 + 48 * v7;
  v35 = v5 - v7;
  v111 = v32;
LABEL_31:
  v36 = v35;
  v37 = v34;
  while (1)
  {
    sub_1C712A774(v37, v115, &qword_1EC217AC0, &qword_1C75711D0);
    v38 = v37 - 3;
    sub_1C712A774((v37 - 3), v113, &qword_1EC217AC0, &qword_1C75711D0);
    v39 = v116;
    v40 = v114;
    sub_1C6FB5FC8(v113, &qword_1EC217AC0, &qword_1C75711D0);
    sub_1C6FB5FC8(v115, &qword_1EC217AC0, &qword_1C75711D0);
    if (v40 >= v39)
    {
LABEL_36:
      ++v7;
      v34 += 48;
      --v35;
      if (v7 == v111)
      {
        v7 = v111;
        v5 = v106;
        v6 = v109;
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (!v33)
    {
      break;
    }

    v42 = v37[1];
    v41 = v37[2];
    v43 = *v37;
    v44 = *(v37 - 2);
    *v37 = *v38;
    v37[1] = v44;
    v37[2] = *(v37 - 1);
    *v38 = v43;
    *(v37 - 2) = v42;
    v37 -= 3;
    v38[2] = v41;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_36;
    }
  }

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
}

void sub_1C7128C8C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = type metadata accessor for PersonalTrait(0);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = (&v47 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v47 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v47 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_72;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_73;
  }

  v23 = v19 / v18;
  v56 = a1;
  v55 = a4;
  v24 = v21 / v18;
  if (v19 / v18 < v21 / v18)
  {
    sub_1C741E398(a1, v19 / v18, a4);
    v25 = a4 + v23 * v18;
    v54 = v25;
    while (1)
    {
      if (a4 >= v25 || a2 >= a3)
      {
        goto LABEL_70;
      }

      sub_1C712A7D0(a2, v16, type metadata accessor for PersonalTrait);
      sub_1C712A7D0(a4, v13, type metadata accessor for PersonalTrait);
      if (*v16 == *v13 && v16[1] == v13[1])
      {
        sub_1C712A82C(v13, type metadata accessor for PersonalTrait);
        sub_1C712A82C(v16, type metadata accessor for PersonalTrait);
      }

      else
      {
        LODWORD(v52) = sub_1C7551DBC();
        sub_1C712A82C(v13, type metadata accessor for PersonalTrait);
        sub_1C712A82C(v16, type metadata accessor for PersonalTrait);
        if (v52)
        {
          if (a1 < a2 || a1 >= a2 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v18;
          goto LABEL_40;
        }
      }

      if (a1 < a4 || a1 >= a4 + v18)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v55 = a4 + v18;
      a4 += v18;
LABEL_40:
      a1 += v18;
      v56 = a1;
    }
  }

  sub_1C741E398(a2, v21 / v18, a4);
  v30 = a2;
  v31 = a4 + v24 * v18;
  v32 = -v18;
  v33 = v31;
  v50 = -v18;
LABEL_42:
  v49 = v30;
  v34 = v30 + v32;
  v35 = a3;
  v47 = v33;
  while (1)
  {
    if (v31 <= a4)
    {
      v56 = v49;
      v54 = v33;
      goto LABEL_70;
    }

    if (v49 <= a1)
    {
      break;
    }

    v48 = v33;
    v36 = v31 + v32;
    v37 = v51;
    sub_1C712A7D0(v31 + v32, v51, type metadata accessor for PersonalTrait);
    v38 = v34;
    v39 = v34;
    v40 = v52;
    sub_1C712A7D0(v39, v52, type metadata accessor for PersonalTrait);
    if (*v37 == *v40 && v37[1] == v40[1])
    {
      v42 = 0;
    }

    else
    {
      v42 = sub_1C7551DBC();
    }

    a3 = v35 + v50;
    sub_1C712A82C(v52, type metadata accessor for PersonalTrait);
    sub_1C712A82C(v51, type metadata accessor for PersonalTrait);
    if (v42)
    {
      v44 = v35 < v49 || a3 >= v49;
      v45 = v38;
      if (v44)
      {
        swift_arrayInitWithTakeFrontToBack();
        v30 = v38;
        v33 = v48;
        v32 = v50;
      }

      else
      {
        v46 = v48;
        v33 = v48;
        v30 = v45;
        v32 = v50;
        if (v35 != v49)
        {
          swift_arrayInitWithTakeBackToFront();
          v30 = v45;
          v33 = v46;
        }
      }

      goto LABEL_42;
    }

    v43 = v35 < v31 || a3 >= v31;
    v34 = v38;
    if (v43)
    {
      swift_arrayInitWithTakeFrontToBack();
      v35 = a3;
      v31 = v36;
      v33 = v36;
      v32 = v50;
    }

    else
    {
      v33 = v36;
      v20 = v31 == v35;
      v35 = a3;
      v31 = v36;
      v32 = v50;
      if (!v20)
      {
        swift_arrayInitWithTakeBackToFront();
        v35 = a3;
        v31 = v36;
        v33 = v36;
      }
    }
  }

  v56 = v49;
  v54 = v47;
LABEL_70:
  sub_1C74208B4(&v56, &v55, &v54);
}

uint64_t sub_1C71291B8(char *a1, char *a2, char *a3, char *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 48;
  v10 = (a3 - a2) / 48;
  if (v9 < v10)
  {
    sub_1C741E414(a1, (a2 - a1) / 48, a4);
    v11 = &v5[48 * v9];
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_28;
      }

      sub_1C712A774(v7, v34, &qword_1EC217AC0, &qword_1C75711D0);
      sub_1C712A774(v5, v32, &qword_1EC217AC0, &qword_1C75711D0);
      v13 = v35;
      v14 = v33;
      sub_1C6FB5FC8(v32, &qword_1EC217AC0, &qword_1C75711D0);
      sub_1C6FB5FC8(v34, &qword_1EC217AC0, &qword_1C75711D0);
      if (v14 >= v13)
      {
        break;
      }

      v15 = v7;
      v16 = v8 == v7;
      v7 += 48;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 48;
    }

    v15 = v5;
    v16 = v8 == v5;
    v5 += 48;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *v15;
    v18 = *(v15 + 2);
    *(v8 + 1) = *(v15 + 1);
    *(v8 + 2) = v18;
    *v8 = v17;
    goto LABEL_13;
  }

  v36 = v4;
  sub_1C741E414(a2, (a3 - a2) / 48, a4);
  v19 = &v5[48 * v10];
LABEL_15:
  v20 = v7 - 48;
  v6 -= 48;
  for (i = v19 - 48; ; i -= 48)
  {
    v11 = i + 48;
    if (i + 48 <= v5 || v7 <= v8)
    {
      break;
    }

    sub_1C712A774(i, v34, &qword_1EC217AC0, &qword_1C75711D0);
    sub_1C712A774((v7 - 48), v32, &qword_1EC217AC0, &qword_1C75711D0);
    v23 = v35;
    v24 = v33;
    sub_1C6FB5FC8(v32, &qword_1EC217AC0, &qword_1C75711D0);
    sub_1C6FB5FC8(v34, &qword_1EC217AC0, &qword_1C75711D0);
    if (v24 < v23)
    {
      v19 = i + 48;
      v16 = v6 + 48 == v7;
      v7 -= 48;
      if (!v16)
      {
        v27 = *v20;
        v28 = *(v20 + 2);
        *(v6 + 1) = *(v20 + 1);
        *(v6 + 2) = v28;
        *v6 = v27;
        v7 = v20;
      }

      goto LABEL_15;
    }

    if (v11 != v6 + 48)
    {
      v25 = *i;
      v26 = *(i + 2);
      *(v6 + 1) = *(i + 1);
      *(v6 + 2) = v26;
      *v6 = v25;
    }

    v6 -= 48;
  }

LABEL_28:
  v29 = (v11 - v5) / 48;
  if (v7 != v5 || v7 >= &v5[48 * v29])
  {
    memmove(v7, v5, 48 * v29);
  }

  return 1;
}

uint64_t sub_1C712943C(char *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v28 = a4;
  v29 = a6;
  v26 = a2;
  v27 = a3;
  v25 = a1;
  v14 = *(a10 - 8);
  v24 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TraitGenerator(0);
  v21 = swift_allocObject();
  (*(v17 + 16))(v20, a5, a9);
  (*(v14 + 16))(v16, a7, a10);
  v22 = sub_1C712963C(v25, v26, v27, v28, v20, v29, v16, v21, a9, a10, v24, a12);
  (*(v14 + 8))(a7, a10);
  (*(v17 + 8))(a5, a9);
  return v22;
}

uint64_t sub_1C712963C(char *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v57 = a4;
  v58 = a3;
  v54 = a1;
  v17 = sub_1C754FF1C();
  v55 = *(v17 - 8);
  v56 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  v63[3] = a9;
  v63[4] = a11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v63);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_0, a5, a9);
  v61 = a10;
  v62 = a12;
  v23 = __swift_allocate_boxed_opaque_existential_0(&v60);
  (*(*(a10 - 8) + 32))(v23, a7, a10);
  v24 = *a2;
  v25 = *(a2 + 4);
  v26 = a2[2];
  v27 = OBJC_IVAR____TtC18PhotosIntelligence14TraitGenerator_logger;
  sub_1C754FEFC();
  memcpy((a8 + 16), v54, 0xA8uLL);
  *(a8 + 184) = v24;
  *(a8 + 192) = v25;
  v29 = v57;
  v28 = v58;
  *(a8 + 200) = v26;
  sub_1C6FB5E28(v28, a8 + 208);
  *(a8 + 296) = v29;
  sub_1C6FB5E28(v63, a8 + 248);
  *(a8 + 304) = a6;
  v30 = objc_opt_self();

  v31 = [v30 globalAndPersonalTraitsSeed];
  if (v31)
  {
    v32 = v31;
    v33 = v56;
    v34 = v55;
    (*(v55 + 16))(v21, a8 + v27, v56);
    v35 = v32;
    v54 = v21;
    v36 = sub_1C754FEEC();
    v37 = sub_1C755117C();

    v38 = v33;
    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v35;
      *v40 = v32;
      v41 = v35;
      _os_log_impl(&dword_1C6F5C000, v36, v37, "TraitGenerator random number generator seed = %@, per user defaults", v39, 0xCu);
      sub_1C6FB5FC8(v40, &qword_1EC215190, &qword_1C755C730);
      MEMORY[0x1CCA5F8E0](v40, -1, -1);
      MEMORY[0x1CCA5F8E0](v39, -1, -1);
    }

    (*(v34 + 8))(v54, v38);
    sub_1C755103C();
    v42 = sub_1C755104C();
    v43 = sub_1C7551FCC();

    v44 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
  }

  else
  {
    v59 = 0;
    MEMORY[0x1CCA5F900](&v59, 8);
    v45 = v59;
    v46 = v55;
    v47 = v56;
    v48 = v53;
    (*(v55 + 16))(v53, a8 + v27, v56);
    v49 = sub_1C754FEEC();
    v50 = sub_1C755117C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      *(v51 + 4) = v45;
      _os_log_impl(&dword_1C6F5C000, v49, v50, "TraitGenerator random number generator seed = %llu, randomly set", v51, 0xCu);
      MEMORY[0x1CCA5F8E0](v51, -1, -1);
    }

    (*(v46 + 8))(v48, v47);
    v44 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
  }

  __swift_destroy_boxed_opaque_existential_1(v58);
  __swift_destroy_boxed_opaque_existential_1(v63);
  *(a8 + 288) = v44;
  sub_1C6F699F8(&v60, a8 + 312);
  return a8;
}

uint64_t sub_1C7129B08()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_1C6F739D4;

  return sub_1C711B968(v3, v4);
}

uint64_t sub_1C7129BA0()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1C6F739D4;

  return sub_1C711BC0C(v3, v0 + 16);
}

double sub_1C7129C34(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1C7129CC4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

uint64_t type metadata accessor for TraitGenerator(uint64_t a1)
{
  result = qword_1EDD0BF60;
  if (!qword_1EDD0BF60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7129D74(uint64_t a1)
{
  result = sub_1C754FF1C();
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

uint64_t dispatch thunk of TraitGenerator.generate(from:extendedTokens:queryTokens:retrievedAssets:sensitiveFlags:consolidatedPersonAssetUUIDs:assetPertinenceFilter:eventRecorder:progressReporter:storyGenerationDiagnosticContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_95_3();
  v45 = v24;
  v46 = v25;
  v43 = v26;
  v44 = v27;
  v41 = (*v22 + 160);
  v42 = *v41 + **v41;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v23 + 16) = v28;
  *v28 = v29;
  v28[1] = sub_1C712A888;
  OUTLINED_FUNCTION_94_1();

  return v38(v30, v31, v32, v33, v34, v35, v36, v37, a9, v41, v42, v43, v44, v45, v46, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t dispatch thunk of TraitGenerator.consolidateTraits(globalTraits:personalTraits:textEmbeddingService:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_94_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_87(v1);

  return v4(v3);
}

uint64_t dispatch thunk of TraitGenerator.selectRandomGlobalAndPersonalTraits(for:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_123();
  v6 = (*(*v0 + 240) + **(*v0 + 240));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41_1(v1);
  *v2 = v3;
  v2[1] = sub_1C712A888;
  v4 = OUTLINED_FUNCTION_154();

  return v6(v4);
}

uint64_t dispatch thunk of TraitGenerator.selectGlobalTraitsForFedStats(for:eventRecorder:)()
{
  OUTLINED_FUNCTION_123();
  v6 = (*(*v0 + 256) + **(*v0 + 256));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41_1(v1);
  *v2 = v3;
  v2[1] = sub_1C712A888;
  v4 = OUTLINED_FUNCTION_0_11();

  return v6(v4);
}

uint64_t dispatch thunk of TraitGenerator.promotedAssetCaptions(from:extendedTokens:eventRecorder:progressReporter:diagnosticContext:)()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_94_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_87(v1);

  return v4(v3);
}

uint64_t sub_1C712A44C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_0_11();

  return v4(v3);
}

uint64_t sub_1C712A578(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1C712A5B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C712A630()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1C6F738F4;

  return sub_1C7122570(v3, v5, v4);
}

unint64_t sub_1C712A6F8()
{
  result = qword_1EDD0CB90;
  if (!qword_1EDD0CB90)
  {
    v3 = sub_1C754DFFC();
    result = swift_getWitnessTable(MEMORY[0x1E69695E0], v3, v0, v1);
    atomic_store(result, &qword_1EDD0CB90);
  }

  return result;
}

uint64_t sub_1C712A774(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t sub_1C712A7D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

uint64_t sub_1C712A82C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_35_10()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_50_12()
{
}

double OUTLINED_FUNCTION_70_8()
{

  return sub_1C7129C34(v0);
}

void OUTLINED_FUNCTION_79_7()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_108_5()
{
}

void OUTLINED_FUNCTION_109_7(void *a1@<X8>)
{
}

void OUTLINED_FUNCTION_111_3()
{
  *(v4 + 16) = v2;
  v5 = v4 + 16 * v3;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
}

void OUTLINED_FUNCTION_112_3(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v2 + 104) = a2;
  *(v2 + 120) = a1;
  *(v2 + 128) = a1;
  *(v2 + 136) = 0;
  *(v2 + 144) = a1;
}

void OUTLINED_FUNCTION_116_6()
{
  *(v4 + 16) = v1;
  v5 = v4 + 16 * v2;
  *(v5 + 32) = v0;
  *(v5 + 40) = v3;
}

void OUTLINED_FUNCTION_119_6()
{
  *(v4 + 16) = v1;
  v5 = v4 + 16 * v0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
}

void OUTLINED_FUNCTION_129_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1C6F7ED9C(0, v7, 0, a4, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_131_2()
{
}

uint64_t OUTLINED_FUNCTION_152_1()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_153_0()
{

  return sub_1C755180C();
}

void OUTLINED_FUNCTION_154_1()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_156_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_158_2()
{

  return sub_1C75505FC();
}

uint64_t OUTLINED_FUNCTION_159_2()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_160_2()
{

  return swift_bridgeObjectRelease_n();
}

void *OUTLINED_FUNCTION_161_2(void *a1)
{

  return memcpy(a1, (v1 + 3112), 0x50uLL);
}

uint64_t HighlightInformation.caption.getter()
{
  v1 = *(v0 + 8);
  sub_1C75504FC();
  return v1;
}

void __swiftcall HighlightInformation.init(startTime:endTime:caption:highlightScore:characterUUIDsInHighlight:)(PhotosIntelligence::HighlightInformation *__return_ptr retstr, Swift::Float startTime, Swift::Float endTime, Swift::String caption, Swift::Double highlightScore, Swift::OpaquePointer characterUUIDsInHighlight)
{
  retstr->startTime = startTime;
  retstr->endTime = endTime;
  retstr->caption = caption;
  retstr->highlightScore = highlightScore;
  retstr->characterUUIDsInHighlight.value = characterUUIDsInHighlight;
}

uint64_t sub_1C712ACE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6867696C68676968 && a2 == 0xEE0065726F635374;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000019 && 0x80000001C759F9B0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C712AEA8(char a1)
{
  result = 0x6D69547472617473;
  switch(a1)
  {
    case 1:
      result = 0x656D6954646E65;
      break;
    case 2:
      result = 0x6E6F6974706163;
      break;
    case 3:
      result = 0x6867696C68676968;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C712AF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C712ACE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C712AF88(uint64_t a1)
{
  v2 = sub_1C712B234();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C712AFC4(uint64_t a1)
{
  v2 = sub_1C712B234();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HighlightInformation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217AF0, &unk_1C756D810);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  v10 = v1[1];
  v13[1] = v1[2];
  v13[2] = v10;
  v11 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C712B234();
  sub_1C755200C();
  v19 = 0;
  OUTLINED_FUNCTION_9_33();
  sub_1C7551CFC();
  if (!v2)
  {
    v18 = 1;
    OUTLINED_FUNCTION_9_33();
    sub_1C7551CFC();
    v17 = 2;
    sub_1C7551CCC();
    v16 = 3;
    OUTLINED_FUNCTION_9_33();
    sub_1C7551CEC();
    v15 = v11;
    v14 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C6FF60E4(&qword_1EDD0CF60, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1C7551CBC();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1C712B234()
{
  result = qword_1EC217AF8;
  if (!qword_1EC217AF8)
  {
    result = swift_getWitnessTable(byte_1C756DAB4, &type metadata for HighlightInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217AF8);
  }

  return result;
}

uint64_t HighlightInformation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B00, &qword_1C756D820);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C712B234();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_5_39();
  sub_1C7551BEC();
  v7 = v6;
  OUTLINED_FUNCTION_5_39();
  sub_1C7551BEC();
  v9 = v8;
  OUTLINED_FUNCTION_5_39();
  v11 = sub_1C7551BBC();
  v13 = v12;
  OUTLINED_FUNCTION_5_39();
  sub_1C7551BDC();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C6FF60E4(&qword_1EDD0CF50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1C7551BAC();
  v16 = OUTLINED_FUNCTION_401();
  v17(v16);
  *a2 = v7;
  *(a2 + 4) = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v15;
  *(a2 + 32) = v18;
  sub_1C75504FC();
  sub_1C75504FC();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C712B56C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC217AD8);
  __swift_project_value_buffer(v0, qword_1EC217AD8);
  return sub_1C754FEFC();
}

uint64_t static AssetMediaAnalyzer.requestHighlightInformation(for:queries:characterUUIDs:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C712B610, 0, 0);
}

uint64_t sub_1C712B610()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 48) = [objc_allocWithZone(type metadata accessor for AssetMediaAnalyzer()) init];
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1C712B6C0;

  return sub_1C712B8F8();
}

uint64_t sub_1C712B6C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v4 + 64) = v1;

  if (v1)
  {
    v7 = sub_1C712B840;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_1C712B7E0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C712B7E0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_116();
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_1C712B840()
{
  OUTLINED_FUNCTION_42();

  v1 = *(v0 + 8);

  return v1();
}

id AssetMediaAnalyzer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C712B8F8()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[52] = v4;
  v1[53] = v0;
  v1[50] = v5;
  v1[51] = v6;
  v1[54] = swift_getObjectType();
  v7 = sub_1C754F2FC();
  v1[55] = swift_allocBox();
  v1[56] = v8;
  (*(*(v7 - 8) + 32))(v8, v3, v7);

  return MEMORY[0x1EEE6DFA0](sub_1C712B9B4, 0, 0);
}

uint64_t sub_1C712B9B4()
{
  v146 = v1;
  v3 = swift_allocObject();
  v1[57] = v3;
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  if (!sub_1C6FB6304())
  {
    sub_1C75504FC();

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_12_30();

    __asm { BRAA            X2, X16 }
  }

  v4 = objc_opt_self();
  v5 = sub_1C6F77CA0(v4, &selRef_mediaAnalyzerOptionSearchQueryString);
  if (!v6)
  {
    if (qword_1EC213DF8 != -1)
    {
      OUTLINED_FUNCTION_0_68(&qword_1EC213DF8);
    }

    v39 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v39, qword_1EC217AD8);
    v40 = sub_1C754FEEC();
    v41 = sub_1C755119C();
    if (!OUTLINED_FUNCTION_66(v41))
    {
      goto LABEL_29;
    }

    v42 = OUTLINED_FUNCTION_127();
    *v42 = 0;
    v43 = "Unable to get MediaAnalyzerOptionSearchQueryString from PLMediaAnalysisServiceRequestAdapter!";
    goto LABEL_28;
  }

  v7 = v5;
  v8 = v6;
  v9 = [v4 mediaAnalyzerOptionQueryTypePersonID];
  v1[58] = v9;
  if (!v9)
  {

    if (qword_1EC213DF8 != -1)
    {
      OUTLINED_FUNCTION_0_68(&qword_1EC213DF8);
    }

    v44 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v44, qword_1EC217AD8);
    v40 = sub_1C754FEEC();
    v45 = sub_1C755119C();
    if (!OUTLINED_FUNCTION_66(v45))
    {
      goto LABEL_29;
    }

    v42 = OUTLINED_FUNCTION_127();
    *v42 = 0;
    v43 = "Unable to get VCPMediaAnalyzerOption_QueryTypePersonID from PLMediaAnalysisServiceRequestAdapter!";
LABEL_28:
    _os_log_impl(&dword_1C6F5C000, v40, v0, v43, v42, 2u);
    OUTLINED_FUNCTION_109();
LABEL_29:

    sub_1C712ED34();
    swift_allocError();
    *v46 = 0;
    swift_willThrow();
    goto LABEL_80;
  }

  v10 = v9;
  v11 = sub_1C6F77CA0(v4, &selRef_mediaAnalyzerOptionHighlightContexts);
  if (!v12)
  {

    if (qword_1EC213DF8 != -1)
    {
      OUTLINED_FUNCTION_0_68(&qword_1EC213DF8);
    }

    v47 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v47, qword_1EC217AD8);
    v48 = sub_1C754FEEC();
    v49 = sub_1C755119C();
    if (!OUTLINED_FUNCTION_66(v49))
    {
      goto LABEL_79;
    }

    v50 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_61(v50);
    v51 = "Unable to get VCPMediaAnalyzerOption_HighlightContexts from PLMediaAnalysisServiceRequestAdapter!";
    goto LABEL_78;
  }

  v2 = v11;
  v13 = v12;
  v14 = sub_1C6F77CA0(v4, &selRef_mediaAnalyzerOptionCaptionWithHighlight);
  if (!v15)
  {

    if (qword_1EC213DF8 != -1)
    {
      OUTLINED_FUNCTION_0_68(&qword_1EC213DF8);
    }

    v52 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v52, qword_1EC217AD8);
    v48 = sub_1C754FEEC();
    v53 = sub_1C755119C();
    if (!OUTLINED_FUNCTION_66(v53))
    {
      goto LABEL_79;
    }

    v54 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_61(v54);
    v51 = "Unable to get VCPMediaAnalyzerOption_CaptionWithHighlight from PLMediaAnalysisServiceRequestAdapter!";
    goto LABEL_78;
  }

  v16 = v15;
  v144 = v14;
  v17 = sub_1C6F77CA0(v4, &selRef_mediaAnalyzerOptionPersonIDWithHighlight);
  if (!v18)
  {

    if (qword_1EC213DF8 != -1)
    {
      OUTLINED_FUNCTION_0_68(&qword_1EC213DF8);
    }

    v55 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v55, qword_1EC217AD8);
    v48 = sub_1C754FEEC();
    v56 = sub_1C755119C();
    if (!OUTLINED_FUNCTION_66(v56))
    {
      goto LABEL_79;
    }

    v57 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_61(v57);
    v51 = "Unable to get MediaAnalyzerOptionPersonIDWithHighlight from PLMediaAnalysisServiceRequestAdapter!";
    goto LABEL_78;
  }

  v0 = v18;
  v142 = v17;
  v19 = sub_1C6F77CA0(v4, &selRef_mediaAnalysisMovieHighlightResultsKey);
  v1[59] = v20;
  if (!v20)
  {

    if (qword_1EC213DF8 != -1)
    {
      OUTLINED_FUNCTION_0_68(&qword_1EC213DF8);
    }

    v58 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v58, qword_1EC217AD8);
    v48 = sub_1C754FEEC();
    v59 = sub_1C755119C();
    if (!OUTLINED_FUNCTION_66(v59))
    {
      goto LABEL_79;
    }

    v60 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_61(v60);
    v51 = "Unable to get MediaAnalysisMovieHighlightResultsKey from PLMediaAnalysisServiceRequestAdapter!";
    goto LABEL_78;
  }

  v140 = v19;
  v143 = v20;
  v21 = sub_1C6F77CA0(v4, &selRef_mediaAnalysisResultStartKey);
  v1[60] = v22;
  if (!v22)
  {

    if (qword_1EC213DF8 != -1)
    {
      OUTLINED_FUNCTION_0_68(&qword_1EC213DF8);
    }

    v61 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v61, qword_1EC217AD8);
    v48 = sub_1C754FEEC();
    v62 = sub_1C755119C();
    if (!OUTLINED_FUNCTION_66(v62))
    {
      goto LABEL_79;
    }

    v63 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_61(v63);
    v51 = "Unable to get MediaAnalysisResultStartKey from PLMediaAnalysisServiceRequestAdapter!";
    goto LABEL_78;
  }

  v138 = v21;
  v141 = v22;
  v23 = sub_1C6F77CA0(v4, &selRef_mediaAnalysisResultDurationKey);
  v1[61] = v24;
  if (!v24)
  {

    if (qword_1EC213DF8 != -1)
    {
      OUTLINED_FUNCTION_0_68(&qword_1EC213DF8);
    }

    v64 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v64, qword_1EC217AD8);
    v48 = sub_1C754FEEC();
    v65 = sub_1C755119C();
    if (!OUTLINED_FUNCTION_66(v65))
    {
      goto LABEL_79;
    }

    v66 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_61(v66);
    v51 = "Unable to get MediaAnalysisResultDurationKey from PLMediaAnalysisServiceRequestAdapter!";
    goto LABEL_78;
  }

  v136 = v23;
  v139 = v24;
  v25 = sub_1C6F77CA0(v4, &selRef_mediaAnalysisQualityKey);
  v1[62] = v26;
  if (!v26)
  {

    if (qword_1EC213DF8 != -1)
    {
      OUTLINED_FUNCTION_0_68(&qword_1EC213DF8);
    }

    v67 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v67, qword_1EC217AD8);
    v48 = sub_1C754FEEC();
    v68 = sub_1C755119C();
    if (!OUTLINED_FUNCTION_66(v68))
    {
      goto LABEL_79;
    }

    v69 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_61(v69);
    v51 = "Unable to get MediaAnalysisQualityKey from PLMediaAnalysisServiceRequestAdapter!";
    goto LABEL_78;
  }

  v134 = v25;
  v137 = v26;
  v27 = sub_1C6F77CA0(v4, &selRef_mediaAnalysisResultsKey);
  v1[63] = v28;
  if (!v28)
  {

    if (qword_1EC213DF8 != -1)
    {
      OUTLINED_FUNCTION_0_68(&qword_1EC213DF8);
    }

    v70 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v70, qword_1EC217AD8);
    v48 = sub_1C754FEEC();
    v71 = sub_1C755119C();
    if (!OUTLINED_FUNCTION_66(v71))
    {
      goto LABEL_79;
    }

    v72 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_61(v72);
    v51 = "Unable to get MediaAnalysisResultsKey from PLMediaAnalysisServiceRequestAdapter!";
    goto LABEL_78;
  }

  v132 = v27;
  v135 = v28;
  v29 = sub_1C70DA910(v4);
  v1[64] = v30;
  if (!v30)
  {

    if (qword_1EC213DF8 != -1)
    {
      OUTLINED_FUNCTION_0_68(&qword_1EC213DF8);
    }

    v73 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v73, qword_1EC217AD8);
    v48 = sub_1C754FEEC();
    v74 = sub_1C755119C();
    if (!OUTLINED_FUNCTION_66(v74))
    {
      goto LABEL_79;
    }

    v75 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_61(v75);
    v51 = "Unable to get MediaAnalysisResultAttributesKey from PLMediaAnalysisServiceRequestAdapter!";
    goto LABEL_78;
  }

  v130 = v29;
  v133 = v30;
  v31 = sub_1C6F77CA0(v4, &selRef_mediaAnalysisResultVideoCaptionTextAttributeKey);
  v1[65] = v32;
  if (!v32)
  {

    if (qword_1EC213DF8 != -1)
    {
      OUTLINED_FUNCTION_0_68(&qword_1EC213DF8);
    }

    v76 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v76, qword_1EC217AD8);
    v48 = sub_1C754FEEC();
    v77 = sub_1C755119C();
    if (!OUTLINED_FUNCTION_66(v77))
    {
      goto LABEL_79;
    }

    v78 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_61(v78);
    v51 = "Unable to get MediaAnalysisResultVideoCaptionTextAttributeKey from PLMediaAnalysisServiceRequestAdapter!";
    goto LABEL_78;
  }

  v128 = v31;
  v131 = v32;
  v33 = sub_1C6F77CA0(v4, &selRef_mediaAnalysisFaceResultsKey);
  v1[66] = v34;
  if (!v34)
  {

    if (qword_1EC213DF8 != -1)
    {
      OUTLINED_FUNCTION_0_68(&qword_1EC213DF8);
    }

    v79 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v79, qword_1EC217AD8);
    v48 = sub_1C754FEEC();
    v80 = sub_1C755119C();
    if (!OUTLINED_FUNCTION_66(v80))
    {
      goto LABEL_79;
    }

    v81 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_61(v81);
    v51 = "Unable to get MediaAnalysisFaceResultsKey from PLMediaAnalysisServiceRequestAdapter!";
    goto LABEL_78;
  }

  v124 = v33;
  v129 = v34;
  v35 = sub_1C6F77CA0(v4, &selRef_mediaAnalysisResultPersonIDAttributeKey);
  v1[67] = v36;
  if (!v36)
  {

    if (qword_1EC213DF8 != -1)
    {
      OUTLINED_FUNCTION_0_68(&qword_1EC213DF8);
    }

    v82 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v82, qword_1EC217AD8);
    v48 = sub_1C754FEEC();
    v83 = sub_1C755119C();
    if (!OUTLINED_FUNCTION_66(v83))
    {
      goto LABEL_79;
    }

    v84 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_61(v84);
    v51 = "Unable to get MediaAnalysisResultPersonIDAttributeKey from PLMediaAnalysisServiceRequestAdapter!";
LABEL_78:
    _os_log_impl(&dword_1C6F5C000, v48, v0, v51, v2, 2u);
    OUTLINED_FUNCTION_109();
LABEL_79:

    sub_1C712ED34();
    swift_allocError();
    *v85 = 0;
    swift_willThrow();

LABEL_80:

    OUTLINED_FUNCTION_12_30();

    __asm { BRAA            X1, X16 }
  }

  v123 = v35;
  v125 = v36;
  v126 = v0;
  sub_1C754F2CC();
  v88 = v1[51];
  v121 = v1[52];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B10, &qword_1C756D838);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C75604F0;
  v1[46] = v7;
  v1[47] = v8;
  sub_1C755176C();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  *(inited + 96) = v90;
  *(inited + 72) = v88;
  v1[48] = v10;
  sub_1C6FA7014();
  sub_1C712ED94();
  sub_1C75504FC();
  v91 = v10;
  sub_1C755176C();
  *(inited + 168) = v90;
  *(inited + 144) = v121;
  sub_1C75504FC();
  v122 = sub_1C75504DC();
  if (qword_1EC213DF8 != -1)
  {
    OUTLINED_FUNCTION_0_68(&qword_1EC213DF8);
  }

  v92 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v92, qword_1EC217AD8);
  sub_1C75504FC();
  v93 = sub_1C754FEEC();
  v94 = sub_1C75511BC();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = v1[52];
    v96 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v145[0] = v120;
    *v96 = 136315138;
    v97 = MEMORY[0x1CCA5D090](v95, MEMORY[0x1E69E6158]);
    v99 = sub_1C6F765A4(v97, v98, v145);

    *(v96 + 4) = v99;
    _os_log_impl(&dword_1C6F5C000, v93, v94, "Passing people and pets UUIDs: %s to highlight information request.", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v120);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v100 = v126;
  v101 = v1[55];
  v127 = v1[54];
  v102 = v1[53];
  v103 = v1[50];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38, &qword_1C756D840);
  v104 = swift_initStackObject();
  *(v104 + 16) = xmmword_1C755BAA0;
  *(v104 + 32) = v2;
  *(v104 + 40) = v13;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B18, &qword_1C756D848);
  *(v104 + 48) = v122;
  *(v104 + 72) = v105;
  *(v104 + 80) = v144;
  *(v104 + 88) = v16;
  v106 = MEMORY[0x1E69E6370];
  *(v104 + 96) = 1;
  *(v104 + 120) = v106;
  *(v104 + 128) = v142;
  *(v104 + 136) = v100;
  *(v104 + 168) = v106;
  *(v104 + 144) = 1;
  v107 = sub_1C75504DC();
  v1[68] = v107;
  v108 = swift_task_alloc();
  v1[69] = v108;
  v108[2] = v102;
  v108[3] = v103;
  v108[4] = v107;
  v108[5] = v101;
  v108[6] = v132;
  v108[7] = v135;
  v108[8] = v140;
  v108[9] = v143;
  v108[10] = v134;
  v108[11] = v137;
  v108[12] = v138;
  v108[13] = v141;
  v108[14] = v136;
  v108[15] = v139;
  v108[16] = v130;
  v108[17] = v133;
  v108[18] = v128;
  v108[19] = v131;
  v108[20] = v124;
  v108[21] = v129;
  v108[22] = v123;
  v108[23] = v125;
  v108[24] = v3;
  v108[25] = v127;
  v109 = swift_task_alloc();
  v1[70] = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FE8, &qword_1C756D850);
  *v109 = v1;
  v109[1] = sub_1C712C994;
  OUTLINED_FUNCTION_12_30();

  return MEMORY[0x1EEE6DE38](v110, v111, v112, v113, v114, v115, v116, v117);
}

uint64_t sub_1C712C994()
{
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *(v2 + 568) = v0;

  if (v0)
  {
    v4 = sub_1C712CBAC;
  }

  else
  {

    v4 = sub_1C712CB38;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C712CB38()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_116();

  return v1();
}

uint64_t sub_1C712CBAC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1C712CCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v97 = a8;
  v95 = a7;
  v93 = a6;
  v106 = a4;
  v107 = a3;
  v104 = a2;
  v108 = a23;
  v109 = a24;
  v101 = a21;
  v102 = a22;
  v99 = a19;
  v100 = a20;
  v98 = a18;
  v96 = a17;
  v94 = a16;
  v92 = a15;
  v91 = a14;
  v90 = a13;
  v89 = a12;
  v88 = a11;
  v87 = a10;
  v86 = a9;
  v84 = a25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B48, &qword_1C756DB08);
  v79 = v28;
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v77 - v31;
  v81 = &v77 - v31;
  v105 = objc_opt_self();
  sub_1C71BA830(a3, v40, v41, v33, v34, v35, v36, v37, v38, v39, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
  v103 = sub_1C7550B3C();

  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  v43[2] = a5;
  v43[3] = v42;
  v43[4] = a25;
  v114 = sub_1C712F458;
  v115 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v111 = 1107296256;
  v83 = &v112;
  v112 = sub_1C712D4EC;
  v113 = &block_descriptor_10;
  v85 = _Block_copy(&aBlock);

  v44 = v29;
  (*(v29 + 16))(v32, a1, v28);
  v45 = (*(v29 + 80) + 24) & ~*(v29 + 80);
  v46 = (v30 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 23) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
  v80 = (v78 + 23) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
  v77 = ((v82 + 15) & 0xFFFFFFFFFFFFFFF8);
  v53 = swift_allocObject();
  *(v53 + 16) = v107;
  (*(v44 + 32))(v53 + v45, v81, v79);
  v54 = (v53 + v46);
  v55 = v95;
  *v54 = v93;
  v54[1] = v55;
  v56 = (v53 + v47);
  v57 = v86;
  *v56 = v97;
  v56[1] = v57;
  v58 = (v53 + v48);
  v59 = v88;
  *v58 = v87;
  v58[1] = v59;
  v60 = (v53 + v49);
  v61 = v90;
  *v60 = v89;
  v60[1] = v61;
  v62 = (v53 + v50);
  v63 = v92;
  *v62 = v91;
  v62[1] = v63;
  v64 = (v53 + v51);
  v65 = v96;
  *v64 = v94;
  v64[1] = v65;
  v66 = (v53 + v52);
  v67 = v99;
  *v66 = v98;
  v66[1] = v67;
  v68 = (v53 + v78);
  v69 = v101;
  *v68 = v100;
  v68[1] = v69;
  v70 = (v53 + v80);
  v71 = v108;
  *v70 = v102;
  v70[1] = v71;
  *(v53 + v82) = v109;
  *&v77[v53] = v84;
  v114 = sub_1C712F464;
  v115 = v53;
  aBlock = MEMORY[0x1E69E9820];
  v111 = 1107296256;
  v112 = sub_1C712EC0C;
  v113 = &block_descriptor_31_0;
  v72 = _Block_copy(&aBlock);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();

  v73 = v103;
  v74 = v85;
  v75 = sub_1C712F5D8(v103, v106, v85, v72, v105);
  _Block_release(v72);
  _Block_release(v74);

  v76 = v104 + OBJC_IVAR____TtC18PhotosIntelligence18AssetMediaAnalyzer_currentHighlightInformationRequestID;
  *v76 = v75;
  *(v76 + 8) = 0;
}

uint64_t sub_1C712D24C(double a1, uint64_t a2, uint64_t a3)
{
  sub_1C754F2FC();
  swift_projectBox();
  swift_beginAccess();
  sub_1C754F2DC();
  return swift_endAccess();
}

double sub_1C712D4EC(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

uint64_t sub_1C712D550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, NSObject *a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = a2;
  v24 = 0x1EC213000uLL;
  v209 = *(a1 + 16);
  if (!v209)
  {
    if (qword_1EC213DF8 != -1)
    {
      swift_once();
    }

    v158 = sub_1C754FF1C();
    __swift_project_value_buffer(v158, qword_1EC217AD8);
    sub_1C75504FC();
    v159 = sub_1C754FEEC();
    v160 = sub_1C755119C();

    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v219[0] = v162;
      *v161 = 136315138;
      v163 = sub_1C6FB6304();
      value = MEMORY[0x1E69E7CC0];
      if (v163)
      {
        v165 = v163;
        v213 = v162;
        v215 = v160;
        time.value = MEMORY[0x1E69E7CC0];
        result = sub_1C716C9F0(0, v163 & ~(v163 >> 63), 0);
        if (v165 < 0)
        {
          __break(1u);
LABEL_131:
          __break(1u);
          return result;
        }

        v166 = 0;
        value = time.value;
        v167 = v23 & 0xC000000000000001;
        do
        {
          if (v167)
          {
            v168 = MEMORY[0x1CCA5DDD0](v166, v23);
          }

          else
          {
            v168 = *(v23 + 8 * v166 + 32);
          }

          v169 = v168;
          v170 = sub_1C70CAC04(v168);
          v172 = v171;

          time.value = value;
          v174 = *(value + 16);
          v173 = *(value + 24);
          if (v174 >= v173 >> 1)
          {
            sub_1C716C9F0(v173 > 1, v174 + 1, 1);
            value = time.value;
          }

          ++v166;
          *(value + 16) = v174 + 1;
          v175 = value + 16 * v174;
          *(v175 + 32) = v170;
          *(v175 + 40) = v172;
          v23 = a2;
        }

        while (v165 != v166);
        v160 = v215;
        v162 = v213;
      }

      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620, &qword_1C756EAF0);
      v183 = MEMORY[0x1CCA5D090](value, v182);
      v185 = v184;

      v186 = sub_1C6F765A4(v183, v185, v219);

      *(v161 + 4) = v186;
      _os_log_impl(&dword_1C6F5C000, v159, v160, "Nothing was returned from mediaanalyzer when trying to get assets highlight and caption %s!", v161, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v162);
      MEMORY[0x1CCA5F8E0](v162, -1, -1);
      MEMORY[0x1CCA5F8E0](v161, -1, -1);
    }

    else
    {
    }

    sub_1C712ED34();
    v187 = swift_allocError();
    *v188 = 1;
    v219[0] = v187;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B48, &qword_1C756DB08);
    return sub_1C7550C9C();
  }

  v26 = 0;
  v206 = a1 + 32;
  v194 = a2 & 0xC000000000000001;
  v193 = a2 + 32;
  v27 = a11;
LABEL_3:
  while (2)
  {
    if (v26 == v209)
    {
      swift_beginAccess();
      sub_1C75504FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B48, &qword_1C756DB08);
      return sub_1C7550CAC();
    }

    v29 = *(v206 + 8 * v26);
    if (!*(v29 + 16))
    {
      goto LABEL_121;
    }

    sub_1C75504FC();
    v30 = sub_1C6F78124(a4, a5);
    if (v31)
    {
      sub_1C6F774EC(*(v29 + 56) + 32 * v30, &time);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0, &unk_1C756DB10);
      if (swift_dynamicCast())
      {
        v211 = v26 + 1;
        if (!*(*&v216 + 16) || (v32 = sub_1C6F78124(a6, a7), (v33 & 1) == 0) || (sub_1C6F774EC(*(*&v216 + 56) + 32 * v32, &time), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACC0, &qword_1C7574D30), (swift_dynamicCast() & 1) == 0))
        {

          goto LABEL_96;
        }

        v34 = v216;
        v212 = *(*&v216 + 16);
        if (!v212)
        {
LABEL_103:

LABEL_96:

          v26 = v211;
          continue;
        }

        v201 = 0;
        v202 = a3;
        v191 = 0;
        v35 = 0;
        v36 = 0.0;
        v37 = -1.0;
        Seconds = 0.0;
        v192 = MEMORY[0x1E69E7CC0];
        v210 = v26;
        while (1)
        {
          if (v35 >= *(*&v34 + 16))
          {
            __break(1u);
LABEL_129:
            swift_once();
            goto LABEL_122;
          }

          v214 = v35;
          v39 = *(*&v216 + 32 + 8 * v35);
          v40 = *(v39 + 16);
          sub_1C75504FC();
          if (v40 && (v41 = sub_1C6F78124(a8, a9), (v42 & 1) != 0) && (sub_1C6F774EC(*(v39 + 56) + 32 * v41, &time), (swift_dynamicCast() & 1) != 0))
          {
            if (v37 > v216)
            {

              goto LABEL_65;
            }

            if (*(v39 + 16))
            {
              v58 = sub_1C6F78124(a10, v27);
              if (v59)
              {
                sub_1C6F774EC(*(v39 + 56) + 32 * v58, &time);
                if (swift_dynamicCast())
                {
                  if (*(v39 + 16) && (v60 = sub_1C6F78124(a12, a13), (v61 & 1) != 0) && (sub_1C6F774EC(*(v39 + 56) + 32 * v60, &time), (swift_dynamicCast() & 1) != 0))
                  {
                    if (*(v39 + 16))
                    {
                      v62 = sub_1C6F78124(a14, a15);
                      if (v63)
                      {
                        sub_1C6F774EC(*(v39 + 56) + 32 * v62, &time);
                        if (swift_dynamicCast())
                        {

                          if (*(*&v216 + 16))
                          {
                            v64 = a17;
                            v65 = sub_1C6F78124(a16, a17);
                            if (v66)
                            {
                              sub_1C6F774EC(*(*&v216 + 56) + 32 * v65, &time);
                              if (swift_dynamicCast())
                              {

                                v191 = *&v216;
                                v201 = v217;
                                v67 = sub_1C755048C();

                                CMTimeMakeFromDictionary(&time, v67);
                                v68 = time.value;
                                epoch = time.epoch;
                                v70 = *&time.timescale;

                                time.value = v68;
                                *&time.timescale = v70;
                                time.epoch = epoch;
                                Seconds = CMTimeGetSeconds(&time);
                                v71 = sub_1C755048C();

                                CMTimeMakeFromDictionary(&time, v71);
                                v72 = time.value;
                                v73 = time.epoch;
                                v74 = *&time.timescale;

                                time.value = v72;
                                *&time.timescale = v74;
                                time.epoch = v73;
                                v75 = CMTimeGetSeconds(&time);
                                v36 = Seconds + v75;
                                if (*(*&v216 + 16) && (v76 = sub_1C6F78124(a18, a19), (v77 & 1) != 0) && (sub_1C6F774EC(*(*&v216 + 56) + 32 * v76, &time), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B50, &qword_1C756DB20), (swift_dynamicCast() & 1) != 0))
                                {
                                  v195 = a9;
                                  log = a8;

                                  v78 = *(*&v216 + 16);
                                  v189 = *&v216;
                                  if (v78)
                                  {
                                    v79 = *&v216 + 32;
                                    while (1)
                                    {
                                      v80 = *v79;
                                      v81 = *(*v79 + 16);
                                      sub_1C75504FC();
                                      if (!v81)
                                      {
                                        goto LABEL_51;
                                      }

                                      v82 = sub_1C6F78124(a14, a15);
                                      if ((v83 & 1) == 0)
                                      {
                                        goto LABEL_51;
                                      }

                                      v84 = *(*(v80 + 56) + 8 * v82);
                                      if (!*(v84 + 16))
                                      {
                                        goto LABEL_51;
                                      }

                                      sub_1C75504FC();
                                      v85 = sub_1C6F78124(a20, a21);
                                      if ((v86 & 1) == 0)
                                      {
                                        break;
                                      }

                                      sub_1C6F774EC(*(v84 + 56) + 32 * v85, &time);

                                      if ((swift_dynamicCast() & 1) == 0)
                                      {
                                        goto LABEL_51;
                                      }

                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                      {
                                        sub_1C6FB1814();
                                        v192 = v98;
                                      }

                                      v87 = *(v192 + 16);
                                      if (v87 >= *(v192 + 24) >> 1)
                                      {
                                        sub_1C6FB1814();
                                        v192 = v99;
                                      }

                                      *(v192 + 16) = v87 + 1;
                                      v88 = v192 + 16 * v87;
                                      *(v88 + 32) = v216;
                                      *(v88 + 40) = v217;
LABEL_57:
                                      v79 += 8;
                                      if (!--v78)
                                      {
                                        goto LABEL_94;
                                      }
                                    }

LABEL_51:
                                    if (qword_1EC213DF8 != -1)
                                    {
                                      swift_once();
                                    }

                                    v89 = sub_1C754FF1C();
                                    __swift_project_value_buffer(v89, qword_1EC217AD8);
                                    sub_1C75504FC();
                                    v90 = sub_1C754FEEC();
                                    v91 = sub_1C755119C();

                                    if (os_log_type_enabled(v90, v91))
                                    {
                                      v92 = swift_slowAlloc();
                                      v93 = swift_slowAlloc();
                                      time.value = v93;
                                      *v92 = 136315138;
                                      v94 = sub_1C75504BC();
                                      v96 = v95;

                                      v97 = sub_1C6F765A4(v94, v96, &time.value);

                                      *(v92 + 4) = v97;
                                      _os_log_impl(&dword_1C6F5C000, v90, v91, "Could not find person UUID for face %s!", v92, 0xCu);
                                      __swift_destroy_boxed_opaque_existential_1(v93);
                                      MEMORY[0x1CCA5F8E0](v93, -1, -1);
                                      MEMORY[0x1CCA5F8E0](v92, -1, -1);
                                    }

                                    else
                                    {
                                    }

                                    goto LABEL_57;
                                  }

LABEL_94:

                                  v37 = v216;
                                  v24 = 0x1EC213000;
                                  a8 = log;
                                  v27 = a11;
                                  a9 = v195;
                                }

                                else
                                {
                                  if (*(v24 + 3576) != -1)
                                  {
                                    swift_once();
                                  }

                                  v139 = sub_1C754FF1C();
                                  __swift_project_value_buffer(v139, qword_1EC217AD8);
                                  sub_1C75504FC();
                                  sub_1C75504FC();
                                  v140 = sub_1C754FEEC();
                                  v141 = sub_1C755119C();

                                  if (os_log_type_enabled(v140, v141))
                                  {
                                    v200 = v140;
                                    v142 = swift_slowAlloc();
                                    v143 = swift_slowAlloc();
                                    time.value = v143;
                                    *v142 = 136315394;
                                    *(v142 + 4) = sub_1C6F765A4(a18, a19, &time.value);
                                    *(v142 + 12) = 2080;
                                    v144 = sub_1C75504BC();
                                    v146 = v145;

                                    v147 = sub_1C6F765A4(v144, v146, &time.value);

                                    *(v142 + 14) = v147;
                                    _os_log_impl(&dword_1C6F5C000, v200, v141, "Could not find value for %s in %s!", v142, 0x16u);
                                    swift_arrayDestroy();
                                    MEMORY[0x1CCA5F8E0](v143, -1, -1);
                                    MEMORY[0x1CCA5F8E0](v142, -1, -1);
                                  }

                                  else
                                  {
                                  }

                                  v37 = v216;
                                }

                                goto LABEL_74;
                              }
                            }
                          }

                          else
                          {

                            v64 = a17;
                          }

                          if (*(v24 + 3576) != -1)
                          {
                            swift_once();
                          }

                          v129 = sub_1C754FF1C();
                          __swift_project_value_buffer(v129, qword_1EC217AD8);
                          sub_1C75504FC();
                          sub_1C75504FC();
                          v130 = sub_1C754FEEC();
                          v131 = v64;
                          v132 = sub_1C755119C();

                          v199 = v130;
                          if (os_log_type_enabled(v130, v132))
                          {
                            v133 = v132;
                            v122 = swift_slowAlloc();
                            log = swift_slowAlloc();
                            time.value = log;
                            *v122 = 136315394;
                            *(v122 + 4) = sub_1C6F765A4(a16, v131, &time.value);
                            *(v122 + 12) = 2080;
                            v134 = sub_1C75504BC();
                            v136 = v135;

                            v137 = sub_1C6F765A4(v134, v136, &time.value);

                            *(v122 + 14) = v137;
                            v138 = v133;
                            v111 = v199;
                            _os_log_impl(&dword_1C6F5C000, v199, v138, "Could not find value for %s in %s!", v122, 0x16u);
                            v128 = log;
LABEL_79:
                            swift_arrayDestroy();
                            MEMORY[0x1CCA5F8E0](v128, -1, -1);
                            MEMORY[0x1CCA5F8E0](v122, -1, -1);
LABEL_73:
                          }

                          else
                          {
                          }

LABEL_74:
                          v26 = v210;
                          goto LABEL_65;
                        }
                      }
                    }

                    if (*(v24 + 3576) != -1)
                    {
                      swift_once();
                    }

                    v120 = sub_1C754FF1C();
                    __swift_project_value_buffer(v120, qword_1EC217AD8);
                    sub_1C75504FC();
                    sub_1C75504FC();
                    v119 = sub_1C754FEEC();
                    v121 = sub_1C755119C();

                    if (os_log_type_enabled(v119, v121))
                    {
                      log = v119;
                      v122 = swift_slowAlloc();
                      v198 = swift_slowAlloc();
                      time.value = v198;
                      *v122 = 136315394;
                      *(v122 + 4) = sub_1C6F765A4(a14, a15, &time.value);
                      *(v122 + 12) = 2080;
                      v123 = sub_1C75504BC();
                      v125 = v124;

                      v126 = sub_1C6F765A4(v123, v125, &time.value);

                      *(v122 + 14) = v126;
                      v127 = v121;
                      v111 = log;
                      _os_log_impl(&dword_1C6F5C000, log, v127, "Could not find value for %s in %s!", v122, 0x16u);
                      v128 = v198;
                      goto LABEL_79;
                    }
                  }

                  else
                  {

                    if (*(v24 + 3576) != -1)
                    {
                      swift_once();
                    }

                    v110 = sub_1C754FF1C();
                    __swift_project_value_buffer(v110, qword_1EC217AD8);
                    sub_1C75504FC();
                    sub_1C75504FC();
                    v111 = sub_1C754FEEC();
                    v112 = sub_1C755119C();

                    if (!os_log_type_enabled(v111, v112))
                    {

                      goto LABEL_73;
                    }

                    log = v111;
                    v113 = swift_slowAlloc();
                    v197 = swift_slowAlloc();
                    time.value = v197;
                    *v113 = 136315394;
                    *(v113 + 4) = sub_1C6F765A4(a12, a13, &time.value);
                    *(v113 + 12) = 2080;
                    v114 = sub_1C75504BC();
                    v116 = v115;

                    v117 = sub_1C6F765A4(v114, v116, &time.value);

                    *(v113 + 14) = v117;
                    v118 = v112;
                    v119 = log;
                    _os_log_impl(&dword_1C6F5C000, log, v118, "Could not find value for %s in %s!", v113, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x1CCA5F8E0](v197, -1, -1);
                    MEMORY[0x1CCA5F8E0](v113, -1, -1);
                  }

                  goto LABEL_74;
                }
              }
            }

            if (*(v24 + 3576) != -1)
            {
              swift_once();
            }

            v100 = sub_1C754FF1C();
            __swift_project_value_buffer(v100, qword_1EC217AD8);
            sub_1C75504FC();
            sub_1C75504FC();
            v44 = sub_1C754FEEC();
            v101 = sub_1C755119C();

            if (!os_log_type_enabled(v44, v101))
            {
LABEL_63:

              goto LABEL_64;
            }

            v46 = swift_slowAlloc();
            v196 = swift_slowAlloc();
            time.value = v196;
            *v46 = 136315394;
            *(v46 + 4) = sub_1C6F765A4(a10, v27, &time.value);
            *(v46 + 12) = 2080;
            v102 = a9;
            v103 = sub_1C75504BC();
            v104 = a8;
            v105 = v24;
            v107 = v106;

            v108 = v103;
            a9 = v102;
            v109 = sub_1C6F765A4(v108, v107, &time.value);
            v24 = v105;
            a8 = v104;
            v27 = a11;

            *(v46 + 14) = v109;
            _os_log_impl(&dword_1C6F5C000, v44, v101, "Could not find value for %s in %s!", v46, 0x16u);
            swift_arrayDestroy();
            v56 = v196;
          }

          else
          {
            if (*(v24 + 3576) != -1)
            {
              swift_once();
            }

            v43 = sub_1C754FF1C();
            __swift_project_value_buffer(v43, qword_1EC217AD8);
            sub_1C75504FC();
            sub_1C75504FC();
            v44 = sub_1C754FEEC();
            v45 = sub_1C755119C();

            if (!os_log_type_enabled(v44, v45))
            {
              goto LABEL_63;
            }

            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            time.value = v47;
            *v46 = 136315394;
            *(v46 + 4) = sub_1C6F765A4(a8, a9, &time.value);
            *(v46 + 12) = 2080;
            v48 = a9;
            v49 = sub_1C75504BC();
            v50 = a8;
            v51 = v24;
            v53 = v52;

            v54 = v49;
            a9 = v48;
            v55 = sub_1C6F765A4(v54, v53, &time.value);
            v24 = v51;
            a8 = v50;
            v27 = a11;

            *(v46 + 14) = v55;
            _os_log_impl(&dword_1C6F5C000, v44, v45, "Could not find value for %s in %s!", v46, 0x16u);
            swift_arrayDestroy();
            v56 = v47;
          }

          MEMORY[0x1CCA5F8E0](v56, -1, -1);
          v57 = v46;
          v26 = v210;
          MEMORY[0x1CCA5F8E0](v57, -1, -1);
LABEL_64:

LABEL_65:
          v34 = v216;
          v35 = v214 + 1;
          if (v214 + 1 == v212)
          {

            a3 = v202;
            if (!v201)
            {
              goto LABEL_103;
            }

            sub_1C6FB6330();
            if (v194)
            {
              v148 = MEMORY[0x1CCA5DDD0](v26, a2);
            }

            else
            {
              v148 = *(v193 + 8 * v26);
            }

            result = sub_1C6FCA214(v148);
            if (!v150)
            {
              goto LABEL_131;
            }

            v151 = result;
            v152 = v150;

            v219[0] = __PAIR64__(LODWORD(v36), LODWORD(Seconds));
            v219[1] = v191;
            v219[2] = v201;
            *&v219[3] = v37;
            v219[4] = v192;
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v216 = *(a22 + 16);
            sub_1C6FC8354(v219, v151, v152, isUniquelyReferenced_nonNull_native, v154, v155, v156, v157, v189, log);
            *(a22 + 16) = v216;

            swift_endAccess();
            v26 = v211;
            goto LABEL_3;
          }
        }
      }
    }

    break;
  }

LABEL_121:
  if (*(v24 + 3576) != -1)
  {
    goto LABEL_129;
  }

LABEL_122:
  v176 = sub_1C754FF1C();
  __swift_project_value_buffer(v176, qword_1EC217AD8);
  v177 = sub_1C754FEEC();
  v178 = sub_1C755119C();
  if (os_log_type_enabled(v177, v178))
  {
    v179 = swift_slowAlloc();
    *v179 = 0;
    _os_log_impl(&dword_1C6F5C000, v177, v178, "Value in highlight result dictionary was not a dictionary!", v179, 2u);
    MEMORY[0x1CCA5F8E0](v179, -1, -1);
  }

  sub_1C712ED34();
  v180 = swift_allocError();
  *v181 = 2;
  time.value = v180;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B48, &qword_1C756DB08);
  return sub_1C7550C9C();
}

uint64_t sub_1C712EC0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0, &unk_1C756DB10);
  v3 = sub_1C7550B5C();

  v2(v3);
}

id AssetMediaAnalyzer.init()()
{
  v1 = &v0[OBJC_IVAR____TtC18PhotosIntelligence18AssetMediaAnalyzer_currentHighlightInformationRequestID];
  *v1 = 0;
  v1[8] = 1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AssetMediaAnalyzer();
  return objc_msgSendSuper2(&v3, sel_init);
}

id AssetMediaAnalyzer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetMediaAnalyzer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C712ED34()
{
  result = qword_1EC217B08;
  if (!qword_1EC217B08)
  {
    result = swift_getWitnessTable(aD_1, &type metadata for AssetMediaAnalyzer.Error, v0, v1);
    atomic_store(result, &qword_1EC217B08);
  }

  return result;
}

unint64_t sub_1C712ED94()
{
  result = qword_1EDD0CD00;
  if (!qword_1EDD0CD00)
  {
    v3 = sub_1C6FA7014();
    result = swift_getWitnessTable(MEMORY[0x1E69E81B8], v3, v0, v1);
    atomic_store(result, &qword_1EDD0CD00);
  }

  return result;
}

uint64_t sub_1C712EE54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C712EE94(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t dispatch thunk of AssetMediaAnalyzer.requestHighlightInformation(for:queries:characterUUIDs:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1C712F054;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1C712F054()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  OUTLINED_FUNCTION_116();

  return v5(v2);
}

_BYTE *storeEnumTagSinglePayload for AssetMediaAnalyzer.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for HighlightInformation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C712F2FC()
{
  result = qword_1EC217B28;
  if (!qword_1EC217B28)
  {
    result = swift_getWitnessTable(aE_0, &type metadata for HighlightInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217B28);
  }

  return result;
}

unint64_t sub_1C712F354()
{
  result = qword_1EC217B30;
  if (!qword_1EC217B30)
  {
    result = swift_getWitnessTable(byte_1C756DA4C, &type metadata for AssetMediaAnalyzer.Error, v0, v1);
    atomic_store(result, &qword_1EC217B30);
  }

  return result;
}

unint64_t sub_1C712F3AC()
{
  result = qword_1EC217B38;
  if (!qword_1EC217B38)
  {
    result = swift_getWitnessTable(byte_1C756D954, &type metadata for HighlightInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217B38);
  }

  return result;
}

unint64_t sub_1C712F404()
{
  result = qword_1EC217B40;
  if (!qword_1EC217B40)
  {
    result = swift_getWitnessTable(byte_1C756D97C, &type metadata for HighlightInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217B40);
  }

  return result;
}

uint64_t sub_1C712F464(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B48, &qword_1C756DB08) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v1 + v5);
  v14 = *v13;
  v15 = v13[1];
  v16 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1C712D550(a1, *(v1 + 16), v1 + v4, v14, v15, *(v1 + v6), *(v1 + v6 + 8), *(v1 + v7), *(v1 + v7 + 8), *(v1 + v8), *(v1 + v8 + 8), *(v1 + v9), *(v1 + v9 + 8), *(v1 + v10), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v11 + 8), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v16), *(v1 + v16 + 8), *(v1 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_1C712F5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1C755048C();
  v10 = [a5 requestAssetHighlightCaptionsForAssets:a1 withOptions:v9 progressHandler:a3 completionHandler:a4];

  return v10;
}

__n128 SortableSuggestion.init(uuid:relevanceScoreTuple:momentUUIDs:assetUUIDs:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  result = *a3;
  a6[1] = *a3;
  a6[2].n128_u64[0] = a4;
  a6[2].n128_u64[1] = a5;
  return result;
}

uint64_t EventSuggestion.init(uuid:startDate:endDate:title:subtitle:keyAssetUUID:momentUUIDs:relevanceScoreTuple:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  v18 = *a13;
  v25 = a13[1];
  *a9 = a1;
  a9[1] = a2;
  v19 = type metadata accessor for EventSuggestion(0);
  sub_1C6FF51C8(a3, a9 + v19[5]);
  result = sub_1C6FF51C8(a4, a9 + v19[6]);
  v21 = (a9 + v19[7]);
  *v21 = a5;
  v21[1] = a6;
  v22 = (a9 + v19[8]);
  *v22 = a7;
  v22[1] = a8;
  v23 = (a9 + v19[9]);
  *v23 = a10;
  v23[1] = a11;
  *(a9 + v19[10]) = a12;
  v24 = (a9 + v19[11]);
  *v24 = v18;
  v24[1] = v25;
  return result;
}

uint64_t type metadata accessor for EventSuggestion(uint64_t a1)
{
  result = qword_1EC217BD0;
  if (!qword_1EC217BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

PhotosIntelligence::EventSuggestionRelevanceScoreTuple __swiftcall EventSuggestionRelevanceScoreTuple.init(numberOfTokensWithCommonAssets:totalNumberOfCommonAssets:)(Swift::Int numberOfTokensWithCommonAssets, Swift::Int totalNumberOfCommonAssets)
{
  *v2 = numberOfTokensWithCommonAssets;
  v2[1] = totalNumberOfCommonAssets;
  result.totalNumberOfCommonAssets = totalNumberOfCommonAssets;
  result.numberOfTokensWithCommonAssets = numberOfTokensWithCommonAssets;
  return result;
}

uint64_t EventSuggestionRelevanceScoreTuple.description.getter()
{
  OUTLINED_FUNCTION_224();
  v0 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v0);

  OUTLINED_FUNCTION_30_17();
  OUTLINED_FUNCTION_224();
  v1 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v1);

  MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1C712F8AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ELL && 0x80000001C759FA00 == a2;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001C759FA20 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1C712F980(char a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD00000000000001ELL;
  }
}

uint64_t sub_1C712F9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C712F8AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C712F9E8(uint64_t a1)
{
  v2 = sub_1C712FB8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C712FA24(uint64_t a1)
{
  v2 = sub_1C712FB8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EventSuggestionRelevanceScoreTuple.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B58, &qword_1C756DB28);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_61_1();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v8 = sub_1C712FB8C();
  OUTLINED_FUNCTION_230(&type metadata for EventSuggestionRelevanceScoreTuple.CodingKeys, v9, v8);
  OUTLINED_FUNCTION_97();
  sub_1C7551D0C();
  if (!v0)
  {
    OUTLINED_FUNCTION_97();
    sub_1C7551D0C();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C712FB8C()
{
  result = qword_1EC217B60;
  if (!qword_1EC217B60)
  {
    result = swift_getWitnessTable(byte_1C756E1A8, &type metadata for EventSuggestionRelevanceScoreTuple.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217B60);
  }

  return result;
}

uint64_t EventSuggestionRelevanceScoreTuple.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1CCA5E460](*v0);
  return MEMORY[0x1CCA5E460](v1);
}

uint64_t EventSuggestionRelevanceScoreTuple.hashValue.getter()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_106();
  v2 = OUTLINED_FUNCTION_224();
  MEMORY[0x1CCA5E460](v2);
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

void EventSuggestionRelevanceScoreTuple.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_124();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B68, &qword_1C756DB30);
  OUTLINED_FUNCTION_3_0();
  v32 = v31;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1C712FB8C();
  sub_1C7551FFC();
  if (!v23)
  {
    a13 = 0;
    v36 = sub_1C7551BFC();
    a12 = 1;
    v37 = sub_1C7551BFC();
    (*(v32 + 8))(v35, v30);
    *v29 = v36;
    v29[1] = v37;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C712FE28(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v2);
  MEMORY[0x1CCA5E460](v3);
  return sub_1C7551FAC();
}

__n128 SortableSuggestion.relevanceScoreTuple.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

void static SortableSuggestion.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_1C7551DBC()) && v2 == v6 && v4 == v5)
  {
    sub_1C7036A90(v3, v7);
    if (v10)
    {
      v11 = OUTLINED_FUNCTION_90();

      sub_1C7036A90(v11, v12);
    }
  }
}

uint64_t sub_1C712FF88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001C759FA40 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5555746E656D6F6DLL && a2 == 0xEB00000000734449;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4955557465737361 && a2 == 0xEA00000000007344)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C71300F4(char a1)
{
  result = 1684632949;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x5555746E656D6F6DLL;
      break;
    case 3:
      result = 0x4955557465737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7130188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C712FF88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C71301B0(uint64_t a1)
{
  v2 = sub_1C71303FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71301EC(uint64_t a1)
{
  v2 = sub_1C71303FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SortableSuggestion.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B70, &unk_1C756DB38);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_61_1();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v8 = sub_1C71303FC();
  OUTLINED_FUNCTION_230(&type metadata for SortableSuggestion.CodingKeys, v9, v8);
  sub_1C7551CCC();
  if (!v0)
  {
    sub_1C7130450();
    OUTLINED_FUNCTION_14_28();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
    OUTLINED_FUNCTION_6_3(&qword_1EDD0CEF0, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_14_28();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_14_28();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C71303FC()
{
  result = qword_1EC217B78;
  if (!qword_1EC217B78)
  {
    result = swift_getWitnessTable(aA, &type metadata for SortableSuggestion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217B78);
  }

  return result;
}

unint64_t sub_1C7130450()
{
  result = qword_1EC217B80;
  if (!qword_1EC217B80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EventSuggestionRelevanceScoreTuple, &type metadata for EventSuggestionRelevanceScoreTuple, v0, v1);
    atomic_store(result, &qword_1EC217B80);
  }

  return result;
}

uint64_t SortableSuggestion.hash(into:)(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  sub_1C75505AC();
  MEMORY[0x1CCA5E460](v3);
  MEMORY[0x1CCA5E460](v4);
  sub_1C7041DF0(a1, v5, v7, v8, v9, v10, v11, v12);

  return sub_1C7041DF0(a1, v6, v13, v14, v15, v16, v17, v18);
}

uint64_t SortableSuggestion.hashValue.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  OUTLINED_FUNCTION_106();
  sub_1C75505AC();
  MEMORY[0x1CCA5E460](v1);
  MEMORY[0x1CCA5E460](v2);
  sub_1C7041DF0(v18, v3, v5, v6, v7, v8, v9, v10);
  sub_1C7041DF0(v18, v4, v11, v12, v13, v14, v15, v16);
  return sub_1C7551FAC();
}

void SortableSuggestion.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B88, &qword_1C756DB48);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C71303FC();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v11) = 0;
    OUTLINED_FUNCTION_139();
    v6 = sub_1C7551BBC();
    v8 = v7;
    sub_1C713216C();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
    OUTLINED_FUNCTION_9_30(&qword_1EDD0CEE8, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    v9 = OUTLINED_FUNCTION_2_24();
    v10(v9);
    *v4 = v6;
    v4[1] = v8;
    v4[2] = v11;
    v4[3] = v12;
    v4[4] = v11;
    v4[5] = v11;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C71308BC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  sub_1C7551F3C();
  sub_1C75505AC();
  MEMORY[0x1CCA5E460](v2);
  MEMORY[0x1CCA5E460](v3);
  sub_1C7041DF0(v19, v4, v6, v7, v8, v9, v10, v11);
  sub_1C7041DF0(v19, v5, v12, v13, v14, v15, v16, v17);
  return sub_1C7551FAC();
}

uint64_t EventSuggestion.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EventSuggestion(0) + 20);

  return sub_1C7033844(v3, a1);
}

uint64_t EventSuggestion.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EventSuggestion(0) + 24);

  return sub_1C7033844(v3, a1);
}

uint64_t EventSuggestion.title.getter()
{
  type metadata accessor for EventSuggestion(0);
  OUTLINED_FUNCTION_22_2();
  return OUTLINED_FUNCTION_90();
}

uint64_t EventSuggestion.subtitle.getter()
{
  type metadata accessor for EventSuggestion(0);
  OUTLINED_FUNCTION_22_2();
  return OUTLINED_FUNCTION_90();
}

uint64_t EventSuggestion.keyAssetUUID.getter()
{
  type metadata accessor for EventSuggestion(0);
  OUTLINED_FUNCTION_22_2();
  return OUTLINED_FUNCTION_90();
}

uint64_t EventSuggestion.momentUUIDs.getter()
{
  type metadata accessor for EventSuggestion(0);

  return sub_1C75504FC();
}

__n128 EventSuggestion.relevanceScoreTuple.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for EventSuggestion(0) + 44));
  *a1 = result;
  return result;
}

uint64_t EventSuggestion.description.getter()
{
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](*v0, v0[1]);
  OUTLINED_FUNCTION_30_17();
  type metadata accessor for EventSuggestion(0);
  v1 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v1);

  OUTLINED_FUNCTION_30_17();
  v2 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v2);

  MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
  MEMORY[0x1CCA5CD70](91, 0xE100000000000000);

  OUTLINED_FUNCTION_30_17();
  v3 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v3);

  MEMORY[0x1CCA5CD70](0x73746E656D6F6D20, 0xE800000000000000);
  return 40;
}

BOOL static EventSuggestion.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_78();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v73[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B98, &qword_1C756DB50);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_78();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v73[-v24];
  v26 = *a1 == *a2 && a1[1] == a2[1];
  if (!v26 && (sub_1C7551DBC() & 1) == 0)
  {
    return 0;
  }

  v75 = v14;
  v77 = v6;
  v76 = type metadata accessor for EventSuggestion(0);
  v27 = *(v76 + 20);
  v28 = *(v18 + 48);
  sub_1C7033844(a1 + v27, v25);
  sub_1C7033844(a2 + v27, &v25[v28]);
  OUTLINED_FUNCTION_601(v25);
  if (v26)
  {
    OUTLINED_FUNCTION_601(&v25[v28]);
    if (v26)
    {
      sub_1C6FD7FC8(v25, &unk_1EC219230, &unk_1C7563720);
      goto LABEL_16;
    }

LABEL_14:
    v32 = v25;
LABEL_25:
    sub_1C6FD7FC8(v32, &qword_1EC217B98, &qword_1C756DB50);
    return 0;
  }

  sub_1C7033844(v25, v17);
  OUTLINED_FUNCTION_601(&v25[v28]);
  if (v29)
  {
    v30 = OUTLINED_FUNCTION_151_1();
    v31(v30);
    goto LABEL_14;
  }

  v33 = v77;
  (*(v77 + 32))(v10, &v25[v28], v4);
  OUTLINED_FUNCTION_0_69();
  v36 = sub_1C713230C(v34, v35, MEMORY[0x1E6969550]);
  v74 = OUTLINED_FUNCTION_27_21(v36);
  v37 = *(v33 + 8);
  v37(v10, v4);
  v38 = OUTLINED_FUNCTION_151_1();
  (v37)(v38);
  sub_1C6FD7FC8(v25, &unk_1EC219230, &unk_1C7563720);
  if ((v74 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v39 = v76;
  v40 = *(v76 + 24);
  v41 = *(v18 + 48);
  sub_1C7033844(a1 + v40, v22);
  sub_1C7033844(a2 + v40, v22 + v41);
  OUTLINED_FUNCTION_601(v22);
  if (v26)
  {
    OUTLINED_FUNCTION_601(v22 + v41);
    if (v26)
    {
      sub_1C6FD7FC8(v22, &unk_1EC219230, &unk_1C7563720);
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  sub_1C7033844(v22, v75);
  OUTLINED_FUNCTION_601(v22 + v41);
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_151_1();
    v44(v43);
LABEL_24:
    v32 = v22;
    goto LABEL_25;
  }

  v46 = v77;
  (*(v77 + 32))(v10, v22 + v41, v4);
  OUTLINED_FUNCTION_0_69();
  v49 = sub_1C713230C(v47, v48, MEMORY[0x1E6969550]);
  v50 = OUTLINED_FUNCTION_27_21(v49);
  v51 = *(v46 + 8);
  v51(v10, v4);
  v52 = OUTLINED_FUNCTION_151_1();
  (v51)(v52);
  sub_1C6FD7FC8(v22, &unk_1EC219230, &unk_1C7563720);
  if ((v50 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  OUTLINED_FUNCTION_18_20(v39[7]);
  v55 = v26 && v53 == v54;
  if (!v55 && (sub_1C7551DBC() & 1) == 0)
  {
    return 0;
  }

  v56 = v39[8];
  v57 = (a1 + v56);
  v58 = *(a1 + v56 + 8);
  v59 = (a2 + v56);
  v60 = v59[1];
  if (!v58)
  {
    if (!v60)
    {
      goto LABEL_43;
    }

    return 0;
  }

  if (!v60)
  {
    return 0;
  }

  v61 = *v57 == *v59 && v58 == v60;
  if (!v61 && (sub_1C7551DBC() & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  OUTLINED_FUNCTION_18_20(v39[9]);
  v64 = v26 && v62 == v63;
  if (!v64 && (sub_1C7551DBC() & 1) == 0)
  {
    return 0;
  }

  sub_1C7036A90(*(a1 + v39[10]), *(a2 + v39[10]));
  if ((v65 & 1) == 0)
  {
    return 0;
  }

  v66 = v39[11];
  v68 = *(a1 + v66);
  v67 = *(a1 + v66 + 8);
  v69 = (a2 + v66);
  v71 = *v69;
  v70 = v69[1];
  return v68 == v71 && v67 == v70;
}

uint64_t sub_1C7131164(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x746573734179656BLL && a2 == 0xEC00000044495555;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x5555746E656D6F6DLL && a2 == 0xEB00000000734449;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000013 && 0x80000001C759FA40 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C7551DBC();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C71313F0(char a1)
{
  result = 1684632949;
  switch(a1)
  {
    case 1:
      result = 0x7461447472617473;
      break;
    case 2:
      result = 0x65746144646E65;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x656C746974627573;
      break;
    case 5:
      result = 0x746573734179656BLL;
      break;
    case 6:
      result = 0x5555746E656D6F6DLL;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C71314E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7131164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7131510(uint64_t a1)
{
  v2 = sub_1C71321C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713154C(uint64_t a1)
{
  v2 = sub_1C71321C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EventSuggestion.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217BA0, &qword_1C756DB58);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_61_1();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C71321C0();
  sub_1C755200C();
  OUTLINED_FUNCTION_3_48();
  sub_1C7551CCC();
  if (!v0)
  {
    type metadata accessor for EventSuggestion(0);
    sub_1C754DF6C();
    OUTLINED_FUNCTION_0_69();
    sub_1C713230C(v8, v9, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_97();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_97();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_3_48();
    sub_1C7551CCC();
    OUTLINED_FUNCTION_3_48();
    sub_1C7551C7C();
    OUTLINED_FUNCTION_3_48();
    sub_1C7551CCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
    OUTLINED_FUNCTION_6_3(&qword_1EDD0CEF0, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    sub_1C7130450();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t EventSuggestion.hash(into:)(void *a1)
{
  v2 = v1;
  v4 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_78();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  sub_1C75505AC();
  v18 = type metadata accessor for EventSuggestion(0);
  sub_1C7033844(v2 + v18[5], v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v4) == 1)
  {
    sub_1C7551F5C();
  }

  else
  {
    (*(v6 + 32))(v10, v17, v4);
    sub_1C7551F5C();
    OUTLINED_FUNCTION_0_69();
    v21 = sub_1C713230C(v19, v20, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_29_15(v21);
    (*(v6 + 8))(v10, v4);
  }

  sub_1C7033844(v2 + v18[6], v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v4) == 1)
  {
    sub_1C7551F5C();
  }

  else
  {
    (*(v6 + 32))(v10, v14, v4);
    sub_1C7551F5C();
    OUTLINED_FUNCTION_0_69();
    v24 = sub_1C713230C(v22, v23, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_29_15(v24);
    (*(v6 + 8))(v10, v4);
  }

  sub_1C75505AC();
  if (*(v2 + v18[8] + 8))
  {
    sub_1C7551F5C();
    sub_1C75505AC();
  }

  else
  {
    sub_1C7551F5C();
  }

  sub_1C75505AC();
  sub_1C7041DF0(a1, *(v2 + v18[10]), v25, v26, v27, v28, v29, v30);
  v31 = (v2 + v18[11]);
  v32 = v31[1];
  MEMORY[0x1CCA5E460](*v31);
  return MEMORY[0x1CCA5E460](v32);
}

uint64_t EventSuggestion.hashValue.getter()
{
  OUTLINED_FUNCTION_106();
  EventSuggestion.hash(into:)(v1);
  return sub_1C7551FAC();
}

void EventSuggestion.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v35 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_78();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217BB0, &qword_1C756DB60);
  OUTLINED_FUNCTION_3_0();
  v36 = v12;
  v37 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  v39 = type metadata accessor for EventSuggestion(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  v17 = (v16 - v15);
  v18 = v2[3];
  v38 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v18);
  sub_1C71321C0();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    LOBYTE(v40) = 0;
    *v17 = sub_1C7551BBC();
    v17[1] = v19;
    sub_1C754DF6C();
    LOBYTE(v40) = 1;
    OUTLINED_FUNCTION_0_69();
    sub_1C713230C(v20, v21, MEMORY[0x1E6969558]);
    OUTLINED_FUNCTION_13_31();
    sub_1C7551BAC();
    sub_1C6FF51C8(v10, v17 + *(v39 + 20));
    LOBYTE(v40) = 2;
    OUTLINED_FUNCTION_13_31();
    sub_1C7551BAC();
    v22 = v39;
    sub_1C6FF51C8(v7, v17 + *(v39 + 24));
    OUTLINED_FUNCTION_7_32(3);
    v23 = sub_1C7551BBC();
    v24 = (v17 + v22[7]);
    *v24 = v23;
    v24[1] = v25;
    OUTLINED_FUNCTION_7_32(4);
    v26 = sub_1C7551B6C();
    v27 = (v17 + v22[8]);
    *v27 = v26;
    v27[1] = v28;
    OUTLINED_FUNCTION_7_32(5);
    v29 = sub_1C7551BBC();
    v30 = (v17 + v22[9]);
    *v30 = v29;
    v30[1] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
    OUTLINED_FUNCTION_9_30(&qword_1EDD0CEE8, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_13_31();
    sub_1C7551C1C();
    *(v17 + v22[10]) = v40;
    sub_1C713216C();
    OUTLINED_FUNCTION_138_0();
    sub_1C7551C1C();
    v32 = OUTLINED_FUNCTION_2_48();
    v33(v32);
    *(v17 + v22[11]) = v40;
    sub_1C7100F28(v17, v35);
    __swift_destroy_boxed_opaque_existential_1(v38);
    sub_1C7100F8C(v17);
  }

  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C713212C(uint64_t a1)
{
  sub_1C7551F3C();
  EventSuggestion.hash(into:)(v2);
  return sub_1C7551FAC();
}

unint64_t sub_1C713216C()
{
  result = qword_1EC217B90;
  if (!qword_1EC217B90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EventSuggestionRelevanceScoreTuple, &type metadata for EventSuggestionRelevanceScoreTuple, v0, v1);
    atomic_store(result, &qword_1EC217B90);
  }

  return result;
}

unint64_t sub_1C71321C0()
{
  result = qword_1EC217BA8;
  if (!qword_1EC217BA8)
  {
    result = swift_getWitnessTable(byte_1C756E108, &type metadata for EventSuggestion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217BA8);
  }

  return result;
}

unint64_t sub_1C7132218()
{
  result = qword_1EC217BB8;
  if (!qword_1EC217BB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EventSuggestionRelevanceScoreTuple, &type metadata for EventSuggestionRelevanceScoreTuple, v0, v1);
    atomic_store(result, &qword_1EC217BB8);
  }

  return result;
}

unint64_t sub_1C7132270()
{
  result = qword_1EC217BC0;
  if (!qword_1EC217BC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SortableSuggestion, &type metadata for SortableSuggestion, v0, v1);
    atomic_store(result, &qword_1EC217BC0);
  }

  return result;
}

uint64_t sub_1C713230C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C713239C(uint64_t a1)
{
  sub_1C6F5FB48(319);
  if (v1 <= 0x3F)
  {
    sub_1C6FD5FFC();
    if (v2 <= 0x3F)
    {
      sub_1C7042C44();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for EventSuggestion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SortableSuggestion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for EventSuggestionRelevanceScoreTuple.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C71326F0()
{
  result = qword_1EC217BE0;
  if (!qword_1EC217BE0)
  {
    result = swift_getWitnessTable(asc_1C756DF70, &type metadata for EventSuggestionRelevanceScoreTuple.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217BE0);
  }

  return result;
}

unint64_t sub_1C7132748()
{
  result = qword_1EC217BE8;
  if (!qword_1EC217BE8)
  {
    result = swift_getWitnessTable(asc_1C756E028, &type metadata for SortableSuggestion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217BE8);
  }

  return result;
}

unint64_t sub_1C71327A0()
{
  result = qword_1EC217BF0;
  if (!qword_1EC217BF0)
  {
    result = swift_getWitnessTable(aI_1, &type metadata for EventSuggestion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217BF0);
  }

  return result;
}

unint64_t sub_1C71327F8()
{
  result = qword_1EC217BF8;
  if (!qword_1EC217BF8)
  {
    result = swift_getWitnessTable(byte_1C756E050, &type metadata for EventSuggestion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217BF8);
  }

  return result;
}

unint64_t sub_1C7132850()
{
  result = qword_1EC217C00;
  if (!qword_1EC217C00)
  {
    result = swift_getWitnessTable(byte_1C756E078, &type metadata for EventSuggestion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217C00);
  }

  return result;
}

unint64_t sub_1C71328A8()
{
  result = qword_1EC217C08;
  if (!qword_1EC217C08)
  {
    result = swift_getWitnessTable(aY_2, &type metadata for SortableSuggestion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217C08);
  }

  return result;
}

unint64_t sub_1C7132900()
{
  result = qword_1EC217C10;
  if (!qword_1EC217C10)
  {
    result = swift_getWitnessTable(aQ_5, &type metadata for SortableSuggestion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217C10);
  }

  return result;
}

unint64_t sub_1C7132958()
{
  result = qword_1EC217C18;
  if (!qword_1EC217C18)
  {
    result = swift_getWitnessTable(byte_1C756DEE0, &type metadata for EventSuggestionRelevanceScoreTuple.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217C18);
  }

  return result;
}

unint64_t sub_1C71329B0()
{
  result = qword_1EC217C20;
  if (!qword_1EC217C20)
  {
    result = swift_getWitnessTable(asc_1C756DF08, &type metadata for EventSuggestionRelevanceScoreTuple.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217C20);
  }

  return result;
}

void sub_1C7132A08(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_1C75504FC();
  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    v10 = (*(a1 + 48) + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    v13 = *(*(a1 + 56) + 8 * v9);
    v5 &= v5 - 1;
    sub_1C75504FC();
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v11, v12);
    MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D00, &unk_1C755BE80);
    v15 = MEMORY[0x1CCA5D090](v13, v14);
    MEMORY[0x1CCA5CD70](v15);

    MEMORY[0x1CCA5CD70](2314, 0xE200000000000000);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

PhotosIntelligence::StoryMusicCurationDiagnostics::MoodCurationSource_optional __swiftcall StoryMusicCurationDiagnostics.MoodCurationSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t StoryMusicCurationDiagnostics.MoodCurationSource.rawValue.getter()
{
  result = 0x6D6F7246646F6F6DLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD000000000000027;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

unint64_t sub_1C7132D10@<X0>(unint64_t *a1@<X8>)
{
  result = StoryMusicCurationDiagnostics.MoodCurationSource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSubscriptionStatus.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.prompt.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t type metadata accessor for StoryMusicCurationDiagnostics(uint64_t a1)
{
  result = qword_1EDD0D6F8;
  if (!qword_1EDD0D6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StoryMusicCurationDiagnostics.curationOptions.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = type metadata accessor for StoryMusicCurationDiagnostics(v2);
  return sub_1C71343B0(v0, v1 + *(v3 + 24), &qword_1EC217C28, &unk_1C756E200);
}

uint64_t StoryMusicCurationDiagnostics.curationOptions.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.embeddingApproach.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);
  OUTLINED_FUNCTION_22_2();
  return OUTLINED_FUNCTION_90();
}

uint64_t StoryMusicCurationDiagnostics.embeddingApproach.setter()
{
  OUTLINED_FUNCTION_19_24();
  result = OUTLINED_FUNCTION_26_20();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.embeddingApproach.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.maestroUnfilteredKeywords.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationDiagnostics.maestroUnfilteredKeywords.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for StoryMusicCurationDiagnostics(v2) + 32);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.maestroUnfilteredKeywords.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.maestroCuratedKeywords.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationDiagnostics.maestroCuratedKeywords.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for StoryMusicCurationDiagnostics(v2) + 36);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.maestroCuratedKeywords.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.maestroCuratedKeywordsWithMood.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationDiagnostics.maestroCuratedKeywordsWithMood.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for StoryMusicCurationDiagnostics(v2) + 40);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.maestroCuratedKeywordsWithMood.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.moodCuratedFromPrompt.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);
  OUTLINED_FUNCTION_22_2();
  return OUTLINED_FUNCTION_90();
}

uint64_t StoryMusicCurationDiagnostics.moodCuratedFromPrompt.setter()
{
  OUTLINED_FUNCTION_19_24();
  result = OUTLINED_FUNCTION_26_20();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.moodCuratedFromPrompt.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.moodUsed.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);
  OUTLINED_FUNCTION_22_2();
  return OUTLINED_FUNCTION_90();
}

uint64_t StoryMusicCurationDiagnostics.moodUsed.setter()
{
  OUTLINED_FUNCTION_19_24();
  result = OUTLINED_FUNCTION_26_20();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.moodUsed.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.moodUsedDetails.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);
  OUTLINED_FUNCTION_22_2();
  return OUTLINED_FUNCTION_90();
}

uint64_t StoryMusicCurationDiagnostics.moodUsedDetails.setter()
{
  OUTLINED_FUNCTION_19_24();
  result = OUTLINED_FUNCTION_26_20();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.moodUsedDetails.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.moodCurationSource.getter()
{
  result = OUTLINED_FUNCTION_27_22();
  *v0 = *(v1 + *(result + 56));
  return result;
}

uint64_t StoryMusicCurationDiagnostics.moodCurationSource.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StoryMusicCurationDiagnostics(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.moodCurationSource.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.moodCurationErrorsEncountered.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationDiagnostics.moodCurationErrorsEncountered.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for StoryMusicCurationDiagnostics(v2) + 60);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.moodCurationErrorsEncountered.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicIsUserSubscriptionEligible.setter(char a1)
{
  result = type metadata accessor for StoryMusicCurationDiagnostics(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicIsUserSubscriptionEligible.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicCurationTechnique.getter()
{
  result = OUTLINED_FUNCTION_27_22();
  *v0 = *(v1 + *(result + 68));
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicCurationTechnique.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StoryMusicCurationDiagnostics(0);
  *(v1 + *(result + 68)) = v2;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicCurationTechnique.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchEnabled.setter(char a1)
{
  result = type metadata accessor for StoryMusicCurationDiagnostics(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchEnabled.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSearchPrompt.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);
  OUTLINED_FUNCTION_22_2();
  return OUTLINED_FUNCTION_90();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSearchPrompt.setter()
{
  OUTLINED_FUNCTION_19_24();
  result = OUTLINED_FUNCTION_26_20();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSearchPrompt.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchMode.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);
  OUTLINED_FUNCTION_22_2();
  return OUTLINED_FUNCTION_90();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchMode.setter()
{
  OUTLINED_FUNCTION_19_24();
  result = OUTLINED_FUNCTION_26_20();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchMode.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchUnfilteredKeywords.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchUnfilteredKeywords.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for StoryMusicCurationDiagnostics(v2) + 84);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchUnfilteredKeywords.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchCandidateKeywords.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchCandidateKeywords.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for StoryMusicCurationDiagnostics(v2) + 88);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchCandidateKeywords.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchCuratedKeywords.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchCuratedKeywords.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for StoryMusicCurationDiagnostics(v2) + 92);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchCuratedKeywords.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSongsFilteredForExplicit.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSongsFilteredForExplicit.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for StoryMusicCurationDiagnostics(v2) + 96);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSongsFilteredForExplicit.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchCleanResults.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchCleanResults.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for StoryMusicCurationDiagnostics(v2) + 100);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchCleanResults.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSongsFilteredOutRecentlyUsed.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSongsFilteredOutRecentlyUsed.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for StoryMusicCurationDiagnostics(v2) + 104);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSongsFilteredOutRecentlyUsed.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSongsSafe.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSongsSafe.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for StoryMusicCurationDiagnostics(v2) + 108);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSongsSafe.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSongsUnsafe.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSongsUnsafe.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for StoryMusicCurationDiagnostics(v2) + 112);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSongsUnsafe.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSongsSafetyUnchecked.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSongsSafetyUnchecked.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for StoryMusicCurationDiagnostics(v2) + 116);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSongsSafetyUnchecked.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchFinalCandidateSongs.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchFinalCandidateSongs.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for StoryMusicCurationDiagnostics(v2) + 120);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicSmartSearchFinalCandidateSongs.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.storyMusicCacheVersion.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);
  OUTLINED_FUNCTION_22_2();
  return OUTLINED_FUNCTION_90();
}

uint64_t StoryMusicCurationDiagnostics.storyMusicCacheVersion.setter()
{
  OUTLINED_FUNCTION_19_24();
  result = OUTLINED_FUNCTION_26_20();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.storyMusicCacheVersion.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicCurationUsedFallback.setter(char a1)
{
  result = type metadata accessor for StoryMusicCurationDiagnostics(0);
  *(v1 + *(result + 128)) = a1;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicCurationUsedFallback.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicCurationErrorsEncountered.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicCurationErrorsEncountered.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for StoryMusicCurationDiagnostics(v2) + 132);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicCurationErrorsEncountered.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.flexMusicCurationErrorsEncountered.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationDiagnostics.flexMusicCurationErrorsEncountered.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for StoryMusicCurationDiagnostics(v2) + 136);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.flexMusicCurationErrorsEncountered.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.curationTrail.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationDiagnostics.curationTrail.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for StoryMusicCurationDiagnostics(v2) + 140);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.curationTrail.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.flexMobileAssetsConfig.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = type metadata accessor for StoryMusicCurationDiagnostics(v2);
  return sub_1C71343B0(v0, v1 + *(v3 + 144), &qword_1EC216CE8, &unk_1C7569C40);
}

uint64_t sub_1C71343B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_164(a1, a2, a3, a4);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return v4;
}

uint64_t StoryMusicCurationDiagnostics.flexMobileAssetsConfig.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.maestroMobileAssetsConfig.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = type metadata accessor for StoryMusicCurationDiagnostics(v2);
  return sub_1C71343B0(v0, v1 + *(v3 + 148), &qword_1EC216CE8, &unk_1C7569C40);
}

uint64_t StoryMusicCurationDiagnostics.maestroMobileAssetsConfig.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicPADRequestOptions.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationDiagnostics.appleMusicPADRequestOptions.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for StoryMusicCurationDiagnostics(v2) + 152);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.appleMusicPADRequestOptions.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t StoryMusicCurationDiagnostics.flexMusicPADRequestOptions.getter()
{
  type metadata accessor for StoryMusicCurationDiagnostics(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationDiagnostics.flexMusicPADRequestOptions.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for StoryMusicCurationDiagnostics(v2) + 156);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StoryMusicCurationDiagnostics.flexMusicPADRequestOptions.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for StoryMusicCurationDiagnostics(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t sub_1C7134660(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001CLL && 0x80000001C759FFE0 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F697461727563 && a2 == 0xEF736E6F6974704FLL;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001C75A0000 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000019 && 0x80000001C75A0020 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x80000001C75A0040 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001ELL && 0x80000001C75A0060 == a2;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000015 && 0x80000001C75A0080 == a2;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x64657355646F6F6DLL && a2 == 0xE800000000000000;
                  if (v13 || (sub_1C7551DBC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x64657355646F6F6DLL && a2 == 0xEF736C6961746544;
                    if (v14 || (sub_1C7551DBC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000012 && 0x80000001C75A00A0 == a2;
                      if (v15 || (sub_1C7551DBC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001DLL && 0x80000001C75A00C0 == a2;
                        if (v16 || (sub_1C7551DBC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000024 && 0x80000001C75A00E0 == a2;
                          if (v17 || (sub_1C7551DBC() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001BLL && 0x80000001C75A0110 == a2;
                            if (v18 || (sub_1C7551DBC() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD00000000000001CLL && 0x80000001C75A0130 == a2;
                              if (v19 || (sub_1C7551DBC() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000016 && 0x80000001C75A0150 == a2;
                                if (v20 || (sub_1C7551DBC() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000019 && 0x80000001C75A0170 == a2;
                                  if (v21 || (sub_1C7551DBC() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000027 && 0x80000001C75A0190 == a2;
                                    if (v22 || (sub_1C7551DBC() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000026 && 0x80000001C75A01C0 == a2;
                                      if (v23 || (sub_1C7551DBC() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000024 && 0x80000001C75A01F0 == a2;
                                        if (v24 || (sub_1C7551DBC() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000022 && 0x80000001C75A0220 == a2;
                                          if (v25 || (sub_1C7551DBC() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000021 && 0x80000001C75A0250 == a2;
                                            if (v26 || (sub_1C7551DBC() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000026 && 0x80000001C75A0280 == a2;
                                              if (v27 || (sub_1C7551DBC() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000013 && 0x80000001C75A02B0 == a2;
                                                if (v28 || (sub_1C7551DBC() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000015 && 0x80000001C75A02D0 == a2;
                                                  if (v29 || (sub_1C7551DBC() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD00000000000001ELL && 0x80000001C75A02F0 == a2;
                                                    if (v30 || (sub_1C7551DBC() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000028 && 0x80000001C75A0310 == a2;
                                                      if (v31 || (sub_1C7551DBC() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000016 && 0x80000001C75A0340 == a2;
                                                        if (v32 || (sub_1C7551DBC() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD00000000000001ELL && 0x80000001C75A0360 == a2;
                                                          if (v33 || (sub_1C7551DBC() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000023 && 0x80000001C75A0380 == a2;
                                                            if (v34 || (sub_1C7551DBC() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000022 && 0x80000001C75A03B0 == a2;
                                                              if (v35 || (sub_1C7551DBC() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0x6E6F697461727563 && a2 == 0xED00006C69617254;
                                                                if (v36 || (sub_1C7551DBC() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD000000000000016 && 0x80000001C75A03E0 == a2;
                                                                  if (v37 || (sub_1C7551DBC() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000019 && 0x80000001C75A0400 == a2;
                                                                    if (v38 || (sub_1C7551DBC() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD00000000000001BLL && 0x80000001C75A0420 == a2;
                                                                      if (v39 || (sub_1C7551DBC() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else if (a1 == 0xD00000000000001ALL && 0x80000001C75A0440 == a2)
                                                                      {

                                                                        return 35;
                                                                      }

                                                                      else
                                                                      {
                                                                        v41 = sub_1C7551DBC();

                                                                        if (v41)
                                                                        {
                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          return 36;
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C71350B4(char a1)
{
  result = 0x74706D6F7270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 31:
      result = 0x6E6F697461727563;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
    case 16:
    case 33:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
    case 25:
    case 28:
      result = 0xD00000000000001ELL;
      break;
    case 7:
    case 24:
      result = 0xD000000000000015;
      break;
    case 8:
    case 9:
      result = 0x64657355646F6F6DLL;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 12:
    case 19:
      result = 0xD000000000000024;
      break;
    case 13:
    case 34:
      result = 0xD00000000000001BLL;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 17:
      result = 0xD000000000000027;
      break;
    case 18:
    case 22:
      result = 0xD000000000000026;
      break;
    case 20:
    case 30:
      result = 0xD000000000000022;
      break;
    case 21:
      result = 0xD000000000000021;
      break;
    case 23:
      result = 0xD000000000000013;
      break;
    case 26:
      result = 0xD000000000000028;
      break;
    case 27:
      result = 0xD000000000000016;
      break;
    case 29:
      result = 0xD000000000000023;
      break;
    case 32:
      result = 0xD000000000000016;
      break;
    case 35:
      result = 0xD00000000000001ALL;
      break;
    default:
      result = 0xD00000000000001CLL;
      break;
  }

  return result;
}

uint64_t sub_1C7135448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7134660(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7135470@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C71350AC();
  *a1 = result;
  return result;
}

uint64_t sub_1C7135498(uint64_t a1)
{
  v2 = sub_1C7135CC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71354D4(uint64_t a1)
{
  v2 = sub_1C7135CC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StoryMusicCurationDiagnostics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217C30, &qword_1C756E210);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7135CC4();
  sub_1C755200C();
  v17 = 0;
  OUTLINED_FUNCTION_7_33();
  sub_1C7551C7C();
  if (!v2)
  {
    OUTLINED_FUNCTION_4_38(1);
    v9 = type metadata accessor for StoryMusicCurationDiagnostics(0);
    v17 = 2;
    type metadata accessor for StoryMusicCurationOptions(0);
    sub_1C7135F94(&qword_1EDD090D0, type metadata accessor for StoryMusicCurationOptions, protocol conformance descriptor for StoryMusicCurationOptions);
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_7_33();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_22_27(v9[7]);
    OUTLINED_FUNCTION_4_38(3);
    OUTLINED_FUNCTION_12_31(v9[8]);
    v16 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217C38, &qword_1C756E218);
    sub_1C7135DC8(&qword_1EDD06C40, &qword_1EC217C38, &qword_1C756E218, sub_1C7135D18);
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_7_33();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_12_31(v9[9]);
    v16 = 5;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0, &unk_1C756AF00);
    v11 = sub_1C7135E38();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_5_40();
    sub_1C7551D2C();
    v15[3] = v11;
    v15[4] = v10;
    OUTLINED_FUNCTION_12_31(v9[10]);
    v16 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F30, &qword_1C757ED70);
    sub_1C7135FDC(&qword_1EC217C48, &qword_1EC214F30, &qword_1C757ED70, MEMORY[0x1E69E6458]);
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_7_33();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_22_27(v9[11]);
    OUTLINED_FUNCTION_4_38(7);
    OUTLINED_FUNCTION_22_27(v9[12]);
    OUTLINED_FUNCTION_4_38(8);
    OUTLINED_FUNCTION_22_27(v9[13]);
    OUTLINED_FUNCTION_4_38(9);
    v17 = *(v3 + v9[14]);
    v16 = 10;
    sub_1C7135EEC();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_7_33();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_12_31(v9[15]);
    v16 = 11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C6FC18BC();
    OUTLINED_FUNCTION_1_52();
    v15[1] = v13;
    v15[2] = v12;
    OUTLINED_FUNCTION_7_33();
    sub_1C7551D2C();
    v17 = 12;
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_7_33();
    sub_1C7551C8C();
    v17 = *(v3 + v9[17]);
    v16 = 13;
    sub_1C7135F40();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_7_33();
    sub_1C7551CBC();
    v17 = 14;
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_7_33();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_22_27(v9[19]);
    OUTLINED_FUNCTION_4_38(15);
    OUTLINED_FUNCTION_22_27(v9[20]);
    OUTLINED_FUNCTION_4_38(16);
    OUTLINED_FUNCTION_12_31(v9[21]);
    OUTLINED_FUNCTION_0_70(17);
    OUTLINED_FUNCTION_7_33();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_12_31(v9[22]);
    OUTLINED_FUNCTION_0_70(18);
    OUTLINED_FUNCTION_7_33();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_12_31(v9[23]);
    OUTLINED_FUNCTION_0_70(19);
    OUTLINED_FUNCTION_7_33();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_12_31(v9[24]);
    OUTLINED_FUNCTION_0_70(20);
    OUTLINED_FUNCTION_7_33();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_12_31(v9[25]);
    OUTLINED_FUNCTION_0_70(21);
    OUTLINED_FUNCTION_7_33();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_12_31(v9[26]);
    OUTLINED_FUNCTION_0_70(22);
    OUTLINED_FUNCTION_7_33();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_12_31(v9[27]);
    OUTLINED_FUNCTION_0_70(23);
    OUTLINED_FUNCTION_7_33();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_12_31(v9[28]);
    OUTLINED_FUNCTION_0_70(24);
    OUTLINED_FUNCTION_7_33();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_12_31(v9[29]);
    OUTLINED_FUNCTION_0_70(25);
    OUTLINED_FUNCTION_7_33();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_12_31(v9[30]);
    OUTLINED_FUNCTION_0_70(26);
    OUTLINED_FUNCTION_7_33();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_22_27(v9[31]);
    OUTLINED_FUNCTION_4_38(27);
    v17 = 28;
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_7_33();
    sub_1C7551C8C();
    OUTLINED_FUNCTION_12_31(v9[33]);
    OUTLINED_FUNCTION_0_70(29);
    OUTLINED_FUNCTION_7_33();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_12_31(v9[34]);
    OUTLINED_FUNCTION_0_70(30);
    OUTLINED_FUNCTION_7_33();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_12_31(v9[35]);
    OUTLINED_FUNCTION_0_70(31);
    OUTLINED_FUNCTION_7_33();
    sub_1C7551D2C();
    v17 = 32;
    type metadata accessor for MusicMobileAssetsConfig(0);
    sub_1C7135F94(&qword_1EC217C50, type metadata accessor for MusicMobileAssetsConfig, protocol conformance descriptor for MusicMobileAssetsConfig);
    OUTLINED_FUNCTION_3_49();
    sub_1C7551CBC();
    v17 = 33;
    OUTLINED_FUNCTION_3_49();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_12_31(v9[38]);
    v16 = 34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50, &qword_1C75633A0);
    sub_1C7135FDC(&qword_1EDD06C70, &qword_1EC214C50, &qword_1C75633A0, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_5_40();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_12_31(v9[39]);
    OUTLINED_FUNCTION_0_70(35);
    OUTLINED_FUNCTION_5_40();
    sub_1C7551D2C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C7135CC4()
{
  result = qword_1EDD07EF8;
  if (!qword_1EDD07EF8)
  {
    result = swift_getWitnessTable(byte_1C756E5A4, &type metadata for StoryMusicCurationDiagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07EF8);
  }

  return result;
}

unint64_t sub_1C7135D18()
{
  result = qword_1EDD06AC8;
  if (!qword_1EDD06AC8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217C40, &unk_1C756E220);
    v4[0] = sub_1C7135DC8(&qword_1EDD06C48, &qword_1EC214D00, &unk_1C755BE80, sub_1C7135E38);
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EDD06AC8);
  }

  return result;
}

uint64_t sub_1C7135DC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = a4();
    v10 = MEMORY[0x1E69E6160];
    v11 = v8;
    v9 = OUTLINED_FUNCTION_15_29();
    result = swift_getWitnessTable(v9, v7, v10, v11);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7135E38()
{
  result = qword_1EDD06B50;
  if (!qword_1EDD06B50)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2155F0, &unk_1C756AF00);
    v4[0] = sub_1C7135F94(&qword_1EDD09B18, type metadata accessor for MusicKeywordCompletion, protocol conformance descriptor for MusicKeywordCompletion);
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EDD06B50);
  }

  return result;
}

unint64_t sub_1C7135EEC()
{
  result = qword_1EDD07F08;
  if (!qword_1EDD07F08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicCurationDiagnostics.MoodCurationSource, &type metadata for StoryMusicCurationDiagnostics.MoodCurationSource, v0, v1);
    atomic_store(result, &qword_1EDD07F08);
  }

  return result;
}

unint64_t sub_1C7135F40()
{
  result = qword_1EDD08BF0;
  if (!qword_1EDD08BF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicCurationTechnique, &type metadata for StoryMusicCurationTechnique, v0, v1);
    atomic_store(result, &qword_1EDD08BF0);
  }

  return result;
}

uint64_t sub_1C7135F94(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C7135FDC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = MEMORY[0x1E69E6160];
    v7 = OUTLINED_FUNCTION_15_29();
    result = swift_getWitnessTable(v7, v8, a4);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C7136038()
{
  v1 = OUTLINED_FUNCTION_27_22();
  *v0 = 0u;
  v0[1] = 0u;
  v2 = v1[6];
  v3 = type metadata accessor for StoryMusicCurationOptions(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  OUTLINED_FUNCTION_21_23(v1[7]);
  v4 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217C40, &unk_1C756E220);
  v5 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_154();
  *(v0 + v4) = sub_1C75504DC();
  *(v0 + v1[9]) = v5;
  *(v0 + v1[10]) = 0;
  OUTLINED_FUNCTION_21_23(v1[11]);
  OUTLINED_FUNCTION_21_23(v1[12]);
  OUTLINED_FUNCTION_21_23(v1[13]);
  *(v0 + v1[14]) = 7;
  *(v0 + v1[15]) = v5;
  *(v0 + v1[16]) = 2;
  *(v0 + v1[17]) = 4;
  *(v0 + v1[18]) = 0;
  OUTLINED_FUNCTION_21_23(v1[19]);
  OUTLINED_FUNCTION_21_23(v1[20]);
  *(v0 + v1[21]) = v5;
  *(v0 + v1[22]) = v5;
  *(v0 + v1[23]) = v5;
  *(v0 + v1[24]) = v5;
  *(v0 + v1[25]) = v5;
  *(v0 + v1[26]) = v5;
  *(v0 + v1[27]) = v5;
  *(v0 + v1[28]) = v5;
  *(v0 + v1[29]) = v5;
  *(v0 + v1[30]) = v5;
  OUTLINED_FUNCTION_21_23(v1[31]);
  *(v0 + v1[32]) = v6;
  *(v0 + v1[33]) = v5;
  *(v0 + v1[34]) = v5;
  *(v0 + v1[35]) = v5;
  v7 = v1[36];
  v8 = type metadata accessor for MusicMobileAssetsConfig(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  __swift_storeEnumTagSinglePayload(v0 + v1[37], 1, 1, v8);
  v9 = v1[38];
  OUTLINED_FUNCTION_154();
  *(v0 + v9) = sub_1C75504DC();
  v10 = v1[39];
  OUTLINED_FUNCTION_154();
  result = sub_1C75504DC();
  *(v0 + v10) = result;
  return result;
}

unint64_t StoryMusicCurationDiagnostics.description.getter()
{
  v1 = v0;
  v2 = 0xD00000000000001BLL;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217C28, &unk_1C756E200);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v103 - v4;
  v6 = type metadata accessor for StoryMusicCurationOptions(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  v104 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216CE8, &unk_1C7569C40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v103 - v13;
  OUTLINED_FUNCTION_3_1();
  v111 = 0xD00000000000001ELL;
  v112 = v15;
  OUTLINED_FUNCTION_2_49();
  sub_1C755180C();

  OUTLINED_FUNCTION_3_1();
  *&v105 = 0xD00000000000001BLL;
  *(&v105 + 1) = v16;
  v17 = type metadata accessor for StoryMusicCurationDiagnostics(0);
  sub_1C70424A0(v0 + v17[36], v14, &qword_1EC216CE8, &unk_1C7569C40);
  v18 = type metadata accessor for MusicMobileAssetsConfig(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    v19 = 0x6E776F6E6B6E55;
    sub_1C6FD7FC8(v14, &qword_1EC216CE8, &unk_1C7569C40);
    v2 = 0xE700000000000000;
  }

  else
  {
    v19 = MusicMobileAssetsConfig.shortDescription.getter();
    OUTLINED_FUNCTION_14_29();
    sub_1C7137388();
  }

  MEMORY[0x1CCA5CD70](v19, v2);

  OUTLINED_FUNCTION_11_30();

  v20 = *(v0 + v17[16]);
  if (v20 == 2)
  {
    MEMORY[0x1CCA5CD70](0xD000000000000030, 0x80000001C759FAA0);
  }

  else
  {
    OUTLINED_FUNCTION_2_49();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD00000000000001ELL;
    *(&v105 + 1) = v21;
    sub_1C70424A0(v0 + v17[37], v11, &qword_1EC216CE8, &unk_1C7569C40);
    if (__swift_getEnumTagSinglePayload(v11, 1, v18) == 1)
    {
      v22 = 0x6E776F6E6B6E55;
      sub_1C6FD7FC8(v11, &qword_1EC216CE8, &unk_1C7569C40);
      v2 = 0xE700000000000000;
    }

    else
    {
      v22 = MusicMobileAssetsConfig.shortDescription.getter();
      OUTLINED_FUNCTION_14_29();
      sub_1C7137388();
    }

    MEMORY[0x1CCA5CD70](v22, v2);

    OUTLINED_FUNCTION_11_30();

    OUTLINED_FUNCTION_2_49();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD000000000000029;
    *(&v105 + 1) = v23;
    if (v20)
    {
      v24 = 1702195828;
    }

    else
    {
      v24 = 0x65736C6166;
    }

    if (v20)
    {
      v25 = 0xE400000000000000;
    }

    else
    {
      v25 = 0xE500000000000000;
    }

    MEMORY[0x1CCA5CD70](v24, v25);

    OUTLINED_FUNCTION_11_30();
  }

  v26 = v0[1];
  if (v26)
  {
    v27 = *v0;
    OUTLINED_FUNCTION_2_49();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD000000000000021;
    *(&v105 + 1) = v28;
    MEMORY[0x1CCA5CD70](v27, v26);
    OUTLINED_FUNCTION_11_30();
  }

  if (v0[3])
  {
    v29 = v0[2];
    *&v105 = 0x74706D6F7250200ALL;
    *(&v105 + 1) = 0xEB00000000203D20;
    MEMORY[0x1CCA5CD70](v29);
    OUTLINED_FUNCTION_11_30();
  }

  MEMORY[0x1CCA5CD70](0x203D205551200ALL, 0xE700000000000000);
  sub_1C70424A0(v0 + v17[6], v5, &qword_1EC217C28, &unk_1C756E200);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1C6FD7FC8(v5, &qword_1EC217C28, &unk_1C756E200);
  }

  else
  {
    v30 = v5;
    v31 = v104;
    sub_1C7137324(v30, v104);
    v32 = v31 + *(v6 + 88);
    v33 = *(v32 + 48);
    if (v33)
    {
      v34 = *(v32 + 64);
      v35 = *(v32 + 56);
      v36 = *(v32 + 40);
      v105 = *(v32 + 24);
      v106 = v36;
      v107 = v33;
      v108 = v35;
      v109 = v34 & 0xFF01;
      v37 = StoryPromptAttributes.jsonDescription.getter();
      MEMORY[0x1CCA5CD70](v37);

      OUTLINED_FUNCTION_20_26();
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_20_26();
  }

  MEMORY[0x1CCA5CD70](1701736270, 0xE400000000000000);
LABEL_26:
  if (*(v0 + v17[7] + 8))
  {
    OUTLINED_FUNCTION_2_49();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD000000000000016;
    *(&v105 + 1) = v38;
    v39 = OUTLINED_FUNCTION_154();
    MEMORY[0x1CCA5CD70](v39);
    OUTLINED_FUNCTION_11_30();
  }

  v40 = *(v0 + v17[8]);
  if (*(v40 + 16))
  {
    MEMORY[0x1CCA5CD70](0xD00000000000001DLL, 0x80000001C759FF20);
    sub_1C7132A08(v40);
  }

  OUTLINED_FUNCTION_16_23();
  sub_1C755180C();

  OUTLINED_FUNCTION_3_1();
  *&v105 = 0xD00000000000001BLL;
  *(&v105 + 1) = v41;
  v42 = *(v0 + v17[9]);
  v43 = type metadata accessor for MusicKeywordCompletion();
  v44 = MEMORY[0x1CCA5D090](v42, v43);
  MEMORY[0x1CCA5CD70](v44);

  OUTLINED_FUNCTION_10_36();

  if (*(v1 + v17[10]))
  {
    OUTLINED_FUNCTION_16_23();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD000000000000023;
    *(&v105 + 1) = v45;
    v46 = sub_1C75504BC();
    MEMORY[0x1CCA5CD70](v46);

    OUTLINED_FUNCTION_10_36();
  }

  v47 = (v1 + v17[11]);
  v48 = v47[1];
  if (v48)
  {
    v49 = *v47;
    OUTLINED_FUNCTION_2_49();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD00000000000001ALL;
    *(&v105 + 1) = v50;
    MEMORY[0x1CCA5CD70](v49, v48);
    OUTLINED_FUNCTION_10_36();
  }

  v51 = (v1 + v17[12]);
  if (v51[1])
  {
    v52 = *v51;
    strcpy(&v105, "\n moodUsed = ");
    HIWORD(v105) = -4864;
    MEMORY[0x1CCA5CD70](v52);
    OUTLINED_FUNCTION_10_36();
  }

  v53 = (v1 + v17[13]);
  v54 = v53[1];
  if (v54)
  {
    v55 = *v53;
    OUTLINED_FUNCTION_2_49();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD000000000000014;
    *(&v105 + 1) = v56;
    MEMORY[0x1CCA5CD70](v55, v54);
    OUTLINED_FUNCTION_10_36();
  }

  v57 = *(v1 + v17[14]);
  if (v57 != 7)
  {
    OUTLINED_FUNCTION_2_49();
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C759FE90);
    v110 = v57;
    sub_1C75519EC();
    OUTLINED_FUNCTION_10_36();
  }

  v58 = *(v1 + v17[15]);
  if (*(v58 + 16))
  {
    OUTLINED_FUNCTION_2_49();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD000000000000020;
    *(&v105 + 1) = v59;
    v60 = MEMORY[0x1CCA5D090](v58, MEMORY[0x1E69E6158]);
    MEMORY[0x1CCA5CD70](v60);

    OUTLINED_FUNCTION_10_36();
  }

  v61 = *(v1 + v17[17]);
  if (v61 != 4)
  {
    OUTLINED_FUNCTION_2_49();
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000020, 0x80000001C759FE30);
    v110 = v61;
    sub_1C75519EC();
    OUTLINED_FUNCTION_10_36();
  }

  if (*(*(v1 + v17[38]) + 16))
  {
    OUTLINED_FUNCTION_2_49();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD000000000000020;
    *(&v105 + 1) = v62;
    v63 = sub_1C75504BC();
    MEMORY[0x1CCA5CD70](v63);

    OUTLINED_FUNCTION_10_36();
  }

  if (*(*(v1 + v17[39]) + 16))
  {
    OUTLINED_FUNCTION_2_49();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD00000000000001FLL;
    *(&v105 + 1) = v64;
    v65 = sub_1C75504BC();
    MEMORY[0x1CCA5CD70](v65);

    OUTLINED_FUNCTION_10_36();
  }

  OUTLINED_FUNCTION_16_23();
  sub_1C755180C();

  OUTLINED_FUNCTION_3_1();
  v66 = *(v1 + v17[18]);
  *&v105 = 0xD000000000000021;
  *(&v105 + 1) = v67;
  if (v66)
  {
    v68 = 1702195828;
  }

  else
  {
    v68 = 0x65736C6166;
  }

  if (v66)
  {
    v69 = 0xE400000000000000;
  }

  else
  {
    v69 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v68, v69);

  OUTLINED_FUNCTION_10_36();

  if (v66 == 1)
  {
    OUTLINED_FUNCTION_16_23();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD00000000000002CLL;
    *(&v105 + 1) = v70;
    OUTLINED_FUNCTION_25_14();
    MEMORY[0x1CCA5CD70]();

    OUTLINED_FUNCTION_10_36();

    OUTLINED_FUNCTION_16_23();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD00000000000002BLL;
    *(&v105 + 1) = v71;
    OUTLINED_FUNCTION_25_14();
    MEMORY[0x1CCA5CD70]();

    OUTLINED_FUNCTION_10_36();

    OUTLINED_FUNCTION_16_23();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD000000000000029;
    *(&v105 + 1) = v72;
    OUTLINED_FUNCTION_25_14();
    MEMORY[0x1CCA5CD70]();

    OUTLINED_FUNCTION_11_30();

    if (*(v1 + v17[19] + 8))
    {
      OUTLINED_FUNCTION_2_49();
      sub_1C755180C();

      OUTLINED_FUNCTION_3_1();
      *&v105 = 0xD00000000000001BLL;
      *(&v105 + 1) = v73;
      v74 = OUTLINED_FUNCTION_154();
      MEMORY[0x1CCA5CD70](v74);
      OUTLINED_FUNCTION_11_30();
    }

    if (*(v1 + v17[20] + 8))
    {
      OUTLINED_FUNCTION_2_49();
      sub_1C755180C();

      OUTLINED_FUNCTION_3_1();
      *&v105 = 0xD00000000000001ELL;
      *(&v105 + 1) = v75;
      v76 = OUTLINED_FUNCTION_154();
      MEMORY[0x1CCA5CD70](v76);
      OUTLINED_FUNCTION_11_30();
    }

    OUTLINED_FUNCTION_16_23();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD000000000000027;
    *(&v105 + 1) = v77;
    v78 = MEMORY[0x1CCA5D090](*(v1 + v17[24]), MEMORY[0x1E69E6158]);
    MEMORY[0x1CCA5CD70](v78);

    OUTLINED_FUNCTION_10_36();

    OUTLINED_FUNCTION_16_23();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD000000000000026;
    *(&v105 + 1) = v79;
    OUTLINED_FUNCTION_25_14();
    MEMORY[0x1CCA5CD70]();

    OUTLINED_FUNCTION_10_36();

    OUTLINED_FUNCTION_16_23();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD00000000000002BLL;
    *(&v105 + 1) = v80;
    OUTLINED_FUNCTION_25_14();
    MEMORY[0x1CCA5CD70]();

    OUTLINED_FUNCTION_10_36();

    OUTLINED_FUNCTION_16_23();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD000000000000018;
    *(&v105 + 1) = v81;
    OUTLINED_FUNCTION_25_14();
    MEMORY[0x1CCA5CD70]();

    OUTLINED_FUNCTION_10_36();

    OUTLINED_FUNCTION_16_23();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD00000000000001ALL;
    *(&v105 + 1) = v82;
    OUTLINED_FUNCTION_25_14();
    MEMORY[0x1CCA5CD70]();

    OUTLINED_FUNCTION_10_36();

    OUTLINED_FUNCTION_16_23();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD000000000000023;
    *(&v105 + 1) = v83;
    OUTLINED_FUNCTION_25_14();
    MEMORY[0x1CCA5CD70]();

    OUTLINED_FUNCTION_11_30();

    v88 = sub_1C71371D0(*(v1 + v17[30]), 2128906, 0xE300000000000000, v84, v85, v86, v87);
    *&v105 = 0xD00000000000002DLL;
    *(&v105 + 1) = 0x80000001C759FD70;
    MEMORY[0x1CCA5CD70](v88);

    OUTLINED_FUNCTION_11_30();
  }

  v89 = *(v1 + v17[32]);
  if (v89 != 2)
  {
    OUTLINED_FUNCTION_2_49();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD000000000000023;
    *(&v105 + 1) = v90;
    if (v89)
    {
      v91 = 1702195828;
    }

    else
    {
      v91 = 0x65736C6166;
    }

    if (v89)
    {
      v92 = 0xE400000000000000;
    }

    else
    {
      v92 = 0xE500000000000000;
    }

    MEMORY[0x1CCA5CD70](v91, v92);

    OUTLINED_FUNCTION_11_30();
  }

  v93 = *(v1 + v17[33]);
  if (*(v93 + 16))
  {
    OUTLINED_FUNCTION_2_49();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD000000000000028;
    *(&v105 + 1) = v94;
    v95 = MEMORY[0x1CCA5D090](v93, MEMORY[0x1E69E6158]);
    MEMORY[0x1CCA5CD70](v95);

    OUTLINED_FUNCTION_11_30();
  }

  v96 = *(v1 + v17[34]);
  if (*(v96 + 16))
  {
    OUTLINED_FUNCTION_2_49();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD000000000000027;
    *(&v105 + 1) = v97;
    v98 = MEMORY[0x1CCA5D090](v96, MEMORY[0x1E69E6158]);
    MEMORY[0x1CCA5CD70](v98);

    OUTLINED_FUNCTION_11_30();
  }

  v99 = *(v1 + v17[35]);
  if (*(v99 + 16))
  {
    OUTLINED_FUNCTION_2_49();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v105 = 0xD000000000000012;
    *(&v105 + 1) = v100;
    v101 = MEMORY[0x1CCA5D090](v99, MEMORY[0x1E69E6158]);
    MEMORY[0x1CCA5CD70](v101);

    MEMORY[0x1CCA5CD70](v105, *(&v105 + 1));
  }

  return v111;
}

uint64_t sub_1C71371D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v7, 0, a4, a5, a6, a7);
    v9 = (a1 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v13 = *(v23 + 16);
      v12 = *(v23 + 24);
      sub_1C75504FC();
      if (v13 >= v12 >> 1)
      {
        sub_1C6F7ED9C(v12 > 1, v13 + 1, 1, v14, v15, v16, v17);
      }

      *(v23 + 16) = v13 + 1;
      v18 = v23 + 16 * v13;
      *(v18 + 32) = v11;
      *(v18 + 40) = v10;
      v9 += 2;
      --v7;
    }

    while (v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C703328C();
  v19 = sub_1C75505FC();
  v21 = v20;

  MEMORY[0x1CCA5CD70](v19, v21);

  return 2128906;
}

uint64_t sub_1C7137324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryMusicCurationOptions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7137388()
{
  v1 = OUTLINED_FUNCTION_300();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1C71373E0()
{
  result = qword_1EC217C58;
  if (!qword_1EC217C58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicCurationDiagnostics.MoodCurationSource, &type metadata for StoryMusicCurationDiagnostics.MoodCurationSource, v0, v1);
    atomic_store(result, &qword_1EC217C58);
  }

  return result;
}

uint64_t sub_1C713745C(uint64_t a1)
{
  sub_1C7137874(319, &qword_1EDD0D078, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1C71378C4(319, qword_1EDD0DA20, type metadata accessor for StoryMusicCurationOptions, MEMORY[0x1E69E6720]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1C713779C(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_1C71378C4(319, &qword_1EDD0CFE8, type metadata accessor for MusicKeywordCompletion, MEMORY[0x1E69E62F8]);
    if (v8 > 0x3F)
    {
      return v7;
    }

    sub_1C7137810(319);
    if (v9 > 0x3F)
    {
      return v4;
    }

    sub_1C7137874(319, qword_1EDD0D708, &type metadata for StoryMusicCurationDiagnostics.MoodCurationSource, MEMORY[0x1E69E6720]);
    if (v10 > 0x3F)
    {
      return v4;
    }

    sub_1C7137874(319, &qword_1EDD0CF70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v12 > 0x3F)
    {
      return v11;
    }

    sub_1C7137874(319, &qword_1EDD0CF00, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    if (v14 > 0x3F)
    {
      return v13;
    }

    sub_1C7137874(319, &qword_1EDD0D840, &type metadata for StoryMusicCurationTechnique, MEMORY[0x1E69E6720]);
    if (v15 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1C71378C4(319, qword_1EDD098D8, type metadata accessor for MusicMobileAssetsConfig, MEMORY[0x1E69E6720]);
      v2 = v16;
      if (v17 <= 0x3F)
      {
        sub_1C7137928();
        v2 = v18;
        if (v19 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_1C713779C(uint64_t a1)
{
  if (!qword_1EDD0D090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217C40, &unk_1C756E220);
    v1 = sub_1C755055C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD0D090);
    }
  }
}

void sub_1C7137810(uint64_t a1)
{
  if (!qword_1EDD0D088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC214F30, &qword_1C757ED70);
    v1 = sub_1C755149C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD0D088);
    }
  }
}

void sub_1C7137874(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C71378C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C7137928()
{
  if (!qword_1EDD06C80)
  {
    v0 = sub_1C755055C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD06C80);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for StoryMusicCurationDiagnostics.MoodCurationSource(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoryMusicCurationDiagnostics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDD)
  {
    if (a2 + 35 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 35) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 36;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v5 = v6 - 36;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StoryMusicCurationDiagnostics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDC)
  {
    v6 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
          *result = a2 + 35;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C7137BC8()
{
  result = qword_1EC217C60;
  if (!qword_1EC217C60)
  {
    result = swift_getWitnessTable(aC_0, &type metadata for StoryMusicCurationDiagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217C60);
  }

  return result;
}

unint64_t sub_1C7137C20()
{
  result = qword_1EDD07EE8;
  if (!qword_1EDD07EE8)
  {
    result = swift_getWitnessTable(byte_1C756E4EC, &type metadata for StoryMusicCurationDiagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07EE8);
  }

  return result;
}

unint64_t sub_1C7137C78()
{
  result = qword_1EDD07EF0;
  if (!qword_1EDD07EF0)
  {
    result = swift_getWitnessTable(byte_1C756E514, &type metadata for StoryMusicCurationDiagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07EF0);
  }

  return result;
}

unint64_t sub_1C7137CCC()
{
  result = qword_1EDD07F00;
  if (!qword_1EDD07F00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicCurationDiagnostics.MoodCurationSource, &type metadata for StoryMusicCurationDiagnostics.MoodCurationSource, v0, v1);
    atomic_store(result, &qword_1EDD07F00);
  }

  return result;
}

void OUTLINED_FUNCTION_21_23(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t StoryMusicCurationSong.description.getter()
{
  v85 = *v0;
  v77 = *(v0 + 1);
  v78 = *(v0 + 2);
  v79 = *(v0 + 3);
  v80 = *(v0 + 4);
  v83 = *(v0 + 5);
  v84 = *(v0 + 6);
  v1 = *(v0 + 7);
  v2 = v0[64];
  v3 = *(v0 + 9);
  v4 = v0[80];
  v5 = *(v0 + 12);
  v6 = *(v0 + 13);
  v7 = *(v0 + 14);
  v67 = v0[120];
  v64 = v0[121];
  v69 = *(v0 + 16);
  v70 = *(v0 + 17);
  v8 = *(v0 + 18);
  v9 = v0[152];
  v10 = *(v0 + 20);
  v11 = v0[168];
  v12 = *(v0 + 23);
  v72 = *(v0 + 22);
  if (*(v0 + 11))
  {
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C703328C();
    OUTLINED_FUNCTION_132_0();
    v81 = sub_1C75505FC();
    v82 = v13;

    if (v5)
    {
LABEL_3:
      sub_1C75504FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      sub_1C703328C();
      OUTLINED_FUNCTION_132_0();
      v71 = sub_1C75505FC();
      v15 = v14;

      goto LABEL_6;
    }
  }

  else
  {
    v81 = 0;
    v82 = 0xE000000000000000;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v71 = 0;
  v15 = 0xE000000000000000;
LABEL_6:
  v16 = MEMORY[0x1E69E63B0];
  v17 = MEMORY[0x1E69E6438];
  if (v2)
  {
    v68 = 0;
    v76 = 0xE000000000000000;
    if ((v4 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v66 = 0;
    v74 = 0xE000000000000000;
    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v65 = 0;
    v75 = 0xE000000000000000;
    goto LABEL_13;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v25 = OUTLINED_FUNCTION_95(v24);
  *(v25 + 16) = xmmword_1C755BAB0;
  *(v25 + 56) = v16;
  *(v25 + 64) = v17;
  *(v25 + 32) = v1;
  v68 = OUTLINED_FUNCTION_9_34();
  v76 = v26;
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_8:
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v19 = OUTLINED_FUNCTION_95(v18);
  *(v19 + 16) = xmmword_1C755BAB0;
  *(v19 + 56) = v16;
  *(v19 + 64) = v17;
  *(v19 + 32) = v3;
  v66 = OUTLINED_FUNCTION_9_34();
  v74 = v20;
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_9:
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v22 = OUTLINED_FUNCTION_95(v21);
  *(v22 + 16) = xmmword_1C755BAB0;
  *(v22 + 56) = v16;
  *(v22 + 64) = v17;
  *(v22 + 32) = v8;
  v65 = OUTLINED_FUNCTION_9_34();
  v75 = v23;
LABEL_13:
  if (v11)
  {
    v27 = v16;
    v28 = 0;
    v29 = 0xE000000000000000;
  }

  else
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v31 = OUTLINED_FUNCTION_95(v30);
    *(v31 + 16) = xmmword_1C755BAB0;
    v27 = v16;
    *(v31 + 56) = v16;
    *(v31 + 64) = MEMORY[0x1E69E6438];
    *(v31 + 32) = v10;
    v28 = OUTLINED_FUNCTION_9_34();
    v29 = v32;
  }

  if (v12)
  {
    v33 = v72;
  }

  else
  {
    v33 = 0;
  }

  if (v12)
  {
    v34 = v12;
  }

  else
  {
    v34 = 0xE000000000000000;
  }

  v35 = "edMoodsInferredFallback";
  v36 = 0;
  switch(v85)
  {
    case 1:
      v36 = 0;
      v35 = "appleMusicMaestro";
      break;
    case 2:
      v36 = 0;
      v35 = "appleMusicSimpleSearch";
      break;
    case 3:
      v35 = "appleMusicSmartSearch";
      v36 = 1;
      break;
    default:
      break;
  }

  if (v36 && (v35 | 0x8000000000000000) == 0x80000001C7595C30)
  {
    sub_1C75504FC();

LABEL_31:

    if (v6)
    {
      sub_1C75504FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      sub_1C703328C();
      v38 = sub_1C75505FC();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0xE000000000000000;
    }

    sub_1C755180C();
    sub_1C75504FC();

    v86 = v77;
    v41 = OUTLINED_FUNCTION_132_0();
    MEMORY[0x1CCA5CD70](v41);
    MEMORY[0x1CCA5CD70](v79, v80);
    v42 = OUTLINED_FUNCTION_132_0();
    MEMORY[0x1CCA5CD70](v42);
    MEMORY[0x1CCA5CD70](v83, v84);
    v43 = OUTLINED_FUNCTION_132_0();
    MEMORY[0x1CCA5CD70](v43);
    MEMORY[0x1CCA5CD70](v81, v82);

    v44 = OUTLINED_FUNCTION_132_0();
    MEMORY[0x1CCA5CD70](v44);
    MEMORY[0x1CCA5CD70](v71, v15);

    MEMORY[0x1CCA5CD70](5972012, 0xE300000000000000);
    MEMORY[0x1CCA5CD70](v38, v40);

    MEMORY[0x1CCA5CD70](2108509, 0xE300000000000000);
    MEMORY[0x1CCA5CD70](v33, v34);

    return v86;
  }

  v73 = v28;
  v37 = sub_1C7551DBC();
  sub_1C75504FC();

  if (v37)
  {

    goto LABEL_31;
  }

  if (v64 != 2)
  {
    if (v64)
    {
      v45 = 1702195828;
    }

    else
    {
      v45 = 0x65736C6166;
    }

    if (v64)
    {
      v46 = 0xE400000000000000;
    }

    else
    {
      v46 = 0xE500000000000000;
    }

    MEMORY[0x1CCA5CD70](v45, v46);
  }

  if (v67)
  {
    v47 = 0;
    v48 = 0xE000000000000000;
  }

  else
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v50 = OUTLINED_FUNCTION_95(v49);
    *(v50 + 16) = xmmword_1C755BAB0;
    *(v50 + 56) = v27;
    *(v50 + 64) = MEMORY[0x1E69E6438];
    *(v50 + 32) = v7;
    v47 = OUTLINED_FUNCTION_9_34();
    v48 = v51;
  }

  if (v70)
  {
    v52 = v69;
  }

  else
  {
    v52 = 0;
  }

  if (v70)
  {
    v53 = v70;
  }

  else
  {
    v53 = 0xE000000000000000;
  }

  v86 = 0;
  sub_1C75504FC();
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](v77, v78);
  v54 = OUTLINED_FUNCTION_132_0();
  MEMORY[0x1CCA5CD70](v54);
  MEMORY[0x1CCA5CD70](v79, v80);
  v55 = OUTLINED_FUNCTION_132_0();
  MEMORY[0x1CCA5CD70](v55);
  MEMORY[0x1CCA5CD70](v83, v84);
  MEMORY[0x1CCA5CD70](5972012, 0xE300000000000000);
  MEMORY[0x1CCA5CD70](v81, v82);

  MEMORY[0x1CCA5CD70](2108509, 0xE300000000000000);
  MEMORY[0x1CCA5CD70](0, 0xE000000000000000);

  v56 = OUTLINED_FUNCTION_132_0();
  MEMORY[0x1CCA5CD70](v56);
  MEMORY[0x1CCA5CD70](v68, v76);

  v57 = OUTLINED_FUNCTION_132_0();
  MEMORY[0x1CCA5CD70](v57);
  MEMORY[0x1CCA5CD70](v66, v74);

  v58 = OUTLINED_FUNCTION_132_0();
  MEMORY[0x1CCA5CD70](v58);
  MEMORY[0x1CCA5CD70](v47, v48);

  v59 = OUTLINED_FUNCTION_132_0();
  MEMORY[0x1CCA5CD70](v59);
  MEMORY[0x1CCA5CD70](v65, v75);

  v60 = OUTLINED_FUNCTION_132_0();
  MEMORY[0x1CCA5CD70](v60);
  MEMORY[0x1CCA5CD70](v73, v29);

  v61 = OUTLINED_FUNCTION_132_0();
  MEMORY[0x1CCA5CD70](v61);
  MEMORY[0x1CCA5CD70](v52, v53);

  v62 = OUTLINED_FUNCTION_132_0();
  MEMORY[0x1CCA5CD70](v62);
  sub_1C75519EC();
  return v86;
}

PhotosIntelligence::StoryMusicCurationSong::SongType_optional __swiftcall StoryMusicCurationSong.SongType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t StoryMusicCurationSong.SongType.rawValue.getter()
{
  result = 0xD000000000000011;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C7138730@<X0>(unint64_t *a1@<X8>)
{
  result = StoryMusicCurationSong.SongType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C7138814()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC217C68);
  __swift_project_value_buffer(v0, qword_1EC217C68);
  return sub_1C754FEFC();
}

uint64_t static StoryMusicCurationSong.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC213E00 != -1)
  {
    OUTLINED_FUNCTION_8_29(&qword_1EC213E00);
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EC217C68);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t StoryMusicCurationSong.init(songType:id:artist:title:genres:moods:maestroKeywords:arousal:valence:clearedForPhotosMemoriesExport:preferenceScore:songURL:memoryAppropriateScore:memoryNotAppropriateScore:regionAndLanguage:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, char a12, uint64_t a13, char a14, char a15, uint64_t a16, char a17, __int128 a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24)
{
  *a9 = *a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 24) = a6;
  *(a9 + 32) = a7;
  *(a9 + 56) = a11;
  *(a9 + 64) = a12 & 1;
  *(a9 + 72) = a13;
  result = a14 & 1;
  *(a9 + 80) = a14 & 1;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  *(a9 + 121) = a15;
  *(a9 + 112) = a16;
  *(a9 + 120) = a17 & 1;
  *(a9 + 128) = a18;
  *(a9 + 144) = a19;
  *(a9 + 152) = a20 & 1;
  *(a9 + 160) = a21;
  *(a9 + 168) = a22 & 1;
  *(a9 + 176) = a23;
  *(a9 + 184) = a24;
  return result;
}

unint64_t sub_1C71389DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C7551B2C();

  if (v2 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C7138A2C(char a1)
{
  result = 0x65707954676E6F73;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x6C6173756F7261;
      break;
    case 4:
      result = 0x65636E656C6176;
      break;
    case 5:
      result = 0x747369747261;
      break;
    case 6:
      result = 0x7365726E6567;
      break;
    case 7:
      result = 0x73646F6F6DLL;
      break;
    case 8:
      result = 0x4B6F72747365616DLL;
      break;
    case 9:
      result = 0x6E65726566657270;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    case 11:
      result = 0x4C5255676E6F73;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C7138BFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C71389DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1C7138C2C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C7138A2C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C7138C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7138A28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7138C94(uint64_t a1)
{
  v2 = sub_1C7139DFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7138CD0(uint64_t a1)
{
  v2 = sub_1C7139DFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StoryMusicCurationSong.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217C80, &qword_1C756E600);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - v9;
  v11 = a1[3];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1C7139DFC();
  sub_1C7551FFC();
  if (v2)
  {
    v117 = v2;
    v14 = 0;
    v15 = 0;
    LODWORD(v16) = 0;
    LODWORD(v10) = 0;
    v5 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v12 = v7;
    LOBYTE(v79[0]) = 0;
    sub_1C7139E50();
    OUTLINED_FUNCTION_15_30();
    sub_1C7551C1C();
    v13 = v80[0];
    OUTLINED_FUNCTION_0_71(1);
    LODWORD(v16) = v12;
    v20 = sub_1C7551BBC();
    v77 = v21;
    OUTLINED_FUNCTION_0_71(5);
    v70 = sub_1C7551BBC();
    v76 = v22;
    OUTLINED_FUNCTION_0_71(2);
    v69 = sub_1C7551BBC();
    v75 = v23;
    OUTLINED_FUNCTION_0_71(3);
    v24 = sub_1C7551B8C();
    v67 = v20;
    v68 = v24;
    v115 = v25 & 1;
    OUTLINED_FUNCTION_0_71(4);
    v66 = sub_1C7551B8C();
    v113 = v26 & 1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    LOBYTE(v79[0]) = 6;
    sub_1C6FF60E4(&qword_1EDD0CF50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_15_30();
    v72 = v27;
    v117 = v28;
    v15 = v10;
    sub_1C7551BAC();
    v74 = v80[0];
    LOBYTE(v79[0]) = 7;
    OUTLINED_FUNCTION_15_30();
    OUTLINED_FUNCTION_13_32(v29, v30);
    v73 = v80[0];
    LOBYTE(v79[0]) = 8;
    OUTLINED_FUNCTION_15_30();
    OUTLINED_FUNCTION_13_32(v31, v32);
    v117 = 0;
    v72 = v80[0];
    OUTLINED_FUNCTION_0_71(9);
    v33 = v117;
    v34 = sub_1C7551B8C();
    v117 = v33;
    if (v33 || (v16 = v34, v111 = v35 & 1, OUTLINED_FUNCTION_0_71(11), v36 = v117, v37 = sub_1C7551B6C(), v71 = v38, (v117 = v36) != 0))
    {
      v39 = OUTLINED_FUNCTION_5_41();
      v40(v39);
      v18 = 0;
      v14 = 1;
      OUTLINED_FUNCTION_4_39();
      v17 = 1;
    }

    else
    {
      v41 = v37;
      OUTLINED_FUNCTION_0_71(12);
      v42 = v117;
      v65 = sub_1C7551B8C();
      v117 = v42;
      if (!v42)
      {
        v108 = v43 & 1;
        OUTLINED_FUNCTION_0_71(13);
        v44 = v117;
        v64 = sub_1C7551B8C();
        v117 = v44;
        if (!v44)
        {
          v106 = v45 & 1;
          v104 = 14;
          v48 = sub_1C7551BBC();
          v62 = v49;
          v63 = v48;
          v117 = 0;
          v50 = OUTLINED_FUNCTION_5_41();
          v51(v50);
          v52 = v13;
          LOBYTE(v79[0]) = v13;
          v53 = v67;
          v54 = v76;
          v79[1] = v67;
          v79[2] = v77;
          v55 = v75;
          v79[3] = v69;
          v79[4] = v75;
          v79[5] = v70;
          v79[6] = v76;
          v79[7] = v68;
          v57 = v115;
          LOBYTE(v79[8]) = v115;
          v79[9] = v66;
          v58 = v113;
          LOBYTE(v79[10]) = v113;
          v79[11] = v74;
          v79[12] = v73;
          v79[13] = v72;
          v79[14] = v16;
          v59 = v111;
          LOWORD(v79[15]) = v111;
          v79[16] = v41;
          v79[17] = v71;
          v79[18] = v65;
          v60 = v108;
          LOBYTE(v79[19]) = v108;
          v79[20] = v64;
          v61 = v106;
          LOBYTE(v79[21]) = v106;
          v79[22] = v63;
          v79[23] = v62;
          memcpy(a2, v79, 0xC0uLL);
          sub_1C7080654(v79, v80);
          __swift_destroy_boxed_opaque_existential_1(v78);
          LOBYTE(v80[0]) = v52;
          *(v80 + 1) = v116[0];
          HIDWORD(v80[0]) = *(v116 + 3);
          v80[1] = v53;
          v80[2] = v77;
          v80[3] = v69;
          v80[4] = v55;
          v80[5] = v70;
          v80[6] = v54;
          v80[7] = v68;
          v81 = v57;
          *v82 = *v114;
          *&v82[3] = *&v114[3];
          v83 = v66;
          v84 = v58;
          *&v85[3] = *&v112[3];
          *v85 = *v112;
          v86 = v74;
          v87 = v73;
          v88 = v72;
          v89 = v16;
          v90 = v59;
          v91 = 0;
          v92 = v109;
          v93 = v110;
          v94 = v41;
          v95 = v71;
          v96 = v65;
          v97 = v60;
          *&v98[3] = *&v107[3];
          *v98 = *v107;
          v99 = v64;
          v100 = v61;
          *v101 = *v105;
          *&v101[3] = *&v105[3];
          v102 = v63;
          v103 = v62;
          return sub_1C70806B0(v80);
        }
      }

      v46 = OUTLINED_FUNCTION_5_41();
      v47(v46);
      v14 = 1;
      OUTLINED_FUNCTION_4_39();
      v17 = 1;
      v18 = 1;
    }
  }

  result = __swift_destroy_boxed_opaque_existential_1(v78);
  if (v14)
  {

    if (v15)
    {
      goto LABEL_6;
    }
  }

  else if (v15)
  {
LABEL_6:

    if ((v16 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  if (!v16)
  {
LABEL_7:
    if (v10)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:

  if (v10)
  {
LABEL_8:

    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (!v5)
  {
LABEL_9:
    if (v17)
    {
      goto LABEL_10;
    }

LABEL_17:
    if (!v18)
    {
      return result;
    }
  }

LABEL_16:

  if ((v17 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:

  if ((v18 & 1) == 0)
  {
    return result;
  }
}

uint64_t StoryMusicCurationSong.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217C90, &qword_1C756E608);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v56 = *(v1 + 2);
  v57 = v10;
  v11 = *(v1 + 3);
  v54 = *(v1 + 4);
  v55 = v11;
  v12 = *(v1 + 5);
  v52 = *(v1 + 6);
  v53 = v12;
  v51 = *(v1 + 7);
  v61 = v1[64];
  v13 = *(v1 + 9);
  v50 = v1[80];
  v14 = *(v1 + 12);
  v48 = *(v1 + 11);
  v49 = v13;
  v15 = *(v1 + 14);
  v46 = *(v1 + 13);
  v47 = v14;
  LODWORD(v7) = v1[121];
  v44 = v1[120];
  v45 = v7;
  v16 = *(v1 + 17);
  v41 = *(v1 + 16);
  v42 = v16;
  v43 = v15;
  v39 = *(v1 + 18);
  v40 = v1[152];
  v37 = *(v1 + 20);
  v38 = v1[168];
  v17 = *(v1 + 23);
  v36 = *(v1 + 22);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7139DFC();
  sub_1C755200C();
  LOBYTE(v59) = v9;
  v62 = 0;
  sub_1C7139EA4();
  OUTLINED_FUNCTION_7_34();
  v18 = v58;
  sub_1C7551D2C();
  if (v18)
  {
    return (*(v5 + 8))(v8, v3);
  }

  v58 = v17;
  v20 = v5;
  LOBYTE(v59) = 1;
  sub_1C7551CCC();
  LOBYTE(v59) = 5;
  sub_1C7551CCC();
  LOBYTE(v59) = 2;
  sub_1C7551CCC();
  v59 = v51;
  LOBYTE(v60) = v61;
  v62 = 3;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215778, &qword_1C755F0A0);
  v22 = sub_1C7139EF8();
  v23 = OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_17_31(v23, v24);
  v59 = v49;
  LOBYTE(v60) = v50;
  v25 = OUTLINED_FUNCTION_1_53(4);
  OUTLINED_FUNCTION_17_31(v25, v26);
  v54 = v22;
  v55 = v21;
  v59 = v48;
  v62 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217538, &qword_1C7586ED0);
  sub_1C7139F74();
  v27 = OUTLINED_FUNCTION_7_34();
  v56 = v8;
  v57 = v3;
  OUTLINED_FUNCTION_12_32(v27, v28, v3);
  v59 = v47;
  v29 = OUTLINED_FUNCTION_1_53(7);
  OUTLINED_FUNCTION_12_32(v29, v30, v57);
  v59 = v46;
  v31 = OUTLINED_FUNCTION_1_53(8);
  OUTLINED_FUNCTION_12_32(v31, v32, v57);
  LOBYTE(v59) = v45;
  v62 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217C98, &unk_1C756E610);
  sub_1C713A01C();
  OUTLINED_FUNCTION_7_34();
  sub_1C7551D2C();
  v59 = v43;
  LOBYTE(v60) = v44;
  OUTLINED_FUNCTION_1_53(9);
  sub_1C7551D2C();
  v59 = v41;
  v60 = v42;
  v62 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620, &qword_1C756EAF0);
  sub_1C70950A8();
  OUTLINED_FUNCTION_7_34();
  sub_1C7551D2C();
  v59 = v39;
  LOBYTE(v60) = v40;
  OUTLINED_FUNCTION_1_53(12);
  sub_1C7551D2C();
  v59 = v37;
  LOBYTE(v60) = v38;
  OUTLINED_FUNCTION_1_53(13);
  sub_1C7551D2C();
  v33 = v57;
  v59 = v36;
  v60 = v58;
  OUTLINED_FUNCTION_1_53(14);
  v34 = v56;
  sub_1C7551D2C();
  return (*(v20 + 8))(v34, v33);
}

uint64_t StoryMusicCurationSong.hash(into:)(uint64_t a1)
{
  sub_1C75505AC();

  return sub_1C6FF87E8();
}

uint64_t StoryMusicCurationSong.hashValue.getter()
{
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C6FF87E8();
  return sub_1C7551FAC();
}

uint64_t sub_1C7139A24(uint64_t a1)
{
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C6FF87E8();
  return sub_1C7551FAC();
}

uint64_t static StoryMusicCurationSong.== infix(_:_:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 8) == *(a2 + 1) && *(a1 + 16) == *(a2 + 2);
  if (!v4 && (sub_1C7551DBC() & 1) == 0)
  {
    return 0;
  }

  return sub_1C6FA12A8(v2, v3);
}

uint64_t static StoryMusicCurationSong.sortSongsByMood(_:mood:)(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  if (qword_1EC213E00 != -1)
  {
    OUTLINED_FUNCTION_8_29(&qword_1EC213E00);
  }

  v3 = sub_1C754FF1C();
  __swift_project_value_buffer(v3, qword_1EC217C68);
  sub_1C709D4BC(__dst, v10);
  v4 = sub_1C754FEEC();
  v5 = sub_1C755117C();
  sub_1C713A098(__dst);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1C6F765A4(__dst[1], __dst[2], v10);
    _os_log_impl(&dword_1C6F5C000, v4, v5, "[sortSongsByMood] for mood: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1CCA5F8E0](v7, -1, -1);
    MEMORY[0x1CCA5F8E0](v6, -1, -1);
  }

  v9 = a1;
  sub_1C709D4BC(__dst, v10);
  sub_1C75504FC();
  sub_1C7139D44(&v9, __dst);
  return v9;
}

BOOL sub_1C7139C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  if (*(a1 + 64))
  {
    v3 = 0.1;
  }

  v4 = *(a1 + 72);
  if (*(a1 + 80))
  {
    v4 = 1.0;
  }

  if (*(a2 + 64))
  {
    v6 = 0.1;
  }

  else
  {
    v5 = *(a2 + 56);
    v6 = v5;
  }

  if (*(a2 + 80))
  {
    v7 = 1.0;
  }

  else
  {
    v7 = *(a2 + 72);
  }

  v8 = *(a3 + 104);
  v9 = *(a3 + 108);
  v10 = hypotf(v3 - v8, v4 - v9);
  return v10 < hypotf(v6 - v8, v7 - v9);
}

uint64_t sub_1C7139D44(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  sub_1C709D4BC(a2, v9);
  sub_1C709D4BC(a2, v9);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422D5C();
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1C709D4BC(a2, v9);
  sub_1C713A5F4(v8, a2);
  *a1 = v4;
  sub_1C713A098(a2);
  sub_1C713A098(a2);
  return sub_1C713A098(a2);
}

unint64_t sub_1C7139DFC()
{
  result = qword_1EDD09950;
  if (!qword_1EDD09950)
  {
    result = swift_getWitnessTable(byte_1C756E9BC, &unk_1F46B6BA0, v0, v1);
    atomic_store(result, &qword_1EDD09950);
  }

  return result;
}