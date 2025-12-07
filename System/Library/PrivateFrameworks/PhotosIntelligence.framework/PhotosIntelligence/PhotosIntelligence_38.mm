void sub_1C7233224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 == a2)
  {
    goto LABEL_31;
  }

  v6 = *a4;
  v7 = *a4 + 8 * a3 - 8;
  v8 = a1 - a3;
  while (2)
  {
    v43 = a3;
    v9 = *(v6 + 8 * a3);
    v41 = v8;
    v42 = v7;
    while (1)
    {
      v10 = *v7;
      v11 = v9;
      v12 = v10;
      v13 = [v11 localIdentifier];
      v14 = sub_1C755068C();
      v16 = v15;

      v17 = 0.0;
      if (*(a5 + 16))
      {
        v18 = sub_1C6F78124(v14, v16);
        if (v19)
        {
          v17 = *(*(a5 + 56) + 8 * v18);
        }
      }

      v20 = [v12 localIdentifier];
      v21 = sub_1C755068C();
      v23 = v22;

      if (!*(a5 + 16))
      {
        break;
      }

      v24 = sub_1C6F78124(v21, v23);
      if ((v25 & 1) == 0)
      {
        break;
      }

      v26 = *(*(a5 + 56) + 8 * v24);

      if (v17 == v26)
      {
        goto LABEL_12;
      }

LABEL_24:

      if (v26 >= v17)
      {
        goto LABEL_30;
      }

LABEL_25:
      if (!v6)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v38 = *v7;
      v9 = *(v7 + 8);
      *v7 = v9;
      *(v7 + 8) = v38;
      v7 -= 8;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_30;
      }
    }

    if (v17 != 0.0)
    {
      v26 = 0.0;
      goto LABEL_24;
    }

LABEL_12:
    v27 = [v11 faceCount];
    v28 = [v12 faceCount];
    if (v27 != v28)
    {
      v37 = v28;

      if (v37 >= v27)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    }

    v29 = sub_1C70CAC04(v11);
    if (!v30)
    {
      goto LABEL_34;
    }

    v31 = v29;
    v32 = v30;
    v33 = sub_1C70CAC04(v12);
    if (!v34)
    {
      goto LABEL_33;
    }

    if (v31 != v33 || v32 != v34)
    {
      v36 = sub_1C7551DBC();

      if ((v36 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    }

LABEL_30:
    a3 = v43 + 1;
    v7 = v42 + 8;
    v8 = v41 - 1;
    if (v43 + 1 != a2)
    {
      continue;
    }

    break;
  }

LABEL_31:
}

void sub_1C72334A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v17 = v7;
      v18 = v6;
      do
      {
        v9 = *v6;
        v10 = v8;
        v11 = v9;
        v12 = [v10 manualOrder];
        v13 = [v11 manualOrder];

        if (v12 >= v13)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v14 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v14;
        v6 -= 8;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v6 = v18 + 8;
      v7 = v17 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1C7233590(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = MEMORY[0x1E69E7CC0];
LABEL_128:
    v142 = *a1;
    if (!*a1)
    {
      goto LABEL_172;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_130;
    }

    goto LABEL_166;
  }

  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      v6 = v7 + 1;
      goto LABEL_40;
    }

    v10 = *a3;
    v11 = (*a3 + 16 * v9);
    v12 = v11[1];
    v147[0] = *v11;
    v147[1] = v12;
    v13 = (v10 + 16 * v7);
    v14 = v13[1];
    v146[0] = *v13;
    v146[1] = v14;
    sub_1C75504FC();
    sub_1C75504FC();
    LODWORD(v148) = sub_1C722CBF0(v147, v146, v5);
    if (v144)
    {
      swift_bridgeObjectRelease_n();

LABEL_126:
    }

    v127 = v8;

    v15 = v7;
    v16 = v7 + 2;
    v124 = v15;
    v17 = 16 * v15;
    v18 = v13 + 5;
    v139 = v6;
    while (v16 < v6)
    {
      ++v9;
      if (!*(a5 + 16))
      {
        goto LABEL_18;
      }

      v19 = *(v18 - 1);
      v20 = *v18;
      v21 = *(v18 - 3);
      v22 = *(v18 - 2);
      sub_1C75504FC();
      sub_1C75504FC();
      v23 = sub_1C6F78124(v19, v20);
      if ((v24 & 1) == 0)
      {

        v6 = v139;
LABEL_18:
        if (v148)
        {
          v6 = v16;
          v5 = a5;
          v7 = v124;
          goto LABEL_32;
        }

        goto LABEL_23;
      }

      if (!*(a5 + 16))
      {

        goto LABEL_22;
      }

      v142 = *(*(a5 + 56) + 8 * v23);
      v25 = sub_1C6F78124(v21, v22);
      if ((v26 & 1) == 0)
      {

LABEL_22:
        v6 = v139;
        if ((v148 & 1) == 0)
        {
          v6 = v16;
          v5 = a5;
          v8 = v127;
          v7 = v124;
          goto LABEL_40;
        }

        goto LABEL_23;
      }

      v137 = v9;
      v27 = *(*(a5 + 56) + 8 * v25);
      v133 = [v142 integerValue];
      if (v133 == [v27 integerValue])
      {
        v134 = v27;
        if (v19 == v21 && v20 == v22)
        {
          v29 = 0;
        }

        else
        {
          v29 = sub_1C7551DBC();
        }

        v9 = v137;

        v6 = v139;
        if ((v148 ^ v29))
        {
          v6 = v137;
          break;
        }
      }

      else
      {
        v135 = [v142 integerValue];
        v30 = [v27 integerValue];

        v9 = v137;
        v6 = v139;
        if ((v148 & 1) == v30 >= v135)
        {
          v6 = v16;
          break;
        }
      }

LABEL_23:
      ++v16;
      v18 += 2;
    }

    v5 = a5;
    v7 = v124;
    if ((v148 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_32:
    if (v6 < v7)
    {
      goto LABEL_163;
    }

    if (v7 < v6)
    {
      v31 = 0;
      v32 = 16 * v6;
      v33 = v7;
      do
      {
        if (v33 != v6 + v31 - 1)
        {
          v34 = *a3;
          if (!*a3)
          {
            goto LABEL_170;
          }

          v35 = (v34 + v17);
          v36 = v34 + v32;
          v37 = *v35;
          v38 = v35[1];
          *v35 = *(v36 - 16);
          *(v36 - 16) = v37;
          *(v36 - 8) = v38;
        }

        ++v33;
        --v31;
        v32 -= 16;
        v17 += 16;
      }

      while (v33 < v6 + v31);
    }

LABEL_39:
    v8 = v127;
LABEL_40:
    v39 = a3[1];
    if (v6 < v39)
    {
      if (__OFSUB__(v6, v7))
      {
        goto LABEL_162;
      }

      if (v6 - v7 < a4)
      {
        break;
      }
    }

LABEL_73:
    if (v6 < v7)
    {
      goto LABEL_161;
    }

    v131 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v8 + 2) + 1, 1, v8);
      v8 = v109;
    }

    v62 = *(v8 + 2);
    v61 = *(v8 + 3);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      sub_1C6FB17EC(v61 > 1, v62 + 1, 1, v8);
      v8 = v110;
    }

    *(v8 + 2) = v63;
    v64 = v8 + 32;
    v65 = &v8[16 * v62 + 32];
    *v65 = v7;
    *(v65 + 1) = v131;
    v148 = *a1;
    if (!v148)
    {
      goto LABEL_171;
    }

    if (v62)
    {
      v142 = v8 + 32;
      while (1)
      {
        v66 = v63 - 1;
        v67 = &v64[16 * v63 - 16];
        v68 = &v8[16 * v63];
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v69 = *(v8 + 4);
          v70 = *(v8 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_94:
          if (v72)
          {
            goto LABEL_148;
          }

          v84 = *v68;
          v83 = *(v68 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_151;
          }

          v88 = *(v67 + 1);
          v89 = v88 - *v67;
          if (__OFSUB__(v88, *v67))
          {
            goto LABEL_154;
          }

          if (__OFADD__(v86, v89))
          {
            goto LABEL_156;
          }

          if (v86 + v89 >= v71)
          {
            if (v71 < v89)
            {
              v66 = v63 - 2;
            }

            goto LABEL_116;
          }

          goto LABEL_109;
        }

        if (v63 < 2)
        {
          goto LABEL_150;
        }

        v91 = *v68;
        v90 = *(v68 + 1);
        v79 = __OFSUB__(v90, v91);
        v86 = v90 - v91;
        v87 = v79;
LABEL_109:
        if (v87)
        {
          goto LABEL_153;
        }

        v93 = *v67;
        v92 = *(v67 + 1);
        v79 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v79)
        {
          goto LABEL_155;
        }

        if (v94 < v86)
        {
          goto LABEL_123;
        }

LABEL_116:
        if (v66 - 1 >= v63)
        {
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
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
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
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

        v98 = *a3;
        if (!*a3)
        {
          goto LABEL_168;
        }

        v99 = v8;
        v100 = &v64[16 * v66 - 16];
        v101 = *v100;
        v102 = v66;
        v103 = &v64[16 * v66];
        v104 = *(v103 + 1);
        v105 = (v98 + 16 * *v100);
        v106 = (v98 + 16 * *v103);
        v107 = (v98 + 16 * v104);
        sub_1C75504FC();
        sub_1C72350F4(v105, v106, v107, v148, a5);
        if (v144)
        {
          swift_bridgeObjectRelease_n();
          goto LABEL_126;
        }

        if (v104 < v101)
        {
          goto LABEL_143;
        }

        v108 = *(v99 + 2);
        if (v102 > v108)
        {
          goto LABEL_144;
        }

        *v100 = v101;
        *(v100 + 1) = v104;
        if (v102 >= v108)
        {
          goto LABEL_145;
        }

        v63 = v108 - 1;
        sub_1C7423CF4(v103 + 16, v108 - 1 - v102, v103);
        v8 = v99;
        *(v99 + 2) = v108 - 1;
        v5 = a5;
        v64 = v142;
        if (v108 <= 2)
        {
          goto LABEL_123;
        }
      }

      v73 = &v64[16 * v63];
      v74 = *(v73 - 8);
      v75 = *(v73 - 7);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_146;
      }

      v78 = *(v73 - 6);
      v77 = *(v73 - 5);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_147;
      }

      v80 = *(v68 + 1);
      v81 = v80 - *v68;
      if (__OFSUB__(v80, *v68))
      {
        goto LABEL_149;
      }

      v79 = __OFADD__(v71, v81);
      v82 = v71 + v81;
      if (v79)
      {
        goto LABEL_152;
      }

      if (v82 >= v76)
      {
        v96 = *v67;
        v95 = *(v67 + 1);
        v79 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v79)
        {
          goto LABEL_160;
        }

        if (v71 < v97)
        {
          v66 = v63 - 2;
        }

        goto LABEL_116;
      }

      goto LABEL_94;
    }

LABEL_123:
    v6 = a3[1];
    v7 = v131;
    if (v131 >= v6)
    {
      goto LABEL_128;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_164;
  }

  if (v7 + a4 < v39)
  {
    v39 = v7 + a4;
  }

  if (v39 < v7)
  {
LABEL_165:
    __break(1u);
LABEL_166:
    v8 = sub_1C7420830();
LABEL_130:
    v112 = v8 + 16;
    v111 = *(v8 + 2);
    for (i = v8; ; v8 = i)
    {
      if (v111 < 2)
      {

        return swift_bridgeObjectRelease_n();
      }

      v113 = *a3;
      if (!*a3)
      {
        goto LABEL_169;
      }

      v114 = &v8[16 * v111];
      v115 = *v114;
      v116 = v112;
      v117 = &v112[16 * v111];
      v118 = *(v117 + 1);
      v119 = (v113 + 16 * *v114);
      v120 = (v113 + 16 * *v117);
      v148 = (v113 + 16 * v118);
      sub_1C75504FC();
      sub_1C72350F4(v119, v120, v148, v142, a5);
      if (v144)
      {
        break;
      }

      if (v118 < v115)
      {
        goto LABEL_157;
      }

      if (v111 - 2 >= *v116)
      {
        goto LABEL_158;
      }

      v112 = v116;
      *v114 = v115;
      *(v114 + 1) = v118;
      v121 = *v116 - v111;
      if (*v116 < v111)
      {
        goto LABEL_159;
      }

      v111 = *v116 - 1;
      sub_1C7423CF4(v117 + 16, v121, v117);
      *v116 = v111;
    }

    swift_bridgeObjectRelease_n();
  }

  if (v6 == v39)
  {
    goto LABEL_73;
  }

  v128 = v8;
  v130 = v39;
  v40 = *a3;
  v41 = (*a3 + 16 * v6);
  v125 = v7;
  v42 = v7 - v6;
  v138 = *a3;
LABEL_49:
  v140 = v6;
  v43 = (v40 + 16 * v6);
  v45 = *v43;
  v44 = v43[1];
  v132 = v42;
  v136 = v41;
  while (1)
  {
    if (!*(v5 + 16))
    {
      goto LABEL_70;
    }

    v46 = *(v41 - 2);
    v47 = *(v41 - 1);
    sub_1C75504FC();
    sub_1C75504FC();
    v48 = sub_1C6F78124(v45, v44);
    if ((v49 & 1) == 0)
    {

      goto LABEL_70;
    }

    if (*(v5 + 16))
    {
      v148 = *(*(v5 + 56) + 8 * v48);
      v50 = sub_1C6F78124(v46, v47);
      if (v51)
      {
        v52 = *(*(v5 + 56) + 8 * v50);
        v143 = [v148 integerValue];
        v53 = v52;
        if (v143 == [v52 integerValue])
        {
          v142 = v52;
          v54 = v148;
          if (v45 == v46 && v44 == v47)
          {

            v5 = a5;
            v40 = v138;
LABEL_70:
            v6 = v140 + 1;
            v41 = v136 + 2;
            v42 = v132 - 1;
            if (v140 + 1 == v130)
            {
              v8 = v128;
              v6 = v130;
              v7 = v125;
              goto LABEL_73;
            }

            goto LABEL_49;
          }

          v56 = sub_1C7551DBC();

          v5 = a5;
          v40 = v138;
          if ((v56 & 1) == 0)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v57 = v148;
          v142 = [v148 integerValue];
          v58 = [v52 integerValue];

          v59 = v58 < v142;
          v5 = a5;
          v40 = v138;
          if (!v59)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }

    if (!v40)
    {
      break;
    }

    v45 = *v41;
    v44 = v41[1];
    *v41 = *(v41 - 1);
    *(v41 - 1) = v44;
    *(v41 - 2) = v45;
    v41 -= 2;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_70;
    }
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_168:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_169:

  __break(1u);
LABEL_170:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_171:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_172:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1C7234018(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = MEMORY[0x1E69E7CC0];
LABEL_133:
    v164 = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_135;
    }

LABEL_181:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  else
  {
    v151 = a4;
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v166 = a5;
    while (1)
    {
      v9 = v7 + 1;
      v160 = v8;
      if (v7 + 1 >= v6)
      {
        v6 = v7 + 1;
        goto LABEL_40;
      }

      v10 = *a3;
      v169 = *(*a3 + 8 * v9);
      v11 = v7;
      v12 = *(v10 + 8 * v7);
      v168 = v12;
      v13 = v169;
      v14 = v12;
      v158 = sub_1C722D970(&v169, &v168, a5);
      if (v165)
      {
        swift_bridgeObjectRelease_n();
      }

      v15 = v10 + 8 * v11;
      v152 = v11;
      v16 = 8 * v11;
      v17 = (v15 + 16);
      v8 = v160;
      v164 = v6;
      while (v9 + 1 < v6)
      {
        v18 = *(v17 - 1);
        v19 = *v17;
        v20 = v18;
        v21 = [v19 localIdentifier];
        v22 = sub_1C755068C();
        v24 = v23;

        v25 = 0.0;
        if (*(a5 + 16))
        {
          v26 = sub_1C6F78124(v22, v24);
          a5 = v166;
          if (v27)
          {
            v25 = *(*(v166 + 56) + 8 * v26);
          }
        }

        v28 = [v20 localIdentifier];
        v29 = sub_1C755068C();
        v31 = v30;

        if (*(a5 + 16) && (v32 = sub_1C6F78124(v29, v31), a5 = v166, (v33 & 1) != 0))
        {
          v34 = *(*(v166 + 56) + 8 * v32);

          v8 = v160;
          if (v25 != v34)
          {
            goto LABEL_25;
          }
        }

        else
        {

          v8 = v160;
          if (v25 != 0.0)
          {
            v34 = 0.0;
LABEL_25:

            v44 = v34 < v25;
            goto LABEL_26;
          }
        }

        v35 = [v19 faceCount];
        v36 = [v20 faceCount];
        if (v35 == v36)
        {
          v37 = sub_1C70CAC04(v19);
          if (!v38)
          {
            goto LABEL_177;
          }

          v39 = v37;
          v40 = v38;
          v41 = sub_1C70CAC04(v20);
          if (!v42)
          {
            goto LABEL_178;
          }

          if (v39 == v41 && v40 == v42)
          {

            v8 = v160;
            v6 = v164;
            if (v158)
            {
              v6 = v9 + 1;
              v7 = v152;
              goto LABEL_33;
            }

            goto LABEL_27;
          }

          v44 = sub_1C7551DBC();

          v8 = v160;
        }

        else
        {
          v45 = v36;

          v44 = v45 < v35;
        }

LABEL_26:
        v6 = v164;
        if ((v158 ^ v44))
        {
          v6 = v9 + 1;
          break;
        }

LABEL_27:
        ++v17;
        ++v9;
      }

      v7 = v152;
      if ((v158 & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_33:
      if (v6 < v7)
      {
        goto LABEL_168;
      }

      if (v7 < v6)
      {
        v46 = 8 * v6 - 8;
        v47 = v6;
        v48 = v7;
        do
        {
          if (v48 != --v47)
          {
            v49 = *a3;
            if (!*a3)
            {
              goto LABEL_179;
            }

            v50 = *(v49 + v16);
            *(v49 + v16) = *(v49 + v46);
            *(v49 + v46) = v50;
          }

          ++v48;
          v46 -= 8;
          v16 += 8;
        }

        while (v48 < v47);
      }

LABEL_40:
      v51 = a3[1];
      if (v6 >= v51)
      {
        goto LABEL_48;
      }

      if (__OFSUB__(v6, v7))
      {
        goto LABEL_167;
      }

      if (v6 - v7 >= v151)
      {
LABEL_48:
        v53 = v6;
        goto LABEL_49;
      }

      v52 = v7 + v151;
      if (__OFADD__(v7, v151))
      {
        goto LABEL_169;
      }

      if (v52 >= v51)
      {
        v52 = a3[1];
      }

      if (v52 < v7)
      {
        break;
      }

      if (v6 == v52)
      {
        goto LABEL_48;
      }

      v103 = *a3;
      v104 = *a3 + 8 * v6 - 8;
      v153 = v7;
      v105 = v7 - v6;
      v156 = v52;
      while (2)
      {
        v164 = v6;
        v106 = *(v103 + 8 * v6);
        v157 = v105;
        v159 = v104;
        while (2)
        {
          v107 = *v104;
          v108 = v106;
          v109 = v107;
          v110 = [v108 localIdentifier];
          v111 = sub_1C755068C();
          v113 = v112;

          v114 = 0.0;
          if (*(a5 + 16))
          {
            v115 = sub_1C6F78124(v111, v113);
            a5 = v166;
            if (v116)
            {
              v114 = *(*(v166 + 56) + 8 * v115);
            }
          }

          v117 = [v109 localIdentifier];
          v118 = sub_1C755068C();
          v120 = v119;

          if (!*(a5 + 16) || (v121 = sub_1C6F78124(v118, v120), a5 = v166, (v122 & 1) == 0))
          {

            if (v114 == 0.0)
            {
              goto LABEL_111;
            }

            v123 = 0.0;
LABEL_123:

            if (v123 >= v114)
            {
              goto LABEL_129;
            }

LABEL_124:
            if (v103)
            {
              v135 = *v104;
              v106 = *(v104 + 8);
              *v104 = v106;
              *(v104 + 8) = v135;
              v104 -= 8;
              if (__CFADD__(v105++, 1))
              {
                goto LABEL_129;
              }

              continue;
            }

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_176:

            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_180:
            swift_bridgeObjectRelease_n();
            __break(1u);
            goto LABEL_181;
          }

          break;
        }

        v123 = *(*(v166 + 56) + 8 * v121);

        if (v114 != v123)
        {
          goto LABEL_123;
        }

LABEL_111:
        v124 = [v108 faceCount];
        v125 = [v109 faceCount];
        if (v124 != v125)
        {
          v134 = v125;

          if (v134 >= v124)
          {
            goto LABEL_129;
          }

          goto LABEL_124;
        }

        v126 = sub_1C70CAC04(v108);
        if (!v127)
        {
          goto LABEL_174;
        }

        v128 = v126;
        v129 = v127;
        v130 = sub_1C70CAC04(v109);
        if (!v131)
        {
          goto LABEL_173;
        }

        if (v128 != v130 || v129 != v131)
        {
          v133 = sub_1C7551DBC();

          if ((v133 & 1) == 0)
          {
            goto LABEL_129;
          }

          goto LABEL_124;
        }

LABEL_129:
        v6 = v164 + 1;
        v104 = v159 + 8;
        v105 = v157 - 1;
        v53 = v156;
        if ((v164 + 1) != v156)
        {
          continue;
        }

        break;
      }

      v8 = v160;
      v7 = v153;
LABEL_49:
      if (v53 < v7)
      {
        goto LABEL_166;
      }

      v155 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, *(v8 + 2) + 1, 1, v8);
        v8 = v137;
      }

      v55 = *(v8 + 2);
      v54 = *(v8 + 3);
      v56 = v55 + 1;
      v57 = v155;
      if (v55 >= v54 >> 1)
      {
        sub_1C6FB17EC(v54 > 1, v55 + 1, 1, v8);
        v57 = v155;
        v8 = v138;
      }

      *(v8 + 2) = v56;
      v58 = v8 + 32;
      v59 = &v8[16 * v55 + 32];
      *v59 = v7;
      *(v59 + 1) = v57;
      v164 = *a1;
      if (!*a1)
      {
        goto LABEL_180;
      }

      if (v55)
      {
        v161 = v8 + 32;
        while (1)
        {
          v60 = v56 - 1;
          v61 = &v58[16 * v56 - 16];
          v62 = &v8[16 * v56];
          if (v56 >= 4)
          {
            break;
          }

          if (v56 == 3)
          {
            v63 = *(v8 + 4);
            v64 = *(v8 + 5);
            v73 = __OFSUB__(v64, v63);
            v65 = v64 - v63;
            v66 = v73;
LABEL_70:
            if (v66)
            {
              goto LABEL_153;
            }

            v78 = *v62;
            v77 = *(v62 + 1);
            v79 = __OFSUB__(v77, v78);
            v80 = v77 - v78;
            v81 = v79;
            if (v79)
            {
              goto LABEL_156;
            }

            v82 = *(v61 + 1);
            v83 = v82 - *v61;
            if (__OFSUB__(v82, *v61))
            {
              goto LABEL_159;
            }

            if (__OFADD__(v80, v83))
            {
              goto LABEL_161;
            }

            if (v80 + v83 >= v65)
            {
              if (v65 < v83)
              {
                v60 = v56 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v56 < 2)
          {
            goto LABEL_155;
          }

          v85 = *v62;
          v84 = *(v62 + 1);
          v73 = __OFSUB__(v84, v85);
          v80 = v84 - v85;
          v81 = v73;
LABEL_85:
          if (v81)
          {
            goto LABEL_158;
          }

          v87 = *v61;
          v86 = *(v61 + 1);
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_160;
          }

          if (v88 < v80)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v60 - 1 >= v56)
          {
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
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
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
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
            goto LABEL_170;
          }

          v92 = *a3;
          if (!*a3)
          {
            goto LABEL_175;
          }

          v93 = v8;
          v94 = &v58[16 * v60 - 16];
          v95 = *v94;
          v96 = v60;
          v97 = &v58[16 * v60];
          v98 = *(v97 + 1);
          v99 = (v92 + 8 * *v94);
          v100 = (v92 + 8 * *v97);
          v101 = (v92 + 8 * v98);
          a5 = v166;
          sub_1C75504FC();
          sub_1C72355FC(v99, v100, v101, v164, v166);
          if (v165)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v98 < v95)
          {
            goto LABEL_148;
          }

          v8 = v93;
          v102 = *(v93 + 2);
          if (v96 > v102)
          {
            goto LABEL_149;
          }

          *v94 = v95;
          *(v94 + 1) = v98;
          if (v96 >= v102)
          {
            goto LABEL_150;
          }

          v56 = v102 - 1;
          sub_1C7423CF4(v97 + 16, v102 - 1 - v96, v97);
          *(v93 + 2) = v102 - 1;
          v58 = v161;
          if (v102 <= 2)
          {
            goto LABEL_99;
          }
        }

        v67 = &v58[16 * v56];
        v68 = *(v67 - 8);
        v69 = *(v67 - 7);
        v73 = __OFSUB__(v69, v68);
        v70 = v69 - v68;
        if (v73)
        {
          goto LABEL_151;
        }

        v72 = *(v67 - 6);
        v71 = *(v67 - 5);
        v73 = __OFSUB__(v71, v72);
        v65 = v71 - v72;
        v66 = v73;
        if (v73)
        {
          goto LABEL_152;
        }

        v74 = *(v62 + 1);
        v75 = v74 - *v62;
        if (__OFSUB__(v74, *v62))
        {
          goto LABEL_154;
        }

        v73 = __OFADD__(v65, v75);
        v76 = v65 + v75;
        if (v73)
        {
          goto LABEL_157;
        }

        if (v76 >= v70)
        {
          v90 = *v61;
          v89 = *(v61 + 1);
          v73 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v73)
          {
            goto LABEL_165;
          }

          if (v65 < v91)
          {
            v60 = v56 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      v7 = v155;
      a5 = v166;
      if (v155 >= v6)
      {
        goto LABEL_133;
      }
    }

LABEL_170:
    __break(1u);
LABEL_171:
    v8 = sub_1C7420830();
LABEL_135:
    v139 = v8 + 16;
    v140 = *(v8 + 2);
    for (i = v8; ; v8 = i)
    {
      if (v140 < 2)
      {

        return swift_bridgeObjectRelease_n();
      }

      v141 = *a3;
      if (!*a3)
      {
        goto LABEL_176;
      }

      v142 = &v8[16 * v140];
      v143 = *v142;
      v144 = v139;
      v145 = &v139[16 * v140];
      v146 = *(v145 + 1);
      v147 = (v141 + 8 * *v142);
      v148 = (v141 + 8 * *v145);
      v167 = (v141 + 8 * v146);
      sub_1C75504FC();
      sub_1C72355FC(v147, v148, v167, v164, a5);
      if (v165)
      {
        break;
      }

      if (v146 < v143)
      {
        goto LABEL_162;
      }

      if (v140 - 2 >= *v144)
      {
        goto LABEL_163;
      }

      v139 = v144;
      *v142 = v143;
      *(v142 + 1) = v146;
      v149 = *v144 - v140;
      if (*v144 < v140)
      {
        goto LABEL_164;
      }

      v140 = *v144 - 1;
      sub_1C7423CF4(v145 + 16, v149, v145);
      *v144 = v140;
    }

    swift_bridgeObjectRelease_n();
  }

  return result;
}

void sub_1C7234AA4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v118 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_96:
      v97 = v8 + 16;
      v98 = *(v8 + 2);
      while (v98 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_132;
        }

        v99 = v8;
        v100 = &v8[16 * v98];
        v101 = *v100;
        v102 = &v97[2 * v98];
        v103 = *(v102 + 1);
        sub_1C7235914((*a3 + 8 * *v100), (*a3 + 8 * *v102), (*a3 + 8 * v103), v118);
        if (v5)
        {
          break;
        }

        if (v103 < v101)
        {
          goto LABEL_120;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_121;
        }

        *v100 = v101;
        *(v100 + 1) = v103;
        v104 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_122;
        }

        v98 = *v97 - 1;
        sub_1C7423CF4(v102 + 16, v104, v102);
        *v97 = v98;
        v8 = v99;
      }

