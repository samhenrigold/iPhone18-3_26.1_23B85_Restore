void sub_10027A644()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = 0;
    v4 = 1;
LABEL_3:
    v5 = 72 * v3 + 89;
    do
    {
      if (v3 >= v2)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_25;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_10026B288(v1);
      }

      if (v3 >= *(v1 + 2))
      {
        goto LABEL_26;
      }

      sub_10027A644();
      if (v3 >= *(v1 + 2))
      {
        goto LABEL_27;
      }

      if (v1[v5] == 1)
      {
        v4 = 0;
        ++v3;
        if (v6 != v2)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }

      ++v3;
      v5 += 72;
    }

    while (v6 != v2);
    *(v0 + 64) = v1;
    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  if ((*(v0 + 57) & 1) == 0)
  {
    v7 = *(v1 + 2) + 1;
    v8 = 96;
    while (--v7)
    {
      v9 = *&v1[v8];
      v8 += 72;
      if (*(v9 + 16))
      {
        return;
      }
    }

    v1 = _swiftEmptyArrayStorage;
LABEL_22:
    *(v0 + 64) = v1;
  }
}

uint64_t sub_10027A784(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a2 + 16))
  {

    v5 = SectionSpecifier.Part.isSubPart(of:)(v4);

    if (v5)
    {
      return 1;
    }
  }

  if (a1[17] && (*(a1 + 128) <= 0xFu ? (v7 = (a1[14] & 0x80) == 0) : (v7 = 0), v7 && ((v8 = a1[12], v8 != 10) ? (v9 = v8 == 4) : (v9 = 1), v9)))
  {
    v10 = *a1;
    v6 = 1;
    swift_beginAccess();
    *(a2 + 16) = v10;
  }

  else
  {
    swift_beginAccess();
    v6 = 0;
    *(a2 + 16) = 0;
  }

  return v6;
}

uint64_t sub_10027A890(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v14 = a10;
  v15 = *a1;
  v185 = *(a1 + 8);
  v103 = a1[2];
  v101 = a1[4];
  v102 = a1[3];
  swift_beginAccess();
  v16 = *(a2 + 128);
  v17 = *(a2 + 96);
  v170 = *(a2 + 112);
  v171 = v16;
  v18 = *(a2 + 128);
  v172 = *(a2 + 144);
  v19 = *(a2 + 64);
  v20 = *(a2 + 32);
  v166 = *(a2 + 48);
  v167 = v19;
  v21 = *(a2 + 64);
  v22 = *(a2 + 96);
  v168 = *(a2 + 80);
  v169 = v22;
  v23 = *(a2 + 32);
  v164 = *(a2 + 16);
  v165 = v23;
  v180 = v170;
  v181 = v18;
  v182 = *(a2 + 144);
  v176 = v166;
  v177 = v21;
  v178 = v168;
  v179 = v17;
  v174 = v164;
  v173 = *(a2 + 160);
  v183 = *(a2 + 160);
  v175 = v20;
  if (sub_100021348(&v174) == 1)
  {
    swift_beginAccess();
    v24 = *(a2 + 128);
    v160 = *(a2 + 112);
    v161 = v24;
    v162 = *(a2 + 144);
    v163 = *(a2 + 160);
    v25 = *(a2 + 64);
    v156 = *(a2 + 48);
    v157 = v25;
    v26 = *(a2 + 96);
    v158 = *(a2 + 80);
    v159 = v26;
    v27 = *(a2 + 32);
    v154 = *(a2 + 16);
    v155 = v27;
    v28 = v171;
    *(a2 + 112) = v170;
    *(a2 + 128) = v28;
    *(a2 + 144) = v172;
    *(a2 + 160) = v173;
    v29 = v167;
    *(a2 + 48) = v166;
    *(a2 + 64) = v29;
    v30 = v169;
    *(a2 + 80) = v168;
    *(a2 + 96) = v30;
    v31 = v165;
    *(a2 + 16) = v164;
    *(a2 + 32) = v31;
    sub_100025F40(&v154, &qword_1005D6630, &qword_1004EB7F8);
    v32 = v15;
    goto LABEL_18;
  }

  v160 = v180;
  v161 = v181;
  v162 = v182;
  v163 = v183;
  v156 = v176;
  v157 = v177;
  v158 = v178;
  v159 = v179;
  v154 = v174;
  v155 = v175;
  v138 = 0uLL;
  LOBYTE(v139) = 2;
  v134 = v170;
  v135 = v171;
  v136 = v172;
  v137 = v173;
  v130 = v166;
  v131 = v167;
  v132 = v168;
  v133 = v169;
  v128 = v164;
  v129 = v165;
  sub_10027C144(&v128, &v121);
  v100 = v15;
  if ((sub_10027A784(&v154, a3) & 1) == 0 && (v183 & 1) == 0)
  {
    v153[0] = v180;
    v153[1] = v181;
    v153[2] = v182;
    if (sub_10025690C(*(&v176 + 1), v177, SBYTE8(v177), v178, v153))
    {
      if (BYTE8(v179) == 2)
      {
        sub_10027C17C(&v176 + 8, &v121);

        v97 = 5;
        v33 = *(&v182 + 1);
        if (*(&v182 + 1))
        {
LABEL_8:
          v150[0] = v180;
          v150[1] = v181;
          v151 = v182;
          v152 = v33;

          sub_1002722A8(v150, a8, v143);
          v98 = v143[1];
          v99 = v143[0];
          v184 = v144;
          v34 = v145;
          sub_10027C1B4(&v176 + 8);
          goto LABEL_26;
        }
      }

      else
      {
        v70 = sub_1002A8490(*(&v178 + 1), v179);
        v72 = v71;
        sub_10027C17C(&v176 + 8, &v121);

        v97 = sub_10027046C(v70, v72);
        v33 = *(&v182 + 1);
        if (*(&v182 + 1))
        {
          goto LABEL_8;
        }
      }

      sub_10027C1B4(&v176 + 8);
      v184 = 0;
      v34 = 0;
      v98 = 0u;
      v99 = 0u;
LABEL_26:
      v93 = BYTE8(v174);
      v91 = *(&v175 + 1);
      v92 = v175;
      v90 = v176;
      v73 = v178;
      if (v178)
      {
        v74 = BYTE8(v177);
        v76 = *(&v176 + 1);
        v75 = v177;
        v77 = v174;

        LOBYTE(v121) = v74 & 1;
        v78 = sub_10026C240(a8, v76, v75, v74 & 1, v73);
        v95 = v79;
        v96 = v78;

        v80 = a9;
        if (v34)
        {
LABEL_28:

          goto LABEL_31;
        }
      }

      else
      {
        v77 = v174;

        v95 = 0;
        v96 = 0;
        v80 = a9;
        if (v34)
        {
          goto LABEL_28;
        }
      }

      v99 = 0u;
      v184 = 255;
      v98 = 0u;
LABEL_31:
      v81 = sub_1002958F8(v93, v92, v91, v90);
      v94 = v82;
      swift_beginAccess();
      v83 = *(v80 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v80 + 16) = v83;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v83 = sub_1002742A0(0, *(v83 + 2) + 1, 1, v83);
        *(v80 + 16) = v83;
      }

      v86 = *(v83 + 2);
      v85 = *(v83 + 3);
      if (v86 >= v85 >> 1)
      {
        v83 = sub_1002742A0((v85 > 1), v86 + 1, 1, v83);
      }

      *(v83 + 2) = v86 + 1;
      v87 = &v83[88 * v86];
      *(v87 + 4) = v77;
      *(v87 + 5) = v96;
      *(v87 + 6) = v95;
      v87[56] = v97;
      v88 = *(&v104 + 3);
      *(v87 + 57) = v104;
      *(v87 + 15) = v88;
      *(v87 + 4) = v99;
      *(v87 + 5) = v98;
      v87[96] = v184;
      v89 = v119[0];
      *(v87 + 25) = *(v119 + 3);
      *(v87 + 97) = v89;
      *(v87 + 13) = v81;
      *(v87 + 14) = v94;
      *(v80 + 16) = v83;
      swift_endAccess();
      v35 = 1;
      v36 = *(&v182 + 1);
      if (!*(&v182 + 1))
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  v35 = 0;
  v36 = *(&v182 + 1);
  if (!*(&v182 + 1))
  {
    goto LABEL_11;
  }

LABEL_10:
  v146 = v180;
  v147 = v181;
  v148 = v182;
  v149 = v36;

  v37 = sub_100271A2C();
  v39 = v38;
  v41 = v40;
  v42 = v40;

  if (v42 != 2)
  {
    *&v138 = v37;
    *(&v138 + 1) = v39;
    LOBYTE(v139) = v41;
    v15 = v100;
    v14 = a10;
LABEL_14:
    swift_beginAccess();
    if (*(v14 + 16))
    {
      v43 = v174;
      v44 = (2 * *(v174 + 16)) | 1;

      sub_10027B45C(v45, v43 + 32, 0, v44, v14 + 16, v35, &v138);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }

    goto LABEL_17;
  }

LABEL_11:
  v15 = v100;
  v14 = a10;
  if (v35)
  {
    goto LABEL_14;
  }

LABEL_17:
  sub_100025F40(&v164, &qword_1005D6630, &qword_1004EB7F8);
  sub_10027C058(&v104);
  swift_beginAccess();
  v46 = *(a2 + 128);
  v124 = *(a2 + 112);
  v125 = v46;
  v126 = *(a2 + 144);
  v127 = *(a2 + 160);
  v47 = *(a2 + 64);
  *v123 = *(a2 + 48);
  *&v123[16] = v47;
  v48 = *(a2 + 96);
  *&v123[32] = *(a2 + 80);
  *&v123[48] = v48;
  v49 = *(a2 + 32);
  v121 = *(a2 + 16);
  v122 = v49;
  v50 = v111;
  v51 = v112;
  *(a2 + 112) = v110;
  *(a2 + 128) = v50;
  *(a2 + 144) = v51;
  *(a2 + 160) = v113;
  v52 = v107;
  *(a2 + 48) = v106;
  *(a2 + 64) = v52;
  v53 = v109;
  *(a2 + 80) = v108;
  *(a2 + 96) = v53;
  v54 = v105;
  *(a2 + 16) = v104;
  *(a2 + 32) = v54;
  sub_100025F40(&v121, &qword_1005D6630, &qword_1004EB7F8);
  v32 = *a1;
LABEL_18:
  *&v121 = v15;
  v55 = v185;
  BYTE8(v121) = v185;
  *&v122 = v103;
  *(&v122 + 1) = v102;
  *v123 = v101;
  memset(&v123[8], 0, 48);
  v123[56] = 2;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0;
  UInt32.init(_:)(&v121);
  swift_beginAccess();
  v56 = *(a2 + 128);
  v134 = *(a2 + 112);
  v135 = v56;
  v136 = *(a2 + 144);
  v137 = *(a2 + 160);
  v57 = *(a2 + 64);
  v130 = *(a2 + 48);
  v131 = v57;
  v58 = *(a2 + 96);
  v132 = *(a2 + 80);
  v133 = v58;
  v59 = *(a2 + 32);
  v128 = *(a2 + 16);
  v129 = v59;
  v60 = v125;
  *(a2 + 112) = v124;
  *(a2 + 128) = v60;
  *(a2 + 144) = v126;
  *(a2 + 160) = v127;
  v61 = *&v123[16];
  *(a2 + 48) = *v123;
  *(a2 + 64) = v61;
  v62 = *&v123[48];
  *(a2 + 80) = *&v123[32];
  *(a2 + 96) = v62;
  v63 = v122;
  *(a2 + 16) = v121;
  *(a2 + 32) = v63;

  sub_100025F40(&v128, &qword_1005D6630, &qword_1004EB7F8);
  *&v138 = v15;
  BYTE8(v138) = v55;
  *&v139 = v103;
  *(&v139 + 1) = v102;
  v140 = v101;
  *&v141 = 0;
  WORD4(v141) = 2;
  v142 = _swiftEmptyArrayStorage;
  *&v108 = _swiftEmptyArrayStorage;
  v106 = v101;
  v107 = v141;
  v104 = v138;
  v105 = v139;

  if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v64, _swiftEmptyArrayStorage))
  {
    v116 = v140;
    v117 = v141;
    v118 = v142;
    v114 = v138;
    v115 = v139;
    swift_beginAccess();
    v65 = *(v14 + 64);
    v119[2] = *(v14 + 48);
    v119[3] = v65;
    v120 = *(v14 + 80);
    v66 = *(v14 + 32);
    v119[0] = *(v14 + 16);
    v119[1] = v66;
    v67 = v117;
    *(v14 + 48) = v116;
    *(v14 + 64) = v67;
    *(v14 + 80) = v118;
    v68 = v115;
    *(v14 + 16) = v114;
    *(v14 + 32) = v68;
    sub_100025F40(v119, &qword_1005D6640, &qword_1004EB800);
  }

  else
  {
    swift_beginAccess();
    if (*(v14 + 16))
    {
      sub_10027B284(&v104, v32, v32 + 32, 0, (2 * *(v32 + 16)) | 1);
    }

    swift_endAccess();
    sub_10027B6BC(&v138);
  }

  return 2;
}

uint64_t sub_10027B130(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1[3];
  v9 = a1[5];
  swift_beginAccess();
  v10 = *(a6 + 96);
  v11 = *(a6 + 128);
  v24[7] = *(a6 + 112);
  v24[8] = v11;
  v25 = *(a6 + 144);
  v12 = *(a6 + 48);
  v24[2] = *(a6 + 32);
  v24[3] = v12;
  v13 = *(a6 + 80);
  v24[4] = *(a6 + 64);
  v24[5] = v13;
  v24[6] = v10;
  v14 = *(a6 + 16);
  v24[0] = *a6;
  v24[1] = v14;
  result = sub_100021348(v24);
  if (result != 1)
  {
    v17 = *a1;
    v16 = a1[1];
    v18 = *(a1 + 16);
    v19 = a1[4];
    v20 = v19 >> 59;
    if ((v19 >> 59) > 7)
    {
      if (v20 == 8)
      {
        *(a6 + 72) = v17;
        *(a6 + 80) = v16;
        *(a6 + 88) = v18 & 1;
      }

      else if (v20 == 9)
      {
        v23 = *(a1 + 17);
        v22 = a1 + 17;
        v21 = v23;
        LOWORD(v23) = *(v22 + 2);
        *(a6 + 96) = v17;
        *(a6 + 104) = v16;
        *(a6 + 112) = v18;
        *(a6 + 113) = v21;
        *(a6 + 117) = v23;
        *(a6 + 119) = v22[6];
        *(a6 + 120) = v8;
        *(a6 + 128) = v19;
        *(a6 + 136) = v9;
      }
    }

    else if (v20)
    {
      if (v20 == 5)
      {
        *(a6 + 40) = v17;
        *(a6 + 48) = v16;
        *(a6 + 56) = v18 & 1;
        *(a6 + 64) = v8;
      }
    }

    else
    {
      *(a6 + 144) = 1;
    }
  }

  return result;
}

uint64_t sub_10027B284(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = a5 >> 1;
  if (a5 >> 1 == a4)
  {
    return result;
  }

  if ((a5 >> 1) <= a4)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (__OFSUB__(v9, a4))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = (a4 + 1);
  if (__OFSUB__(v9, a4 + 1))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    v5 = sub_100274178(0, v7, 1, v5);
LABEL_9:
    v12 = *(v5 + 2);
    v11 = *(v5 + 3);
    if (v12 >= v11 >> 1)
    {
      v5 = sub_100274178((v11 > 1), v12 + 1, 1, v5);
    }

    result = swift_unknownObjectRelease();
    *(v5 + 2) = v12 + 1;
    v13 = &v5[72 * v12];
    *(v13 + 2) = *v8;
    v14 = *(v8 + 16);
    v15 = *(v8 + 32);
    v16 = *(v8 + 48);
    *(v13 + 12) = *(v8 + 64);
    *(v13 + 4) = v15;
    *(v13 + 5) = v16;
    *(v13 + 3) = v14;
    *(v6 + 64) = v5;
    return result;
  }

  v7 = *(a3 + 8 * a4);
  if (v9 == a4 + 1)
  {
    v5 = *(v6 + 64);
    if (*(v5 + 2) + 1 != v7)
    {
      return result;
    }

    v10 = result;
    swift_unknownObjectRetain();
    v8 = v10;
    sub_10027B650(v10, v22);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (v7 >= 1)
  {
    v17 = *(v6 + 64);
    if (v7 <= *(v17 + 16))
    {
      v20 = result;
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10026B288(v17);
        v17 = result;
      }

      if (v7 > *(v17 + 16))
      {
        __break(1u);
      }

      else
      {
        sub_10027B284(v20, a2, a3, v5, a5);
        result = swift_unknownObjectRelease();
        *(v6 + 64) = v17;
      }
    }
  }

  return result;
}

