uint64_t sub_100078C1C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100078CA8(v3);
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

void *sub_100078CF8(unint64_t a1, unint64_t a2)
{
  if (!*(a1 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a1;
  v148 = *(a1 + 16);
  v149 = a1 + 16;
  v4 = _swiftEmptyArrayStorage;
  v161 = sub_100075574(_swiftEmptyArrayStorage);
  v5 = sub_10002C1D0(a2, v3);
  v153 = v7;
  v8 = v5[2];
  v169 = v5;
  if (!v8)
  {
    v150 = 0;
    v151 = _swiftEmptyArrayStorage;
    v152 = _swiftEmptyArrayStorage;
LABEL_120:
    v119 = (v149 + 16 * v148);
    a2 = *v119;
    (*(v119[1] + 16))(&v172);
    v171 = _swiftEmptyArrayStorage;
    v6 = v175;
    if (!*(v175 + 16))
    {
      goto LABEL_123;
    }

    sub_100076EBC(1, 0, 2, v175, &v172, v177);
    v6 = sub_100043F98(0, 1, 1, _swiftEmptyArrayStorage);
    a2 = *(v6 + 2);
    v10 = *(v6 + 3);
    v3 = a2 + 1;
    if (a2 >= v10 >> 1)
    {
      goto LABEL_154;
    }

    goto LABEL_122;
  }

  v9 = 0;
  v150 = 0;
  v165 = v5 + 4;
  v10 = &unk_10008F000;
  v4 = _swiftEmptyArrayStorage;
  v151 = _swiftEmptyArrayStorage;
  v152 = _swiftEmptyArrayStorage;
  v168 = v5[2];
LABEL_4:
  if (v9 >= v8)
  {
    goto LABEL_148;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_149;
  }

  v10 = v5[2];
  if (v9 >= v10)
  {
    goto LABEL_150;
  }

  v163 = v4;
  v11 = &v165[24 * v9];
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[3];
  v183 = v11[2];
  v184 = v14;
  v181 = v12;
  v182 = v13;
  v15 = v11[4];
  v16 = v11[5];
  v17 = v11[7];
  v187 = v11[6];
  v188 = v17;
  v185 = v15;
  v186 = v16;
  v18 = v11[8];
  v19 = v11[9];
  v20 = v11[11];
  v191 = v11[10];
  v192 = v20;
  v189 = v18;
  v190 = v19;
  v154 = v9;
  v166 = v9 + 1;
  a2 = *(&v182 + 1);
  v21 = v182;
  v22 = v183;
  v159 = v184;
  v4 = *(&v184 + 1);
  v23 = v185;
  v160 = v186;
  v157 = *(&v185 + 1);
  v162 = *(&v188 + 1);
  v158 = v188;
  v3 = *(*(&v183 + 1) + 16);
  sub_1000289DC(&v181, &v172);
  v24 = 0;
  v25 = *(&v22 + 1) + 40;
  v26 = _swiftEmptyArrayStorage;
LABEL_8:
  v10 = v25 + 16 * v24;
  while (1)
  {
    if (v3 == v24)
    {
      if (a2)
      {
        v35 = a2;
      }

      else
      {
        v21 = 0;
        v35 = 0xE000000000000000;
      }

      if ((v35 & 0x2000000000000000) != 0)
      {
        v36 = HIBYTE(v35) & 0xF;
      }

      else
      {
        v36 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (v26[2])
      {
        if (!v36)
        {

          v172 = 0x3A7365756C617628;
          v173 = 0xE900000000000020;
          *&v179[0] = v26;
          sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
          sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0, &protocol conformance descriptor for [A]);
          v43 = BidirectionalCollection<>.joined(separator:)();
          v35 = v44;

          v42 = v43;
LABEL_32:
          v45 = v35;
          String.append(_:)(*&v42);

          v46._countAndFlagsBits = 41;
          v46._object = 0xE100000000000000;
          String.append(_:)(v46);
          v47 = v172;
          v48 = v173;
          if (v159)
          {
            goto LABEL_33;
          }

          goto LABEL_74;
        }

        v172 = 0;
        v173 = 0xE000000000000000;

        _StringGuts.grow(_:)(25);

        v172 = 0x3A7365756C617628;
        v173 = 0xE900000000000020;
        *&v179[0] = v26;
        sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
        sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0, &protocol conformance descriptor for [A]);
        v37 = BidirectionalCollection<>.joined(separator:)();
        v39 = v38;

        v40._countAndFlagsBits = v37;
        v40._object = v39;
        String.append(_:)(v40);

        v41._countAndFlagsBits = 0x6C7561666564203BLL;
        v41._object = 0xEB00000000203A74;
        String.append(_:)(v41);
      }

      else
      {

        if (!v36)
        {

          v47 = 0;
          v48 = 0xE000000000000000;
          if (v159)
          {
LABEL_33:
            v3 = v169;
            v49 = v22;
            a2 = v22 + 32;
            v50 = v9 + 1;
            while (1)
            {
              v52 = v168;
              if (v50 == v168)
              {
                v50 = v168;
                goto LABEL_64;
              }

              v10 = *(v3 + 16);
              if (v50 >= v10)
              {
                goto LABEL_147;
              }

              v10 = v165[24 * v50 + 4];
              v53 = *(v10 + 16);
              if (v53 != *(v49 + 16))
              {
                goto LABEL_64;
              }

              if (v53 && v10 != v49)
              {
                break;
              }

LABEL_34:
              v51 = __OFADD__(v50++, 1);
              v3 = v169;
              if (v51)
              {
                goto LABEL_151;
              }
            }

            v3 = 0;
            v55 = v10 + 32;
            while (1)
            {
              if (v3 == v53)
              {
                goto LABEL_145;
              }

              v56 = (v55 + 24 * v3);
              v57 = *v56;
              v58 = v56[1];
              v4 = v56[2];
              v59 = (a2 + 24 * v3);
              v6 = v59[1];
              v60 = v59[2];
              v61 = v57 == *v59 && v58 == v6;
              if (!v61 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                break;
              }

              v62 = *(v4 + 2);
              v10 = *(v60 + 16);
              if (v62 != v10)
              {
                break;
              }

              if (v62)
              {
                v63 = v4 == v60;
              }

              else
              {
                v63 = 1;
              }

              if (!v63)
              {
                v4 += 40;
                v64 = (v60 + 40);
                while (v62)
                {
                  v6 = *v64;
                  v65 = *(v4 - 1) == *(v64 - 1) && *v4 == v6;
                  if (!v65 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    goto LABEL_63;
                  }

                  v4 += 16;
                  v64 += 2;
                  if (!--v62)
                  {
                    goto LABEL_43;
                  }
                }

                goto LABEL_144;
              }

LABEL_43:
              ++v3;
              v49 = v22;
              if (v3 == v53)
              {
                goto LABEL_34;
              }
            }

LABEL_63:
            v52 = v168;
            v3 = v169;
LABEL_64:
            sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
            v66 = swift_allocObject();
            v67 = v189;
            v68 = v191;
            v69 = v192;
            v66[11] = v190;
            v66[12] = v68;
            v66[13] = v69;
            v70 = v185;
            v71 = v187;
            v72 = v188;
            v66[7] = v186;
            v66[8] = v71;
            v66[9] = v72;
            v66[10] = v67;
            v73 = v181;
            v74 = v182;
            v66[1] = xmmword_10008E640;
            v66[2] = v73;
            v75 = v183;
            v76 = v184;
            v66[3] = v74;
            v66[4] = v75;
            v66[5] = v76;
            v66[6] = v70;
            v10 = v154;
            if (v50 <= v154)
            {
              goto LABEL_152;
            }

            if (v52 < v50)
            {
              goto LABEL_153;
            }

            *&v179[0] = v66;
            sub_1000289DC(&v181, &v172);

            sub_100041D00(v166, v50, v3, v153);
            v77 = *&v179[0];
            v172 = *&v179[0];
            v173 = sub_100076E28;
            v174 = 0;

            sub_1000021C0(&qword_1000B5EC0, "<p");
            sub_10007A8BC();
            v78 = BidirectionalCollection<>.joined(separator:)();
            v80 = v79;

            v81 = (v77 + 96);
            v82 = *(v77 + 16) + 1;
            while (--v82)
            {
              v4 = *(v81 - 1);
              v23 = *v81;
              v81 += 24;
              v83 = HIBYTE(v23) & 0xF;
              if ((v23 & 0x2000000000000000) == 0)
              {
                v83 = v4 & 0xFFFFFFFFFFFFLL;
              }

              if (v83)
              {

                v9 = v50;
                goto LABEL_75;
              }
            }

            v4 = 0;
            v23 = 0xE000000000000000;
            v9 = v50;
LABEL_75:
            sub_1000021C0(&qword_1000B51D0, &qword_100092A50);
            v85 = swift_allocObject();
            *(v85 + 16) = xmmword_10008F240;
            *(v85 + 32) = v4;
            *(v85 + 40) = v23;
            *(v85 + 48) = v47;
            *(v85 + 56) = v48;
            v172 = v85;
            v173 = sub_100076E8C;
            v174 = 0;
            sub_1000021C0(&qword_1000B5EB0, ">p");
            sub_10007A7FC();
            v86 = BidirectionalCollection<>.joined(separator:)();
            v88 = v87;

            v89 = v158 & 0xFFFFFFFFFFFFLL;
            if ((v162 & 0x2000000000000000) != 0)
            {
              v89 = HIBYTE(v162) & 0xF;
            }

            v193[0] = v181;
            if (!v89)
            {
              v4 = v163;
              if (v181)
              {

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v151 = sub_100043E78(0, *(v151 + 2) + 1, 1, v151);
                }

                a2 = *(v151 + 2);
                v96 = *(v151 + 3);
                v3 = a2 + 1;
                if (a2 >= v96 >> 1)
                {
                  v151 = sub_100043E78((v96 > 1), a2 + 1, 1, v151);
                }

                sub_100028A38(&v181);
                *(v151 + 2) = v3;
                v10 = &v151[48 * a2];
              }

              else
              {

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v4 = sub_100043E78(0, *(v163 + 2) + 1, 1, v163);
                }

                a2 = *(v4 + 2);
                v90 = *(v4 + 3);
                v3 = a2 + 1;
                if (a2 >= v90 >> 1)
                {
                  v4 = sub_100043E78((v90 > 1), a2 + 1, 1, v4);
                }

                sub_100028A38(&v181);
                *(v4 + 2) = v3;
                v10 = &v4[48 * a2];
              }

              *(v10 + 32) = v78;
              *(v10 + 40) = v80;
              *(v10 + 48) = v86;
              *(v10 + 56) = v88;
              *(v10 + 64) = v157;
              *(v10 + 72) = v160;
              v8 = v168;
              v5 = v169;
              if (v9 == v168)
              {
                goto LABEL_120;
              }

              goto LABEL_4;
            }

            v91 = v161[2];
            swift_bridgeObjectRetain_n();

            if (v91)
            {
              sub_100028A8C(v193, &v172);

              sub_10001F970(v158, v162);
              v92 = v161;
              v94 = v93;

              v95 = v150;
              if (v94)
              {
                goto LABEL_101;
              }
            }

            else
            {
              sub_100028A8C(v193, &v172);
              v95 = v150;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v97 = v152;
            }

            else
            {
              v97 = sub_100042F3C(0, *(v152 + 2) + 1, 1, v152);
            }

            v99 = *(v97 + 2);
            v98 = *(v97 + 3);
            if (v99 >= v98 >> 1)
            {
              v97 = sub_100042F3C((v98 > 1), v99 + 1, 1, v97);
            }

            *(v97 + 2) = v99 + 1;
            v152 = v97;
            v100 = &v97[16 * v99];
            *(v100 + 4) = v158;
            *(v100 + 5) = v162;
            v92 = v161;
LABEL_101:
            sub_10007A8AC(v95, 0);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v172 = v92;
            v102 = v161;
            v104 = sub_10001F970(v158, v162);
            v105 = v161[2];
            v106 = (v103 & 1) == 0;
            v107 = v105 + v106;
            if (__OFADD__(v105, v106))
            {
              __break(1u);
LABEL_156:
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            v108 = v103;
            if (v161[3] < v107)
            {
              sub_10006BB18(v107, isUniquelyReferenced_nonNull_native);
              v109 = v172;
              v110 = sub_10001F970(v158, v162);
              if ((v108 & 1) != (v111 & 1))
              {
                goto LABEL_156;
              }

              v104 = v110;
              v102 = v109;
              if ((v108 & 1) == 0)
              {
                goto LABEL_111;
              }

LABEL_108:

              goto LABEL_112;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              if (v103)
              {
                goto LABEL_108;
              }
            }

            else
            {
              sub_10006B1C8();
              v102 = v172;
              if (v108)
              {
                goto LABEL_108;
              }
            }

LABEL_111:
            sub_10006C058(v104, v158, v162, _swiftEmptyArrayStorage, v102);
LABEL_112:
            v112 = v104;
            v161 = v102;
            v113 = v102[7];
            a2 = *(v113 + 8 * v112);
            v114 = swift_isUniquelyReferenced_nonNull_native();
            v170 = v112;
            *(v113 + 8 * v112) = a2;
            if ((v114 & 1) == 0)
            {
              a2 = sub_100043E78(0, *(a2 + 16) + 1, 1, a2);
              *(v113 + 8 * v112) = a2;
            }

            v116 = *(a2 + 16);
            v115 = *(a2 + 24);
            v3 = v116 + 1;
            if (v116 >= v115 >> 1)
            {
              *(v113 + 8 * v170) = sub_100043E78((v115 > 1), v116 + 1, 1, a2);
            }

            sub_10002BBA4(v193);

            sub_100028A38(&v181);
            v5 = v169;
            v117 = *(v113 + 8 * v170);
            *(v117 + 16) = v3;
            v10 = v117 + 48 * v116;
            *(v10 + 32) = v78;
            *(v10 + 40) = v80;
            *(v10 + 48) = v86;
            *(v10 + 56) = v88;
            *(v10 + 64) = v157;
            *(v10 + 72) = v160;
            v150 = sub_100076EAC;
            v8 = v168;
            v4 = v163;
            if (v9 == v168)
            {
              goto LABEL_120;
            }

            goto LABEL_4;
          }

LABEL_74:
          v78 = sub_10007D0A0();
          v80 = v84;

          ++v9;
          goto LABEL_75;
        }

        v172 = 0x746C756166656428;
        v173 = 0xEA0000000000203ALL;
      }

      v42 = v21;
      goto LABEL_32;
    }

    if (v24 >= *(*(&v22 + 1) + 16))
    {
      break;
    }

    ++v24;
    v27 = *(v10 - 8);
    v28 = *v10;
    v10 += 16;
    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      v156 = v25;

      v30 = swift_isUniquelyReferenced_nonNull_native();
      v172 = v26;
      v155 = v21;
      if ((v30 & 1) == 0)
      {
        sub_10004E820(0, v26[2] + 1, 1);
        v26 = v172;
      }

      v32 = v26[2];
      v31 = v26[3];
      v33 = v32 + 1;
      v25 = v156;
      if (v32 >= v31 >> 1)
      {
        sub_10004E820((v31 > 1), v32 + 1, 1);
        v33 = v32 + 1;
        v25 = v156;
        v26 = v172;
      }

      v26[2] = v33;
      v34 = &v26[2 * v32];
      v34[4] = v27;
      v34[5] = v28;
      v21 = v155;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  while (1)
  {
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
    v6 = sub_100043F98((v10 > 1), v3, 1, v6);
LABEL_122:
    *(v6 + 2) = v3;
    v120 = &v6[56 * a2];
    v121 = v177[1];
    *(v120 + 2) = v177[0];
    *(v120 + 3) = v121;
    *(v120 + 4) = v177[2];
    v120[80] = v178;
    v171 = v6;
LABEL_123:
    v164 = v4;
    v122 = v176;
    v4 = *(v176 + 16);
    v3 = _swiftEmptyArrayStorage;
    if (!v4)
    {
      break;
    }

    v123 = 0;
    v124 = (v176 + 48);
    while (1)
    {
      v10 = *(v122 + 16);
      if (v123 >= v10)
      {
        break;
      }

      v126 = *(v124 - 1);
      v125 = *v124;
      v127 = *(v124 - 2);

      sub_100076EBC(v127, v126, 1, v125, &v172, v179);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100043F98(0, *(v3 + 16) + 1, 1, v3);
      }

      v129 = *(v3 + 16);
      v128 = *(v3 + 24);
      a2 = v129 + 1;
      if (v129 >= v128 >> 1)
      {
        v3 = sub_100043F98((v128 > 1), v129 + 1, 1, v3);
      }

      ++v123;
      *(v3 + 16) = a2;
      v130 = v3 + 56 * v129;
      v131 = v179[0];
      v132 = v179[1];
      v133 = v179[2];
      *(v130 + 80) = v180;
      *(v130 + 48) = v132;
      *(v130 + 64) = v133;
      *(v130 + 32) = v131;
      v124 += 3;
      if (v4 == v123)
      {
        goto LABEL_131;
      }
    }
  }

LABEL_131:
  sub_100027BE4(&v172);
  sub_100041C08(v3);
  sub_1000021C0(&qword_1000B5660, &qword_100092720);
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_10008E640;
  *(v134 + 32) = 0;
  *(v134 + 40) = 0;
  *(v134 + 48) = 2;
  *(v134 + 56) = v164;
  *(v134 + 64) = 0;
  *(v134 + 72) = 0xE000000000000000;
  *(v134 + 80) = 0;
  v135 = *(v152 + 2);
  if (v135)
  {
    v167 = v134;
    v136 = _swiftEmptyArrayStorage;

    sub_10004E958(0, v135, 0);
    v137 = (v152 + 40);
    v138 = v161;
    do
    {
      v140 = *(v137 - 1);
      v139 = *v137;
      v141 = v138[2];

      if (v141)
      {

        v142 = sub_10001F970(v140, v139);
        v138 = v161;
        if (v143)
        {
          v136 = *(v161[7] + 8 * v142);
        }
      }

      v145 = _swiftEmptyArrayStorage[2];
      v144 = _swiftEmptyArrayStorage[3];
      if (v145 >= v144 >> 1)
      {
        sub_10004E958((v144 > 1), v145 + 1, 1);
        v138 = v161;
      }

      _swiftEmptyArrayStorage[2] = v145 + 1;
      v146 = &_swiftEmptyArrayStorage[7 * v145];
      v146[4] = v140;
      v146[5] = v139;
      *(v146 + 48) = 0;
      v146[7] = v136;
      v146[8] = 0;
      v146[9] = 0xE000000000000000;
      *(v146 + 80) = 0;
      v137 += 2;
      --v135;
      v136 = _swiftEmptyArrayStorage;
    }

    while (v135);

    v134 = v167;
  }

  else
  {
  }

  sub_100041C08(_swiftEmptyArrayStorage);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008E640;
  *(inited + 32) = xmmword_100091360;
  *(inited + 48) = 2;
  *(inited + 56) = v151;
  *(inited + 64) = 0;
  *(inited + 72) = 0xE000000000000000;
  *(inited + 80) = 0;
  sub_100041C08(inited);
  sub_100041C08(v171);

  sub_10007A8AC(v150, 0);
  return v134;
}