LABEL_104:

      return;
    }

LABEL_129:
    v8 = sub_1C7420830();
    goto LABEL_96;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v107 = v8;
      v11 = (*a3 + 8 * v7);
      v105 = 8 * v7;
      v14 = *v11;
      v13 = (v11 + 2);
      v12 = v14;
      v15 = *(*a3 + 8 * v10);
      v16 = v14;
      v114 = OUTLINED_FUNCTION_91_9();
      v113 = [v5 v14 + 3036];

      v110 = v9;
      v17 = v9 + 2;
      while (1)
      {
        v18 = v17;
        v19 = v10 + 1;
        if (v19 >= v6)
        {
          break;
        }

        LODWORD(v118) = v114 < v113;
        v20 = *(v13 - 1);
        v21 = *v13;
        v22 = v20;
        v23 = v19;
        v24 = OUTLINED_FUNCTION_91_9();
        v25 = [v5 v12 + 3036];

        v26 = v24 < v25;
        v10 = v23;
        v27 = !v26;
        v28 = v118 ^ v27;
        ++v13;
        v17 = v18 + 1;
        if ((v28 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v10 = v6;
LABEL_12:
      if (v114 >= v113)
      {
        v8 = v107;
        v9 = v110;
      }

      else
      {
        v9 = v110;
        if (v10 < v110)
        {
          goto LABEL_126;
        }

        if (v110 >= v10)
        {
          v8 = v107;
        }

        else
        {
          if (v6 >= v18)
          {
            v29 = v18;
          }

          else
          {
            v29 = v6;
          }

          v30 = 8 * v29 - 8;
          v31 = v10;
          v32 = v110;
          v8 = v107;
          v33 = v105;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v35 = *(v34 + v33);
              *(v34 + v33) = *(v34 + v30);
              *(v34 + v30) = v35;
            }

            ++v32;
            v30 -= 8;
            v33 += 8;
          }

          while (v32 < v31);
        }
      }
    }

    v36 = a3[1];
    if (v10 < v36)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_125;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_42:
    if (v10 < v9)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v8 + 2) + 1, 1, v8);
      v8 = v95;
    }

    v52 = *(v8 + 2);
    v51 = *(v8 + 3);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      sub_1C6FB17EC(v51 > 1, v52 + 1, 1, v8);
      v8 = v96;
    }

    *(v8 + 2) = v53;
    v54 = v8 + 32;
    v55 = &v8[16 * v52 + 32];
    *v55 = v9;
    *(v55 + 1) = v10;
    v116 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v118 = v10;
    if (v52)
    {
      while (1)
      {
        v56 = v53 - 1;
        v57 = &v54[16 * v53 - 16];
        v58 = &v8[16 * v53];
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_62:
          if (v62)
          {
            goto LABEL_111;
          }

          v74 = *v58;
          v73 = *(v58 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_114;
          }

          v78 = *(v57 + 1);
          v79 = v78 - *v57;
          if (__OFSUB__(v78, *v57))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v76, v79))
          {
            goto LABEL_119;
          }

          if (v76 + v79 >= v61)
          {
            if (v61 < v79)
            {
              v56 = v53 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        if (v53 < 2)
        {
          goto LABEL_113;
        }

        v81 = *v58;
        v80 = *(v58 + 1);
        v69 = __OFSUB__(v80, v81);
        v76 = v80 - v81;
        v77 = v69;
LABEL_77:
        if (v77)
        {
          goto LABEL_116;
        }

        v83 = *v57;
        v82 = *(v57 + 1);
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_118;
        }

        if (v84 < v76)
        {
          goto LABEL_91;
        }

LABEL_84:
        if (v56 - 1 >= v53)
        {
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
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v88 = v8;
        v89 = &v54[16 * v56 - 16];
        v90 = *v89;
        v91 = v56;
        v92 = &v54[16 * v56];
        v93 = *(v92 + 1);
        sub_1C7235914((*a3 + 8 * *v89), (*a3 + 8 * *v92), (*a3 + 8 * v93), v116);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v93 < v90)
        {
          goto LABEL_106;
        }

        v5 = *(v88 + 2);
        if (v91 > v5)
        {
          goto LABEL_107;
        }

        *v89 = v90;
        *(v89 + 1) = v93;
        if (v91 >= v5)
        {
          goto LABEL_108;
        }

        v94 = v91;
        v53 = (v5 - 1);
        sub_1C7423CF4(v92 + 16, &v5[-v94 - 1], v92);
        v8 = v88;
        *(v88 + 2) = v5 - 1;
        v26 = v5 > 2;
        v5 = 0;
        if (!v26)
        {
          goto LABEL_91;
        }
      }

      v63 = &v54[16 * v53];
      v64 = *(v63 - 8);
      v65 = *(v63 - 7);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_109;
      }

      v68 = *(v63 - 6);
      v67 = *(v63 - 5);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_110;
      }

      v70 = *(v58 + 1);
      v71 = v70 - *v58;
      if (__OFSUB__(v70, *v58))
      {
        goto LABEL_112;
      }

      v69 = __OFADD__(v61, v71);
      v72 = v61 + v71;
      if (v69)
      {
        goto LABEL_115;
      }

      if (v72 >= v66)
      {
        v86 = *v57;
        v85 = *(v57 + 1);
        v69 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v69)
        {
          goto LABEL_123;
        }

        if (v61 < v87)
        {
          v56 = v53 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_62;
    }

LABEL_91:
    v6 = a3[1];
    v7 = v118;
    if (v118 >= v6)
    {
      goto LABEL_94;
    }
  }

  v37 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_127;
  }

  if (v37 >= v36)
  {
    v37 = a3[1];
  }

  if (v37 < v9)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v10 == v37)
  {
    goto LABEL_42;
  }

  v108 = v8;
  v109 = v5;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v111 = v9;
  v40 = v9 - v10;
  v115 = v37;
LABEL_35:
  v118 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    v47 = [v45 manualOrder];
    v48 = [v46 manualOrder];

    if (v47 >= v48)
    {
LABEL_40:
      v10 = v118 + 1;
      v39 += 8;
      --v40;
      if ((v118 + 1) == v115)
      {
        v10 = v115;
        v8 = v108;
        v5 = v109;
        v9 = v111;
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    if (!v38)
    {
      break;
    }

    v49 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v49;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_40;
    }
  }

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
}

uint64_t sub_1C72350F4(char *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 16;
  v10 = (a3 - a2) / 16;
  if (v9 < v10)
  {
    sub_1C6F9EE08(a1, (a2 - a1) / 16, a4);
    v11 = &v5[2 * v9];
    v12 = a5;
    v13 = v7;
    v64 = v6;
    v62 = v11;
    while (1)
    {
      if (v5 >= v11 || v13 >= v6)
      {
        v33 = v8;
        goto LABEL_64;
      }

      if (!*(v12 + 16))
      {
        goto LABEL_20;
      }

      v15 = *v13;
      v16 = v13[1];
      v17 = *v5;
      v18 = v5[1];
      sub_1C75504FC();
      sub_1C75504FC();
      v19 = sub_1C6F78124(v15, v16);
      if ((v20 & 1) == 0)
      {

LABEL_19:
        v11 = v62;
LABEL_20:
        v28 = v5;
        v26 = v8 == v5;
        v5 += 2;
        if (v26)
        {
          goto LABEL_22;
        }

LABEL_21:
        *v8 = *v28;
        goto LABEL_22;
      }

      if (!*(v12 + 16))
      {
        break;
      }

      v21 = *(*(v12 + 56) + 8 * v19);
      v22 = sub_1C6F78124(v17, v18);
      if ((v23 & 1) == 0)
      {

        v6 = v64;
        goto LABEL_25;
      }

      v55 = v13;
      v59 = v8;
      v24 = *(*(v12 + 56) + 8 * v22);
      v25 = [v21 integerValue];
      if (v25 == [v24 integerValue])
      {
        v26 = v15 == v17 && v16 == v18;
        if (v26)
        {

          v12 = a5;
          v8 = v59;
          v6 = v64;
          v13 = v55;
          goto LABEL_19;
        }

        v27 = sub_1C7551DBC();

        v12 = a5;
        v8 = v59;
        v6 = v64;
        v13 = v55;
        v11 = v62;
        if ((v27 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v29 = [v21 integerValue];
        v30 = [v24 integerValue];

        v34 = v30 < v29;
        v12 = a5;
        v8 = v59;
        v6 = v64;
        v13 = v55;
        v11 = v62;
        if (!v34)
        {
          goto LABEL_20;
        }
      }

LABEL_26:
      v28 = v13;
      v26 = v8 == v13;
      v13 += 2;
      if (!v26)
      {
        goto LABEL_21;
      }

LABEL_22:
      v8 += 16;
    }

LABEL_25:
    v11 = v62;
    goto LABEL_26;
  }

  sub_1C6F9EE08(a2, (a3 - a2) / 16, a4);
  v11 = &v5[2 * v10];
  v31 = a5;
  v32 = v8;
  v60 = v8;
LABEL_34:
  v33 = v7;
  v56 = v7 - 16;
  v6 -= 16;
  v61 = v7;
  while (1)
  {
    v34 = v11 > v5 && v33 > v32;
    if (!v34)
    {
      break;
    }

    v35 = v11 - 2;
    v36 = *(v11 - 2);
    if (!*(v31 + 16))
    {
      goto LABEL_54;
    }

    v65 = v6;
    v37 = *(v11 - 1);
    v38 = *(v33 - 2);
    v39 = *(v33 - 1);
    sub_1C75504FC();
    sub_1C75504FC();
    v40 = sub_1C6F78124(v36, v37);
    if ((v41 & 1) == 0)
    {

LABEL_52:
      v6 = v65;
      v33 = v61;
      goto LABEL_54;
    }

    if (!*(v31 + 16))
    {

LABEL_60:
      v6 = v65;
      v33 = v61;
LABEL_61:
      v7 = v56;
      if (v6 + 16 != v33)
      {
        *v6 = *v56;
      }

      goto LABEL_34;
    }

    v42 = *(*(v31 + 56) + 8 * v40);
    v43 = sub_1C6F78124(v38, v39);
    if ((v44 & 1) == 0)
    {

      v32 = v60;
      goto LABEL_60;
    }

    v57 = v38;
    v63 = v11;
    v45 = *(*(v31 + 56) + 8 * v43);
    v46 = [v42 integerValue];
    if (v46 == [v45 integerValue])
    {
      v47 = v45;
      v48 = v36 == v57 && v37 == v39;
      v11 = v63;
      if (v48)
      {

        v31 = a5;
        v32 = v60;
        goto LABEL_52;
      }

      v49 = sub_1C7551DBC();

      v31 = a5;
      v32 = v60;
      v6 = v65;
      v33 = v61;
      if (v49)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v50 = [v42 integerValue];
      v51 = [v45 integerValue];

      v34 = v51 < v50;
      v31 = a5;
      v32 = v60;
      v6 = v65;
      v33 = v61;
      v11 = v63;
      if (v34)
      {
        goto LABEL_61;
      }
    }

LABEL_54:
    if (v11 != (v6 + 16))
    {
      *v6 = *v35;
    }

    v6 -= 16;
    v11 = v35;
  }

LABEL_64:
  v52 = (v11 - v5) / 16;
  if (v33 != v5 || v33 >= &v5[2 * v52])
  {
    memmove(v33, v5, 16 * v52);
  }

  return 1;
}

uint64_t sub_1C72355FC(char *a1, id *a2, char *a3, void **a4, uint64_t a5)
{
  v6 = v5;
  v7 = a4;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 8;
  v11 = (a3 - a2) / 8;
  if (v10 >= v11)
  {
    sub_1C7423CF8(a2, (a3 - a2) / 8, a4);
    v12 = &v7[v11];
    v26 = -v7;
    v27 = a3;
    v49 = v9;
    v50 = v7;
LABEL_15:
    v28 = v8 - 1;
    v29 = v27 - 8;
    v30 = v12 + v26;
    v51 = v8;
    while (1)
    {
      if (v12 <= v7 || v8 <= v9)
      {
LABEL_29:
        v43 = v12 - v7;
        v44 = v8 < v7 || v8 >= &v7[v43];
        if (v44 || v8 != v7)
        {
          memmove(v8, v7, 8 * v43);
        }

        goto LABEL_51;
      }

      v32 = v29;
      v33 = v6;
      v34 = v12;
      v35 = v12 - 1;
      v55 = *(v12 - 1);
      v36 = v28;
      v54 = *v28;
      v37 = v54;
      v38 = v55;
      v39 = v37;
      v40 = sub_1C722D970(&v55, &v54, a5);
      if (v33)
      {
        break;
      }

      v41 = v40;

      v27 = v32;
      v42 = (v32 + 8);
      if (v41)
      {
        v7 = v50;
        v8 = v36;
        v9 = v49;
        v12 = v34;
        v6 = 0;
        if (v42 != v51)
        {
          *v27 = *v36;
          v8 = v36;
        }

        goto LABEL_15;
      }

      v28 = v36;
      if (v34 != v42)
      {
        *v32 = *v35;
      }

      v29 = v32 - 8;
      v30 -= 8;
      v12 = v35;
      v9 = v49;
      v7 = v50;
      v8 = v51;
      v6 = 0;
    }

    v47 = v51 < v50 || v51 >= &v50[v30 / 8];
    if (v47 || v51 != v50)
    {
      memmove(v51, v50, 8 * (v30 / 8));
    }
  }

  else
  {
    sub_1C7423CF8(a1, (a2 - a1) / 8, a4);
    v12 = &v7[v10];
    v13 = a3;
    while (1)
    {
      if (v7 >= v12 || v8 >= v13)
      {
        v8 = v9;
        goto LABEL_29;
      }

      v15 = v12;
      v16 = v9;
      v55 = *v8;
      v17 = v7;
      v18 = *v7;
      v54 = v18;
      v19 = v55;
      v20 = v18;
      v21 = sub_1C722D970(&v55, &v54, a5);
      if (v5)
      {
        break;
      }

      v22 = v21;

      if (v22)
      {
        v23 = v8;
        v24 = v16;
        v25 = v16 == v8++;
        v7 = v17;
      }

      else
      {
        v23 = v17;
        v7 = (v17 + 8);
        v24 = v16;
        v25 = v16 == v17;
      }

      v13 = a3;
      v12 = v15;
      if (!v25)
      {
        *v24 = *v23;
      }

      v9 = (v24 + 1);
    }

    v45 = (v15 - v17) / 8;
    v46 = v9 < v17 || v9 >= &v17[8 * v45];
    if (v46 || v9 != v17)
    {
      memmove(v9, v17, 8 * v45);
    }
  }

LABEL_51:

  return 1;
}

uint64_t sub_1C7235914(char *a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1C7423CF8(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    for (i = v5; ; v5 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v7;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      v16 = [v14 manualOrder];
      v17 = [v15 manualOrder];

      if (v16 >= v17)
      {
        break;
      }

      v18 = v6;
      v19 = v12;
      v20 = v12 == v6++;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 = (v19 + 1);
    }

    v18 = v4;
    v19 = v12;
    v20 = v12 == v4++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v19 = *v18;
    goto LABEL_13;
  }

  sub_1C7423CF8(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v33 = v7;
  v34 = v4;
LABEL_15:
  v21 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v23 = v21;
    v24 = *v21;
    v25 = *(v10 - 1);
    v26 = v24;
    v27 = [v25 manualOrder];
    v28 = [v26 manualOrder];

    v29 = v5 + 1;
    if (v27 < v28)
    {
      v20 = v29 == v6;
      v6 = v23;
      v7 = v33;
      v4 = v34;
      if (!v20)
      {
        *v5 = *v23;
        v6 = v23;
      }

      goto LABEL_15;
    }

    if (v10 != v29)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v7 = v33;
    v4 = v34;
    v21 = v23;
  }

LABEL_28:
  v30 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v30])
  {
    memmove(v6, v4, 8 * v30);
  }

  return 1;
}