uint64_t sub_10027B45C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v16 = a4 >> 1;
  if (a4 >> 1 == a3)
  {
    *(a5 + 57) = a6 & 1;
    v17 = *(a7 + 16);
    *(a5 + 40) = *a7;
    *(a5 + 56) = v17;
    return result;
  }

  if ((a4 >> 1) <= a3)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (__OFSUB__(v16, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *(a2 + 8 * a3);
  if (v9 > 0)
  {
    v7 = *(a5 + 64);
    if (v9 <= *(v7 + 16))
    {
      v25 = a5;
      v8 = a3 + 1;
      if (!__OFSUB__(v16, a3 + 1))
      {
        v13 = a2;
        v14 = a4;
        v10 = a6;
        v15 = a7;
        v11 = v9 - 1;
        v12 = result;
        swift_unknownObjectRetain();
        result = swift_isUniquelyReferenced_nonNull_native();
        if (v16 != v8)
        {
          if (result)
          {
            v22 = v15;
            v23 = v10;
LABEL_15:
            if (v9 > *(v7 + 16))
            {
              __break(1u);
              return result;
            }

            sub_10027B45C(v12, v13, v8, v14, v7 + 72 * v11 + 32, v23 & 1, v22);
            goto LABEL_17;
          }

LABEL_24:
          result = sub_10026B288(v7);
          v23 = v10;
          v22 = v15;
          v7 = result;
          goto LABEL_15;
        }

        if (result)
        {
          v18 = v15;
          v19 = v10;
LABEL_11:
          if (v9 <= *(v7 + 16))
          {
            v20 = v7 + 72 * v11;
            *(v20 + 89) = v19 & 1;
            v21 = *(v18 + 16);
            *(v20 + 72) = *v18;
            *(v20 + 88) = v21;
LABEL_17:
            result = swift_unknownObjectRelease();
            *(v25 + 64) = v7;
            return result;
          }

          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        v24 = sub_10026B288(v7);
        v19 = v10;
        v18 = v15;
        v7 = v24;
        goto LABEL_11;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  return result;
}

unint64_t sub_10027B5FC()
{
  result = qword_1005D6628;
  if (!qword_1005D6628)
  {
    result = swift_getWitnessTable(byte_1004ECEEC, &type metadata for MultipartWithoutBoundary, v0, v1);
    atomic_store(result, &qword_1005D6628);
  }

  return result;
}

__n128 sub_10027B720@<Q0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  v11 = (v10 + 16);
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0;
  v12 = swift_allocObject();
  v13 = v12 + 16;
  sub_10027C058(&v162);
  v14 = v169;
  *(v12 + 112) = v168;
  *(v12 + 128) = v14;
  *(v12 + 144) = v170;
  *(v12 + 160) = v171;
  v15 = v165;
  *(v12 + 48) = v164;
  *(v12 + 64) = v15;
  v16 = v167;
  *(v12 + 80) = v166;
  *(v12 + 96) = v16;
  v17 = v163;
  *(v12 + 16) = v162;
  *(v12 + 32) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyArrayStorage;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v110 = v12;
  v111 = v19;
  v172 = v19;
  v112 = a2;
  v113 = a3;
  v114 = a4;
  v115 = a5;
  v116 = a6;
  v117 = v18;
  v105 = v18;
  v118 = v10;
  v108 = v12 + 16;
  sub_100296AD8(a1, a2, a3, a4, a5);
  if (v106)
  {

LABEL_4:

    return result;
  }

  v104 = (v18 + 16);
  v157 = _swiftEmptyArrayStorage;
  v158 = v20;
  v159 = v21;
  v160 = v22;
  v161 = v23;
  sub_100295F74(sub_10027C0B0, v109, sub_10027C0E8, v107, 0, 0);
  swift_beginAccess();
  v25 = *(v12 + 128);
  v140 = *(v12 + 112);
  v141 = v25;
  v142 = *(v12 + 144);
  v143 = *(v12 + 160);
  v26 = *(v12 + 64);
  v136 = *(v12 + 48);
  v137 = v26;
  v27 = *(v12 + 96);
  v138 = *(v12 + 80);
  v139 = v27;
  v28 = *(v12 + 32);
  v134 = *v13;
  v135 = v28;
  if (sub_100021348(&v134) == 1)
  {
    v29 = *(v12 + 128);
    v130 = *(v12 + 112);
    v131 = v29;
    v132 = *(v12 + 144);
    v133 = *(v12 + 160);
    v30 = *(v12 + 64);
    v126 = *(v12 + 48);
    v127 = v30;
    v31 = *(v12 + 96);
    v128 = *(v12 + 80);
    v129 = v31;
    v32 = *(v12 + 32);
    v124 = *v13;
    v125 = v32;
    v33 = v169;
    *(v12 + 112) = v168;
    *(v12 + 128) = v33;
    *(v12 + 144) = v170;
    *(v12 + 160) = v171;
    v34 = v165;
    *(v12 + 48) = v164;
    *(v12 + 64) = v34;
    v35 = v167;
    *(v12 + 80) = v166;
    *(v12 + 96) = v35;
    v36 = v163;
    *v13 = v162;
    *(v12 + 32) = v36;
    sub_100025F40(&v124, &qword_1005D6630, &qword_1004EB7F8);
    v37 = v10 + 16;
    goto LABEL_39;
  }

  v155[6] = v140;
  v155[7] = v141;
  v155[8] = v142;
  v156 = v143;
  v155[2] = v136;
  v155[3] = v137;
  v155[4] = v138;
  v155[5] = v139;
  v155[0] = v134;
  v155[1] = v135;
  v119 = 0;
  v120 = 0;
  v121 = 2;
  v37 = v10 + 16;
  if (sub_10027A784(v155, v172))
  {
    v38 = 0;
    v39 = *(&v142 + 1);
    if (!*(&v142 + 1))
    {
      goto LABEL_32;
    }
  }

  else if ((v143 & 1) != 0 || (v154[0] = v140, v154[1] = v141, v154[2] = v142, (sub_10025690C(*(&v136 + 1), v137, SBYTE8(v137), v138, v154) & 1) == 0))
  {
    v38 = 0;
    v39 = *(&v142 + 1);
    if (!*(&v142 + 1))
    {
      goto LABEL_32;
    }
  }

  else
  {
    v88 = *(&v136 + 1);
    v85 = BYTE8(v137);
    v86 = v137;
    v40 = v138;
    v100 = v140;
    v93 = v141;
    v41 = v142;
    if (BYTE8(v139) == 2)
    {

      v42 = a6;

      v91 = 5;
    }

    else
    {
      v43 = sub_1002A8490(*(&v138 + 1), v139);
      v45 = v44;

      v42 = a6;

      v91 = sub_10027046C(v43, v45);
    }

    if (*(&v41 + 1))
    {
      v151[0] = v100;
      v151[1] = v93;
      v152 = v41;
      v153 = *(&v41 + 1);

      sub_1002722A8(v151, v42, v144);
      v92 = v144[1];
      v94 = v144[0];
      v101 = v145;
      v46 = v146;
    }

    else
    {

      v101 = 0;
      v46 = 0;
      v92 = 0u;
      v94 = 0u;
    }

    v47 = BYTE8(v134);
    v48 = v135;
    v87 = v136;
    v90 = v134;

    if (v40)
    {

      LOBYTE(v124) = v85 & 1;
      v97 = sub_10026C240(a6, v88, v86, v85 & 1, v40);
      v89 = v49;
    }

    else
    {
      v97 = 0;
      v89 = 0;
    }

    if (v46)
    {
    }

    else
    {
      v92 = 0u;
      v94 = 0u;
      v101 = -1;
    }

    v50 = sub_1002958F8(v47, v48, *(&v48 + 1), v87);
    v52 = v51;
    swift_beginAccess();
    v53 = *v104;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_1002742A0(0, *(v53 + 2) + 1, 1, v53);
    }

    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = sub_1002742A0((v54 > 1), v55 + 1, 1, v53);
    }

    *(v53 + 2) = v55 + 1;
    v56 = &v53[88 * v55];
    *(v56 + 4) = v90;
    *(v56 + 5) = v97;
    *(v56 + 6) = v89;
    v56[56] = v91;
    v57 = *(v123 + 3);
    *(v56 + 57) = v123[0];
    *(v56 + 15) = v57;
    *(v56 + 4) = v94;
    *(v56 + 5) = v92;
    v56[96] = v101;
    v58 = v122[0];
    *(v56 + 25) = *(v122 + 3);
    *(v56 + 97) = v58;
    *(v56 + 13) = v50;
    *(v56 + 14) = v52;
    *v104 = v53;
    swift_endAccess();
    v38 = 1;
    v39 = *(&v142 + 1);
    if (!*(&v142 + 1))
    {
      goto LABEL_32;
    }
  }

  v147 = v140;
  v148 = v141;
  v149 = v142;
  v150 = v39;

  v59 = sub_100271A2C();
  v61 = v60;
  v63 = v62;
  v64 = v62;

  if (v64 != 2)
  {
    v119 = v59;
    v120 = v61;
    v121 = v63;
LABEL_35:
    swift_beginAccess();
    if (*v11)
    {
      v65 = v134;
      v66 = (2 * *(v134 + 16)) | 1;

      sub_10027B45C(v67, v65 + 32, 0, v66, v11, v38, &v119);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }

    goto LABEL_38;
  }

LABEL_32:
  if (v38)
  {
    goto LABEL_35;
  }

LABEL_38:
  v68 = *(v13 + 112);
  v130 = *(v13 + 96);
  v131 = v68;
  v132 = *(v13 + 128);
  v133 = *(v13 + 144);
  v69 = *(v13 + 48);
  v126 = *(v13 + 32);
  v127 = v69;
  v70 = *(v13 + 80);
  v128 = *(v13 + 64);
  v129 = v70;
  v71 = *(v13 + 16);
  v124 = *v13;
  v125 = v71;
  v72 = v169;
  *(v13 + 96) = v168;
  *(v13 + 112) = v72;
  *(v13 + 128) = v170;
  *(v13 + 144) = v171;
  v73 = v165;
  *(v13 + 32) = v164;
  *(v13 + 48) = v73;
  v74 = v167;
  *(v13 + 64) = v166;
  *(v13 + 80) = v74;
  v75 = v163;
  *v13 = v162;
  *(v13 + 16) = v75;
  sub_100025F40(&v124, &qword_1005D6630, &qword_1004EB7F8);
LABEL_39:
  swift_beginAccess();
  v76 = *(v37 + 16);
  v124 = *v37;
  v125 = v76;
  v77 = *(v37 + 48);
  v126 = *(v37 + 32);
  v127 = v77;
  *&v128 = *(v37 + 64);
  v78 = v124;
  if (!v124)
  {
    sub_10027C0F0();
    swift_allocError();
    swift_willThrow();

    goto LABEL_4;
  }

  v79 = v128;
  v80 = BYTE9(v127);
  v81 = BYTE8(v127);
  v82 = v127;
  v83 = BYTE8(v124);
  v98 = v126;
  v102 = v125;
  swift_beginAccess();
  v84 = *(v105 + 16);
  sub_10000E268(&v124, &v119, &qword_1005D6640, &qword_1004EB800);

  *a7 = v78;
  *(a7 + 8) = v83;
  result = v102;
  *(a7 + 16) = v102;
  *(a7 + 32) = v98;
  *(a7 + 48) = v82;
  *(a7 + 56) = v81;
  *(a7 + 57) = v80 & 1;
  *(a7 + 64) = v79;
  *(a7 + 72) = v84;
  return result;
}

uint64_t sub_10027BFC8()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10027C00C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 161, 7);
}

double sub_10027C058(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
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

uint64_t sub_10027C078()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10027C0F0()
{
  result = qword_1005D6638;
  if (!qword_1005D6638)
  {
    result = swift_getWitnessTable("ٴ\t", &type metadata for ExtractAttachments.Node.NoTopNodeFound, v0, v1);
    atomic_store(result, &qword_1005D6638);
  }

  return result;
}

void sub_10027C1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    sub_10026E678(a1, a2, a3, a4, a5);
  }
}