void *sub_100079D2C@<X0>(unint64_t a1@<X0>, unsigned int a2@<W1>, unint64_t *a3@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v5 = a1 + 16 * v3;
  v6 = *(v5 + 16);
  v53 = *(v5 + 24);
  v7 = sub_10004C130(v6, *(v53 + 8), a2, 0, 0, 0);
  v9 = v8;
  *&v63[0] = _swiftEmptyArrayStorage;

  sub_10004E820(0, v3, 0);
  v10 = _swiftEmptyArrayStorage;
  v11 = a1 + 40;
  do
  {
    v12 = (*(*v11 + 24))();
    *&v63[0] = v10;
    v15 = v10[2];
    v14 = v10[3];
    if (v15 >= v14 >> 1)
    {
      v50 = v12;
      v17 = v13;
      sub_10004E820((v14 > 1), v15 + 1, 1);
      v13 = v17;
      v12 = v50;
      v10 = *&v63[0];
    }

    v10[2] = v15 + 1;
    v16 = &v10[2 * v15];
    v16[4] = v12;
    v16[5] = v13;
    v11 += 16;
    --v3;
  }

  while (v3);
  *&v63[0] = v10;
  sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
  sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0, &protocol conformance descriptor for [A]);
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  (*(*(a1 + 40) + 16))(v55);
  v68 = v56;
  sub_100029F9C(&v68, v63);
  sub_100027BE4(v55);
  if (*(&v68 + 1))
  {
    v63[0] = v68;
    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v22._countAndFlagsBits = v18;
    v22._object = v20;
    String.append(_:)(v22);

    v20 = *(&v63[0] + 1);
    v18 = *&v63[0];
  }

  v23 = *(v53 + 16);
  v23(v57, v6, v53);
  v67 = v58;
  sub_100029F9C(&v67, v63);
  sub_100027BE4(v57);
  v24 = *(&v67 + 1);
  if (!*(&v67 + 1))
  {
    sub_1000021C0(&qword_1000B5648, &unk_1000926F0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10008E640;
    *(v26 + 32) = v7;
    *(v26 + 40) = v9;
    v27 = sub_1000748F8(v26);
    v29 = v28;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v25 = sub_10007C97C(v18, v20, v27, v29);
    v24 = v30;

    *&v63[0] = v25;
    *(&v63[0] + 1) = v24;
    v23(v59, v6, v53);
    CommandConfiguration.subcommands.getter();
    v32 = v31;
    sub_100027BE4(v59);
    v33 = *(v32 + 16);

    if (!v33)
    {
      goto LABEL_18;
    }

    v34 = sub_100075900(v25, v24);
    if (v35)
    {
      if (v34 == 32 && v35 == 0xE100000000000000)
      {

LABEL_17:
        v38._countAndFlagsBits = 0x6D6D6F636275733CLL;
        v38._object = 0xEC0000003E646E61;
        String.append(_:)(v38);
        v24 = *(&v63[0] + 1);
        v25 = *&v63[0];
        goto LABEL_18;
      }

      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v36)
      {
        goto LABEL_17;
      }
    }

    v37._countAndFlagsBits = 32;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    goto LABEL_17;
  }

  v25 = v67;

LABEL_18:
  v54 = v25;
  v23(v60, v6, v53);
  v39 = v60[4];
  v40 = v60[5];

  sub_100027BE4(v60);
  v23(v61, v6, v53);
  v66 = v62;
  v41 = v62;

  sub_100027BE4(v61);
  sub_1000186F4(&v66);
  v42 = HIBYTE(*(&v41 + 1)) & 0xFLL;
  if ((*(&v41 + 1) & 0x2000000000000000) == 0)
  {
    v42 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
    v43 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v43 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v43)
    {
      v44._countAndFlagsBits = 10;
      v44._object = 0xE100000000000000;
      String.append(_:)(v44);
    }

    v23(v63, v6, v53);
    v45 = v64;
    v46 = v65;

    sub_100027BE4(v63);
    v47._countAndFlagsBits = v45;
    v47._object = v46;
    String.append(_:)(v47);

    v48._countAndFlagsBits = 10;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);

    v25 = v54;
  }

  result = sub_100078CF8(a1, a2);
  *a3 = a1;
  a3[1] = v39;
  a3[2] = v40;
  a3[3] = v25;
  a3[4] = v24;
  a3[5] = result;
  a3[6] = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10007A2F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (!v5)
  {
    return 0;
  }

  sub_10004E820(0, v5, 0);
  v7 = _swiftEmptyArrayStorage;
  v8 = (a5 + 72);
  do
  {
    v47 = v5;
    v48 = v7;
    v9 = *(v8 - 5);
    v10 = *(v8 - 4);
    v11 = *(v8 - 3);
    v12 = *(v8 - 2);
    v13 = *(v8 - 1);
    v14 = *v8;

    v15._countAndFlagsBits = 32;
    v15._object = 0xE100000000000000;
    v49 = String.init(repeating:count:)(v15, 2);

    v16._countAndFlagsBits = v9;
    v16._object = v10;
    String.append(_:)(v16);

    v17 = v49;
    v18 = sub_10007603C(a1, 26, v11, v12);
    v20 = v19;
    v21 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v21 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v50 = sub_10007603C(a1, 8, v13, v14);
      v51 = v22;

      v23._countAndFlagsBits = 10;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);

      v24 = v51;
      v21 = v50;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v46 = v21;
    v25 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v25 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      if (String.count.getter() >= 26)
      {
        v30._countAndFlagsBits = v18;
        v30._object = v20;
        String.append(_:)(v30);

        v29 = 0xE100000000000000;
        v27 = 10;
      }

      else
      {
        v26 = String.count.getter();
        sub_100068124(v26, v18, v20);

        v27 = static String._fromSubstring(_:)();
        v29 = v28;
      }
    }

    else
    {

      v27 = 0;
      v29 = 0xE000000000000000;
    }

    v31._countAndFlagsBits = v27;
    v31._object = v29;
    String.append(_:)(v31);

    v32._countAndFlagsBits = 10;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);

    v33._countAndFlagsBits = v46;
    v33._object = v24;
    String.append(_:)(v33);

    v7 = v48;
    v35 = v48[2];
    v34 = v48[3];
    if (v35 >= v34 >> 1)
    {
      sub_10004E820((v34 > 1), v35 + 1, 1);
      v7 = v48;
    }

    v8 += 6;
    *(v17._countAndFlagsBits + 16) = v35 + 1;
    *(v17._countAndFlagsBits + 16 * v35 + 32) = v17;
    v5 = v47 - 1;
  }

  while (v47 != 1);
  sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
  sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0, &protocol conformance descriptor for [A]);
  v36 = BidirectionalCollection<>.joined(separator:)();
  v38 = v37;

  if (a4)
  {
    if (a4 == 1)
    {

      v39._countAndFlagsBits = 0x6D6D6F6362755320;
      v39._object = 0xEC00000073646E61;
      String.append(_:)(v39);
    }
  }

  else
  {
  }

  countAndFlagsBits = String.uppercased()()._countAndFlagsBits;

  v42._countAndFlagsBits = 2618;
  v42._object = 0xE200000000000000;
  String.append(_:)(v42);

  v43._countAndFlagsBits = v36;
  v43._object = v38;
  String.append(_:)(v43);

  return countAndFlagsBits;
}

uint64_t sub_10007A7CC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_10007A7E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_10007A7FC()
{
  result = qword_1000B5EB8;
  if (!qword_1000B5EB8)
  {
    sub_100002B84(&qword_1000B5EB0, ">p");
    sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0, &protocol conformance descriptor for [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5EB8);
  }

  return result;
}

uint64_t sub_10007A8AC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10007A8BC()
{
  result = qword_1000B5EC8;
  if (!qword_1000B5EC8)
  {
    sub_100002B84(&qword_1000B5EC0, "<p");
    sub_10000BD8C(&qword_1000B5ED0, &qword_1000B5ED8, &unk_100095CD8, &protocol conformance descriptor for [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5EC8);
  }

  return result;
}

__n128 sub_10007A96C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10007A980(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10007A9C8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10007AA34(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10007AA50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007AA98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10007AAFC()
{
  result = qword_1000B5EE0;
  if (!qword_1000B5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5EE0);
  }

  return result;
}

uint64_t sub_10007AB50(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10007AB84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10007ABCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t sub_10007AC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v163) = a5;
  v175[0] = a1;
  swift_errorRetain();
  v11 = sub_1000021C0(&qword_1000B5988, &qword_100094200);
  if (swift_dynamicCast())
  {
    v162 = a4;
    v12 = a3;
    *&v161 = a2;
    v166 = *&v196[32];
    v167 = *&v196[48];
    *v168 = *&v196[64];
    *&v168[9] = *&v196[73];
    v164 = *v196;
    v165 = *&v196[16];
    v185 = *&v196[8];
    v186 = *&v196[24];
    v190 = v196[88];
    v188 = *&v196[56];
    v189 = *&v196[72];
    v187 = *&v196[40];
    v14 = *&v196[8];
    v13 = *v196;
    v15 = *&v196[16];
    if (v196[88] > 1u)
    {
      if (v196[88] == 2)
      {

        sub_10007C368(&v164);
LABEL_105:

        v107 = 0;
        v108 = 0;
        v20 = 0;
        goto LABEL_106;
      }

      if (v196[88] != 15)
      {
        goto LABEL_15;
      }

      if (*&v196[16] | *&v196[8] | *&v168[16] | *&v168[8] | *v168 | *(&v167 + 1) | v167 | *(&v166 + 1) | v166 | *(&v165 + 1))
      {
        if (*&v196[8] != 1 || *&v168[16] | *&v196[16] | *&v168[8] | *v168 | *(&v167 + 1) | v167 | *(&v166 + 1) | v166 | *(&v165 + 1))
        {
LABEL_15:
          v159 = a1;

          sub_100066EC0(&v164._object, &v197);
          sub_10007C368(&v164);

          v206 = v187;
          v207 = v188;
          v208 = v189;
          v209 = v190;
          v204 = v185;
          v205 = v186;
          a3 = v12;
          a4 = v162;
          goto LABEL_16;
        }

        sub_100071A94(v32, &v169._object);
        v169._countAndFlagsBits = 0;
        v199 = v171;
        v200 = v172;
        v201 = v173;
        v202 = v174;
        v197 = v169;
        v198 = v170;
        v14 = sub_100070838();
        v15 = v33;
        sub_10007C368(&v164);
        sub_10004CA70(&v169);
      }

      else
      {
        v109 = *(*v196 + 16);
        countAndFlagsBits = _swiftEmptyArrayStorage;
        if (v109)
        {
          v158 = a6;
          v159 = a1;
          v169._countAndFlagsBits = _swiftEmptyArrayStorage;

          sub_10004E820(0, v109, 0);
          countAndFlagsBits = _swiftEmptyArrayStorage;
          v111 = *v196 + 40;
          do
          {
            (*(*v111 + 16))(&v197);
            v112 = v202;

            sub_100027BE4(&v197);
            v169._countAndFlagsBits = countAndFlagsBits;
            v114 = countAndFlagsBits[2];
            v113 = countAndFlagsBits[3];
            if (v114 >= v113 >> 1)
            {
              sub_10004E820((v113 > 1), v114 + 1, 1);
              countAndFlagsBits = v169._countAndFlagsBits;
            }

            countAndFlagsBits[2] = v114 + 1;
            *&countAndFlagsBits[2 * v114 + 4] = v112;
            v111 += 16;
            --v109;
          }

          while (v109);

          a6 = v158;
        }

        v169._countAndFlagsBits = countAndFlagsBits;
        v117 = countAndFlagsBits[2];
        if (v117)
        {
          v118 = v117 - 1;
          v119 = &countAndFlagsBits[2 * v117 + 3];
          do
          {
            v120 = *(v119 - 1) & 0xFFFFFFFFFFFFLL;
            if ((*v119 & 0x2000000000000000) != 0)
            {
              v120 = HIBYTE(*v119) & 0xFLL;
            }

            if (v120)
            {
              break;
            }

            --v118;
            v119 -= 2;
          }

          while (v118 != -1);
        }

        __chkstk_darwin();
        v153[2] = &v169;
        v145 = sub_10002ED5C(sub_10007C3BC, v153, v143, v144);
        v147 = v146;

        sub_10007C368(&v164);
        sub_100058AA8(&v164._object);
        if (v147)
        {
          v14 = v145;
        }

        else
        {
          v14 = 0xD000000000000013;
        }

        if (v147)
        {
          v15 = v147;
        }

        else
        {
          v15 = 0x8000000100099610;
        }
      }
    }

    else
    {
      if (v196[88])
      {
        if (v196[88] == 1)
        {
          v16 = sub_10004B380(v161, v12);
          v18 = v17;
          sub_100066EC0(&v164._object, &v197);
          sub_100066EC0(&v164._object, &v197);
          v19 = v18;
          v20 = 0;
          v21 = sub_10002A02C(v16, v19, v14, v15);
          v14 = sub_1000292CC(v21, v102, v103, v104);
          v15 = v105;
          sub_10007C368(&v164);
          sub_100058AA8(&v164._object);

          v107 = 0;
          v108 = 0;
LABEL_106:
          v30 = 0;
          v31 = 0;
          goto LABEL_107;
        }

        goto LABEL_15;
      }

      sub_100079D2C(v76, *&v196[8], &v197);

      v14 = sub_100075980(v162, v163 & 1);
      v15 = v77;
      sub_10007C368(&v164);
      sub_10004CA1C(&v197);
    }

    goto LABEL_105;
  }

  v164._countAndFlagsBits = a1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v171 = v199;
    v172 = v200;
    v173 = v201;
    LOBYTE(v174) = v202;
    v169 = v197;
    v170 = v198;
    sub_1000021C0(&qword_1000B5190, &qword_100092750);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10008E640;
    *(v22 + 32) = sub_10004B380(a2, a3);
    *(v22 + 40) = v23;
    sub_10004FD40();
    v24 = swift_allocError();
    *v25 = v22;
    v26 = v170;
    *(v25 + 8) = v169;
    *(v25 + 24) = v26;
    v27 = v171;
    v28 = v172;
    v29 = v173;
    *(v25 + 88) = v174;
    *(v25 + 72) = v29;
    *(v25 + 56) = v28;
    *(v25 + 40) = v27;
    sub_10007AC38(v24, a2, a3, a4, v163 & 1, v196);
    v14 = *v196;
    v15 = *&v196[8];
    v107 = *&v196[16];
    v108 = *&v196[24];
    v20 = *&v196[32];
    v30 = *&v196[40];
    v31 = v196[48];

LABEL_107:
    *a6 = v14;
    *(a6 + 8) = v15;
    *(a6 + 16) = v107;
    *(a6 + 24) = v108;
    *(a6 + 32) = v20;
    *(a6 + 40) = v30;
    *(a6 + 48) = v31;
    return result;
  }

  sub_1000021C0(&qword_1000B5190, &qword_100092750);
  v13 = swift_allocObject();
  *(v13 + 1) = xmmword_10008E640;
  *&v161 = a2;
  v13[4] = sub_10004B380(a2, a3);
  v13[5] = v34;
  swift_errorRetain();
  v159 = a1;
  v204._countAndFlagsBits = a1;
  v209 = 13;
LABEL_16:
  v157 = v11;
  v158 = a6;
  v154 = a3;
  v162 = a4;

  sub_100079D2C(v35, 0, v203);

  v36 = sub_1000771A8();
  v38 = v37;
  sub_10004CA1C(v203);
  v194 = v36;
  v195 = v38;
  v39 = v13[2];
  v155 = v36;
  v156 = v13 + 2;
  v40 = _swiftEmptyArrayStorage;
  if (v39)
  {
    v197._countAndFlagsBits = _swiftEmptyArrayStorage;
    sub_10004E820(0, v39, 0);
    v40 = v197._countAndFlagsBits;
    v41 = v13 + 5;
    do
    {
      v42 = (*(*v41 + 24))();
      v197._countAndFlagsBits = v40;
      v45 = v40[2];
      v44 = v40[3];
      if (v45 >= v44 >> 1)
      {
        v160 = v42;
        v47 = v43;
        sub_10004E820((v44 > 1), v45 + 1, 1);
        v43 = v47;
        v42 = v160;
        v40 = v197._countAndFlagsBits;
      }

      v40[2] = v45 + 1;
      v46 = &v40[2 * v45];
      v46[4] = v42;
      v46[5] = v43;
      v41 += 2;
      --v39;
    }

    while (v39);
  }

  v197._countAndFlagsBits = v40;
  sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
  sub_10002BB28();
  v48 = BidirectionalCollection<>.joined(separator:)();
  v160 = v49;

  v50 = sub_10002DE7C(0, v13);
  a6 = sub_1000592A8(v50);
  v52 = v51;
  object = v53;
  v55 = v53;

  if (v55 <= 0xFD)
  {
    v56 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v56 = v155 & 0xFFFFFFFFFFFFLL;
    }

    if (v56)
    {
      v57._countAndFlagsBits = 10;
      v57._object = 0xE100000000000000;
      String.append(_:)(v57);
    }

    v197._countAndFlagsBits = 0;
    v197._object = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v197._countAndFlagsBits = 0x27206565532020;
    v197._object = 0xE700000000000000;
    v58._countAndFlagsBits = v48;
    v58._object = v160;
    String.append(_:)(v58);
    v59._countAndFlagsBits = 32;
    v59._object = 0xE100000000000000;
    String.append(_:)(v59);
    v60 = sub_100068E38(a6, v52, object);
    v62 = v61;
    sub_100029F88(a6, v52, object);
    v63._countAndFlagsBits = v60;
    v63._object = v62;
    String.append(_:)(v63);

    v64._countAndFlagsBits = 0xD000000000000017;
    v64._object = 0x80000001000995F0;
    String.append(_:)(v64);
    object = v197._object;
    String.append(_:)(v197);
  }

  v196[80] = v209;
  *&v196[32] = v206;
  *&v196[48] = v207;
  *&v196[64] = v208;
  *v196 = v204;
  *&v196[16] = v205;
  if (v209 != 13)
  {

    v68 = v162;
    v69 = v163;
    v70 = v161;
    if (v196[80] == 14)
    {
      sub_1000021C0(&qword_1000B5190, &qword_100092750);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_10008E640;
      *(v71 + 32) = sub_10004B380(v70, v154);
      *(v71 + 40) = v72;
      sub_100079D2C(v71, 0, &v169);

      object = sub_100075980(v68, v69 & 1);
      v74 = v73;
      sub_10004CA1C(&v169);
      v197._countAndFlagsBits = 10;
      v197._object = 0xE100000000000000;
      v75._countAndFlagsBits = object;
      v75._object = v74;
      String.append(_:)(v75);

      v108 = v197._object;
      *&v163 = v197._countAndFlagsBits;
    }

    else
    {
      *&v163 = v194;
      v108 = v195;
    }

    if (*v156)
    {
      v78 = &v156[2 * *v156];
      v79 = *v78;
      v80 = v78[1];

      v81 = sub_10004C130(v79, *(v80 + 8), 0, 0, 0, 0);
      v83 = v82;
      sub_10002A1BC();
      v84 = swift_allocError();
      v85 = *&v196[16];
      *v86 = *v196;
      *(v86 + 16) = v85;
      v88 = *&v196[48];
      v87 = *&v196[64];
      v89 = *&v196[32];
      *(v86 + 80) = v196[80];
      *(v86 + 48) = v88;
      *(v86 + 64) = v87;
      *(v86 + 32) = v89;
      sub_100066EC0(v196, &v197);
      v90 = sub_10007D37C(v84, v81, v83);
      v92 = v91;

      if (v92)
      {
        v14 = v90;
      }

      else
      {
        v14 = 0;
      }

      if (v92)
      {
        v15 = v92;
      }

      else
      {
        v15 = 0xE000000000000000;
      }

      v93 = swift_allocError();
      v94 = *&v196[16];
      *v95 = *v196;
      *(v95 + 16) = v94;
      v97 = *&v196[48];
      v96 = *&v196[64];
      v98 = *&v196[32];
      *(v95 + 80) = v196[80];
      *(v95 + 48) = v97;
      *(v95 + 64) = v96;
      *(v95 + 32) = v98;
      sub_100066EC0(v196, &v197);
      v99 = sub_10007D394(v93, v81, v83);
      v101 = v100;

      if (v101)
      {
        v20 = v99;
      }

      else
      {
        v20 = 0;
      }

      if (v101)
      {
        v30 = v101;
      }

      else
      {
        v30 = 0xE000000000000000;
      }

      sub_10007C2B4(&v204);

      v31 = 1;
      a6 = v158;
      v107 = v163;
      goto LABEL_107;
    }

    __break(1u);
    goto LABEL_115;
  }

  v65 = *v196;
  v193 = *v196;
  v166 = v206;
  v167 = v207;
  *v168 = v208;
  v168[16] = v209;
  v164 = v204;
  v165 = v205;
  sub_100066EC0(&v164, &v197);
  a6 = v158;
  object = v159;
  v66 = v162;
  v67 = v163;
  if (swift_dynamicCast())
  {

    v14 = v191;
    v15 = v192;
    v107 = v194;
    v108 = v195;

    sub_10007C2B4(&v204);

    v20 = 0;
    v31 = 1;
    v30 = 0xE000000000000000;
    goto LABEL_107;
  }

  v184 = v65;
  v187 = v206;
  v188 = v207;
  v189 = v208;
  v190 = v209;
  v185 = v204;
  v186 = v205;
  sub_100066EC0(&v185, &v197);
  if (swift_dynamicCast())
  {

    v14 = v181;
    v15 = v182;
    if (v183)
    {
      if (v183 == 1)
      {

        sub_10007C2B4(&v204);

        goto LABEL_105;
      }

      if (!v181)
      {
        goto LABEL_126;
      }

      v131 = sub_10004B380(v161, v154);
      v133 = sub_100065C18(v131, v132);
      v160 = v135;
      *&v161 = v134;
      v162 = v133;
      v136 = sub_100084154(v133, v14);
      v137 = v136;
      if (v136 >> 62)
      {
        v138 = _CocoaArrayWrapper.endIndex.getter();
        if (v138)
        {
LABEL_87:
          v197._countAndFlagsBits = _swiftEmptyArrayStorage;
          result = sub_10004E880(0, v138 & ~(v138 >> 63), 0);
          if ((v138 & 0x8000000000000000) == 0)
          {
            v139 = 0;
            v13 = v197._countAndFlagsBits;
            do
            {
              if ((v137 & 0xC000000000000001) != 0)
              {
                v140 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
              }

              v163 = *(v140 + 16);

              v197._countAndFlagsBits = v13;
              v142 = v13[2];
              v141 = v13[3];
              if (v142 >= v141 >> 1)
              {
                sub_10004E880((v141 > 1), v142 + 1, 1);
                v13 = v197._countAndFlagsBits;
              }

              ++v139;
              v13[2] = v142 + 1;
              *&v13[2 * v142 + 4] = v163;
            }

            while (v138 != v139);

            a6 = v158;
            goto LABEL_123;
          }

          goto LABEL_129;
        }
      }

      else
      {
        v138 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v138)
        {
          goto LABEL_87;
        }
      }

      v13 = _swiftEmptyArrayStorage;
LABEL_123:
      v151 = v162;
      if (!v13[2])
      {

        sub_1000021C0(&qword_1000B5190, &qword_100092750);
        v13 = swift_allocObject();
        *(v13 + 1) = xmmword_10008E640;
        *(v13 + 2) = *(v151 + 16);
      }

LABEL_126:
      sub_100071A94(v13, &v169._object);
      v169._countAndFlagsBits = 0;
      v199 = v171;
      v200 = v172;
      v201 = v173;
      v202 = v174;
      v197 = v169;
      v198 = v170;
      v14 = sub_100070838();
      v15 = v152;
      sub_10004CA70(&v169);
      goto LABEL_127;
    }

    if (!v181)
    {
LABEL_120:
      sub_100079D2C(v13, 0, &v197);

      v14 = sub_100075980(v66, v67 & 1);
      v15 = v150;
      sub_10004CA1C(&v197);
LABEL_127:

      sub_10007C2B4(&v204);
      goto LABEL_105;
    }

    v121 = sub_10004B380(v161, v154);
    v48 = sub_100065C18(v121, v122);
    v108 = v123;
    v160 = v124;
    v125 = sub_100084154(v48, v14);
    v69 = v125;
    if (!(v125 >> 62))
    {
      v126 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v126)
      {
LABEL_75:
        v157 = v108;
        v159 = object;
        v197._countAndFlagsBits = _swiftEmptyArrayStorage;
        result = sub_10004E880(0, v126 & ~(v126 >> 63), 0);
        if (v126 < 0)
        {
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        v127 = 0;
        v13 = v197._countAndFlagsBits;
        do
        {
          if ((v69 & 0xC000000000000001) != 0)
          {
            v128 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
          }

          v161 = *(v128 + 16);

          v197._countAndFlagsBits = v13;
          v130 = v13[2];
          v129 = v13[3];
          if (v130 >= v129 >> 1)
          {
            sub_10004E880((v129 > 1), v130 + 1, 1);
            v13 = v197._countAndFlagsBits;
          }

          ++v127;
          v13[2] = v130 + 1;
          *&v13[2 * v130 + 4] = v161;
        }

        while (v126 != v127);

        a6 = v158;
        goto LABEL_117;
      }

LABEL_116:

      v13 = _swiftEmptyArrayStorage;
LABEL_117:
      if (!v13[2])
      {

        sub_1000021C0(&qword_1000B5190, &qword_100092750);
        v13 = swift_allocObject();
        *(v13 + 1) = xmmword_10008E640;
        *(v13 + 2) = *(v48 + 16);
      }

      v66 = v162;
      v67 = v163;
      goto LABEL_120;
    }