void sub_1C7235B6C()
{
  OUTLINED_FUNCTION_72_13();
  v1 = v0;

  v2 = sub_1C75516BC();
  v3 = swift_unknownObjectRetain();
  sub_1C70F6964(v3, v2);
  v5 = v4;
  v12 = v4;

  sub_1C75513DC();
  OUTLINED_FUNCTION_9_2();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    if (((*(v5 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v8)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate(0);
    v10 = *(*(v5 + 48) + 8 * v9);
    v11 = sub_1C75513EC();

    if (v11)
    {

      sub_1C72368E4();
      OUTLINED_FUNCTION_64();
      if (sub_1C75513EC())
      {
        *v1 = v12;
        OUTLINED_FUNCTION_73_13();
        return;
      }

      __break(1u);
      break;
    }

    v6 = v9 + 1;
  }

  __break(1u);
}

void sub_1C7235C98()
{
  OUTLINED_FUNCTION_72_13();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v16 = v0;

  v7 = sub_1C75516BC();
  v8 = swift_unknownObjectRetain();
  v9 = v6(v8, v7);

  sub_1C75513DC();
  OUTLINED_FUNCTION_9_2();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    if (((*(v9 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v12)) & 1) == 0)
    {
      break;
    }

    sub_1C6F65BE8(0, v4, v2);
    v14 = *(*(v9 + 48) + 8 * v13);
    v15 = sub_1C75513EC();

    if (v15)
    {

      sub_1C72368E4();
      OUTLINED_FUNCTION_64();
      if (sub_1C75513EC())
      {
        *v16 = v9;
        OUTLINED_FUNCTION_73_13();
        return;
      }

      __break(1u);
      break;
    }

    v10 = v13 + 1;
  }

  __break(1u);
}

void sub_1C7235DDC(int64_t a1)
{
  type metadata accessor for Hastings.Feature(0);
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;

    v14 = sub_1C755161C();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v15 = (v14 + 1) & v13;
      v33 = *(v4 + 72);
      while (1)
      {
        v16 = v10;
        v17 = v33 * v12;
        sub_1C72373C4(*(v9 + 48) + v33 * v12, v8);
        sub_1C7551F3C();
        sub_1C75505AC();
        sub_1C75505AC();

        sub_1C754F58C();
        sub_1C7237428(&qword_1EC215238, MEMORY[0x1E69C1928], MEMORY[0x1E69C1938]);
        sub_1C755059C();
        v18 = sub_1C7551FAC();
        sub_1C7237470(v8, type metadata accessor for Hastings.Feature);
        v19 = v18 & v13;
        if (a1 >= v15)
        {
          if (v19 < v15 || a1 < v19)
          {
            goto LABEL_24;
          }
        }

        else if (v19 < v15 && a1 < v19)
        {
          goto LABEL_24;
        }

        v22 = *(v9 + 48);
        v23 = v33 * a1;
        v24 = v22 + v33 * a1;
        v25 = v22 + v17 + v33;
        if (v33 * a1 < v17 || v24 >= v25)
        {
          break;
        }

        a1 = v12;
        if (v23 != v17)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v12 = (v12 + 1) & v13;
        v10 = v16;
        if (((*(v16 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      swift_arrayInitWithTakeFrontToBack();
LABEL_23:
      a1 = v12;
      goto LABEL_24;
    }

LABEL_25:

    OUTLINED_FUNCTION_44_19();
    *(v10 + v27) = v28;
  }

  else
  {
    OUTLINED_FUNCTION_46_20();
    *(v10 + v30) = v29;
  }

  OUTLINED_FUNCTION_43_21();
  if (v32)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_4_58(v31);
  }
}

void sub_1C723614C(int64_t a1)
{
  v3 = *v1;
  v4 = *v1 + 56;
  OUTLINED_FUNCTION_6_58();
  v7 = v6 & ~v5;
  if (((1 << v7) & *(v4 + 8 * (v7 >> 6))) != 0)
  {
    v8 = ~v5;

    v9 = sub_1C755161C();
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) != 0)
    {
      v10 = (v9 + 1) & v8;
      v29 = v4;
      do
      {
        v11 = v3;
        v12 = v10;
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75505AC();
        v13 = sub_1C7551FAC();

        v10 = v12;
        v14 = v13 & v8;
        if (a1 >= v12)
        {
          if (v14 >= v12 && a1 >= v14)
          {
LABEL_9:
            v3 = v11;
            v16 = *(v11 + 48);
            v17 = v16 + 40 * a1;
            v18 = (v16 + 40 * v7);
            v19 = a1 != v7 || v17 >= v18 + 40;
            v4 = v29;
            if (v19)
            {
              v20 = *v18;
              v21 = v18[1];
              *(v17 + 32) = *(v18 + 4);
              *v17 = v20;
              *(v17 + 16) = v21;
              a1 = v7;
            }

            goto LABEL_21;
          }
        }

        else if (v14 >= v12 || a1 >= v14)
        {
          goto LABEL_9;
        }

        v4 = v29;
        v3 = v11;
LABEL_21:
        v7 = (v7 + 1) & v8;
      }

      while (((*(v4 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }

    OUTLINED_FUNCTION_8_49();
    OUTLINED_FUNCTION_44_19();
    *(v4 + v23) = v24;
  }

  else
  {
    OUTLINED_FUNCTION_46_20();
    *(v4 + v26) = v25;
  }

  OUTLINED_FUNCTION_43_21();
  if (v28)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_4_58(v27);
  }
}

void sub_1C723634C()
{
  OUTLINED_FUNCTION_5_54();
  if (v8)
  {
    OUTLINED_FUNCTION_9_54(v7);
  }

  else
  {
    OUTLINED_FUNCTION_95_10();
    OUTLINED_FUNCTION_58();
    v9 = sub_1C755161C();
    if ((*(v2 + 8 * v1) & v5) != 0)
    {
      v10 = (v9 + 1) & v4;
      do
      {
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();
        v11 = sub_1C7551FAC();

        v12 = v11 & v4;
        if (v3 >= v10)
        {
          if (v12 >= v10 && v3 >= v12)
          {
LABEL_15:
            v15 = *(v0 + 48);
            v16 = (v15 + 16 * v3);
            v17 = (v15 + 16 * v6);
            if (v3 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v3 = v6;
            }
          }
        }

        else if (v12 >= v10 || v3 >= v12)
        {
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_12_45();
      }

      while ((v19 & 1) != 0);
    }

    OUTLINED_FUNCTION_8_49();
    OUTLINED_FUNCTION_30_26(v20);
  }

  OUTLINED_FUNCTION_43_21();
  if (v22)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_4_58(v21);
  }
}

void sub_1C7236474(int64_t a1)
{
  v3 = *v1;
  v4 = *v1 + 56;
  OUTLINED_FUNCTION_6_58();
  v7 = v6 & ~v5;
  if (((1 << v7) & *(v4 + 8 * (v7 >> 6))) != 0)
  {
    v8 = ~v5;

    OUTLINED_FUNCTION_85_9();
    v9 = sub_1C755161C();
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) != 0)
    {
      v10 = (v9 + 1) & v8;
      do
      {
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v7);
        v13 = sub_1C7551F2C() & v8;
        if (a1 >= v10)
        {
          if (v13 >= v10 && a1 >= v13)
          {
LABEL_15:
            v16 = (v11 + 8 * a1);
            if (a1 != v7 || v16 >= v12 + 1)
            {
              *v16 = *v12;
              a1 = v7;
            }
          }
        }

        else if (v13 >= v10 || a1 >= v13)
        {
          goto LABEL_15;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(v4 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }

    OUTLINED_FUNCTION_44_19();
    *(v4 + v18) = v19;
  }

  else
  {
    OUTLINED_FUNCTION_46_20();
    *(v4 + v21) = v20;
  }

  OUTLINED_FUNCTION_43_21();
  if (v23)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_4_58(v22);
  }
}

void sub_1C72365C4()
{
  OUTLINED_FUNCTION_5_54();
  if (v8)
  {
    OUTLINED_FUNCTION_9_54(v7);
  }

  else
  {
    OUTLINED_FUNCTION_95_10();
    OUTLINED_FUNCTION_58();
    v9 = sub_1C755161C();
    if ((*(v2 + 8 * v1) & v5) != 0)
    {
      v10 = (v9 + 1) & v4;
      do
      {
        sub_1C7551F3C();
        sub_1C75505AC();

        v11 = sub_1C7551FAC() & v4;
        if (v3 >= v10)
        {
          if (v11 >= v10 && v3 >= v11)
          {
LABEL_15:
            v14 = *(v0 + 48);
            v15 = (v14 + v3);
            v16 = (v14 + v6);
            if (v3 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v3 = v6;
            }
          }
        }

        else if (v11 >= v10 || v3 >= v11)
        {
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_12_45();
      }

      while ((v18 & 1) != 0);
    }

    OUTLINED_FUNCTION_8_49();
    OUTLINED_FUNCTION_30_26(v19);
  }

  OUTLINED_FUNCTION_43_21();
  if (v21)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_4_58(v20);
  }
}

void sub_1C72368E4()
{
  OUTLINED_FUNCTION_5_54();
  if (v8)
  {
    OUTLINED_FUNCTION_9_54(v7);
  }

  else
  {
    OUTLINED_FUNCTION_95_10();
    OUTLINED_FUNCTION_58();
    v9 = sub_1C755161C();
    if ((*(v2 + 8 * v1) & v5) != 0)
    {
      v10 = (v9 + 1) & v4;
      do
      {
        v11 = *(*(v0 + 48) + 8 * v6);
        v12 = sub_1C75513DC();

        v13 = v12 & v4;
        if (v3 >= v10)
        {
          if (v13 >= v10 && v3 >= v13)
          {
LABEL_15:
            v16 = *(v0 + 48);
            v17 = (v16 + 8 * v3);
            v18 = (v16 + 8 * v6);
            if (v3 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v3 = v6;
            }
          }
        }

        else if (v13 >= v10 || v3 >= v13)
        {
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_12_45();
      }

      while ((v20 & 1) != 0);
    }

    OUTLINED_FUNCTION_8_49();
    OUTLINED_FUNCTION_30_26(v21);
  }

  OUTLINED_FUNCTION_43_21();
  if (v23)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_4_58(v22);
  }
}

void sub_1C72369E8(int64_t a1)
{
  v4 = *v1;
  v5 = *v1 + 56;
  OUTLINED_FUNCTION_6_58();
  v8 = v7 & ~v6;
  if (((1 << v8) & *(v5 + 8 * (v8 >> 6))) != 0)
  {
    OUTLINED_FUNCTION_95_10();
    v9 = sub_1C755161C();
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) != 0)
    {
      v10 = (v9 + 1) & v2;
      v25 = v5;
      do
      {
        memcpy(__dst, (*(v4 + 48) + 192 * v8), 0xC0uLL);
        sub_1C7551F3C();
        sub_1C7080654(__dst, v26);
        sub_1C75505AC();
        sub_1C75505AC();

        v11 = sub_1C7551FAC();
        sub_1C70806B0(__dst);
        v12 = v11 & v2;
        v5 = v25;
        if (a1 >= v10)
        {
          if (v12 >= v10 && a1 >= v12)
          {
LABEL_15:
            v15 = *(v4 + 48);
            v16 = (v15 + 192 * a1);
            v17 = (v15 + 192 * v8);
            if (a1 != v8 || v16 >= v17 + 192)
            {
              memmove(v16, v17, 0xC0uLL);
              a1 = v8;
            }
          }
        }

        else if (v12 >= v10 || a1 >= v12)
        {
          goto LABEL_15;
        }

        v8 = (v8 + 1) & v2;
      }

      while (((*(v25 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    OUTLINED_FUNCTION_8_49();
    OUTLINED_FUNCTION_44_19();
    *(v5 + v19) = v20;
  }

  else
  {
    OUTLINED_FUNCTION_46_20();
    *(v5 + v22) = v21;
  }

  OUTLINED_FUNCTION_43_21();
  if (v24)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_4_58(v23);
  }
}

void sub_1C7236C60()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_66_17();
  sub_1C6F78124(v4, v5);
  if (v6)
  {
    OUTLINED_FUNCTION_74_9();
    OUTLINED_FUNCTION_36_20();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2197F0, qword_1C7579E70);
    OUTLINED_FUNCTION_21_37(v7);
    OUTLINED_FUNCTION_90_12();
    sub_1C6F9ED18((*(v1 + 56) + 32 * v2), v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
    OUTLINED_FUNCTION_85_9();
    sub_1C7551A4C();
    *v0 = v1;
  }

  else
  {
    *v3 = 0u;
    v3[1] = 0u;
  }

  OUTLINED_FUNCTION_22_14();
}

void sub_1C7236D0C()
{
  OUTLINED_FUNCTION_72_13();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1C6F78124(v9, v10);
  if (v11)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v6);
    sub_1C7551A2C();

    sub_1C6F65BE8(0, v4, v2);
    sub_1C7551A4C();
    *v0 = v12;
  }

  OUTLINED_FUNCTION_73_13();
}

void sub_1C7236DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_66_17();
  sub_1C6FC2F4C();
  if (v13)
  {
    OUTLINED_FUNCTION_74_9();
    OUTLINED_FUNCTION_36_20();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2197E0, &unk_1C7579E60);
    OUTLINED_FUNCTION_21_37(v14);
    v15 = *(a10 + 48);
    v16 = sub_1C7551A1C();
    OUTLINED_FUNCTION_12();
    (*(v17 + 8))(v15 + *(v17 + 72) * v11, v16);
    sub_1C6F9ED18((*(a10 + 56) + 32 * v11), v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
    OUTLINED_FUNCTION_85_9();
    sub_1C7551A4C();
    *v10 = a10;
  }

  else
  {
    *v12 = 0u;
    v12[1] = 0u;
  }

  OUTLINED_FUNCTION_22_14();
}

void sub_1C7236EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_12();
  sub_1C6F78124(v11, v12);
  if (v13)
  {
    OUTLINED_FUNCTION_74_9();
    OUTLINED_FUNCTION_76_11();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152A0, &unk_1C7579E30);
    OUTLINED_FUNCTION_87_12(v14);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219750, &qword_1C756A310);
    OUTLINED_FUNCTION_64();
    sub_1C7551A4C();
    *v10 = a10;
  }

  OUTLINED_FUNCTION_22_14();
}

void sub_1C7236F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_12();
  v12 = v10;
  sub_1C6FC3130(v13);
  if (v14)
  {
    OUTLINED_FUNCTION_74_9();
    OUTLINED_FUNCTION_76_11();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219740, &qword_1C755CB60);
    OUTLINED_FUNCTION_87_12(v15);
    v16 = *(a10 + 48);
    type metadata accessor for PromptSuggestion(0);
    OUTLINED_FUNCTION_12();
    sub_1C7237470(v16 + *(v17 + 72) * v11, type metadata accessor for PromptSuggestion);
    sub_1C7237428(&qword_1EC219748, type metadata accessor for PromptSuggestion, protocol conformance descriptor for PromptSuggestion);
    OUTLINED_FUNCTION_49_3();
    sub_1C7551A4C();
    *v12 = a10;
  }

  OUTLINED_FUNCTION_22_14();
}

uint64_t sub_1C72370A0()
{
  OUTLINED_FUNCTION_23_12();
  v2 = v1;
  v5 = sub_1C6F78124(v3, v4);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v0;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152D0, &qword_1C755CBC0);
    OUTLINED_FUNCTION_21_37(v8);

    v9 = *(v17 + 56);
    type metadata accessor for PromptSuggestion(0);
    OUTLINED_FUNCTION_12();
    sub_1C7159368(v9 + *(v10 + 72) * v7, v2);
    sub_1C7551A4C();
    *v0 = v17;
  }

  else
  {
    type metadata accessor for PromptSuggestion(0);
  }

  OUTLINED_FUNCTION_22_14();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void sub_1C72371B4()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_66_17();
  sub_1C6F78124(v4, v5);
  if (v6)
  {
    OUTLINED_FUNCTION_74_9();
    OUTLINED_FUNCTION_36_20();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219730, &unk_1C755CB50);
    OUTLINED_FUNCTION_21_37(v7);
    OUTLINED_FUNCTION_90_12();
    sub_1C6F699F8((*(v1 + 56) + 40 * v2), v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219738, &unk_1C7579E20);
    OUTLINED_FUNCTION_85_9();
    sub_1C7551A4C();
    *v0 = v1;
  }

  else
  {
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
  }

  OUTLINED_FUNCTION_22_14();
}

uint64_t sub_1C72372BC(void *a1)
{
  v2 = [a1 name];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_1C755068C();
  OUTLINED_FUNCTION_69_15();

  return v1;
}

uint64_t sub_1C72373C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Hastings.Feature(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7237428(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1C7237470(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_26Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

void sub_1C7237528()
{
  sub_1C754FF1C();
  v1 = *(v0 + 16);

  sub_1C722CF74(v1);
}

void sub_1C723758C()
{
  v1 = *(sub_1C754FF1C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  sub_1C722F944(v6, v7, v0 + v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_21_37(uint64_t a1)
{

  return sub_1C7551A2C();
}

void OUTLINED_FUNCTION_61_13()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_70_14()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_74_9()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_87_12(uint64_t a1)
{

  return sub_1C7551A2C();
}

void OUTLINED_FUNCTION_88_8()
{
}

void OUTLINED_FUNCTION_89_10()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_90_12()
{
}

id OUTLINED_FUNCTION_91_9()
{

  return [v0 manualOrder];
}

void OUTLINED_FUNCTION_92_11()
{
  v2 = *(v0 - 368);
}

uint64_t OUTLINED_FUNCTION_93_11()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_94_11@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + (v2 | (8 * a1)));

  return v4;
}

uint64_t OUTLINED_FUNCTION_95_10()
{
}

uint64_t OUTLINED_FUNCTION_96_7()
{

  return sub_1C75516BC();
}

uint64_t sub_1C7237954()
{
  v1 = *(v0 + 16);
  v42 = sub_1C6FB6304();
  if (v42)
  {
    v2 = 0;
    v41 = v1 & 0xC000000000000001;
    v3 = MEMORY[0x1E69E7CC0];
    v40 = v1;
    while (1)
    {
      sub_1C6FB6330();

      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v43 = v6;
      v44 = v3;
      v45 = v4;
      v7 = *(v4 + 32);
      v8 = 0;
      v46 = sub_1C6FB6304();
      v9 = MEMORY[0x1E69E7CC0];
      while (v46 != v8)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1CCA5DDD0](v8, v7);
        }

        else
        {
          if (v8 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }
        }

        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        type metadata accessor for FeatureSurveySmileyQuestion();
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          v11 = v10;
          v13 = *(v10 + 72);
          v12 = *(v10 + 80);
          swift_beginAccess();
          v14 = *(v11 + 89);
          v15 = 0xEA00000000006465;
          v16 = 0x726577736E616E55;
          switch(v14)
          {
            case 1:
              v16 = 0xD000000000000011;
              v15 = 0x80000001C759E030;
              break;
            case 2:
              v15 = 0xE800000000000000;
              v16 = 0x6565726761736944;
              break;
            case 3:
              v15 = 0xE700000000000000;
              v16 = 0x6C61727475654ELL;
              break;
            case 4:
              v15 = 0xE500000000000000;
              v16 = 0x6565726741;
              break;
            case 5:
              v16 = 0x796C676E6F727453;
              v15 = 0xEE00656572676120;
              break;
            default:
              break;
          }
        }

        else
        {
          type metadata accessor for FeatureSurveyStringQuestion();
          v17 = swift_dynamicCastClass();
          if (v17)
          {
            v18 = v17;
            v13 = *(v17 + 72);
            v12 = *(v17 + 80);
            swift_beginAccess();
            v15 = *(v18 + 104);
            if (v15)
            {
              v16 = *(v18 + 96);
              sub_1C75504FC();
            }

            else
            {
              v15 = 0xE900000000000072;
              v16 = 0x6577736E61206F4ELL;
            }
          }

          else
          {
            type metadata accessor for FeatureSurveyYesNoQuestion();
            v19 = swift_dynamicCastClass();
            if (!v19)
            {
              goto LABEL_50;
            }

            v20 = v19;
            v13 = *(v19 + 72);
            v12 = *(v19 + 80);
            swift_beginAccess();
            v21 = *(v20 + 89);
            v22 = 7562585;
            if (v21 != 1)
            {
              v22 = 28494;
            }

            v23 = 0xE300000000000000;
            if (v21 != 1)
            {
              v23 = 0xE200000000000000;
            }

            if (*(v20 + 89))
            {
              v16 = v22;
            }

            else
            {
              v16 = 0x726577736E616E55;
            }

            if (*(v20 + 89))
            {
              v15 = v23;
            }

            else
            {
              v15 = 0xEA00000000006465;
            }
          }
        }

        sub_1C75504FC();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB4164(v27);
          v9 = v28;
        }

        v25 = *(v9 + 16);
        v24 = *(v9 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1C6FB4164(v24 > 1);
          v9 = v29;
        }

        *(v9 + 16) = v25 + 1;
        v26 = (v9 + 48 * v25);
        v26[4] = 0;
        v26[5] = 0;
        v26[6] = v13;
        v26[7] = v12;
        v26[8] = v16;
        v26[9] = v15;
        ++v8;
      }

      v31 = *(v45 + 16);
      v30 = *(v45 + 24);
      sub_1C75504FC();
      v3 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB4134(v35);
        v3 = v36;
      }

      v1 = v40;
      v2 = v43;
      v33 = *(v3 + 16);
      v32 = *(v3 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1C6FB4134(v32 > 1);
        v3 = v37;
      }

      *(v3 + 16) = v33 + 1;
      v34 = (v3 + 24 * v33);
      v34[4] = v31;
      v34[5] = v30;
      v34[6] = v9;
      if (v43 == v42)
      {
        goto LABEL_46;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:

    result = sub_1C7551AAC();
    __break(1u);
  }

  else
  {
LABEL_46:
    sub_1C754D7AC();
    swift_allocObject();
    sub_1C754D79C();
    sub_1C7238518();
    v38 = sub_1C754D78C();

    return v38;
  }

  return result;
}