__n128 sub_10027C1F8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10027C224(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_10027C280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_10027C304(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10027C350(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10027C3C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10027C40C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10027C4B8()
{
  result = qword_1005D6648;
  if (!qword_1005D6648)
  {
    result = swift_getWitnessTable(byte_1004EB980, &type metadata for ExtractAttachments.Node.Action, v0, v1);
    atomic_store(result, &qword_1005D6648);
  }

  return result;
}

uint64_t sub_10027C548(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = a1;
  v10 = 0;
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  sub_1004A5874(v4);
  if (v3 && a2 != v3)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
    do
    {
      if (*v3 - 1 < 0x7E)
      {
        v8 = v5;
        v9 = v6;
        sub_1004A58C4();
        v5 = v8;
        v6 = v9;
      }

      ++v3;
    }

    while (v3 != a2);
    return v5;
  }

  return v10;
}

uint64_t sub_10027C5F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);

  if (v3)
  {
    v5 = 0;
    v46 = a2;
    v47 = v4 + 32;
    while (1)
    {
      v12 = *(v47 + v5 + 48);
      v54 = *(v47 + v5 + 32);
      v55 = v12;
      v13 = *(v47 + v5 + 80);
      v56 = *(v47 + v5 + 64);
      v57 = v13;
      v14 = *(v47 + v5 + 16);
      v53[0] = *(v47 + v5);
      v53[1] = v14;
      v58 = v53[0];
      v59 = v14;
      v60 = v54;
      v61 = v12;
      v62 = v56;
      v63 = v13;
      if (v5)
      {
        sub_100275568(v53, pErrorCode);
        v66._countAndFlagsBits = 8236;
        v66._object = 0xE200000000000000;
        sub_1004A5994(v66);
        v15 = *(&v58 + 1);
        if (!*(&v58 + 1))
        {
          break;
        }
      }

      else
      {
        sub_100275568(v53, pErrorCode);
        v15 = *(&v58 + 1);
        if (!*(&v58 + 1))
        {
          break;
        }
      }

      v16 = v58;
      v17 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v17 = v58 & 0xFFFFFFFFFFFFLL;
      }

      if (!v17 || __PAIR128__(v15, v58) == v59 || (sub_1004A6D34() & 1) != 0)
      {
        break;
      }

      *pErrorCode = sub_100274EBC(v16, v15);
      v52 = v34;
      v67._countAndFlagsBits = 15392;
      v67._object = 0xE200000000000000;
      sub_1004A5994(v67);
      v68._countAndFlagsBits = sub_1002730BC(a2);
      sub_1004A5994(v68);

      v69._countAndFlagsBits = 62;
      v69._object = 0xE100000000000000;
      sub_1004A5994(v69);
      sub_1002755F4(&v58);
      v10._countAndFlagsBits = *pErrorCode;
      v11 = v52;
LABEL_5:
      v10._object = v11;
      sub_1004A5994(v10);

      v5 += 96;
      if (!--v3)
      {
        goto LABEL_32;
      }
    }

    if (*(&v62 + 1) >> 14 < v62 >> 14)
    {
      __break(1u);
    }

    v48 = v5;
    v49 = v3;
    v18 = sub_1004A6404();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    pErrorCode[0] = U_ZERO_ERROR;
    NFCInstance = unorm2_getNFCInstance();
    v26 = pErrorCode[0];
    if (NFCInstance && pErrorCode[0] <= U_ZERO_ERROR)
    {
      sub_1002A7678(v18, v20, v22, v24, NFCInstance);
      v32 = v28;
      if (v28)
      {
        v30 = v27;
      }

      else
      {
        v30 = sub_1004A5864();
        v32 = v35;
      }

      if ((*(a2 + 96) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_1002755A0();
      swift_allocError();
      *v29 = v26;
      *(v29 + 4) = 0;
      swift_willThrow();
      v30 = sub_1004A5864();
      v32 = v31;

      if ((*(a2 + 96) & 1) == 0)
      {
LABEL_26:
        v33 = *(a2 + 88);
LABEL_27:
        v50 = v33;
        sub_10027EE28(&v50, v30, v32, pErrorCode);

        *(a2 + 88) = v33;
        *(a2 + 96) = 0;
        v37 = *pErrorCode;
        v36 = v52;
        v38 = v60;
        v39 = v61;
        pErrorCode[0] = U_ZERO_ERROR;
        v40 = unorm2_getNFCInstance();
        v41 = pErrorCode[0];
        if (v40 && pErrorCode[0] <= U_ZERO_ERROR)
        {
          sub_1002A7678(v38, *(&v38 + 1), v39, *(&v39 + 1), v40);
          v9 = v43;
          if (v43)
          {
            v7 = v42;
          }

          else
          {
            v7 = sub_1004A5864();
            v9 = v44;
          }
        }

        else
        {
          sub_1002755A0();
          swift_allocError();
          *v6 = v41;
          *(v6 + 4) = 0;
          swift_willThrow();
          v7 = sub_1004A5864();
          v9 = v8;
        }

        v3 = v49;
        *pErrorCode = v7;
        v52 = v9;

        v64._countAndFlagsBits = 64;
        v64._object = 0xE100000000000000;
        sub_1004A5994(v64);

        v65._countAndFlagsBits = v37;
        v65._object = v36;
        sub_1004A5994(v65);

        sub_1002755F4(&v58);
        v10._countAndFlagsBits = *pErrorCode;
        v11 = v52;
        a2 = v46;
        v5 = v48;
        goto LABEL_5;
      }
    }

    pErrorCode[0] = U_ZERO_ERROR;
    v33 = uidna_openUTS46(0x3Cu, pErrorCode);
    goto LABEL_27;
  }

LABEL_32:

  return 0;
}

uint64_t sub_10027CA8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s9IMAP2MIME6HeaderO21__derived_enum_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

unint64_t Header.field.getter()
{
  result = 0x6275732D6F747561;
  switch(*(v0 + 96))
  {
    case 1:
      return result;
    case 2:
      result = 6513506;
      break;
    case 3:
      result = 25443;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x2D746E65746E6F63;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0x2D746E65746E6F63;
      break;
    case 0xA:
      result = 1702125924;
      break;
    case 0xB:
      result = 1836020326;
      break;
    case 0xC:
      result = 0x64692D7473696CLL;
      break;
    case 0xD:
      result = 0x2D6567617373656DLL;
      break;
    case 0xE:
      result = 0x7265762D656D696DLL;
      break;
    case 0xF:
      result = 0x69726F6972702D78;
      break;
    case 0x10:
      result = 0x6465766965636572;
      break;
    case 0x11:
      result = 0x702D6E7275746572;
      break;
    case 0x12:
      result = 0x7463656A627573;
      break;
    case 0x13:
      result = 28532;
      break;
    case 0x14:
      v2 = *v0;

      result = v2;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t Header.value(cache:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  switch(*(v1 + 96))
  {
    case 1:
      if (*v1)
      {
        if (*v1 == 1)
        {
          result = 0x6E65672D6F747561;
        }

        else
        {
          result = 0x7065722D6F747561;
        }
      }

      else
      {
        result = 28526;
      }

      break;
    case 2:
    case 3:
    case 0x13:
      result = sub_10027C5F8(v3._countAndFlagsBits, a1);
      break;
    case 5:
      v8 = *v1;
      object = v3._object;
      sub_10026B2E0(v3._countAndFlagsBits, v3._object);

      result = _sSS9IMAP2MIMEEySSAA18ContentDispositionVcfC_0(v8, object, v4);
      break;
    case 8:
      v10 = 1953063479;
      v11 = *v1;
      v12 = 0xD000000000000010;
      v13 = 0x343665736162;
      if (v11 != 4)
      {
        v13 = 0;
      }

      if (v11 != 3)
      {
        v12 = v13;
      }

      v14 = 0x7972616E6962;
      if (v11 == 1)
      {
        v14 = 1953063480;
      }

      if (*v1)
      {
        v10 = v14;
      }

      if (*v1 <= 2u)
      {
        result = v10;
      }

      else
      {
        result = v12;
      }

      break;
    case 9:
      *&v23 = *v1;
      *(&v23 + 1) = v3._object;
      *&v24 = v4;
      *(&v24 + 1) = v5;
      v25 = *(v1 + 32);
      v29[0] = v23;
      v29[1] = v24;
      v30 = v25;
      v31 = *(&v25 + 1);
      sub_100270CA4(v29, v22);
      sub_100272B6C(&v31, v22);
      v32._countAndFlagsBits = &v23;
      result = _sSS9IMAP2MIMEEySSAA11ContentTypeVcfC_0(v32);
      break;
    case 0xB:
      *&v23 = *v1;
      *(&v23 + 1) = v3._object;
      *&v24 = v4;
      *(&v24 + 1) = v5;
      v15 = *(v1 + 48);
      v25 = *(v1 + 32);
      v26 = v15;
      v16 = *(v1 + 80);
      v27 = *(v1 + 64);
      v28 = v16;
      if (!v3._object)
      {
        goto LABEL_24;
      }

      v17 = (v3._object >> 56) & 0xF;
      if ((v3._object & 0x2000000000000000) == 0)
      {
        v17 = v3._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v17 || v3._countAndFlagsBits == v4 && v3._object == v5 || (countAndFlagsBits = v3._countAndFlagsBits, v19 = a1, v20 = v3._object, v21 = sub_1004A6D34(), a1 = v19, (v21 & 1) != 0))
      {
LABEL_24:
        result = sub_1002730BC(a1);
      }

      else
      {
        *&v29[0] = sub_100274EBC(countAndFlagsBits, v20);
        v34._countAndFlagsBits = 15392;
        v34._object = 0xE200000000000000;
        sub_1004A5994(v34);
        v35._countAndFlagsBits = sub_1002730BC(v19);
        sub_1004A5994(v35);

        v36._countAndFlagsBits = 62;
        v36._object = 0xE100000000000000;
        sub_1004A5994(v36);
        result = *&v29[0];
      }

      break;
    case 0xC:
      *(&v23 + 1) = 0xE100000000000000;
      sub_1004A5994(v3);

      v33._countAndFlagsBits = 62;
      v33._object = 0xE100000000000000;
      sub_1004A5994(v33);

      result = 60;
      break;
    case 0xF:
      LOBYTE(v23) = *v1;
      result = sub_1004A6CE4();
      break;
    case 0x14:

      result = v4;
      break;
    default:
      v6 = *v1;

      result = v6;
      break;
  }

  return result;
}

void sub_10027D114(unsigned __int8 **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *(a1 + 16);
  v8 = *(a1 + 17) | ((*(a1 + 21) | (*(a1 + 23) << 16)) << 32);
  v9 = a1[3];
  v10 = *(a1 + 32);
  v11 = *(a1 + 37) | (*(a1 + 39) << 16);
  v12 = *(a1 + 33) | ((*&v11 & 0xFFFFFFLL) << 32);
  switch(v11 >> 19)
  {
    case 1u:
      if (v6)
      {
        v68 = &v5[-v6];
      }

      else
      {
        v68 = 0;
      }

      if (v68 < 0)
      {
        goto LABEL_171;
      }

      v69 = sub_1002A84A8(0, v68, v6, v5);
      if (v7)
      {
        sub_1002A92B0(v69, v70, v71, v72);
        goto LABEL_144;
      }

      v144 = v69;
      v145 = v70;
      if (v71)
      {
        v146 = v71;
        v147 = v72;
        v148 = sub_1002881FC(0, v69, v71, v72);
        v149 = sub_1002881FC(v144, v145, v146, v147);
        if (!__OFADD__(v148, v149))
        {
          if (v148 + v149 >= v148)
          {
            goto LABEL_143;
          }

          goto LABEL_192;
        }

        goto LABEL_182;
      }

      v178 = v72;
      v179 = sub_1002881FC(0, v69, 0, v72);
      v180 = sub_1002881FC(v144, v145, 0, v178);
      if (__OFADD__(v179, v180))
      {
LABEL_202:
        __break(1u);
        goto LABEL_203;
      }

      if (v179 + v180 < v179)
      {
LABEL_212:
        __break(1u);
        goto LABEL_213;
      }

LABEL_143:
      sub_1004A58D4();
LABEL_144:
      v7 = v73;
      v9 = sub_1004A5814();
      v3 = v181;

      v182._rawValue = &off_1005AA7A0;
      v203._countAndFlagsBits = v9;
      v203._object = v3;
      v39 = sub_1004A6AF4(v182, v203);

      if (v39 >= 3)
      {
LABEL_146:
        v7 = 0;
LABEL_147:
        v9 = 0;
        v3 = 0;
LABEL_148:
        v35 = 0;
        v41 = 0;
        v42 = 0;
        LOBYTE(v39) = 0;
        v40 = 0;
        v38 = 0uLL;
        v37 = 0uLL;
        v36 = 0uLL;
        v43 = -1;
      }

      else
      {
        v42 = 0;
        v40 = 0;
        v43 = 1;
      }

LABEL_165:
      *a3 = v40 | v39;
      *(a3 + 8) = v7;
      *(a3 + 16) = v9;
      *(a3 + 24) = v3;
      *(a3 + 32) = v42 | v41;
      *(a3 + 40) = v38;
      *(a3 + 56) = v37;
      *(a3 + 72) = v36;
      *(a3 + 88) = v35;
      *(a3 + 96) = v43;
      return;
    case 2u:
      v53 = sub_1002A8490(*a1, v5);
      v55 = sub_1002A062C(v53, v54, a2);
      v7 = v56;
      v39 = sub_1002733C8(v55, v56);

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 2;
      goto LABEL_165;
    case 3u:
      v57 = sub_1002A8490(*a1, v5);
      v59 = sub_1002A062C(v57, v58, a2);
      v7 = v60;
      v39 = sub_1002733C8(v59, v60);

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 3;
      goto LABEL_165;
    case 4u:
      if (v6)
      {
        v44 = &v5[-v6];
      }

      else
      {
        v44 = 0;
      }

      if (v44 < 0)
      {
        goto LABEL_168;
      }

      v45 = sub_1002A84A8(0, v44, v6, v5);
      if (v7)
      {
        sub_1002A92B0(v45, v46, v47, v48);
LABEL_132:
        v39 = v49;
        v7 = v50;

        v42 = 0;
        v40 = v39 & 0xFFFFFFFFFFFFFF00;
        v43 = 4;
        goto LABEL_165;
      }

      v3 = v45;
      v132 = v46;
      if (!v47)
      {
        v172 = v48;
        v9 = sub_1002881FC(0, v45, 0, v48);
        v173 = sub_1002881FC(v3, v132, 0, v172);
        if (__OFADD__(v9, v173))
        {
LABEL_199:
          __break(1u);
          goto LABEL_200;
        }

        if (&v9[v173] < v9)
        {
LABEL_209:
          __break(1u);
          goto LABEL_210;
        }

LABEL_131:
        v49 = sub_1004A58D4();
        goto LABEL_132;
      }

      v133 = v47;
      v134 = v48;
      v9 = sub_1002881FC(0, v45, v47, v48);
      v135 = sub_1002881FC(v3, v132, v133, v134);
      if (!__OFADD__(v9, v135))
      {
        if (&v9[v135] < v9)
        {
LABEL_189:
          __break(1u);
          goto LABEL_190;
        }

        goto LABEL_131;
      }

      goto LABEL_179;
    case 5u:
      v91 = sub_10026CF58(*a1, v5, v7 & 1, v9, a2);
      v7 = v92;
      v9 = v93;
      v42 = 0;
      v40 = v91 & 0xFFFFFFFFFFFFFF00;
      v43 = 5;
      LOBYTE(v39) = v91;
      goto LABEL_165;
    case 6u:
      if (v6)
      {
        v101 = &v5[-v6];
      }

      else
      {
        v101 = 0;
      }

      if (v101 < 0)
      {
        goto LABEL_175;
      }

      v102 = sub_1002A84A8(0, v101, v6, v5);
      if (v7)
      {
        sub_1002A92B0(v102, v103, v104, v105);
      }

      else
      {
        v3 = v102;
        v164 = v103;
        if (v104)
        {
          v165 = v104;
          v166 = v105;
          v9 = sub_1002881FC(0, v102, v104, v105);
          v167 = sub_1002881FC(v3, v164, v165, v166);
          if (__OFADD__(v9, v167))
          {
LABEL_186:
            __break(1u);
            goto LABEL_187;
          }

          if (&v9[v167] < v9)
          {
LABEL_196:
            __break(1u);
            goto LABEL_197;
          }
        }

        else
        {
          v190 = v105;
          v9 = sub_1002881FC(0, v102, 0, v105);
          v191 = sub_1002881FC(v3, v164, 0, v190);
          if (__OFADD__(v9, v191))
          {
LABEL_206:
            __break(1u);
            goto LABEL_207;
          }

          if (&v9[v191] < v9)
          {
LABEL_216:
            __break(1u);
            JUMPOUT(0x10027DE6CLL);
          }
        }

        v106 = sub_1004A58D4();
      }

      v39 = v106;
      v7 = v107;

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 6;
      goto LABEL_165;
    case 7u:
      if (v6)
      {
        v61 = &v5[-v6];
      }

      else
      {
        v61 = 0;
      }

      if (v61 < 0)
      {
        goto LABEL_169;
      }

      v62 = sub_1002A84A8(0, v61, v6, v5);
      if (v7)
      {
        sub_1002A92B0(v62, v63, v64, v65);
LABEL_136:
        v39 = v66;
        v7 = v67;

        v42 = 0;
        v40 = v39 & 0xFFFFFFFFFFFFFF00;
        v43 = 7;
        goto LABEL_165;
      }

      v3 = v62;
      v136 = v63;
      if (!v64)
      {
        v174 = v65;
        v9 = sub_1002881FC(0, v62, 0, v65);
        v175 = sub_1002881FC(v3, v136, 0, v174);
        if (__OFADD__(v9, v175))
        {
LABEL_200:
          __break(1u);
          goto LABEL_201;
        }

        if (&v9[v175] < v9)
        {
LABEL_210:
          __break(1u);
          goto LABEL_211;
        }

LABEL_135:
        v66 = sub_1004A58D4();
        goto LABEL_136;
      }

      v137 = v64;
      v138 = v65;
      v9 = sub_1002881FC(0, v62, v64, v65);
      v139 = sub_1002881FC(v3, v136, v137, v138);
      if (!__OFADD__(v9, v139))
      {
        if (&v9[v139] < v9)
        {
LABEL_190:
          __break(1u);
          goto LABEL_191;
        }

        goto LABEL_135;
      }

      goto LABEL_180;
    case 8u:
      v118 = sub_1002A8490(*a1, v5);
      LOBYTE(v39) = sub_10027046C(v118, v119);

      v42 = 0;
      v40 = 0;
      v43 = 8;
      goto LABEL_165;
    case 9u:
      v52 = a1[5];
      *&v195 = *a1;
      *(&v195 + 1) = v5;
      LOBYTE(v196) = v7;
      *(&v196 + 1) = v8;
      HIBYTE(v196) = BYTE6(v8);
      *(&v196 + 5) = WORD2(v8);
      v197 = v9;
      LOBYTE(v198) = v10;
      *(&v198 + 1) = v12;
      HIBYTE(v198) = BYTE6(v12) & 7;
      *(&v198 + 5) = WORD2(v12);
      v199.n128_u64[0] = v52;
      v38 = sub_1002722A8(&v195, a2, v192);
      v42 = 0;
      LOBYTE(v39) = v192[0];
      v7 = v192[1];
      v9 = v192[2];
      v3 = v192[3];
      v41 = v193;
      v40 = v192[0] & 0xFFFFFFFFFFFFFF00;
      v38.n128_u64[0] = v194;
      v43 = 9;
      goto LABEL_165;
    case 0xAu:
      if (v6)
      {
        v111 = &v5[-v6];
      }

      else
      {
        v111 = 0;
      }

      if (v111 < 0)
      {
        goto LABEL_176;
      }

      v112 = sub_1002A84A8(0, v111, v6, v5);
      sub_1002A92B0(v112, v113, v114, v115);
      v39 = v116;
      v7 = v117;

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 10;
      goto LABEL_165;
    case 0xBu:
      sub_1002752CC(&v195, *a1, v5, a2);

      v3 = v197;
      if (v197)
      {
        v35 = v202;
        v36 = v201;
        v37 = v200;
        v38 = v199;
        LOBYTE(v39) = v195;
        v7 = *(&v195 + 1);
        v40 = v195 & 0xFFFFFFFFFFFFFF00;
        v41 = v198;
        v9 = v196;
        v42 = v198 & 0xFFFFFFFFFFFFFF00;
        v43 = 11;
        goto LABEL_165;
      }

      v7 = 0;
      v9 = 0;
      goto LABEL_148;
    case 0xCu:
      v39 = sub_100286ECC(*a1, v5);
      v7 = v51;

      if (!v7)
      {
        goto LABEL_147;
      }

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 12;
      goto LABEL_165;
    case 0xDu:
      if (v6)
      {
        v94 = &v5[-v6];
      }

      else
      {
        v94 = 0;
      }

      if (v94 < 0)
      {
        goto LABEL_174;
      }

      v95 = sub_1002A84A8(0, v94, v6, v5);
      if (v7)
      {
        sub_1002A92B0(v95, v96, v97, v98);
      }

      else
      {
        v3 = v95;
        v160 = v96;
        if (v97)
        {
          v161 = v97;
          v162 = v98;
          v9 = sub_1002881FC(0, v95, v97, v98);
          v163 = sub_1002881FC(v3, v160, v161, v162);
          if (__OFADD__(v9, v163))
          {
LABEL_185:
            __break(1u);
            goto LABEL_186;
          }

          if (&v9[v163] < v9)
          {
LABEL_195:
            __break(1u);
            goto LABEL_196;
          }
        }

        else
        {
          v188 = v98;
          v9 = sub_1002881FC(0, v95, 0, v98);
          v189 = sub_1002881FC(v3, v160, 0, v188);
          if (__OFADD__(v9, v189))
          {
LABEL_205:
            __break(1u);
            goto LABEL_206;
          }

          if (&v9[v189] < v9)
          {
LABEL_215:
            __break(1u);
            goto LABEL_216;
          }
        }

        v99 = sub_1004A58D4();
      }

      v39 = v99;
      v7 = v100;

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 13;
      goto LABEL_165;
    case 0xEu:
      if (v6)
      {
        v28 = &v5[-v6];
      }

      else
      {
        v28 = 0;
      }

      if (v28 < 0)
      {
        goto LABEL_167;
      }

      v29 = sub_1002A84A8(0, v28, v6, v5);
      if (v7)
      {
        sub_1002A92B0(v29, v30, v31, v32);
LABEL_128:
        v39 = v33;
        v7 = v34;

        v42 = 0;
        v40 = v39 & 0xFFFFFFFFFFFFFF00;
        v43 = 14;
        goto LABEL_165;
      }

      v3 = v29;
      v128 = v30;
      if (!v31)
      {
        v170 = v32;
        v9 = sub_1002881FC(0, v29, 0, v32);
        v171 = sub_1002881FC(v3, v128, 0, v170);
        if (__OFADD__(v9, v171))
        {
LABEL_198:
          __break(1u);
          goto LABEL_199;
        }

        if (&v9[v171] < v9)
        {
LABEL_208:
          __break(1u);
          goto LABEL_209;
        }

LABEL_127:
        v33 = sub_1004A58D4();
        goto LABEL_128;
      }

      v129 = v31;
      v130 = v32;
      v9 = sub_1002881FC(0, v29, v31, v32);
      v131 = sub_1002881FC(v3, v128, v129, v130);
      if (!__OFADD__(v9, v131))
      {
        if (&v9[v131] < v9)
        {
LABEL_188:
          __break(1u);
          goto LABEL_189;
        }

        goto LABEL_127;
      }

      goto LABEL_178;
    case 0xFu:
      LOWORD(v39) = sub_10027EC8C(*a1, v5);

      if ((v39 & 0x100) != 0)
      {
        goto LABEL_146;
      }

      v42 = 0;
      v40 = 0;
      v43 = 15;
      goto LABEL_165;
    case 0x10u:
      if (v6)
      {
        v21 = &v5[-v6];
      }

      else
      {
        v21 = 0;
      }

      if (v21 < 0)
      {
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
      }

      else
      {
        v22 = sub_1002A84A8(0, v21, v6, v5);
        if (v7)
        {
          sub_1002A92B0(v22, v23, v24, v25);
LABEL_124:
          v39 = v26;
          v7 = v27;

          v42 = 0;
          v40 = v39 & 0xFFFFFFFFFFFFFF00;
          v43 = 16;
          goto LABEL_165;
        }

        v3 = v22;
        v124 = v23;
        if (!v24)
        {
          v168 = v25;
          v9 = sub_1002881FC(0, v22, 0, v25);
          v169 = sub_1002881FC(v3, v124, 0, v168);
          if (__OFADD__(v9, v169))
          {
LABEL_197:
            __break(1u);
            goto LABEL_198;
          }

          if (&v9[v169] < v9)
          {
LABEL_207:
            __break(1u);
            goto LABEL_208;
          }

LABEL_123:
          v26 = sub_1004A58D4();
          goto LABEL_124;
        }

        v125 = v24;
        v126 = v25;
        v9 = sub_1002881FC(0, v22, v24, v25);
        v127 = sub_1002881FC(v3, v124, v125, v126);
        if (!__OFADD__(v9, v127))
        {
          if (&v9[v127] < v9)
          {
LABEL_187:
            __break(1u);
            goto LABEL_188;
          }

          goto LABEL_123;
        }
      }

      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      goto LABEL_181;
    case 0x11u:
      if (v6)
      {
        v74 = &v5[-v6];
      }

      else
      {
        v74 = 0;
      }

      if (v74 < 0)
      {
        goto LABEL_172;
      }

      v75 = sub_1002A84A8(0, v74, v6, v5);
      if (v7)
      {
        sub_1002A92B0(v75, v76, v77, v78);
      }

      else
      {
        v3 = v75;
        v150 = v76;
        if (v77)
        {
          v151 = v77;
          v152 = v78;
          v9 = sub_1002881FC(0, v75, v77, v78);
          v153 = sub_1002881FC(v3, v150, v151, v152);
          if (__OFADD__(v9, v153))
          {
LABEL_183:
            __break(1u);
            goto LABEL_184;
          }

          if (&v9[v153] < v9)
          {
LABEL_193:
            __break(1u);
            goto LABEL_194;
          }
        }

        else
        {
          v183 = v78;
          v9 = sub_1002881FC(0, v75, 0, v78);
          v184 = sub_1002881FC(v3, v150, 0, v183);
          if (__OFADD__(v9, v184))
          {
LABEL_203:
            __break(1u);
            goto LABEL_204;
          }

          if (&v9[v184] < v9)
          {
LABEL_213:
            __break(1u);
            goto LABEL_214;
          }
        }

        v79 = sub_1004A58D4();
      }

      v39 = v79;
      v7 = v80;

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 17;
      goto LABEL_165;
    case 0x12u:
      v108 = sub_1002A8490(*a1, v5);
      v39 = sub_1002A062C(v108, v109, a2);
      v7 = v110;

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 18;
      goto LABEL_165;
    case 0x13u:
      v120 = sub_1002A8490(*a1, v5);
      v122 = sub_1002A062C(v120, v121, a2);
      v7 = v123;
      v39 = sub_1002733C8(v122, v123);

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 19;
      goto LABEL_165;
    case 0x14u:
      v81 = v7 | (v8 << 8);
      v82 = sub_10027C548(*a1, v5);
      v7 = v83;
      if (v81)
      {
        v84 = &v9[-v81];
      }

      else
      {
        v84 = 0;
      }

      if (v84 < 0)
      {
        goto LABEL_173;
      }

      v39 = v82;
      v85 = sub_1002A84A8(0, v84, v81, v9);
      if (v10)
      {
        sub_1002A92B0(v85, v86, v87, v88);
      }

      else
      {
        v154 = v85;
        v155 = v86;
        if (v87)
        {
          v156 = v87;
          v157 = v88;
          v158 = sub_1002881FC(0, v85, v87, v88);
          v159 = sub_1002881FC(v154, v155, v156, v157);
          if (__OFADD__(v158, v159))
          {
LABEL_184:
            __break(1u);
            goto LABEL_185;
          }

          if (v158 + v159 < v158)
          {
LABEL_194:
            __break(1u);
            goto LABEL_195;
          }
        }

        else
        {
          v185 = v88;
          v186 = sub_1002881FC(0, v85, 0, v88);
          v187 = sub_1002881FC(v154, v155, 0, v185);
          if (__OFADD__(v186, v187))
          {
LABEL_204:
            __break(1u);
            goto LABEL_205;
          }

          if (v186 + v187 < v186)
          {
LABEL_214:
            __break(1u);
            goto LABEL_215;
          }
        }

        v89 = sub_1004A58D4();
      }

      v9 = v89;
      v3 = v90;

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 20;
      goto LABEL_165;
    default:
      if (v6)
      {
        v14 = &v5[-v6];
      }

      else
      {
        v14 = 0;
      }

      if (v14 < 0)
      {
        goto LABEL_170;
      }

      v15 = sub_1002A84A8(0, v14, v6, v5);
      if (v7)
      {
        sub_1002A92B0(v15, v16, v17, v18);
      }

      else
      {
        v3 = v15;
        v140 = v16;
        if (v17)
        {
          v141 = v17;
          v142 = v18;
          v9 = sub_1002881FC(0, v15, v17, v18);
          v143 = sub_1002881FC(v3, v140, v141, v142);
          if (__OFADD__(v9, v143))
          {
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          if (&v9[v143] < v9)
          {
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
            goto LABEL_193;
          }
        }

        else
        {
          v176 = v18;
          v9 = sub_1002881FC(0, v15, 0, v18);
          v177 = sub_1002881FC(v3, v140, 0, v176);
          if (__OFADD__(v9, v177))
          {
LABEL_201:
            __break(1u);
            goto LABEL_202;
          }

          if (&v9[v177] < v9)
          {
LABEL_211:
            __break(1u);
            goto LABEL_212;
          }
        }

        v19 = sub_1004A58D4();
      }

      v39 = v19;
      v7 = v20;

      v43 = 0;
      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      goto LABEL_165;
  }
}

uint64_t _s9IMAP2MIME6HeaderO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  switch(*(a1 + 96))
  {
    case 1:
      if (a2[96] != 1)
      {
        return 0;
      }

      v27 = *a2;
      v28 = v4;
      if (v4)
      {
        if (v4 == 1)
        {
          v29 = 0x6E65672D6F747561;
        }

        else
        {
          v29 = 0x7065722D6F747561;
        }

        if (v28 == 1)
        {
          v30 = 0xEE00646574617265;
        }

        else
        {
          v30 = 0xEC0000006465696CLL;
        }
      }

      else
      {
        v30 = 0xE200000000000000;
        v29 = 28526;
      }

      v40 = 0x6E65672D6F747561;
      v41 = 0xEE00646574617265;
      if (v27 != 1)
      {
        v40 = 0x7065722D6F747561;
        v41 = 0xEC0000006465696CLL;
      }

      if (v27)
      {
        v42 = v40;
      }

      else
      {
        v42 = 28526;
      }

      if (v27)
      {
        v43 = v41;
      }

      else
      {
        v43 = 0xE200000000000000;
      }

      if (v29 == v42 && v30 == v43)
      {

        return 1;
      }

      else
      {
        v44 = sub_1004A6D34();

        return v44 & 1;
      }

    case 2:
      if (a2[96] == 2)
      {
        goto LABEL_72;
      }

      return 0;
    case 3:
      if (a2[96] != 3)
      {
        return 0;
      }

      goto LABEL_72;
    case 4:
      if (a2[96] != 4)
      {
        return 0;
      }

      goto LABEL_61;
    case 5:
      if (a2[96] != 5)
      {
        return 0;
      }

      v33 = *(a2 + 1);
      v34 = *(a2 + 2);
      if (v5 == 2)
      {
        if (v33 != 2)
        {
          return 0;
        }
      }

      else if (v5 == 1)
      {
        if (v33 != 1)
        {
          return 0;
        }
      }

      else if (v5)
      {
        if (v33 < 3 || (v4 != *a2 || v33 != v5) && (sub_1004A6D34() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v33)
      {
        return 0;
      }

      return (sub_10026B84C(v6, v34) & 1) != 0;
    case 6:
      if (a2[96] != 6)
      {
        return 0;
      }

      goto LABEL_61;
    case 7:
      if (a2[96] != 7)
      {
        return 0;
      }

      goto LABEL_61;
    case 8:
      if (a2[96] != 8)
      {
        return 0;
      }

      v35 = *a2;
      if (v4 == 5)
      {
        if (v35 == 5)
        {
          return 1;
        }
      }

      else if (v35 != 5 && (sub_10026F4F0() & 1) != 0)
      {
        return 1;
      }

      return 0;
    case 9:
      if (a2[96] != 9)
      {
        return 0;
      }

      v24 = *(a2 + 5);
      v57[0] = v4;
      v57[1] = v5;
      v57[2] = v6;
      v57[3] = v7;
      v58 = v8;
      v25 = *(a2 + 1);
      v59[0] = *a2;
      v59[1] = v25;
      v60 = a2[32];
      return _s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v57, v59) && (sub_10026B9CC(v9, v24) & 1) != 0;
    case 0xA:
      if (a2[96] == 10)
      {
        goto LABEL_61;
      }

      return 0;
    case 0xB:
      if (a2[96] != 11)
      {
        return 0;
      }

      v16 = *(a2 + 1);
      v17 = *(a2 + 2);
      v19 = *(a2 + 3);
      v18 = *(a2 + 4);
      v20 = *(a2 + 5);
      v21 = *(a2 + 6);
      v22 = *(a2 + 7);
      v56 = *(a2 + 8);
      v55 = *(a2 + 9);
      v54 = *(a2 + 10);
      v53 = *(a2 + 11);
      if (v5)
      {
        if (!v16)
        {
          return 0;
        }

        if (v4 != *a2 || v16 != v5)
        {
          v49 = *(a2 + 7);
          v51 = *(a2 + 4);
          v47 = *(a2 + 6);
          v48 = *(a2 + 5);
          v45 = *(a2 + 3);
          v46 = *(a2 + 2);
          v23 = sub_1004A6D34();
          v19 = v45;
          v17 = v46;
          v20 = v48;
          v22 = v49;
          v21 = v47;
          v18 = v51;
          if ((v23 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v16)
      {
        return 0;
      }

      if (v6 == v17 && v7 == v19 || (v50 = v22, v52 = v18, v37 = v20, v38 = v21, v39 = sub_1004A6D34(), v22 = v50, v18 = v52, v21 = v38, v20 = v37, (v39 & 1) != 0))
      {
        if (sub_10027F698(v8, v9, v10, v12, v18, v20, v21, v22) & 1) != 0 && (sub_10027F698(v11, v13, v14, v15, v56, v55, v54, v53))
        {
          return 1;
        }
      }

      return 0;
    case 0xC:
      if (a2[96] != 12)
      {
        return 0;
      }

      goto LABEL_61;
    case 0xD:
      if (a2[96] != 13)
      {
        return 0;
      }

      goto LABEL_61;
    case 0xE:
      if (a2[96] != 14)
      {
        return 0;
      }

      goto LABEL_61;
    case 0xF:
      if (a2[96] != 15)
      {
        return 0;
      }

      return *a2 == v4;
    case 0x10:
      if (a2[96] != 16)
      {
        return 0;
      }

      goto LABEL_61;
    case 0x11:
      if (a2[96] != 17)
      {
        return 0;
      }

      goto LABEL_61;
    case 0x12:
      if (a2[96] != 18)
      {
        return 0;
      }

      goto LABEL_61;
    case 0x13:
      if (a2[96] != 19)
      {
        return 0;
      }

LABEL_72:
      v36 = *a2;

      return sub_10026B608(v4, v36);
    case 0x14:
      if (a2[96] != 20)
      {
        return 0;
      }

      v31 = *(a2 + 2);
      v32 = *(a2 + 3);
      if ((v4 != *a2 || v5 != *(a2 + 1)) && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }

      if (v6 != v31 || v7 != v32)
      {
        goto LABEL_64;
      }

      return 1;
    default:
      if (a2[96])
      {
        return 0;
      }

LABEL_61:
      if (v4 == *a2 && v5 == *(a2 + 1))
      {
        return 1;
      }

LABEL_64:

      return sub_1004A6D34();
  }
}

__n128 sub_10027E4A0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10027E4CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEC && *(a1 + 97))
  {
    return (*a1 + 236);
  }

  v3 = *(a1 + 96);
  if (v3 <= 0x14)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10027E514(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEB)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 236;
    if (a3 >= 0xEC)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEC)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t Header.AutoSubmitted.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 28526;
  }

  if (a1 == 1)
  {
    return 0x6E65672D6F747561;
  }

  return 0x7065722D6F747561;
}

uint64_t sub_10027E5F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E65672D6F747561;
  v4 = 0xEE00646574617265;
  if (v2 != 1)
  {
    v3 = 0x7065722D6F747561;
    v4 = 0xEC0000006465696CLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 28526;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0x6E65672D6F747561;
  v8 = 0xEE00646574617265;
  if (*a2 != 1)
  {
    v7 = 0x7065722D6F747561;
    v8 = 0xEC0000006465696CLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 28526;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1004A6D34();
  }

  return v11 & 1;
}

unint64_t sub_10027E714@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9IMAP2MIME6HeaderO13AutoSubmittedO8rawValueAESgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10027E744(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xEE00646574617265;
  v5 = 0x6E65672D6F747561;
  if (v2 != 1)
  {
    v5 = 0x7065722D6F747561;
    v4 = 0xEC0000006465696CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 28526;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_10027E7AC()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_10027E858(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_10027E8F0(uint64_t a1)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

unint64_t _s9IMAP2MIME6HeaderO13AutoSubmittedO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005AA7A0;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10027E9E8()
{
  result = qword_1005D6650;
  if (!qword_1005D6650)
  {
    result = swift_getWitnessTable("ů\t", &type metadata for Header.AutoSubmitted, v0, v1);
    atomic_store(result, &qword_1005D6650);
  }

  return result;
}

uint64_t Header.Priority.init(_:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    v1 = 0;
  }

  return v1 | (((a1 - 6) < 0xFFFFFFFFFFFFFFFBLL) << 8);
}

Swift::Int Header.Priority.hashValue.getter(uint64_t a1)
{
  v1 = a1;
  sub_1004A6E94();
  sub_1004A6EC4(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10027EAE0()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EC4(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10027EB54(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  sub_1004A6EC4(v2);
  return sub_1004A6F14();
}

unint64_t sub_10027EC28()
{
  result = qword_1005D6658;
  if (!qword_1005D6658)
  {
    result = swift_getWitnessTable("Ѯ\t", &type metadata for Header.Priority, v0, v1);
    atomic_store(result, &qword_1005D6658);
  }

  return result;
}

uint64_t sub_10027EC8C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    result = sub_1002A84A8(0, v3, result, a2);
    v7 = result;
    v8 = v4;
    v9 = v5;
    if (result == v4)
    {
      v10 = 1;
      v11 = result;
    }

    else
    {
      if (result <= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = result;
      }

      v11 = result;
      while (1)
      {
        if (v12 == v11)
        {
          __break(1u);
          goto LABEL_37;
        }

        v13 = *(v5 + v11) - 48;
        v10 = v13 < 0xA;
        if (v13 >= 0xA)
        {
          break;
        }

        if (v4 == ++v11)
        {
          v11 = v4;
          break;
        }
      }

      if (v11 < result)
      {
        goto LABEL_41;
      }
    }

    if (v4 < v11)
    {
      goto LABEL_42;
    }

    v14 = v11 - result;
    if (v11 == result)
    {
      goto LABEL_19;
    }

    result = sub_1002881FC(result, v11, v5, v6);
    if (result > 8)
    {
      goto LABEL_19;
    }

    if (!v9 || (v17 = (v9 + v7)) == 0)
    {
      if (!v10)
      {
        v15 = 0;
LABEL_32:
        if (v11 >= v8)
        {
          goto LABEL_43;
        }

        if (*(v9 + v11) == 32)
        {
LABEL_34:
          if (v15 - 6 > 0xFFFFFFFFFFFFFFFALL)
          {
            v16 = 0;
            return v15 | (v16 << 8);
          }
        }
      }

LABEL_19:
      LOBYTE(v15) = 0;
      v16 = 1;
      return v15 | (v16 << 8);
    }

    v15 = 0;
    while (is_mul_ok(v15, 0xAuLL))
    {
      v18 = *v17 - 48;
      if ((v18 & 0xFFFFFF00) != 0)
      {
        goto LABEL_38;
      }

      v19 = 10 * v15;
      v20 = __CFADD__(v19, v18);
      v15 = v19 + v18;
      if (v20)
      {
        goto LABEL_39;
      }

      ++v17;
      if (!--v14)
      {
        if (!v10)
        {
          goto LABEL_32;
        }

        goto LABEL_34;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_10027EE28@<X0>(Swift::Int isStackAllocationSafe@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = isStackAllocationSafe;
  if ((a3 & 0x1000000000000000) == 0)
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

LABEL_5:
    if (v9 <= 1024)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  isStackAllocationSafe = sub_1004A59E4();
  v9 = isStackAllocationSafe;
  if ((isStackAllocationSafe & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_18:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v23 = swift_slowAlloc();
    sub_10027F198(v23, v9, v7, &v29);
    if (!v4)
    {

      v19 = v29;
      v21 = v30;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_6:
  __chkstk_darwin(isStackAllocationSafe);
  v11 = v26 - v10;
  result = sub_1004A6734();
  if ((v13 & 1) == 0)
  {
    v14 = *v7;
    *(swift_allocObject() + 16) = v14;
    v15 = sub_10027F410(v11, v9, 0, 0, 1, v14);
    if (!v4)
    {
      if ((v15 & 0x80000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v26[1] = v26;
        v27 = a4;
        if (v15 >= 1025)
        {
          v24 = v15;
          v15 = swift_stdlib_isStackAllocationSafe();
          if ((v15 & 1) == 0)
          {
            v25 = swift_slowAlloc();
            sub_10027F550(v25, v24, sub_10027F5F8, v11, v9, sub_10027F3D8, v28);

            a4 = v27;
            v19 = v28[0];
            v21 = v28[1];
            goto LABEL_13;
          }
        }

        __chkstk_darwin(v15);
        v18 = sub_10027F410(v11, v9, v26 - v16, v17, 0, v14);
        if ((v18 & 0x80000000) == 0)
        {
          v19 = sub_1004A58D4();
          v21 = v22;

          a4 = v27;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    swift_willThrow();
LABEL_12:
    v29 = a2;
    v30 = a3;

    v19 = sub_1004A5AA4();
    v21 = v20;

LABEL_13:
    *a4 = v19;
    a4[1] = v21;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10027F198@<X0>(char *a1@<X0>, uint64_t a2@<X1>, UIDNA **a5@<X4>, uint64_t *a6@<X8>)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  sub_1004A6734();
  if (v11)
  {
    goto LABEL_16;
  }

  v12 = *a5;
  *(swift_allocObject() + 16) = v12;
  isStackAllocationSafe = sub_10027F410(a1, a2, 0, 0, 1, v12);
  if (v6)
  {
  }

  if ((isStackAllocationSafe & 0x80000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  if (isStackAllocationSafe >= 1025)
  {
    v21 = isStackAllocationSafe;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v22 = swift_slowAlloc();
      sub_10027F550(v22, v21, sub_10027F67C, a1, a2, sub_10027F3D8, v24);

      v18 = v24[0];
      v20 = v24[1];
      goto LABEL_10;
    }
  }

  __chkstk_darwin(isStackAllocationSafe);
  v16 = sub_10027F410(a1, a2, &v24[-1] - v14, v15, 0, v12);
  if (v16 < 0)
  {
    goto LABEL_14;
  }

  v18 = sub_1004A58D4();
  v20 = v19;

LABEL_10:
  *a6 = v18;
  a6[1] = v20;
  return result;
}

uint64_t sub_10027F3D8@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1004A58D4();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_10027F410(char *name, uint64_t length, char *dest, uint64_t capacity, char a5, UIDNA *idna)
{
  pErrorCode = U_ZERO_ERROR;
  pInfo.size = 16;
  *&pInfo.isTransitionalDifferent = 0;
  *&pInfo.reservedI2 = 0;
  if (length < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (length > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((a5 & 1) == 0)
  {
    if (capacity >= 0xFFFFFFFF80000000)
    {
      if (capacity <= 0x7FFFFFFF)
      {
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  LODWORD(capacity) = 0;
  dest = 0;
LABEL_7:
  result = uidna_nameToASCII_UTF8(idna, name, length, dest, capacity, &pInfo, &pErrorCode);
  v10 = pErrorCode;
  if (((a5 & 1) == 0 || pErrorCode != U_BUFFER_OVERFLOW_ERROR) && (pErrorCode > U_ZERO_ERROR || pInfo.errors))
  {
    v11 = result;
    sub_10027F618();
    swift_allocError();
    *v12 = v10;
    swift_willThrow();
    return v11;
  }

  return result;
}

uint64_t sub_10027F550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *(*a6)(void *__return_ptr, uint64_t, void)@<X6>, void *a7@<X8>)
{
  result = a3(a4, a5, a1, a2, 0);
  if (!v7)
  {
    if ((result & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      result = a6(v13, a1, result);
      v12 = v13[1];
      *a7 = v13[0];
      a7[1] = v12;
    }
  }

  return result;
}

unint64_t sub_10027F618()
{
  result = qword_1005D6660;
  if (!qword_1005D6660)
  {
    result = swift_getWitnessTable(aU_7, &type metadata for UIDNAError, v0, v1);
    atomic_store(result, &qword_1005D6660);
  }

  return result;
}

uint64_t sub_10027F698(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8 && a1 >> 16 == a5 >> 16 && a2 >> 16 == a6 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1004A6CD4() & 1;
  }
}

uint64_t sub_10027F8A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000C9C0(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t IndexableMessageInfo.messageID.getter()
{
  v1 = *(v0 + *(type metadata accessor for IndexableMessageInfo(0) + 32));

  return v1;
}

uint64_t IndexableMessageInfo.messageID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IndexableMessageInfo(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t IndexableMessageInfo.subject.getter()
{
  v1 = *(v0 + *(type metadata accessor for IndexableMessageInfo(0) + 36));

  return v1;
}

uint64_t IndexableMessageInfo.subject.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IndexableMessageInfo(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double IndexableMessageInfo.to.getter()
{
  type metadata accessor for IndexableMessageInfo(0);

  return result;
}

uint64_t IndexableMessageInfo.to.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IndexableMessageInfo(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IndexableMessageInfo.priority.setter(__int16 a1)
{
  result = type metadata accessor for IndexableMessageInfo(0);
  v4 = (v1 + *(result + 44));
  *v4 = a1;
  v4[1] = HIBYTE(a1) & 1;
  return result;
}

uint64_t IndexableMessageInfo.hasDistributionListInTo.setter(char a1)
{
  result = type metadata accessor for IndexableMessageInfo(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t IndexableMessageInfo.hasDistributionListInCC.setter(char a1)
{
  result = type metadata accessor for IndexableMessageInfo(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t IndexableMessageInfo.isAutoReplied.setter(char a1)
{
  result = type metadata accessor for IndexableMessageInfo(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t IndexableMessageInfo.content.getter()
{
  v1 = v0 + *(type metadata accessor for IndexableMessageInfo(0) + 60);
  v2 = *v1;
  sub_10027FE9C(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

double sub_10027FE9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return IndexingDiagnostics.unindexed.getter(a1, a2);
  }

  return result;
}

uint64_t IndexableMessageInfo.content.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + *(type metadata accessor for IndexableMessageInfo(0) + 60);
  result = sub_10027FF08(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  return result;
}

uint64_t sub_10027FF08(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10027FF20(result, a2);
  }

  return result;
}

double IndexableMessageInfo.attachments.getter()
{
  type metadata accessor for IndexableMessageInfo(0);

  return result;
}

uint64_t IndexableMessageInfo.attachments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IndexableMessageInfo(0) + 64);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IndexableMessageInfo.init(bcc:cc:date:from:messageID:subject:to:priority:hasDistributionListInTo:hasDistributionListInCC:isAutoReplied:content:attachments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, char a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19)
{
  v21 = type metadata accessor for IndexableMessageInfo(0);
  v22 = v21[6];
  v23 = sub_1004A44E4();
  (*(*(v23 - 8) + 56))(&a9[v22], 1, 1, v23);
  v24 = &a9[v21[7]];
  *(v24 + 4) = 0u;
  *(v24 + 5) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v25 = &a9[v21[8]];
  v26 = &a9[v21[9]];
  v27 = &a9[v21[11]];
  v28 = &a9[v21[15]];
  *a9 = a1;
  *(a9 + 1) = a2;
  sub_10027F8A8(a3, &a9[v22], &qword_1005D0F20, &qword_1004E9390);
  result = sub_10027F8A8(a4, v24, &qword_1005D6668, &qword_1004EBFA8);
  *v25 = a5;
  *(v25 + 1) = a6;
  *v26 = a7;
  *(v26 + 1) = a8;
  *&a9[v21[10]] = a10;
  *v27 = a11;
  v27[1] = a12 & 1;
  a9[v21[12]] = a13;
  a9[v21[13]] = a14;
  a9[v21[14]] = a15;
  *v28 = a16;
  *(v28 + 1) = a17;
  v28[16] = a18;
  *&a9[v21[16]] = a19;
  return result;
}

uint64_t IndexableMessageInfo.Content.data.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004A57F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A57D4();
  v6 = sub_1004A5774();
  (*(v3 + 8))(v5, v2);
  return v6;
}

Swift::Int IndexableMessageInfo.Content.byteCount.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1004A59E4();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    return HIBYTE(a2) & 0xF;
  }

  return a1 & 0xFFFFFFFFFFFFLL;
}

uint64_t IndexableMessageInfo.Attachment.filename.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t IndexableMessageInfo.Attachment.filename.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t static IndexableMessageInfo.Attachment.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v12 = *(a1 + 32);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  v10 = *(a2 + 32);
  if (_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v11, v9))
  {
    v6 = *(a1 + 48);
    v7 = *(a2 + 48);
    if (v6)
    {
      if (v7 && (*(a1 + 40) == *(a2 + 40) && v6 == v7 || (sub_1004A6D34() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v7)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10028044C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v2;
  v10 = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v5;
  v12 = *(a2 + 32);
  v7 = *(a2 + 40);
  v6 = *(a2 + 48);
  if (_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v9, v11))
  {
    if (v3)
    {
      if (v6 && (v4 == v7 && v3 == v6 || (sub_1004A6D34() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t IndexableMessageInfo.init(message:maximumTextCount:cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v35 = a4;
  v6 = sub_10000C9C0(&qword_1005D6670, &qword_1004EBFB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v34 - v10);
  v12 = type metadata accessor for IndexableMessageInfo(0);
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v20 = *(v19 + 24);
  v21 = sub_1004A44E4();
  (*(*(v21 - 8) + 56))(&v18[v20], 1, 1, v21);
  v22 = &v18[v12[7]];
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v23 = &v18[v12[8]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v18[v12[9]];
  *v24 = 0;
  *(v24 + 1) = 0;
  *&v18[v12[11]] = 256;
  v25 = &v18[v12[15]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v25[16] = -1;
  sub_10028D97C(a1, a2, v34, v11);
  sub_1002834B0(a1, type metadata accessor for Message);
  sub_100283378(v11, v8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_100025F40(v8, &qword_1005D6670, &qword_1004EBFB0);
    sub_100025F40(&v18[v20], &qword_1005D0F20, &qword_1004E9390);
    v26 = *(v22 + 3);
    v38 = *(v22 + 2);
    v39 = v26;
    v27 = *(v22 + 5);
    v40 = *(v22 + 4);
    v41 = v27;
    v28 = *(v22 + 1);
    v36 = *v22;
    v37 = v28;
    sub_100025F40(&v36, &qword_1005D6668, &qword_1004EBFA8);
    return (*(v13 + 56))(v35, 1, 1, v12);
  }

  else
  {
    sub_1002833E8(v8, v15);
    sub_100025F40(&v18[v20], &qword_1005D0F20, &qword_1004E9390);
    v30 = *(v22 + 3);
    v38 = *(v22 + 2);
    v39 = v30;
    v31 = *(v22 + 5);
    v40 = *(v22 + 4);
    v41 = v31;
    v32 = *(v22 + 1);
    v36 = *v22;
    v37 = v32;
    sub_100025F40(&v36, &qword_1005D6668, &qword_1004EBFA8);
    sub_1002833E8(v15, v18);
    v33 = v35;
    sub_10028344C(v18, v35);
    (*(v13 + 56))(v33, 0, 1, v12);
    return sub_1002834B0(v18, type metadata accessor for IndexableMessageInfo);
  }
}

uint64_t sub_1002808F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v151 = a6;
  v145 = a5;
  v146 = a1;
  v148 = a3;
  v149 = a4;
  v147 = a2;
  v144 = a7;
  v7 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v7 - 8);
  v9 = &v133 - v8;
  v152 = (type metadata accessor for IndexableMessageInfo.InfoAndListID(0) - 8);
  __chkstk_darwin(v152);
  v11 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IndexableMessageInfo(0);
  v143 = *(v12 - 1);
  __chkstk_darwin(v12);
  v14 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 24);
  v17 = sub_1004A44E4();
  v18 = *(*(v17 - 8) + 56);
  v140 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = &v14[v12[7]];
  *(v19 + 4) = 0u;
  *(v19 + 5) = 0u;
  *(v19 + 2) = 0u;
  *(v19 + 3) = 0u;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v141 = v19;
  v142 = v14;
  v20 = &v14[v12[8]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v14[v12[9]];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v14[v12[11]] = 256;
  v22 = &v14[v12[15]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v22[16] = -1;
  v18(v9, 1, 1, v17);
  v23 = v12[6];
  v18(&v11[v23], 1, 1, v17);
  v24 = &v11[v12[7]];
  *(v24 + 4) = 0u;
  *(v24 + 5) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v25 = &v11[v12[8]];
  v26 = &v11[v12[9]];
  v150 = v12[11];
  v27 = &v11[v12[15]];
  *v11 = _swiftEmptyArrayStorage;
  *(v11 + 1) = _swiftEmptyArrayStorage;
  sub_10027F8A8(v9, &v11[v23], &qword_1005D0F20, &qword_1004E9390);
  v28 = *(v24 + 3);
  v204[2] = *(v24 + 2);
  v204[3] = v28;
  v29 = *(v24 + 5);
  v204[4] = *(v24 + 4);
  v204[5] = v29;
  v30 = *(v24 + 1);
  v204[0] = *v24;
  v204[1] = v30;
  sub_100025F40(v204, &qword_1005D6668, &qword_1004EBFA8);
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  *(v24 + 4) = 0u;
  *(v24 + 5) = 0u;
  *v25 = 0;
  *(v25 + 1) = 0;
  *v26 = 0;
  *(v26 + 1) = 0;
  v136 = v12[10];
  *&v11[v136] = _swiftEmptyArrayStorage;
  *&v11[v150] = 256;
  v134 = v12[12];
  v11[v134] = 0;
  v135 = v12[13];
  v11[v135] = 0;
  v11[v12[14]] = 0;
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = -1;
  v138 = v12;
  *&v11[v12[16]] = _swiftEmptyArrayStorage;
  v150 = *(v152 + 7);
  v152 = v11;
  *&v11[v150] = _swiftEmptySetSingleton;
  v187 = 0;
  v31 = sub_100297350(v146, v147, v148, v149);
  v32 = sub_1002975B0(_swiftEmptyArrayStorage, v31);
  if (v32)
  {
    v34 = v32;
    v35 = v33;
    *&v188 = sub_100257570(_swiftEmptyArrayStorage);
    sub_100297A70(v34, v35, 0, &v188, v31);

    v36 = v188;
  }

  else
  {

    v36 = sub_100257570(_swiftEmptyArrayStorage);
  }

  v37 = swift_allocObject();
  v139 = &v133;
  *(v37 + 16) = v36;
  __chkstk_darwin(v37);
  v38 = v151;
  v39 = v145;
  *(&v133 - 4) = v152;
  *(&v133 - 3) = v39;
  *(&v133 - 2) = v38;
  __chkstk_darwin(v40);
  *(&v133 - 4) = &v187;
  *(&v133 - 3) = v41;
  *(&v133 - 2) = v38;
  v42 = swift_allocObject();
  v43 = v42 + 1;
  sub_100276450(&v176);
  v44 = v185;
  v42[9] = v184;
  v42[10] = v44;
  v42[11] = *v186;
  *(v42 + 185) = *&v186[9];
  v45 = v181;
  v42[5] = v180;
  v42[6] = v45;
  v46 = v183;
  v42[7] = v182;
  v42[8] = v46;
  v47 = v177;
  v42[1] = v176;
  v42[2] = v47;
  v48 = v179;
  v42[3] = v178;
  v42[4] = v48;
  v49 = swift_allocObject();
  *(v49 + 16) = 2;
  v50 = (v49 + 16);
  __chkstk_darwin(v49);
  *(&v133 - 4) = v42;
  *(&v133 - 3) = v51;
  v137 = v51;
  *(&v133 - 2) = sub_100283A78;
  *(&v133 - 1) = (&v133 - 6);
  __chkstk_darwin(v51);
  *(&v133 - 4) = (v42 + 1);
  *(&v133 - 3) = sub_100283AB4;
  *(&v133 - 2) = (&v133 - 6);

  v52 = 0;
  sub_100296AD8(3, v146, v147, v148, v149);
  v199 = _swiftEmptyArrayStorage;
  v200 = v53;
  v201 = v54;
  v202 = v55;
  v203 = v56;
  sub_100295F74(sub_100277324, (&v133 - 6), sub_100277344, (&v133 - 6), sub_10027989C, v37);
  swift_beginAccess();
  v101 = v151;
  if (*v50 == 2 && (swift_beginAccess(), v102 = v42[10], v103 = v42[8], v162 = v42[9], v163 = v102, v104 = v42[10], v164[0] = v42[11], *(v164 + 9) = *(v42 + 185), v105 = v42[6], v106 = v42[4], v158 = v42[5], v159 = v105, v107 = v42[6], v108 = v42[8], v160 = v42[7], v161 = v108, v109 = v42[2], v155[0] = *v43, v155[1] = v109, v110 = v42[4], v112 = *v43, v111 = v42[2], v156 = v42[3], v157 = v110, v173 = v162, v174 = v104, v175[0] = v42[11], *(v175 + 9) = *(v42 + 185), v169 = v158, v170 = v107, v171 = v160, v172 = v103, v165 = v112, v166 = v111, v167 = v156, v168 = v106, sub_100021348(&v165) != 1))
  {
    v196 = v173;
    v197 = v174;
    v198[0] = v175[0];
    *(v198 + 9) = *(v175 + 9);
    v192 = v169;
    v193 = v170;
    v194 = v171;
    v195 = v172;
    v188 = v165;
    v189 = v166;
    v190 = v167;
    v191 = v168;

    sub_10000E268(v155, v153, &qword_1005D65E0, &unk_1004EB070);
    sub_100281684(v145, &v188, v101);
    sub_100025F40(v155, &qword_1005D65E0, &unk_1004EB070);
    *v50 = 2;
    v123 = v42[10];
    v153[8] = v42[9];
    v153[9] = v123;
    v154[0] = v42[11];
    *(v154 + 9) = *(v42 + 185);
    v124 = v42[6];
    v153[4] = v42[5];
    v153[5] = v124;
    v125 = v42[8];
    v153[6] = v42[7];
    v153[7] = v125;
    v126 = v42[2];
    v153[0] = *v43;
    v153[1] = v126;
    v127 = v42[4];
    v153[2] = v42[3];
    v153[3] = v127;
    v128 = v185;
    v42[9] = v184;
    v42[10] = v128;
    v42[11] = *v186;
    *(v42 + 185) = *&v186[9];
    v129 = v181;
    v42[5] = v180;
    v42[6] = v129;
    v130 = v183;
    v42[7] = v182;
    v42[8] = v130;
    v131 = v177;
    *v43 = v176;
    v42[2] = v131;
    v132 = v179;
    v42[3] = v178;
    v42[4] = v132;
    sub_100025F40(v153, &qword_1005D65E0, &unk_1004EB070);

    v52 = 0;
  }

  else
  {
    swift_beginAccess();
    v113 = v42[10];
    v196 = v42[9];
    v197 = v113;
    v198[0] = v42[11];
    *(v198 + 9) = *(v42 + 185);
    v114 = v42[6];
    v192 = v42[5];
    v193 = v114;
    v115 = v42[8];
    v194 = v42[7];
    v195 = v115;
    v116 = v42[2];
    v188 = *v43;
    v189 = v116;
    v117 = v42[4];
    v190 = v42[3];
    v191 = v117;
    v118 = v185;
    v42[9] = v184;
    v42[10] = v118;
    v42[11] = *v186;
    *(v42 + 185) = *&v186[9];
    v119 = v181;
    v42[5] = v180;
    v42[6] = v119;
    v120 = v183;
    v42[7] = v182;
    v42[8] = v120;
    v121 = v177;
    *v43 = v176;
    v42[2] = v121;
    v122 = v179;
    v42[3] = v178;
    v42[4] = v122;

    sub_100025F40(&v188, &qword_1005D65E0, &unk_1004EB070);
  }

  if ((v187 & 1) == 0)
  {

    sub_1002834B0(v152, type metadata accessor for IndexableMessageInfo.InfoAndListID);
    sub_100025F40(&v142[v140], &qword_1005D0F20, &qword_1004E9390);
    v61 = *(v141 + 3);
    v167 = *(v141 + 2);
    v168 = v61;
    v62 = *(v141 + 5);
    v169 = *(v141 + 4);
    v170 = v62;
    v63 = *(v141 + 1);
    v165 = *v141;
    v166 = v63;
    sub_100025F40(&v165, &qword_1005D6668, &qword_1004EBFA8);
    return (*(v143 + 56))(v144, 1, 1, v138);
  }

  v57 = *&v152[v136];
  v58 = *(v57 + 16);

  if (!v58)
  {
LABEL_22:
    v149 = v52;

    goto LABEL_23;
  }

  v59 = 0;
  v60 = v57 + 32;
  v148 = v57 + 32;
  while (1)
  {
    v65 = (v60 + 96 * v59);
    v66 = *v65;
    v166 = v65[1];
    v67 = v65[2];
    v68 = v65[3];
    v69 = v65[5];
    v169 = v65[4];
    v170 = v69;
    v167 = v67;
    v168 = v68;
    v165 = v66;
    v70 = *&v152[v150];
    if (!*(v70 + 16))
    {
      goto LABEL_10;
    }

    v149 = v52;
    v71 = v166;
    sub_1004A6E94();
    sub_100275568(&v165, v155);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v72 = sub_1004A6F14();
    v73 = -1 << *(v70 + 32);
    v74 = v72 & ~v73;
    if ((*(v70 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74))
    {
      break;
    }

LABEL_9:

    sub_1002755F4(&v165);
    v60 = v148;
    v52 = v149;
LABEL_10:
    if (++v59 == v58)
    {
      goto LABEL_22;
    }
  }

  v75 = ~v73;
  while (1)
  {
    v76 = (*(v70 + 48) + 16 * v74);
    v77 = *v76 == v71 && v76[1] == *(&v71 + 1);
    if (v77 || (sub_1004A6D34() & 1) != 0)
    {
      break;
    }

    v74 = (v74 + 1) & v75;
    if (((*(v70 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_1002755F4(&v165);

  v152[v134] = 1;
LABEL_23:
  v78 = *(v152 + 1);
  v79 = *(v78 + 16);

  if (!v79)
  {
LABEL_38:

    goto LABEL_39;
  }

  v80 = 0;
  v81 = v78 + 32;
  v148 = v78 + 32;
  while (2)
  {
    v82 = (v81 + 96 * v80);
    v83 = *v82;
    v166 = v82[1];
    v84 = v82[2];
    v85 = v82[3];
    v86 = v82[5];
    v169 = v82[4];
    v170 = v86;
    v167 = v84;
    v168 = v85;
    v165 = v83;
    v87 = *&v152[v150];
    if (!*(v87 + 16))
    {
LABEL_26:
      if (++v80 == v79)
      {
        goto LABEL_38;
      }

      continue;
    }

    break;
  }

  v88 = v166;
  sub_1004A6E94();
  sub_100275568(&v165, v155);

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v89 = sub_1004A6F14();
  v90 = -1 << *(v87 + 32);
  v91 = v89 & ~v90;
  if (((*(v87 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
  {
LABEL_25:

    sub_1002755F4(&v165);
    v81 = v148;
    goto LABEL_26;
  }

  v92 = ~v90;
  while (1)
  {
    v93 = (*(v87 + 48) + 16 * v91);
    v94 = *v93 == v88 && v93[1] == *(&v88 + 1);
    if (v94 || (sub_1004A6D34() & 1) != 0)
    {
      break;
    }

    v91 = (v91 + 1) & v92;
    if (((*(v87 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  sub_1002755F4(&v165);

  v152[v135] = 1;
LABEL_39:
  v95 = v142;
  sub_100025F40(&v142[v140], &qword_1005D0F20, &qword_1004E9390);
  v96 = *(v141 + 3);
  v167 = *(v141 + 2);
  v168 = v96;
  v97 = *(v141 + 5);
  v169 = *(v141 + 4);
  v170 = v97;
  v98 = *(v141 + 1);
  v165 = *v141;
  v166 = v98;
  sub_100025F40(&v165, &qword_1005D6668, &qword_1004EBFA8);
  v99 = v152;
  sub_10028344C(v152, v95);
  sub_1002834B0(v99, type metadata accessor for IndexableMessageInfo.InfoAndListID);
  v100 = v144;
  sub_10028344C(v95, v144);
  (*(v143 + 56))(v100, 0, 1, v138);
  return sub_1002834B0(v95, type metadata accessor for IndexableMessageInfo);
}

uint64_t sub_100281684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 1000000000)
  {
    v10 = a1;
    v11 = v3 + *(type metadata accessor for IndexableMessageInfo(0) + 60);
    v12 = *(v11 + 16);
    if (v12 == 255)
    {
      LOBYTE(v14) = 0;
      v16 = v10;
    }

    else
    {
      v4 = *v11;
      v13 = *(v11 + 8);
      IndexingDiagnostics.unindexed.getter(*v11, v13);
      v14 = sub_1004A5924();
      result = sub_10027FF08(v4, v13, v12);
      v16 = v10 - v14;
      if (__OFSUB__(v10, v14))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    v17 = (v16 * 5) >> 64;
    v18 = 5 * v16;
    if (v17 != v18 >> 63)
    {
      __break(1u);
LABEL_30:
      result = sub_1002743C8(0, *(v5 + 16) + 1, 1, v5);
      v5 = result;
LABEL_19:
      v27 = *(v5 + 16);
      v26 = *(v5 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        result = sub_1002743C8((v26 > 1), v27 + 1, 1, v5);
        v28 = v27 + 1;
        v5 = result;
      }

      *(v5 + 16) = v28;
      v29 = v5 + 56 * v27;
      *(v29 + 32) = a3;
      *(v29 + 40) = a2;
      *(v29 + 48) = v10;
      *(v29 + 56) = v12;
      *(v29 + 64) = v14;
      *(v29 + 72) = v4;
      *(v29 + 80) = v30;
      *(v3 + v6) = v5;
      return result;
    }

    v9 = v18 & ~(v18 >> 63);
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_1002764DC(a2, v31);
  sub_1002788DC(a2, v9, a3, v32);
  v37 = v32[4];
  v38 = v32[5];
  v39 = v32[6];
  v40 = v32[7];
  v33 = v32[0];
  v34 = v32[1];
  v35 = v32[2];
  v36 = v32[3];
  result = sub_10027971C(&v33);
  if (result == 1)
  {
    return result;
  }

  v19 = type metadata accessor for IndexableMessageInfo(0);
  v4 = v3 + *(v19 + 60);
  v10 = *v4;
  a2 = *(v4 + 8);
  LODWORD(a3) = *(v4 + 16);
  v31[6] = v39;
  v31[7] = v40;
  v31[4] = v37;
  v31[5] = v38;
  v31[0] = v33;
  v31[1] = v34;
  v31[2] = v35;
  v31[3] = v36;
  v20 = sub_100279920(v31);
  result = sub_100279590(v31);
  if (v20)
  {
    if (v20 == 1)
    {
      v22 = *result;
      v21 = *(result + 8);
      if (a3 != 255)
      {
        if (a3)
        {

          v41._countAndFlagsBits = v22;
          v41._object = v21;
          sub_1004A5994(v41);
          sub_100025F40(v32, &qword_1005D6610, &unk_1004EC260);
          result = sub_10027FF08(v10, a2, a3);
          *v4 = v10;
          *(v4 + 8) = a2;
LABEL_25:
          *(v4 + 16) = 1;
          return result;
        }

        result = sub_10027FF08(v10, a2, a3);
      }

      *v4 = v22;
      *(v4 + 8) = v21;
      goto LABEL_25;
    }

    a3 = *(result + 8);
    a2 = *(result + 16);
    v10 = *(result + 24);
    v12 = *(result + 32);
    LOBYTE(v14) = *(result + 40);
    v4 = sub_10026D408(*(result + 72));
    v30 = v25;
    sub_10026E678(a3, a2, v10, v12, v14);
    sub_100025F40(v32, &qword_1005D6610, &unk_1004EC260);
    v6 = *(v19 + 64);
    v5 = *(v3 + v6);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

LABEL_15:
  v24 = *result;
  v23 = *(result + 8);
  if (a3 == 255)
  {
    *v4 = v24;
    *(v4 + 8) = v23;
  }

  else
  {
    if (a3)
    {
      return sub_100025F40(v32, &qword_1005D6610, &unk_1004EC260);
    }

    v42._countAndFlagsBits = 2570;
    v42._object = 0xE200000000000000;
    sub_1004A5994(v42);

    v43._countAndFlagsBits = v24;
    v43._object = v23;
    sub_1004A5994(v43);
    sub_100025F40(v32, &qword_1005D6610, &unk_1004EC260);

    result = sub_10027FF08(v10, a2, a3);
    *v4 = v10;
    *(v4 + 8) = a2;
  }

  *(v4 + 16) = 0;
  return result;
}

void sub_100281A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, void *a8)
{
  *a6 = 1;
  if (((1 << (*(a1 + 32) >> 59)) & 0x1343F1) == 0)
  {

    sub_100283B1C(a1, v12);
    sub_10027D114(a1, a8, v10);
    if (v11 != 255)
    {
      v12[2] = v10[2];
      v12[3] = v10[3];
      v12[4] = v10[4];
      v12[5] = v10[5];
      v12[0] = v10[0];
      v12[1] = v10[1];
      v13 = v11;
      sub_100281B10(v12);
      sub_100025F40(v10, &qword_1005D6760, &unk_1004EDA60);
    }
  }
}

void sub_100281B10(uint64_t *a1)
{
  v3 = a1[1];
  v54 = *a1;
  v4 = sub_1004A44E4();
  *&v53 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v7 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v51 - v11;
  __chkstk_darwin(v13);
  v15 = &v51 - v14;
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  switch(*(a1 + 96))
  {
    case 1:
      v19 = v54;
      v20 = *(type metadata accessor for IndexableMessageInfo(0) + 56);
      if (v19)
      {
        *(v1 + v20) = 1;
      }

      else
      {
        *(v1 + v20) = 0;
      }

      break;
    case 2:
      v21 = v54;

      *v1 = v21;
      break;
    case 3:
      v37 = v54;

      v1[1] = v37;
      break;
    case 0xA:
      v51 = v3;
      sub_1002853A0(v54, v3, v12);
      v41 = *(v53 + 48);
      v42 = v41(v12, 1, v4);
      v52 = v41;
      if (v42 == 1)
      {
        sub_10028408C(v15);
        if (v41(v12, 1, v4) != 1)
        {
          sub_100025F40(v12, &qword_1005D0F20, &qword_1004E9390);
        }
      }

      else
      {
        v47 = v53;
        (*(v53 + 32))(v15, v12, v4);
        (*(v47 + 56))(v15, 0, 1, v4);
      }

      sub_10000E268(v15, v9, &qword_1005D0F20, &qword_1004E9390);
      v48 = 1;
      if (v52(v9, 1, v4) != 1)
      {
        v49 = v53;
        (*(v53 + 32))(v6, v9, v4);
        sub_1004A4464();
        sub_1004A4454();
        (*(v49 + 8))(v6, v4);
        v48 = 0;
      }

      sub_100025F40(v15, &qword_1005D0F20, &qword_1004E9390);
      (*(v53 + 56))(v18, v48, 1, v4);
      v50 = type metadata accessor for IndexableMessageInfo(0);
      sub_10027F8A8(v18, v1 + *(v50 + 24), &qword_1005D0F20, &qword_1004E9390);
      break;
    case 0xB:
      v22 = *(a1 + 3);
      v56 = *(a1 + 2);
      v57 = v22;
      v23 = *(a1 + 5);
      v58 = *(a1 + 4);
      v59 = v23;
      v24 = v1 + *(type metadata accessor for IndexableMessageInfo(0) + 28);
      v25 = *(v24 + 3);
      v60[2] = *(v24 + 2);
      v60[3] = v25;
      v26 = *(v24 + 5);
      v60[4] = *(v24 + 4);
      v60[5] = v26;
      v27 = *(v24 + 1);
      v60[0] = *v24;
      v60[1] = v27;
      v28 = v54;
      v61[0] = v54;
      v61[1] = v3;
      v29 = *(a1 + 2);
      v53 = *(a1 + 1);
      v62 = *(a1 + 1);
      v63 = v29;
      v30 = *(a1 + 3);
      v31 = *(a1 + 4);
      v32 = *(a1 + 5);
      v67 = *(a1 + 96);
      v66 = v32;
      v65 = v31;
      v64 = v30;
      sub_100275568(v61, &v55);
      sub_100025F40(v60, &qword_1005D6668, &qword_1004EBFA8);
      *v24 = v28;
      *(v24 + 1) = v3;
      v33 = v56;
      v34 = v57;
      *(v24 + 1) = v53;
      *(v24 + 2) = v33;
      v35 = v58;
      v36 = v59;
      *(v24 + 3) = v34;
      *(v24 + 4) = v35;
      *(v24 + 5) = v36;
      break;
    case 0xC:
      type metadata accessor for IndexableMessageInfo.InfoAndListID(0);

      sub_100282104(v61, v54, v3);

      break;
    case 0xD:
      v38 = (v1 + *(type metadata accessor for IndexableMessageInfo(0) + 32));

      *v38 = v54;
      v38[1] = v3;
      break;
    case 0xF:
      *(v1 + *(type metadata accessor for IndexableMessageInfo(0) + 44)) = v54;
      break;
    case 0x12:
      sub_100283B78(a1, v61);
      v43 = sub_1002A9F18(v54, v3);
      v45 = v44;
      v46 = (v1 + *(type metadata accessor for IndexableMessageInfo(0) + 36));

      *v46 = v43;
      v46[1] = v45;
      break;
    case 0x13:
      v39 = *(type metadata accessor for IndexableMessageInfo(0) + 40);
      v40 = v54;

      *(v1 + v39) = v40;
      break;
    default:
      return;
  }
}

uint64_t sub_100282104(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v8 = sub_1004A6F14();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1004A6D34() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1002824B4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100282254(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D6768, &qword_1004EC270);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_1002824B4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100282254(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100282634();
      goto LABEL_16;
    }

    sub_100282790(v8 + 1);
  }

  v10 = *v4;
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v11 = sub_1004A6F14();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1004A6D34() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1004A6E14();
  __break(1u);
}

void sub_100282634()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D6768, &qword_1004EC270);
  v2 = *v0;
  v3 = sub_1004A6684();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_100282790(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D6768, &qword_1004EC270);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1004A6E94();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1002829C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1004A6D34();
  }
}

uint64_t _s9IMAP2MIME20IndexableMessageInfoV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1004A44E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v8 - 8);
  v10 = &v78 - v9;
  v11 = sub_10000C9C0(&qword_1005D6770, &qword_1004EC278);
  __chkstk_darwin(v11);
  v13 = &v78 - v12;
  if ((sub_10026B608(*a1, *a2) & 1) == 0 || (sub_10026B608(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_44;
  }

  v14 = type metadata accessor for IndexableMessageInfo(0);
  v93 = a2;
  v15 = *(v14 + 24);
  v16 = *(v11 + 48);
  v91 = v14;
  v92 = a1;
  sub_10000E268(a1 + v15, v13, &qword_1005D0F20, &qword_1004E9390);
  v17 = v93 + v15;
  v18 = v93;
  sub_10000E268(v17, &v13[v16], &qword_1005D0F20, &qword_1004E9390);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v16], 1, v4) == 1)
    {
      sub_100025F40(v13, &qword_1005D0F20, &qword_1004E9390);
      goto LABEL_10;
    }

LABEL_8:
    v20 = &qword_1005D6770;
    v21 = &qword_1004EC278;
    v22 = v13;
LABEL_43:
    sub_100025F40(v22, v20, v21);
    goto LABEL_44;
  }

  sub_10000E268(v13, v10, &qword_1005D0F20, &qword_1004E9390);
  if (v19(&v13[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_8;
  }

  (*(v5 + 32))(v7, &v13[v16], v4);
  sub_100283BD4();
  v23 = sub_1004A5724();
  v24 = *(v5 + 8);
  v24(v7, v4);
  v24(v10, v4);
  sub_100025F40(v13, &qword_1005D0F20, &qword_1004E9390);
  if ((v23 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_10:
  v25 = v91;
  v26 = (v92 + v91[7]);
  v27 = v26[3];
  v116 = v26[2];
  v117 = v27;
  v28 = v26[5];
  v118 = v26[4];
  v119 = v28;
  v29 = v26[1];
  v115[0] = *v26;
  v115[1] = v29;
  v30 = (v18 + v91[7]);
  v31 = v30[3];
  v120[2] = v30[2];
  v120[3] = v31;
  v32 = v30[5];
  v120[4] = v30[4];
  v120[5] = v32;
  v33 = v30[1];
  v120[0] = *v30;
  v120[1] = v33;
  v34 = v115[0];
  v35 = v29;
  v90 = *(&v119 + 1);
  v36 = *(&v33 + 1);
  if (!*(&v29 + 1))
  {
    if (!*(&v33 + 1))
    {
      v102 = v115[0];
      v103 = v29;
      v104 = v116;
      v105 = v117;
      v106 = v118;
      v107 = __PAIR128__(v90, v119);
      sub_10000E268(v115, &v94, &qword_1005D6668, &qword_1004EBFA8);
      sub_10000E268(v120, &v94, &qword_1005D6668, &qword_1004EBFA8);
      v51 = &v102;
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (!*(&v33 + 1))
  {
LABEL_22:
    v102 = v115[0];
    v103 = v29;
    v104 = v116;
    v105 = v117;
    v106 = v118;
    *&v107 = v119;
    *(&v107 + 1) = v90;
    v108 = *v30;
    v109 = *(v30 + 2);
    v110 = *(&v33 + 1);
    v52 = v30[2];
    v53 = v30[3];
    v54 = v30[5];
    v113 = v30[4];
    v114 = v54;
    v111 = v52;
    v112 = v53;
    sub_10000E268(v115, &v94, &qword_1005D6668, &qword_1004EBFA8);
    sub_10000E268(v120, &v94, &qword_1005D6668, &qword_1004EBFA8);
    v20 = &unk_1005D6778;
    v21 = &unk_1004EC280;
    v22 = &v102;
    goto LABEL_43;
  }

  v86 = *(&v117 + 1);
  v102 = *v30;
  v37 = *(v30 + 2);
  *&v103 = v37;
  *(&v103 + 1) = *(&v33 + 1);
  v38 = v30[3];
  v104 = v30[2];
  v105 = v38;
  v39 = v30[5];
  v106 = v30[4];
  v107 = v39;
  v41 = *(&v104 + 1);
  v40 = v104;
  v43 = *(&v105 + 1);
  v42 = v105;
  v85 = v119;
  v87 = v118;
  v89 = v117;
  v88 = v116;
  if (!*(&v115[0] + 1))
  {
    v81 = *(&v39 + 1);
    v82 = v39;
    v83 = *(&v106 + 1);
    v84 = v106;
    if (!*(&v102 + 1))
    {
      goto LABEL_16;
    }

LABEL_24:
    sub_10000E268(v115, &v94, &qword_1005D6668, &qword_1004EBFA8);
    sub_10000E268(v120, &v94, &qword_1005D6668, &qword_1004EBFA8);
    sub_100025F40(&v102, &qword_1005D6668, &qword_1004EBFA8);
    v94 = v34;
    v95 = v35;
    v96 = v88;
    v97 = v89;
    v98 = v86;
LABEL_42:
    v99 = v87;
    v100 = v85;
    v101 = v90;
    v22 = &v94;
    v20 = &qword_1005D6668;
    v21 = &qword_1004EBFA8;
    goto LABEL_43;
  }

  if (!*(&v102 + 1))
  {
    goto LABEL_24;
  }

  v81 = *(&v39 + 1);
  v82 = v39;
  v83 = *(&v106 + 1);
  v84 = v106;
  if (v115[0] != v102)
  {
    v79 = v105;
    v80 = v104;
    v78 = *(&v105 + 1);
    v44 = sub_1004A6D34();
    v43 = v78;
    v42 = v79;
    v40 = v80;
    if ((v44 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_16:
  if (v35 != __PAIR128__(v36, v37))
  {
    v80 = v40;
    v45 = v41;
    v46 = v42;
    v47 = v43;
    v48 = sub_1004A6D34();
    v43 = v47;
    v42 = v46;
    v41 = v45;
    v40 = v80;
    if ((v48 & 1) == 0)
    {
      sub_10000E268(v115, &v94, &qword_1005D6668, &qword_1004EBFA8);
      sub_10000E268(v120, &v94, &qword_1005D6668, &qword_1004EBFA8);
      v49 = v86;
      goto LABEL_41;
    }
  }

  v49 = v86;
  if ((sub_10027F698(v88, *(&v88 + 1), v89, v86, v40, v41, v42, v43) & 1) == 0)
  {
    sub_10000E268(v115, &v94, &qword_1005D6668, &qword_1004EBFA8);
    sub_10000E268(v120, &v94, &qword_1005D6668, &qword_1004EBFA8);
LABEL_41:
    sub_100025F40(&v102, &qword_1005D6668, &qword_1004EBFA8);
    v94 = v34;
    v95 = v35;
    v96 = v88;
    v97 = v89;
    v98 = v49;
    goto LABEL_42;
  }

  v50 = v85;
  LODWORD(v84) = sub_10027F698(v87, *(&v87 + 1), v85, v90, v84, v83, v82, v81);
  sub_10000E268(v115, &v94, &qword_1005D6668, &qword_1004EBFA8);
  sub_10000E268(v120, &v94, &qword_1005D6668, &qword_1004EBFA8);
  sub_100025F40(&v102, &qword_1005D6668, &qword_1004EBFA8);
  if ((v84 & 1) == 0)
  {
    v94 = v34;
    v95 = v35;
    v96 = v88;
    v97 = v89;
    v98 = v86;
    v99 = v87;
    v100 = v50;
    v101 = v90;
    v20 = &qword_1005D6668;
    v21 = &qword_1004EBFA8;
    v22 = &v94;
    goto LABEL_43;
  }

  v94 = v34;
  v95 = v35;
  v96 = v88;
  v97 = v89;
  v98 = v86;
  v99 = v87;
  v100 = v50;
  v101 = v90;
  v51 = &v94;
LABEL_26:
  sub_100025F40(v51, &qword_1005D6668, &qword_1004EBFA8);
  v55 = v25[8];
  v56 = v92;
  v57 = (v92 + v55);
  v58 = *(v92 + v55 + 8);
  v59 = (v18 + v55);
  v60 = v59[1];
  if (v58)
  {
    if (!v60 || (*v57 != *v59 || v58 != v60) && (sub_1004A6D34() & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (v60)
  {
    goto LABEL_44;
  }

  v61 = v25[9];
  v62 = (v56 + v61);
  v63 = *(v56 + v61 + 8);
  v64 = (v18 + v61);
  v65 = v64[1];
  if (v63)
  {
    if (!v65 || (*v62 != *v64 || v63 != v65) && (sub_1004A6D34() & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (v65)
  {
    goto LABEL_44;
  }

  if (sub_10026B608(*(v56 + v25[10]), *(v18 + v25[10])))
  {
    v68 = v25[11];
    v69 = v56 + v68;
    v70 = *(v56 + v68 + 1);
    v71 = v18 + v68;
    v72 = *(v18 + v68 + 1);
    if (v70)
    {
      if (!v72)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (*v69 != *v71)
      {
        LOBYTE(v72) = 1;
      }

      if (v72)
      {
        goto LABEL_44;
      }
    }

    if (*(v56 + v25[12]) != *(v18 + v25[12]) || *(v56 + v25[13]) != *(v18 + v25[13]) || *(v56 + v25[14]) != *(v18 + v25[14]))
    {
      goto LABEL_44;
    }

    v73 = v25[15];
    v74 = (v56 + v73);
    v75 = *(v56 + v73 + 16);
    v76 = (v18 + v73);
    v77 = *(v18 + v73 + 16);
    if (v75 == 255)
    {
      if (v77 == 255)
      {
LABEL_69:
        v66 = sub_10026BA9C(*(v92 + v91[16]), *(v93 + v91[16]));
        return v66 & 1;
      }
    }

    else if (v77 != 255)
    {
      if (v75)
      {
        if ((v77 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else if (v77)
      {
        goto LABEL_44;
      }

      if (*v74 == *v76 && v74[1] == v76[1] || (sub_1004A6D34() & 1) != 0)
      {
        goto LABEL_69;
      }
    }
  }

LABEL_44:
  v66 = 0;
  return v66 & 1;
}

uint64_t sub_100283378(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D6670, &qword_1004EBFB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002833E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexableMessageInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028344C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexableMessageInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002834B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100283524(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1002835F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002836A4(uint64_t a1)
{
  sub_1002838E8(319, &qword_1005D66E0, &type metadata for EmailAddress, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_100283890(319);
    if (v2 <= 0x3F)
    {
      sub_1002838E8(319, &qword_1005D66E8, &type metadata for EmailAddress, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1002838E8(319, &qword_1005D3AA0, &type metadata for String, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1002838E8(319, &qword_1005D66F0, &type metadata for Header.Priority, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1002838E8(319, &qword_1005D66F8, &type metadata for IndexableMessageInfo.Content, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_1002838E8(319, &unk_1005D6700, &type metadata for IndexableMessageInfo.Attachment, &type metadata accessor for Array);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100283890(uint64_t a1)
{
  if (!qword_1005D28A8)
  {
    sub_1004A44E4();
    v1 = sub_1004A6374();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D28A8);
    }
  }
}

void sub_1002838E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100283954(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1002839B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_100283A40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100283AC0()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 201, 7);
}

unint64_t sub_100283BD4()
{
  result = qword_1005D6780;
  if (!qword_1005D6780)
  {
    v3 = sub_1004A44E4();
    result = swift_getWitnessTable(&protocol conformance descriptor for Date, v3, v0, v1);
    atomic_store(result, &qword_1005D6780);
  }

  return result;
}

uint64_t sub_100283C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexableMessageInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100283D10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IndexableMessageInfo(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100283DC8(uint64_t a1)
{
  type metadata accessor for IndexableMessageInfo(319);
  if (v1 <= 0x3F)
  {
    sub_100283E4C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100283E4C(uint64_t a1)
{
  if (!qword_1005D67F0)
  {
    sub_100283EA8();
    v1 = sub_1004A5DC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D67F0);
    }
  }
}

unint64_t sub_100283EA8()
{
  result = qword_1005D67F8;
  if (!qword_1005D67F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListID, &type metadata for ListID, v0, v1);
    atomic_store(result, &qword_1005D67F8);
  }

  return result;
}

uint64_t InternetMessageDate.parse()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v6 - 8);
  v8 = &v13[-v7];
  sub_1002853A0(a1, a2, &v13[-v7]);
  v9 = sub_1004A44E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) == 1)
  {
    sub_10028408C(a3);
    result = v11(v8, 1, v9);
    if (result != 1)
    {
      return sub_100025F40(v8, &qword_1005D0F20, &qword_1004E9390);
    }
  }

  else
  {
    (*(v10 + 32))(a3, v8, v9);
    return (*(v10 + 56))(a3, 0, 1, v9);
  }

  return result;
}

uint64_t sub_10028408C@<X0>(char *a3@<X8>)
{
  v39 = a3;
  v3 = sub_1004A44E4();
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  __chkstk_darwin(v3);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v35 = &v34 - v7;
  __chkstk_darwin(v8);
  v38 = &v34 - v9;
  __chkstk_darwin(v10);
  v37 = &v34 - v11;
  v12 = 22;
  v13 = &off_1005AA920;
  do
  {

    v14 = sub_100285840();
    v15 = sub_1004A5734();

    [v14 setDateFormat:v15];

    [v14 setLenient:0];
    v16 = sub_1004A5734();
    v17 = [v14 dateFromString:v16];

    if (v17)
    {
      v28 = v38;
      sub_1004A44C4();

      v29 = *(v41 + 32);
      v30 = v37;
LABEL_12:
      v31 = v28;
      v32 = v40;
      v29(v30, v31, v40);
      v33 = v39;
      v29(v39, v30, v32);
      return (*(v41 + 56))(v33, 0, 1, v32);
    }

    v13 += 2;
    --v12;
  }

  while (v12);
  v18 = &off_1005AA920;
  v19 = 22;
  do
  {

    v20 = sub_100285840();
    v21 = sub_1004A5734();

    [v20 setDateFormat:v21];

    [v20 setLenient:1];
    v22 = sub_1004A5734();
    v23 = [v20 dateFromString:v22];

    if (v23)
    {
      v28 = v36;
      sub_1004A44C4();

      v29 = *(v41 + 32);
      v30 = v35;
      goto LABEL_12;
    }

    v18 += 2;
    --v19;
  }

  while (v19);
  v24 = v40;
  v25 = *(v41 + 56);
  v26 = v39;

  return v25(v26, 1, 1, v24);
}

uint64_t InternetMessageDate.init(from:calendar:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002844B4(a2);
  v5 = sub_1004A45B4();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = sub_1004A44E4();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v4;
}

uint64_t sub_1002844B4(uint64_t a1)
{
  v2 = sub_1004A5C64();
  *(v2 + 16) = 80;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  sub_1002845D4(a1, &v6);
  sub_100284C10(&v5, (v2 + 32), &v6, 0x50uLL);
  if (v5 && *(v2 + 16) >= v5)
  {
    v3 = sub_1004A59C4();

    return v3;
  }

  else
  {
    result = sub_1004A69A4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002845D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v3 = sub_10000C9C0(&qword_1005D6830, &qword_1004EC2C0);
  __chkstk_darwin(v3 - 8);
  v55 = &v48 - v4;
  v5 = sub_1004A4694();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004A41B4();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C9C0(&qword_1005D6838, &qword_1004EC2C8);
  v10 = sub_1004A45A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004EC2A0;
  v15 = *(v11 + 104);
  v15(v14 + v13, enum case for Calendar.Component.second(_:), v10);
  v15(v14 + v13 + v12, enum case for Calendar.Component.minute(_:), v10);
  v15(v14 + v13 + 2 * v12, enum case for Calendar.Component.hour(_:), v10);
  v15(v14 + v13 + 3 * v12, enum case for Calendar.Component.day(_:), v10);
  v15(v14 + v13 + 4 * v12, enum case for Calendar.Component.month(_:), v10);
  v15(v14 + v13 + 5 * v12, enum case for Calendar.Component.year(_:), v10);
  v15(v14 + v13 + 6 * v12, enum case for Calendar.Component.weekday(_:), v10);
  v15(v14 + v13 + 7 * v12, enum case for Calendar.Component.timeZone(_:), v10);
  sub_100285C08(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1004A4574();

  result = sub_1004A4174();
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = result;
  }

  if (v18 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v18 > 0x7FFFFFFF)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  result = sub_1004A4164();
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = result;
  }

  if (v20 < 0xFFFFFFFF80000000)
  {
    goto LABEL_44;
  }

  if (v20 > 0x7FFFFFFF)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  result = sub_1004A4134();
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = result;
  }

  if (v22 < 0xFFFFFFFF80000000)
  {
    goto LABEL_46;
  }

  if (v22 > 0x7FFFFFFF)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  result = sub_1004A4124();
  if (v23)
  {
    v24 = 1;
  }

  else
  {
    v24 = result;
  }

  if (v24 < 0xFFFFFFFF80000000)
  {
    goto LABEL_48;
  }

  if (v24 > 0x7FFFFFFF)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  result = sub_1004A4154();
  if (v25)
  {
    v26 = 1;
  }

  else
  {
    v26 = result;
  }

  if (v26 < 0xFFFFFFFF80000000)
  {
    goto LABEL_50;
  }

  if (v26 > 0x7FFFFFFF)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v27 = v26 - 1;
  if (__OFSUB__(v26, 1))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  result = sub_1004A4144();
  v29 = 100;
  if ((v28 & 1) == 0)
  {
    v29 = result;
  }

  if (v29 < 0xFFFFFFFF80000000)
  {
    goto LABEL_53;
  }

  if (v29 > 0x7FFFFFFF)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v30 = v29 - 1900;
  if (__OFSUB__(v29, 1900))
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  result = sub_1004A4184();
  if (v31)
  {
    v32 = 1;
  }

  else
  {
    v32 = result;
  }

  if (v32 < 0xFFFFFFFF80000000)
  {
    goto LABEL_56;
  }

  if (v32 > 0x7FFFFFFF)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
LABEL_58:
    __break(1u);
    return result;
  }

  v50 = v34;
  LODWORD(v56) = v30;
  v35 = v55;
  sub_1004A41A4();
  v36 = v35;
  v37 = v53;
  v38 = v35;
  v39 = v54;
  if ((*(v53 + 48))(v38, 1, v54) == 1)
  {
    (*(v51 + 8))(v9, v52);
    result = sub_100025F40(v36, &qword_1005D6830, &qword_1004EC2C0);
    v40 = 0;
  }

  else
  {
    v41 = *(v37 + 32);
    v48 = v24;
    v42 = v22;
    v43 = v20;
    v44 = v27;
    v45 = v18;
    v18 = v49;
    v41(v49, v36, v39);
    v40 = sub_1004A4664();
    v46 = v18;
    LODWORD(v18) = v45;
    v27 = v44;
    LODWORD(v20) = v43;
    LODWORD(v22) = v42;
    LODWORD(v24) = v48;
    (*(v37 + 8))(v46, v39);
    result = (*(v51 + 8))(v9, v52);
  }

  *a2 = v18;
  *(a2 + 4) = v20;
  *(a2 + 8) = v22;
  *(a2 + 12) = v24;
  v47 = v56;
  *(a2 + 16) = v27;
  *(a2 + 20) = v47;
  *(a2 + 24) = v50;
  *(a2 + 28) = 0xFFFFFFFF00000000;
  *(a2 + 36) = 0;
  *(a2 + 40) = v40;
  *(a2 + 48) = 0;
  return result;
}

char *sub_100284C10@<X0>(uint64_t *__return_ptr a1@<X8>, char *result@<X0>, tm *a3@<X2>, size_t a4@<X1>)
{
  if (!result)
  {
    goto LABEL_16;
  }

  v6 = result;
  if (qword_1005D6250 != -1)
  {
    swift_once();
  }

  result = strftime_l(v6, a4, "%a, %d %b %Y %H:%M:%S %z", a3, qword_1005D6828);
  if (!result)
  {
    goto LABEL_11;
  }

  v8 = result;
  v9 = __OFSUB__(a4, result);
  v10 = a4 - result;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = a3->tm_gmtoff / 60 % 60 + 100 * (a3->tm_gmtoff / 3600);
    sub_10000C9C0(&qword_1005D4038, &qword_1004DFEA8);
    result = swift_allocObject();
    *(result + 1) = xmmword_1004CEAA0;
    *(result + 7) = &type metadata for Int32;
    *(result + 8) = &protocol witness table for Int32;
    if (v11 >= 0xFFFFFFFF80000000)
    {
      if (v11 <= 0x7FFFFFFF)
      {
        *(result + 8) = v11;
        v12 = sub_1004A4B94(&v8[v6], v10, "%+05d", v14);

        v13 = &v8[v12];
        if (!__OFADD__(v8, v12))
        {
          goto LABEL_12;
        }

        __break(1u);
LABEL_11:
        v13 = 0;
LABEL_12:
        *a1 = v13;
        return result;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

locale_t sub_100284DB8()
{
  result = newlocale(63, 0, 0);
  if (result)
  {
    qword_1005D6828 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100284DEC@<X0>(const char *a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v35 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v35);
  v4 = &v34 - v3;
  v5 = sub_1004A44E4();
  __chkstk_darwin(v5);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v45 = (v12 + 56);
  v40 = (v12 + 8);
  v41 = (v12 + 32);
  v43 = (v12 + 48);
  v13 = 13;
  v14 = &off_1005AA830;
  v42 = a1;
  v44 = &v34 - v15;
  while (1)
  {
    v16 = *(v14 - 1);
    v17 = *v14;
    __chkstk_darwin(v11);
    *(&v34 - 4) = a1;
    *(&v34 - 3) = v16;
    *(&v34 - 2) = v17;
    if ((v17 & 0x1000000000000000) != 0)
    {
      goto LABEL_27;
    }

    if ((v17 & 0x2000000000000000) != 0)
    {
      *v50 = v16;
      v51 = v17 & 0xFFFFFFFFFFFFFFLL;
      memset(&v52, 0, sizeof(v52));

      v21 = strptime_l(a1, v50, &v52, 0);
      if (!v21)
      {
LABEL_17:
        v20 = 1;
LABEL_23:
        (*v45)(v4, v20, 1, v5);

        a1 = v42;
        goto LABEL_24;
      }

      v22 = v21;
      v39 = &v34;
      v23 = v9;
      mktime(&v52);
      v24 = v38;
      sub_1004A4494();
      if (*v22)
      {
        v48 = v16;
        v49 = v17;
        v46 = 31269;
        v47 = 0xE200000000000000;
        sub_1001C2190();
        if ((sub_1004A6464() & 1) == 0 || (sub_100285668(v22) & 1) == 0)
        {
          (*v40)(v38, v5);
          v20 = 1;
LABEL_22:
          v9 = v23;
          goto LABEL_23;
        }

        (*v41)(v4, v38, v5);
      }

      else
      {
        (*v41)(v4, v24, v5);
      }

      v20 = 0;
      goto LABEL_22;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      memset(&v52, 0, sizeof(v52));

      v18 = strptime_l(a1, ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32), &v52, 0);
      if (v18)
      {
        v19 = v18;
        mktime(&v52);
        sub_1004A4494();
        if (!*v19 || (*v50 = v16, v51 = v17, v48 = 31269, v49 = 0xE200000000000000, sub_1001C2190(), (sub_1004A6464() & 1) != 0) && (sub_100285668(v19) & 1) != 0)
        {
          (*v41)(v4, v9, v5);
          v20 = 0;
        }

        else
        {
          (*v40)(v9, v5);
          v20 = 1;
        }

        goto LABEL_23;
      }

      goto LABEL_17;
    }

LABEL_27:

    v29 = v37;
    sub_1004A66E4();
    v37 = v29;

LABEL_24:
    v25 = (*v43)(v4, 1, v5);
    v26 = v44;
    if (v25 != 1)
    {
      break;
    }

    v11 = sub_100025F40(v4, &qword_1005D0F20, &qword_1004E9390);
LABEL_3:
    v14 += 2;
    if (!--v13)
    {
      v30 = 1;
      v31 = v36;
      return (*v45)(v31, v30, 1, v5);
    }
  }

  v27 = *v41;
  (*v41)(v44, v4, v5);
  sub_1004A4464();
  if (v28 <= -900000000.0)
  {
    v11 = (*v40)(v26, v5);
    goto LABEL_3;
  }

  v32 = v36;
  v27(v36, v26, v5);
  v31 = v32;
  v30 = 0;
  return (*v45)(v31, v30, 1, v5);
}

void *sub_1002853A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5[0] = a1;
    v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v3 = v5;
    return sub_100284DEC(v3, a3);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
    return sub_1004A66E4();
  }

  v3 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return sub_100284DEC(v3, a3);
}

uint64_t sub_100285454@<X0>(const char *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1004A44E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v19, 0, sizeof(v19));
  v14 = strptime_l(a2, a1, &v19, 0);
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = v14;
  mktime(&v19);
  sub_1004A4494();
  if (*v15)
  {
    v18[2] = a3;
    v18[3] = a4;
    v18[0] = 31269;
    v18[1] = 0xE200000000000000;
    sub_1001C2190();
    if ((sub_1004A6464() & 1) == 0 || (sub_100285668(v15) & 1) == 0)
    {
      (*(v11 + 8))(v13, v10);
LABEL_7:
      v16 = 1;
      return (*(v11 + 56))(a5, v16, 1, v10);
    }
  }

  (*(v11 + 32))(a5, v13, v10);
  v16 = 0;
  return (*(v11 + 56))(a5, v16, 1, v10);
}

id sub_100285668(uint64_t a1)
{
  v1 = sub_1004A4064();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A59B4();
  v5 = objc_allocWithZone(NSScanner);
  v6 = sub_1004A5734();

  v7 = [v5 initWithString:v6];

  v16._countAndFlagsBits = 40;
  v16._object = 0xE100000000000000;
  sub_1004A6344(v16);

  v17._countAndFlagsBits = 40;
  v17._object = 0xE100000000000000;
  sub_1004A6324(v17);
  if (v8 && (, sub_1004A4034(), sub_1004A6334(), v10 = v9, v11 = *(v2 + 8), v11(v4, v1), v10) && (, v18._countAndFlagsBits = 41, v18._object = 0xE100000000000000, sub_1004A6324(v18), v12))
  {

    sub_1004A4044();
    sub_1004A6334();

    v11(v4, v1);
    v13 = [v7 isAtEnd];

    return v13;
  }

  else
  {

    return 0;
  }
}

id sub_100285840()
{
  v0 = sub_10000C9C0(&qword_1005D6830, &qword_1004EC2C0);
  __chkstk_darwin(v0 - 8);
  v2 = v22 - v1;
  v3 = sub_1004A4544();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10019A8E4(0, &qword_1005D6858, NSString_ptr);
  v7 = sub_1004A6314();
  v8 = objc_opt_self();
  v9 = [v8 currentThread];
  v10 = [v9 threadDictionary];

  v11 = v7;
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v12)
  {
    sub_1004A64E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (*(&v24 + 1))
  {
    sub_10019A8E4(0, &qword_1005D6860, NSDateFormatter_ptr);
    if (swift_dynamicCast())
    {

      return v22[1];
    }
  }

  else
  {
    sub_100025F40(v25, &qword_1005D4768, &unk_1004F5B20);
  }

  v13 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1004A4524();
  isa = sub_1004A4534().super.isa;
  (*(v4 + 8))(v6, v3);
  [v13 setLocale:isa];

  sub_1004A4674();
  v15 = sub_1004A4694();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v2, 1, v15) != 1)
  {
    v17 = sub_1004A4684().super.isa;
    (*(v16 + 8))(v2, v15);
  }

  [v13 setTimeZone:v17];

  v18 = [v8 currentThread];
  v19 = [v18 threadDictionary];

  v20 = v11;
  [v19 setObject:v13 forKeyedSubscript:v20];

  return v13;
}

void *sub_100285C08(uint64_t a1)
{
  v2 = sub_1004A45A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000C9C0(&qword_1005D6840, &unk_1004EC2D0);
    v9 = sub_1004A66B4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100285F00(&qword_1005D6848, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_1004A5554();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_100285F00(&qword_1005D6850, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_1004A5724();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_100285F00(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_1004A45A4();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Message.streamWithConvertedLineEndings(input:output:ensureTrailingNewline:_:)(unsigned int a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1004A5384();
  v49 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Message.Data(0);
  __chkstk_darwin(v14);
  v16 = (&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = a1;
  v46 = a2;
  v56[16] = a1;
  v56[17] = a2;
  v17 = a3;
  v56[18] = a3;
  v47 = a4;
  v48 = a5;
  v57 = a4;
  v58 = a5;
  result = Message.isEmpty.getter();
  if ((result & 1) == 0)
  {
    sub_100286984(v5, v16, v19);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v49;
      v21 = (*(v49 + 32))(v13, v16, v11);
      __chkstk_darwin(v21);
      *(&v44 - 4) = v13;
      *(&v44 - 3) = sub_100286360;
      v43 = v56;
      sub_1004A5314();
      return (*(v20 + 8))(v13, v11);
    }

    v23 = *v16;
    v22 = v16[1];
    v24 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      if (v24 != 2)
      {
        return sub_100014D40(v23, v22);
      }

      v32 = *(v23 + 16);
      v33 = *(v23 + 24);
      v34 = sub_1004A40D4();
      if (v34)
      {
        v35 = sub_1004A4104();
        if (__OFSUB__(v32, v35))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
        }

        v34 += v32 - v35;
      }

      v36 = __OFSUB__(v33, v32);
      v37 = v33 - v32;
      if (v36)
      {
        goto LABEL_38;
      }

      v38 = sub_1004A40F4();
      if (v38 >= v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = v38;
      }

      if (v34)
      {
        v25 = v39;
      }

      else
      {
        v25 = 0;
      }

      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      __break(1u);
    }

    else if (!v24)
    {
      v50 = *v16;
      v51 = v22;
      v52 = BYTE2(v22);
      v53 = BYTE3(v22);
      v25 = BYTE6(v22);
      v54 = BYTE4(v22);
      v55 = BYTE5(v22);
      v43 = &v50 + BYTE6(v22);
      v26 = a3 & 1;
      v27 = &v50;
      v28 = v45;
      v29 = v46;
      v30 = v47;
      v31 = v48;
LABEL_34:
      sub_1002863C4(v28, v29, v26, v30, v31, 0, v25, v27, v43);
      return sub_100014D40(v23, v22);
    }

    if (v23 >> 32 >= v23)
    {
      v34 = sub_1004A40D4();
      if (v34)
      {
        v40 = sub_1004A4104();
        if (__OFSUB__(v23, v40))
        {
          goto LABEL_41;
        }

        v34 += v23 - v40;
      }

      v41 = sub_1004A40F4();
      if (v41 >= (v23 >> 32) - v23)
      {
        v39 = (v23 >> 32) - v23;
      }

      else
      {
        v39 = v41;
      }

      if (v34)
      {
        v25 = v39;
      }

      else
      {
        v25 = 0;
      }

      if ((v25 & 0x8000000000000000) == 0)
      {
LABEL_31:
        v42 = v39 + v34;
        if (!v34)
        {
          v42 = 0;
        }

        v43 = v42;
        v26 = v17 & 1;
        v28 = v45;
        v29 = v46;
        v30 = v47;
        v31 = v48;
        v27 = v34;
        goto LABEL_34;
      }

      goto LABEL_39;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  return result;
}

char *sub_100286360(char *result, uint64_t a2)
{
  if (result)
  {
    v3 = (a2 - result);
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    return sub_1002863C4(*(v2 + 16), *(v2 + 17), *(v2 + 18), *(v2 + 24), *(v2 + 32), 0, v3, result, a2);
  }

  __break(1u);
  return result;
}

char *sub_1002863C4(char *result, char a2, char a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, char *a6, char *a7, uint64_t a8, uint64_t a9)
{
  if (a6 == a7)
  {
    return result;
  }

  v11 = a6;
  v15 = result;
  if (!a2)
  {
    return sub_100286B80(v15, a3 & 1, v11, a7, a8, a9, a4, a5, "\r\n", "");
  }

  if (a2 != 1)
  {
    v45 = 10;
    while (1)
    {
      if (v15 > 1u)
      {
        if (v15 == 2)
        {
          if (!a8)
          {
            goto LABEL_115;
          }

          v36 = &v11[a8];
          result = memchr(&v11[a8], 10, a7 - v11);
          if (!result)
          {
            goto LABEL_115;
          }

          v37 = (result - v36);
          if (result - v36 < 0)
          {
            goto LABEL_115;
          }

          v38 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_130;
          }

          if (a7 - v11 < v38)
          {
            goto LABEL_115;
          }

          v34 = &v11[v37];
          if (__OFADD__(v37, v11))
          {
            goto LABEL_138;
          }

          v35 = &v11[v38];
          if (__OFADD__(v38, v11))
          {
            goto LABEL_148;
          }

          if (v38 < v37 || v35 < v34)
          {
            goto LABEL_156;
          }
        }

        else
        {
          if (!a8)
          {
            goto LABEL_115;
          }

          v42 = &v11[a8];
          result = memchr(&v11[a8], 10, a7 - v11);
          if (!result)
          {
            goto LABEL_115;
          }

          v43 = (result - v42);
          if (result - v42 < 0)
          {
            goto LABEL_115;
          }

          v44 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_134;
          }

          if (a7 - v11 < v44)
          {
            goto LABEL_115;
          }

          v34 = &v11[v43];
          if (__OFADD__(v43, v11))
          {
            goto LABEL_136;
          }

          v35 = &v11[v44];
          if (__OFADD__(v44, v11))
          {
            goto LABEL_146;
          }

          if (v44 < v43 || v35 < v34)
          {
            goto LABEL_154;
          }

          if (v11 < v34)
          {
            if (v34 > a7)
            {
              goto LABEL_160;
            }

            if (*(a8 + v34 - 1) == 13)
            {
              --v34;
            }
          }
        }
      }

      else if (v15)
      {
        if (!a8)
        {
          goto LABEL_115;
        }

        v39 = &v11[a8];
        result = memchr(&v11[a8], 13, a7 - v11);
        if (!result)
        {
          goto LABEL_115;
        }

        v40 = (result - v39);
        if (result - v39 < 0)
        {
          goto LABEL_115;
        }

        v41 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_132;
        }

        if (a7 - v11 < v41)
        {
          goto LABEL_115;
        }

        v34 = &v11[v40];
        if (__OFADD__(v40, v11))
        {
          goto LABEL_140;
        }

        v35 = &v11[v41];
        if (__OFADD__(v41, v11))
        {
          goto LABEL_144;
        }

        if (v41 < v40 || v35 < v34)
        {
          goto LABEL_152;
        }
      }

      else
      {
        if (!a8)
        {
          goto LABEL_115;
        }

        v31 = &v11[a8];
        result = memmem(&v11[a8], a7 - v11, "\r\n", 2uLL);
        if (!result)
        {
          goto LABEL_115;
        }

        v32 = (result - v31);
        if (result - v31 < 0)
        {
          goto LABEL_115;
        }

        v33 = v32 + 2;
        if (__OFADD__(v32, 2))
        {
          goto LABEL_128;
        }

        if (a7 - v11 < v33)
        {
          goto LABEL_115;
        }

        v34 = &v11[v32];
        if (__OFADD__(v32, v11))
        {
          goto LABEL_142;
        }

        v35 = &v11[v33];
        if (__OFADD__(v33, v11))
        {
          goto LABEL_150;
        }

        if (v33 < v32 || v35 < v34)
        {
          goto LABEL_158;
        }
      }

      if (v34 < v11)
      {
        goto LABEL_122;
      }

      if (v34 > a7)
      {
        goto LABEL_124;
      }

      if (v34 != v11)
      {
        a4(&v11[a8], a8 + v34);
      }

      result = a4(&v45, &v46);
      if (v35 > a7)
      {
        goto LABEL_126;
      }

      v30 = v35 < v11;
      v11 = v35;
      if (v30)
      {
        __break(1u);
LABEL_115:
        if (a7 != v11)
        {
          if (a8)
          {
            result = a4(&v11[a8], &a7[a8]);
          }

          if (a3)
          {
            return a4(&v45, &v46);
          }
        }

        return result;
      }
    }
  }

  v45 = 13;
  do
  {
    if (v15 > 1u)
    {
      if (v15 == 2)
      {
        if (!a8)
        {
          goto LABEL_115;
        }

        v21 = &v11[a8];
        result = memchr(&v11[a8], 10, a7 - v11);
        if (!result)
        {
          goto LABEL_115;
        }

        v22 = (result - v21);
        if (result - v21 < 0)
        {
          goto LABEL_115;
        }

        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_129;
        }

        if (a7 - v11 < v23)
        {
          goto LABEL_115;
        }

        v19 = &v11[v22];
        if (__OFADD__(v22, v11))
        {
          goto LABEL_137;
        }

        v20 = &v11[v23];
        if (__OFADD__(v23, v11))
        {
          goto LABEL_147;
        }

        if (v23 < v22 || v20 < v19)
        {
          goto LABEL_155;
        }
      }

      else
      {
        if (!a8)
        {
          goto LABEL_115;
        }

        v27 = &v11[a8];
        result = memchr(&v11[a8], 10, a7 - v11);
        if (!result)
        {
          goto LABEL_115;
        }

        v28 = (result - v27);
        if (result - v27 < 0)
        {
          goto LABEL_115;
        }

        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_133;
        }

        if (a7 - v11 < v29)
        {
          goto LABEL_115;
        }

        v19 = &v11[v28];
        if (__OFADD__(v28, v11))
        {
          goto LABEL_135;
        }

        v20 = &v11[v29];
        if (__OFADD__(v29, v11))
        {
          goto LABEL_145;
        }

        if (v29 < v28 || v20 < v19)
        {
          goto LABEL_153;
        }

        if (v11 < v19)
        {
          if (v19 > a7)
          {
            goto LABEL_159;
          }

          if (*(a8 + v19 - 1) == 13)
          {
            --v19;
          }
        }
      }
    }

    else if (v15)
    {
      if (!a8)
      {
        goto LABEL_115;
      }

      v24 = &v11[a8];
      result = memchr(&v11[a8], 13, a7 - v11);
      if (!result)
      {
        goto LABEL_115;
      }

      v25 = (result - v24);
      if (result - v24 < 0)
      {
        goto LABEL_115;
      }

      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_131;
      }

      if (a7 - v11 < v26)
      {
        goto LABEL_115;
      }

      v19 = &v11[v25];
      if (__OFADD__(v25, v11))
      {
        goto LABEL_139;
      }

      v20 = &v11[v26];
      if (__OFADD__(v26, v11))
      {
        goto LABEL_143;
      }

      if (v26 < v25 || v20 < v19)
      {
        goto LABEL_151;
      }
    }

    else
    {
      if (!a8)
      {
        goto LABEL_115;
      }

      v16 = &v11[a8];
      result = memmem(&v11[a8], a7 - v11, "\r\n", 2uLL);
      if (!result)
      {
        goto LABEL_115;
      }

      v17 = (result - v16);
      if (result - v16 < 0)
      {
        goto LABEL_115;
      }

      v18 = v17 + 2;
      if (__OFADD__(v17, 2))
      {
        goto LABEL_127;
      }

      if (a7 - v11 < v18)
      {
        goto LABEL_115;
      }

      v19 = &v11[v17];
      if (__OFADD__(v17, v11))
      {
        goto LABEL_141;
      }

      v20 = &v11[v18];
      if (__OFADD__(v18, v11))
      {
        goto LABEL_149;
      }

      if (v18 < v17 || v20 < v19)
      {
        goto LABEL_157;
      }
    }

    if (v19 < v11)
    {
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
    }

    if (v19 > a7)
    {
      goto LABEL_123;
    }

    if (v19 != v11)
    {
      a4(&v11[a8], a8 + v19);
    }

    result = a4(&v45, &v46);
    if (v20 > a7)
    {
      goto LABEL_125;
    }

    v30 = v20 < v11;
    v11 = v20;
  }

  while (!v30);
  __break(1u);
  return sub_100286B80(v15, a3 & 1, v11, a7, a8, a9, a4, a5, "\r\n", "");
}

uint64_t sub_100286984(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for Message.Data(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100286A4C(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  return v3(a1, a1 + v4);
}

unint64_t sub_100286AB4()
{
  result = qword_1005D6868;
  if (!qword_1005D6868)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InputLineEnding, &type metadata for InputLineEnding, v0, v1);
    atomic_store(result, &qword_1005D6868);
  }

  return result;
}

unint64_t sub_100286B0C()
{
  result = qword_1005D6870;
  if (!qword_1005D6870)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LineEnding, &type metadata for LineEnding, v0, v1);
    atomic_store(result, &qword_1005D6870);
  }

  return result;
}

char *sub_100286B80(char *result, char a2, char *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a3 != a4)
  {
    v13 = a3;
    v14 = result;
    do
    {
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          if (!a5)
          {
            goto LABEL_57;
          }

          v20 = &v13[a5];
          result = memchr(&v13[a5], 10, a4 - v13);
          if (!result)
          {
            goto LABEL_57;
          }

          v21 = (result - v20);
          if (result - v20 < 0)
          {
            goto LABEL_57;
          }

          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_67;
          }

          if (a4 - v13 < v22)
          {
            goto LABEL_57;
          }

          v18 = &v13[v21];
          if (__OFADD__(v21, v13))
          {
            goto LABEL_71;
          }

          v19 = &v13[v22];
          if (__OFADD__(v22, v13))
          {
            goto LABEL_76;
          }

          if (v22 < v21 || v19 < v18)
          {
            goto LABEL_80;
          }
        }

        else
        {
          if (!a5)
          {
            goto LABEL_57;
          }

          v26 = &v13[a5];
          result = memchr(&v13[a5], 10, a4 - v13);
          if (!result)
          {
            goto LABEL_57;
          }

          v27 = (result - v26);
          if (result - v26 < 0)
          {
            goto LABEL_57;
          }

          v28 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_69;
          }

          if (a4 - v13 < v28)
          {
            goto LABEL_57;
          }

          v18 = &v13[v27];
          if (__OFADD__(v27, v13))
          {
            goto LABEL_70;
          }

          v19 = &v13[v28];
          if (__OFADD__(v28, v13))
          {
            goto LABEL_75;
          }

          if (v28 < v27 || v19 < v18)
          {
            goto LABEL_79;
          }

          if (v13 < v18)
          {
            if (v18 > a4)
            {
              goto LABEL_82;
            }

            if (*(a5 + v18 - 1) == 13)
            {
              --v18;
            }
          }
        }
      }

      else if (v14)
      {
        if (!a5)
        {
          goto LABEL_57;
        }

        v23 = &v13[a5];
        result = memchr(&v13[a5], 13, a4 - v13);
        if (!result)
        {
          goto LABEL_57;
        }

        v24 = (result - v23);
        if (result - v23 < 0)
        {
          goto LABEL_57;
        }

        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_68;
        }

        if (a4 - v13 < v25)
        {
          goto LABEL_57;
        }

        v18 = &v13[v24];
        if (__OFADD__(v24, v13))
        {
          goto LABEL_72;
        }

        v19 = &v13[v25];
        if (__OFADD__(v25, v13))
        {
          goto LABEL_74;
        }

        if (v25 < v24 || v19 < v18)
        {
          goto LABEL_78;
        }
      }

      else
      {
        if (!a5)
        {
          goto LABEL_57;
        }

        v15 = &v13[a5];
        result = memmem(&v13[a5], a4 - v13, "\r\n", 2uLL);
        if (!result)
        {
          goto LABEL_57;
        }

        v16 = (result - v15);
        if (result - v15 < 0)
        {
          goto LABEL_57;
        }

        v17 = v16 + 2;
        if (__OFADD__(v16, 2))
        {
          goto LABEL_66;
        }

        if (a4 - v13 < v17)
        {
          goto LABEL_57;
        }

        v18 = &v13[v16];
        if (__OFADD__(v16, v13))
        {
          goto LABEL_73;
        }

        v19 = &v13[v17];
        if (__OFADD__(v17, v13))
        {
          goto LABEL_77;
        }

        if (v17 < v16 || v19 < v18)
        {
          goto LABEL_81;
        }
      }

      if (v18 < v13)
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        return result;
      }

      if (v18 > a4)
      {
        goto LABEL_64;
      }

      if (v18 != v13)
      {
        a7(&v13[a5], a5 + v18);
      }

      result = a7(a9, a10);
      if (v19 > a4)
      {
        goto LABEL_65;
      }

      v29 = v19 < v13;
      v13 = v19;
    }

    while (!v29);
    __break(1u);
LABEL_57:
    if (a4 != v13)
    {
      if (a5)
      {
        result = a7(&v13[a5], &a4[a5]);
      }

      if (a2)
      {
        return a7(a9, a10);
      }
    }
  }

  return result;
}

uint64_t static ListID.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1004A6D34();
  }
}

uint64_t sub_100286ECC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = a2 - result;
  }

  else
  {
    v2 = 0;
  }

  if (v2 < 0)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = 0;
  v5 = v2 - 1;
  while (1)
  {
LABEL_6:
    if (v4 == v2)
    {
LABEL_15:
      v9 = 1;
      v7 = v2;
      if (v2 < v4)
      {
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
        goto LABEL_63;
      }
    }

    else
    {
      v6 = v2 <= v4 ? v4 : v2;
      v7 = v4;
      while (1)
      {
        if (v6 == v7)
        {
          __break(1u);
          goto LABEL_55;
        }

        v8 = *(result + v7);
        if (v8 == 60 || v8 == 34)
        {
          break;
        }

        if (v2 == ++v7)
        {
          goto LABEL_15;
        }
      }

      v9 = 0;
      if (v7 < v4)
      {
        goto LABEL_55;
      }
    }

    if (v2 < v7)
    {
      goto LABEL_56;
    }

    if (v9)
    {
      return 0;
    }

    if (v7 >= v2)
    {
      goto LABEL_57;
    }

    v10 = *(result + v7);
    if (v10 != 34)
    {
      break;
    }

    v4 = v2;
    v11 = v7;
    if (v7 + 1 != v2)
    {
      while (1)
      {
        if (v5 == v11)
        {
          __break(1u);
          goto LABEL_51;
        }

        if (*(result + 1 + v11) == 34)
        {
          break;
        }

        if (v5 == ++v11)
        {
          v4 = v2;
          goto LABEL_6;
        }
      }

      if (v11 < v7)
      {
        goto LABEL_60;
      }

      v4 = v11 + 2;
    }
  }

  if (v10 != 60)
  {
    return 0;
  }

  v12 = v7 + 1;
  v13 = v7 + 1;
  while (1)
  {
    if (v2 == v13)
    {
      goto LABEL_38;
    }

    if (*(result + v13) == 62)
    {
      break;
    }

    if (__OFADD__(v13, 1))
    {
      goto LABEL_58;
    }

    if (v2 < v13 + 1)
    {
      goto LABEL_59;
    }

    v14 = v13 + 1 <= v13;
    ++v13;
    if (v14)
    {
      __break(1u);
LABEL_38:
      v15 = v2;
      goto LABEL_40;
    }
  }

  v15 = v13;
LABEL_40:
  if (v15 <= v7)
  {
    goto LABEL_64;
  }

  result = 0;
  if (v12 != v15 && v2 != v13)
  {
    if (v15 >= v2)
    {
      goto LABEL_65;
    }

    if (*(v3 + v15) == 62)
    {
      while (v12 < v15)
      {
        if (v12 >= v2)
        {
          goto LABEL_62;
        }

        if (*(v3 + v12) - 127 < 0xFFFFFFA2)
        {
LABEL_51:

          return 0;
        }

        ++v12;
        v16._countAndFlagsBits = sub_1004A58E4();
        sub_1004A5984(v16);

        if (v15 == v12)
        {
          return 0;
        }
      }

      goto LABEL_61;
    }

    return 0;
  }

  return result;
}

Swift::Int ListID.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

unint64_t sub_10028716C()
{
  result = qword_1005D6878;
  if (!qword_1005D6878)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListID, &type metadata for ListID, v0, v1);
    atomic_store(result, &qword_1005D6878);
  }

  return result;
}

void *sub_1002871D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isStackAllocationSafe = a2 - a1;
  if (!isStackAllocationSafe)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = a4 - a3;
  if (!a3)
  {
    v10 = 0;
  }

  v11 = a1;
  while (1)
  {
    if (v11 >= a2)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (a1 < 0 || v11 >= v10)
    {
      goto LABEL_25;
    }

    v12 = *(a3 + v11);
    if (v12 == 13 || v12 == 10)
    {
      break;
    }

    if (a2 == ++v11)
    {
      if (!a3)
      {
        return _swiftEmptyArrayStorage;
      }

      result = sub_10015BEAC(isStackAllocationSafe, 0);
      v14 = a2 - a1;
      if (a2 <= a1)
      {
        __break(1u);
        return result;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        v15 = result;
        memmove(result + 4, (a3 + a1), v14);
        return v15;
      }

LABEL_31:
      __break(1u);
    }
  }

  if (v10 < a2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a2 - a1 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (a2 - a1 < 1025)
  {
LABEL_21:
    __chkstk_darwin(isStackAllocationSafe);
    result = sub_100288504((&v19 - v16), a1, a2, a3);
    if (v4)
    {
      return swift_willThrow();
    }

    return result;
  }

LABEL_27:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
    goto LABEL_21;
  }

  v17 = swift_slowAlloc();
  v18 = sub_100288504(v17, a1, a2, a3);

  if (!v4)
  {
    return v18;
  }

  return result;
}

void sub_1002873B8(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == isStackAllocationSafe)
  {
LABEL_13:
    if (a3)
    {
      v12 = (a3 + a2);
    }

    else
    {
      v12 = 0;
    }

    if (a3)
    {
      v13 = (a3 + isStackAllocationSafe);
    }

    else
    {
      v13 = 0;
    }

    sub_100269CE4(v13, v12, &v17);
    return;
  }

  v8 = a4 - a3;
  if (!a3)
  {
    v8 = 0;
  }

  v9 = isStackAllocationSafe;
  while (1)
  {
    if (v9 >= a2)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (isStackAllocationSafe < 0 || v9 >= v8)
    {
      goto LABEL_27;
    }

    v10 = *(a3 + v9);
    if (v10 == 13 || v10 == 10)
    {
      break;
    }

    if (a2 == ++v9)
    {
      goto LABEL_13;
    }
  }

  if (v8 < a2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a2 - isStackAllocationSafe < 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v7 = isStackAllocationSafe;
  v5 = a2;
  v4 = a3;
  if (a2 - isStackAllocationSafe >= 1025)
  {
LABEL_29:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      goto LABEL_23;
    }

    v15 = swift_slowAlloc();
    sub_1002885B8(v15, v7, v5, v4);
LABEL_32:

    return;
  }

LABEL_23:
  __chkstk_darwin(isStackAllocationSafe);
  sub_1002885B8(&v16 - v14, v7, v5, v4);
  if (v6)
  {
    swift_willThrow();
  }
}

uint64_t sub_100287598(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  if (a2 == isStackAllocationSafe)
  {
LABEL_13:
    if (a3)
    {
      v17 = a3 + a2;
    }

    else
    {
      v17 = 0;
    }

    if (a3)
    {
      v18 = a3 + isStackAllocationSafe;
    }

    else
    {
      v18 = 0;
    }

    return a5(v18, v17);
  }

  v13 = a4 - a3;
  if (!a3)
  {
    v13 = 0;
  }

  v14 = isStackAllocationSafe;
  while (1)
  {
    if (v14 >= a2)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (isStackAllocationSafe < 0 || v14 >= v13)
    {
      goto LABEL_27;
    }

    v15 = *(a3 + v14);
    if (v15 == 13 || v15 == 10)
    {
      break;
    }

    if (a2 == ++v14)
    {
      goto LABEL_13;
    }
  }

  if (v13 < a2)
  {
    goto LABEL_28;
  }

  v12 = a2 - isStackAllocationSafe;
  if (a2 - isStackAllocationSafe < 0)
  {
    __break(1u);
  }

  v11 = isStackAllocationSafe;
  v10 = a2;
  v8 = a4;
  v9 = a3;
  v6 = a5;
  if (v12 < 1025)
  {
    goto LABEL_23;
  }

LABEL_29:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v21 = swift_slowAlloc();
    sub_10028815C(v21, v21 + v12, v11, v10, v9, v8, v6);
  }

LABEL_23:
  __chkstk_darwin(isStackAllocationSafe);
  result = sub_10028815C(&v22 - v20, &v22 + v12 - v20, v11, v10, v9, v8, v6);
  if (v7)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100287784(uint64_t result)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  LODWORD(v5) = result;
  if (result <= 1u)
  {
    if (result)
    {
      goto LABEL_20;
    }

    v6 = v1[3] - v4;
    if (!v4)
    {
      v6 = 0;
    }

    if ((v2 & 0x8000000000000000) != 0 || v6 < v2)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if ((v3 & 0x8000000000000000) != 0 || v6 < v3)
    {
      goto LABEL_46;
    }

    if ((v3 - v2) < 2)
    {
      return 0;
    }

    if (v3 <= v2)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (*(v4 + v2) != 13)
    {
      return 0;
    }

    v5 = v2 + 1;
    if (v2 + 1 >= v3)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v4 = *(v4 + v5);
    if (v4 != 10)
    {
      return 0;
    }

    v2 += 2;
    if (v3 >= v2)
    {
      goto LABEL_42;
    }

    __break(1u);
  }

  if (v5 == 2)
  {
    if (v3 == v2)
    {
      return 0;
    }

    if (v3 <= v2)
    {
      __break(1u);
LABEL_20:
      if (v3 != v2)
      {
        if (v3 > v2)
        {
          if (*(v4 + v2) == 13)
          {
            goto LABEL_41;
          }

          return 0;
        }

        goto LABEL_49;
      }

      return 0;
    }

LABEL_40:
    if (*(v4 + v2) == 10)
    {
LABEL_41:
      ++v2;
      goto LABEL_42;
    }

    return 0;
  }

  v7 = v1[3] - v4;
  if (!v4)
  {
    v7 = 0;
  }

  if ((v2 & 0x8000000000000000) != 0 || v7 < v2)
  {
    goto LABEL_45;
  }

  if ((v3 & 0x8000000000000000) != 0 || v7 < v3)
  {
    goto LABEL_47;
  }

  if ((v3 - v2) < 2)
  {
    if (v3 - v2 != 1)
    {
      return 0;
    }

LABEL_39:
    if (v3 > v2)
    {
      goto LABEL_40;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v3 <= v2)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (*(v4 + v2) != 13)
  {
    goto LABEL_39;
  }

  if (v2 + 1 < v3)
  {
    if (*(v4 + v2 + 1) != 10)
    {
      goto LABEL_39;
    }

    v2 += 2;
    if (v3 < v2)
    {
      __break(1u);
      goto LABEL_39;
    }

LABEL_42:
    *v1 = v2;
    return 1;
  }

LABEL_53:
  __break(1u);
  return result;
}

char *sub_100287910(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return sub_100287A58("\r\n", 2uLL, a2, a3, a4);
    }

    v6 = 13;
    return sub_100287B04(v6, a2, a3, a4);
  }

  v6 = 10;
  if (v4 == 2)
  {
    return sub_100287B04(v6, a2, a3, a4);
  }

  result = sub_100287B04(0xAu, a2, a3, a4);
  if ((v11 & 1) == 0 && result > a2)
  {
    if (result > a3)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    if (result[a4 - 1] == 13)
    {
      if (v10 >= (result - 1))
      {
        return --result;
      }

      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1002879E4(unsigned __int8 a1)
{
  result = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *v1;
  if (*v1 != v4)
  {
    if (v4 <= result)
    {
      v7 = *v1;
    }

    else
    {
      v7 = v1[1];
    }

    v6 = *v1;
    while (1)
    {
      if (v7 == v6)
      {
        __break(1u);
        goto LABEL_14;
      }

      if (*(v5 + v6) == a1)
      {
        break;
      }

      *v1 = ++v6;
      v1[1] = v4;
      v1[2] = v5;
      if (v4 == v6)
      {
        v6 = v4;
        break;
      }
    }

    if (v6 >= result)
    {
      goto LABEL_11;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_11:
  if (v4 < v6)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

char *sub_100287A58(void *__little, size_t __little_len, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    return 0;
  }

  v7 = a5 + a3;
  v8 = a4 - a3;
  result = memmem((a5 + a3), a4 - a3, __little, __little_len);
  if (!result)
  {
    return result;
  }

  v10 = &result[-v7];
  if (&result[-v7] < 0)
  {
    return 0;
  }

  v11 = &v10[__little_len];
  if (__OFADD__(v10, __little_len))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8 < v11)
  {
    return 0;
  }

  result = &v10[a3];
  if (__OFADD__(v10, a3))
  {
    goto LABEL_14;
  }

  if (__OFADD__(v11, a3))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v11 < v10 || &v11[a3] < result)
  {
    goto LABEL_16;
  }

  return result;
}

char *sub_100287B04(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a4 + a2;
  v6 = a3 - a2;
  result = memchr((a4 + a2), a1, a3 - a2);
  if (!result)
  {
    return result;
  }

  v8 = &result[-v5];
  if (&result[-v5] < 0)
  {
    return 0;
  }

  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v6 < v9)
  {
    return 0;
  }

  result = &v8[a2];
  if (__OFADD__(v8, a2))
  {
    goto LABEL_14;
  }

  if (__OFADD__(v9, a2))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v9 < v8 || &v9[a2] < result)
  {
    goto LABEL_16;
  }

  return result;
}

char *sub_100287BA8(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      v7 = "\r\n\r\n";
      v8 = 4;
      return sub_100287A58(v7, v8, a2, a3, a4);
    }

    v7 = "\r\r";
LABEL_7:
    v8 = 2;
    return sub_100287A58(v7, v8, a2, a3, a4);
  }

  if (a1 == 2)
  {
    v7 = "\n\n";
    goto LABEL_7;
  }

  if (!a4)
  {
    return 0;
  }

  v10 = a4 + a2;
  v11 = a3 - a2;
  result = memchr((a4 + a2), 10, a3 - a2);
  if (!result)
  {
    return result;
  }

  v13 = &result[-v10];
  if (&result[-v10] < 0)
  {
    return 0;
  }

  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v11 < v14)
  {
    return 0;
  }

  v15 = &v13[a2];
  if (__OFADD__(v13, a2))
  {
    goto LABEL_48;
  }

  v16 = &v14[a2];
  if (__OFADD__(v14, a2))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v14 < v13 || v16 < v15)
  {
    goto LABEL_50;
  }

  if (v15 > a2)
  {
    if (v15 > a3)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (*(a4 + v15 - 1) == 13)
    {
      --v15;
    }
  }

  if (v16 > a3)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v16 < a2)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    if (v12 >= result && v12 <= a3)
    {
      if (v12 >= v16)
      {
        return result;
      }

LABEL_54:
      __break(1u);
      return result;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  while (1)
  {
    v17 = v15;
    v18 = a4 + v16;
    result = memchr((a4 + v16), 10, a3 - v16);
    if (!result)
    {
      return result;
    }

    v19 = &result[-v18];
    if (&result[-v18] < 0)
    {
      return 0;
    }

    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_47;
    }

    if (a3 - v16 < v20)
    {
      return 0;
    }

    v15 = &v19[v16];
    if (__OFADD__(v19, v16))
    {
      goto LABEL_48;
    }

    v12 = &v20[v16];
    if (__OFADD__(v20, v16))
    {
      goto LABEL_49;
    }

    if (v20 < v19 || v12 < v15)
    {
      goto LABEL_50;
    }

    result = v17;
    if (v16 < v15)
    {
      if (v15 > a3)
      {
        goto LABEL_52;
      }

      if (*(a4 + v15 - 1) == 13)
      {
        --v15;
      }
    }

    if (v16 == v15)
    {
      goto LABEL_43;
    }

    if (v12 > a3)
    {
      goto LABEL_51;
    }

    v21 = v12 < v16;
    v16 += v20;
    if (v21)
    {
      goto LABEL_42;
    }
  }
}

void sub_100287DA8()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 != v2)
  {
    v3 = v0[2];
    if (v2 <= v1)
    {
      v4 = *v0;
    }

    else
    {
      v4 = v0[1];
    }

    while (v4 != v1)
    {
      v5 = *(v3 + v1);
      v6 = v5 > 0x20;
      v7 = (1 << v5) & 0x100002600;
      if (!v6 && v7 != 0)
      {
        *v0 = ++v1;
        v0[1] = v2;
        if (v2 != v1)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

void sub_100287E04(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = 0uLL;
  if (*v1 == v3)
  {
LABEL_13:
    v2 = 0;
    v7 = 0;
    v13 = 1;
LABEL_17:
    *a1 = v2;
    *(a1 + 8) = v7;
    *(a1 + 16) = v4;
    *(a1 + 32) = v13;
    return;
  }

  v5 = *(v1 + 1);
  v6 = v1[2];
  v7 = *v1;
  do
  {
    if (v7 >= v3)
    {
      __break(1u);
      goto LABEL_19;
    }

    v8 = *(v6 + v7);
    if ((v8 - 127) < 0xFFFFFFA2)
    {
      goto LABEL_12;
    }

    v9 = v8 - 34;
    v10 = v9 > 0x3B;
    v11 = (1 << v9) & 0xE0000007F0024C1;
    if (!v10 && v11 != 0)
    {
      goto LABEL_12;
    }

    *v1 = ++v7;
    v1[1] = v3;
    v1[2] = v6;
  }

  while (v3 != v7);
  v7 = v3;
LABEL_12:
  if (v2 == v7)
  {
    goto LABEL_13;
  }

  if (v7 < v2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v3 >= v7)
  {
    v13 = 0;
    v4 = v5;
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
}