LABEL_115:
    v126 = _CocoaArrayWrapper.endIndex.getter();
    if (v126)
    {
      goto LABEL_75;
    }

    goto LABEL_116;
  }

  v180 = v65;
  v199 = v206;
  v200 = v207;
  v201 = v208;
  LOBYTE(v202) = v209;
  v197 = v204;
  v198 = v205;
  sub_100066EC0(&v197, &v169);
  if (swift_dynamicCast())
  {

    v107 = v179;

    sub_10007C2B4(&v204);

    v14 = 0;
    v108 = 0;
    v20 = 0;
    v30 = 0;
    v31 = 2;
    v15 = 0xE000000000000000;
    goto LABEL_107;
  }

  v178 = v65;
  v171 = v206;
  v172 = v207;
  v173 = v208;
  LOBYTE(v174) = v209;
  v169 = v204;
  v170 = v205;
  sub_100066EC0(&v169, v175);
  sub_1000021C0(&qword_1000B5EF0, &unk_100095FE0);
  if (!swift_dynamicCast())
  {

    goto LABEL_110;
  }

  sub_100040F6C(&v177, v175);
  sub_100002AA0(v175, v176);
  dispatch thunk of LocalizedError.errorDescription.getter();
  if (!v115)
  {

    sub_100002B38(v175);
LABEL_110:

    swift_getErrorValue();
    swift_getDynamicType();
    sub_10007C31C();
    if (swift_dynamicCastMetatype())
    {
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v15 = v148;
      sub_10007C2B4(&v204);
    }

    else
    {
      v175[0] = v65;
      v14 = String.init<A>(describing:)();
      v15 = v149;
    }

    goto LABEL_113;
  }

  sub_100002AA0(v175, v176);
  result = dispatch thunk of LocalizedError.errorDescription.getter();
  if (v116)
  {
    v14 = result;
    v15 = v116;
    sub_10007C2B4(&v204);

    sub_100002B38(v175);
LABEL_113:

    v108 = 0;
    v20 = 0;
    v30 = 0;
    v31 = 2;
    v107 = 1;
    goto LABEL_107;
  }

LABEL_130:
  __break(1u);
  return result;
}

uint64_t sub_10007C074(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  if (*(v2 + 48))
  {
    if (*(v2 + 48) == 1)
    {
      v5 = *(v2 + 16);
      v6 = *(v2 + 24);
      v7 = *(v2 + 40);
      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = *(v2 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v9 = a2;
        String.append(_:)(*(v2 + 32));
        v10._countAndFlagsBits = 10;
        v10._object = 0xE100000000000000;
        String.append(_:)(v10);
        a2 = v9;
        v12 = 0x20203A706C6548;
        v11 = 0xE700000000000000;
      }

      else
      {
        v12 = 0;
        v11 = 0xE000000000000000;
      }

      v16 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v16 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        v24 = (*(a2 + 32))();
        v17._countAndFlagsBits = 8250;
        v17._object = 0xE200000000000000;
        String.append(_:)(v17);
        v18._countAndFlagsBits = v3;
        v18._object = v4;
        String.append(_:)(v18);
        v19._countAndFlagsBits = 10;
        v19._object = 0xE100000000000000;
        String.append(_:)(v19);
        v16 = v24;
      }

      v23 = v16;

      v20._countAndFlagsBits = v12;
      v20._object = v11;
      String.append(_:)(v20);

      v21._countAndFlagsBits = v5;
      v21._object = v6;
      String.append(_:)(v21);
    }

    else
    {
      v13 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v13 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (!v13)
      {
        return 0;
      }

      v23 = (*(a2 + 32))();
      v14._countAndFlagsBits = 8250;
      v14._object = 0xE200000000000000;
      String.append(_:)(v14);
      v15._countAndFlagsBits = v3;
      v15._object = v4;
      String.append(_:)(v15);
    }

    return v23;
  }

  else
  {
  }

  return v3;
}