uint64_t sub_1C7237E60()
{
  v1 = *(v0 + 16);
  v2 = sub_1C6FB6304();
  v3 = 0;
  while (1)
  {
    v4 = v3;
    if (v2 == v3)
    {
      return v2 != v4;
    }

    sub_1C6FB6330();

    if (__OFADD__(v4, 1))
    {
      break;
    }

    sub_1C72B9920();
    v7 = v6;

    v3 = v4 + 1;
    if (v7)
    {
      return v2 != v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7237F1C()
{
  v1 = *(v0 + 16);
  v2 = sub_1C6FB6304();
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v2 == v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      sub_1C703328C();
      v15 = sub_1C75505FC();

      return v15;
    }

    sub_1C6FB6330();

    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    sub_1C72B99FC();
    v8 = v7;
    v10 = v9;

    ++v3;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v4 = v13;
      }

      v11 = *(v4 + 16);
      if (v11 >= *(v4 + 24) >> 1)
      {
        sub_1C6FB1814();
        v4 = v14;
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v10;
      v3 = v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C72380D8(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v4 = sub_1C6FB6304();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      return v8;
    }

    sub_1C6FB6330();

    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = a1(result);
    sub_1C6FD35F4(v7);
  }

  __break(1u);
  return result;
}

void sub_1C72381F4(uint64_t a1)
{
  v3 = (*(*v1 + 152))();
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v32 = a1;
  sub_1C75504FC();
  v9 = 0;
  v30 = v8;
  v31 = a1 + 64;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v7)) | (v10 << 6);
      v12 = (v32[6] + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(v32[7] + 8 * v11);
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_1C6F78124(v14, v13);
      if (__OFADD__(v3[2], (v17 & 1) == 0))
      {
        break;
      }

      v18 = v16;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
      if (sub_1C7551A2C())
      {
        v20 = sub_1C6F78124(v14, v13);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_24;
        }

        v18 = v20;
      }

      v7 &= v7 - 1;
      if (v19)
      {

        v22 = v3[7];
        v23 = *(v22 + 8 * v18);
        *(v22 + 8 * v18) = v15;
      }

      else
      {
        v3[(v18 >> 6) + 8] |= 1 << v18;
        v24 = (v3[6] + 16 * v18);
        *v24 = v14;
        v24[1] = v13;
        *(v3[7] + 8 * v18) = v15;

        v25 = v3[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_23;
        }

        v3[2] = v27;
      }

      v9 = v10;
      v8 = v30;
      v4 = v31;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v28 = objc_opt_self();
    v29 = sub_1C755065C();
    sub_1C6FEAF80();
    v33 = sub_1C755048C();

    [v28 sendEvent:v29 withPayload:v33];
  }
}

uint64_t FeatureSurveyDataSource.deinit()
{

  return v0;
}

uint64_t FeatureSurveyDataSource.__deallocating_deinit()
{
  FeatureSurveyDataSource.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1C7238518()
{
  result = qword_1EC219860;
  if (!qword_1EC219860)
  {
    result = swift_getWitnessTable(aU_6, &unk_1F46CA890, v0, v1);
    atomic_store(result, &qword_1EC219860);
  }

  return result;
}

uint64_t dispatch thunk of FeatureSurveyDataSource.makeAttachmentsForTTR()()
{
  v4 = (*(*v0 + 104) + **(*v0 + 104));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C70E8468;

  return v4();
}

uint64_t sub_1C72388D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_1C75516BC();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) == 0)
  {
    if (v9 > *(a2 + 16) >> 3)
    {
      goto LABEL_11;
    }

LABEL_14:
    a3(a1);
    return a2;
  }

  if (a2 < 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (sub_1C75516BC() / 8 >= v9)
  {
    goto LABEL_14;
  }

  v11 = sub_1C75516BC();
  a2 = a5(v10, v11);
LABEL_11:

  return a4(a1, a2);
}

uint64_t sub_1C7238A14(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    a3();
    return a2;
  }

  else
  {

    return a4();
  }
}

uint64_t StoryAsset.Collection.init()@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2179F0, &qword_1C756D5F0);
  OUTLINED_FUNCTION_3_70();
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  v3 = MEMORY[0x1E69E7CD0];
  *a1 = MEMORY[0x1E69E7CD0];
  a1[1] = v3;
  a1[2] = v3;
  a1[3] = result;
  return result;
}

uint64_t StoryAsset.Manager.collection(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2179F0, &qword_1C756D5F0);
  OUTLINED_FUNCTION_3_70();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  v5 = MEMORY[0x1E69E7CD0];
  *(v4 + 16) = MEMORY[0x1E69E7CC8];
  *a2 = a1;
  a2[1] = v5;
  a2[2] = v5;
  a2[3] = v4;

  return sub_1C75504FC();
}

double StoryAsset.Collection.union(with:)@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  if (sub_1C7043F5C())
  {
    sub_1C75504FC();
    sub_1C7069AB4(v4, v7);
    v10 = v9;
    sub_1C75504FC();
    sub_1C7069AB4(v6, v8);
    v12 = v11;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C70738FC();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2179F0, &qword_1C756D5F0);
    OUTLINED_FUNCTION_3_70();
    v15 = swift_allocObject();
    *(OUTLINED_FUNCTION_13_48(v15) + 16) = MEMORY[0x1E69E7CC8];
    sub_1C72B86EC();
    if (v17)
    {
      *a2 = v14;
      a2[1] = v10;
      a2[2] = v12;
      a2[3] = v5;
    }

    else
    {

      v21 = sub_1C723A15C();
      v22 = OUTLINED_FUNCTION_166_0(&type metadata for StoryAsset.Error, v21);
      OUTLINED_FUNCTION_5_55(v22, v23);
    }
  }

  else
  {
    v18 = sub_1C723A15C();
    v19 = OUTLINED_FUNCTION_166_0(&type metadata for StoryAsset.Error, v18);
    OUTLINED_FUNCTION_5_55(v19, v20);
    sub_1C75504FC();
    sub_1C75504FC();
  }

  return result;
}

uint64_t static StoryAsset.Collection.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1C7036A90(*a1, *a2);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  return sub_1C7043F5C();
}

uint64_t StoryAsset.Manager.__allocating_init(storyPhotoLibraryContext:)(uint64_t *a1)
{
  result = swift_allocObject();
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = a1[2];
  v6 = MEMORY[0x1E69E7CC8];
  *(result + 40) = 0;
  *(result + 48) = v6;
  *(result + 16) = v3;
  *(result + 24) = v4;
  *(result + 32) = v5;
  return result;
}

void StoryAsset.Collection.subtracting(_:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  sub_1C72B86EC();
  if (v9)
  {
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v10 = sub_1C7238A14(v5, v6, sub_1C7420F88, sub_1C74C35FC);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2179F0, &qword_1C756D5F0);
    OUTLINED_FUNCTION_3_70();
    v11 = swift_allocObject();
    *(OUTLINED_FUNCTION_13_48(v11) + 16) = MEMORY[0x1E69E7CC8];
    sub_1C72B86EC();
    if (v12)
    {
      *a2 = v10;
      a2[1] = v7;
      a2[2] = v8;
      a2[3] = v4;
    }

    else
    {

      v16 = sub_1C723A15C();
      v17 = OUTLINED_FUNCTION_166_0(&type metadata for StoryAsset.Error, v16);
      *v18 = v7;
      v18[1] = v8;
      OUTLINED_FUNCTION_8_50(v17, v18);
    }
  }

  else
  {
    v13 = sub_1C723A15C();
    v14 = OUTLINED_FUNCTION_166_0(&type metadata for StoryAsset.Error, v13);
    *v15 = v4;
    v15[1] = v7;
    OUTLINED_FUNCTION_8_50(v14, v15);
    sub_1C75504FC();
    sub_1C75504FC();
  }
}

uint64_t sub_1C7239378(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465646E65747865 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701208435 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x80000001C75A5B20 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

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

uint64_t sub_1C7239490(char a1)
{
  if (!a1)
  {
    return 0x6465646E65747865;
  }

  if (a1 == 1)
  {
    return 1701208435;
  }

  return 0xD000000000000010;
}

uint64_t sub_1C72394EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7239378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7239514(uint64_t a1)
{
  v2 = sub_1C723B78C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7239550(uint64_t a1)
{
  v2 = sub_1C723B78C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C723958C(uint64_t a1)
{
  v2 = sub_1C723B888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72395C8(uint64_t a1)
{
  v2 = sub_1C723B888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7239604(uint64_t a1)
{
  v2 = sub_1C723B834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7239640(uint64_t a1)
{
  v2 = sub_1C723B834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C723967C(uint64_t a1)
{
  v2 = sub_1C723B7E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72396B8(uint64_t a1)
{
  v2 = sub_1C723B7E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StoryAsset.Filter.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_124();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219870, &qword_1C7579ED8);
  OUTLINED_FUNCTION_3_0();
  v58 = v30;
  v59 = v29;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v31);
  v57 = &v51 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219878, &qword_1C7579EE0);
  OUTLINED_FUNCTION_3_0();
  v55 = v34;
  v56 = v33;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v35);
  v54 = &v51 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219880, &qword_1C7579EE8);
  OUTLINED_FUNCTION_3_0();
  v52 = v38;
  v53 = v37;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v51 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219888, &qword_1C7579EF0);
  OUTLINED_FUNCTION_3_0();
  v44 = v43;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v51 - v46;
  v48 = *v24;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1C723B78C();
  sub_1C755200C();
  if (v48)
  {
    if (v48 == 1)
    {
      a13 = 1;
      sub_1C723B834();
      v41 = v54;
      OUTLINED_FUNCTION_4_59(&type metadata for StoryAsset.Filter.SafeCodingKeys, &a13);
      v50 = v55;
      v49 = v56;
    }

    else
    {
      a14 = 2;
      sub_1C723B7E0();
      v41 = v57;
      OUTLINED_FUNCTION_4_59(&type metadata for StoryAsset.Filter.StronglyEligibleCodingKeys, &a14);
      v50 = v58;
      v49 = v59;
    }
  }

  else
  {
    a12 = 0;
    sub_1C723B888();
    OUTLINED_FUNCTION_4_59(&type metadata for StoryAsset.Filter.ExtendedCodingKeys, &a12);
    v50 = v52;
    v49 = v53;
  }

  (*(v50 + 8))(v41, v49);
  (*(v44 + 8))(v47, v42);
  OUTLINED_FUNCTION_125();
}

uint64_t StoryAsset.Filter.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

void StoryAsset.Filter.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_124();
  a23 = v25;
  a24 = v26;
  v86 = v24;
  v28 = v27;
  v81 = v29;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2198B0, &qword_1C7579EF8);
  OUTLINED_FUNCTION_3_0();
  v82 = v30;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v31);
  v84 = &v73 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2198B8, &qword_1C7579F00);
  OUTLINED_FUNCTION_3_0();
  v79 = v34;
  v80 = v33;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v73 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2198C0, &qword_1C7579F08);
  OUTLINED_FUNCTION_3_0();
  v78 = v39;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v73 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2198C8, &unk_1C7579F10);
  OUTLINED_FUNCTION_3_0();
  v83 = v44;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v73 - v46;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1C723B78C();
  v48 = v86;
  sub_1C7551FFC();
  if (v48)
  {
    goto LABEL_10;
  }

  v75 = v38;
  v76 = v42;
  v77 = v37;
  v50 = v84;
  v49 = v85;
  v86 = v28;
  sub_1C7551C5C();
  sub_1C6FD80E0();
  if (v52 == v53 >> 1)
  {
    goto LABEL_9;
  }

  v74 = 0;
  if (v52 < (v53 >> 1))
  {
    LODWORD(v54) = *(v51 + v52);
    sub_1C6FD80C8();
    v56 = v55;
    v58 = v57;
    swift_unknownObjectRelease();
    v59 = v56 == v58 >> 1;
    v60 = v82;
    if (v59)
    {
      if (v54)
      {
        if (v54 == 1)
        {
          a13 = 1;
          sub_1C723B834();
          v61 = v77;
          OUTLINED_FUNCTION_595(&type metadata for StoryAsset.Filter.SafeCodingKeys, &a13);
          v62 = v81;
          v63 = v43;
          v64 = v83;
          swift_unknownObjectRelease();
          (*(v79 + 8))(v61, v80);
          (*(v64 + 8))(v47, v63);
        }

        else
        {
          LODWORD(v80) = v54;
          a14 = 2;
          sub_1C723B7E0();
          v69 = v74;
          sub_1C7551B4C();
          v62 = v81;
          v54 = v43;
          v70 = v83;
          if (v69)
          {
            (*(v83 + 8))(v47, v54);
            swift_unknownObjectRelease();
            v28 = v86;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v60 + 8))(v50, v49);
          (*(v70 + 8))(v47, v54);
          LOBYTE(v54) = v80;
        }
      }

      else
      {
        a12 = 0;
        sub_1C723B888();
        v68 = v76;
        OUTLINED_FUNCTION_595(&type metadata for StoryAsset.Filter.ExtendedCodingKeys, &a12);
        swift_unknownObjectRelease();
        (*(v78 + 8))(v68, v75);
        v71 = OUTLINED_FUNCTION_12_44();
        v72(v71);
        v62 = v81;
      }

      *v62 = v54;
      __swift_destroy_boxed_opaque_existential_1(v86);
      goto LABEL_11;
    }

LABEL_9:
    v65 = sub_1C75518EC();
    OUTLINED_FUNCTION_166_0(v65, MEMORY[0x1E69E6B28]);
    v67 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490, &qword_1C7560600);
    *v67 = &type metadata for StoryAsset.Filter;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v65 - 8) + 104))(v67, *MEMORY[0x1E69E6AF8], v65);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v83 + 8))(v47, v43);
    v28 = v86;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_11:
    OUTLINED_FUNCTION_125();
    return;
  }

  __break(1u);
}

uint64_t StoryAsset.Manager.init(storyPhotoLibraryContext:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = a1[2];
  v5 = MEMORY[0x1E69E7CC8];
  *(v1 + 40) = 0;
  *(v1 + 48) = v5;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return v1;
}

uint64_t sub_1C723A05C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 != 1)
  {
    if (!v4)
    {
      return 1;
    }

    return sub_1C723B8DC(a1, a2);
  }

  v6 = sub_1C719D92C();
  v8 = v7;
  v10 = v9;
  result = sub_1C719D934(a2);
  if (v10 & 1) != 0 || (v12)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (v8 != v11)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v6 == result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1C719D700(v6, v8, a2, &v17);
  v13 = *(a1 + 16);
  v14 = (a1 + 32);
  do
  {
    v15 = v13-- != 0;
    result = v15;
    if (!v15)
    {
      break;
    }

    v16 = *v14++;
  }

  while (v16 != v17);
  return result;
}

unint64_t sub_1C723A15C()
{
  result = qword_1EC219868;
  if (!qword_1EC219868)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryAsset.Error, &type metadata for StoryAsset.Error, v0, v1);
    atomic_store(result, &qword_1EC219868);
  }

  return result;
}

uint64_t sub_1C723A1B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(*a1 + 16) && (sub_1C6FC330C(), (v3 & 1) != 0))
  {
    result = sub_1C75504FC();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1C723A22C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C754F38C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F1CC();
  os_unfair_lock_lock(v3 + 10);
  v13 = v3 + 12;
  v14 = v3;
  v15 = a3;
  v9 = sub_1C75504FC();
  v10 = sub_1C6FD9D4C(v9);
  os_unfair_lock_unlock(v3 + 10);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F1AC();
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t sub_1C723A3BC(void *a1)
{
  sub_1C75504FC();
  swift_isUniquelyReferenced_nonNull_native();
  v3 = *a1;
  result = sub_1C6FC91A0();
  *a1 = v3;
  return result;
}

void StoryAsset.Manager.collection(from:applying:eventRecorder:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  sub_1C75504FC();
  if (sub_1C723A05C(a2, v9))
  {

    v12 = sub_1C75504FC();
    sub_1C706E6A8(v12, v13, v14, v15, v16, v17, v18, v19, v49, v50, v51, v52, v53, v54, v55, v56, a4, v58, v59, v60, v61);
    v21 = v20;
    if (sub_1C7043F5C() & 1) != 0 && (sub_1C7043F5C())
    {

      v27 = v57;
      *v57 = v8;
      v27[1] = v9;
      v27[2] = v11;
      v27[3] = v10;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
    }

    else
    {
      StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v49, a2, a3, v22, v23, v24, v25, v26, v8, v9, v11, v10, v56, v57, v58, v59, v60, v61, v62, v63);
      if (v4)
      {
      }

      else
      {
        v42 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2179F0, &qword_1C756D5F0);
        OUTLINED_FUNCTION_3_70();
        v43 = swift_allocObject();
        *(v43 + 24) = 0;
        *(v43 + 16) = MEMORY[0x1E69E7CC8];
        sub_1C72B86EC();
        if (v44)
        {
          v45 = v57;
          *v57 = v42;
          v45[1] = v21;
          v45[2] = v21;
          v45[3] = v43;
          sub_1C75504FC();
        }

        else
        {

          v46 = sub_1C723A15C();
          v47 = OUTLINED_FUNCTION_166_0(&type metadata for StoryAsset.Error, v46);
          *v48 = v21;
          v48[1] = v21;
          OUTLINED_FUNCTION_8_50(v47, v48);
          sub_1C75504FC();
        }
      }
    }
  }

  else
  {
    v28 = sub_1C75504FC();
    sub_1C706E6A8(v28, v29, v30, v31, v32, v33, v34, v35, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
    v37 = v36;
    v38 = sub_1C723A15C();
    v39 = OUTLINED_FUNCTION_166_0(&type metadata for StoryAsset.Error, v38);
    *v40 = v37;
    v40[1] = v9;
    OUTLINED_FUNCTION_8_50(v39, v40);
  }
}

uint64_t sub_1C723A630(uint64_t *a1, char *a2, void *a3, uint64_t a4, void *a5)
{
  v7 = *a2;
  v8 = *a3;
  if (*(*a3 + 16) && (v9 = sub_1C6FCABE8(), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 16 * v9);
    sub_1C75504FC();
    sub_1C75504FC();
  }

  else
  {
    v11 = MEMORY[0x1E69E7CD0];
  }

  v12 = *a1;
  sub_1C75504FC();
  sub_1C75504FC();
  v13 = sub_1C7238A14(v11, v12, sub_1C7420F88, sub_1C74C35FC);
  if (*(v13 + 16))
  {
    v19 = v7;
    sub_1C723A7E8(v13, &v19, a5);
    sub_1C75504FC();
    sub_1C70738FC();

    sub_1C70738FC();
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *a3;
    sub_1C6FC92A0();
    *a3 = v18;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  sub_1C7069A44();
  v15 = v14;

  *a1 = v15;
  return result;
}

void sub_1C723A7E8(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v4 = v3;
  v98 = sub_1C754E2FC();
  v8 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C754F38C();
  v90 = *(v10 - 8);
  v91 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = a3[3];
  v92 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v14);
  v89 = v12;
  sub_1C754F1CC();
  v15 = *(v4 + 24);
  v16 = *(v4 + 32);
  v102 = *(v4 + 16);
  v103 = v15;
  v104 = v16;
  v17 = v102;

  v18 = static StoryGenerationUtilities.assetObjectIDs(for:storyPhotoLibraryContext:)(a1, &v102);
  v19 = v102;

  v20 = *(v4 + 24);
  v21 = *(v4 + 16);

  v22 = [v21 librarySpecificFetchOptions];
  [v22 setSharingFilter_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v23 = swift_allocObject();
  v100 = xmmword_1C755BAB0;
  *(v23 + 16) = xmmword_1C755BAB0;
  *(v23 + 32) = sub_1C755068C();
  *(v23 + 40) = v24;
  sub_1C6FCA0EC(v23, v22);
  v93 = v22;
  [v22 setChunkSizeForFetch_];
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v25 = swift_allocObject();
    if (v13 == 1)
    {
      *(v25 + 16) = xmmword_1C755D200;
      v26 = MEMORY[0x1E69E6158];
      *(v25 + 56) = MEMORY[0x1E69E6158];
      v27 = sub_1C6F6D524();
      *(v25 + 64) = v27;
      v28 = MEMORY[0x1E69E7290];
      *(v25 + 32) = 0xD000000000000028;
      *(v25 + 40) = 0x80000001C75A3700;
      v29 = MEMORY[0x1E69E72E8];
      *(v25 + 96) = v28;
      *(v25 + 104) = v29;
      *(v25 + 72) = 1;
      *(v25 + 136) = v26;
      *(v25 + 144) = v27;
      *(v25 + 112) = 0xD000000000000028;
      *(v25 + 120) = 0x80000001C75A3700;
      *(v25 + 176) = v28;
      *(v25 + 184) = v29;
      *(v25 + 152) = 2;
      *(v25 + 216) = v26;
      *(v25 + 224) = v27;
      *(v25 + 192) = 0xD000000000000028;
      *(v25 + 200) = 0x80000001C75A3700;
      *(v25 + 256) = v28;
      *(v25 + 264) = v29;
      *(v25 + 232) = -1;
    }

    else
    {
      *(v25 + 16) = xmmword_1C755F060;
      v31 = MEMORY[0x1E69E6158];
      *(v25 + 56) = MEMORY[0x1E69E6158];
      v32 = sub_1C6F6D524();
      *(v25 + 64) = v32;
      *(v25 + 32) = 0xD000000000000028;
      *(v25 + 40) = 0x80000001C75A3700;
      v33 = MEMORY[0x1E69E7290];
      v34 = MEMORY[0x1E69E72E8];
      *(v25 + 96) = MEMORY[0x1E69E7290];
      *(v25 + 104) = v34;
      *(v25 + 72) = 1;
      *(v25 + 136) = v31;
      *(v25 + 144) = v32;
      *(v25 + 112) = 0xD000000000000028;
      *(v25 + 120) = 0x80000001C75A3700;
      *(v25 + 176) = v33;
      *(v25 + 184) = v34;
      *(v25 + 152) = -1;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v30 = swift_allocObject();
    *(v30 + 16) = v100;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1C6F6D524();
    *(v30 + 32) = 0xD00000000000001CLL;
    *(v30 + 40) = 0x80000001C75A2960;
  }

  v35 = sub_1C755112C();
  v36 = v93;
  [v93 setInternalPredicate_];

  v37 = objc_opt_self();
  sub_1C71BA844(v18, v45, v46, v38, v39, v40, v41, v42, v43, v44, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, *(&v100 + 1), v101, v102);
  v48 = v47;

  v49 = v48;
  v50 = v36;
  v51 = sub_1C740A230(v49, v36, v37);
  if (!v51)
  {
    sub_1C75504FC();

LABEL_36:
    __swift_project_boxed_opaque_existential_1(v92, v92[3]);
    v87 = v89;
    sub_1C754F1AC();
    (*(v90 + 8))(v87, v91);
    return;
  }

  v52 = v51;
  v53 = [v51 count];
  if (v53 < 1)
  {

    goto LABEL_36;
  }

  v54 = v53;
  v55 = 0;
  v102 = MEMORY[0x1E69E7CD0];
  v95 = v52;
  v96 = (v8 + 8);
  v94 = v53;
  while (1)
  {
    v56 = v55 + 1000;
    v57 = __OFADD__(v55, 1000);
    v58 = objc_autoreleasePoolPush();
    if (v57)
    {
      break;
    }

    if (v54 >= v56)
    {
      v59 = v55 + 1000;
    }

    else
    {
      v59 = v54;
    }

    if (v59 < v55)
    {
      goto LABEL_39;
    }

    v60 = v58;
    v61 = v97;
    sub_1C754E26C();
    v62 = sub_1C754E28C();
    (*v96)(v61, v98);
    v63 = [v52 objectsAtIndexes_];

    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    v64 = sub_1C7550B5C();

    v65 = sub_1C6FB6304();
    if (v65)
    {
      v70 = v65;
      v101 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C(0, v65 & ~(v65 >> 63), 0, v66, v67, v68, v69);
      if (v70 < 0)
      {
        goto LABEL_40;
      }

      v99 = v60;
      *&v100 = v56;
      v71 = 0;
      v72 = v101;
      while (1)
      {
        v73 = (v64 & 0xC000000000000001) != 0 ? MEMORY[0x1CCA5DDD0](v71, v64) : *(v64 + 8 * v71 + 32);
        v74 = v73;
        v75 = [v74 uuid];
        if (v75)
        {
          v76 = v75;
          v77 = sub_1C755068C();
          v79 = v78;
        }

        else
        {
          v77 = 0;
          v79 = 0;
        }

        if (!v79)
        {
          break;
        }

        v101 = v72;
        v85 = *(v72 + 16);
        v84 = *(v72 + 24);
        if (v85 >= v84 >> 1)
        {
          sub_1C6F7ED9C(v84 > 1, v85 + 1, 1, v80, v81, v82, v83);
          v72 = v101;
        }

        ++v71;
        *(v72 + 16) = v85 + 1;
        v86 = v72 + 16 * v85;
        *(v86 + 32) = v77;
        *(v86 + 40) = v79;
        if (v70 == v71)
        {

          v54 = v94;
          v52 = v95;
          v60 = v99;
          v56 = v100;
          goto LABEL_32;
        }
      }

      __break(1u);
      break;
    }

    v72 = MEMORY[0x1E69E7CC0];
LABEL_32:
    sub_1C73978C4(v72);
    objc_autoreleasePoolPop(v60);
    v55 = v56;
    if (v56 >= v54)
    {

      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t StoryAsset.Manager.deinit()
{
  v1 = *(v0 + 16);

  sub_1C723BC08(v0 + 48);
  return v0;
}

uint64_t StoryAsset.Manager.__deallocating_deinit()
{
  StoryAsset.Manager.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1C723B014@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C6F92554(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C723B044@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C6F925A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C723B078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6F92554(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C723B0A0(uint64_t a1)
{
  v2 = sub_1C723BC70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C723B0DC(uint64_t a1)
{
  v2 = sub_1C723BC70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StoryAsset.Collection.intersection(with:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C7074704();
  v5 = v4;
  sub_1C7074704();
  v7 = v6;
  sub_1C7069A44();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2179F0, &qword_1C756D5F0);
  OUTLINED_FUNCTION_3_70();
  v10 = swift_allocObject();
  *(OUTLINED_FUNCTION_13_48(v10) + 16) = MEMORY[0x1E69E7CC8];
  sub_1C72B86EC();
  if (v11)
  {
    *a2 = v9;
    a2[1] = v5;
    a2[2] = v7;
    a2[3] = v3;
  }

  else
  {

    v12 = sub_1C723A15C();
    v13 = OUTLINED_FUNCTION_166_0(&type metadata for StoryAsset.Error, v12);
    OUTLINED_FUNCTION_5_55(v13, v14);
  }
}

void StoryAsset.Collection.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2198D8, &qword_1C7579F28);
  OUTLINED_FUNCTION_3_0();
  v26 = v25;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v31 - v28;
  v30 = *(v20 + 8);
  v31[1] = *(v20 + 16);
  v31[2] = v30;
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_1C723BC70();
  sub_1C75504FC();
  sub_1C755200C();
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
  sub_1C70FBAD0(&qword_1EDD0CEF0, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
  sub_1C7551D2C();

  if (!v21)
  {
    v32 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152E8, &qword_1C755CBE0);
    sub_1C723BD18(&qword_1EC2198E8, sub_1C723BCC4, MEMORY[0x1E69E64F0]);
    OUTLINED_FUNCTION_1_5();
    v32 = 2;
    OUTLINED_FUNCTION_1_5();
  }

  (*(v26 + 8))(v29, v24);
  OUTLINED_FUNCTION_125();
}

void StoryAsset.Collection.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2198F8, &qword_1C7579F30);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2179F0, &qword_1C756D5F0);
  OUTLINED_FUNCTION_3_70();
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = MEMORY[0x1E69E7CC8];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1C723BC70();
  sub_1C7551FFC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
    sub_1C70FBAD0(&qword_1EDD0CEE8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152E8, &qword_1C755CBE0);
    sub_1C723BD18(&qword_1EC219900, sub_1C723BD90, MEMORY[0x1E69E6510]);
    OUTLINED_FUNCTION_9_55();
    sub_1C7551C1C();
    OUTLINED_FUNCTION_9_55();
    sub_1C7551C1C();
    v17 = OUTLINED_FUNCTION_2_75();
    v18(v17);
    *v14 = a10;
    v14[1] = a10;
    v14[2] = a10;
    v14[3] = v16;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C723B78C()
{
  result = qword_1EC219890;
  if (!qword_1EC219890)
  {
    result = swift_getWitnessTable(aU_7, &type metadata for StoryAsset.Filter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219890);
  }

  return result;
}

unint64_t sub_1C723B7E0()
{
  result = qword_1EC219898;
  if (!qword_1EC219898)
  {
    result = swift_getWitnessTable(byte_1C757A5F4, &type metadata for StoryAsset.Filter.StronglyEligibleCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219898);
  }

  return result;
}

unint64_t sub_1C723B834()
{
  result = qword_1EC2198A0;
  if (!qword_1EC2198A0)
  {
    result = swift_getWitnessTable(byte_1C757A5A4, &type metadata for StoryAsset.Filter.SafeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2198A0);
  }

  return result;
}

unint64_t sub_1C723B888()
{
  result = qword_1EC2198A8;
  if (!qword_1EC2198A8)
  {
    result = swift_getWitnessTable(aE_4, &type metadata for StoryAsset.Filter.ExtendedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2198A8);
  }

  return result;
}

uint64_t sub_1C723B8DC(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[6] = *MEMORY[0x1E69E9840];
  v11[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v11[3] = v11;
  v11[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = &v11[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1C71FAC38(0, v5, v6);
    v7 = sub_1C723BA68(v6, v5, v3, a2);
  }

  else
  {
    v9 = swift_slowAlloc();
    v7 = sub_1C723BB88(v9, v5, sub_1C723C594);
    MEMORY[0x1CCA5F8E0](v9, -1, -1);
  }

  return v7 & 1;
}

uint64_t sub_1C723BA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = a4 + 56;
  v9 = a3 + 32;
  while (2)
  {
    v10 = *(v9 + v7++);
    sub_1C7551F3C();
    MEMORY[0x1CCA5E460](v10);
    result = sub_1C7551FAC();
    v12 = ~(-1 << *(a4 + 32));
    while (1)
    {
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = 1 << (result & v12);
      if ((v15 & *(v8 + 8 * v14)) == 0)
      {
        break;
      }

      result = v13 + 1;
      if (*(*(a4 + 48) + v13) == v10)
      {
        v16 = *(a1 + 8 * v14);
        *(a1 + 8 * v14) = v16 | v15;
        if ((v16 & v15) == 0)
        {
          if (__OFADD__(v6++, 1))
          {
            __break(1u);
            return result;
          }

          if (v6 == *(a4 + 16))
          {
            return 1;
          }
        }

        break;
      }
    }

    if (v7 != v4)
    {
      continue;
    }

    break;
  }

  return 0;
}

void *sub_1C723BB88(void *result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a3(&v8, v6, a2);
    if (!v3)
    {
      v7 = v8;
    }

    return (v7 & 1);
  }

  return result;
}

uint64_t sub_1C723BC08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2198D0, &qword_1C7579F20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C723BC70()
{
  result = qword_1EC2198E0;
  if (!qword_1EC2198E0)
  {
    result = swift_getWitnessTable(byte_1C757A504, &type metadata for StoryAsset.Collection.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2198E0);
  }

  return result;
}

unint64_t sub_1C723BCC4()
{
  result = qword_1EC2198F0;
  if (!qword_1EC2198F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryAsset.Filter, &type metadata for StoryAsset.Filter, v0, v1);
    atomic_store(result, &qword_1EC2198F0);
  }

  return result;
}

uint64_t sub_1C723BD18(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2152E8, &qword_1C755CBE0);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C723BD90()
{
  result = qword_1EC219908;
  if (!qword_1EC219908)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryAsset.Filter, &type metadata for StoryAsset.Filter, v0, v1);
    atomic_store(result, &qword_1EC219908);
  }

  return result;
}

unint64_t sub_1C723BDE8()
{
  result = qword_1EDD0C900;
  if (!qword_1EDD0C900)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryAsset.Filter, &type metadata for StoryAsset.Filter, v0, v1);
    atomic_store(result, &qword_1EDD0C900);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryAsset(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C723BF64(uint64_t *a1, int a2)
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

uint64_t sub_1C723BFA4(uint64_t result, int a2, int a3)
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

_BYTE *sub_1C723C014(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C723C124()
{
  result = qword_1EC219918;
  if (!qword_1EC219918)
  {
    result = swift_getWitnessTable(asc_1C757A3EC, &type metadata for StoryAsset.Filter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219918);
  }

  return result;
}

unint64_t sub_1C723C17C()
{
  result = qword_1EC219920;
  if (!qword_1EC219920)
  {
    result = swift_getWitnessTable(aM_2, &type metadata for StoryAsset.Collection.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219920);
  }

  return result;
}

unint64_t sub_1C723C1D4()
{
  result = qword_1EC219928;
  if (!qword_1EC219928)
  {
    result = swift_getWitnessTable(byte_1C757A414, &type metadata for StoryAsset.Collection.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219928);
  }

  return result;
}

unint64_t sub_1C723C22C()
{
  result = qword_1EC219930;
  if (!qword_1EC219930)
  {
    result = swift_getWitnessTable(byte_1C757A43C, &type metadata for StoryAsset.Collection.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219930);
  }

  return result;
}

unint64_t sub_1C723C284()
{
  result = qword_1EC219938;
  if (!qword_1EC219938)
  {
    result = swift_getWitnessTable(byte_1C757A30C, &type metadata for StoryAsset.Filter.ExtendedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219938);
  }

  return result;
}

unint64_t sub_1C723C2DC()
{
  result = qword_1EC219940;
  if (!qword_1EC219940)
  {
    result = swift_getWitnessTable(byte_1C757A334, &type metadata for StoryAsset.Filter.ExtendedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219940);
  }

  return result;
}

unint64_t sub_1C723C334()
{
  result = qword_1EC219948;
  if (!qword_1EC219948)
  {
    result = swift_getWitnessTable(a5_1, &type metadata for StoryAsset.Filter.SafeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219948);
  }

  return result;
}

unint64_t sub_1C723C38C()
{
  result = qword_1EC219950;
  if (!qword_1EC219950)
  {
    result = swift_getWitnessTable(aM_3, &type metadata for StoryAsset.Filter.SafeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219950);
  }

  return result;
}

unint64_t sub_1C723C3E4()
{
  result = qword_1EC219958;
  if (!qword_1EC219958)
  {
    result = swift_getWitnessTable(byte_1C757A26C, &type metadata for StoryAsset.Filter.StronglyEligibleCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219958);
  }

  return result;
}

unint64_t sub_1C723C43C()
{
  result = qword_1EC219960;
  if (!qword_1EC219960)
  {
    result = swift_getWitnessTable(byte_1C757A294, &type metadata for StoryAsset.Filter.StronglyEligibleCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219960);
  }

  return result;
}

unint64_t sub_1C723C494()
{
  result = qword_1EC219968;
  if (!qword_1EC219968)
  {
    result = swift_getWitnessTable(byte_1C757A35C, &type metadata for StoryAsset.Filter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219968);
  }

  return result;
}

unint64_t sub_1C723C4EC()
{
  result = qword_1EC219970;
  if (!qword_1EC219970)
  {
    result = swift_getWitnessTable(byte_1C757A384, &type metadata for StoryAsset.Filter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219970);
  }

  return result;
}

uint64_t sub_1C723C560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1C723BA68(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

void static SocialGroupFetcher.fetchCollections(using:uuids:)(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  sub_1C75504FC();
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (*(a2 + 48) + ((v9 << 10) | (16 * v12)));
    v14 = *v13;
    v15 = v13[1];
    sub_1C723CFB0();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1C75504FC();
    v17 = sub_1C7082A30(v14, v15, ObjCClassFromMetadata);
    v19 = v18;

    if (v19)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v10 = v23;
      }

      v20 = *(v10 + 16);
      v21 = v20 + 1;
      if (v20 >= *(v10 + 24) >> 1)
      {
        sub_1C6FB1814();
        v21 = v20 + 1;
        v10 = v24;
      }

      *(v10 + 16) = v21;
      v22 = v10 + 16 * v20;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      sub_1C706D154();
      static SocialGroupFetcher.fetchCollections(using:localIdentifiers:)(a1);

      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1C723C790()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC219978);
  __swift_project_value_buffer(v0, qword_1EC219978);
  return sub_1C754FEFC();
}

uint64_t static SocialGroupFetcher.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC213EF8 != -1)
  {
    OUTLINED_FUNCTION_0_110(&qword_1EC213EF8);
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EC219978);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id static SocialGroupFetcher.predicateForFavorites(_:)(char a1)
{
  if (qword_1EC213EF8 != -1)
  {
    OUTLINED_FUNCTION_0_110(&qword_1EC213EF8);
  }

  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EC219978);
  v3 = sub_1C754FEEC();
  v4 = sub_1C755119C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = OUTLINED_FUNCTION_1_83();
    *(v5 + 4) = sub_1C6F765A4(v7, v8, &v11);
    _os_log_impl(&dword_1C6F5C000, v3, v4, "CollectionFetcher.%s do not supports favorites", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1CCA5F8E0](v6, -1, -1);
    MEMORY[0x1CCA5F8E0](v5, -1, -1);
  }

  v9 = [objc_opt_self() predicateWithValue_];

  return v9;
}

uint64_t static SocialGroupFetcher.defaultSortDescriptors(ascending:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C756AD80;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 32) = sub_1C6F6AF98(0xD000000000000017, 0x80000001C75A5B70, 1);
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 40) = sub_1C6F6AF98(0x724F6C61756E616DLL, 0xEB00000000726564, a1);
  v5 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 48) = sub_1C6F6AF98(0x6974616D6F747561, 0xEE00726564724F63, a1);
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 56) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 1);
  return v2;
}

uint64_t static SocialGroupFetcher.describe(collections:)(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v8[4] = sub_1C723CFF4;
  v8[5] = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C7067B48;
  v8[3] = &block_descriptor_19;
  v5 = _Block_copy(v8);

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v5);
  swift_beginAccess();
  v6 = *(v3 + 16);
  sub_1C75504FC();

  return v6;
}

uint64_t sub_1C723CC58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C755180C();
  sub_1C723CFB0();
  v6 = sub_1C755204C();
  v8 = v7;

  v23 = v6;
  MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
  MEMORY[0x1CCA5CD70](0x72476C6169636F53, 0xEB0000000070756FLL);
  MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
  v9 = sub_1C70CAC04(a1);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  MEMORY[0x1CCA5CD70](v9, v11);

  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  v12 = sub_1C723D038(a1);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v12 = 0x64656D616E6E75;
    v14 = 0xE700000000000000;
  }

  MEMORY[0x1CCA5CD70](v12, v14);

  MEMORY[0x1CCA5CD70](2629676, 0xE300000000000000);
  [a1 socialGroupVerifiedType];
  v15 = PHSocialGroupVerifiedTypeDescription();
  v16 = sub_1C755068C();
  v18 = v17;

  MEMORY[0x1CCA5CD70](v16, v18);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  swift_beginAccess();
  sub_1C6FB0600();
  v19 = *(*(a4 + 16) + 16);
  sub_1C6FB0EFC();
  v20 = *(a4 + 16);
  *(v20 + 16) = v19 + 1;
  v21 = v20 + 16 * v19;
  *(v21 + 32) = v23;
  *(v21 + 40) = v8;
  *(a4 + 16) = v20;
  return swift_endAccess();
}

id static SocialGroupFetcher.fetchCollections(using:)(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_1C7066104();
  v2 = [objc_opt_self() fetchSocialGroupsWithOptions_];

  return v2;
}