unint64_t *sub_10007C270@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*a2 + 16))
  {
    v4 = *a2 + 16 * v3;
    v5 = *(v4 + 40);
    *a3 = *(v4 + 32);
    a3[1] = v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10007C2B4(uint64_t a1)
{
  v2 = sub_1000021C0(&qword_1000B5EE8, &qword_100095FD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10007C31C()
{
  result = qword_1000B5EF8;
  if (!qword_1000B5EF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B5EF8);
  }

  return result;
}

uint64_t sub_10007C3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000021C0(&qword_1000B51D0, &qword_100092A50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008E640;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_100041830(inited);
  sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
  sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0, &protocol conformance descriptor for [A]);
  v6 = BidirectionalCollection<>.joined(separator:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);
}

uint64_t sub_10007C500()
{
  v1 = *v0;
  if (!*v0)
  {
    v25 = 60;
    v26 = 0xE100000000000000;
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
LABEL_13:

LABEL_16:
      v22._countAndFlagsBits = v4;
      v22._object = v3;
      String.append(_:)(v22);

      v23._countAndFlagsBits = 62;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      return v25;
    }

    v6 = v0;
LABEL_15:
    sub_100059548(v6, v24);
    v4 = v24[0];
    v3 = v24[1];
    goto LABEL_16;
  }

  if (v1 == 1)
  {
    return 0;
  }

  v7 = sub_1000592A8(v1);
  if (v9 <= 0xFDu)
  {
    if ((*(v0 + 168) & 1) == 0)
    {
      v18 = v7;
      v19 = v8;
      v20 = v9;
      v21 = sub_100068E38(v7, v8, v9);
      sub_100029F88(v18, v19, v20);
      return v21;
    }

    v10 = v7;
    v11 = v8;
    v12 = v9;
    v13 = sub_100068E38(v7, v8, v9);
    v15 = v14;
    sub_100029F88(v10, v11, v12);
    v25 = v13;
    v26 = v15;
    v16._countAndFlagsBits = 15392;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    v6 = v0;
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v17 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v17 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10007C6B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t sub_10007C75C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = result + 48;
LABEL_2:
  v5 = (v4 + 24 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_25;
    }

    v8 = *v5;
    v5 += 24;
    v7 = v8;
    ++v2;
    if ((v8 & 0xC0) == 0x40)
    {
      v10 = *(v5 - 5);
      v9 = *(v5 - 4);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10004E920(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        result = sub_10004E920((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[3 * v12];
      v13[4] = v10;
      v13[5] = v9;
      *(v13 + 48) = v7;
      v2 = v6;
      goto LABEL_2;
    }
  }

  v14 = 0;
LABEL_13:
  v15 = (v1 + 48 + 24 * v14);
  while (v3 != v14)
  {
    if (v14 >= v3)
    {
      goto LABEL_26;
    }

    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_27;
    }

    v18 = *v15;
    v15 += 24;
    v17 = v18;
    ++v14;
    if ((v18 & 0xC0) != 0x40)
    {
      v19 = *(v15 - 5);
      v20 = *(v15 - 4);
      sub_10002BB8C(v19, v20, v17);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10004E920(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v22 = _swiftEmptyArrayStorage[2];
      v21 = _swiftEmptyArrayStorage[3];
      if (v22 >= v21 >> 1)
      {
        result = sub_10004E920((v21 > 1), v22 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v22 + 1;
      v23 = &_swiftEmptyArrayStorage[3 * v22];
      v23[4] = v19;
      v23[5] = v20;
      *(v23 + 48) = v17;
      v14 = v16;
      goto LABEL_13;
    }
  }

  sub_100041B10(_swiftEmptyArrayStorage);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10007C97C(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a3 + 16);
  if (!v6)
  {
    v9 = _swiftEmptyArrayStorage;
    v11 = _swiftEmptyArrayStorage[2];
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  v9 = sub_10004E3E8(*(a3 + 16), 0);
  v10 = sub_100062078(&v92, v9 + 32, v6, a3, a4);

  if (v10 == v6)
  {
    v11 = *(v9 + 2);
    if (v11)
    {
LABEL_4:
      v89._countAndFlagsBits = v5;
      v89._object = a2;
      if (v11 < 0xD)
      {
        v91 = _swiftEmptyArrayStorage;
        sub_10004E820(0, v11, 0);
        v37 = 32;
        v38 = _swiftEmptyArrayStorage;
        do
        {
          v39 = *&v9[v37];
          v40 = *&v9[v37 + 16];
          v41 = *&v9[v37 + 48];
          v94 = *&v9[v37 + 32];
          v95 = v41;
          v92 = v39;
          v93 = v40;
          v42 = *&v9[v37 + 64];
          v43 = *&v9[v37 + 80];
          v44 = *&v9[v37 + 112];
          v98 = *&v9[v37 + 96];
          v99 = v44;
          v96 = v42;
          v97 = v43;
          v45 = *&v9[v37 + 128];
          v46 = *&v9[v37 + 144];
          v47 = *&v9[v37 + 176];
          v102 = *&v9[v37 + 160];
          v103 = v47;
          v100 = v45;
          v101 = v46;
          sub_1000289DC(&v92, v90);
          v90[0]._countAndFlagsBits = sub_10007C500();
          v90[0]._object = v48;
          v49 = BYTE8(v92);
          if ((BYTE8(v92) & 2) != 0)
          {
            v50._countAndFlagsBits = 774778400;
            v50._object = 0xE400000000000000;
            String.append(_:)(v50);
          }

          if (v49)
          {
            String.append(_:)(v90[0]);

            v51._countAndFlagsBits = 93;
            v51._object = 0xE100000000000000;
            String.append(_:)(v51);
            v90[0]._countAndFlagsBits = 91;
            v90[0]._object = 0xE100000000000000;
          }

          if (BYTE1(v101) == 5)
          {
            String.append(_:)(v90[0]);

            sub_100028A38(&v92);
            countAndFlagsBits = 2108717;
            object = 0xE300000000000000;
          }

          else
          {
            sub_100028A38(&v92);
            countAndFlagsBits = v90[0]._countAndFlagsBits;
            object = v90[0]._object;
          }

          v91 = v38;
          v55 = v38[2];
          v54 = v38[3];
          if (v55 >= v54 >> 1)
          {
            sub_10004E820((v54 > 1), v55 + 1, 1);
            v38 = v91;
          }

          v38[2] = v55 + 1;
          v56 = &v38[2 * v55];
          v56[4] = countAndFlagsBits;
          v56[5] = object;
          v37 += 192;
          --v11;
        }

        while (v11);

        v90[0]._countAndFlagsBits = v38;
        sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
        sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0, &protocol conformance descriptor for [A]);
        v57 = BidirectionalCollection<>.joined(separator:)();
        v59 = v58;

        v90[0] = v89;

        v60._countAndFlagsBits = 32;
        v60._object = 0xE100000000000000;
        String.append(_:)(v60);
        v61._countAndFlagsBits = v57;
        v61._object = v59;
        String.append(_:)(v61);
      }

      else
      {
        v12 = 0;
        do
        {
          v13 = *(v9 + 2);
          v14 = (192 * v12) | 0x20;
          v15 = v12;
          while (1)
          {
            if (v15 >= v13)
            {
              __break(1u);
              goto LABEL_49;
            }

            v16 = *&v9[v14];
            v17 = *&v9[v14 + 16];
            v18 = *&v9[v14 + 48];
            v94 = *&v9[v14 + 32];
            v95 = v18;
            v92 = v16;
            v93 = v17;
            v19 = *&v9[v14 + 64];
            v20 = *&v9[v14 + 80];
            v21 = *&v9[v14 + 112];
            v98 = *&v9[v14 + 96];
            v99 = v21;
            v96 = v19;
            v97 = v20;
            v22 = *&v9[v14 + 128];
            v23 = *&v9[v14 + 144];
            v24 = *&v9[v14 + 176];
            v102 = *&v9[v14 + 160];
            v103 = v24;
            v100 = v22;
            v101 = v23;
            v12 = v15 + 1;
            if (!v92 || (BYTE8(v92) & 1) == 0)
            {
              break;
            }

            v14 += 192;
            ++v15;
            if (v11 == v12)
            {
              goto LABEL_32;
            }
          }

          sub_1000289DC(&v92, v90);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_10004E840(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v26 = _swiftEmptyArrayStorage[2];
          v25 = _swiftEmptyArrayStorage[3];
          if (v26 >= v25 >> 1)
          {
            result = sub_10004E840((v25 > 1), v26 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v26 + 1;
          v27 = &_swiftEmptyArrayStorage[24 * v26];
          v28 = v92;
          v29 = v93;
          v30 = v95;
          v27[4] = v94;
          v27[5] = v30;
          v27[2] = v28;
          v27[3] = v29;
          v31 = v96;
          v32 = v97;
          v33 = v99;
          v27[8] = v98;
          v27[9] = v33;
          v27[6] = v31;
          v27[7] = v32;
          v34 = v100;
          v35 = v101;
          v36 = v103;
          v27[12] = v102;
          v27[13] = v36;
          v27[10] = v34;
          v27[11] = v35;
        }

        while (v11 - 1 != v15);
LABEL_32:

        v62 = _swiftEmptyArrayStorage[2];
        if ((v62 - 13) < 0xFFFFFFFFFFFFFFF4)
        {

          *&v92 = v89._countAndFlagsBits;
          *(&v92 + 1) = a2;

          v63._countAndFlagsBits = 0x6E6F6974706F3C20;
          v63._object = 0xEA00000000003E73;
          String.append(_:)(v63);
          return v92;
        }

        v91 = _swiftEmptyArrayStorage;
        sub_10004E820(0, v62, 0);
        v64 = 4;
        v65 = v91;
        do
        {
          v66 = *&_swiftEmptyArrayStorage[v64];
          v67 = *&_swiftEmptyArrayStorage[v64 + 2];
          v68 = *&_swiftEmptyArrayStorage[v64 + 6];
          v94 = *&_swiftEmptyArrayStorage[v64 + 4];
          v95 = v68;
          v92 = v66;
          v93 = v67;
          v69 = *&_swiftEmptyArrayStorage[v64 + 8];
          v70 = *&_swiftEmptyArrayStorage[v64 + 10];
          v71 = *&_swiftEmptyArrayStorage[v64 + 14];
          v98 = *&_swiftEmptyArrayStorage[v64 + 12];
          v99 = v71;
          v96 = v69;
          v97 = v70;
          v72 = *&_swiftEmptyArrayStorage[v64 + 16];
          v73 = *&_swiftEmptyArrayStorage[v64 + 18];
          v74 = *&_swiftEmptyArrayStorage[v64 + 22];
          v102 = *&_swiftEmptyArrayStorage[v64 + 20];
          v103 = v74;
          v100 = v72;
          v101 = v73;
          sub_1000289DC(&v92, v90);
          v90[0]._countAndFlagsBits = sub_10007C500();
          v90[0]._object = v75;
          v76 = BYTE8(v92);
          if ((BYTE8(v92) & 2) != 0)
          {
            v77._countAndFlagsBits = 774778400;
            v77._object = 0xE400000000000000;
            String.append(_:)(v77);
          }

          if (v76)
          {
            String.append(_:)(v90[0]);

            v78._countAndFlagsBits = 93;
            v78._object = 0xE100000000000000;
            String.append(_:)(v78);
            v90[0]._countAndFlagsBits = 91;
            v90[0]._object = 0xE100000000000000;
          }

          if (BYTE1(v101) == 5)
          {
            String.append(_:)(v90[0]);

            sub_100028A38(&v92);
            v80 = 2108717;
            v79 = 0xE300000000000000;
          }

          else
          {
            sub_100028A38(&v92);
            v80 = v90[0]._countAndFlagsBits;
            v79 = v90[0]._object;
          }

          v91 = v65;
          v82 = *(v65 + 16);
          v81 = *(v65 + 24);
          if (v82 >= v81 >> 1)
          {
            sub_10004E820((v81 > 1), v82 + 1, 1);
            v65 = v91;
          }

          *(v65 + 16) = v82 + 1;
          v83 = v65 + 16 * v82;
          *(v83 + 32) = v80;
          *(v83 + 40) = v79;
          v64 += 24;
          --v62;
        }

        while (v62);

        v90[0]._countAndFlagsBits = v65;
        sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
        sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0, &protocol conformance descriptor for [A]);
        v84 = BidirectionalCollection<>.joined(separator:)();
        v86 = v85;

        v90[0]._countAndFlagsBits = 0;
        v90[0]._object = 0xE000000000000000;
        _StringGuts.grow(_:)(17);

        v90[0] = v89;
        v87._countAndFlagsBits = 0x6F6974706F3C5B20;
        v87._object = 0xED0000205D3E736ELL;
        String.append(_:)(v87);
        v88._countAndFlagsBits = v84;
        v88._object = v86;
        String.append(_:)(v88);
      }

      return v90[0]._countAndFlagsBits;
    }

LABEL_19:

    return v5;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_10007D0A0()
{
  v1 = v0;
  v2 = *v0;
  if (v2)
  {
    if (v2 == 1)
    {
      return 0;
    }

    v5 = sub_10007C75C(v4);
    sub_10002F06C(v2);
    v6 = *(v5 + 16);
    if (v6)
    {
      v29[0] = _swiftEmptyArrayStorage;
      sub_10004E820(0, v6, 0);
      v7 = _swiftEmptyArrayStorage;
      v8 = (v5 + 48);
      while (1)
      {
        v10 = *(v8 - 2);
        v9 = *(v8 - 1);
        v11 = *v8;
        if (!(v11 >> 6))
        {
          break;
        }

        if (v11 >> 6 != 1)
        {
          v30 = 45;
          v13 = 0xE100000000000000;
          goto LABEL_12;
        }

        v30 = 0;
        v31 = 0xE000000000000000;

        v12._countAndFlagsBits = 45;
        v12._object = 0xE100000000000000;
        String.append(_:)(v12);
        Character.write<A>(to:)();
LABEL_13:
        sub_100028AE8(v10, v9, v11);
        v15 = v30;
        v16 = v31;
        v29[0] = v7;
        v18 = v7[2];
        v17 = v7[3];
        if (v18 >= v17 >> 1)
        {
          sub_10004E820((v17 > 1), v18 + 1, 1);
          v7 = v29[0];
        }

        v8 += 24;
        v7[2] = v18 + 1;
        v19 = &v7[2 * v18];
        v19[4] = v15;
        v19[5] = v16;
        if (!--v6)
        {

          goto LABEL_18;
        }
      }

      v30 = 11565;
      v13 = 0xE200000000000000;
LABEL_12:
      v31 = v13;
      sub_10002BB8C(v10, v9, v11);
      v14._countAndFlagsBits = v10;
      v14._object = v9;
      String.append(_:)(v14);
      goto LABEL_13;
    }

    v7 = _swiftEmptyArrayStorage;
LABEL_18:
    v30 = v7;
    sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
    sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0, &protocol conformance descriptor for [A]);
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    if ((v1[21] & 1) == 0)
    {
      return v20;
    }

    v30 = v20;
    v31 = v22;
    v23._countAndFlagsBits = 15392;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
  }

  else
  {
    v30 = 60;
    v31 = 0xE100000000000000;
  }

  v25 = v1[11];
  v24 = v1[12];
  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
  }

  else
  {
    sub_100059548(v1, v29);
    v25 = v29[0];
    v24 = v29[1];
  }

  v27._countAndFlagsBits = v25;
  v27._object = v24;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 62;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  return v30;
}

uint64_t sub_10007D3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v26 = a1;
  swift_errorRetain();
  sub_1000021C0(&qword_1000B5988, &qword_100094200);
  if (swift_dynamicCast())
  {
    v16 = *&v25[48];
    *v17 = *&v25[64];
    v17[16] = v25[80];
    v13 = *v25;
    v14 = *&v25[16];
    v15 = *&v25[32];
    *&v18 = a2;
    *(&v18 + 1) = a3;
    v19 = *v25;
    v20 = *&v25[16];
    v24 = v25[80];
    v22 = *&v25[48];
    v23 = *&v25[64];
    v21 = *&v25[32];
    v27 = v18;
    v29 = *&v25[16];
    v28 = *v25;
    v33 = v25[80];
    v32 = *&v25[64];
    v31 = *&v25[48];
    v30 = *&v25[32];

    v8 = sub_100066EC0(&v13, v12);
    v9 = a4(v8);
    sub_1000800E0(&v18);
    sub_100058AA8(&v13);
  }

  else
  {

    v26 = a1;
    swift_errorRetain();
    if (!swift_dynamicCast())
    {

      return 0;
    }

    v16 = *&v25[48];
    *v17 = *&v25[64];
    *&v17[9] = *&v25[73];
    v13 = *v25;
    v14 = *&v25[16];
    v15 = *&v25[32];
    *&v18 = a2;
    *(&v18 + 1) = a3;
    v19 = *&v25[8];
    v20 = *&v25[24];
    v24 = v25[88];
    v22 = *&v25[56];
    v23 = *&v25[72];
    v21 = *&v25[40];
    v29 = *&v25[24];
    v28 = *&v25[8];
    v27 = v18;
    v33 = v25[88];
    v32 = *&v25[72];
    v31 = *&v25[56];
    v30 = *&v25[40];

    v10 = sub_100066EC0(&v13 + 8, v12);
    v9 = a4(v10);
    sub_1000800E0(&v18);
    sub_10007C368(&v13);
  }

  return v9;
}

uint64_t sub_10007D630()
{
  v1 = *(v0 + 32);
  v56 = *(v0 + 16);
  v57 = v1;
  v2 = *(v0 + 64);
  v58 = *(v0 + 48);
  v59 = v2;
  v60 = *(v0 + 80);
  v61 = *(v0 + 96);
  v3 = *(&v57 + 1);
  v4 = v57;
  v5 = *(&v58 + 1);
  v6 = v58;
  v7 = v2;
  v8 = v60;
  result = 0;
  switch(v61)
  {
    case 3:
      if (v56._object)
      {
        v10 = v56;
        sub_100066EC0(&v56, &v49);
        v11 = sub_100080E4C(v10._countAndFlagsBits, v10._object);
        goto LABEL_10;
      }

      return sub_1000810A4();
    case 4:
      sub_100066EC0(&v56, &v49);
      v11 = sub_1000812C0(v3, v6, v5);
      goto LABEL_10;
    case 5:

      _StringGuts.grow(_:)(18);

      *&v49 = 0xD000000000000010;
      *(&v49 + 1) = 0x80000001000996D0;
      String.append(_:)(v56);
      goto LABEL_21;
    case 6:
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(19);
      v23._countAndFlagsBits = 0xD000000000000011;
      v23._object = 0x80000001000996B0;
      String.append(_:)(v23);
      Character.write<A>(to:)();
LABEL_21:
      sub_100058AA8(&v56);
      return v49;
    case 7:
      object = v56._object;
      sub_100066EC0(&v56, &v49);
      v14 = sub_100081C98(object, v4, v3);
      sub_100028AE8(object, v4, v3);
      goto LABEL_23;
    case 8:
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      sub_10002BB8C(*(&v57 + 1), v58, BYTE8(v58));

      _StringGuts.grow(_:)(64);
      v25._countAndFlagsBits = 0x6974706F20656854;
      v25._object = 0xEC00000027206E6FLL;
      String.append(_:)(v25);
      v26 = sub_100068E38(*(&v57 + 1), v58, BYTE8(v58));
      v28 = v27;
      sub_100028AE8(*(&v57 + 1), v58, BYTE8(v58));
      v29._countAndFlagsBits = v26;
      v29._object = v28;
      String.append(_:)(v29);

      v30._countAndFlagsBits = 0xD000000000000020;
      v30._object = 0x80000001000996F0;
      String.append(_:)(v30);
      String.append(_:)(v7);

      v31._object = 0x8000000100099720;
      v31._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v31);
      return v49;
    case 9:
      countAndFlagsBits = v56._countAndFlagsBits;
      sub_100066EC0(&v56, &v49);
      v11 = sub_100081DEC(countAndFlagsBits);
LABEL_10:
      v14 = v11;
      sub_100058AA8(&v56);
      return v14;
    case 10:
      v24 = v56;
      sub_100066EC0(&v56, &v49);
      v14 = sub_100082044(v24._countAndFlagsBits, v24._object, v4);

      goto LABEL_23;
    case 11:

      v14 = sub_10007E040(v56._countAndFlagsBits, v56._object, v57);

LABEL_23:

      return v14;
    case 12:
      v15 = v56._object;
      sub_100066EC0(&v56, &v49);
      v16 = sub_1000821F8(v15, v4, v3, v6, v5, v7._countAndFlagsBits, v7._object, v8, *(&v8 + 1));

      sub_100029F88(v15, v4, v3);

      return v16;
    case 13:
      *&v42 = v56._countAndFlagsBits;
      v22 = v56._countAndFlagsBits;
      sub_100066EC0(&v56, &v49);
      swift_errorRetain();
      sub_1000021C0(&qword_1000B5988, &qword_100094200);
      sub_1000021C0(&qword_1000B5EF0, &unk_100095FE0);
      if (swift_dynamicCast())
      {
        sub_100040F6C(&v35, &v49);
        sub_100002AA0(&v49, *(&v50 + 1));
        v14 = dispatch thunk of LocalizedError.errorDescription.getter();
        sub_100058AA8(&v56);
        sub_100002B38(&v49);

        return v14;
      }

      *&v49 = v22;
      return String.init<A>(describing:)();
    case 14:
      v48 = v56._countAndFlagsBits;
      v12 = v56._countAndFlagsBits;
      sub_100066EC0(&v56, &v49);
      swift_errorRetain();
      sub_1000021C0(&qword_1000B5988, &qword_100094200);
      if (swift_dynamicCast())
      {
        v33[3] = v45;
        v33[4] = v46;
        v33[0] = v42;
        v33[1] = v43;
        v33[2] = v44;
        v34 = v47;
        v13 = *(v0 + 8);
        *&v35 = *v0;
        *(&v35 + 1) = v13;
        v37 = v43;
        v36 = v42;
        v41 = v47;
        v40 = v46;
        v39 = v45;
        v38 = v44;
        v49 = v35;
        v50 = v42;
        v55 = v47;
        v53 = v45;
        v54 = v46;
        v51 = v43;
        v52 = v44;

        sub_100066EC0(v33, &v32);
        v14 = sub_10007D630();
        sub_100058AA8(&v56);
        sub_1000800E0(&v35);
        sub_100058AA8(v33);

        return v14;
      }

      *&v33[0] = v12;
      swift_errorRetain();
      sub_1000021C0(&qword_1000B5EF0, &unk_100095FE0);
      if (swift_dynamicCast())
      {
        sub_100040F6C(&v49, &v35);
        sub_100002AA0(&v35, *(&v36 + 1));
        v14 = dispatch thunk of LocalizedError.errorDescription.getter();
        sub_100058AA8(&v56);
        sub_100002B38(&v35);

        return v14;
      }

      *&v49 = v12;
      return String.init<A>(describing:)();
    case 15:
      v18 = v58 | *(&v58 + 1) | v2._countAndFlagsBits;
      v19 = v2._object | v60 | *(&v60 + 1);
      if (!(v57 | v56._object | v56._countAndFlagsBits | *(&v57 + 1) | v18 | v19))
      {
        return 0;
      }

      v20 = v57 | v56._object | *(&v57 + 1) | v18 | v19;
      if (v56._countAndFlagsBits == 1 && !v20)
      {
        return 0;
      }

      if (v56._countAndFlagsBits == 2 && !v20)
      {
        return 0xD00000000000004BLL;
      }

      if (v56._countAndFlagsBits != 3 || v20)
      {
        return 0xD00000000000001CLL;
      }

      return 0xD000000000000043;
    default:
      return result;
  }
}

uint64_t sub_10007DE10()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 96);
  if (v4 == 7)
  {
    return sub_10007E504(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  }

  if (v4 == 11)
  {
    return sub_10007E79C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  if (v4 != 12)
  {
    return 0;
  }

  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  sub_10007EC5C(v5, v6, v7, &v28);
  if (!v29)
  {
    return 0;
  }

  v9 = v30;
  v8 = v31;

  sub_100002BCC(&v28, &qword_1000B5F00, &unk_100096000);
  v10 = sub_10007E9C4(v5, v6, v7);
  if (!*(v10 + 16))
  {

    return 0;
  }

  v11 = *(v10 + 176);
  v36 = *(v10 + 160);
  v37 = v11;
  v12 = *(v10 + 208);
  v38 = *(v10 + 192);
  v39 = v12;
  v13 = *(v10 + 112);
  v32[4] = *(v10 + 96);
  v33 = v13;
  v14 = *(v10 + 144);
  v34 = *(v10 + 128);
  v35 = v14;
  v15 = *(v10 + 48);
  v32[0] = *(v10 + 32);
  v32[1] = v15;
  v16 = *(v10 + 80);
  v32[2] = *(v10 + 64);
  v32[3] = v16;
  sub_1000289DC(v32, &v26);

  v18 = *(&v33 + 1);
  v17 = v34;
  v19 = BYTE7(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v19 = *(&v33 + 1) & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    sub_100059548(v32, &v26);
    sub_100028A38(v32);
    v18 = v26;
    v17 = v27;
    if (v3 > 0xFD)
    {
      goto LABEL_10;
    }

LABEL_17:
    v26 = sub_100068E38(v2, v1, v3);
    v27 = v21;
    v22._countAndFlagsBits = 15392;
    v22._object = 0xE200000000000000;
    String.append(_:)(v22);
    goto LABEL_18;
  }

  sub_100028A38(v32);
  if (v3 <= 0xFD)
  {
    goto LABEL_17;
  }

LABEL_10:
  v26 = 60;
  v27 = 0xE100000000000000;
LABEL_18:
  v23._countAndFlagsBits = v18;
  v23._object = v17;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 2105406;
  v24._object = 0xE300000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = v9;
  v25._object = v8;
  String.append(_:)(v25);

  return v26;
}

uint64_t sub_10007E040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  result = sub_10007E9C4(a1, a2, a3);
  v7 = *(result + 16);
  if (v7)
  {
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    v10 = result + 48;
    do
    {
      v11 = *(result + 16);
      v12 = v7 - v8;
      v13 = (v10 + 192 * v8);
      while (1)
      {
        if (v8 >= v11)
        {
          __break(1u);
          goto LABEL_31;
        }

        v14 = v13[-1];
        v15 = *v13;
        v16 = v13[2];
        v57[2] = v13[1];
        v57[3] = v16;
        v57[0] = v14;
        v57[1] = v15;
        v17 = v13[3];
        v18 = v13[4];
        v19 = v13[6];
        v58 = v13[5];
        v59 = v19;
        v57[4] = v17;
        v57[5] = v18;
        v20 = v13[7];
        v21 = v13[8];
        v22 = v13[10];
        v62 = v13[9];
        v63 = v22;
        v60 = v20;
        v61 = v21;
        if (!LOBYTE(v58._object))
        {
          break;
        }

        v13 += 12;
        ++v8;
        if (!--v12)
        {
          goto LABEL_22;
        }
      }

      v41 = v10;
      v42 = v7;
      v43 = v4;
      v44 = result;
      v53 = v13[7];
      v54 = v13[8];
      v55 = v13[9];
      v56 = v13[10];
      v49 = v13[3];
      v50 = v13[4];
      v51 = v13[5];
      v52 = v13[6];
      v46 = *v13;
      v47 = v13[1];
      v48 = v13[2];
      v64 = *&v57[0];
      v65 = *(&v57[0] + 1) & 0xFFFFFFFFFFFFFFFELL;
      v66 = v46;
      v67 = v47;
      v70 = v50;
      v71 = v51;
      v68 = v48;
      v69 = v49;
      v75 = v55;
      v76 = v56;
      v73 = v53;
      v74 = v54;
      v72 = v52;
      sub_1000289DC(v57, &v46);
      sub_1000289DC(v57, &v46);
      v46._countAndFlagsBits = sub_10007C500();
      v46._object = v23;
      v24 = v65;
      if ((v65 & 2) != 0)
      {
        v25._countAndFlagsBits = 774778400;
        v25._object = 0xE400000000000000;
        String.append(_:)(v25);
      }

      if (v24)
      {
        v45._countAndFlagsBits = 91;
        v45._object = 0xE100000000000000;
        String.append(_:)(v46);

        v26._countAndFlagsBits = 93;
        v26._object = 0xE100000000000000;
        String.append(_:)(v26);
        v46 = v45;
      }

      if (BYTE1(v74._countAndFlagsBits) == 5)
      {
        String.append(_:)(v46);

        sub_100028A38(v57);
        sub_100028A38(&v64);
        object = 0xE300000000000000;
        countAndFlagsBits = 2108717;
      }

      else
      {
        sub_100028A38(v57);
        sub_100028A38(&v64);
        object = v46._object;
        countAndFlagsBits = v46._countAndFlagsBits;
      }

      v29 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100042F3C(0, *(v9 + 2) + 1, 1, v9);
      }

      v31 = *(v9 + 2);
      v30 = *(v9 + 3);
      result = v44;
      if (v31 >= v30 >> 1)
      {
        v9 = sub_100042F3C((v30 > 1), v31 + 1, 1, v9);
        result = v44;
      }

      ++v8;
      *(v9 + 2) = v31 + 1;
      v32 = &v9[16 * v31];
      *(v32 + 4) = countAndFlagsBits;
      *(v32 + 5) = object;
      v3 = v29;
      v7 = v42;
      v4 = v43;
      v10 = v41;
    }

    while (v12 != 1);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

LABEL_22:

  v33 = *(v9 + 2);
  if (!v33)
  {

    *&v57[0] = 0;
    *(&v57[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(86);
    v36._countAndFlagsBits = 0xD000000000000022;
    v36._object = 0x80000001000999F0;
    String.append(_:)(v36);
    sub_10007C3DC(a1, v4, v3);
    v37 = 0xD000000000000032;
    v38 = 0x8000000100099A20;
LABEL_29:
    String.append(_:)(*&v37);
    return *&v57[0];
  }

  if (v33 != 1)
  {
    *&v57[0] = v9;
    sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
    sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0, &protocol conformance descriptor for [A]);
    v34 = BidirectionalCollection<>.joined(separator:)();
    v35 = v39;

    *&v57[0] = 0;
    *(&v57[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    *&v57[0] = 0xD000000000000011;
    *(&v57[0] + 1) = 0x80000001000999B0;
    goto LABEL_28;
  }

  *&v57[0] = 0;
  *(&v57[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  *&v57[0] = 0xD00000000000001BLL;
  *(&v57[0] + 1) = 0x80000001000999D0;
  if (*(v9 + 2))
  {
    v34 = *(v9 + 4);
    v35 = *(v9 + 5);

LABEL_28:
    v40._countAndFlagsBits = v34;
    v40._object = v35;
    String.append(_:)(v40);

    v37 = 39;
    v38 = 0xE100000000000000;
    goto LABEL_29;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10007E504(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = *v3;
  v37 = v3[1];
  v38 = v7;
  v8 = *(v7 + 16);
  sub_10002600C(&v38, v39, &qword_1000B5ED8, &unk_100095CD8);
  sub_10002600C(&v37, v39, &qword_1000B5F08, &unk_100096010);
  if (v8)
  {
    v9 = (v7 + 32);
    while (1)
    {
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[3];
      v39[2] = v9[2];
      v40 = v12;
      v39[0] = v10;
      v39[1] = v11;
      v13 = v9[4];
      v14 = v9[5];
      v15 = v9[7];
      v43 = v9[6];
      v44 = v15;
      v41 = v13;
      v42 = v14;
      v16 = v9[8];
      v17 = v9[9];
      v18 = v9[11];
      v47 = v9[10];
      v48 = v18;
      v45 = v16;
      v46 = v17;
      v19 = _swiftEmptyArrayStorage;
      if (*&v39[0] >= 2uLL)
      {
      }

      v34 = a1;
      v35 = a2;
      v36 = a3;
      __chkstk_darwin();
      v32[2] = &v34;
      sub_1000289DC(v39, v33);
      v20 = sub_100083C24(sub_100080E30, v32, v19);

      if (v20)
      {
        break;
      }

      sub_100028A38(v39);
      v9 += 12;
      if (!--v8)
      {
        goto LABEL_7;
      }
    }

    sub_100002BCC(&v38, &qword_1000B5ED8, &unk_100095CD8);
    sub_100002BCC(&v37, &qword_1000B5F08, &unk_100096010);
    v23 = *(&v40 + 1);
    v22 = v41;
    v25 = *(&v42 + 1);
    v24 = v43;

    v33[0] = sub_100068E38(a1, a2, a3);
    v33[1] = v26;
    v27._countAndFlagsBits = 15392;
    v27._object = 0xE200000000000000;
    String.append(_:)(v27);
    v28 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v28 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
    }

    else
    {
      sub_100059548(v39, &v34);
      v25 = v34;
      v24 = v35;
    }

    v29._countAndFlagsBits = v25;
    v29._object = v24;
    String.append(_:)(v29);

    v30._countAndFlagsBits = 2105406;
    v30._object = 0xE300000000000000;
    String.append(_:)(v30);
    v31._countAndFlagsBits = v23;
    v31._object = v22;
    String.append(_:)(v31);

    sub_100028A38(v39);
    return v33[0];
  }

  else
  {
LABEL_7:
    sub_100002BCC(&v38, &qword_1000B5ED8, &unk_100095CD8);
    sub_100002BCC(&v37, &qword_1000B5F08, &unk_100096010);
    return 0;
  }
}

uint64_t sub_10007E79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10007EC5C(a1, a2, a3, &v33);
  if (!v34)
  {
    return 0;
  }

  v7 = v35;
  v6 = v36;

  sub_100002BCC(&v33, &qword_1000B5F00, &unk_100096000);
  v8 = sub_10007E9C4(a1, a2, a3);
  if (!*(v8 + 16))
  {

    return 0;
  }

  v9 = *(v8 + 176);
  v41 = *(v8 + 160);
  v42 = v9;
  v10 = *(v8 + 208);
  v43 = *(v8 + 192);
  v44 = v10;
  v11 = *(v8 + 112);
  v37[4] = *(v8 + 96);
  v38 = v11;
  v12 = *(v8 + 144);
  v39 = *(v8 + 128);
  v40 = v12;
  v13 = *(v8 + 48);
  v37[0] = *(v8 + 32);
  v37[1] = v13;
  v14 = *(v8 + 80);
  v37[2] = *(v8 + 64);
  v37[3] = v14;
  v15 = *&v37[0];
  sub_1000289DC(v37, &v31);

  if (v15 >= 2)
  {
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v18 = *(&v38 + 1);
  v17 = v39;
  if (v15[2])
  {
    v19 = v15[4];
    v20 = v15[5];
    v21 = *(v15 + 48);
    sub_10002BB8C(v19, v20, v21);

    v22 = sub_100068E38(v19, v20, v21);
    v24 = v23;
    sub_100028AE8(v19, v20, v21);
    v31 = v22;
    v32 = v24;
    v25._countAndFlagsBits = 15392;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
  }

  else
  {

    v31 = 60;
    v32 = 0xE100000000000000;
  }

  v26 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v26 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
  }

  else
  {
    sub_100059548(v37, v30);
    v18 = v30[0];
    v17 = v30[1];
  }

  v27._countAndFlagsBits = v18;
  v27._object = v17;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 2105406;
  v28._object = 0xE300000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = v7;
  v29._object = v6;
  String.append(_:)(v29);

  sub_100028A38(v37);
  return v31;
}

uint64_t sub_10007E9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = a3;
  v5 = *v3;
  v56 = v3[1];
  v57[0] = v5;
  v6 = *(v5 + 16);
  sub_10002600C(v57, &v43, &qword_1000B5ED8, &unk_100095CD8);
  result = sub_10002600C(&v56, &v43, &qword_1000B5F08, &unk_100096010);
  if (v6)
  {
    v8 = 0;
    v9 = v5 + 32;
    v10 = _swiftEmptyArrayStorage;
    v37 = v5 + 32;
    do
    {
      v38 = v10;
      v11 = (v9 + 192 * v8);
      v12 = v8;
      while (1)
      {
        if (v12 >= v6)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v13 = *v11;
        v14 = v11[1];
        v15 = v11[3];
        v45 = v11[2];
        v46 = v15;
        v43 = v13;
        v44 = v14;
        v16 = v11[4];
        v17 = v11[5];
        v18 = v11[7];
        v49 = v11[6];
        v50 = v18;
        v47 = v16;
        v48 = v17;
        v19 = v11[8];
        v20 = v11[9];
        v21 = v11[11];
        v53 = v11[10];
        v54 = v21;
        v51 = v19;
        v52 = v20;
        v8 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_18;
        }

        v22 = v45;
        v42[0] = a1;
        v42[1] = v39;
        v42[2] = v40;
        __chkstk_darwin();
        v36[2] = v42;
        sub_1000289DC(&v43, &v41);

        v23 = sub_100083B60(sub_100062C3C, v36, v22);

        if (v23)
        {
          break;
        }

        result = sub_100028A38(&v43);
        ++v12;
        v11 += 12;
        if (v8 == v6)
        {
          v10 = v38;
          goto LABEL_16;
        }
      }

      v10 = v38;
      result = swift_isUniquelyReferenced_nonNull_native();
      v55 = v10;
      if ((result & 1) == 0)
      {
        result = sub_10004E840(0, v10[2] + 1, 1);
        v10 = v55;
      }

      v9 = v37;
      v25 = v10[2];
      v24 = v10[3];
      if (v25 >= v24 >> 1)
      {
        result = sub_10004E840((v24 > 1), v25 + 1, 1);
        v10 = v55;
      }

      v10[2] = v25 + 1;
      v26 = &v10[24 * v25];
      v27 = v43;
      v28 = v44;
      v29 = v46;
      v26[4] = v45;
      v26[5] = v29;
      v26[2] = v27;
      v26[3] = v28;
      v30 = v47;
      v31 = v48;
      v32 = v50;
      v26[8] = v49;
      v26[9] = v32;
      v26[6] = v30;
      v26[7] = v31;
      v33 = v51;
      v34 = v52;
      v35 = v54;
      v26[12] = v53;
      v26[13] = v35;
      v26[10] = v33;
      v26[11] = v34;
    }

    while (v8 != v6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

LABEL_16:
  sub_100002BCC(v57, &qword_1000B5ED8, &unk_100095CD8);
  sub_100002BCC(&v56, &qword_1000B5F08, &unk_100096010);
  return v10;
}

uint64_t sub_10007EC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v33 = a4;
  v8 = *v4;
  v37 = v4[1];
  v38[0] = v8;
  v9 = *(v8 + 16);
  sub_10002600C(v38, v36, &qword_1000B5ED8, &unk_100095CD8);
  sub_10002600C(&v37, v36, &qword_1000B5F08, &unk_100096010);
  if (v9)
  {
    v10 = (v8 + 32);
    while (1)
    {
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[3];
      v36[2] = v10[2];
      v36[3] = v13;
      v36[0] = v11;
      v36[1] = v12;
      v14 = v10[4];
      v15 = v10[5];
      v16 = v10[7];
      v36[6] = v10[6];
      v36[7] = v16;
      v36[4] = v14;
      v36[5] = v15;
      v17 = v10[8];
      v18 = v10[9];
      v19 = v10[11];
      v36[10] = v10[10];
      v36[11] = v19;
      v36[8] = v17;
      v36[9] = v18;
      v20 = *&v36[2];
      v35[0] = a1;
      v35[1] = a2;
      v35[2] = a3;
      __chkstk_darwin();
      v32[2] = v35;
      sub_1000289DC(v36, v34);

      v21 = sub_100083B60(sub_100082820, v32, v20);

      if (v21)
      {
        break;
      }

      sub_100028A38(v36);
      v10 += 12;
      if (!--v9)
      {
        goto LABEL_5;
      }
    }

    sub_100002BCC(v38, &qword_1000B5ED8, &unk_100095CD8);
    sub_100002BCC(&v37, &qword_1000B5F08, &unk_100096010);
    sub_10002F094(v36 + 8, v34);
    result = sub_100028A38(v36);
    v24 = *(v36 + 8);
    v25 = *(&v36[1] + 8);
    v26 = *(&v36[2] + 8);
    v27 = *(&v36[3] + 8);
    v28 = *(&v36[4] + 8);
    v29 = *(&v36[5] + 8);
    v30 = *(&v36[6] + 8);
    v23 = *(&v36[7] + 1);
  }

  else
  {
LABEL_5:
    sub_100002BCC(v38, &qword_1000B5ED8, &unk_100095CD8);
    result = sub_100002BCC(&v37, &qword_1000B5F08, &unk_100096010);
    v23 = 0;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
  }

  v31 = v33;
  *v33 = v24;
  v31[1] = v25;
  v31[2] = v26;
  v31[3] = v27;
  v31[4] = v28;
  v31[5] = v29;
  v31[6] = v30;
  *(v31 + 14) = v23;
  return result;
}

uint64_t sub_10007EEA0(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  v28 = v3[1];
  v29 = v7;
  v8 = *(v7 + 16);
  sub_10002600C(&v29, v30, &qword_1000B5ED8, &unk_100095CD8);
  sub_10002600C(&v28, v30, &qword_1000B5F08, &unk_100096010);
  if (v8)
  {
    v9 = (v7 + 32);
    while (1)
    {
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[3];
      v30[2] = v9[2];
      v30[3] = v12;
      v30[0] = v10;
      v30[1] = v11;
      v13 = v9[4];
      v14 = v9[5];
      v15 = v9[7];
      v32 = v9[6];
      v33 = v15;
      v30[4] = v13;
      v31 = v14;
      v16 = v9[8];
      v17 = v9[9];
      v18 = v9[11];
      v36 = v9[10];
      v37 = v18;
      v34 = v16;
      v35 = v17;
      v19 = _swiftEmptyArrayStorage;
      if (*&v30[0] >= 2uLL)
      {
      }

      v26[0] = a1;
      v26[1] = a2;
      v27 = a3;
      __chkstk_darwin();
      v24[2] = v26;
      sub_1000289DC(v30, v25);
      v20 = sub_100083C24(sub_10008283C, v24, v19);

      if (v20)
      {
        break;
      }

      sub_100028A38(v30);
      v9 += 12;
      if (!--v8)
      {
        goto LABEL_7;
      }
    }

    sub_100002BCC(&v29, &qword_1000B5ED8, &unk_100095CD8);
    sub_100002BCC(&v28, &qword_1000B5F08, &unk_100096010);
    v22 = BYTE7(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v22 = *(&v31 + 1) & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v23 = *(&v31 + 1);

      sub_100028A38(v30);
      return v23;
    }

    else
    {
      sub_1000289DC(v30, v25);
      sub_100059548(v30, v25);
      sub_100028A38(v30);
      sub_100028A38(v30);
      return v25[0];
    }
  }

  else
  {
LABEL_7:
    sub_100002BCC(&v29, &qword_1000B5ED8, &unk_100095CD8);
    sub_100002BCC(&v28, &qword_1000B5F08, &unk_100096010);
    return 0;
  }
}

void sub_10007F0E8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = String.count.getter();
  v7 = String.count.getter();
  if (v6 < 1 || v7 <= 0)
  {
    return;
  }

  v8 = 0;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v56 = 4 * v9;
  v57 = 4 * v10;
  v11 = 15;
  if (v10 && v9)
  {
    v8 = 0;
    v11 = 15;
    do
    {
      v12 = String.subscript.getter();
      v14 = v13;
      if (v12 == String.subscript.getter() && v14 == v15)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          break;
        }
      }

      v17 = String.index(after:)();
      v18 = String.index(after:)();
      v11 = v18;
      v8 = v17 >> 14;
    }

    while (v17 >> 14 < v57 && v18 >> 14 < v56);
  }

  v19 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v19 = 11;
  }

  v20 = v19 | (v9 << 16);
  v55 = v11 >> 14;
  if (v8 < v57)
  {
    while (1)
    {
      if (v55 >= v20 >> 14)
      {
        v28 = 1;
        goto LABEL_32;
      }

      v22 = String.index(before:)();
      v23 = String.index(before:)();
      v24 = String.subscript.getter();
      v26 = v25;
      if (v24 == String.subscript.getter() && v26 == v27)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          v28 = 1;
          goto LABEL_32;
        }
      }

      v20 = v23;
      if (v8 >= v22 >> 14)
      {
        v28 = 0;
        v20 = v23;
        goto LABEL_32;
      }
    }
  }

  v28 = 0;
LABEL_32:
  if (v8 == v57 && v55 == v56)
  {
    return;
  }

  if (!v28 || v55 >= v20 >> 14)
  {

    String.distance(from:to:)();
    return;
  }

  String.subscript.getter();
  String.subscript.getter();
  v50 = Substring.distance(from:to:)();
  v29 = Substring.distance(from:to:)();
  v30 = v29 + 1;
  if (__OFADD__(v29, 1))
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v30 < 0)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v31 = v29;
  if (v29 == -1)
  {
    goto LABEL_87;
  }

  v32 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v32 + 16) = v30;
  bzero((v32 + 32), 8 * v31 + 8);
  if ((v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_87;
  }

  v33 = sub_10004E508(v30, 0);
  if (sub_10007C6B8(v60, (v33 + 32), v30, 0, v31) != v30)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v34 = v33;
  if (v50 < 1 || !v31)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v35 = 1;
  v52 = v31;
  while (1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v36 = v32;
      if (!*(v32 + 16))
      {
        break;
      }

      goto LABEL_52;
    }

    v36 = sub_100058904(v32);
    if (!*(v36 + 2))
    {
      break;
    }

LABEL_52:
    v37 = 0;
    v38 = 0;
    v51 = v35;
    *(v36 + 4) = v35;
    v53 = v36;
    v54 = v34;
    do
    {
      v39 = v38 + 1;
      v40 = Substring.subscript.getter();
      v42 = v41;
      if (v40 == Substring.subscript.getter() && v42 == v43)
      {
      }

      else
      {
        v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v44 & 1) == 0)
        {
          v36 = v53;
          v45 = v54;
          if (v39 >= *(v54 + 2))
          {
            goto LABEL_80;
          }

          v47 = *(v53 + 2);
          if (v39 > v47)
          {
            goto LABEL_81;
          }

          v48 = *&v54[v37 + 32];
          if (v48 >= *&v53[v37 + 32])
          {
            v48 = *&v53[v37 + 32];
          }

          if (v48 >= *&v54[v37 + 40])
          {
            v48 = *&v54[v37 + 40];
          }

          v49 = __OFADD__(v48, 1);
          v46 = v48 + 1;
          if (v49)
          {
            goto LABEL_82;
          }

          if (v39 >= v47)
          {
            goto LABEL_83;
          }

          goto LABEL_53;
        }
      }

      v36 = v53;
      v45 = v54;
      if (v38 >= *(v54 + 2))
      {
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
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      if (v39 >= *(v53 + 2))
      {
        goto LABEL_79;
      }

      v46 = *&v54[v37 + 32];
LABEL_53:
      *&v36[v37 + 40] = v46;
      Substring.index(after:)();
      ++v38;
      v37 += 8;
      v31 = v52;
    }

    while (v52 != v38);
    Substring.index(after:)();
    if (v35 == v50)
    {
      goto LABEL_76;
    }

    v32 = v45;
    v34 = v36;
    ++v35;
    if (__OFADD__(v51, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_76:

  if (v31 < *(v36 + 2))
  {

    return;
  }

LABEL_90:
  __break(1u);
}

uint64_t sub_10007F7DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = sub_10004E478(*(a1 + 16), 0);
    v6 = sub_100062194(&v25, (v5 + 32), v3, a1);
    v7 = v25;

    sub_100018614(v7);
    if (v6 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_5:
  v25 = v5;

  sub_100080110(&v25);

  if (*(v25 + 16))
  {
    v8 = *(v25 + 32);
    v9 = *(v25 + 40);
    v10 = *(v25 + 48);
    v11 = *(v25 + 49);

    if ((v11 & 1) == 0)
    {
      v25 = 39;
      v26 = 0xE100000000000000;
      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v8 < *(a2 + 16))
      {
        v12 = a2 + 16 * v8;
        v13 = *(v12 + 32);
        v14 = *(v12 + 40);

        v15._countAndFlagsBits = v13;
        v15._object = v14;
        String.append(_:)(v15);

        v16._countAndFlagsBits = 39;
        v16._object = 0xE100000000000000;
        String.append(_:)(v16);
        v17 = v25;
        v18 = v26;
        if (v10)
        {
LABEL_12:
          v25 = 0x2067616C66;
          v26 = 0xE500000000000000;
          v23 = v18;
          String.append(_:)(*&v17);

          return v25;
        }

        if (!__OFADD__(v9, 2))
        {
          v19 = v25;
          String.index(_:offsetBy:)();
          v25 = 0;
          v26 = 0xE000000000000000;
          v20._countAndFlagsBits = 39;
          v20._object = 0xE100000000000000;
          String.append(_:)(v20);
          String.subscript.getter();
          Character.write<A>(to:)();

          v21._countAndFlagsBits = 0x206E692027;
          v21._object = 0xE500000000000000;
          String.append(_:)(v21);
          v22._countAndFlagsBits = v19;
          v22._object = v18;
          String.append(_:)(v22);

          v17 = v25;
          v18 = v26;
          goto LABEL_12;
        }

        goto LABEL_18;
      }

      __break(1u);
LABEL_18:
      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_10007FA40(uint64_t a1, __int128 *a2)
{
  if (a1)
  {
    swift_errorRetain();
    sub_1000021C0(&qword_1000B5988, &qword_100094200);
    sub_1000021C0(&qword_1000B5EF0, &unk_100095FE0);
    if (swift_dynamicCast())
    {
      sub_100040F6C(v26, &v14);
      sub_100002AA0(&v14, *(&v15 + 1));
      dispatch thunk of LocalizedError.errorDescription.getter();
      if (v3)
      {

        sub_100002AA0(&v14, *(&v15 + 1));
        result = dispatch thunk of LocalizedError.errorDescription.getter();
        if (v5)
        {
          String.append(_:)(*&result);

          sub_100002B38(&v14);

          return 8250;
        }

        else
        {
          __break(1u);
        }

        return result;
      }

      sub_100002B38(&v14);
    }

    *&v26[0] = a1;
    swift_errorRetain();
    v13._countAndFlagsBits = String.init<A>(describing:)();
    *&v26[0] = 8250;
    *(&v26[0] + 1) = 0xE200000000000000;
    String.append(_:)(v13);

    return *&v26[0];
  }

  v6 = a2[8];
  v7 = a2[10];
  v8 = a2[11];
  v23 = a2[9];
  v24 = v7;
  v25 = v8;
  v9 = a2[5];
  v18 = a2[4];
  v19 = v9;
  v10 = a2[7];
  v20 = a2[6];
  v21 = v10;
  v22 = v6;
  v11 = a2[1];
  v14 = *a2;
  v15 = v11;
  v12 = a2[3];
  v16 = a2[2];
  v17 = v12;
  if (sub_10002F07C(&v14) == 1)
  {
    return 0;
  }

  v26[8] = v22;
  v26[9] = v23;
  v26[10] = v24;
  v26[11] = v25;
  v26[4] = v18;
  v26[5] = v19;
  v26[6] = v20;
  v26[7] = v21;
  v26[0] = v14;
  v26[1] = v15;
  v26[2] = v16;
  v26[3] = v17;
  return sub_10007FC4C();
}

uint64_t sub_10007FC4C()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  if (v2 > 5)
  {
    sub_10004E820(0, v2, 0);
    v12 = (v1 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;

      v15._countAndFlagsBits = v13;
      v15._object = v14;
      String.append(_:)(v15);

      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        sub_10004E820((v16 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      v18 = &_swiftEmptyArrayStorage[2 * v17];
      v18[4] = 539828256;
      v18[5] = 0xE400000000000000;
      v12 += 2;
      --v2;
    }

    while (v2);
    sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
    sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0, &protocol conformance descriptor for [A]);
    v28 = BidirectionalCollection<>.joined(separator:)();
    v30 = v29;

    _StringGuts.grow(_:)(41);

    v35 = 0xD000000000000027;
    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    return v35;
  }

  sub_10004E820(0, v2, 0);
  v3 = (v1 + 40);
  do
  {
    v4 = *(v3 - 1);
    v5 = *v3;

    v6._countAndFlagsBits = v4;
    v6._object = v5;
    String.append(_:)(v6);
    v7._countAndFlagsBits = 39;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);

    v9 = _swiftEmptyArrayStorage[2];
    v8 = _swiftEmptyArrayStorage[3];
    if (v9 >= v8 >> 1)
    {
      sub_10004E820((v8 > 1), v9 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v9 + 1;
    v10 = &_swiftEmptyArrayStorage[2 * v9 + 4];
    *v10 = 39;
    v10[1] = 0xE100000000000000;
    v3 += 2;
    --v2;
  }

  while (v2);
  if (v9 <= 1)
  {
    sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
    sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0, &protocol conformance descriptor for [A]);
    v19 = BidirectionalCollection<>.joined(separator:)();
    v21 = v32;

    goto LABEL_18;
  }

  sub_100072474(1uLL, _swiftEmptyArrayStorage);

  sub_1000021C0(&qword_1000B5F10, &qword_100096020);
  sub_10000BD8C(qword_1000B5F18, &qword_1000B5F10, &qword_100096020, &protocol conformance descriptor for ArraySlice<A>);
  v19 = BidirectionalCollection<>.joined(separator:)();
  v21 = v20;
  result = swift_unknownObjectRelease();
  v22 = _swiftEmptyArrayStorage[2];
  if (v22)
  {
    v23 = &_swiftEmptyArrayStorage[2 * v22 + 4];
    v24 = *(v23 - 2);
    v25 = *(v23 - 1);

    v26._countAndFlagsBits = v24;
    v26._object = v25;
    String.append(_:)(v26);

    v27._countAndFlagsBits = 544370464;
    v27._object = 0xE400000000000000;
    String.append(_:)(v27);

LABEL_18:
    _StringGuts.grow(_:)(27);

    v35 = 0xD000000000000018;
    v33._countAndFlagsBits = v19;
    v33._object = v21;
    String.append(_:)(v33);

    v34._countAndFlagsBits = 46;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    return v35;
  }

  __break(1u);
  return result;
}

Swift::Int sub_100080110(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100078CD0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10008017C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10008017C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100080338(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100080274(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100080274(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      if (*(v8 + 41))
      {
LABEL_4:
        ++a3;
        v5 += 24;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      v9 = v8 + 24;
      v10 = *(v8 + 24);
      v11 = *(v8 + 32);
      v12 = *(v8 + 40);
      if ((*(v8 + 17) & 1) == 0 && v10 >= *v8)
      {
        if (v10 != *v8)
        {
          goto LABEL_4;
        }

        if (*(v8 + 40))
        {
          if (*(v8 + 16))
          {
            goto LABEL_4;
          }
        }

        else if ((*(v8 + 16) & 1) != 0 || v11 >= *(v8 + 8))
        {
          goto LABEL_4;
        }
      }

      if (!v4)
      {
        break;
      }

      v13 = *v8;
      v14 = *(v8 + 16);
      *v8 = v10;
      *(v8 + 8) = v11;
      *(v8 + 16) = v12;
      *(v8 + 17) = 0;
      v8 -= 24;
      *v9 = v13;
      *(v9 + 16) = v14;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100080338(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v104 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_120:
    v105 = *v104;
    if (!*v104)
    {
      goto LABEL_160;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_122:
      v96 = v8 + 2;
      v97 = v8[2];
      if (v97 >= 2)
      {
        while (*a3)
        {
          v98 = &v8[2 * v97];
          v99 = *v98;
          v100 = &v96[2 * v97];
          v101 = v100[1];
          sub_1000809E0((*a3 + 24 * *v98), (*a3 + 24 * *v100), *a3 + 24 * v101, v105);
          if (v5)
          {
          }

          if (v101 < v99)
          {
            goto LABEL_146;
          }

          if (v97 - 2 >= *v96)
          {
            goto LABEL_147;
          }

          *v98 = v99;
          v98[1] = v101;
          v102 = *v96 - v97;
          if (*v96 < v97)
          {
            goto LABEL_148;
          }

          v97 = *v96 - 1;
          result = memmove(v100, v100 + 2, 16 * v102);
          *v96 = v97;
          if (v97 <= 1)
          {
          }
        }

        goto LABEL_158;
      }
    }

LABEL_154:
    result = sub_100078CA8(v8);
    v8 = result;
    goto LABEL_122;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v103 = a4;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      ++v7;
      goto LABEL_40;
    }

    v11 = *a3;
    v12 = *a3 + 24 * v10;
    if (*(v12 + 17))
    {
LABEL_6:
      v13 = 0;
      goto LABEL_11;
    }

    v14 = v11 + 24 * v7;
    if ((*(v14 + 17) & 1) != 0 || *v12 < *v14)
    {
      v13 = 1;
    }

    else
    {
      if (*v12 != *v14)
      {
        goto LABEL_6;
      }

      v92 = *(v14 + 8);
      v93 = *(v14 + 16);
      v94 = (*(v12 + 8) < v92) & ~v93;
      v95 = v93 ^ 1;
      v13 = (*(v12 + 16) & 1) != 0 ? v95 : v94;
    }

LABEL_11:
    v7 += 2;
    if (v9 + 2 < v6)
    {
      v10 = v6 - 1;
      v15 = v11 + 24 * v9 + 32;
      v16 = v15;
      while (1)
      {
        v18 = *(v16 + 24);
        v16 += 24;
        v17 = v18;
        if ((*(v15 + 33) & 1) == 0)
        {
          if ((*(v15 + 9) & 1) != 0 || (v19 = *(v15 + 16), v20 = *(v15 - 8), v19 < v20))
          {
LABEL_18:
            if ((v13 & 1) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_14;
          }

          if (v19 == v20)
          {
            if (*(v15 + 32))
            {
              if ((*(v15 + 8) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            else if ((*(v15 + 8) & 1) == 0 && v17 < *v15)
            {
              goto LABEL_18;
            }
          }
        }

        if (v13)
        {
          v10 = v7 - 1;
          if (v7 < v9)
          {
            goto LABEL_151;
          }

LABEL_32:
          if (v9 <= v10)
          {
            v21 = 24 * v7 - 24;
            v22 = 24 * v9;
            v23 = v7;
            v24 = v9;
            do
            {
              if (v24 != --v23)
              {
                v31 = *a3;
                if (!*a3)
                {
                  goto LABEL_157;
                }

                v25 = (v31 + v22);
                v26 = (v31 + v21);
                v27 = *(v25 + 16);
                v28 = *(v25 + 17);
                v29 = *v25;
                v30 = *(v26 + 2);
                *v25 = *v26;
                *(v25 + 2) = v30;
                *v26 = v29;
                *(v26 + 16) = v27;
                *(v26 + 17) = v28;
              }

              ++v24;
              v21 -= 24;
              v22 += 24;
            }

            while (v24 < v23);
            v6 = a3[1];
          }

          goto LABEL_40;
        }

LABEL_14:
        ++v7;
        v15 = v16;
        if (v6 == v7)
        {
          v7 = v6;
          break;
        }
      }
    }

    if (v13)
    {
      if (v7 < v9)
      {
        goto LABEL_151;
      }

      goto LABEL_32;
    }

LABEL_40:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_150;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_65:
    if (v7 < v9)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100043390(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v45 = v8[2];
    v44 = v8[3];
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_100043390((v44 > 1), v45 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v46;
    v47 = v8 + 4;
    v48 = &v8[2 * v45 + 4];
    *v48 = v9;
    v48[1] = v7;
    v105 = *v104;
    if (!*v104)
    {
      goto LABEL_159;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = v8[4];
          v51 = v8[5];
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_85:
          if (v53)
          {
            goto LABEL_136;
          }

          v66 = &v8[2 * v46];
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_138;
          }

          v72 = &v47[2 * v49];
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_141;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_143;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        if (v46 < 2)
        {
          goto LABEL_144;
        }

        v76 = &v8[2 * v46];
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_100:
        if (v71)
        {
          goto LABEL_140;
        }

        v79 = &v47[2 * v49];
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_142;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_107:
        if (v49 - 1 >= v46)
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
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (!*a3)
        {
          goto LABEL_156;
        }

        v87 = &v47[2 * v49 - 2];
        v88 = *v87;
        v89 = &v47[2 * v49];
        v90 = v89[1];
        sub_1000809E0((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v105);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_131;
        }

        if (v49 > v8[2])
        {
          goto LABEL_132;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = v8[2];
        if (v49 >= v91)
        {
          goto LABEL_133;
        }

        v46 = v91 - 1;
        result = memmove(&v47[2 * v49], v89 + 2, 16 * (v91 - 1 - v49));
        v8[2] = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = &v47[2 * v46];
      v55 = *(v54 - 8);
      v56 = *(v54 - 7);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_134;
      }

      v59 = *(v54 - 6);
      v58 = *(v54 - 5);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_135;
      }

      v61 = &v8[2 * v46];
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_137;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_139;
      }

      if (v65 >= v57)
      {
        v83 = &v47[2 * v49];
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_145;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_85;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v103;
    if (v7 >= v6)
    {
      goto LABEL_120;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_152;
  }

  if (v9 + a4 < v6)
  {
    v6 = v9 + a4;
  }

  if (v6 < v9)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v7 == v6)
  {
    goto LABEL_65;
  }

  v32 = *a3;
  v33 = *a3 + 24 * v7 - 24;
  v34 = v9 - v7;
LABEL_50:
  v35 = v34;
  v36 = v33;
  while (1)
  {
    if (*(v36 + 41))
    {
LABEL_49:
      ++v7;
      v33 += 24;
      --v34;
      if (v7 == v6)
      {
        v7 = v6;
        goto LABEL_65;
      }

      goto LABEL_50;
    }

    v37 = v36 + 24;
    v38 = *(v36 + 24);
    v39 = *(v36 + 32);
    v40 = *(v36 + 40);
    if ((*(v36 + 17) & 1) == 0 && v38 >= *v36)
    {
      if (v38 != *v36)
      {
        goto LABEL_49;
      }

      if (*(v36 + 40))
      {
        if (*(v36 + 16))
        {
          goto LABEL_49;
        }
      }

      else if ((*(v36 + 16) & 1) != 0 || v39 >= *(v36 + 8))
      {
        goto LABEL_49;
      }
    }

    if (!v32)
    {
      break;
    }

    v41 = *v36;
    v42 = *(v36 + 16);
    *v36 = v38;
    *(v36 + 8) = v39;
    *(v36 + 16) = v40;
    *(v36 + 17) = 0;
    v36 -= 24;
    *v37 = v41;
    *(v37 + 16) = v42;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_49;
    }
  }

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
  return result;
}

uint64_t sub_1000809E0(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24 || v6 >= v5)
    {
LABEL_48:
      v20 = v7;
      goto LABEL_50;
    }

    while ((v6[17] & 1) == 0)
    {
      if ((v4[17] & 1) == 0 && *v6 >= *v4)
      {
        if (*v6 != *v4)
        {
          break;
        }

        if (v6[16])
        {
          if (v4[16])
          {
            break;
          }
        }

        else if ((v4[16] & 1) != 0 || *(v6 + 1) >= *(v4 + 1))
        {
          break;
        }
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 24;
      if (!v15)
      {
        goto LABEL_9;
      }

LABEL_10:
      v7 += 24;
      if (v4 >= v13 || v6 >= v5)
      {
        goto LABEL_48;
      }
    }

    v14 = v4;
    v15 = v7 == v4;
    v4 += 24;
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_9:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_10;
  }

  v17 = 24 * v11;
  if (a4 != __dst || &__dst[v17] <= a4)
  {
    memmove(a4, __dst, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 < 24 || v6 <= v7)
  {
LABEL_49:
    v20 = v6;
    goto LABEL_50;
  }

  do
  {
    v18 = 0;
    v19 = v13;
    v20 = v6 - 24;
    while (1)
    {
      v21 = &v19[v18];
      v22 = *&v19[v18 - 24];
      if (v19[v18 - 7])
      {
        goto LABEL_41;
      }

      if (*(v6 - 7))
      {
        break;
      }

      v23 = *(v6 - 3);
      if (v22 < v23)
      {
        break;
      }

      if (v22 == v23)
      {
        if (*(v21 - 8))
        {
          if ((*(v6 - 8) & 1) == 0)
          {
            break;
          }
        }

        else if ((*(v6 - 8) & 1) == 0 && *(v21 - 2) < *(v6 - 2))
        {
          break;
        }
      }

LABEL_41:
      if ((v5 + v18) != v21)
      {
        v24 = v5 + v18 - 24;
        v25 = *&v19[v18 - 24];
        *(v24 + 16) = *&v19[v18 - 8];
        *v24 = v25;
      }

      v18 -= 24;
      v13 = &v19[v18];
      if (&v19[v18] <= v4)
      {
        goto LABEL_49;
      }
    }

    v26 = (v5 + v18);
    v5 = v5 + v18 - 24;
    if (v26 != v6)
    {
      v27 = *v20;
      *(v5 + 16) = *(v6 - 1);
      *v5 = v27;
    }

    v13 = &v19[v18];
    if (&v19[v18] <= v4)
    {
      break;
    }

    v6 -= 24;
  }

  while (v20 > v7);
  v13 = &v19[v18];
LABEL_50:
  v28 = 24 * ((v13 - v4) / 24);
  if (v20 != v4 || v20 >= &v4[v28])
  {
    memmove(v20, v4, v28);
  }

  return 1;
}

uint64_t sub_100080CA8(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if ((a6 & 0xC0) == 0x40)
      {
        if (a1 == a4 && a2 == a5 || (v6 = a3, v7 = a6, v8 = _stringCompareWithSmolCheck(_:_:expecting:)(), a3 = v6, a6 = v7, (v8 & 1) != 0))
        {
          v9 = a6 ^ a3 ^ 1;
          return v9 & 1;
        }
      }

LABEL_13:
      v9 = 0;
      return v9 & 1;
    }

    if ((a6 & 0xC0) != 0x80)
    {
      goto LABEL_13;
    }
  }

  else if (a6 >= 0x40u)
  {
    goto LABEL_13;
  }

  if (a1 == a4 && a2 == a5)
  {
    v9 = 1;
    return v9 & 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
}

uint64_t sub_100080D88(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return sub_100055CD4(v2, v3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100080E4C(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(111);
  v4._object = 0x80000001000997E0;
  v4._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0xD000000000000044;
  v6._object = 0x8000000100099810;
  String.append(_:)(v6);
  sub_10004E820(0, 3, 0);
  v8 = _swiftEmptyArrayStorage[2];
  v7 = _swiftEmptyArrayStorage[3];
  v9 = v8 + 1;

  if (v8 >= v7 >> 1)
  {
    sub_10004E820((v7 > 1), v8 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v9;
  v10 = &_swiftEmptyArrayStorage[2 * v8];
  v10[4] = 6845306;
  v10[5] = 0xE300000000000000;
  v11 = _swiftEmptyArrayStorage[3];
  v12 = v8 + 2;

  if (v9 >= v11 >> 1)
  {
    sub_10004E820((v11 > 1), v12, 1);
  }

  _swiftEmptyArrayStorage[2] = v12;
  v13 = &_swiftEmptyArrayStorage[2 * v9];
  v13[4] = *"bash";
  v13[5] = 0xE400000000000000;
  v15 = _swiftEmptyArrayStorage[2];
  v14 = _swiftEmptyArrayStorage[3];

  if (v15 >= v14 >> 1)
  {
    sub_10004E820((v14 > 1), v15 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v15 + 1;
  v16 = &_swiftEmptyArrayStorage[2 * v15];
  v16[4] = *"fish";
  v16[5] = 0xE400000000000000;
  sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
  sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0, &protocol conformance descriptor for [A]);
  v17 = BidirectionalCollection<>.joined(separator:)();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  return 0;
}

uint64_t sub_1000810A4()
{
  _StringGuts.grow(_:)(103);
  v0._object = 0x8000000100099860;
  v0._countAndFlagsBits = 0xD000000000000065;
  String.append(_:)(v0);
  sub_10004E820(0, 3, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;

  if (v2 >= v1 >> 1)
  {
    sub_10004E820((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v3;
  v4 = &_swiftEmptyArrayStorage[2 * v2];
  v4[4] = 6845306;
  v4[5] = 0xE300000000000000;
  v5 = _swiftEmptyArrayStorage[3];
  v6 = v2 + 2;

  if (v3 >= v5 >> 1)
  {
    sub_10004E820((v5 > 1), v6, 1);
  }

  _swiftEmptyArrayStorage[2] = v6;
  v7 = &_swiftEmptyArrayStorage[2 * v3];
  v7[4] = *"bash";
  v7[5] = 0xE400000000000000;
  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];

  if (v9 >= v8 >> 1)
  {
    sub_10004E820((v8 > 1), v9 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v9 + 1;
  v10 = &_swiftEmptyArrayStorage[2 * v9];
  v10[4] = *"fish";
  v10[5] = 0xE400000000000000;
  sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
  sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0, &protocol conformance descriptor for [A]);
  v11 = BidirectionalCollection<>.joined(separator:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  return 0;
}

unint64_t sub_1000812C0(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
    _StringGuts.grow(_:)(19);

    v104._object = 0xD000000000000010;
    v105 = 0x80000001000998D0;
    countAndFlagsBits = a1;
    v8 = a2;
    v9 = a3;
LABEL_61:
    v62._countAndFlagsBits = sub_100068E38(countAndFlagsBits, v8, v9);
    String.append(_:)(v62);

    v63 = 39;
    v64 = 0xE100000000000000;
LABEL_89:
    String.append(_:)(*&v63);
    return v104._object;
  }

  v103 = a3 >> 6;
  v104._countAndFlagsBits = a1;
  v10 = *v3;
  v107 = v3[1];
  v108 = v10;
  v11 = *(v10 + 16);
  sub_10002600C(&v108, &v104._object, &qword_1000B5ED8, &unk_100095CD8);
  sub_10002600C(&v107, &v104._object, &qword_1000B5F08, &unk_100096010);
  if (v11)
  {
    v12 = (v10 + 32);
    v13 = _swiftEmptyArrayStorage;
    while (1)
    {
      v15 = *v12;
      v12 += 24;
      result = v15;
      if (v15 >= 2)
      {
        v16 = result;
      }

      else
      {
        v16 = _swiftEmptyArrayStorage;
      }

      v17 = v16[2];
      v18 = *(v13 + 2);
      v19 = v18 + v17;
      if (__OFADD__(v18, v17))
      {
        goto LABEL_92;
      }

      sub_100028B00(result);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v19 <= *(v13 + 3) >> 1)
      {
        if (v16[2])
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v18 <= v19)
        {
          v20 = v18 + v17;
        }

        else
        {
          v20 = v18;
        }

        result = sub_100043274(result, v20, 1, v13);
        v13 = result;
        if (v16[2])
        {
LABEL_19:
          if ((*(v13 + 3) >> 1) - *(v13 + 2) < v17)
          {
            goto LABEL_94;
          }

          swift_arrayInitWithCopy();

          if (v17)
          {
            v21 = *(v13 + 2);
            v22 = __OFADD__(v21, v17);
            v23 = v21 + v17;
            if (v22)
            {
              goto LABEL_96;
            }

            *(v13 + 2) = v23;
          }

          goto LABEL_6;
        }
      }

      if (v17)
      {
        goto LABEL_93;
      }

LABEL_6:
      if (!--v11)
      {
        goto LABEL_24;
      }
    }
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_24:
  sub_100002BCC(&v108, &qword_1000B5ED8, &unk_100095CD8);
  result = sub_100002BCC(&v107, &qword_1000B5F08, &unk_100096010);
  v24 = *(v13 + 2);
  if (!v24)
  {
    v27 = _swiftEmptyArrayStorage;
    goto LABEL_47;
  }

  v25 = 0;
  v26 = v13 + 48;
  v100 = *(v13 + 2);
  v98 = v24 - 1;
  v27 = _swiftEmptyArrayStorage;
  do
  {
    v28 = &v26[3 * v25];
    v29 = v25;
    while (1)
    {
      if (v29 >= *(v13 + 2))
      {
        goto LABEL_91;
      }

      v31 = *(v28 - 2);
      v30 = *(v28 - 1);
      v32 = *v28;
      if (v32 >> 6)
      {
        if (v32 >> 6 == 1)
        {
          v104._object = 0;
          v105 = 0xE000000000000000;

          v33._countAndFlagsBits = 45;
          v33._object = 0xE100000000000000;
          String.append(_:)(v33);
          Character.write<A>(to:)();
          goto LABEL_34;
        }

        v104._object = 45;
        v34 = 0xE100000000000000;
      }

      else
      {
        v104._object = 11565;
        v34 = 0xE200000000000000;
      }

      v105 = v34;

      v35._countAndFlagsBits = v31;
      v35._object = v30;
      String.append(_:)(v35);
LABEL_34:
      object = v104._object;
      v37 = v105;
      if (v103)
      {
        v104._object = 45;
        v38 = 0xE100000000000000;
      }

      else
      {
        v104._object = 11565;
        v38 = 0xE200000000000000;
      }

      v105 = v38;
      v39._countAndFlagsBits = v104._countAndFlagsBits;
      v39._object = a2;
      String.append(_:)(v39);
      sub_10007F0E8(v104._object, v105, object, v37);
      v41 = v40;

      if (v41 < 4)
      {
        break;
      }

      ++v29;
      result = sub_100028AE8(v31, v30, v32);
      v28 += 24;
      if (v100 == v29)
      {
        goto LABEL_47;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v106 = v27;
    if ((result & 1) == 0)
    {
      result = sub_10004E920(0, v27[2] + 1, 1);
      v27 = v106;
    }

    v43 = v27[2];
    v42 = v27[3];
    if (v43 >= v42 >> 1)
    {
      result = sub_10004E920((v42 > 1), v43 + 1, 1);
      v27 = v106;
    }

    v25 = v29 + 1;
    v27[2] = v43 + 1;
    v44 = &v27[3 * v43];
    v44[4] = v31;
    v44[5] = v30;
    *(v44 + 48) = v32;
    v26 = v13 + 48;
  }

  while (v98 != v29);
LABEL_47:

  v45 = 0;
  v46 = v27[2];
  v47 = _swiftEmptyArrayStorage;
LABEL_48:
  v48 = 3 * v45;
  while (1)
  {
    if (v46 == v45)
    {

      v56 = v47[2];
      if (!v56)
      {

        v104._object = 0;
        v105 = 0xE000000000000000;
        _StringGuts.grow(_:)(19);

        v104._object = 0xD000000000000010;
        v105 = 0x80000001000998D0;
        countAndFlagsBits = v104._countAndFlagsBits;
        v8 = a2;
        v9 = a3;
        goto LABEL_61;
      }

      v58 = v47[4];
      v57 = v47[5];
      v59 = *(v47 + 48);
      result = sub_10002BB8C(v58, v57, v59);
      if (v56 == 1)
      {
        v60 = v57;
        LOBYTE(v61) = v59;
LABEL_88:

        v104._object = 0;
        v105 = 0xE000000000000000;
        _StringGuts.grow(_:)(39);

        v104._object = 0xD000000000000010;
        v105 = 0x80000001000998D0;
        v87._countAndFlagsBits = sub_100068E38(v104._countAndFlagsBits, a2, a3);
        String.append(_:)(v87);

        v88._countAndFlagsBits = 0xD000000000000011;
        v88._object = 0x80000001000998F0;
        String.append(_:)(v88);
        v89 = sub_100068E38(v58, v60, v61);
        v91 = v90;
        sub_100028AE8(v58, v60, v61);
        v92._countAndFlagsBits = v89;
        v92._object = v91;
        String.append(_:)(v92);

        v63 = 16167;
        v64 = 0xE200000000000000;
        goto LABEL_89;
      }

      v94 = v56 - 1;
      v101 = v58;
      v96 = v56;
      v97 = v47;
      v65 = v47 + 6;
      v66 = 1;
      v93 = v47 + 6;
LABEL_63:
      v99 = v57;
      v67 = &v65[3 * v66];
      while (1)
      {
        if (v66 >= v47[2])
        {
          goto LABEL_95;
        }

        v58 = *(v67 - 2);
        v60 = *(v67 - 1);
        v61 = *v67;
        if (v61 >> 6)
        {
          if (v61 >> 6 == 1)
          {
            v104._object = 0;
            v105 = 0xE000000000000000;

            v68._countAndFlagsBits = 45;
            v68._object = 0xE100000000000000;
            String.append(_:)(v68);
            Character.write<A>(to:)();
            goto LABEL_71;
          }

          v104._object = 45;
          v69 = 0xE100000000000000;
        }

        else
        {
          v104._object = 11565;
          v69 = 0xE200000000000000;
        }

        v105 = v69;

        v70._countAndFlagsBits = v58;
        v70._object = v60;
        String.append(_:)(v70);
LABEL_71:
        v71 = v104._object;
        v72 = v105;
        if (v103)
        {
          v104._object = 45;
          v73 = 0xE100000000000000;
        }

        else
        {
          v104._object = 11565;
          v73 = 0xE200000000000000;
        }

        v105 = v73;
        v74._countAndFlagsBits = v104._countAndFlagsBits;
        v74._object = a2;
        String.append(_:)(v74);
        sub_10007F0E8(v104._object, v105, v71, v72);
        v76 = v75;

        if (v59 >> 6)
        {
          if (v59 >> 6 == 1)
          {
            v104._object = 0;
            v105 = 0xE000000000000000;
            v77._countAndFlagsBits = 45;
            v77._object = 0xE100000000000000;
            String.append(_:)(v77);
            Character.write<A>(to:)();
            goto LABEL_80;
          }

          v104._object = 45;
          v78 = 0xE100000000000000;
        }

        else
        {
          v104._object = 11565;
          v78 = 0xE200000000000000;
        }

        v105 = v78;
        v79._object = v99;
        v79._countAndFlagsBits = v101;
        String.append(_:)(v79);
LABEL_80:
        v81 = v104._object;
        v80 = v105;
        if (v103)
        {
          v104._object = 45;
          v82 = 0xE100000000000000;
        }

        else
        {
          v104._object = 11565;
          v82 = 0xE200000000000000;
        }

        v105 = v82;
        v83._countAndFlagsBits = v104._countAndFlagsBits;
        v83._object = a2;
        String.append(_:)(v83);
        sub_10007F0E8(v104._object, v105, v81, v80);
        v85 = v84;

        if (v76 < v85)
        {
          result = sub_100028AE8(v101, v99, v59);
          v59 = v61;
          v57 = v60;
          v101 = v58;
          v86 = v94 == v66++;
          v47 = v97;
          v65 = v93;
          if (v86)
          {
            goto LABEL_88;
          }

          goto LABEL_63;
        }

        ++v66;
        result = sub_100028AE8(v58, v60, v61);
        v67 += 24;
        v47 = v97;
        if (v96 == v66)
        {
          v60 = v99;
          v58 = v101;
          LOBYTE(v61) = v59;
          goto LABEL_88;
        }
      }
    }

    if (v45 >= v27[2])
    {
      break;
    }

    ++v45;
    v49 = v48 * 8 + 24;
    v50 = v27[v48 + 6];
    v48 += 3;
    if ((v50 & 0xC0) != 0x40)
    {
      v51 = *(v27 + v49 + 8);
      v52 = *(v27 + v49 + 16);
      sub_10002BB8C(v51, v52, v50);
      result = swift_isUniquelyReferenced_nonNull_native();
      v104._object = v47;
      if ((result & 1) == 0)
      {
        result = sub_10004E920(0, v47[2] + 1, 1);
        v47 = v104._object;
      }

      v54 = v47[2];
      v53 = v47[3];
      if (v54 >= v53 >> 1)
      {
        result = sub_10004E920((v53 > 1), v54 + 1, 1);
        v47 = v104._object;
      }

      v47[2] = v54 + 1;
      v55 = &v47[3 * v54];
      v55[4] = v51;
      v55[5] = v52;
      *(v55 + 48) = v50;
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

unint64_t sub_100081C98(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_10007EEA0(a1, a2, a3);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    _StringGuts.grow(_:)(27);

    v10._countAndFlagsBits = sub_100068E38(a1, a2, a3);
    String.append(_:)(v10);

    v11._countAndFlagsBits = 15392;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = v8;
    v12._object = v9;
    String.append(_:)(v12);

    v13 = 10046;
    v14 = 0xE200000000000000;
  }

  else
  {
    _StringGuts.grow(_:)(22);

    v15._countAndFlagsBits = sub_100068E38(a1, a2, a3);
    String.append(_:)(v15);

    v13 = 39;
    v14 = 0xE100000000000000;
  }

  String.append(_:)(*&v13);
  return 0xD000000000000013;
}

unint64_t sub_100081DEC(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (v1 == 1)
    {
      _StringGuts.grow(_:)(24);

      v21 = 0xD000000000000015;
      v3 = a1[5];
      v4 = a1[6];

      v5._countAndFlagsBits = v3;
      v5._object = v4;
      String.append(_:)(v5);
    }

    else
    {
      sub_10004E820(0, v1, 0);
      v6 = a1 + 6;
      v7 = v1;
      do
      {
        v9 = *(v6 - 1);
        v8 = *v6;
        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];

        if (v11 >= v10 >> 1)
        {
          sub_10004E820((v10 > 1), v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        v12 = &_swiftEmptyArrayStorage[2 * v11];
        v12[4] = v9;
        v12[5] = v8;
        v6 += 3;
        --v7;
      }

      while (v7);
      sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
      sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0, &protocol conformance descriptor for [A]);
      v13 = BidirectionalCollection<>.joined(separator:)();
      v15 = v14;

      _StringGuts.grow(_:)(29);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();

      v21 = v16;
      v17._countAndFlagsBits = 0xD000000000000018;
      v17._object = 0x8000000100099930;
      String.append(_:)(v17);
      v18._countAndFlagsBits = v13;
      v18._object = v15;
      String.append(_:)(v18);
    }

    v19._countAndFlagsBits = 39;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    return v21;
  }

  return v1;
}

uint64_t sub_100082044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10007F7DC(a2, a3);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v9._countAndFlagsBits = 0x6E6F697469736F70;
    v9._object = 0xE900000000000020;
    String.append(_:)(v9);
    _print_unlocked<A, B>(_:_:)();
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v10 = sub_10007F7DC(a1, a3);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v14._countAndFlagsBits = 0x6E6F697469736F70;
    v14._object = 0xE900000000000020;
    String.append(_:)(v14);
    _print_unlocked<A, B>(_:_:)();
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  _StringGuts.grow(_:)(52);
  v15._object = 0x8000000100099970;
  v15._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v15);
  v16._countAndFlagsBits = v7;
  v16._object = v8;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0xD00000000000001BLL;
  v17._object = 0x8000000100099990;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v12;
  v18._object = v13;
  String.append(_:)(v18);

  return 0;
}

uint64_t sub_1000821F8(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = sub_10007E9C4(a6, a7, a8);
  if (*(v11 + 16))
  {
    v13 = *(v11 + 32);
    v12 = *(v11 + 48);
    v14 = *(v11 + 80);
    v81[2] = *(v11 + 64);
    v81[3] = v14;
    v15 = *(v11 + 96);
    v16 = *(v11 + 112);
    v17 = *(v11 + 144);
    v83 = *(v11 + 128);
    v84 = v17;
    v81[4] = v15;
    v82 = v16;
    v18 = *(v11 + 160);
    v19 = *(v11 + 176);
    v20 = *(v11 + 208);
    v87 = *(v11 + 192);
    v88 = v20;
    v85 = v18;
    v86 = v19;
    v81[0] = v13;
    v81[1] = v12;
    v65 = *(v11 + 160);
    v66 = *(v11 + 176);
    v67 = *(v11 + 192);
    v68 = *(v11 + 208);
    v61 = *(v11 + 96);
    v62 = *(v11 + 112);
    v63 = *(v11 + 128);
    v64 = *(v11 + 144);
    v57 = *(v11 + 32);
    v58 = *(v11 + 48);
    v59 = *(v11 + 64);
    v60 = *(v11 + 80);
    sub_1000289DC(v81, &v89);

    v22 = *(&v82 + 1);
    v21 = v83;
    v77 = v65;
    v78 = v66;
    v79 = v67;
    v80 = v68;
    v73 = v61;
    v74 = v62;
    v75 = v63;
    v76 = v64;
    v69 = v57;
    v70 = v58;
    v71 = v59;
    v72 = v60;
    v23._countAndFlagsBits = &v69;
    String.init(argument:)(v23);
    v24 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v24 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      *&v89 = v22;
      *(&v89 + 1) = v21;
    }

    else
    {
      sub_1000289DC(v81, &v89);
      sub_100059548(v81, &v89);
      sub_100028A38(v81);
      v21 = *(&v89 + 1);
      v22 = v89;
    }

    v97 = v77;
    v98 = v78;
    v99 = v79;
    v100 = v80;
    v93 = v73;
    v94 = v74;
    v95 = v75;
    v96 = v76;
    v89 = v69;
    v90 = v70;
    v91 = v71;
    v92 = v72;
  }

  else
  {

    sub_10002F144(&v89);
    v22 = 0;
    v21 = 0;
  }

  v77 = v97;
  v78 = v98;
  v79 = v99;
  v80 = v100;
  v73 = v93;
  v74 = v94;
  v75 = v95;
  v76 = v96;
  v69 = v89;
  v70 = v90;
  v71 = v91;
  v72 = v92;
  v25 = sub_10007FA40(a9, &v69);
  v26 = v25;
  v28 = v27;
  if (!v21)
  {
    if (a3 <= 0xFDu)
    {
      v44 = a3;
      sub_10002BB8C(a1, a2, a3);
      _StringGuts.grow(_:)(36);

      v45._countAndFlagsBits = a4;
      v45._object = a5;
      String.append(_:)(v45);
      v46._object = 0x8000000100099A60;
      v46._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v46);
      v47 = sub_100068E38(a1, a2, a3);
      v49 = v48;
      sub_100029F88(a1, a2, v44);
      v50._countAndFlagsBits = v47;
      v50._object = v49;
      String.append(_:)(v50);

      v35 = 39;
      v36 = 0xE100000000000000;
    }

    else
    {
      _StringGuts.grow(_:)(28);

      v34._countAndFlagsBits = a4;
      v34._object = a5;
      String.append(_:)(v34);
      v35 = 0x766E692073692027;
      v36 = 0xED00002E64696C61;
    }

    String.append(_:)(*&v35);
    v51._countAndFlagsBits = v26;
    v51._object = v28;
    String.append(_:)(v51);
    goto LABEL_17;
  }

  if (a3 > 0xFDu)
  {
    _StringGuts.grow(_:)(38);

    v29._countAndFlagsBits = a4;
    v29._object = a5;
    String.append(_:)(v29);
    v30._countAndFlagsBits = 0xD000000000000013;
    v30._object = 0x8000000100099A80;
    String.append(_:)(v30);
    v31._countAndFlagsBits = v22;
    v31._object = v21;
    String.append(_:)(v31);
    v32._countAndFlagsBits = 10046;
    v32._object = 0xE200000000000000;
    String.append(_:)(v32);
    v33._countAndFlagsBits = v26;
    v33._object = v28;
    String.append(_:)(v33);

LABEL_17:

    goto LABEL_18;
  }

  v53 = v25;
  sub_10002BB8C(a1, a2, a3);
  _StringGuts.grow(_:)(41);

  v37._countAndFlagsBits = a4;
  v37._object = a5;
  String.append(_:)(v37);
  v38._object = 0x8000000100099A60;
  v38._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v38);
  v39._countAndFlagsBits = sub_100068E38(a1, a2, a3);
  String.append(_:)(v39);

  v40._countAndFlagsBits = 15392;
  v40._object = 0xE200000000000000;
  String.append(_:)(v40);
  v41._countAndFlagsBits = v22;
  v41._object = v21;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 10046;
  v42._object = 0xE200000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = v53;
  v43._object = v28;
  String.append(_:)(v43);

  sub_100029F88(a1, a2, a3);
LABEL_18:
  sub_100002BCC(&v89, &qword_1000B5208, &qword_1000914C0);
  return 0x756C617620656854;
}

__n128 sub_100082740(uint64_t a1, __int128 *a2)
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

uint64_t sub_10008276C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1000827B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100082868()
{
  result = static CommandLine.arguments.getter();
  qword_1000B66D0 = result;
  return result;
}

unint64_t sub_100082888(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
LABEL_26:
  }

  v5 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  v7 = 15;
  while (1)
  {
    v9 = v7 & 0xC;
    result = v7;
    if (v9 == v6)
    {
      result = sub_100082D44(v7, a1, a2);
    }

    v11 = result >> 16;
    if (result >> 16 >= v4)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v12 = result;
      if (v9 != v6)
      {
        goto LABEL_20;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v13[0] = a1;
      v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v12 = *(v13 + v11);
      if (v9 != v6)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v12 = *(result + v11);
      if (v9 != v6)
      {
LABEL_20:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_21;
      }
    }

    result = sub_100082D44(v7, a1, a2);
    v7 = result;
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_8:
      v7 = (v7 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_9;
    }

LABEL_21:
    if (v4 <= v7 >> 16)
    {
      goto LABEL_30;
    }

    v7 = String.UTF8View._foreignIndex(after:)();
LABEL_9:
    v8 = stderr.getter();
    putc(v12, v8);
    if (4 * v4 == v7 >> 14)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_100082A44(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100082DC0(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_100082D44(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_100082DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100045B5C(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_10008334C()
{
  if (getenv("COLUMNS"))
  {
    result = String.init(cString:)();
    v2 = HIBYTE(v1) & 0xF;
    v3 = result & 0xFFFFFFFFFFFFLL;
    if ((v1 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(v1) & 0xF;
    }

    else
    {
      v4 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      if ((v1 & 0x1000000000000000) != 0)
      {
        v31 = 0;
        v6 = sub_100082DC0(result, v1, 10);
        v24 = v28;
LABEL_64:

        if (v24)
        {
          v6 = 0;
        }

        goto LABEL_69;
      }

      if ((v1 & 0x2000000000000000) != 0)
      {
        v30[0] = result;
        v30[1] = v1 & 0xFFFFFFFFFFFFFFLL;
        if (result == 43)
        {
          if (v2)
          {
            v3 = v2 - 1;
            if (v2 != 1)
            {
              v6 = 0;
              v16 = v30 + 1;
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  break;
                }

                v18 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  break;
                }

                v6 = v18 + v17;
                if (__OFADD__(v18, v17))
                {
                  break;
                }

                ++v16;
                if (!--v3)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_62;
          }

LABEL_78:
          __break(1u);
          return result;
        }

        if (result != 45)
        {
          if (v2)
          {
            v6 = 0;
            v21 = v30;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                break;
              }

              v23 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                break;
              }

              ++v21;
              if (!--v2)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_62;
        }

        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v10 = v30 + 1;
            while (1)
            {
              v11 = *v10 - 48;
              if (v11 > 9)
              {
                break;
              }

              v12 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v12 - v11;
              if (__OFSUB__(v12, v11))
              {
                break;
              }

              ++v10;
              if (!--v3)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          result = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v3 = v29;
        }

        v5 = *result;
        if (v5 == 43)
        {
          if (v3 >= 1)
          {
            if (--v3)
            {
              v6 = 0;
              if (result)
              {
                v13 = (result + 1);
                while (1)
                {
                  v14 = *v13 - 48;
                  if (v14 > 9)
                  {
                    goto LABEL_62;
                  }

                  v15 = 10 * v6;
                  if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                  {
                    goto LABEL_62;
                  }

                  v6 = v15 + v14;
                  if (__OFADD__(v15, v14))
                  {
                    goto LABEL_62;
                  }

                  ++v13;
                  if (!--v3)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_61;
            }

            goto LABEL_62;
          }

          goto LABEL_77;
        }

        if (v5 != 45)
        {
          if (v3)
          {
            v6 = 0;
            if (result)
            {
              while (1)
              {
                v19 = *result - 48;
                if (v19 > 9)
                {
                  goto LABEL_62;
                }

                v20 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_62;
                }

                v6 = v20 + v19;
                if (__OFADD__(v20, v19))
                {
                  goto LABEL_62;
                }

                ++result;
                if (!--v3)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_61;
          }

LABEL_62:
          v6 = 0;
          LOBYTE(v3) = 1;
          goto LABEL_63;
        }

        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v7 = (result + 1);
              while (1)
              {
                v8 = *v7 - 48;
                if (v8 > 9)
                {
                  goto LABEL_62;
                }

                v9 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_62;
                }

                v6 = v9 - v8;
                if (__OFSUB__(v9, v8))
                {
                  goto LABEL_62;
                }

                ++v7;
                if (!--v3)
                {
                  goto LABEL_63;
                }
              }
            }

LABEL_61:
            LOBYTE(v3) = 0;
LABEL_63:
            v31 = v3;
            v24 = v3;
            goto LABEL_64;
          }

          goto LABEL_62;
        }

        __break(1u);
      }

      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }
  }

  v6 = 0;
  v24 = 1;
LABEL_69:
  if (getenv("LINES"))
  {
    v25 = String.init(cString:)();
    sub_100082A44(v25, v26);
  }

  else
  {
    v27 = 1;
  }

  LOBYTE(v30[0]) = v24 & 1;
  v31 = v27 & 1;
  return v6;
}

uint64_t sub_1000836A4()
{
  TIOCGWINSZ.getter();
  if (ioctl(_:_:_:)())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100083748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 - 8);
  __chkstk_darwin();
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getAssociatedTypeWitness();
  v18 = Set.init()();
  (*(v8 + 16))(v10, v4, a1);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = &v18;
  v11 = Sequence.filter(_:)();

  return v11;
}

uint64_t sub_100083884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v14 - v10;
  (*(v7 + 16))(v9, a1, AssociatedTypeWitness);
  type metadata accessor for Set();
  v12 = Set.insert(_:)();
  (*(v7 + 8))(v11, AssociatedTypeWitness);
  return v12 & 1;
}

uint64_t sub_100083A08(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100083AB4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100083B60(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v13[0] = *(v7 - 2);
      v13[1] = v9;
      v13[2] = v8;

      v10 = a1(v13);

      if (v3)
      {
        break;
      }

      v11 = v6-- == 0;
      v7 += 3;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_100083C24(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v14[0] = v8;
      v14[1] = v9;
      v15 = v10;
      sub_10002BB8C(v8, v9, v10);
      v11 = a1(v14);
      sub_100028AE8(v8, v9, v10);
      if (v3)
      {
        break;
      }

      v7 += 24;
      v12 = v6-- == 0;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_100083CF8(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_100083E34(Swift::UInt a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = __CocoaDictionary.lookup(_:)();

    if (v2)
    {
      sub_1000021C0(&qword_1000B59C0, &unk_100093050);
      swift_dynamicCast();
      return v5;
    }
  }

  else if (*(a2 + 16))
  {
    sub_100056308(a1);
    if (v4)
    {
    }
  }

  return 0;
}

uint64_t sub_100083EF4()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  swift_weakDestroy();

  return v0;
}

uint64_t sub_100083F9C()
{
  sub_100083EF4();

  return swift_deallocClassInstance();
}

Swift::Int sub_100084044()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

Swift::Int sub_1000840D4(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100084018();
  return Hasher._finalize()();
}

void *sub_100084154(Swift::UInt a1, uint64_t a2)
{
  v43 = a2;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_74;
  }

LABEL_2:
  v3 = &_swiftEmptySetSingleton;
LABEL_3:
  v52 = v3;
  sub_1000021C0(&qword_1000B5FA0, &unk_100096540);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100091370;
  *(v4 + 32) = a1;
  v51 = v4;
  v45 = sub_100075678(_swiftEmptyArrayStorage);

  v5 = 0;
  v35 = 0;
LABEL_4:
  a1 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 < 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v44 = v4 & 0xC000000000000001;
  v42 = a1 + 32;
  v7 = v4 >> 62;
  while (!v7)
  {
    v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 < v5)
    {
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
      goto LABEL_71;
    }

LABEL_13:
    if (v9 < 0)
    {
      goto LABEL_67;
    }

    if (!v44 || v5 == v9)
    {

      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v5 >= v9)
      {
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_2;
        }

        v3 = sub_1000854F8(_swiftEmptyArrayStorage);
        goto LABEL_3;
      }

      v10 = v5;
      do
      {
        sub_1000021C0(&qword_1000B59C0, &unk_100093050);
        _ArrayBuffer._typeCheckSlowPath(_:)(v10++);
      }

      while (v9 != v10);
      if (!v7)
      {
LABEL_20:
        v11 = v42;
        v12 = v5;
        v13 = v5 < v9;
        if (v5 == v9)
        {
          goto LABEL_63;
        }

        goto LABEL_24;
      }
    }

    _CocoaArrayWrapper.subscript.getter();
    v13 = v12 < (v14 >> 1);
    if (v12 == v14 >> 1)
    {
LABEL_63:

      swift_unknownObjectRelease();

      return _swiftEmptyArrayStorage;
    }

LABEL_24:
    if (!v13)
    {
      goto LABEL_68;
    }

    v15 = *(v11 + 8 * v12);

    swift_unknownObjectRelease();
    v16 = __OFADD__(v5++, 1);
    if (v16)
    {
      goto LABEL_69;
    }

    if (*(v15 + 16) == v43)
    {

      v32 = swift_allocObject();
      *(v32 + 16) = v45;
      v33 = swift_allocObject();
      *(v33 + 16) = sub_1000857CC;
      *(v33 + 24) = v32;
      v46 = v15;
      v47 = 1;
      v48 = sub_100085834;
      v49 = v33;
      v50 = 0;
      return sub_1000847C8();
    }

    v17 = v6;

    sub_100056BF0(&v46, v15);

    swift_beginAccess();
    v18 = *(v15 + 40);
    if (!(v18 >> 62))
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
LABEL_33:
      v40 = v19;
      v41 = v52 & 0xC000000000000001;
      v42 = v18 & 0xC000000000000001;
      v38 = v18 & 0xFFFFFFFFFFFFFF8;
      v37 = v18 + 32;
      v20 = v52 & 0xFFFFFFFFFFFFFF8;
      if (v52 < 0)
      {
        v20 = v52;
      }

      v39 = v20;
      v44 = v52;
      v36 = v52 + 56;

      v21 = 0;
      v22 = v35;
      v23 = v45;
      while (1)
      {
        v45 = v23;
        if (v42)
        {
          a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *(v38 + 16))
          {
            goto LABEL_73;
          }

          a1 = *(v37 + 8 * v21);
        }

        v16 = __OFADD__(v21++, 1);
        if (v16)
        {
          goto LABEL_70;
        }

        if (v41)
        {

          v24 = __CocoaSet.contains(_:)();

          if ((v24 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        else
        {
          if (!*(v44 + 16) || (Hasher.init(_seed:)(), Hasher._combine(_:)(a1), v25 = Hasher._finalize()(), v26 = -1 << *(v44 + 32), v27 = v25 & ~v26, ((*(v36 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0))
          {
LABEL_51:
            v46 = a1;
            __chkstk_darwin();
            v34[2] = &v46;
            if ((sub_100083CF8(sub_10008577C, v34, v4) & 1) == 0)
            {

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v4 = v51;
            }

            v29 = v45;
            if ((v45 & 0xC000000000000001) != 0)
            {
              if (v45 >= 0)
              {
                v29 = v45 & 0xFFFFFFFFFFFFFF8;
              }

              v30 = __CocoaDictionary.count.getter();
              if (__OFADD__(v30, 1))
              {
                goto LABEL_72;
              }

              v29 = sub_1000849A4(v29, v30 + 1);
            }

            else
            {
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v46 = v29;
            sub_10006C5C4(v15, a1, isUniquelyReferenced_nonNull_native);

            v23 = v46;
            goto LABEL_37;
          }

          v28 = ~v26;
          while (*(*(v44 + 48) + 8 * v27) != a1)
          {
            v27 = (v27 + 1) & v28;
            if (((*(v36 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_51;
            }
          }
        }

        v23 = v45;
LABEL_37:
        if (v21 == v40)
        {
          v45 = v23;
          v35 = v22;

          goto LABEL_4;
        }
      }
    }

LABEL_30:

    v6 = v17;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result >= v5)
  {
    v9 = result;
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < v5)
    {
      goto LABEL_77;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= v9)
    {
      goto LABEL_13;
    }

    goto LABEL_66;
  }

  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

unint64_t sub_1000847C8()
{
  v1 = sub_100084FE0(v0);
  v15 = *v0;
  v16 = *(v0 + 8);
  sub_100085860(&v15);

  if ((v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    goto LABEL_33;
  }

  v2 = *(v1 + 16);
  v3 = v2 >> 1;
  while (v2 + 1 >= 3)
  {
    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      v8 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_29;
          }

          v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v9)
          {
            goto LABEL_30;
          }

          if (v7 >= v9)
          {
            goto LABEL_31;
          }

          v10 = *(v1 + 8 * v6);
          v11 = *(v1 + 8 * v7 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1000588A0(v1);
          v12 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v12) = 0;
        }

        v13 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v11;

        if ((v1 & 0x8000000000000000) != 0 || v12)
        {
          v1 = sub_1000588A0(v1);
          v13 = v1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_27:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v7 >= *(v13 + 16))
        {
          goto LABEL_32;
        }

        *(v13 + 8 * v7 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
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
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14 < -1)
    {
      __break(1u);
    }

    v2 = v14;
    v3 = v14 / 2;
  }

  return v1;
}

Swift::Int sub_1000849A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000021C0(&qword_1000B5DF8, &unk_100096560);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaDictionary.makeIterator()();
    for (; __CocoaDictionary.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000021C0(&qword_1000B59C0, &unk_100093050);
      swift_dynamicCast();
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_10006BDC0(v9 + 1, 1);
        v2 = v16;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
      v4 = v2 + 64;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 64 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 64 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v15;
      *(*(v2 + 56) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_100084BE4(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    *(a1 + 8) = 0;
  }

  else if (v2)
  {
    v7 = *a1;

    a2(&v8, &v7);

    v5 = v8;

    *a1 = v5;
    return v5;
  }

  return v2;
}

void *sub_100084C84(void *result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v50 = result + 4;
  v6 = _swiftEmptyArrayStorage;
  v7 = &_swiftEmptyArrayStorage[4];
  v49 = result + 7;
LABEL_3:
  v9 = *(v1 + 16);
  if (v5 == v9)
  {
    goto LABEL_33;
  }

  v51 = v4;
  if (v5 >= v9)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v10 = v6;
  v11 = 2 * v5;
  v12 = &v50[2 * v5];
  v14 = *v12;
  v13 = v12[1];

  result = sub_10004CDB4(v3, v2);
  ++v5;
  v15 = &v49[v11];
  v3 = v14;
  if (!v14)
  {
    goto LABEL_7;
  }

LABEL_6:
  v8 = *(v3 + 16);
  if (v8)
  {
    v19 = 0;
    v2 = v13;
    v6 = v10;
    v4 = v51;
    while (v19 < v8)
    {
      v20 = (v3 + 192 * v19);
      v21 = v20[2];
      v22 = v20[3];
      v23 = v20[5];
      v56 = v20[4];
      v57 = v23;
      v54 = v21;
      v55 = v22;
      v24 = v20[6];
      v25 = v20[7];
      v26 = v20[9];
      v60 = v20[8];
      v61 = v26;
      v58 = v24;
      v59 = v25;
      v27 = v20[10];
      v28 = v20[11];
      v29 = v20[13];
      v64 = v20[12];
      v65 = v29;
      v62 = v27;
      v63 = v28;
      if (v4)
      {
        result = sub_1000289DC(&v54, v53);
        v30 = v6;
        v31 = __OFSUB__(v4--, 1);
        if (v31)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v32 = v6[3];
        if (((v32 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_40;
        }

        v33 = v32 & 0xFFFFFFFFFFFFFFFELL;
        if (v33 <= 1)
        {
          v34 = 1;
        }

        else
        {
          v34 = v33;
        }

        sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
        v30 = swift_allocObject();
        v35 = (j__malloc_size(v30) - 32) / 192;
        v30[2] = v34;
        v30[3] = 2 * v35;
        v36 = v6[3] >> 1;
        v7 = &v30[24 * v36 + 4];
        v52 = (v35 & 0x7FFFFFFFFFFFFFFFLL) - v36;
        if (v6[2])
        {
          if (v30 >= v6 && v30 + 4 < &v6[24 * v36 + 4] && v30 == v6)
          {
            sub_1000289DC(&v54, v53);
          }

          else
          {
            sub_1000289DC(&v54, v53);
            memmove(v30 + 4, v6 + 4, 192 * v36);
          }

          v6[2] = 0;
        }

        else
        {
          sub_1000289DC(&v54, v53);
        }

        v4 = v52 - 1;
        if (__OFSUB__(v52, 1))
        {
          goto LABEL_39;
        }
      }

      ++v19;
      v37 = v54;
      v38 = v55;
      v39 = v57;
      v7[2] = v56;
      v7[3] = v39;
      *v7 = v37;
      v7[1] = v38;
      v40 = v58;
      v41 = v59;
      v42 = v61;
      v7[6] = v60;
      v7[7] = v42;
      v7[4] = v40;
      v7[5] = v41;
      v43 = v62;
      v44 = v63;
      v45 = v65;
      v7[10] = v64;
      v7[11] = v45;
      v7[8] = v43;
      v7[9] = v44;
      v7 += 12;
      v6 = v30;
      if (v3)
      {
        v8 = *(v3 + 16);
        if (v19 != v8)
        {
          continue;
        }
      }

      goto LABEL_3;
    }

    goto LABEL_38;
  }

LABEL_7:
  while (1)
  {
    v16 = *(v1 + 16);
    if (v5 == v16)
    {
      break;
    }

    if (v5 >= v16)
    {
      goto LABEL_37;
    }

    v18 = *(v15 - 1);
    v17 = *v15;

    result = sub_10004CDB4(v3, v13);
    ++v5;
    v15 += 2;
    v13 = v17;
    v3 = v18;
    if (v18)
    {
      goto LABEL_6;
    }
  }

  v2 = v13;
  v6 = v10;
  v4 = v51;
LABEL_33:
  result = sub_10004CDB4(v3, v2);
  v46 = v6[3];
  if (v46 < 2)
  {
    return v6;
  }

  v47 = v46 >> 1;
  v31 = __OFSUB__(v47, v4);
  v48 = v47 - v4;
  if (!v31)
  {
    v6[2] = v48;
    return v6;
  }

LABEL_41:
  __break(1u);
  return result;
}

void *sub_100084FE0(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = a1[2];
  v3 = *(a1 + 32);
  v24 = *a1;
  v25 = v1;

  if (v3)
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
  }

  else
  {
    result = v2(&v23, &v24);
    v7 = v23;
    v5 = _swiftEmptyArrayStorage;
    v4 = 0;
    if (v23)
    {
      v8 = &_swiftEmptyArrayStorage[4];
      while (1)
      {
        if (!v4)
        {
          v9 = v5[3];
          if (((v9 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_25;
          }

          v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
          if (v10 <= 1)
          {
            v11 = 1;
          }

          else
          {
            v11 = v10;
          }

          sub_1000021C0(&qword_1000B5FA0, &unk_100096540);
          v12 = swift_allocObject();
          v13 = j__malloc_size(v12);
          v14 = v13 - 32;
          if (v13 < 32)
          {
            v14 = v13 - 25;
          }

          v15 = v14 >> 3;
          v12[2] = v11;
          v12[3] = (2 * (v14 >> 3)) | 1;
          v16 = (v12 + 4);
          v17 = v5[3] >> 1;
          if (v5[2])
          {
            v18 = v5 + 4;
            if (v12 != v5 || v16 >= v18 + 8 * v17)
            {
              memmove(v12 + 4, v18, 8 * v17);
            }

            v5[2] = 0;
          }

          v8 = (v16 + 8 * v17);
          v4 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;

          v5 = v12;
        }

        v19 = __OFSUB__(v4--, 1);
        if (v19)
        {
          break;
        }

        *v8++ = v7;
        result = v2(&v23, &v24);
        v7 = v23;
        if (!v23)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

LABEL_20:

  v20 = v5[3];
  if (v20 < 2)
  {
    return v5;
  }

  v21 = v20 >> 1;
  v19 = __OFSUB__(v21, v4);
  v22 = v21 - v4;
  if (!v19)
  {
    v5[2] = v22;
    return v5;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_100085194(uint64_t a1, uint64_t a2)
{
  sub_1000021C0(&qword_1000B59C0, &unk_100093050);
  v5 = swift_allocObject();
  swift_weakInit();
  v5[2] = a1;
  v5[3] = a2;
  swift_weakAssign();
  v5[5] = _swiftEmptyArrayStorage;
  v6 = *(a2 + 16);
  v41 = a1;
  v6(v44, a1, a2);
  CommandConfiguration.subcommands.getter();
  v8 = v7;
  result = sub_100027BE4(v44);
  v40 = *(v8 + 16);
  if (!v40)
  {
    goto LABEL_15;
  }

  v10 = 0;
  v11 = (v8 + 40);
  v38 = v5 + 5;
  v39 = v5;
  while (1)
  {
    if (v10 >= *(v8 + 16))
    {
      __break(1u);
      return result;
    }

    v12 = *(v11 - 1);
    v13 = *v11;
    if (v12 == v41)
    {

      sub_10006720C(0, v20, v21, v22);
      sub_1000858E0(v23, v24, v25, v26);
      swift_allocError();
      *v27 = v41;
      v27[1] = v13;
      swift_willThrow();
LABEL_13:

      return v5;
    }

    v42 = v10;
    v14 = v8;
    (*(v13 + 16))(v45, v12, v13);
    v15 = v45[18];

    sub_100027BE4(v45);
    v16 = (*(v13 + 24))(v12, v13);
    v45[21] = &v37;
    v43[0] = v16;
    v43[1] = v17;
    __chkstk_darwin();
    v36[2] = v43;
    v18 = sub_100083AB4(sub_100062BC0, v36, v15);

    if (v18)
    {

      sub_10006720C(0, v28, v29, v30);
      sub_1000858E0(v31, v32, v33, v34);
      swift_allocError();
      *v35 = v12;
      v35[1] = v13 | 0x8000000000000000;
      swift_willThrow();
      v5 = v39;
      goto LABEL_13;
    }

    sub_100085194(v12, v13);
    v5 = v39;
    v8 = v14;
    if (v2)
    {
      break;
    }

    v19 = v38;
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v10 = v42 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    swift_weakAssign();

    v11 += 2;
    if (v40 == v10)
    {
      goto LABEL_15;
    }
  }

LABEL_15:

  return v5;
}