id static SocialGroupFetcher.fetchCollections(using:localIdentifiers:)(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_1C7066104();
  sub_1C71F8834(MEMORY[0x1E69E7CC0], v1);
  v2 = objc_opt_self();
  v3 = sub_1C75504FC();
  sub_1C71CD85C(v3);
  v4 = sub_1C7550B3C();

  v5 = [v2 fetchSocialGroupsWithLocalIdentifiers:v4 options:v1];

  return v5;
}

unint64_t sub_1C723CFB0()
{
  result = qword_1EDD069C0;
  if (!qword_1EDD069C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD069C0);
  }

  return result;
}

uint64_t sub_1C723D038(void *a1)
{
  v1 = [a1 customTitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

void static StoryCompletionProcessor.storyAssets(from:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  v43 = a2;
  v10 = *(a1 + 16);
  if (!v10)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_38:
    sub_1C71BA830(v12, a9, a10, a2, a3, a4, a5, a6, a7, a8, v43, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58[0], v58[1]);

    sub_1C755068C();
    v42 = objc_allocWithZone(MEMORY[0x1E69788E0]);
    OUTLINED_FUNCTION_0_111(v44);
    return;
  }

  v11 = 0;
  v50 = a1 + 32;
  v12 = MEMORY[0x1E69E7CC0];
  v46 = *(a1 + 16);
  while (1)
  {
    v13 = (v50 + 56 * v11);
    v14 = v13[1];
    v16 = v13[3];
    v15 = v13[4];
    v17 = v13[5];
    v18 = v13[6];
    sub_1C75504FC();
    v57 = v16;
    sub_1C75504FC();
    v19 = v15;
    v54 = v17;
    v56 = v18;
    sub_1C75504FC();
    v55 = v19;
    v20 = [v19 fetchedObjects];
    if (v20)
    {
      v21 = v20;
      sub_1C6FDEC1C();
      v22 = sub_1C7550B5C();
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }

    v23 = v22 >> 62 ? sub_1C75516BC() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v12 >> 62;
    v25 = v12 >> 62 ? OUTLINED_FUNCTION_4_60() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = v25 + v23;
    if (__OFADD__(v25, v23))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v24)
      {
        v27 = v12 & 0xFFFFFFFFFFFFFF8;
        if (v26 <= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_16:
      OUTLINED_FUNCTION_4_60();
      goto LABEL_17;
    }

    if (v24)
    {
      goto LABEL_16;
    }

LABEL_17:
    v12 = OUTLINED_FUNCTION_3_71();
    v27 = v12 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v59 = v23;
    v53 = v12;
    v28 = *(v27 + 16);
    v29 = (*(v27 + 24) >> 1) - v28;
    v30 = v27 + 8 * v28;
    v51 = v27;
    if (v22 >> 62)
    {
      v33 = sub_1C75516BC();
      if (v33)
      {
        v34 = v33;
        v52 = v22;
        v49 = sub_1C75516BC();
        if (v29 < v49)
        {
          goto LABEL_42;
        }

        if (v34 < 1)
        {
          goto LABEL_44;
        }

        v47 = v14;
        v48 = v11;
        sub_1C6FC04C0();
        for (i = 0; i != v34; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215150, &qword_1C756AD90);
          v36 = sub_1C6FDD09C(v58, i, v22);
          v38 = *v37;
          OUTLINED_FUNCTION_1_84();
          v36();
          *(v30 + 32 + 8 * i) = v30;
        }

        v10 = v46;
        v11 = v48;
        v31 = v49;
        goto LABEL_28;
      }
    }

    else
    {
      v31 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
        v52 = v22;
        if (v29 < v31)
        {
          goto LABEL_43;
        }

        v32 = sub_1C6FDEC1C();
        OUTLINED_FUNCTION_2_76(v32);
LABEL_28:

        if (v31 < v59)
        {
          goto LABEL_40;
        }

        if (v31 > 0)
        {
          v39 = *(v51 + 16);
          v40 = __OFADD__(v39, v31);
          v41 = v39 + v31;
          if (v40)
          {
            goto LABEL_41;
          }

          *(v51 + 16) = v41;
        }

        goto LABEL_33;
      }
    }

    if (v59 > 0)
    {
      goto LABEL_40;
    }

LABEL_33:
    ++v11;

    v12 = v53;
    if (v11 == v10)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

void static StoryCompletionProcessor.storyCuratedAssets(from:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  v46 = a2;
  v10 = *(a1 + 16);
  if (!v10)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_38:
    sub_1C71BA830(v12, a9, a10, a2, a3, a4, a5, a6, a7, a8, v46, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, *v61, *&v61[8]);

    sub_1C755068C();
    v45 = objc_allocWithZone(MEMORY[0x1E69788E0]);
    OUTLINED_FUNCTION_0_111(v47);
    return;
  }

  v11 = 0;
  v55 = a1 + 32;
  v12 = MEMORY[0x1E69E7CC0];
  v49 = *(a1 + 16);
  while (1)
  {
    v13 = (v55 + 56 * v11);
    v14 = v13[1];
    v15 = v13[3];
    v16 = v13[4];
    v17 = v13[5];
    v18 = v13[6];
    sub_1C75504FC();
    sub_1C75504FC();
    v59 = v16;
    v19 = v17;
    v60 = v18;
    sub_1C75504FC();
    v58 = v19;
    v20 = [v19 fetchedObjects];
    if (v20)
    {
      v21 = v20;
      sub_1C6FDEC1C();
      v22 = sub_1C7550B5C();
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }

    v23 = v22 >> 62 ? sub_1C75516BC() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v12 >> 62;
    v25 = v12 >> 62 ? OUTLINED_FUNCTION_4_60() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v62 = v23;
    v26 = __OFADD__(v25, v23);
    v27 = v25 + v23;
    if (v26)
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v24)
      {
        v28 = v12 & 0xFFFFFFFFFFFFFF8;
        if (v27 <= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_16:
      OUTLINED_FUNCTION_4_60();
      goto LABEL_17;
    }

    if (v24)
    {
      goto LABEL_16;
    }

LABEL_17:
    v12 = OUTLINED_FUNCTION_3_71();
    v28 = v12 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v57 = v12;
    v29 = *(v28 + 16);
    v30 = (*(v28 + 24) >> 1) - v29;
    v31 = v28 + 8 * v29;
    if (v22 >> 62)
    {
      v36 = sub_1C75516BC();
      v37 = v22;
      if (v36)
      {
        v38 = v36;
        v56 = v37;
        v54 = sub_1C75516BC();
        if (v30 < v54)
        {
          goto LABEL_42;
        }

        if (v38 < 1)
        {
          goto LABEL_44;
        }

        v50 = v28;
        v51 = v15;
        v52 = v14;
        v53 = v11;
        sub_1C6FC04C0();
        for (i = 0; i != v38; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215150, &qword_1C756AD90);
          v40 = sub_1C6FDD09C(v61, i, v56);
          v42 = *v41;
          OUTLINED_FUNCTION_1_84();
          v40();
          *(v31 + 32 + 8 * i) = v31;
        }

        v10 = v49;
        v11 = v53;
        v34 = v54;
        goto LABEL_28;
      }
    }

    else
    {
      v32 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = v22;
      if (v32)
      {
        v34 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v56 = v33;
        if (v30 < v32)
        {
          goto LABEL_43;
        }

        v35 = sub_1C6FDEC1C();
        OUTLINED_FUNCTION_2_76(v35);
LABEL_28:

        if (v34 < v62)
        {
          goto LABEL_40;
        }

        if (v34 > 0)
        {
          v43 = *(v28 + 16);
          v26 = __OFADD__(v43, v34);
          v44 = v43 + v34;
          if (v26)
          {
            goto LABEL_41;
          }

          *(v28 + 16) = v44;
        }

        goto LABEL_33;
      }
    }

    if (v62 > 0)
    {
      goto LABEL_40;
    }

LABEL_33:
    ++v11;

    v12 = v57;
    if (v11 == v10)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t MaestroMusicLibraryManagerError.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t sub_1C723D8D4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC219990);
  __swift_project_value_buffer(v0, qword_1EC219990);
  return sub_1C754FEFC();
}

uint64_t static MaestroMusicLibraryManager.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC213F00 != -1)
  {
    OUTLINED_FUNCTION_0_112(&qword_1EC213F00);
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EC219990);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t MaestroMusicLibraryManager.init(photoLibrary:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C723DA10()
{
  v1 = *(v0 + 24);
  v2 = sub_1C75504DC();
  *(v0 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1C723DAE0;
  v4 = *(v0 + 24);

  return static MaestroMusicLibraryManager.requestKeywordsBySongId(_:options:)(v4, v2);
}

uint64_t sub_1C723DAE0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  *(*v2 + 48) = v1;

  if (v1)
  {
    v6 = sub_1C723DC68;
  }

  else
  {
    *(v4 + 56) = a1;
    v6 = sub_1C723DC44;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C723DC44()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 24);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1C723DC68()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static MaestroMusicLibraryManager.requestKeywordsBySongId(_:options:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C723DCE0()
{
  v25 = v0;
  v1 = [*(v0 + 152) photoAnalysisClient];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    if (qword_1EC213F00 != -1)
    {
      OUTLINED_FUNCTION_0_112(&qword_1EC213F00);
    }

    v3 = *(v0 + 160);
    v4 = sub_1C754FF1C();
    *(v0 + 176) = __swift_project_value_buffer(v4, qword_1EC219990);
    sub_1C75504FC();
    v5 = sub_1C754FEEC();
    v6 = sub_1C75511BC();

    if (os_log_type_enabled(v5, v6))
    {
      swift_slowAlloc();
      v7 = OUTLINED_FUNCTION_31_0();
      v24 = v7;
      *v3 = 136315138;
      v8 = sub_1C75504BC();
      v10 = sub_1C6F765A4(v8, v9, &v24);

      *(v3 + 4) = v10;
      OUTLINED_FUNCTION_39();
      _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C70C10E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
    v16 = sub_1C755048C();
    *(v0 + 184) = v16;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1C723E084;
    v17 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2199B0, &qword_1C757A748);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1C723F370;
    *(v0 + 104) = &block_descriptor_20;
    *(v0 + 112) = v17;
    [v2 requestMaestroSongsWithOptions:v16 reply:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    if (qword_1EC213F00 != -1)
    {
      OUTLINED_FUNCTION_0_112(&qword_1EC213F00);
    }

    v18 = sub_1C754FF1C();
    __swift_project_value_buffer(v18, qword_1EC219990);
    v19 = sub_1C754FEEC();
    v20 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C6F5C000, v19, v20, "(PAD pass thru) requestMaestroSongs photoAnalysisClientNotAvailable", v21, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C723E314();
    swift_allocError();
    swift_willThrow();
    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1C723E084()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1C723E29C;
  }

  else
  {
    v2 = sub_1C723E194;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C723E194()
{
  v1 = *(v0 + 144);

  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  v4 = OUTLINED_FUNCTION_128(v3);
  v5 = *(v0 + 168);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v1 + 16);

    OUTLINED_FUNCTION_39();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(v1);
}

uint64_t sub_1C723E29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[23];
  v5 = v3[21];
  swift_willThrow();

  v6 = v3[1];

  return v6();
}

unint64_t sub_1C723E314()
{
  result = qword_1EC2199A8;
  if (!qword_1EC2199A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MaestroMusicLibraryManagerError, &type metadata for MaestroMusicLibraryManagerError, v0, v1);
    atomic_store(result, &qword_1EC2199A8);
  }

  return result;
}

void sub_1C723E380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 16);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v44 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v9, 0, a4, a5, a6, a7);
    v10 = v44;
    v12 = sub_1C70D4544();
    v13 = 0;
    v14 = v8 + 64;
    v41 = v9;
    if ((v12 & 0x8000000000000000) == 0)
    {
      while (v12 < 1 << *(v8 + 32))
      {
        v15 = v12 >> 6;
        if ((*(v14 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v8 + 36) != v11)
        {
          goto LABEL_27;
        }

        v42 = v13;
        v43 = v11;
        v16 = (*(v8 + 48) + 16 * v12);
        v17 = *v16;
        v18 = v16[1];
        v20 = *(v44 + 16);
        v19 = *(v44 + 24);
        sub_1C75504FC();
        if (v20 >= v19 >> 1)
        {
          sub_1C6F7ED9C(v19 > 1, v20 + 1, 1, v21, v22, v23, v24);
        }

        *(v44 + 16) = v20 + 1;
        v25 = v44 + 16 * v20;
        *(v25 + 32) = v17;
        *(v25 + 40) = v18;
        v26 = 1 << *(v8 + 32);
        if (v12 >= v26)
        {
          goto LABEL_28;
        }

        v14 = v8 + 64;
        v27 = *(v8 + 64 + 8 * v15);
        if ((v27 & (1 << v12)) == 0)
        {
          goto LABEL_29;
        }

        if (*(v8 + 36) != v43)
        {
          goto LABEL_30;
        }

        v28 = v27 & (-2 << (v12 & 0x3F));
        if (v28)
        {
          v26 = __clz(__rbit64(v28)) | v12 & 0x7FFFFFFFFFFFFFC0;
          v29 = v41;
        }

        else
        {
          v30 = v15 << 6;
          v29 = v41;
          v31 = (v8 + 72 + 8 * v15);
          v32 = v15 + 1;
          while (v32 < (v26 + 63) >> 6)
          {
            v34 = *v31++;
            v33 = v34;
            v30 += 64;
            ++v32;
            if (v34)
            {
              OUTLINED_FUNCTION_7_49();
              sub_1C6F9ED50(v12, v35, v36);
              v26 = __clz(__rbit64(v33)) + v30;
              goto LABEL_18;
            }
          }

          OUTLINED_FUNCTION_7_49();
          sub_1C6F9ED50(v12, v37, v38);
        }

LABEL_18:
        v13 = v42 + 1;
        if (v42 + 1 == v29)
        {
          v7 = v40;
          goto LABEL_22;
        }

        v11 = *(v8 + 36);
        v12 = v26;
        if (v26 < 0)
        {
          break;
        }
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
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_22:
    v39 = *(v7 + 8);

    v39(v10);
  }
}

void MaestroMusicLibraryManager.allMaestroKeywords(_:)(char a1)
{
  LOBYTE(v49) = a1;
  v3 = *(v1 + 8);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v6)
      {
        while (1)
        {
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v10 >= v7)
          {
            goto LABEL_20;
          }

          v6 = *(v3 + 64 + 8 * v10);
          ++v8;
          if (v6)
          {
            v8 = v10;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        OUTLINED_FUNCTION_0_112(&qword_1EC213F00);
        goto LABEL_21;
      }

LABEL_9:
      v11 = *(*(v3 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
      v12 = *(v11 + 16);
      v13 = *(v9 + 16);
      v2 = v13 + v12;
      if (__OFADD__(v13, v12))
      {
        goto LABEL_42;
      }

      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_native() || v2 > *(v9 + 24) >> 1)
      {
        sub_1C6FB1814();
        v9 = v14;
      }

      v6 &= v6 - 1;
      if (!*(v11 + 16))
      {
        break;
      }

      if ((*(v9 + 24) >> 1) - *(v9 + 16) < v12)
      {
        goto LABEL_43;
      }

      swift_arrayInitWithCopy();

      if (v12)
      {
        v15 = *(v9 + 16);
        v16 = __OFADD__(v15, v12);
        v17 = v15 + v12;
        if (v16)
        {
          goto LABEL_44;
        }

        *(v9 + 16) = v17;
      }
    }
  }

  while (!v12);
  __break(1u);
LABEL_20:

  sub_1C706D154();
  v50[0] = sub_1C71CD85C(v18);
  sub_1C75504FC();
  sub_1C70401E8();

  v2 = v50[0];
  if (qword_1EC213F00 != -1)
  {
    goto LABEL_45;
  }

LABEL_21:
  v19 = sub_1C754FF1C();
  __swift_project_value_buffer(v19, qword_1EC219990);

  v20 = sub_1C754FEEC();
  v21 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = *(v2 + 16);

    _os_log_impl(&dword_1C6F5C000, v20, v21, "Found %ld unique Maestro keywords", v22, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  if (v49)
  {
    v23 = 0;
    v24 = *(v2 + 16);
    v25 = v2 + 40;
    v49 = MEMORY[0x1E69E7CC0];
LABEL_26:
    v26 = (v25 + 16 * v23);
    while (v24 != v23)
    {
      if (v23 >= *(v2 + 16))
      {
        goto LABEL_41;
      }

      v27 = *(v26 - 1);
      v28 = *v26;
      v50[0] = v27;
      v50[1] = v28;
      sub_1C6FB5E8C();
      sub_1C75504FC();
      if ((sub_1C75515AC() & 1) == 0)
      {
        v29 = v49;
        v51 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6F7ED9C(0, *(v49 + 16) + 1, 1, v30, v31, v32, v33);
          v29 = v51;
        }

        v35 = *(v29 + 16);
        v34 = *(v29 + 24);
        if (v35 >= v34 >> 1)
        {
          v37 = OUTLINED_FUNCTION_15(v34);
          sub_1C6F7ED9C(v37, v35 + 1, 1, v38, v39, v40, v41);
          v29 = v51;
        }

        ++v23;
        *(v29 + 16) = v35 + 1;
        v49 = v29;
        v36 = v29 + 16 * v35;
        *(v36 + 32) = v27;
        *(v36 + 40) = v28;
        v25 = v2 + 40;
        goto LABEL_26;
      }

      v26 += 2;
      ++v23;
    }

    v42 = sub_1C754FEEC();
    v43 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v50[0] = v45;
      *v44 = 134218242;
      *(v44 + 4) = *(v49 + 16);

      *(v44 + 12) = 2080;
      v46 = MEMORY[0x1CCA5D090](v49, MEMORY[0x1E69E6158]);
      v48 = sub_1C6F765A4(v46, v47, v50);

      *(v44 + 14) = v48;
      _os_log_impl(&dword_1C6F5C000, v42, v43, "Found %ld Maestro keywords excluding moods: %s", v44, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }
  }
}

void MaestroMusicLibraryManager.allMoodKeywords(removeMoodTagPrefix:)(int a1)
{
  MaestroMusicLibraryManager.allMaestroKeywords(_:)(1);
  v3 = v2;
  v4 = 0;
  v5 = *(v2 + 16);
  v6 = v2 + 40;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v6 + 16 * v4);
  while (v5 != v4)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    v10 = *(v8 - 1);
    v9 = *v8;
    sub_1C75504FC();
    if (sub_1C755092C())
    {
      v44 = a1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6F7ED9C(0, v7[2] + 1, 1, v11, v12, v13, v14);
      }

      v16 = v7[2];
      v15 = v7[3];
      if (v16 >= v15 >> 1)
      {
        v18 = OUTLINED_FUNCTION_15(v15);
        sub_1C6F7ED9C(v18, v16 + 1, 1, v19, v20, v21, v22);
      }

      ++v4;
      v7[2] = v16 + 1;
      v17 = &v7[2 * v16];
      v17[4] = v10;
      v17[5] = v9;
      a1 = v44;
      goto LABEL_2;
    }

    v8 += 2;
    ++v4;
  }

  if (a1)
  {
    v27 = v7[2];
    if (v27)
    {
      v45 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C(0, v27, 0, v23, v24, v25, v26);
      v28 = v7 + 5;
      do
      {
        v29 = *(v28 - 1);
        v30 = *v28;
        swift_bridgeObjectRetain_n();
        v31 = sub_1C75507FC();
        v32 = sub_1C70CE56C(v31, v29, v30);
        v33 = MEMORY[0x1CCA5CC40](v32);
        v35 = v34;

        v37 = *(v45 + 16);
        v36 = *(v45 + 24);
        if (v37 >= v36 >> 1)
        {
          v39 = OUTLINED_FUNCTION_15(v36);
          sub_1C6F7ED9C(v39, v37 + 1, 1, v40, v41, v42, v43);
        }

        *(v45 + 16) = v37 + 1;
        v38 = v45 + 16 * v37;
        *(v38 + 32) = v33;
        *(v38 + 40) = v35;
        v28 += 2;
        --v27;
      }

      while (v27);
    }
  }
}

void *MaestroMusicLibraryManager.songIDsForKeywords(_:)(unint64_t a1)
{
  v4 = *(v1 + 8);
  v55 = a1;
  v9 = sub_1C723F424(v4, sub_1C723F788, v54);
  v10 = v9[2];
  if (v10)
  {
    v50 = a1;
    v56 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v10, 0, v5, v6, v7, v8);
    v11 = v56;
    v13 = sub_1C70D4544();
    v14 = 0;
    v15 = (v9 + 8);
    v51 = v10;
    if ((v13 & 0x8000000000000000) == 0)
    {
      while (v13 < 1 << *(v9 + 32))
      {
        v16 = v13 >> 6;
        v2 = 1 << v13;
        if ((*&v15[8 * (v13 >> 6)] & (1 << v13)) == 0)
        {
          goto LABEL_29;
        }

        if (*(v9 + 9) != v12)
        {
          goto LABEL_30;
        }

        v52 = v14;
        v53 = v12;
        v17 = (v9[6] + 16 * v13);
        a1 = *v17;
        v18 = v17[1];
        v56 = v11;
        v20 = *(v11 + 16);
        v19 = *(v11 + 24);
        sub_1C75504FC();
        if (v20 >= v19 >> 1)
        {
          sub_1C6F7ED9C(v19 > 1, v20 + 1, 1, v21, v22, v23, v24);
          v11 = v56;
        }

        *(v11 + 16) = v20 + 1;
        v25 = v11 + 16 * v20;
        *(v25 + 32) = a1;
        *(v25 + 40) = v18;
        v26 = 1 << *(v9 + 32);
        if (v13 >= v26)
        {
          goto LABEL_31;
        }

        v15 = (v9 + 8);
        v27 = v9[v16 + 8];
        if ((v27 & v2) == 0)
        {
          goto LABEL_32;
        }

        if (*(v9 + 9) != v53)
        {
          goto LABEL_33;
        }

        v28 = v27 & (-2 << (v13 & 0x3F));
        if (v28)
        {
          v26 = __clz(__rbit64(v28)) | v13 & 0x7FFFFFFFFFFFFFC0;
          v29 = v51;
        }

        else
        {
          v2 = v16 << 6;
          v30 = v16 + 1;
          v29 = v51;
          v31 = &v9[v16 + 9];
          while (v30 < (v26 + 63) >> 6)
          {
            v32 = *v31++;
            a1 = v32;
            v2 += 64;
            ++v30;
            if (v32)
            {
              OUTLINED_FUNCTION_7_49();
              sub_1C6F9ED50(v13, v33, v34);
              v26 = __clz(__rbit64(a1)) + v2;
              goto LABEL_18;
            }
          }

          OUTLINED_FUNCTION_7_49();
          sub_1C6F9ED50(v13, v35, v36);
        }

LABEL_18:
        v14 = v52 + 1;
        if (v52 + 1 == v29)
        {

          a1 = v50;
          goto LABEL_23;
        }

        v12 = *(v9 + 9);
        v13 = v26;
        if (v26 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_23:
  if (qword_1EC213F00 != -1)
  {
LABEL_34:
    OUTLINED_FUNCTION_0_112(&qword_1EC213F00);
  }

  v37 = sub_1C754FF1C();
  __swift_project_value_buffer(v37, qword_1EC219990);
  sub_1C75504FC();
  sub_1C75504FC();
  v38 = sub_1C754FEEC();
  v39 = sub_1C755117C();

  if (os_log_type_enabled(v38, v39))
  {
    swift_slowAlloc();
    v40 = OUTLINED_FUNCTION_31_0();
    v56 = v40;
    *v2 = 134218242;
    *(v2 + 4) = *(v11 + 16);

    *(v2 + 12) = 2080;
    v41 = MEMORY[0x1CCA5D090](a1, MEMORY[0x1E69E6158]);
    v43 = sub_1C6F765A4(v41, v42, &v56);

    *(v2 + 14) = v43;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v44, v45, v46, v47, v48, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v40);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  return v11;
}

BOOL sub_1C723F0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C75504FC();
  sub_1C706D154();
  v6 = *(sub_1C72B8CBC(a4, v5) + 16);

  return v6 != 0;
}

void *MaestroMusicLibraryManager.songsForMoods(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a1;
  v9 = *v7;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v32 = *v7;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v10, 0, a4, a5, a6, a7);
    v11 = v35;
    v33 = v8;
    v12 = (v8 + 40);
    do
    {
      v14 = *(v12 - 1);
      v13 = *v12;
      sub_1C75504FC();
      if ((sub_1C755092C() & 1) == 0)
      {
        v34[0] = 0x5F646F6F4DLL;
        v34[1] = 0xE500000000000000;
        MEMORY[0x1CCA5CD70](v14, v13);

        v13 = 0xE500000000000000;
        v14 = 0x5F646F6F4DLL;
      }

      v35 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        v18 = OUTLINED_FUNCTION_15(v15);
        sub_1C6F7ED9C(v18, v16 + 1, 1, v19, v20, v21, v22);
        v11 = v35;
      }

      *(v11 + 16) = v16 + 1;
      v17 = v11 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v12 += 2;
      --v10;
    }

    while (v10);
    v8 = v33;
    v9 = v32;
  }

  *v34 = v9;
  v23 = MaestroMusicLibraryManager.songIDsForKeywords(_:)(v11);

  if (qword_1EC213F00 != -1)
  {
    OUTLINED_FUNCTION_0_112(&qword_1EC213F00);
  }

  v24 = sub_1C754FF1C();
  __swift_project_value_buffer(v24, qword_1EC219990);
  sub_1C75504FC();
  sub_1C75504FC();
  v25 = sub_1C754FEEC();
  v26 = sub_1C755117C();

  if (os_log_type_enabled(v25, v26))
  {
    swift_slowAlloc();
    v27 = OUTLINED_FUNCTION_31_0();
    v34[0] = v27;
    *v11 = 134218242;
    *(v11 + 4) = v23[2];

    *(v11 + 12) = 2080;
    v28 = MEMORY[0x1CCA5D090](v8, MEMORY[0x1E69E6158]);
    v30 = sub_1C6F765A4(v28, v29, v34);

    *(v11 + 14) = v30;
    _os_log_impl(&dword_1C6F5C000, v25, v26, "Found %ld songs matching moods: %s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  return v23;
}

uint64_t sub_1C723F370(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_1C6FF5694();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C75504AC();

    return sub_1C6FF5698();
  }
}

void *sub_1C723F424(uint64_t a1, uint64_t a2, void *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_4_61();
      a3 = sub_1C723F6F8(v13, v14, v15, v16);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      return a3;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1C71FAC38(0, v6, v17 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_4_61();
  sub_1C723F584(v7, v8, v9, v10);
  if (!v3)
  {
    return v11;
  }

  swift_willThrow();
  return a3;
}

void sub_1C723F584(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);
    sub_1C75504FC();
    sub_1C75504FC();
    v18 = a4(v15, v16, v17);

    if (v18)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C7484100(result, a2, v22, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1C723F6F8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C723F584(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t sub_1C723F794()
{
  result = qword_1EC2199B8;
  if (!qword_1EC2199B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MaestroMusicLibraryManagerError, &type metadata for MaestroMusicLibraryManagerError, v0, v1);
    atomic_store(result, &qword_1EC2199B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MaestroMusicLibraryManagerError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C723F8A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C7033844(a1, &v6 - v3);
  return sub_1C723F988(v4);
}

uint64_t sub_1C723F938@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_lastRefreshDate;
  OUTLINED_FUNCTION_5(v1 + OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_lastRefreshDate, v5);
  return sub_1C7033844(v1 + v3, a1);
}

uint64_t sub_1C723F988(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_lastRefreshDate;
  swift_beginAccess();
  sub_1C717E2C4(a1, v1 + v3);
  return swift_endAccess();
}

double sub_1C723FA48@<D0>(_OWORD *a1@<X8>)
{
  sub_1C723FAC4(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1C723FA84(__int128 *a1)
{
  v2 = *a1;
  sub_1C75504FC();
  return sub_1C723FB18(&v2);
}

uint64_t sub_1C723FAC4@<X0>(_OWORD *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_overnightSuggestionStatistics;
  OUTLINED_FUNCTION_5(v1 + OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_overnightSuggestionStatistics, v5);
  *a1 = *(v1 + v3);
  return sub_1C75504FC();
}

uint64_t sub_1C723FB18(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_overnightSuggestionStatistics);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

uint64_t PromptSuggestionStatistics.__allocating_init(photoLibrary:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PromptSuggestionStatistics.init(photoLibrary:)(a1);
  return v2;
}

uint64_t PromptSuggestionStatistics.init(photoLibrary:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  v4 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_lastRefreshDate;
  v5 = sub_1C754DF6C();
  __swift_storeEnumTagSinglePayload(v2 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_uiSuggestionStatistics;
  type metadata accessor for UIPromptSuggestionSourceStatistics();
  v7 = swift_allocObject();
  sub_1C7241CF0();
  *(v2 + v6) = v7;
  v8 = (v2 + OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_overnightSuggestionStatistics);
  *v8 = 0;
  v8[1] = 0;
  *(v2 + OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_photoLibrary) = a1;
  return v2;
}

id sub_1C723FCC0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v43[-1] - v3;
  v5 = sub_1C754DF6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_78();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43[-1] - v11;
  v13 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_lastRefreshDate;
  OUTLINED_FUNCTION_5(v1 + OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_lastRefreshDate, v45);
  sub_1C7033844(v1 + v13, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1C70D7CB8(v4);
    v14 = MEMORY[0x1E69E7CC8];
    goto LABEL_9;
  }

  (*(v6 + 32))(v12, v4, v5);
  sub_1C754DF3C();
  sub_1C754DEAC();
  v16 = v15;
  v17 = *(v6 + 8);
  result = v17(v9, v5);
  v19 = v16 / 86400.0;
  if (v16 / 86400.0 < 7.0)
  {
    if (COERCE_UNSIGNED_INT64(fabs(v16 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v19 > -9.22337204e18)
    {
      if (v19 < 9.22337204e18)
      {
        v43[0] = v19;
        v44[0] = sub_1C7551D8C();
        v44[1] = v20;
        MEMORY[0x1CCA5CD70](0x6761207379616420, 0xE90000000000006FLL);
        goto LABEL_8;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_8:
  v21 = sub_1C755065C();

  v22 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44[0] = v22;
  sub_1C6FC7E40(v21, 0x726665527473616CLL, 0xEF65746144687365, isUniquelyReferenced_nonNull_native);
  v17(v12, v5);
  v14 = v44[0];
LABEL_9:
  v24 = *(v1 + 16);
  if (v24)
  {
    v25 = v24;
    v26 = sub_1C754DBDC();
    result = [v26 domain];
    if (result)
    {
      v27 = result;
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v44[0] = v14;
      sub_1C6FC7E40(v27, 0xD000000000000014, 0x80000001C75A5C40, v28);
      v29 = v44[0];
      [v26 code];
      v30 = sub_1C755104C();
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v44[0] = v29;
      sub_1C6FC7E40(v30, 0xD000000000000012, 0x80000001C75A5C60, v31);

      v14 = v44[0];
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
    return result;
  }

LABEL_12:
  v32 = sub_1C72404B8();
  swift_isUniquelyReferenced_nonNull_native();
  v44[0] = v14;
  OUTLINED_FUNCTION_15_47();
  sub_1C7241D3C(v32, v33, 0, v34, v44);
  v35 = v44[0];
  v36 = (v1 + OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_overnightSuggestionStatistics);
  OUTLINED_FUNCTION_5(v36, v44);
  if (*v36)
  {
    v37 = v36[1];
    v43[0] = *v36;
    v43[1] = v37;
    sub_1C710F3F4();
    v39 = v38;
    swift_isUniquelyReferenced_nonNull_native();
    v43[0] = v35;
    OUTLINED_FUNCTION_15_47();
    sub_1C7241D3C(v39, v40, 0, v41, v43);
    return v43[0];
  }

  return v35;
}

unint64_t sub_1C7240124()
{
  sub_1C755180C();

  v0 = sub_1C72415BC();
  MEMORY[0x1CCA5CD70](v0);

  return 0xD000000000000013;
}

uint64_t PromptSuggestionStatistics.deinit()
{
  sub_1C70D7CB8(v0 + OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_lastRefreshDate);

  return v0;
}

uint64_t PromptSuggestionStatistics.__deallocating_deinit()
{
  PromptSuggestionStatistics.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C72402E4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_1C724032C@<X0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for PromptSuggestion(0);
  v4 = OUTLINED_FUNCTION_18(v3);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 104);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1C75504FC();
    sub_1C716E96C(0, v17, 0);
    v18 = v30;
    v19 = v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v20 = *(v6 + 72);
    do
    {
      sub_1C71592A8(v19, v15);
      v21 = v15[16];
      sub_1C715930C(v15);
      v30 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        v24 = OUTLINED_FUNCTION_15(v22);
        sub_1C716E96C(v24, v23 + 1, 1);
        v18 = v30;
      }

      *(v18 + 16) = v23 + 1;
      *(v18 + v23 + 32) = v21;
      v19 += v20;
      --v17;
    }

    while (v17);
  }

  sub_1C706F130(v18, v7, v8, v9, v10, v11, v12, v13, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  static PromptSuggestion.Composition.compositionFromSources(sources:)(&v29);

  *a1 = v29;
  return result;
}

uint64_t sub_1C72404B8()
{
  LOBYTE(v9) = 1;
  sub_1C724057C(&v9);
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v2;
  sub_1C7241D3C(v1, sub_1C7241FE4, 0, isUniquelyReferenced_nonNull_native, &v9);
  v4 = v9;
  LOBYTE(v9) = 2;
  sub_1C724057C(&v9);
  v6 = v5;
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v9 = v4;
  sub_1C7241D3C(v6, sub_1C7241FE4, 0, v7, &v9);
  return v9;
}

void sub_1C724057C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PromptSuggestion(0);
  v5 = OUTLINED_FUNCTION_18(v4);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_78();
  v209 = v8 - v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_130();
  v208 = v11;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_130();
  v210 = v13;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_130();
  v222 = v15;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_130();
  v211 = v17;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_130();
  v225 = v19;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_130();
  v212 = v21;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_130();
  v226 = v23;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_130();
  v213 = v25;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_130();
  v227 = v27;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_130();
  v214 = v29;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_130();
  v228 = v31;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_130();
  v215 = v33;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_130();
  v229 = v35;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_130();
  v216 = v37;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_130();
  v230 = v39;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_130();
  v217 = v41;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_130();
  v231 = v43;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_130();
  v218 = v45;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_130();
  v220 = v47;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_130();
  v219 = v49;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v205 - v51;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_130();
  v221 = v54;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v205 - v56;
  v58 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C58, &unk_1C75605B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755F050;
  OUTLINED_FUNCTION_25_26();
  sub_1C755180C();
  OUTLINED_FUNCTION_18_30();
  v232 = v58;
  sub_1C73E6820(v58);
  MEMORY[0x1CCA5CD70](0xD000000000000019, 0x80000001C75A5F50);
  v60 = v236;
  *(inited + 32) = v235;
  *(inited + 40) = v60;
  v223 = v2;
  v224 = inited;
  v61 = *(v2 + 16);
  v62 = *(v61 + 16);
  sub_1C75504FC();
  v63 = 0;
  v64 = MEMORY[0x1E69E7CC0];
  while (v62 != v63)
  {
    if (v63 >= *(v61 + 16))
    {
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
      return;
    }

    OUTLINED_FUNCTION_12_46();
    v66 = OUTLINED_FUNCTION_29_26(v65);
    sub_1C71592A8(v66, v57);
    if (v57[16] == v232)
    {
      sub_1C7159368(v57, v221);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v235 = v64;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_13_49();
        OUTLINED_FUNCTION_20_40(v68, v69);
        v64 = v235;
      }

      v71 = *(v64 + 16);
      v70 = *(v64 + 24);
      v72 = v71 + 1;
      if (v71 >= v70 >> 1)
      {
        v73 = OUTLINED_FUNCTION_15(v70);
        v206 = v74;
        v207 = v75;
        sub_1C716D568(v73, v75, 1);
        v71 = v206;
        v72 = v207;
        v64 = v235;
      }

      ++v63;
      *(v64 + 16) = v72;
      sub_1C7159368(v221, v64 + v2 + v71 * v58);
    }

    else
    {
      sub_1C715930C(v57);
      ++v63;
    }
  }

  v76 = sub_1C755104C();
  v77 = v224;
  v224[6] = v76;
  OUTLINED_FUNCTION_25_26();
  sub_1C755180C();
  OUTLINED_FUNCTION_18_30();
  sub_1C73E6820(v232);
  OUTLINED_FUNCTION_5_56();
  MEMORY[0x1CCA5CD70](v78 - 4, v79 | 0x8000000000000000);
  v80 = v236;
  v77[7] = v235;
  v77[8] = v80;
  v81 = *(v223 + 24);
  v82 = *(v81 + 16);
  sub_1C75504FC();
  v83 = 0;
  v84 = MEMORY[0x1E69E7CC0];
  while (v82 != v83)
  {
    if (v83 >= *(v81 + 16))
    {
      goto LABEL_125;
    }

    OUTLINED_FUNCTION_12_46();
    v86 = OUTLINED_FUNCTION_29_26(v85);
    sub_1C71592A8(v86, v52);
    if (v52[16] == v232)
    {
      sub_1C7159368(v52, v219);
      v87 = swift_isUniquelyReferenced_nonNull_native();
      v235 = v84;
      if ((v87 & 1) == 0)
      {
        OUTLINED_FUNCTION_13_49();
        OUTLINED_FUNCTION_20_40(v88, v89);
        v84 = v235;
      }

      v91 = *(v84 + 16);
      v90 = *(v84 + 24);
      v92 = v91 + 1;
      if (v91 >= v90 >> 1)
      {
        v93 = OUTLINED_FUNCTION_15(v90);
        v221 = v94;
        sub_1C716D568(v93, v94, 1);
        v92 = v221;
        v84 = v235;
      }

      ++v83;
      *(v84 + 16) = v92;
      sub_1C7159368(v219, v77 + v84 + v91 * v58);
    }

    else
    {
      sub_1C715930C(v52);
      ++v83;
    }
  }

  v95 = sub_1C755104C();
  v96 = v224;
  v224[9] = v95;
  OUTLINED_FUNCTION_25_26();
  sub_1C755180C();
  OUTLINED_FUNCTION_18_30();
  v97 = v232;
  sub_1C73E6820(v232);
  OUTLINED_FUNCTION_5_56();
  MEMORY[0x1CCA5CD70](v98 - 3, v99 | 0x8000000000000000);
  v100 = v236;
  v96[10] = v235;
  v96[11] = v100;
  v101 = v223;
  OUTLINED_FUNCTION_5(v223 + 32, &v235);
  v102 = *(v101 + 32);
  v103 = *(v102 + 16);
  sub_1C75504FC();
  v104 = 0;
  v105 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v106 = v220;
  while (v103 != v104)
  {
    if (v104 >= *(v102 + 16))
    {
      goto LABEL_126;
    }

    OUTLINED_FUNCTION_12_46();
    v109 = v108 & ~v107;
    v58 = *(v7 + 72);
    sub_1C71592A8(v102 + v109 + v58 * v104, v106);
    if (*(v106 + 16) == v97)
    {
      sub_1C7159368(v106, v218);
      v110 = swift_isUniquelyReferenced_nonNull_native();
      v233 = v105;
      if ((v110 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_77();
        v105 = v233;
      }

      v112 = *(v105 + 16);
      v111 = *(v105 + 24);
      if (v112 >= v111 >> 1)
      {
        OUTLINED_FUNCTION_3_72(v111);
        v105 = v233;
      }

      ++v104;
      *(v105 + 16) = v112 + 1;
      sub_1C7159368(v218, v105 + v109 + v112 * v58);
      v97 = v232;
      goto LABEL_22;
    }

    sub_1C715930C(v106);
    ++v104;
  }

  v113 = sub_1C755104C();
  v114 = v224;
  v224[12] = v113;
  OUTLINED_FUNCTION_6_59();
  sub_1C755180C();
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_22_39();
  OUTLINED_FUNCTION_5_56();
  OUTLINED_FUNCTION_17_45();
  MEMORY[0x1CCA5CD70]();
  v115 = v234;
  v114[13] = v233;
  v114[14] = v115;
  v116 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_14_42();
  v117 = 0;
  v221 = v116;
LABEL_33:
  v118 = v222;
  while (v102 != v117)
  {
    OUTLINED_FUNCTION_16_36();
    if (v119)
    {
      goto LABEL_127;
    }

    v120 = OUTLINED_FUNCTION_0_113();
    sub_1C71592A8(v120, v231);
    v121 = OUTLINED_FUNCTION_7_50();
    if (v122)
    {
      sub_1C7159368(v121, v217);
      v123 = v221;
      v124 = swift_isUniquelyReferenced_nonNull_native();
      v233 = v123;
      if ((v124 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_77();
        v123 = v233;
      }

      OUTLINED_FUNCTION_8_51();
      if (v119)
      {
        OUTLINED_FUNCTION_3_72(v125);
        v123 = v233;
      }

      ++v117;
      *(v123 + 16) = v97;
      v221 = v123;
      sub_1C7159368(v217, v123 + v58 + v118 * v106);
      v97 = v232;
      goto LABEL_33;
    }

    sub_1C715930C(v121);
    ++v117;
  }

  v126 = sub_1C755104C();
  v127 = v224;
  v224[15] = v126;
  OUTLINED_FUNCTION_6_59();
  sub_1C755180C();
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_22_39();
  OUTLINED_FUNCTION_5_56();
  OUTLINED_FUNCTION_17_45();
  MEMORY[0x1CCA5CD70]();
  v128 = v234;
  v127[16] = v233;
  v127[17] = v128;
  OUTLINED_FUNCTION_14_42();
  OUTLINED_FUNCTION_21_38();
  while (v102 != v117)
  {
    OUTLINED_FUNCTION_16_36();
    if (v119)
    {
      goto LABEL_128;
    }

    v129 = OUTLINED_FUNCTION_0_113();
    v130 = v230;
    sub_1C71592A8(v129, v230);
    v131 = OUTLINED_FUNCTION_7_50();
    if (v122)
    {
      sub_1C7159368(v131, v216);
      v132 = OUTLINED_FUNCTION_27_29();
      v233 = v130;
      if ((v132 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_77();
      }

      OUTLINED_FUNCTION_8_51();
      if (v119)
      {
        OUTLINED_FUNCTION_3_72(v133);
      }

      OUTLINED_FUNCTION_1_85();
      sub_1C7159368(v216, v134);
      OUTLINED_FUNCTION_19_41();
    }

    else
    {
      sub_1C715930C(v131);
      ++v117;
    }
  }

  OUTLINED_FUNCTION_26_30();
  v135 = sub_1C755104C();
  v136 = v224;
  v224[18] = v135;
  OUTLINED_FUNCTION_6_59();
  sub_1C755180C();
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_22_39();
  OUTLINED_FUNCTION_5_56();
  OUTLINED_FUNCTION_17_45();
  MEMORY[0x1CCA5CD70]();
  v137 = v234;
  v136[19] = v233;
  v136[20] = v137;
  OUTLINED_FUNCTION_14_42();
  OUTLINED_FUNCTION_21_38();
  while (v102 != v117)
  {
    OUTLINED_FUNCTION_16_36();
    if (v119)
    {
      goto LABEL_129;
    }

    v138 = OUTLINED_FUNCTION_0_113();
    v139 = v229;
    sub_1C71592A8(v138, v229);
    v140 = OUTLINED_FUNCTION_7_50();
    if (v122)
    {
      sub_1C7159368(v140, v215);
      v141 = OUTLINED_FUNCTION_27_29();
      v233 = v139;
      if ((v141 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_77();
      }

      OUTLINED_FUNCTION_8_51();
      if (v119)
      {
        OUTLINED_FUNCTION_3_72(v142);
      }

      OUTLINED_FUNCTION_1_85();
      sub_1C7159368(v215, v143);
      OUTLINED_FUNCTION_19_41();
    }

    else
    {
      sub_1C715930C(v140);
      ++v117;
    }
  }

  OUTLINED_FUNCTION_26_30();
  v144 = sub_1C755104C();
  v145 = v224;
  v224[21] = v144;
  OUTLINED_FUNCTION_6_59();
  sub_1C755180C();
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_22_39();
  OUTLINED_FUNCTION_5_56();
  OUTLINED_FUNCTION_17_45();
  MEMORY[0x1CCA5CD70]();
  v146 = v234;
  v145[22] = v233;
  v145[23] = v146;
  OUTLINED_FUNCTION_14_42();
  OUTLINED_FUNCTION_21_38();
  while (v102 != v117)
  {
    OUTLINED_FUNCTION_16_36();
    if (v119)
    {
      goto LABEL_130;
    }

    v147 = OUTLINED_FUNCTION_0_113();
    v148 = v228;
    sub_1C71592A8(v147, v228);
    v149 = OUTLINED_FUNCTION_7_50();
    if (v122)
    {
      sub_1C7159368(v149, v214);
      v150 = OUTLINED_FUNCTION_27_29();
      v233 = v148;
      if ((v150 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_77();
      }

      OUTLINED_FUNCTION_8_51();
      if (v119)
      {
        OUTLINED_FUNCTION_3_72(v151);
      }

      OUTLINED_FUNCTION_1_85();
      sub_1C7159368(v214, v152);
      OUTLINED_FUNCTION_19_41();
    }

    else
    {
      sub_1C715930C(v149);
      ++v117;
    }
  }

  OUTLINED_FUNCTION_26_30();
  v153 = sub_1C755104C();
  v154 = v224;
  v224[24] = v153;
  OUTLINED_FUNCTION_6_59();
  sub_1C755180C();
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_22_39();
  OUTLINED_FUNCTION_5_56();
  OUTLINED_FUNCTION_17_45();
  MEMORY[0x1CCA5CD70]();
  v155 = v234;
  v154[25] = v233;
  v154[26] = v155;
  OUTLINED_FUNCTION_14_42();
  OUTLINED_FUNCTION_21_38();
  while (v102 != v117)
  {
    OUTLINED_FUNCTION_16_36();
    if (v119)
    {
      goto LABEL_131;
    }

    v156 = OUTLINED_FUNCTION_0_113();
    v157 = v227;
    sub_1C71592A8(v156, v227);
    v158 = OUTLINED_FUNCTION_7_50();
    if (v122)
    {
      sub_1C7159368(v158, v213);
      v159 = OUTLINED_FUNCTION_27_29();
      v233 = v157;
      if ((v159 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_77();
      }

      OUTLINED_FUNCTION_8_51();
      if (v119)
      {
        OUTLINED_FUNCTION_3_72(v160);
      }

      OUTLINED_FUNCTION_1_85();
      sub_1C7159368(v213, v161);
      OUTLINED_FUNCTION_19_41();
    }

    else
    {
      sub_1C715930C(v158);
      ++v117;
    }
  }

  OUTLINED_FUNCTION_26_30();
  v162 = sub_1C755104C();
  v163 = v224;
  v224[27] = v162;
  OUTLINED_FUNCTION_6_59();
  sub_1C755180C();
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_22_39();
  OUTLINED_FUNCTION_5_56();
  OUTLINED_FUNCTION_17_45();
  MEMORY[0x1CCA5CD70]();
  v164 = v234;
  v163[28] = v233;
  v163[29] = v164;
  OUTLINED_FUNCTION_14_42();
  OUTLINED_FUNCTION_21_38();
  while (v102 != v117)
  {
    OUTLINED_FUNCTION_16_36();
    if (v119)
    {
      goto LABEL_132;
    }

    v165 = OUTLINED_FUNCTION_0_113();
    v166 = v226;
    sub_1C71592A8(v165, v226);
    v167 = OUTLINED_FUNCTION_7_50();
    if (v122)
    {
      sub_1C7159368(v167, v212);
      v168 = OUTLINED_FUNCTION_27_29();
      v233 = v166;
      if ((v168 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_77();
      }

      OUTLINED_FUNCTION_8_51();
      if (v119)
      {
        OUTLINED_FUNCTION_3_72(v169);
      }

      OUTLINED_FUNCTION_1_85();
      sub_1C7159368(v212, v170);
      OUTLINED_FUNCTION_19_41();
    }

    else
    {
      sub_1C715930C(v167);
      ++v117;
    }
  }

  OUTLINED_FUNCTION_26_30();
  v171 = sub_1C755104C();
  v172 = v224;
  v224[30] = v171;
  OUTLINED_FUNCTION_6_59();
  sub_1C755180C();
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_22_39();
  OUTLINED_FUNCTION_5_56();
  OUTLINED_FUNCTION_17_45();
  MEMORY[0x1CCA5CD70]();
  v173 = v234;
  v172[31] = v233;
  v172[32] = v173;
  OUTLINED_FUNCTION_14_42();
  OUTLINED_FUNCTION_21_38();
  while (v102 != v117)
  {
    OUTLINED_FUNCTION_16_36();
    if (v119)
    {
      goto LABEL_133;
    }

    v174 = OUTLINED_FUNCTION_0_113();
    v175 = v225;
    sub_1C71592A8(v174, v225);
    v176 = OUTLINED_FUNCTION_7_50();
    if (v122)
    {
      sub_1C7159368(v176, v211);
      v177 = OUTLINED_FUNCTION_27_29();
      v233 = v175;
      if ((v177 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_77();
      }

      OUTLINED_FUNCTION_8_51();
      if (v119)
      {
        OUTLINED_FUNCTION_3_72(v178);
      }

      OUTLINED_FUNCTION_1_85();
      sub_1C7159368(v211, v179);
      OUTLINED_FUNCTION_19_41();
    }

    else
    {
      sub_1C715930C(v176);
      ++v117;
    }
  }

  OUTLINED_FUNCTION_26_30();
  v180 = sub_1C755104C();
  v181 = v224;
  v224[33] = v180;
  OUTLINED_FUNCTION_6_59();
  sub_1C755180C();
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_22_39();
  OUTLINED_FUNCTION_17_45();
  MEMORY[0x1CCA5CD70](0xD00000000000001BLL);
  v182 = v234;
  v181[34] = v233;
  v181[35] = v182;
  v183 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_14_42();
  v184 = 0;
  while (v102 != v184)
  {
    OUTLINED_FUNCTION_16_36();
    if (v119)
    {
      goto LABEL_134;
    }

    v185 = OUTLINED_FUNCTION_0_113();
    sub_1C71592A8(v185, v118);
    if (*(v118 + 16) == v97)
    {
      sub_1C7159368(v118, v210);
      v186 = swift_isUniquelyReferenced_nonNull_native();
      v233 = v183;
      if ((v186 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_77();
        v183 = v233;
      }

      OUTLINED_FUNCTION_8_51();
      if (v119)
      {
        OUTLINED_FUNCTION_3_72(v187);
        v183 = v233;
      }

      ++v184;
      *(v183 + 16) = v97;
      sub_1C7159368(v210, v183 + v58 + v118 * v106);
      OUTLINED_FUNCTION_19_41();
    }

    else
    {
      sub_1C715930C(v118);
      ++v184;
    }
  }

  v188 = sub_1C755104C();
  v189 = v224;
  v224[36] = v188;
  OUTLINED_FUNCTION_6_59();
  sub_1C755180C();
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_22_39();
  OUTLINED_FUNCTION_17_45();
  MEMORY[0x1CCA5CD70](0xD00000000000001BLL);
  v190 = v234;
  v189[37] = v233;
  v189[38] = v190;
  v191 = *(v223 + 104);
  v192 = MEMORY[0x1E69E7CC0];
  v233 = MEMORY[0x1E69E7CC0];
  v193 = *(v191 + 16);
  sub_1C75504FC();
  v194 = 0;
  v195 = v208;
  while (v193 != v194)
  {
    OUTLINED_FUNCTION_16_36();
    if (v119)
    {
      goto LABEL_135;
    }

    v196 = OUTLINED_FUNCTION_0_113();
    sub_1C71592A8(v196, v195);
    v197 = OUTLINED_FUNCTION_7_50();
    if (v122)
    {
      sub_1C7159368(v197, v209);
      v198 = swift_isUniquelyReferenced_nonNull_native();
      v233 = v192;
      if ((v198 & 1) == 0)
      {
        OUTLINED_FUNCTION_20_40(v198, *(v192 + 16) + 1);
        v195 = v208;
        v192 = v233;
      }

      v200 = *(v192 + 16);
      v199 = *(v192 + 24);
      v201 = v200 + 1;
      if (v200 >= v199 >> 1)
      {
        v202 = OUTLINED_FUNCTION_15(v199);
        v204 = v203;
        sub_1C716D568(v202, v203, 1);
        v201 = v204;
        v195 = v208;
        v192 = v233;
      }

      ++v194;
      *(v192 + 16) = v201;
      sub_1C7159368(v209, v192 + v58 + v200 * v106);
    }

    else
    {
      sub_1C715930C(v197);
      ++v194;
    }
  }

  v224[39] = sub_1C755104C();
  sub_1C6F65BE8(0, &qword_1EDD108E0, 0x1E696AD98);
  sub_1C75504DC();
  sub_1C70C0278();
}

uint64_t sub_1C72415BC()
{
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000027, 0x80000001C75A5CA0);
  v7 = 1;
  sub_1C724057C(&v7);
  sub_1C6F65BE8(0, &qword_1EDD10100, 0x1E69E58C0);
  v0 = sub_1C75504BC();
  v2 = v1;

  MEMORY[0x1CCA5CD70](v0, v2);

  MEMORY[0x1CCA5CD70](0xD000000000000028, 0x80000001C75A5CD0);
  v7 = 2;
  sub_1C724057C(&v7);
  v3 = sub_1C75504BC();
  v5 = v4;

  MEMORY[0x1CCA5CD70](v3, v5);

  return v8;
}

void sub_1C7241730(uint64_t a1)
{
  v3 = type metadata accessor for PromptSuggestion(0);
  v4 = OUTLINED_FUNCTION_18(v3);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_78();
  v88 = v7 - v8;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_130();
  v92 = v10;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_130();
  v91 = v12;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v86 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_130();
  v90 = v17;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v86 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_130();
  v89 = v22;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v86 - v24;
  v93 = v1;
  v1[2] = a1;

  v26 = *(a1 + 16);
  sub_1C75504FC();
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  while (v26 != v27)
  {
    OUTLINED_FUNCTION_12_46();
    v31 = v30 & ~v29;
    v32 = *(v6 + 72);
    sub_1C71592A8(a1 + v31 + v32 * v27, v25);
    if (v25[17] >= 2u)
    {
      sub_1C7159368(v25, v89);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95[0] = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_13_49();
        OUTLINED_FUNCTION_20_40(v34, v35);
        v28 = v95[0];
      }

      v37 = *(v28 + 16);
      v36 = *(v28 + 24);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v39 = OUTLINED_FUNCTION_15(v36);
        v86 = v40;
        v87 = v41;
        sub_1C716D568(v39, v41, 1);
        v37 = v86;
        v38 = v87;
        v28 = v95[0];
      }

      ++v27;
      *(v28 + 16) = v38;
      sub_1C7159368(v89, v28 + v31 + v37 * v32);
    }

    else
    {
      sub_1C715930C(v25);
      ++v27;
    }
  }

  v93[3] = v28;

  v42 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  while (v26 != v42)
  {
    OUTLINED_FUNCTION_12_46();
    v46 = v45 & ~v44;
    v47 = *(v6 + 72);
    sub_1C71592A8(a1 + v46 + v47 * v42, v20);
    if (v20[56] == 1)
    {
      sub_1C7159368(v20, v90);
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v95[0] = v43;
      if ((v48 & 1) == 0)
      {
        OUTLINED_FUNCTION_13_49();
        OUTLINED_FUNCTION_20_40(v49, v50);
        v43 = v95[0];
      }

      v52 = *(v43 + 16);
      v51 = *(v43 + 24);
      v53 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        v54 = OUTLINED_FUNCTION_15(v51);
        v89 = v55;
        sub_1C716D568(v54, v55, 1);
        v53 = v89;
        v43 = v95[0];
      }

      ++v42;
      *(v43 + 16) = v53;
      sub_1C7159368(v90, v43 + v46 + v52 * v47);
    }

    else
    {
      sub_1C715930C(v20);
      ++v42;
    }
  }

  v56 = v93;
  swift_beginAccess();
  v56[4] = v43;

  v57 = 0;
  v58 = MEMORY[0x1E69E7CC0];
  while (v26 != v57)
  {
    OUTLINED_FUNCTION_12_46();
    v61 = v60 & ~v59;
    v62 = *(v6 + 72);
    sub_1C71592A8(a1 + v61 + v62 * v57, v15);
    if (v15[56])
    {
      sub_1C715930C(v15);
      ++v57;
    }

    else
    {
      sub_1C7159368(v15, v91);
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v94 = v58;
      if ((v63 & 1) == 0)
      {
        OUTLINED_FUNCTION_13_49();
        OUTLINED_FUNCTION_20_40(v64, v65);
        v58 = v94;
      }

      v67 = *(v58 + 16);
      v66 = *(v58 + 24);
      if (v67 >= v66 >> 1)
      {
        v68 = OUTLINED_FUNCTION_15(v66);
        sub_1C716D568(v68, v67 + 1, 1);
        v58 = v94;
      }

      ++v57;
      *(v58 + 16) = v67 + 1;
      sub_1C7159368(v91, v58 + v61 + v67 * v62);
    }
  }

  v69 = v93;
  v93[5] = v58;

  v70 = v69[4];
  v71 = *(v70 + 16);
  sub_1C75504FC();
  v72 = 0;
  v73 = MEMORY[0x1E69E7CC0];
LABEL_29:
  v74 = v92;
  while (1)
  {
    if (v71 == v72)
    {

      v93[6] = v73;

      return;
    }

    OUTLINED_FUNCTION_16_36();
    if (v75)
    {
      break;
    }

    OUTLINED_FUNCTION_12_46();
    v78 = v77 & ~v76;
    v79 = *(v6 + 72);
    sub_1C71592A8(v70 + v78 + v79 * v72, v74);
    if (*(v74 + 17) <= 1u)
    {
      sub_1C7159368(v74, v88);
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v94 = v73;
      if ((v80 & 1) == 0)
      {
        OUTLINED_FUNCTION_13_49();
        OUTLINED_FUNCTION_20_40(v81, v82);
        v73 = v94;
      }

      v84 = *(v73 + 16);
      v83 = *(v73 + 24);
      if (v84 >= v83 >> 1)
      {
        v85 = OUTLINED_FUNCTION_15(v83);
        sub_1C716D568(v85, v84 + 1, 1);
        v73 = v94;
      }

      ++v72;
      *(v73 + 16) = v84 + 1;
      sub_1C7159368(v88, v73 + v78 + v84 * v79);
      goto LABEL_29;
    }

    sub_1C715930C(v74);
    ++v72;
  }

  __break(1u);
}

uint64_t UIPromptSuggestionSourceStatistics.deinit()
{

  return v0;
}

uint64_t UIPromptSuggestionSourceStatistics.__deallocating_deinit()
{
  UIPromptSuggestionSourceStatistics.deinit();

  return swift_deallocClassInstance();
}

void *sub_1C7241CF0()
{
  result = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = v2;
  v0[4] = v2;
  v0[5] = v2;
  v0[6] = v2;
  v0[7] = v2;
  v0[8] = v2;
  v0[9] = v2;
  v0[10] = v2;
  v0[11] = v2;
  v0[12] = v2;
  v0[13] = v2;
  return result;
}

void sub_1C7241D3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  sub_1C6F78034(v43);
  v6 = v43[1];
  v7 = v43[3];
  v8 = v43[4];
  v36 = v43[5];
  v37 = v43[0];
  v9 = (v43[2] + 64) >> 6;
  sub_1C75504FC();

  v35 = v6;
  if (v8)
  {
    while (1)
    {
      v38 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v37 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v37 + 56) + 8 * v12);
      v42[0] = *v13;
      v42[1] = v14;
      v42[2] = v15;
      sub_1C75504FC();
      v16 = v15;
      v36(&v39, v42);

      v17 = v39;
      v18 = v40;
      v19 = v41;
      v20 = *v44;
      v22 = sub_1C6F78124(v39, v40);
      v23 = v20[2];
      v24 = (v21 & 1) == 0;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v25 = v21;
      if (v20[3] >= v23 + v24)
      {
        if ((v38 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
          sub_1C7551A3C();
        }
      }

      else
      {
        sub_1C7354B70();
        v26 = sub_1C6F78124(v17, v18);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_24;
        }

        v22 = v26;
      }

      v8 &= v8 - 1;
      v28 = *v44;
      if (v25)
      {

        v29 = v28[7];
        v30 = *(v29 + 8 * v22);
        *(v29 + 8 * v22) = v19;
      }

      else
      {
        v28[(v22 >> 6) + 8] |= 1 << v22;
        v31 = (v28[6] + 16 * v22);
        *v31 = v17;
        v31[1] = v18;
        *(v28[7] + 8 * v22) = v19;
        v32 = v28[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_23;
        }

        v28[2] = v34;
      }

      a4 = 1;
      v7 = v10;
      v6 = v35;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1C6F61E88(v37);

        return;
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v38 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_1C7551E4C();
  __break(1u);
}

uint64_t sub_1C7241FE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C73D9228(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t type metadata accessor for PromptSuggestionStatistics(uint64_t a1)
{
  result = qword_1EDD090A8;
  if (!qword_1EDD090A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C724207C(uint64_t a1)
{
  sub_1C6F5FB48(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t PersonalTrait.description.getter()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75A60F0);
  MEMORY[0x1CCA5CD70](*v0, v0[1]);
  MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
  v1 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v1);

  MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C75A6110);
  v2 = type metadata accessor for PersonalTrait(0);
  sub_1C75519EC();
  MEMORY[0x1CCA5CD70](0x206C6562614C202CLL, 0xEE00203A65707974);
  v3 = PersonalTrait.LabelType.description.getter();
  MEMORY[0x1CCA5CD70](v3);

  MEMORY[0x1CCA5CD70](0x3A65726F6353202CLL, 0xE900000000000020);
  sub_1C7550F5C();
  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75A6130);
  v4 = MEMORY[0x1CCA5D090](*(v0 + *(v2 + 40)), MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v4);

  return 0;
}

PhotosIntelligence::PersonalTrait::Source_optional __swiftcall PersonalTrait.Source.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalTrait.Source.rawValue.getter()
{
  v1 = 0x7972617262696CLL;
  if (*v0 != 1)
  {
    v1 = 0x6C65646F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7247746E656D6F6DLL;
  }
}

uint64_t sub_1C7242654@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalTrait.Source.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PersonalTrait.LabelType.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  switch(*(v0 + 16))
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_22_40();
      v8 = v6;
      MEMORY[0x1CCA5CD70](v1, v2);
      goto LABEL_8;
    case 3:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      v4 = "library understanding generative theme via on-demand processing (version: ";
      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      v4 = "library understanding generative theme via overnight processing (version: ";
LABEL_5:
      MEMORY[0x1CCA5CD70](0xD00000000000004ALL, (v4 - 32) | 0x8000000000000000);
      goto LABEL_6;
    default:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_22_40();
      v8 = v3 - 1;
LABEL_6:
      v5 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v5);

LABEL_8:
      MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
      return v8;
  }
}