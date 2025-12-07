void sub_1BF11DDA4(uint64_t a1)
{
  sub_1BF11FB1C(0, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v44 - v5;
  sub_1BF11FB1C(0, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v44 - v17;
  v19 = *(a1 + 56);
  if (v19)
  {
    v51 = v1;
    v20 = *(a1 + 48);
    v21 = v20 == 42 && v19 == 0xE100000000000000;
    if (!v21 && (sub_1BF17B86C() & 1) == 0)
    {
      *&v47 = v20;
      *(&v47 + 1) = v19;
      v49 = 58;
      v50 = 0xE100000000000000;
      sub_1BF013170();
      if (sub_1BF17AF8C())
      {
        sub_1BF11FC94(v51 + OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents, v18, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
        v22 = sub_1BF178F0C();
        if (__swift_getEnumTagSinglePayload(v18, 1, v22) == 1)
        {
          sub_1BF11FB70(v18, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
          return;
        }

        v25 = sub_1BF178EEC();
        v27 = v26;
        (*(*(v22 - 8) + 8))(v18, v22);
        if (v27)
        {
          v28 = sub_1BF17A1FC();
          v29 = sub_1BF0CF7B0(v28, v20, v19);
          v30 = MEMORY[0x1BFB51F50](v29);
          v32 = v31;

          sub_1BF15195C(v25, v27, v30, v32);

LABEL_20:
        }
      }

      else
      {
        v46 = OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents;
        sub_1BF11FC94(v51 + OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents, v14, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
        v23 = sub_1BF178F0C();
        if (__swift_getEnumTagSinglePayload(v14, 1, v23) == 1)
        {
          sub_1BF11FB70(v14, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
          v45 = 0;
          v24 = 0;
        }

        else
        {
          v33 = sub_1BF178EEC();
          v24 = v34;
          (*(*(v23 - 8) + 8))(v14, v23);
          if (v24)
          {
            v35 = v20 == v33 && v19 == v24;
            if (v35 || (sub_1BF17B86C() & 1) != 0)
            {
              goto LABEL_20;
            }
          }

          v45 = v33;
        }

        sub_1BF178D7C();
        v36 = sub_1BF178D8C();
        __swift_storeEnumTagSinglePayload(v6, 0, 1, v36);
        v37 = isNilOrEmpty(_:trim:)(v20, v19);
        sub_1BF11FB70(v6, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
        if (v37)
        {
          sub_1BF178D7C();
          __swift_storeEnumTagSinglePayload(v6, 0, 1, v36);
          v38 = isNilOrEmpty(_:trim:)(v45, v24);

          sub_1BF11FB70(v6, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
          if (v38)
          {
            return;
          }
        }

        else
        {
        }

        sub_1BF11FC94(v51 + v46, v10, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v23);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        if (EnumTagSinglePayload == 1)
        {
          sub_1BF11FB70(v10, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
          v40 = 0;
          v41 = 0;
        }

        else
        {
          v40 = sub_1BF178EEC();
          v41 = v42;
          (*(*(v23 - 8) + 8))(v10, v23);
        }

        sub_1BF11D294();
        swift_allocError();
        *v43 = v20;
        *(v43 + 8) = v19;
        *(v43 + 16) = v40;
        *(v43 + 24) = v41;
        *(v43 + 32) = v47;
        *(v43 + 48) = v48;
        *(v43 + 56) = 7;
        swift_willThrow();
      }
    }
  }
}

void sub_1BF11E360(uint64_t a1, void *a2)
{
  v3 = v2;
  v211 = sub_1BF178D8C();
  v6 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211, v7);
  v187 = &v181 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v197 = &v181 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v186 = &v181 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v196 = &v181 - v17;
  sub_1BF11FB1C(0, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v195 = &v181 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v181 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v181 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  MEMORY[0x1EEE9AC00](v31, v32);
  v194 = &v181 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v202 = &v181 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v203 = &v181 - v43;
  v44 = *(a1 + 64);
  if (!v44)
  {
    return;
  }

  v190 = *(v44 + 16);
  if (!v190)
  {
    return;
  }

  v45 = 0;
  v192 = OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_queryParamValues;
  v191 = v44 + 32;
  v205 = (v6 + 8);
  v206 = (v6 + 32);
  v183 = v3;
  v184 = a2;
  v193 = v24;
  v199 = v41;
  v185 = v42;
  v189 = v44;
  v200 = v28;
LABEL_4:
  if (v45 >= *(v44 + 16))
  {
    goto LABEL_120;
  }

  v46 = v191 + 40 * v45;
  v47 = *v46;
  v204 = *(v46 + 8);
  v48 = *(v46 + 16);
  v49 = *(v46 + 24);
  v50 = *(v46 + 32);
  v51 = HIBYTE(v49) & 0xF;
  v52 = v202;
  v209 = v47;
  v210 = v49;
  v212 = v48;
  v198 = v45 + 1;
  switch(v50)
  {
    case 1:
      v188 = v50;
      v73 = *(v3 + v192);
      if (*(v73 + 16))
      {
        sub_1BF11FBC4(v209, v204, v212, v49, 1u);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v48 = v212;
        v74 = sub_1BF014CA8();
        v55 = MEMORY[0x1E69E7CC0];
        v75 = &qword_1ED8EDCF8;
        if (v76)
        {
          v55 = *(*(v73 + 56) + 8 * v74);
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        }
      }

      else
      {
        sub_1BF11FBC4(v209, v204, v48, v49, 1u);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v55 = MEMORY[0x1E69E7CC0];
        v75 = &qword_1ED8EDCF8;
      }

      v144 = 0;
      v145 = *(v55 + 16);
      v146 = v48 & 0xFFFFFFFFFFFFLL;
      if ((v49 & 0x2000000000000000) != 0)
      {
        v146 = HIBYTE(v49) & 0xF;
      }

      v182 = v146;
      v147 = (v55 + 40);
      v208 = v55;
      v201 = v145;
      while (1)
      {
        if (v145 == v144)
        {
          v139 = v209;
          v140 = v204;
          v141 = v48;
          v142 = v49;
          v143 = 1;
          goto LABEL_108;
        }

        if (v144 >= *(v55 + 16))
        {
          __break(1u);
          goto LABEL_119;
        }

        v148 = *(v147 - 1);
        v149 = *v147;
        v150 = v148 == v48 && v49 == v149;
        if (v150 || (sub_1BF17B86C() & 1) != 0)
        {
          v67 = v204;
          v55 = v208;
          v66 = v209;
          goto LABEL_117;
        }

        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v151 = v199;
        sub_1BF178D7C();
        v152 = v211;
        __swift_storeEnumTagSinglePayload(v151, 0, 1, v211);
        v153 = v200;
        sub_1BF11FC94(v151, v200, v75, MEMORY[0x1E69680B8]);
        if (__swift_getEnumTagSinglePayload(v153, 1, v152) == 1)
        {
          v154 = MEMORY[0x1E69680B8];
          sub_1BF11FB70(v151, v75, MEMORY[0x1E69680B8]);
          sub_1BF11FB70(v153, v75, v154);
          v155 = v149;
        }

        else
        {
          v156 = *v206;
          v207 = v144;
          v157 = v75;
          v158 = v211;
          v159 = v147;
          v160 = v197;
          v156(v197, v153, v211);
          v213 = v148;
          v214 = v149;
          sub_1BF013170();
          v148 = sub_1BF17AF4C();
          v155 = v161;
          v162 = v160;
          v147 = v159;
          v163 = v158;
          v75 = v157;
          v144 = v207;
          v145 = v201;
          (*v205)(v162, v163);
          sub_1BF11FB70(v151, v75, MEMORY[0x1E69680B8]);
        }

        v164 = HIBYTE(v155) & 0xF;
        if ((v155 & 0x2000000000000000) == 0)
        {
          v164 = v148 & 0xFFFFFFFFFFFFLL;
        }

        v49 = v210;
        v48 = v212;
        if (v164)
        {

          v55 = v208;
        }

        else
        {
          v207 = v147;
          v165 = v75;
          v166 = v193;
          sub_1BF178D7C();
          v167 = v211;
          __swift_storeEnumTagSinglePayload(v166, 0, 1, v211);
          v168 = v195;
          sub_1BF11FC94(v166, v195, v165, MEMORY[0x1E69680B8]);
          if (__swift_getEnumTagSinglePayload(v168, 1, v167) == 1)
          {

            v169 = v168;
            v170 = MEMORY[0x1E69680B8];
            sub_1BF11FB70(v166, v165, MEMORY[0x1E69680B8]);
            sub_1BF11FB70(v169, v165, v170);
            v171 = v182;
          }

          else
          {
            v172 = v187;
            v173 = v211;
            (*v206)(v187, v168, v211);
            v213 = v48;
            v214 = v210;
            sub_1BF013170();
            v174 = sub_1BF17AF4C();
            v176 = v175;

            v177 = v172;
            v49 = v210;
            (*v205)(v177, v173);
            sub_1BF11FB70(v193, v165, MEMORY[0x1E69680B8]);

            v171 = HIBYTE(v176) & 0xF;
            if ((v176 & 0x2000000000000000) == 0)
            {
              v171 = v174 & 0xFFFFFFFFFFFFLL;
            }
          }

          v75 = v165;
          v147 = v207;
          v55 = v208;
          if (!v171)
          {
            goto LABEL_115;
          }
        }

        v147 += 2;
        v144 = (v144 + 1);
      }

    case 2:
      v188 = v50;
      v63 = *(v3 + v192);
      v64 = *(v63 + 16);
      v65 = v48;
      v66 = v209;
      v67 = v204;
      sub_1BF11FBC4(v209, v204, v65, v49, 2u);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v64 && (v68 = sub_1BF014CA8(), (v69 & 1) != 0))
      {
        v55 = *(*(v63 + 56) + 8 * v68);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      }

      else
      {
        v55 = MEMORY[0x1E69E7CC0];
      }

      if (!*(v55 + 16))
      {
        goto LABEL_117;
      }

      v81 = *a2;
      if (*(*a2 + 16) && (v82 = sub_1BF014CA8(), (v83 & 1) != 0))
      {
        v213 = *(*(v81 + 56) + 8 * v82);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      }

      else
      {
        v213 = MEMORY[0x1E69E7CC0];
      }

      sub_1BF0CABA8(v55);
      v84 = v213;
      swift_isUniquelyReferenced_nonNull_native();
      v215 = *a2;
      v85 = v215;
      *a2 = 0x8000000000000000;
      v86 = sub_1BF014CA8();
      v88 = v212;
      if (__OFADD__(v85[2], (v87 & 1) == 0))
      {
        goto LABEL_121;
      }

      v89 = v86;
      v90 = v87;
      sub_1BF08334C(0);
      if (sub_1BF17B43C())
      {
        v91 = sub_1BF014CA8();
        a2 = v184;
        if ((v90 & 1) != (v92 & 1))
        {
          goto LABEL_125;
        }

        v89 = v91;
      }

      else
      {
        a2 = v184;
      }

      v93 = v215;
      if (v90)
      {
        *(v215[7] + 8 * v89) = v84;

        v94 = v209;
        v95 = v210;
        v96 = v67;
        v97 = v88;
        v98 = 2;
        goto LABEL_103;
      }

      v215[(v89 >> 6) + 8] |= 1 << v89;
      v99 = (v93[6] + 16 * v89);
      *v99 = v209;
      v99[1] = v67;
      *(v93[7] + 8 * v89) = v84;
      v100 = v93[2];
      v101 = __OFADD__(v100, 1);
      v102 = v100 + 1;
      if (v101)
      {
        goto LABEL_123;
      }

      goto LABEL_105;
    case 3:
      v188 = v50;
      v70 = *(v3 + v192);
      if (*(v70 + 16))
      {
        v67 = v204;
        sub_1BF11FBC4(v209, v204, v48, v49, 3u);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v71 = sub_1BF014CA8();
        v55 = MEMORY[0x1E69E7CC0];
        if (v72)
        {
          v55 = *(*(v70 + 56) + 8 * v71);
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        }
      }

      else
      {
        v67 = v204;
        sub_1BF11FBC4(v209, v204, v48, v49, 3u);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v55 = MEMORY[0x1E69E7CC0];
      }

      if (*(v55 + 16))
      {
        goto LABEL_116;
      }

      sub_1BF11FC2C(v209, v67, v212, v49, 3u);

      goto LABEL_110;
    case 4:
      v57 = *(v3 + v192);
      v58 = *(v57 + 16);
      v59 = v204;
      sub_1BF11FBC4(v209, v204, v48, v49, 4u);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v58 && (v60 = sub_1BF014CA8(), (v61 & 1) != 0))
      {
        v62 = *(*(v57 + 56) + 8 * v60);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      }

      else
      {
        v62 = MEMORY[0x1E69E7CC0];
      }

      v77 = v212;

      if (*(v62 + 16))
      {
        v78 = *a2;
        if (*(*a2 + 16) && (v79 = sub_1BF014CA8(), (v80 & 1) != 0))
        {
          v213 = *(*(v78 + 56) + 8 * v79);
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        }

        else
        {
          v213 = MEMORY[0x1E69E7CC0];
        }

        sub_1BF0CABA8(v62);
        v103 = v213;
        swift_isUniquelyReferenced_nonNull_native();
        v215 = *a2;
        v104 = v215;
        *a2 = 0x8000000000000000;
        v105 = sub_1BF014CA8();
        if (__OFADD__(v104[2], (v106 & 1) == 0))
        {
          goto LABEL_122;
        }

        v107 = v105;
        v108 = v106;
        sub_1BF08334C(0);
        if (sub_1BF17B43C())
        {
          v109 = sub_1BF014CA8();
          a2 = v184;
          if ((v108 & 1) != (v110 & 1))
          {
            goto LABEL_125;
          }

          v107 = v109;
        }

        else
        {
          a2 = v184;
        }

        v93 = v215;
        if (v108)
        {
          *(v215[7] + 8 * v107) = v103;

          v94 = v209;
          v95 = v210;
          v96 = v59;
          v97 = v77;
          v98 = 4;
LABEL_103:
          sub_1BF11FC2C(v94, v96, v97, v95, v98);
        }

        else
        {
          v215[(v107 >> 6) + 8] |= 1 << v107;
          v178 = (v93[6] + 16 * v107);
          *v178 = v209;
          v178[1] = v59;
          *(v93[7] + 8 * v107) = v103;
          v179 = v93[2];
          v101 = __OFADD__(v179, 1);
          v102 = v179 + 1;
          if (v101)
          {
            goto LABEL_124;
          }

LABEL_105:
          v93[2] = v102;
        }

        v3 = v183;

        *a2 = v93;
      }

      else
      {

        sub_1BF11FC2C(v209, v59, v77, v210, 4u);
      }

      goto LABEL_110;
    default:
      v188 = v50;
      v53 = *(v3 + v192);
      if (*(v53 + 16))
      {
        sub_1BF11FBC4(v209, v204, v212, v210, 0);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v49 = v210;
        v48 = v212;
        v54 = sub_1BF014CA8();
        v55 = MEMORY[0x1E69E7CC0];
        if (v56)
        {
          v55 = *(*(v53 + 56) + 8 * v54);
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        }
      }

      else
      {
        sub_1BF11FBC4(v209, v204, v48, v49, 0);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v55 = MEMORY[0x1E69E7CC0];
      }

      v111 = 0;
      v201 = *(v55 + 16);
      v112 = v48 & 0xFFFFFFFFFFFFLL;
      if ((v49 & 0x2000000000000000) != 0)
      {
        v112 = v51;
      }

      v182 = v112;
      v113 = (v55 + 40);
      while (2)
      {
        if (v201 == v111)
        {
LABEL_115:
          v67 = v204;
LABEL_116:
          v66 = v209;
LABEL_117:
          sub_1BF11D294();
          swift_allocError();
          *v180 = v66;
          *(v180 + 8) = v67;
          *(v180 + 16) = v212;
          *(v180 + 24) = v49;
          *(v180 + 32) = v188;
          *(v180 + 40) = v55;
          *(v180 + 56) = 8;
          swift_willThrow();
          return;
        }

        if (v111 < *(v55 + 16))
        {
          v114 = v55;
          v115 = *(v113 - 1);
          v116 = *v113;
          v117 = v115 == v48 && v49 == v116;
          if (v117 || (sub_1BF17B86C() & 1) != 0)
          {
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

            v139 = v209;
            v140 = v204;
            v141 = v48;
            v142 = v49;
            v143 = 0;
LABEL_108:
            sub_1BF11FC2C(v139, v140, v141, v142, v143);
          }

          else
          {
            v207 = v113;
            v208 = v111;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            v118 = v203;
            sub_1BF178D7C();
            v119 = v211;
            __swift_storeEnumTagSinglePayload(v118, 0, 1, v211);
            sub_1BF11FC94(v118, v52, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
            if (__swift_getEnumTagSinglePayload(v52, 1, v119) == 1)
            {
              v120 = MEMORY[0x1E69680B8];
              sub_1BF11FB70(v118, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
              sub_1BF11FB70(v52, &qword_1ED8EDCF8, v120);
              v121 = v116;
            }

            else
            {
              v122 = v196;
              (*v206)(v196, v52, v119);
              v213 = v115;
              v214 = v116;
              sub_1BF013170();
              v115 = sub_1BF17AF4C();
              v121 = v123;
              v124 = v122;
              v49 = v210;
              (*v205)(v124, v119);
              sub_1BF11FB70(v118, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
            }

            v125 = HIBYTE(v121) & 0xF;
            if ((v121 & 0x2000000000000000) == 0)
            {
              v125 = v115 & 0xFFFFFFFFFFFFLL;
            }

            v48 = v212;
            v126 = v208;
            if (v125)
            {

              v55 = v114;
              v127 = v207;
LABEL_74:
              v113 = v127 + 2;
              v111 = v126 + 1;
              continue;
            }

            v128 = v185;
            sub_1BF178D7C();
            v129 = v211;
            __swift_storeEnumTagSinglePayload(v128, 0, 1, v211);
            v130 = v194;
            sub_1BF11FC94(v128, v194, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
            if (__swift_getEnumTagSinglePayload(v130, 1, v129) == 1)
            {

              v131 = v130;
              v132 = MEMORY[0x1E69680B8];
              sub_1BF11FB70(v128, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
              sub_1BF11FB70(v131, &qword_1ED8EDCF8, v132);
              v133 = v182;
            }

            else
            {
              v134 = v186;
              (*v206)(v186, v130, v129);
              v213 = v212;
              v214 = v210;
              sub_1BF013170();
              v135 = sub_1BF17AF4C();
              v137 = v136;

              v138 = v134;
              v49 = v210;
              (*v205)(v138, v129);
              sub_1BF11FB70(v128, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);

              v133 = HIBYTE(v137) & 0xF;
              if ((v137 & 0x2000000000000000) == 0)
              {
                v133 = v135 & 0xFFFFFFFFFFFFLL;
              }
            }

            v127 = v207;
            v52 = v202;
            v48 = v212;
            v55 = v114;
            if (v133)
            {
              goto LABEL_74;
            }

            sub_1BF11FC2C(v209, v204, v48, v49, 0);
          }

          v3 = v183;
          a2 = v184;
LABEL_110:
          v45 = v198;
          v44 = v189;
          if (v198 == v190)
          {
            return;
          }

          goto LABEL_4;
        }

        break;
      }

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
      sub_1BF17BAAC();
      __break(1u);
      return;
  }
}

uint64_t sub_1BF11F508(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return result;
  }

  v3 = *(a3 + 16);
  if (!v3)
  {
    return result;
  }

  v5 = result;
  for (i = (a3 + 48); ; i += 24)
  {
    v8 = *(i - 2);
    v7 = *(i - 1);
    if ((*i & 1) == 0)
    {
      break;
    }

    result = sub_1BF17A1BC();
    if (result != v8)
    {
      v10 = sub_1BF17B6FC();
      v12 = v11;
      sub_1BF17A1BC();
      v13 = sub_1BF17B6FC();
      v15 = v14;
      sub_1BF11D294();
      swift_allocError();
      *v16 = v8;
      *(v16 + 8) = v7;
      *(v16 + 16) = 1;
      *(v16 + 24) = v10;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      *(v16 + 48) = v15;
      *(v16 + 56) = 5;
      return swift_willThrow();
    }

LABEL_9:
    if (!--v3)
    {
      return result;
    }
  }

  sub_1BF11FCF8(*(i - 2), *(i - 1), 0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if (sub_1BF0B6F44(v8, v7, v5, a2))
  {
    sub_1BF11FD08(v8, v7, 0);
    result = sub_1BF11FD08(v8, v7, 0);
    goto LABEL_9;
  }

  sub_1BF11D294();
  swift_allocError();
  *v9 = v8;
  *(v9 + 8) = v7;
  *(v9 + 16) = 0;
  *(v9 + 24) = v8;
  *(v9 + 32) = v7;
  *(v9 + 40) = v5;
  *(v9 + 48) = a2;
  *(v9 + 56) = 5;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return swift_willThrow();
}

uint64_t URLHandlerMatcher.deinit()
{
  v1 = OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_url;
  sub_1BF17923C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_0_68();
  sub_1BF11FB70(v0 + v3, v4, v5);

  return v0;
}

uint64_t URLHandlerMatcher.__deallocating_deinit()
{
  URLHandlerMatcher.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF11F7B0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8 && a1 >> 16 == a5 >> 16 && a2 >> 16 == a6 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1BF17B6EC() & 1;
  }
}

uint64_t sub_1BF11F824(uint64_t a1, uint64_t a2)
{
  sub_1BF11FB1C(0, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for URLHandlerMatcher(uint64_t a1)
{
  result = qword_1ED8EBAE8;
  if (!qword_1ED8EBAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BF11F8F8(uint64_t a1)
{
  sub_1BF17923C();
  if (v1 <= 0x3F)
  {
    sub_1BF11FB1C(319, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation17URLHandlerMatcherC6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 56) & 0xFu) <= 8)
  {
    return *(a1 + 56) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BF11FA50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF7 && *(a1 + 57))
    {
      v2 = *a1 + 246;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 <= 9)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF11FA90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF11FAE4(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 9;
  }

  *(result + 56) = a2;
  return result;
}

void sub_1BF11FB1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF17AE6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BF11FB70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BF11FB1C(0, a2, a3);
  OUTLINED_FUNCTION_12();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BF11FBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 >= 3)
  {
    if (a5 > 1u)
    {
      return result;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t sub_1BF11FC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 >= 3)
  {
    if (a5 > 1u)
    {
      return result;
    }
  }
}

uint64_t sub_1BF11FC94(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BF11FB1C(0, a3, a4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BF11FCF8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

uint64_t sub_1BF11FD08(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCSelectorBuilder(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF11FE6C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736E656B6F74 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF17B86C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void *sub_1BF11FEF4(void *a1)
{
  sub_1BF120150(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF1201AC();
  sub_1BF17BBDC();
  if (!v1)
  {
    sub_1BF120200(0);
    sub_1BF120258();
    sub_1BF17B5FC();
    (*(v5 + 8))(v8, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1BF120080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF11FE6C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF1200AC(uint64_t a1)
{
  v2 = sub_1BF1201AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF1200E8(uint64_t a1)
{
  v2 = sub_1BF1201AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1BF120124@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1BF11FEF4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1BF120150(uint64_t a1)
{
  if (!qword_1ED8E9BA0)
  {
    sub_1BF1201AC();
    v1 = sub_1BF17B63C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8E9BA0);
    }
  }
}

unint64_t sub_1BF1201AC()
{
  result = qword_1ED8EA728;
  if (!qword_1ED8EA728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA728);
  }

  return result;
}

void sub_1BF120200(uint64_t a1)
{
  if (!qword_1ED8E9C50)
  {
    type metadata accessor for AuthTokenResponseItem(255);
    v1 = sub_1BF17A65C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8E9C50);
    }
  }
}

unint64_t sub_1BF120258()
{
  result = qword_1ED8E9C48;
  if (!qword_1ED8E9C48)
  {
    sub_1BF120200(255);
    sub_1BF1202D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E9C48);
  }

  return result;
}

unint64_t sub_1BF1202D0()
{
  result = qword_1ED8EA1A0;
  if (!qword_1ED8EA1A0)
  {
    type metadata accessor for AuthTokenResponseItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA1A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AuthTokenResponse.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BF1203D8()
{
  result = qword_1EBDCC330;
  if (!qword_1EBDCC330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC330);
  }

  return result;
}

unint64_t sub_1BF120430()
{
  result = qword_1ED8EA718;
  if (!qword_1ED8EA718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA718);
  }

  return result;
}

unint64_t sub_1BF120488()
{
  result = qword_1ED8EA720;
  if (!qword_1ED8EA720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA720);
  }

  return result;
}

uint64_t static TaskScheduler.promise<A>(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1ED8EF148 != -1)
  {
    OUTLINED_FUNCTION_0_69(&qword_1ED8EF148);
  }

  return TaskScheduler.promise<A>(_:)(a1, a2, a3, a4);
}

uint64_t static TaskScheduler.scheduleAfter(_:_:)(uint64_t a1, uint64_t a2, double a3)
{
  if (qword_1ED8EF148 != -1)
  {
    OUTLINED_FUNCTION_0_69(&qword_1ED8EF148);
  }

  return TaskScheduler.scheduleAfter(_:_:)(a3, a1, a2);
}

uint64_t static TaskScheduler.shared.getter()
{
  if (qword_1ED8EF148 != -1)
  {
    OUTLINED_FUNCTION_0_69(&qword_1ED8EF148);
  }
}

uint64_t TaskScheduler.scheduleAfter(_:_:)(double a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v4 = sub_1BF179B5C();
  OUTLINED_FUNCTION_1();
  v46 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  sub_1BF179BBC();
  OUTLINED_FUNCTION_1();
  v44 = v12;
  v45 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = sub_1BF179BEC();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v44 - v26;
  v28 = [objc_opt_self() isMainThread];
  v49 = *(v3 + 16);
  sub_1BF179BDC();
  sub_1BF179C6C();
  v29 = *(v19 + 8);
  v48 = v17;
  v50 = v29;
  v29(v23, v17);
  if (v28)
  {
    sub_1BF179BAC();
    OUTLINED_FUNCTION_6_35();
    v53 = 1107296256;
    OUTLINED_FUNCTION_3_39();
    v54 = v30;
    v55 = &block_descriptor_9;
    _Block_copy(aBlock);
    v51 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_2_53();
    sub_1BEFF7458(v31, v32, MEMORY[0x1E69E7F70]);
    v33 = OUTLINED_FUNCTION_10_26();
    sub_1BF027D54(v33);
    OUTLINED_FUNCTION_1_54();
    sub_1BEFF7458(v34, v35, MEMORY[0x1E69E6328]);

    sub_1BF17B0BC();
    sub_1BF179C4C();
    swift_allocObject();
    sub_1BF179C1C();

    sub_1BF17AD3C();

    return v50(v27, v48);
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    v53 = 1107296256;
    OUTLINED_FUNCTION_3_39();
    v54 = v37;
    v55 = &block_descriptor_6_0;
    v38 = _Block_copy(aBlock);

    sub_1BF179B8C();
    v51 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_2_53();
    sub_1BEFF7458(v39, v40, MEMORY[0x1E69E7F70]);
    v41 = OUTLINED_FUNCTION_10_26();
    sub_1BF027D54(v41);
    OUTLINED_FUNCTION_1_54();
    sub_1BEFF7458(v42, v43, MEMORY[0x1E69E6328]);
    sub_1BF17B0BC();
    MEMORY[0x1BFB52B00](v27, v16, v10, v38);
    _Block_release(v38);
    (*(v46 + 8))(v10, v4);
    (*(v44 + 8))(v16, v45);
    v50(v27, v48);
  }
}

uint64_t TaskScheduler.promise<A>(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promise(0, *((*MEMORY[0x1E69E7D40] & *a1) + 0x50), a3, a4);
  v5 = a1;

  v6 = Promise.__allocating_init(_:scheduleOn:)();

  return v6;
}

uint64_t TaskScheduler.scheduleAsync<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_14_7();
}

uint64_t sub_1BF120B30()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_11_20(v1);

  return sub_1BF16CC64(v2, v3);
}

uint64_t sub_1BF120BC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t TaskScheduler.scheduleLowPriorityAsync<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_14_7();
}

uint64_t sub_1BF120CD0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_11_20(v1);

  return sub_1BF16CC64(v2, v3);
}

uint64_t TaskScheduler.__deallocating_deinit()
{
  TaskScheduler.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

id static TaskScheduler.schedule(_:)(uint64_t a1)
{
  if (qword_1ED8EF148 != -1)
  {
    OUTLINED_FUNCTION_0_69(&qword_1ED8EF148);
  }

  v2 = *(off_1ED8EF150 + 3);

  return [v2 addOperation_];
}

id static TaskScheduler.callbackQueue.getter()
{
  if (qword_1ED8EF148 != -1)
  {
    OUTLINED_FUNCTION_0_69(&qword_1ED8EF148);
  }

  v0 = *(off_1ED8EF150 + 2);

  return v0;
}

id static TaskScheduler.scheduleLowPriority(_:)(uint64_t a1)
{
  if (qword_1ED8EF148 != -1)
  {
    OUTLINED_FUNCTION_0_69(&qword_1ED8EF148);
  }

  v2 = *(off_1ED8EF150 + 4);

  return [v2 addOperation_];
}

uint64_t withOSActivity<A>(_:block:)(char *a1, int a2, char a3, void (*a4)(void))
{
  v8 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = sub_1BF120FC4(a1, a2, a3, &dword_1BEFE0000);
  os_activity_scope_enter(v5, &state);
  a4();
  os_activity_scope_leave(&state);
  return swift_unknownObjectRelease();
}

os_activity_t sub_1BF120FC4(char *description, int a2, char a3, void *dso)
{
  if ((a3 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_1ED8EBC20 == -1)
        {
LABEL_5:
          v6 = qword_1ED8EBC28;

          return _os_activity_create(dso, description, v6, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        swift_once();
        goto LABEL_5;
      }

LABEL_28:
      result = sub_1BF17B49C();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v8 = description + 1;
    goto LABEL_13;
  }

  v9 = (description & 0x3F) << 8;
  v10 = (description >> 6) + v9 + 33217;
  v11 = (v9 | (description >> 6) & 0x3F) << 8;
  v12 = (description >> 18) + ((v11 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v13 = (description >> 12) + v11 + 8487393;
  if (description >> 16)
  {
    v8 = v12;
  }

  else
  {
    v8 = v13;
  }

  if (description < 0x800)
  {
    v8 = v10;
  }

LABEL_13:
  *descriptiona = (v8 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v8) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (qword_1ED8EBC20 != -1)
  {
    swift_once();
  }

  return _os_activity_create(dso, descriptiona, qword_1ED8EBC28, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t withOSActivity<A>(_:operation:)()
{
  OUTLINED_FUNCTION_5();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  *(v0 + 96) = v3;
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  *(v0 + 32) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BF12125C, 0, 0);
}

uint64_t sub_1BF12125C()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  v5 = sub_1BF120FC4(v4, v2, *(v0 + 96), &dword_1BEFE0000);
  *(v0 + 72) = v5;
  os_activity_scope_enter(v5, (v0 + 16));
  v9 = (v3 + *v3);
  v6 = swift_task_alloc();
  *(v1 + 80) = v6;
  *v6 = v1;
  v6[1] = sub_1BF1213AC;
  v7 = *(v1 + 32);

  return v9(v7);
}

uint64_t sub_1BF1213AC()
{
  OUTLINED_FUNCTION_5();
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1BF121580;
  }

  else
  {
    v2 = sub_1BF1214E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BF1214E8()
{
  OUTLINED_FUNCTION_5();
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  v1 = v0->opaque[1];

  return v1();
}

uint64_t sub_1BF121580()
{
  OUTLINED_FUNCTION_5();
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  v1 = v0->opaque[1];

  return v1();
}

uint64_t sub_1BF121618()
{
  qword_1ED8EBC28 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t sub_1BF121784(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1BF1217C4()
{

  MEMORY[0x1BFB548B0](v0 + 32);
  return v0;
}

uint64_t sub_1BF1217EC()
{
  v0 = sub_1BF1217C4();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

BOOL sub_1BF12181C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

uint64_t sub_1BF121864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *v7;
  v14 = sub_1BF1794FC();
  OUTLINED_FUNCTION_2_3();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v22 = *(a3 + 16);
  LOBYTE(v20) = *(a4 + 16);
  *(v7 + qword_1EBDCAB20) = a2;
  v23 = v7 + qword_1EBDCAB18;
  *v23 = *a4;
  v23[16] = v20;
  v24 = v7 + qword_1EBDCAB28;
  *v24 = *a3;
  *(v24 + 2) = v22;
  v30[0] = *(v13 + 144);
  v30[1] = v30[0];
  type metadata accessor for CallbackInstanceDefinition.Wrapper(0, v30);
  v25 = sub_1BF121738(a5, a6);
  *(v7 + qword_1EBDCAB10) = v25;
  (*(v16 + 16))(v21, a1, v14);
  v26 = sub_1BEFF07BC(v21, sub_1BF121F6C, v25);
  v27 = *(v16 + 8);

  v27(a1, v14);
  return v26;
}

uint64_t sub_1BF121A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(a3 + 16))(result, a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BF121AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *v3;
  v8 = sub_1BF1794FC();
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_2_0();
  (*(v20 + 16))(v19 - v18, a2, a3);
  v21 = *(v6 + 152);
  result = swift_dynamicCast();
  if (result)
  {
    type metadata accessor for CallbackInstanceDefinition(0, *(v7 + 144), v21, v23);
    (*(v10 + 16))(v15, v3 + qword_1ED8F52F0, v8);
    v24 = *(v3 + qword_1EBDCAB20);
    OUTLINED_FUNCTION_2_54();
    v25 = *(v3 + qword_1EBDCAB18 + 8);
    v26 = *(v3 + qword_1EBDCAB18 + 16);
    v35 = *(v3 + qword_1EBDCAB18);
    v36 = v25;
    v37 = v26;
    v27 = *(v3 + qword_1EBDCAB10);
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF0DA424(v35, v25, v26);

    v30 = sub_1BF1216BC(v15, v24, v38, &v35, v28, v29);
    swift_unknownObjectWeakAssign();
    v31 = *(v30 + qword_1EBDCAB20);
    OUTLINED_FUNCTION_2_54();
    v33 = *(v30 + qword_1EBDCAB18 + 8);
    v34 = *(v30 + qword_1EBDCAB18 + 16);
    v35 = *(v30 + qword_1EBDCAB18);
    v32 = v35;
    v36 = v33;
    v37 = v34;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF0DA424(v32, v33, v34);
    sub_1BEFEF4F4(v31, v38, &v35, v30);
    swift_unknownObjectRelease();

    sub_1BEFF3798(v35, v36, v37);
  }

  return result;
}

uint64_t sub_1BF121DB4()
{

  sub_1BEFF3798(*(v0 + qword_1EBDCAB18), *(v0 + qword_1EBDCAB18 + 8), *(v0 + qword_1EBDCAB18 + 16));
}

uint64_t sub_1BF121E10()
{
  v0 = sub_1BF00B2D4();

  sub_1BEFF3798(*(v0 + qword_1EBDCAB18), *(v0 + qword_1EBDCAB18 + 8), *(v0 + qword_1EBDCAB18 + 16));

  return v0;
}

uint64_t sub_1BF121E74()
{
  v0 = sub_1BF121E10();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id (*static Merging.throwError<A>(_:)(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = a1;
  return sub_1BF12206C;
}

_BYTE *storeEnumTagSinglePayload for Merging(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF122158@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0 || *(a3 + 16) < a2)
  {
    __break(1u);
  }

  else
  {
    a4[1] = a2;
    a4[2] = a3;
    *a4 = result;
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

uint64_t sub_1BF12217C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = 0;
  a2[2] = *(a1 + 16);
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t sub_1BF12218C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a2)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result += a2;
  return result;
}

uint64_t sub_1BF1221B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (a2)
  {
    while (1)
    {
      if (a3 == result)
      {
        return 0;
      }

      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++result;
      if (!--a2)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1BF122200(uint64_t a1, uint64_t a2)
{
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (result < 0 != v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = __OFSUB__(a1, a2);
  v5 = a1 - a2;
  if (!v5)
  {
    return 0;
  }

  if (v5 < 0 == v4)
  {
    goto LABEL_9;
  }

  if (v5 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF12223C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF122250(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF122264(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

const void *sub_1BF122278(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1BF1764E8(*(a1 + 16), 0);
  v4 = sub_1BF176654(&v6, v3 + 32, v2, a1);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  if (v4 == v2)
  {

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF122324(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF175310(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1BF12449C(v6);
  *a1 = v2;
  return result;
}

uint64_t JSON.difference(from:)@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *v2;
  v6[0] = *a1;
  v6[1] = v3;
  v5 = MEMORY[0x1E69E7CC0];
  sub_1BF1223F0(v6, &v5, a2);
}

uint64_t sub_1BF1223F0@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *v3;
  v8 = *a1 >> 61;
  v9 = MEMORY[0x1E69E7CC0];
  switch(v6 >> 61)
  {
    case 1uLL:
      if (v8 != 1)
      {
        goto LABEL_70;
      }

      v115 = a3;
      v37 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v38 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v121[0] = MEMORY[0x1E69E7CC0];
      v39 = v4;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v114 = v39;
      sub_1BF01716C(v39);
      v113 = v6;
      sub_1BF01716C(v6);
      v118 = v37 + 32;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v40 = 4;
      for (i = v5; ; v5 = i)
      {
        v41 = v40 - 4;
        v42 = *(v37 + 16);
        if (v40 - 4 == v42)
        {
          break;
        }

        if (v40 - 4 >= v42)
        {
          goto LABEL_117;
        }

        v43 = v38[2];
        if (v41 == v43)
        {
          break;
        }

        if (v41 >= v43)
        {
          goto LABEL_118;
        }

        v44 = v5;
        v45 = v37;
        v46 = *(v37 + 8 * v40);
        v47 = v38[v40];
        v125 = v40 - 4;
        sub_1BF01716C(v46);
        sub_1BF01716C(v47);
        v48 = sub_1BF17B6FC();
        v50 = v49;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BF0A6578(0, *(i + 16) + 1, 1, i);
          v44 = v54;
        }

        v52 = *(v44 + 16);
        v51 = *(v44 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_1BF0A6578(v51 > 1, v52 + 1, 1, v44);
          v44 = v55;
        }

        *(v44 + 16) = v52 + 1;
        v53 = v44 + 16 * v52;
        *(v53 + 32) = v48;
        *(v53 + 40) = v50;
        v124 = v46;
        v122 = v44;
        v123 = v47;
        sub_1BF1223F0(&v123, &v122, &v125);

        sub_1BF0CAC58(v125);
        sub_1BF017214(v47);
        sub_1BF017214(v46);
        ++v40;
        v37 = v45;
      }

      v56 = v38[2];
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF01DD60(v56, v37);
      v58 = v57;
      v60 = v59;
      swift_unknownObjectRelease();
      v61 = v60 >> 1;
      if ((v60 >> 1) < v58)
      {
        goto LABEL_119;
      }

      if (v58 == v61)
      {
        goto LABEL_95;
      }

      if (v58 >= v61)
      {
        goto LABEL_122;
      }

      if (v58 < 0)
      {
        goto LABEL_123;
      }

      v62 = *(v37 + 16);
      if (v61 > v62 || v60 < 2 || v58 >= v62)
      {
        goto LABEL_124;
      }

      v65 = v121[0];
      do
      {
        v66 = *(v118 + 8 * v58);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF01716C(v66);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BF0A6DDC();
          v65 = v69;
        }

        v67 = *(v65 + 16);
        if (v67 >= *(v65 + 24) >> 1)
        {
          sub_1BF0A6DDC();
          v65 = v70;
        }

        *(v65 + 16) = v67 + 1;
        v68 = v65 + 40 * v67;
        *(v68 + 32) = v66;
        *(v68 + 40) = i;
        *(v68 + 48) = v58;
        *(v68 + 56) = 0;
        *(v68 + 64) = 4;
        ++v58;
      }

      while (v61 != v58);
      v121[0] = v65;
      v5 = i;
LABEL_95:
      v97 = *(v37 + 16);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF01DD60(v97, v38);
      v99 = v98;
      v101 = v100;
      swift_unknownObjectRelease();
      v102 = v101 >> 1;
      if ((v101 >> 1) < v99)
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
        goto LABEL_126;
      }

      if (v99 == v102)
      {

        sub_1BF017214(v113);
        result = sub_1BF017214(v114);
        v103 = v121[0];
LABEL_114:
        *v115 = v103;
        return result;
      }

      if (v99 >= v102)
      {
        goto LABEL_125;
      }

      if (v99 < 0)
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      v104 = v38[2];
      if (v102 <= v104 && v101 >= 2 && v99 < v104)
      {
        v103 = v121[0];
        do
        {
          v107 = v38[v99 + 4];
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
          sub_1BF01716C(v107);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1BF0A6DDC();
            v103 = v110;
          }

          v108 = *(v103 + 16);
          if (v108 >= *(v103 + 24) >> 1)
          {
            sub_1BF0A6DDC();
            v103 = v111;
          }

          *(v103 + 16) = v108 + 1;
          v109 = v103 + 40 * v108;
          *(v109 + 32) = v107;
          *(v109 + 40) = v5;
          *(v109 + 48) = v99;
          *(v109 + 56) = 0;
          *(v109 + 64) = 5;
          ++v99;
        }

        while (v102 != v99);

        sub_1BF017214(v113);
        result = sub_1BF017214(v114);
        goto LABEL_114;
      }

LABEL_127:
      __break(1u);

      __break(1u);
      return result;
    case 2uLL:
      if (v8 == 2)
      {
        goto LABEL_28;
      }

      goto LABEL_70;
    case 3uLL:
      if (v8 != 3)
      {
        goto LABEL_70;
      }

LABEL_28:
      v32 = v6;
      v33 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      if (v33 || (v34 = *a1, v35 = sub_1BF17B86C(), v4 = v34, (v35 & 1) != 0))
      {
        v34 = v4;
        sub_1BF01716C(v4);
        v36 = v32;
        goto LABEL_34;
      }

      sub_1BF126628(0, &qword_1EBDCB2E8, &type metadata for JSONDifference.Change, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1BF17DEF0;
      *(v9 + 32) = v5;
      *(v9 + 40) = v32;
      *(v9 + 48) = v34;
      *(v9 + 56) = 0;
      *(v9 + 64) = 1;
      sub_1BF01716C(v34);
      sub_1BF01716C(v32);
      sub_1BF01716C(v34);
      sub_1BF01716C(v32);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      goto LABEL_93;
    case 4uLL:
      if (v6 == 0x8000000000000000)
      {
        if (v8 == 4)
        {
          if (v4 == 0x8000000000000000)
          {
LABEL_115:
            v32 = v6;
            v36 = *a1;
            v34 = v4;
LABEL_34:
            sub_1BF01716C(v36);
LABEL_93:
            sub_1BF017214(v32);
            v73 = v34;
            goto LABEL_94;
          }

          if (v4 == 0x8000000000000008)
          {
LABEL_67:
            v71 = *a1;
            sub_1BF01716C(*a1);
            sub_1BF017214(v6);
            sub_1BF017214(v71);
            sub_1BF126628(0, &qword_1EBDCB2E8, &type metadata for JSONDifference.Change, MEMORY[0x1E69E6F90]);
            v72 = swift_allocObject();
            *(v72 + 16) = xmmword_1BF17DEF0;
            *(v72 + 32) = v5;
            *(v72 + 40) = v6;
            *(v72 + 48) = v71;
            *(v72 + 56) = 0;
            *(v72 + 64) = 1;
LABEL_71:
            *a3 = v72;
            sub_1BF01716C(v71);
            sub_1BF01716C(v6);

            return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
          }
        }
      }

      else if (v6 == 0x8000000000000008)
      {
        if (v8 == 4)
        {
          if (v4 != 0x8000000000000000)
          {
            if (v4 != 0x8000000000000008)
            {
              goto LABEL_70;
            }

            goto LABEL_115;
          }

          goto LABEL_67;
        }
      }

      else if (v4 == 0x8000000000000010)
      {
        sub_1BF017214(0x8000000000000010);
        v73 = 0x8000000000000010;
LABEL_94:
        result = sub_1BF017214(v73);
        *a3 = v9;
        return result;
      }

LABEL_70:
      v71 = *a1;
      sub_1BF01716C(*a1);
      sub_1BF01716C(v6);
      sub_1BF017214(v6);
      sub_1BF017214(v71);
      sub_1BF126628(0, &qword_1EBDCB2E8, &type metadata for JSONDifference.Change, MEMORY[0x1E69E6F90]);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_1BF17DEF0;
      *(v72 + 32) = v5;
      *(v72 + 40) = v6;
      *(v72 + 48) = v71;
      *(v72 + 56) = 0;
      *(v72 + 64) = 0;
      goto LABEL_71;
    default:
      if (v8)
      {
        goto LABEL_70;
      }

      v114 = *a1;
      v115 = a3;
      v10 = *(v6 + 16);
      v11 = *(v4 + 16);
      v125 = MEMORY[0x1E69E7CC0];
      sub_1BF01716C(v4);
      v113 = v6;
      sub_1BF01716C(v6);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v121[0] = sub_1BF0B6098(v10);
      sub_1BF122324(v121);
      v116 = v10;
      v12 = *(v121[0] + 16);
      v117 = v11;
      if (v12)
      {
        v13 = (v121[0] + 48);
        do
        {
          v15 = *(v13 - 2);
          v14 = *(v13 - 1);
          v16 = *v13;
          v17 = *(v11 + 16);
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
          sub_1BF01716C(v16);
          if (v17 && (v18 = sub_1BF014CA8(), (v19 & 1) != 0))
          {
            v20 = *(*(v11 + 56) + 8 * v18);
            sub_1BF01716C(v20);
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            v21 = v5;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1BF0A6578(0, *(v5 + 16) + 1, 1, v5);
              v21 = v30;
            }

            v23 = *(v21 + 16);
            v22 = *(v21 + 24);
            if (v23 >= v22 >> 1)
            {
              sub_1BF0A6578(v22 > 1, v23 + 1, 1, v21);
              v21 = v31;
            }

            *(v21 + 16) = v23 + 1;
            v24 = v21 + 16 * v23;
            *(v24 + 32) = v15;
            *(v24 + 40) = v14;
            v124 = v16;
            v122 = v21;
            v123 = v20;
            sub_1BF1223F0(&v123, &v122, v121);

            sub_1BF0CAC58(v121[0]);
            sub_1BF017214(v20);
            sub_1BF017214(v16);
            v11 = v117;
          }

          else
          {
            v25 = v125;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1BF0A6DDC();
              v25 = v28;
            }

            v26 = *(v25 + 16);
            if (v26 >= *(v25 + 24) >> 1)
            {
              sub_1BF0A6DDC();
              v25 = v29;
            }

            *(v25 + 16) = v26 + 1;
            v27 = v25 + 40 * v26;
            *(v27 + 32) = v16;
            *(v27 + 40) = v5;
            *(v27 + 48) = v15;
            *(v27 + 56) = v14;
            *(v27 + 64) = 2;
            v125 = v25;
          }

          v13 += 3;
          --v12;
        }

        while (v12);
      }

      v75 = 0;
      v76 = v11 + 64;
      v77 = 1 << *(v11 + 32);
      v78 = -1;
      if (v77 < 64)
      {
        v78 = ~(-1 << v77);
      }

      v79 = v78 & *(v11 + 64);
      v80 = (v77 + 63) >> 6;
      v120 = v5;
      while (2)
      {
        if (v79)
        {
          goto LABEL_82;
        }

LABEL_78:
        v81 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
        }

        else
        {
          if (v81 < v80)
          {
            v79 = *(v76 + 8 * v81);
            ++v75;
            if (v79)
            {
              v75 = v81;
LABEL_82:
              v82 = __clz(__rbit64(v79));
              v79 &= v79 - 1;
              v83 = v82 | (v75 << 6);
              v84 = (*(v11 + 48) + 16 * v83);
              v86 = *v84;
              v85 = v84[1];
              v87 = *(*(v11 + 56) + 8 * v83);
              v88 = *(v116 + 16);
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              sub_1BF01716C(v87);
              if (v88 && (sub_1BF014CA8(), (v89 & 1) != 0))
              {
                sub_1BF017214(v87);
              }

              else
              {
                v90 = v125;
                _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1BF0A6DDC();
                  v90 = v93;
                }

                v91 = *(v90 + 16);
                if (v91 >= *(v90 + 24) >> 1)
                {
                  sub_1BF0A6DDC();
                  v90 = v94;
                }

                *(v90 + 16) = v91 + 1;
                v92 = v90 + 40 * v91;
                v11 = v117;
                *(v92 + 32) = v87;
                *(v92 + 40) = v120;
                *(v92 + 48) = v86;
                *(v92 + 56) = v85;
                *(v92 + 64) = 3;
                v125 = v90;
              }

              continue;
            }

            goto LABEL_78;
          }

          v95 = v125;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_91:
            v96 = *(v95 + 16);
            v121[0] = v95 + 32;
            v121[1] = v96;
            sub_1BF1243A8(v121);
            sub_1BF017214(v113);
            result = sub_1BF017214(v114);
            *v115 = v95;
            return result;
          }
        }

        break;
      }

      sub_1BF1071CC();
      v95 = v112;
      goto LABEL_91;
  }
}

uint64_t sub_1BF122F28(__int128 *a1, __int128 *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 32);
  v5 = a1[1];
  v21 = *a1;
  v22 = v5;
  v23 = v3;
  sub_1BF12302C(&v24);
  v20 = v24;
  v6 = JSONPointer.rawValue.getter();
  v8 = v7;

  v9 = a2[1];
  v17 = *a2;
  v18 = v9;
  v19 = v4;
  sub_1BF12302C(&v16);
  v10 = JSONPointer.rawValue.getter();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1BF17B86C();
  }

  return v14 & 1;
}

uint64_t sub_1BF12302C@<X0>(uint64_t *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  switch(*(v1 + 32))
  {
    case 2:
    case 3:
      *a1 = v3;
      swift_bridgeObjectRetain_n();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF071B6C();
      v7 = *(*a1 + 16);
      sub_1BF071DA8(v7);
      v8 = *a1;
      *(v8 + 16) = v7 + 1;
      v9 = v8 + 16 * v7;
      *(v9 + 32) = v5;
      *(v9 + 40) = v4;

      break;
    case 4:
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_10;
    case 5:
LABEL_10:
      if (v5 < 0)
      {
        __break(1u);
      }

      else
      {
LABEL_11:
        v10 = sub_1BF17B6FC();
        v12 = v11;
        *a1 = v3;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF071B6C();
        v13 = *(*a1 + 16);
        sub_1BF071DA8(v13);
        v14 = *a1;
        *(v14 + 16) = v13 + 1;
        v15 = v14 + 16 * v13;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;

        *a1 = v14;
      }

      break;
    default:
      *a1 = result;

      result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      break;
  }

  return result;
}

uint64_t JSONDifference.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v7 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v8);
  v10 = sub_1BF17A67C();
  result = (*(v7 + 8))(a1, a2);
  *a4 = v10;
  return result;
}

uint64_t static JSONDifference.Change.== infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 32);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v97 = *a1;
  v98 = v5;
  v99 = v6;
  v100 = v7;
  LOBYTE(v101) = v8;
  v102 = v10;
  v103 = v9;
  v104 = v11;
  v105 = v12;
  LOBYTE(v106) = v13;
  switch(v8)
  {
    case 1:
      if (v13 != 1)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_3_40(a1, a2, a3, a4, 1);
      v14 = OUTLINED_FUNCTION_0_70();
      v18 = 1;
      goto LABEL_19;
    case 2:
      if (v13 != 2)
      {
        goto LABEL_34;
      }

      v94 = v10;
      v96 = v4;
      OUTLINED_FUNCTION_3_40(a1, a2, a3, a4, 2);
      v24 = OUTLINED_FUNCTION_0_70();
      v28 = 2;
      goto LABEL_10;
    case 3:
      if (v13 != 3)
      {
        goto LABEL_34;
      }

      v94 = v10;
      v96 = v4;
      OUTLINED_FUNCTION_3_40(a1, a2, a3, a4, 3);
      v24 = OUTLINED_FUNCTION_0_70();
      v28 = 3;
LABEL_10:
      v29 = sub_1BF0CB03C(v24, v25, v26, v27, v28);
      v37 = OUTLINED_FUNCTION_13_20(v29, v30, v31, v32, v33, v34, v35, v36, v94, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
      if ((v37 & 1) == 0)
      {
        goto LABEL_35;
      }

      v39 = OUTLINED_FUNCTION_14_22(v37, v38);
      v41 = v40;
      if (v39 == JSONPointer.rawValue.getter() && v41 == v42)
      {
      }

      else
      {
        v44 = sub_1BF17B86C();

        if ((v44 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      if (v6 != v11 || v7 != v12)
      {
        v92 = sub_1BF17B86C();
        sub_1BF12364C(&v97);
        return v92 & 1;
      }

      sub_1BF12364C(&v97);
      v81 = 1;
      return v81 & 1;
    case 4:
      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v93 = v10;
      v95 = v4;
      OUTLINED_FUNCTION_3_40(a1, a2, a3, a4, 4);
      v19 = OUTLINED_FUNCTION_0_70();
      v23 = 4;
      goto LABEL_27;
    case 5:
      if (v13 != 5)
      {
        goto LABEL_34;
      }

      v93 = v10;
      v95 = v4;
      OUTLINED_FUNCTION_3_40(a1, a2, a3, a4, 5);
      v19 = OUTLINED_FUNCTION_0_70();
      v23 = 5;
LABEL_27:
      sub_1BF0CB03C(v19, v20, v21, v22, v23);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v60 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v68 = OUTLINED_FUNCTION_13_20(v60, v61, v62, v63, v64, v65, v66, v67, v93, v95, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
      if ((v68 & 1) == 0)
      {

        goto LABEL_35;
      }

      v70 = OUTLINED_FUNCTION_14_22(v68, v69);
      v72 = v71;
      v73 = JSONPointer.rawValue.getter();
      if (v70 == v73 && v72 == v74)
      {

        sub_1BF12364C(&v97);
      }

      else
      {
        v76 = OUTLINED_FUNCTION_8_29(v73);

        sub_1BF12364C(&v97);

        if ((v76 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v81 = v6 == v11;
      return v81 & 1;
    default:
      if (v13)
      {
LABEL_34:
        OUTLINED_FUNCTION_3_40(a1, a2, a3, a4, v13);
        v77 = OUTLINED_FUNCTION_0_70();
        sub_1BF0CB03C(v77, v78, v79, v80, v8);
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_3_40(a1, a2, a3, a4, 0);
      v14 = OUTLINED_FUNCTION_0_70();
      v18 = 0;
LABEL_19:
      sub_1BF0CB03C(v14, v15, v16, v17, v18);
      sub_1BF01716C(v6);
      sub_1BF01716C(v11);
      v45 = JSONPointer.rawValue.getter();
      v47 = v46;
      v48 = JSONPointer.rawValue.getter();
      if (v45 == v48 && v47 == v49)
      {
      }

      else
      {
        v51 = OUTLINED_FUNCTION_8_29(v48);

        if ((v51 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      v83 = OUTLINED_FUNCTION_13_20(v52, v53, v54, v55, v56, v57, v58, v59, v9, v5, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
      if (v83)
      {
        v81 = OUTLINED_FUNCTION_13_20(v83, v84, v85, v86, v87, v88, v89, v90, v11, v6);
        sub_1BF12364C(&v97);
        sub_1BF017214(v11);
        sub_1BF017214(v6);
        return v81 & 1;
      }

LABEL_43:
      sub_1BF017214(v11);
      sub_1BF017214(v6);
LABEL_35:
      sub_1BF12364C(&v97);
LABEL_36:
      v81 = 0;
      return v81 & 1;
  }
}

uint64_t sub_1BF12364C(uint64_t a1)
{
  sub_1BF1236A8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF1236A8()
{
  if (!qword_1EBDCC338)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBDCC338);
    }
  }
}

uint64_t JSONDifference.description.getter()
{
  sub_1BF123C74(0);
  sub_1BF123D38();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v0 = sub_1BF179F7C();

  return v0;
}

uint64_t JSONDifference.Change.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  switch(*(v2 + 32))
  {
    case 1:
      if (*(v4 + 16))
      {
        OUTLINED_FUNCTION_2_55();
        v21 = OUTLINED_FUNCTION_14_22(v19, v20);
        MEMORY[0x1BFB52000](v21);

        MEMORY[0x1BFB52000](2618, 0xE200000000000000);
        OUTLINED_FUNCTION_5_33();
        sub_1BF0736D4(0, v22);
        MEMORY[0x1BFB52000]();
      }

      else
      {
        sub_1BF0736D4(0, a2);
        v40 = v34;
      }

      OUTLINED_FUNCTION_12_21();
      goto LABEL_32;
    case 2:
      if (*(v3 + 16))
      {
        OUTLINED_FUNCTION_1_55();
        sub_1BF17B1EC();

        OUTLINED_FUNCTION_2_55();
        OUTLINED_FUNCTION_5_33();
        v16 = JSONPointer.rawValue.getter();
        MEMORY[0x1BFB52000](v16);

        v17 = OUTLINED_FUNCTION_11_21();
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_1_55();
      sub_1BF17B1EC();

      v30 = 0x747265736E49;
      goto LABEL_25;
    case 3:
      if (*(v3 + 16))
      {
        OUTLINED_FUNCTION_1_55();
        sub_1BF17B1EC();

        OUTLINED_FUNCTION_2_55();
        OUTLINED_FUNCTION_5_33();
        v18 = JSONPointer.rawValue.getter();
        MEMORY[0x1BFB52000](v18);

        v17 = OUTLINED_FUNCTION_10_27();
LABEL_13:
        MEMORY[0x1BFB52000](v17, 0xEA0000000000220ALL);
      }

      else
      {
        OUTLINED_FUNCTION_1_55();
        sub_1BF17B1EC();

        v30 = 0x65766F6D6552;
LABEL_25:
        v40 = v30 & 0xFFFFFFFFFFFFLL | 0xA3A000000000000;
      }

      OUTLINED_FUNCTION_7_29();
      v15 = 2112034;
      v29 = 0xE300000000000000;
      goto LABEL_27;
    case 4:
      OUTLINED_FUNCTION_1_55();
      sub_1BF17B1EC();

      OUTLINED_FUNCTION_2_55();
      if (v5 < 0)
      {
        __break(1u);
LABEL_35:
        __break(1u);
      }

      else
      {
        v5 = sub_1BF17B6FC();
        v2 = v11;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_6;
        }
      }

      OUTLINED_FUNCTION_6_36();
      v3 = v36;
LABEL_6:
      v12 = *(v3 + 16);
      v13 = v12 + 1;
      if (v12 >= *(v3 + 24) >> 1)
      {
        OUTLINED_FUNCTION_4_32();
        v12 = v3;
        v3 = v37;
      }

      *(v3 + 16) = v13;
      v14 = v3 + 16 * v12;
      *(v14 + 32) = v5;
      *(v14 + 40) = v2;
      OUTLINED_FUNCTION_5_33();
      JSONPointer.rawValue.getter();

      OUTLINED_FUNCTION_7_29();

      v15 = OUTLINED_FUNCTION_11_21();
LABEL_22:
      v29 = 0xE90000000000000ALL;
LABEL_27:
      MEMORY[0x1BFB52000](v15, v29);
LABEL_32:
      sub_1BF0736D4(0, v31);
      MEMORY[0x1BFB52000]();

      return v40;
    case 5:
      OUTLINED_FUNCTION_1_55();
      sub_1BF17B1EC();

      OUTLINED_FUNCTION_2_55();
      if (v5 < 0)
      {
        goto LABEL_35;
      }

      v23 = sub_1BF17B6FC();
      v25 = v24;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_36();
        v3 = v38;
      }

      v26 = *(v3 + 16);
      v27 = v26 + 1;
      if (v26 >= *(v3 + 24) >> 1)
      {
        OUTLINED_FUNCTION_4_32();
        v26 = v3;
        v3 = v39;
      }

      *(v3 + 16) = v27;
      v28 = v3 + 16 * v26;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      OUTLINED_FUNCTION_5_33();
      JSONPointer.rawValue.getter();

      OUTLINED_FUNCTION_7_29();

      v15 = OUTLINED_FUNCTION_10_27();
      goto LABEL_22;
    default:
      if (*(v4 + 16))
      {
        OUTLINED_FUNCTION_1_55();
        sub_1BF17B1EC();
        v6 = MEMORY[0x1BFB52000](2126913, 0xE300000000000000);
        v8 = OUTLINED_FUNCTION_14_22(v6, v7);
        MEMORY[0x1BFB52000](v8);

        v9 = 0x80000001BF18F500;
        v10 = 0xD000000000000010;
      }

      else
      {
        OUTLINED_FUNCTION_1_55();
        sub_1BF17B1EC();
        v10 = 0x73696D2065707954;
        v9 = 0xEF0A3A686374616DLL;
      }

      v32 = MEMORY[0x1BFB52000](v10, v9);
      OUTLINED_FUNCTION_9_26(v32);
      OUTLINED_FUNCTION_12_21();
      OUTLINED_FUNCTION_9_26(v33);
      return v40;
  }
}

uint64_t sub_1BF123C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = JSONDifference.Change.description.getter(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_1BF123C74(uint64_t a1)
{
  if (!qword_1EBDCC340)
  {
    sub_1BF126628(255, &qword_1EBDCC348, &type metadata for JSONDifference.Change, MEMORY[0x1E69E62F8]);
    sub_1BF123DDC(&qword_1EBDCC350, &qword_1EBDCC348, &type metadata for JSONDifference.Change, MEMORY[0x1E69E6328]);
    v1 = sub_1BF17B3FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDCC340);
    }
  }
}

unint64_t sub_1BF123D38()
{
  result = qword_1EBDCC358;
  if (!qword_1EBDCC358)
  {
    sub_1BF123C74(255);
    sub_1BF123DDC(&qword_1EBDCC360, &qword_1EBDCC348, &type metadata for JSONDifference.Change, MEMORY[0x1E69E6310]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC358);
  }

  return result;
}

uint64_t sub_1BF123DDC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BF126628(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int __swiftcall JSONDifference.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t JSONDifference.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    v3 = *v2 + 40 * result;
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    v7 = *(v3 + 56);
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
    v8 = *(v3 + 64);
    *(a2 + 32) = v8;
    return sub_1BF0CB03C(v4, v5, v6, v7, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF123EA0@<X0>(uint64_t *a1@<X8>)
{
  result = JSONDifference.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_1BF123EC8(void *a1, unint64_t *a2))(unint64_t **a1)
{
  v4 = __swift_coroFrameAllocStub(0x21uLL);
  *a1 = v4;
  JSONDifference.subscript.getter(*a2, v4);
  return sub_1BF123F30;
}

void sub_1BF123F30(unint64_t **a1)
{
  v1 = *a1;
  sub_1BF0CB11C(**a1, v1[1], v1[2], v1[3], *(v1 + 32));

  free(v1);
}

uint64_t sub_1BF123F94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1BF12218C(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF123FC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1BF1221B4(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

Swift::Int sub_1BF124050@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = JSONDifference.index(after:)(*a1);
  *a2 = result;
  return result;
}

void *sub_1BF12407C(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

unint64_t sub_1BF1240B4()
{
  result = qword_1EBDCC368;
  if (!qword_1EBDCC368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC368);
  }

  return result;
}

uint64_t sub_1BF124158(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BF124290(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF12419C()
{
  result = qword_1EBDCC380;
  if (!qword_1EBDCC380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC380);
  }

  return result;
}

void sub_1BF124290(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BF12419C();
    v7 = a3(a1, &type metadata for JSONDifference, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BF124310(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 33))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF124350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF1243A8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BF17B6DC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1BF17A57C();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1BF1248AC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1BF124594(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BF12449C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BF17B6DC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1BF070F64();
        v6 = sub_1BF17A57C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BF12595C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1BF1247D4(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_1BF124594(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v34 = *a4;
    v4 = *a4 + 40 * a3 - 40;
    v5 = result - a3;
    while (2)
    {
      v32 = v4;
      v33 = a3;
      v31 = v5;
      v6 = v5;
      while (1)
      {
        v35 = v6;
        v7 = v4 + 40;
        v8 = *(v4 + 48);
        v9 = *(v4 + 56);
        v10 = *(v4 + 64);
        v11 = *(v4 + 72);
        v12 = *v4;
        v13 = *(v4 + 8);
        v14 = *(v4 + 16);
        v15 = *(v4 + 24);
        v37 = v14;
        v16 = *(v4 + 32);
        v36 = v16;
        v47 = *(v4 + 40);
        v48 = v8;
        v49 = v9;
        v50 = v10;
        v51 = v11;
        v42 = v8;
        v43 = v47;
        v40 = v10;
        v41 = v9;
        v39 = v11;
        sub_1BF0CB03C(v47, v8, v9, v10, v11);
        sub_1BF0CB03C(v12, v13, v14, v15, v16);
        sub_1BF12302C(&v52);
        v46 = v52;
        v17 = JSONPointer.rawValue.getter();
        v19 = v18;

        v38 = v12;
        v44[1] = v12;
        v44[2] = v13;
        v44[3] = v14;
        v44[4] = v15;
        v45 = v36;
        sub_1BF12302C(v44);
        v20 = JSONPointer.rawValue.getter();
        v22 = v21;

        if (v17 == v20 && v19 == v22)
        {
          break;
        }

        v24 = sub_1BF17B86C();

        sub_1BF0CB11C(v38, v13, v37, v15, v36);
        result = sub_1BF0CB11C(v43, v42, v41, v40, v39);
        if (v24)
        {
          if (!v34)
          {
            __break(1u);
            return result;
          }

          v25 = *(v4 + 72);
          v26 = *(v4 + 56);
          v27 = *v4;
          v28 = *(v4 + 16);
          v29 = *(v4 + 32);
          *v4 = *(v4 + 40);
          *(v4 + 16) = v26;
          *(v4 + 32) = v25;
          v4 -= 40;
          *v7 = v27;
          *(v7 + 16) = v28;
          *(v7 + 32) = v29;
          v6 = v35 + 1;
          if (v35 != -1)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      sub_1BF0CB11C(v12, v13, v37, v15, v36);
      result = sub_1BF0CB11C(v43, v42, v41, v40, v39);
LABEL_13:
      a3 = v33 + 1;
      v4 = v32 + 40;
      v5 = v31 - 1;
      if (v33 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1BF1247D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == v12[1])
        {
          break;
        }

        result = sub_1BF17B86C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = v12[4];
        v14 = v12[5];
        v15 = v12[2];
        result = v12[3];
        *(v12 + 3) = *v12;
        v12[5] = v15;
        *v12 = result;
        v12[1] = v10;
        v12[2] = v14;
        v12 -= 3;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BF1248AC(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  v6 = MEMORY[0x1E69E7CC0];
  if (v5 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_158:
    v240 = *a1;
    if (!*a1)
    {
      goto LABEL_204;
    }

    v4 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_198:
      v4 = sub_1BF1751AC(v4);
    }

    v200 = (v4 + 16);
    for (i = *(v4 + 2); i >= 2; *v200 = i)
    {
      if (!*a3)
      {
        goto LABEL_201;
      }

      v202 = &v4[16 * i];
      v203 = *v202;
      v204 = &v200[2 * i];
      v205 = *(v204 + 1);
      sub_1BF125FE4((*a3 + 40 * *v202), (*a3 + 40 * *v204), *a3 + 40 * v205, v240);
      if (v212)
      {
        break;
      }

      if (v205 < v203)
      {
        goto LABEL_189;
      }

      if (i - 2 >= *v200)
      {
        goto LABEL_190;
      }

      *v202 = v203;
      *(v202 + 1) = v205;
      v206 = *v200 - i;
      if (*v200 < i)
      {
        goto LABEL_191;
      }

      i = *v200 - 1;
      sub_1BF1751C0(v204 + 16, v206, v204);
    }

LABEL_168:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v209 = v8;
    v9 = v7;
    v10 = v7 + 1;
    v216 = v7;
    if (v7 + 1 >= v5)
    {
      goto LABEL_29;
    }

    v11 = *a3;
    v12 = v7 + 1;
    v13 = *a3 + 40 * v10;
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    v17 = *(v13 + 32);
    *&v245 = *v13;
    *(&v245 + 1) = v14;
    v246 = v15;
    v247 = v16;
    v248 = v17;
    v18 = v11 + 40 * v9;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v23 = v9;
    v24 = *(v18 + 32);
    *&v241 = *v18;
    v19 = v241;
    *(&v241 + 1) = v20;
    v242 = v21;
    v243 = v22;
    v244 = v24;
    sub_1BF0CB03C(v245, v14, v15, v16, v17);
    sub_1BF0CB03C(v19, v20, v21, v22, v24);
    v224 = sub_1BF122F28(&v245, &v241);
    if (v212)
    {
      sub_1BF0CB11C(v241, *(&v241 + 1), v242, v243, v244);
      sub_1BF0CB11C(v245, *(&v245 + 1), v246, v247, v248);
      goto LABEL_168;
    }

    sub_1BF0CB11C(v241, *(&v241 + 1), v242, v243, v244);
    sub_1BF0CB11C(v245, *(&v245 + 1), v246, v247, v248);
    v221 = 40 * v23;
    v223 = v5;
    v25 = v11 + 40 * v23 + 56;
    v26 = (v23 + 2);
    v10 = v12;
    while (1)
    {
      v4 = v26;
      v213 = v10;
      if (v10 + 1 >= v5)
      {
        break;
      }

      v27 = *(v25 + 32);
      v28 = *(v25 + 40);
      v29 = *(v25 + 48);
      v30 = *(v25 + 56);
      v32 = *(v25 - 16);
      v31 = *(v25 - 8);
      v33 = *v25;
      v34 = *(v25 + 8);
      v35 = *(v25 + 16);
      *&v245 = *(v25 + 24);
      *(&v245 + 1) = v27;
      v246 = v28;
      v247 = v29;
      v248 = v30;
      v238 = v245;
      v240 = v26;
      v235 = v28;
      v236 = v27;
      v233 = v29;
      v231 = v30;
      sub_1BF0CB03C(v245, v27, v28, v29, v30);
      sub_1BF0CB03C(v32, v31, v33, v34, v35);
      sub_1BF12302C(&v251);
      v249 = v251;
      v36 = JSONPointer.rawValue.getter();
      v226 = v37;

      *&v241 = v32;
      *(&v241 + 1) = v31;
      v242 = v33;
      v243 = v34;
      v244 = v35;
      sub_1BF12302C(&v253);
      v38 = JSONPointer.rawValue.getter();
      v40 = v39;

      if (v36 == v38 && v226 == v40)
      {
        v42 = 0;
      }

      else
      {
        v42 = sub_1BF17B86C();
      }

      v4 = v240;

      sub_1BF0CB11C(v32, v31, v33, v34, v35);
      sub_1BF0CB11C(v238, v236, v235, v233, v231);
      v25 += 40;
      v10 = v213 + 1;
      v26 = (v240 + 1);
      v5 = v223;
      if ((v224 ^ v42))
      {
        goto LABEL_16;
      }
    }

    v10 = v5;
LABEL_16:
    if (v224)
    {
      v9 = v216;
      v6 = MEMORY[0x1E69E7CC0];
      if (v10 < v216)
      {
        goto LABEL_197;
      }

      if (v216 < v10)
      {
        if (v5 >= v4)
        {
          v43 = v4;
        }

        else
        {
          v43 = v5;
        }

        v44 = 40 * v43 - 40;
        v45 = v10;
        v46 = v216;
        v47 = v221;
        do
        {
          if (v46 != --v45)
          {
            v48 = *a3;
            if (!*a3)
            {
              goto LABEL_202;
            }

            v49 = (v48 + v47);
            v50 = *(v48 + v47 + 32);
            v51 = (v48 + v44);
            v52 = *v49;
            v53 = v49[1];
            v54 = *(v51 + 4);
            v55 = v51[1];
            *v49 = *v51;
            v49[1] = v55;
            *(v49 + 4) = v54;
            *v51 = v52;
            v51[1] = v53;
            *(v51 + 32) = v50;
          }

          ++v46;
          v44 -= 40;
          v47 += 40;
        }

        while (v46 < v45);
      }
    }

    else
    {
      v9 = v216;
      v6 = MEMORY[0x1E69E7CC0];
    }

LABEL_29:
    v56 = a3[1];
    v57 = v10;
    if (v10 < v56)
    {
      break;
    }

LABEL_100:
    v59 = v57;
LABEL_101:
    if (v59 < v9)
    {
      goto LABEL_193;
    }

    v215 = v59;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v154 = v209;
    }

    else
    {
      sub_1BF0A6798();
    }

    v155 = *(v154 + 2);
    v156 = v155 + 1;
    if (v155 >= *(v154 + 3) >> 1)
    {
      sub_1BF0A6798();
    }

    *(v154 + 2) = v156;
    v157 = v154 + 32;
    v158 = &v154[16 * v155 + 32];
    *v158 = v216;
    v158[1] = v215;
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_203;
    }

    v159 = v154;
    if (v155)
    {
      v160 = v154;
      while (1)
      {
        v161 = v156 - 1;
        v162 = &v157[2 * v156 - 2];
        v163 = &v160[16 * v156];
        if (v156 >= 4)
        {
          break;
        }

        if (v156 == 3)
        {
          v164 = *(v159 + 4);
          v165 = *(v159 + 5);
          v174 = __OFSUB__(v165, v164);
          v166 = v165 - v164;
          v167 = v174;
LABEL_122:
          if (v167)
          {
            goto LABEL_180;
          }

          v179 = *v163;
          v178 = *(v163 + 1);
          v180 = __OFSUB__(v178, v179);
          v181 = v178 - v179;
          v182 = v180;
          if (v180)
          {
            goto LABEL_183;
          }

          v183 = v162[1];
          v184 = v183 - *v162;
          if (__OFSUB__(v183, *v162))
          {
            goto LABEL_186;
          }

          if (__OFADD__(v181, v184))
          {
            goto LABEL_188;
          }

          if (v181 + v184 >= v166)
          {
            if (v166 < v184)
            {
              v161 = v156 - 2;
            }

            goto LABEL_144;
          }

          goto LABEL_137;
        }

        if (v156 < 2)
        {
          goto LABEL_182;
        }

        v186 = *v163;
        v185 = *(v163 + 1);
        v174 = __OFSUB__(v185, v186);
        v181 = v185 - v186;
        v182 = v174;
LABEL_137:
        if (v182)
        {
          goto LABEL_185;
        }

        v188 = *v162;
        v187 = v162[1];
        v174 = __OFSUB__(v187, v188);
        v189 = v187 - v188;
        if (v174)
        {
          goto LABEL_187;
        }

        if (v189 < v181)
        {
          goto LABEL_152;
        }

LABEL_144:
        if (v161 - 1 >= v156)
        {
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
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
          goto LABEL_196;
        }

        if (!*a3)
        {
          goto LABEL_200;
        }

        v193 = &v157[2 * v161 - 2];
        v194 = *v193;
        v195 = &v157[2 * v161];
        v196 = v195[1];
        sub_1BF125FE4((*a3 + 40 * *v193), (*a3 + 40 * *v195), *a3 + 40 * v196, v4);
        if (v212)
        {
          goto LABEL_168;
        }

        if (v196 < v194)
        {
          goto LABEL_171;
        }

        v197 = *(v159 + 2);
        if (v161 > v197)
        {
          goto LABEL_172;
        }

        *v193 = v194;
        v193[1] = v196;
        if (v161 >= v197)
        {
          goto LABEL_173;
        }

        v156 = v197 - 1;
        v198 = (v195 + 2);
        v160 = v159;
        sub_1BF1751C0(v198, v197 - 1 - v161, &v157[2 * v161]);
        *(v159 + 2) = v197 - 1;
        v199 = v197 > 2;
        v6 = MEMORY[0x1E69E7CC0];
        if (!v199)
        {
          goto LABEL_153;
        }
      }

      v168 = &v157[2 * v156];
      v169 = *(v168 - 8);
      v170 = *(v168 - 7);
      v174 = __OFSUB__(v170, v169);
      v171 = v170 - v169;
      if (v174)
      {
        goto LABEL_178;
      }

      v173 = *(v168 - 6);
      v172 = *(v168 - 5);
      v174 = __OFSUB__(v172, v173);
      v166 = v172 - v173;
      v167 = v174;
      if (v174)
      {
        goto LABEL_179;
      }

      v175 = *(v163 + 1);
      v176 = v175 - *v163;
      if (__OFSUB__(v175, *v163))
      {
        goto LABEL_181;
      }

      v174 = __OFADD__(v166, v176);
      v177 = v166 + v176;
      if (v174)
      {
        goto LABEL_184;
      }

      if (v177 >= v171)
      {
        v191 = *v162;
        v190 = v162[1];
        v174 = __OFSUB__(v190, v191);
        v192 = v190 - v191;
        if (v174)
        {
          goto LABEL_192;
        }

        if (v166 < v192)
        {
          v161 = v156 - 2;
        }

        goto LABEL_144;
      }

      goto LABEL_122;
    }

LABEL_152:
    v160 = v159;
LABEL_153:
    v5 = a3[1];
    v7 = v215;
    v8 = v160;
    if (v215 >= v5)
    {
      goto LABEL_158;
    }
  }

  if (__OFSUB__(v10, v9))
  {
    goto LABEL_194;
  }

  if (v10 - v9 >= a4)
  {
    goto LABEL_37;
  }

  v58 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_195;
  }

  if (v58 >= v56)
  {
    v58 = a3[1];
  }

  if (v58 < v9)
  {
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  if (v10 == v58)
  {
LABEL_37:
    v59 = v10;
    goto LABEL_101;
  }

  v220 = *a3;
  v210 = v58;
LABEL_39:
  v214 = v10;
  v60 = v10;
  while (1)
  {
    v61 = (v220 + 40 * v60);
    v4 = *v61;
    v62 = *(v61 + 1);
    v63 = *(v61 + 2);
    v64 = *(v61 + 3);
    v65 = *(v61 - 5);
    v66 = *(v61 - 3);
    v239 = *(v61 - 2);
    v240 = *(v61 - 4);
    v67 = *(v61 - 8);
    v237 = v67;
    v218 = v61;
    v219 = v60 - 1;
    v228 = *(v61 + 32);
    v229 = *v61;
    v217 = (v61 - 40);
    switch(v228)
    {
      case 1:
        sub_1BF0CB03C(v65, v240, v66, v239, v67);
        v68 = v4;
        v69 = v62;
        v70 = v63;
        v71 = v64;
        v72 = 1;
        goto LABEL_52;
      case 2:
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF0CB03C(v65, v240, v66, v239, v67);
        v78 = v4;
        v79 = v62;
        v80 = v63;
        v81 = v64;
        v82 = 2;
        goto LABEL_46;
      case 3:
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF0CB03C(v65, v240, v66, v239, v67);
        v78 = v4;
        v79 = v62;
        v80 = v63;
        v81 = v64;
        v82 = 3;
LABEL_46:
        sub_1BF0CB03C(v78, v79, v80, v81, v82);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84 = v62;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BF0A6578(0, *(v62 + 16) + 1, 1, v62);
          v84 = v146;
        }

        v86 = *(v84 + 16);
        v85 = *(v84 + 24);
        if (v86 >= v85 >> 1)
        {
          sub_1BF0A6578(v85 > 1, v86 + 1, 1, v84);
          v84 = v147;
        }

        *(v84 + 16) = v86 + 1;
        v87 = v84 + 16 * v86;
        *(v87 + 32) = v63;
        *(v87 + 40) = v64;
        goto LABEL_60;
      case 4:
        if ((v63 & 0x8000000000000000) != 0)
        {
          goto LABEL_174;
        }

        *&v245 = *(v61 + 2);
        sub_1BF0CB03C(v65, v240, v66, v239, v67);
        v73 = v4;
        v74 = v62;
        v75 = v63;
        v76 = v64;
        v77 = 4;
        goto LABEL_55;
      case 5:
        if ((v63 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        *&v245 = *(v61 + 2);
        sub_1BF0CB03C(v65, v240, v66, v239, v67);
        v73 = v4;
        v74 = v62;
        v75 = v63;
        v76 = v64;
        v77 = 5;
LABEL_55:
        sub_1BF0CB03C(v73, v74, v75, v76, v77);
        v89 = sub_1BF17B6FC();
        v91 = v90;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v92 = swift_isUniquelyReferenced_nonNull_native();
        v84 = v62;
        if ((v92 & 1) == 0)
        {
          sub_1BF0A6578(0, *(v62 + 16) + 1, 1, v62);
          v84 = v150;
        }

        v94 = *(v84 + 16);
        v93 = *(v84 + 24);
        if (v94 >= v93 >> 1)
        {
          sub_1BF0A6578(v93 > 1, v94 + 1, 1, v84);
          v84 = v151;
        }

        *(v84 + 16) = v94 + 1;
        v95 = v84 + 16 * v94;
        *(v95 + 32) = v89;
        *(v95 + 40) = v91;
LABEL_60:
        v88 = v84;

        break;
      default:
        sub_1BF0CB03C(v65, v240, v66, v239, v67);
        v68 = v4;
        v69 = v62;
        v70 = v63;
        v71 = v64;
        v72 = 0;
LABEL_52:
        sub_1BF0CB03C(v68, v69, v70, v71, v72);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v88 = v4;
        break;
    }

    v225 = v62;
    v96 = *(v88 + 16);
    v232 = v63;
    v234 = v65;
    v230 = v64;
    if (v96)
    {
      *&v245 = 47;
      *(&v245 + 1) = 0xE100000000000000;
      v253 = v6;
      sub_1BF00DD60();
      v4 = v253;
      sub_1BF013170();
      v97 = (v88 + 40);
      do
      {
        v98 = *v97;
        *&v241 = *(v97 - 1);
        *(&v241 + 1) = v98;
        v251 = 126;
        v252 = 0xE100000000000000;
        v249 = 12414;
        v250 = 0xE200000000000000;
        *&v241 = sub_1BF17AF5C();
        *(&v241 + 1) = v99;
        v251 = 47;
        v252 = 0xE100000000000000;
        v249 = 12670;
        v250 = 0xE200000000000000;
        v100 = sub_1BF17AF5C();
        v102 = v101;

        v253 = v4;
        v103 = *(v4 + 2);
        if (v103 >= *(v4 + 3) >> 1)
        {
          sub_1BF00DD60();
          v4 = v253;
        }

        *(v4 + 2) = v103 + 1;
        v104 = &v4[16 * v103];
        *(v104 + 4) = v100;
        *(v104 + 5) = v102;
        v97 += 2;
        --v96;
      }

      while (v96);
      v6 = MEMORY[0x1E69E7CC0];
      v63 = v232;
      v65 = v234;
    }

    else
    {
      *&v245 = 0;
      *(&v245 + 1) = 0xE000000000000000;
      v4 = v6;
    }

    *&v241 = v4;
    v105 = MEMORY[0x1E69E6158];
    sub_1BF126628(0, &qword_1ED8EE9D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1BF123DDC(&qword_1ED8EE9C0, &qword_1ED8EE9D0, v105, MEMORY[0x1E69E6310]);
    v106 = sub_1BF179F7C();
    v108 = v107;

    MEMORY[0x1BFB52000](v106, v108);

    v109 = *(&v245 + 1);
    v227 = v245;
    switch(v237)
    {
      case 2:
      case 3:
        swift_bridgeObjectRetain_n();
        v111 = v240;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BF0A6578(0, *(v240 + 16) + 1, 1, v240);
          v111 = v148;
        }

        v112 = v111;
        v113 = *(v111 + 16);
        v114 = v112;
        v115 = *(v112 + 24);
        if (v113 >= v115 >> 1)
        {
          sub_1BF0A6578(v115 > 1, v113 + 1, 1, v114);
          v114 = v149;
        }

        *(v114 + 16) = v113 + 1;
        v116 = v114 + 16 * v113;
        v110 = v114;
        *(v116 + 32) = v66;
        *(v116 + 40) = v239;

        break;
      case 4:
        v117 = v66;
        if ((v66 & 0x8000000000000000) != 0)
        {
          goto LABEL_176;
        }

        goto LABEL_78;
      case 5:
        v117 = v66;
        if ((v66 & 0x8000000000000000) != 0)
        {
          goto LABEL_177;
        }

LABEL_78:
        *&v245 = v117;
        v118 = sub_1BF17B6FC();
        v120 = v119;
        v121 = v240;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BF0A6578(0, *(v240 + 16) + 1, 1, v240);
          v121 = v152;
        }

        v122 = v121;
        v123 = *(v121 + 16);
        v124 = v122;
        v125 = *(v122 + 24);
        if (v123 >= v125 >> 1)
        {
          sub_1BF0A6578(v125 > 1, v123 + 1, 1, v124);
          v124 = v153;
        }

        *(v124 + 16) = v123 + 1;
        v126 = v124 + 16 * v123;
        v110 = v124;
        *(v126 + 32) = v118;
        *(v126 + 40) = v120;

        break;
      default:
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v110 = v65;
        break;
    }

    v222 = v109;
    v127 = *(v110 + 16);
    if (v127)
    {
      *&v245 = 47;
      *(&v245 + 1) = 0xE100000000000000;
      v253 = v6;
      sub_1BF00DD60();
      v128 = v253;
      sub_1BF013170();
      v129 = (v110 + 40);
      do
      {
        v130 = *v129;
        *&v241 = *(v129 - 1);
        *(&v241 + 1) = v130;
        v251 = 126;
        v252 = 0xE100000000000000;
        v249 = 12414;
        v250 = 0xE200000000000000;
        *&v241 = sub_1BF17AF5C();
        *(&v241 + 1) = v131;
        v251 = 47;
        v252 = 0xE100000000000000;
        v249 = 12670;
        v250 = 0xE200000000000000;
        v132 = sub_1BF17AF5C();
        v134 = v133;

        v253 = v128;
        v135 = *(v128 + 16);
        if (v135 >= *(v128 + 24) >> 1)
        {
          sub_1BF00DD60();
          v128 = v253;
        }

        *(v128 + 16) = v135 + 1;
        v136 = v128 + 16 * v135;
        *(v136 + 32) = v132;
        *(v136 + 40) = v134;
        v129 += 2;
        --v127;
      }

      while (v127);
      v6 = MEMORY[0x1E69E7CC0];
      v64 = v230;
      v63 = v232;
    }

    else
    {
      *&v245 = 0;
      *(&v245 + 1) = 0xE000000000000000;
      v128 = v6;
    }

    *&v241 = v128;
    v137 = sub_1BF179F7C();
    v139 = v138;

    MEMORY[0x1BFB52000](v137, v139);

    v4 = *(&v245 + 1);
    if (v227 == v245 && v222 == *(&v245 + 1))
    {

      sub_1BF0CB11C(v234, v240, v66, v239, v237);
      sub_1BF0CB11C(v229, v225, v63, v64, v228);
      v9 = v216;
LABEL_99:
      v10 = v214 + 1;
      v57 = v210;
      if (v214 + 1 == v210)
      {
        goto LABEL_100;
      }

      goto LABEL_39;
    }

    v141 = sub_1BF17B86C();

    sub_1BF0CB11C(v234, v240, v66, v239, v237);
    sub_1BF0CB11C(v229, v225, v63, v64, v228);
    v9 = v216;
    if ((v141 & 1) == 0)
    {
      goto LABEL_99;
    }

    if (!v220)
    {
      break;
    }

    v142 = *(v218 + 32);
    v143 = *v218;
    v144 = v218[1];
    v145 = v217[1];
    *v218 = *v217;
    v218[1] = v145;
    *(v218 + 4) = *(v217 + 4);
    *v217 = v143;
    v217[1] = v144;
    *(v217 + 32) = v142;
    v60 = v219;
    if (v219 == v216)
    {
      goto LABEL_99;
    }
  }

  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
}

void sub_1BF12595C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_1BF17B86C();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_1BF17B86C()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7 - 8;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = *(v25 + 2);
              v29 = *v26;
              *v25 = *(v26 - 1);
              *(v25 + 2) = v29;
              *(v26 - 1) = v27;
              *v26 = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
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
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v93 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == v39[1];
                if (v40 || (sub_1BF17B86C() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v37 = v39[4];
                v41 = v39[5];
                v42 = v39[2];
                v36 = v39[3];
                *(v39 + 3) = *v39;
                v39[5] = v42;
                *v39 = v36;
                v39[1] = v37;
                v39[2] = v41;
                v39 -= 3;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v93;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF0A6798();
        v8 = v88;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_1BF0A6798();
        v8 = v89;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v92 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_1BF126460((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v94);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v92;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1BF125EAC(&v96, *a1, a3);
LABEL_103:
}

uint64_t sub_1BF125EAC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1BF1751AC(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1BF126460((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1BF125FE4(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1BF0A6F2C(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    v78 = v5;
    v80 = v10;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      v82 = v7;
      v84 = v4;
      v12 = *v6;
      v13 = *(v6 + 1);
      v14 = *(v6 + 2);
      v15 = *(v6 + 3);
      v86 = v6;
      v16 = v6[32];
      v17 = *v4;
      v18 = *(v4 + 1);
      v19 = *(v4 + 2);
      v20 = *(v4 + 3);
      v21 = v4[32];
      v95 = v12;
      v96 = v13;
      v97 = v14;
      v98 = v15;
      v99 = v16;
      v74 = v13;
      v76 = v12;
      v70 = v15;
      v72 = v14;
      v68 = v16;
      sub_1BF0CB03C(v12, v13, v14, v15, v16);
      sub_1BF0CB03C(v17, v18, v19, v20, v21);
      sub_1BF12302C(&v100);
      v94 = v100;
      v22 = JSONPointer.rawValue.getter();
      v24 = v23;

      v89 = v17;
      v90 = v18;
      v66 = v19;
      v91 = v19;
      v92 = v20;
      v93 = v21;
      sub_1BF12302C(&v88);
      v25 = JSONPointer.rawValue.getter();
      v27 = v26;

      if (v22 == v25 && v24 == v27)
      {

        sub_1BF0CB11C(v17, v18, v19, v20, v21);
        sub_1BF0CB11C(v76, v74, v72, v70, v68);
      }

      else
      {
        v29 = sub_1BF17B86C();

        sub_1BF0CB11C(v17, v18, v66, v20, v21);
        sub_1BF0CB11C(v76, v74, v72, v70, v68);
        if (v29)
        {
          v4 = v84;
          v30 = v86;
          v6 = v86 + 40;
          v31 = v82;
          v32 = v82 == v86;
          goto LABEL_15;
        }
      }

      v31 = v82;
      v30 = v84;
      v4 = v84 + 40;
      v32 = v82 == v84;
      v6 = v86;
LABEL_15:
      v5 = v78;
      v10 = v80;
      if (!v32)
      {
        v33 = *v30;
        v34 = *(v30 + 1);
        *(v31 + 4) = *(v30 + 4);
        *v31 = v33;
        *(v31 + 1) = v34;
      }

      v7 = v31 + 40;
    }
  }

  sub_1BF0A6F2C(a2, (a3 - a2) / 40, a4);
  v63 = &v4[40 * v9];
  v83 = v7;
  v85 = v4;
LABEL_19:
  v35 = 0;
  v62 = v6 - 40;
  v87 = v6;
  v79 = v5;
  while (1)
  {
    v10 = &v63[v35];
    if (&v63[v35] <= v4 || v6 <= v7)
    {
      break;
    }

    v81 = &v63[v35];
    v37 = *(v10 - 4);
    v38 = v10 - 40;
    v39 = *(v10 - 3);
    v40 = *(v10 - 2);
    v41 = *(v10 - 8);
    v43 = *(v6 - 5);
    v42 = *(v6 - 4);
    v44 = *(v6 - 3);
    v45 = *(v6 - 2);
    v46 = *(v6 - 8);
    v95 = *(v10 - 5);
    v96 = v37;
    v97 = v39;
    v98 = v40;
    v99 = v41;
    v75 = v95;
    v77 = v35;
    v71 = v39;
    v73 = v37;
    v69 = v40;
    v67 = v41;
    sub_1BF0CB03C(v95, v37, v39, v40, v41);
    sub_1BF0CB03C(v43, v42, v44, v45, v46);
    sub_1BF12302C(&v100);
    v94 = v100;
    v47 = JSONPointer.rawValue.getter();
    v64 = v48;

    v89 = v43;
    v90 = v42;
    v65 = v42;
    v91 = v44;
    v92 = v45;
    v93 = v46;
    sub_1BF12302C(&v88);
    v49 = JSONPointer.rawValue.getter();
    v51 = v50;

    if (v47 == v49 && v64 == v51)
    {
      v53 = 0;
    }

    else
    {
      v53 = sub_1BF17B86C();
    }

    v54 = (v79 + v77 - 40);
    sub_1BF0CB11C(v43, v65, v44, v45, v46);
    sub_1BF0CB11C(v75, v73, v71, v69, v67);
    if (v53)
    {
      v63 += v77;
      v5 = v79 + v77 - 40;
      v6 = v62;
      v7 = v83;
      v4 = v85;
      if ((v79 + v77) != v87)
      {
        v57 = *v62;
        v58 = *(v62 + 1);
        *(v79 + v77 - 8) = *(v62 + 4);
        *v54 = v57;
        *(v79 + v77 - 24) = v58;
        v6 = v62;
        v5 = v79 + v77 - 40;
      }

      goto LABEL_19;
    }

    v6 = v87;
    if (v81 != (v79 + v77))
    {
      v55 = *v38;
      v56 = *(v38 + 1);
      *(v79 + v77 - 8) = *(v38 + 4);
      *v54 = v55;
      *(v79 + v77 - 24) = v56;
    }

    v35 = v77 - 40;
    v7 = v83;
    v4 = v85;
  }

LABEL_38:
  v59 = 40 * ((v10 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v59])
  {
    memmove(v6, v4, v59);
  }

  return 1;
}

uint64_t sub_1BF126460(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1BF0A6F50(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1BF17B86C() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_1BF0A6F50(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_1BF17B86C() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

void sub_1BF126628(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t combine<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  OUTLINED_FUNCTION_116_1();
  v9[2] = *(v8 + 80);
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;

  OUTLINED_FUNCTION_102();
  swift_getTupleTypeMetadata();
  v10 = OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)(v11, v12, v13, a4);
  OUTLINED_FUNCTION_155();

  return a1;
}

uint64_t sub_1BF1267B8(uint64_t a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v8 = *a2;
  v29 = *a3;
  v30 = *a4;
  v31 = a2;
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v14, v13, v11);
  v15 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a5;
  v17 = *(v8 + 80);
  v18 = v29;
  *(v16 + 3) = v17;
  v19 = *(v18 + 80);
  v20 = v30;
  *(v16 + 4) = v19;
  v21 = a4;
  v28 = a4;
  v22 = *(v20 + 80);
  *(v16 + 5) = v22;
  *(v16 + 6) = a3;
  *(v16 + 7) = v21;
  (*(v9 + 32))(&v16[v15], v12, a5);

  v32 = a5;
  v33 = v17;
  v34 = v19;
  v35 = v22;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v24 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v24, sub_1BF145D58, v16, TupleTypeMetadata);
  v26 = v25;

  return v26;
}

uint64_t sub_1BF1269EC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a1;
  v41 = a2;
  v42 = *a2;
  v43 = a3;
  v44 = *a3;
  v8 = *(a6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v16, v17, v18, v15);
  v19 = *(v8 + 16);
  v20 = a6;
  v38 = a6;
  v19(&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v40, a6);
  v21 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v22 = (v12 + *(v8 + 80) + v21) & ~*(v8 + 80);
  v23 = swift_allocObject();
  v24 = v42;
  v25 = a5;
  *(v23 + 2) = a5;
  *(v23 + 3) = v20;
  v26 = *(v24 + 80);
  *(v23 + 4) = v26;
  v27 = v43;
  v28 = *(v44 + 80);
  *(v23 + 5) = v28;
  *(v23 + 6) = v27;
  v29 = &v23[v21];
  v30 = v25;
  (*(v11 + 32))(v29, v16);
  v31 = v38;
  (*(v8 + 32))(&v23[v22], v39, v38);

  v45 = v30;
  v46 = v31;
  v47 = v26;
  v48 = v28;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v33 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v33, sub_1BF145DAC, v23, TupleTypeMetadata);
  v35 = v34;

  return v35;
}

uint64_t sub_1BF126C98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a7;
  v46 = a1;
  v41 = a5;
  v53 = a2;
  v48 = *a2;
  v9 = *(a7 - 8);
  v47 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v11;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v43 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v42 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22);
  v23 = a4;
  v24 = a6;
  (*(v13 + 16))(&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v23, a6);
  v40 = v9;
  v25 = v45;
  (*(v9 + 16))(v11, v46, v45);
  v26 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v27 = (v19 + *(v13 + 80) + v26) & ~*(v13 + 80);
  v28 = (v14 + *(v9 + 80) + v27) & ~*(v9 + 80);
  v29 = swift_allocObject();
  v31 = v41;
  v30 = v42;
  *(v29 + 2) = v41;
  *(v29 + 3) = v24;
  *(v29 + 4) = v25;
  v32 = *(v48 + 80);
  *(v29 + 5) = v32;
  v33 = &v29[v26];
  v34 = v31;
  (*(v18 + 32))(v33, v30);
  (*(v13 + 32))(&v29[v27], v43, v24);
  (*(v40 + 32))(&v29[v28], v44, v25);
  v49 = v34;
  v50 = v24;
  v51 = v25;
  v52 = v32;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v36 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v36, sub_1BF145E4C, v29, TupleTypeMetadata);
  v38 = v37;

  return v38;
}

uint64_t sub_1BF126FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v16 = TupleTypeMetadata[12];
  v17 = TupleTypeMetadata[16];
  v18 = TupleTypeMetadata[20];
  (*(*(a5 - 8) + 16))(a9, a2, a5);
  (*(*(a6 - 8) + 16))(a9 + v16, a3, a6);
  (*(*(a7 - 8) + 16))(a9 + v17, a4, a7);
  return (*(*(a8 - 8) + 16))(a9 + v18, a1, a8);
}

void combine<A, B, C, D, E>(_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_97_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *v8;
  v10 = swift_allocObject();
  v10[2] = *(v9 + 80);
  v10[3] = v7;
  v10[4] = v5;
  v10[5] = v3;
  v10[6] = v1;

  OUTLINED_FUNCTION_102();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v12 = sub_1BF014EDC();
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)(v13, v14, v15, TupleTypeMetadata);
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_96();
}

uint64_t sub_1BF1272B0(uint64_t a1, void *a2, uint64_t *a3, void *a4, void *a5, uint64_t a6)
{
  v10 = *a3;
  v33 = *a2;
  v34 = v10;
  v35 = *a4;
  v36 = *a5;
  v37 = a2;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v16, v15, v13);
  v17 = (*(v11 + 80) + 80) & ~*(v11 + 80);
  v18 = swift_allocObject();
  v19 = v33;
  *(v18 + 2) = a6;
  v33 = *(v19 + 80);
  v20 = v34;
  *(v18 + 3) = v33;
  v34 = *(v20 + 80);
  v21 = v35;
  *(v18 + 4) = v34;
  v22 = a4;
  v23 = *(v21 + 80);
  v24 = v36;
  *(v18 + 5) = v23;
  v25 = a5;
  v32[1] = a5;
  v26 = *(v24 + 80);
  *(v18 + 6) = v26;
  *(v18 + 7) = a3;
  *(v18 + 8) = v22;
  *(v18 + 9) = v25;
  (*(v11 + 32))(&v18[v17], v14, a6);

  v38 = a6;
  v39 = v33;
  v40 = v34;
  v41 = v23;
  v42 = v26;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v28 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v28, sub_1BF145A18, v18, TupleTypeMetadata);
  v30 = v29;

  return v30;
}

uint64_t sub_1BF127528(unint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a3;
  v50 = a4;
  v39 = a1;
  v40 = a2;
  v9 = *a3;
  v41 = *a2;
  v42 = v9;
  v43 = *a4;
  v10 = *(a7 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v18, v19, v20, v17);
  (*(v10 + 16))(&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v39, a7);
  v21 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v39 = (v14 + *(v10 + 80) + v21) & ~*(v10 + 80);
  v22 = swift_allocObject();
  v23 = v41;
  v24 = a6;
  *(v22 + 2) = a6;
  *(v22 + 3) = a7;
  v25 = *(v23 + 80);
  *(v22 + 4) = v25;
  v26 = v44;
  v27 = *(v42 + 80);
  *(v22 + 5) = v27;
  v28 = v50;
  v29 = *(v43 + 80);
  *(v22 + 6) = v29;
  *(v22 + 7) = v26;
  *(v22 + 8) = v28;
  v30 = v18;
  v31 = v24;
  (*(v13 + 32))(&v22[v21], v30);
  (*(v10 + 32))(&v22[v39], v38, a7);

  v45 = v31;
  v46 = a7;
  v47 = v25;
  v48 = v27;
  v49 = v29;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v33 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v33, sub_1BF145A70, v22, TupleTypeMetadata);
  v35 = v34;

  return v35;
}

uint64_t sub_1BF127808(unint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a3;
  v48 = a5;
  v49 = a8;
  v59 = a2;
  v9 = *a2;
  v50 = a1;
  v51 = v9;
  v52 = *a3;
  v10 = *(a8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v47 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v46 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v45 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22);
  v23 = a7;
  (*(v13 + 16))(&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v48, a7);
  v43 = v10;
  v24 = v49;
  (*(v10 + 16))(&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v49);
  v25 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v26 = (v19 + *(v13 + 80) + v25) & ~*(v13 + 80);
  v50 = (v14 + *(v10 + 80) + v26) & ~*(v10 + 80);
  v27 = swift_allocObject();
  v28 = v51;
  v30 = v44;
  v29 = v45;
  *(v27 + 2) = v44;
  *(v27 + 3) = v23;
  v31 = v23;
  *(v27 + 4) = v24;
  v32 = *(v28 + 80);
  *(v27 + 5) = v32;
  v33 = v53;
  v34 = *(v52 + 80);
  *(v27 + 6) = v34;
  *(v27 + 7) = v33;
  v35 = &v27[v25];
  v36 = v30;
  (*(v18 + 32))(v35, v29);
  (*(v13 + 32))(&v27[v26], v46, v31);
  (*(v43 + 32))(&v27[v50], v47, v24);

  v54 = v36;
  v55 = v31;
  v56 = v24;
  v57 = v32;
  v58 = v34;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v38 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v38, sub_1BF145B10, v27, TupleTypeMetadata);
  v40 = v39;

  return v40;
}

uint64_t sub_1BF127B90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v55 = a4;
  v56 = a5;
  v68 = a2;
  v57 = a9;
  v58 = a1;
  v61 = *(a9 - 8);
  v59 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v62 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v12;
  v13 = *(v12 - 8);
  v54 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v17;
  v49 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21, v22);
  v52 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v51 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v28);
  v46 = v19;
  (*(v19 + 16))(&v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v55, a7);
  v48 = v13;
  (*(v13 + 16))(v17, v56, a8);
  v29 = v61;
  v30 = v57;
  (*(v61 + 16))(v62, v58, v57);
  v31 = (*(v24 + 80) + 56) & ~*(v24 + 80);
  v32 = (v25 + *(v19 + 80) + v31) & ~*(v19 + 80);
  v33 = (v20 + *(v13 + 80) + v32) & ~*(v13 + 80);
  v58 = (v54 + *(v29 + 80) + v33) & ~*(v29 + 80);
  v34 = swift_allocObject();
  v36 = v49;
  v35 = v50;
  *(v34 + 2) = v50;
  *(v34 + 3) = v36;
  v37 = v47;
  *(v34 + 4) = v47;
  *(v34 + 5) = v30;
  v38 = *(v60 + 80);
  *(v34 + 6) = v38;
  v39 = &v34[v31];
  v40 = v35;
  (*(v24 + 32))(v39, v51);
  (*(v46 + 32))(&v34[v32], v52, v36);
  (*(v48 + 32))(&v34[v33], v53, v37);
  (*(v61 + 32))(&v34[v58], v62, v30);
  v63 = v40;
  v64 = v36;
  v65 = v37;
  v66 = v30;
  v67 = v38;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v42 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v42, sub_1BF145C08, v34, TupleTypeMetadata);
  v44 = v43;

  return v44;
}

uint64_t sub_1BF127FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v17 = TupleTypeMetadata[12];
  v18 = TupleTypeMetadata[16];
  v20 = TupleTypeMetadata[20];
  v22 = TupleTypeMetadata[24];
  (*(*(a6 - 8) + 16))(a9, a2, a6);
  (*(*(a7 - 8) + 16))(a9 + v17, a3, a7);
  (*(*(a8 - 8) + 16))(a9 + v18, a4, a8);
  (*(*(a10 - 8) + 16))(a9 + v20, a5, a10);
  return (*(*(a11 - 8) + 16))(a9 + v22, a1, a11);
}

void combine<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_53();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  swift_allocObject();
  OUTLINED_FUNCTION_116_1();
  v13[2] = *(v12 + 80);
  v13[3] = v11;
  v13[4] = v9;
  v13[5] = v7;
  v13[6] = v5;
  v13[7] = v3;
  v13[8] = v1;

  OUTLINED_FUNCTION_102();
  swift_getTupleTypeMetadata();
  v14 = OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)(v15, v16, v17, v1);
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_52_4();
}

uint64_t sub_1BF128348(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6, void *a7, uint64_t a8)
{
  v43 = a6;
  v51 = a7;
  v11 = *a2;
  v36 = *a3;
  v37 = *a4;
  v38 = v11;
  v13 = *a6;
  v39 = *a5;
  v40 = v13;
  v41 = *a7;
  v42 = a2;
  v14 = *(a8 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1, a2);
  v17 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v19, v18, v16);
  v20 = (*(v14 + 80) + 112) & ~*(v14 + 80);
  v21 = swift_allocObject();
  v22 = v38;
  *(v21 + 2) = a8;
  v38 = *(v22 + 80);
  v23 = v36;
  *(v21 + 3) = v38;
  v36 = *(v23 + 80);
  v24 = v37;
  *(v21 + 4) = v36;
  v37 = *(v24 + 80);
  v25 = v39;
  *(v21 + 5) = v37;
  v39 = *(v25 + 80);
  v26 = v40;
  *(v21 + 6) = v39;
  v27 = v43;
  v40 = *(v26 + 80);
  v28 = v41;
  *(v21 + 7) = v40;
  v29 = v51;
  v30 = *(v28 + 80);
  *(v21 + 8) = v30;
  *(v21 + 9) = a3;
  *(v21 + 10) = a4;
  *(v21 + 11) = a5;
  *(v21 + 12) = v27;
  *(v21 + 13) = v29;
  (*(v14 + 32))(&v21[v20], v17, a8);

  v44 = a8;
  v45 = v38;
  v46 = v36;
  v47 = v37;
  v48 = v39;
  v49 = v40;
  v50 = v30;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v32 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v32, sub_1BF145320, v21, TupleTypeMetadata);
  v34 = v33;

  return v34;
}

uint64_t sub_1BF128638(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a5;
  v57 = a6;
  v39 = a1;
  v41 = *a2;
  v42 = a3;
  v43 = *a3;
  v44 = a4;
  v45 = *a4;
  v46 = a2;
  v10 = *a6;
  v47 = *a5;
  v48 = v10;
  v11 = *(a9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v40 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v19, v20, v21, v18);
  (*(v11 + 16))(&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v39, a9);
  v22 = (*(v14 + 80) + 104) & ~*(v14 + 80);
  v39 = (v15 + v22 + *(v11 + 80)) & ~*(v11 + 80);
  v23 = swift_allocObject();
  v24 = v41;
  v25 = a8;
  *(v23 + 2) = a8;
  *(v23 + 3) = a9;
  v41 = *(v24 + 80);
  *(v23 + 4) = v41;
  v26 = v42;
  v43 = *(v43 + 80);
  *(v23 + 5) = v43;
  v27 = v44;
  v45 = *(v45 + 80);
  *(v23 + 6) = v45;
  v28 = v49;
  v47 = *(v47 + 80);
  *(v23 + 7) = v47;
  v29 = v57;
  v30 = *(v48 + 80);
  *(v23 + 8) = v30;
  *(v23 + 9) = v26;
  *(v23 + 10) = v27;
  *(v23 + 11) = v28;
  *(v23 + 12) = v29;
  v31 = v19;
  v32 = v25;
  (*(v14 + 32))(&v23[v22], v31);
  (*(v11 + 32))(&v23[v39], v40, a9);

  v50 = v32;
  v51 = a9;
  v52 = v41;
  v53 = v43;
  v54 = v45;
  v55 = v47;
  v56 = v30;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v34 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v34, sub_1BF145388, v23, TupleTypeMetadata);
  v36 = v35;

  return v36;
}

uint64_t sub_1BF128990(unint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v51 = a7;
  v52 = a1;
  v59 = a4;
  v60 = a5;
  v68 = a2;
  v50 = a10;
  v10 = *a3;
  v53 = *a2;
  v54 = v10;
  v55 = *a4;
  v57 = *(a10 - 8);
  v58 = a3;
  v11 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v49 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a9 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v47 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v21);
  v22 = *(v12 + 16);
  v45 = a9;
  v22(&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v51, a9);
  v23 = v57;
  v24 = v50;
  (*(v57 + 16))(&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v52, v50);
  v25 = (*(v17 + 80) + 96) & ~*(v17 + 80);
  v26 = (v18 + v25 + *(v12 + 80)) & ~*(v12 + 80);
  v52 = (v13 + *(v23 + 80) + v26) & ~*(v23 + 80);
  v27 = swift_allocObject();
  v28 = v53;
  v29 = v46;
  *(v27 + 2) = v46;
  *(v27 + 3) = a9;
  *(v27 + 4) = v24;
  v30 = *(v28 + 80);
  *(v27 + 5) = v30;
  v32 = v58;
  v31 = v59;
  v54 = *(v54 + 80);
  *(v27 + 6) = v54;
  v33 = *(v55 + 80);
  *(v27 + 7) = v33;
  v34 = v60;
  v35 = *(v56 + 80);
  *(v27 + 8) = v35;
  *(v27 + 9) = v32;
  *(v27 + 10) = v31;
  *(v27 + 11) = v34;
  v36 = &v27[v25];
  v37 = v29;
  (*(v17 + 32))(v36, v47);
  v38 = v45;
  (*(v12 + 32))(&v27[v26], v48, v45);
  (*(v57 + 32))(&v27[v52], v49, v24);

  v61 = v37;
  v62 = v38;
  v63 = v24;
  v64 = v30;
  v65 = v54;
  v66 = v33;
  v67 = v35;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v40 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v40, sub_1BF145438, v27, TupleTypeMetadata);
  v42 = v41;

  return v42;
}

uint64_t sub_1BF128DA0(unint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v63 = a6;
  v64 = a7;
  v73 = a3;
  v74 = a4;
  v82 = a2;
  v65 = a1;
  v72 = a11;
  v11 = *a3;
  v67 = *a2;
  v68 = v11;
  v71 = *(a11 - 8);
  v66 = *(v71 + 64);
  v70 = a10;
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v13;
  v15 = *(v14 - 8);
  v62 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v19;
  v55 = a9;
  v20 = *(a9 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22, v23);
  v59 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v58 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v29);
  v54 = v20;
  (*(v20 + 16))(&v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v63, a9);
  v56 = v15;
  v30 = v19;
  v31 = v70;
  (*(v15 + 16))(v30, v64, v70);
  v32 = v71;
  v33 = v72;
  (*(v71 + 16))(v13, v65, v72);
  v34 = (*(v25 + 80) + 88) & ~*(v25 + 80);
  v35 = (v26 + v34 + *(v20 + 80)) & ~*(v20 + 80);
  v36 = (v62 + *(v32 + 80) + ((v21 + *(v15 + 80) + v35) & ~*(v15 + 80))) & ~*(v32 + 80);
  v64 = (v21 + *(v15 + 80) + v35) & ~*(v15 + 80);
  v65 = v36;
  v37 = swift_allocObject();
  v38 = v67;
  v39 = v57;
  v40 = v55;
  *(v37 + 2) = v57;
  *(v37 + 3) = v40;
  *(v37 + 4) = v31;
  *(v37 + 5) = v33;
  v41 = *(v38 + 80);
  *(v37 + 6) = v41;
  v43 = v73;
  v42 = v74;
  v44 = *(v68 + 80);
  *(v37 + 7) = v44;
  v45 = *(v69 + 80);
  *(v37 + 8) = v45;
  *(v37 + 9) = v43;
  *(v37 + 10) = v42;
  v46 = v39;
  (*(v25 + 32))(&v37[v34], v58);
  (*(v54 + 32))(&v37[v35], v59, v40);
  v47 = v70;
  (*(v56 + 32))(&v37[v64], v60, v70);
  v48 = v72;
  (*(v71 + 32))(&v37[v65], v61, v72);

  v75 = v46;
  v76 = v40;
  v77 = v47;
  v78 = v48;
  v79 = v41;
  v80 = v44;
  v81 = v45;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v50 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v50, sub_1BF145534, v37, TupleTypeMetadata);
  v52 = v51;

  return v52;
}

uint64_t sub_1BF129294(unint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v70 = a7;
  v68 = a6;
  v66 = a5;
  v80 = a3;
  v88 = a2;
  v71 = a1;
  v76 = a11;
  v69 = a12;
  v12 = *a3;
  v73 = *a2;
  v74 = v12;
  v78 = *(a12 - 8);
  v72 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v79 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(v14 - 8);
  v67 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v77 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a10;
  v18 = *(a10 - 8);
  v65 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v22;
  v60 = a9;
  v23 = *(a9 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v63 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v62 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v32);
  v57 = v23;
  (*(v23 + 16))(&v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v66, a9);
  v58 = v18;
  (*(v18 + 16))(v22, v68, a10);
  v34 = v75;
  v33 = v76;
  (*(v75 + 16))(v77, v70, v76);
  v35 = v78;
  v36 = v69;
  (*(v78 + 16))(v79, v71, v69);
  v37 = *(v23 + 80);
  v38 = (*(v28 + 80) + 80) & ~*(v28 + 80);
  v39 = (v29 + v38 + v37) & ~v37;
  v68 = (v24 + *(v18 + 80) + v39) & ~*(v18 + 80);
  v71 = (v65 + *(v34 + 80) + v68) & ~*(v34 + 80);
  v70 = (v67 + *(v35 + 80) + v71) & ~*(v35 + 80);
  v40 = swift_allocObject();
  v41 = v73;
  v42 = v61;
  v43 = v60;
  *(v40 + 2) = v61;
  *(v40 + 3) = v43;
  v44 = v59;
  *(v40 + 4) = v59;
  *(v40 + 5) = v33;
  *(v40 + 6) = v36;
  v45 = *(v41 + 80);
  *(v40 + 7) = v45;
  v46 = v80;
  v47 = *(v74 + 80);
  *(v40 + 8) = v47;
  *(v40 + 9) = v46;
  v48 = &v40[v38];
  v49 = v42;
  (*(v28 + 32))(v48, v62);
  (*(v57 + 32))(&v40[v39], v63, v43);
  (*(v58 + 32))(&v40[v68], v64, v44);
  v50 = v76;
  (*(v75 + 32))(&v40[v71], v77, v76);
  (*(v78 + 32))(&v40[v70], v79, v36);

  v81 = v49;
  v82 = v43;
  v83 = v44;
  v84 = v50;
  v85 = v36;
  v86 = v45;
  v87 = v47;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v52 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v52, sub_1BF145680, v40, TupleTypeMetadata);
  v54 = v53;

  return v54;
}

uint64_t sub_1BF129860(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v71 = a7;
  v69 = a6;
  v67 = a5;
  v66 = a4;
  v89 = a2;
  v72 = a1;
  v70 = a13;
  v74 = *a2;
  v80 = *(a13 - 8);
  v73 = *(v80 + 64);
  v76 = a11;
  v64 = a12;
  MEMORY[0x1EEE9AC00](a1, a2);
  v81 = &v53 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = *(v13 - 8);
  v68 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v79 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v65 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v78 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a10;
  v22 = *(a10 - 8);
  v63 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v26;
  v58 = a9;
  v27 = *(a9 - 8);
  v59 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v31;
  v75 = v32;
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  v60 = &v53 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v37);
  v54 = v27;
  (*(v27 + 16))(v31, v66, a9);
  v55 = v22;
  (*(v22 + 16))(v26, v67, a10);
  v56 = v18;
  (*(v18 + 16))(v78, v69, v76);
  v38 = v77;
  v39 = v64;
  (*(v77 + 16))(v79, v71, v64);
  v40 = v80;
  v41 = v70;
  (*(v80 + 16))(v81, v72, v70);
  v66 = (*(v33 + 80) + 72) & ~*(v33 + 80);
  v67 = (v34 + v66 + *(v27 + 80)) & ~*(v27 + 80);
  v42 = (v59 + *(v22 + 80) + v67) & ~*(v22 + 80);
  v69 = (v63 + *(v18 + 80) + v42) & ~*(v18 + 80);
  v72 = (v65 + *(v38 + 80) + v69) & ~*(v38 + 80);
  v71 = (v68 + *(v40 + 80) + v72) & ~*(v40 + 80);
  v43 = swift_allocObject();
  v44 = v76;
  v45 = v58;
  *(v43 + 2) = v75;
  *(v43 + 3) = v45;
  v46 = v57;
  *(v43 + 4) = v57;
  *(v43 + 5) = v44;
  *(v43 + 6) = v39;
  *(v43 + 7) = v41;
  v47 = *(v74 + 80);
  *(v43 + 8) = v47;
  (*(v33 + 32))(&v43[v66], v60);
  (*(v54 + 32))(&v43[v67], v61, v45);
  (*(v55 + 32))(&v43[v42], v62, v46);
  (*(v56 + 32))(&v43[v69], v78, v44);
  (*(v77 + 32))(&v43[v72], v79, v39);
  (*(v80 + 32))(&v43[v71], v81, v41);
  v82 = v75;
  v83 = v45;
  v84 = v46;
  v85 = v44;
  v86 = v39;
  v87 = v41;
  v88 = v47;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v49 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v49, sub_1BF14581C, v43, TupleTypeMetadata);
  v51 = v50;

  return v51;
}

uint64_t sub_1BF129F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v18 = TupleTypeMetadata[12];
  v19 = TupleTypeMetadata[16];
  v22 = TupleTypeMetadata[20];
  v23 = TupleTypeMetadata[24];
  v25 = TupleTypeMetadata[28];
  v27 = TupleTypeMetadata[32];
  (*(*(a8 - 8) + 16))(a9, a2, a8);
  (*(*(a10 - 8) + 16))(a9 + v18, a3, a10);
  (*(*(a11 - 8) + 16))(a9 + v19, a4, a11);
  (*(*(a12 - 8) + 16))(a9 + v22, a5, a12);
  (*(*(a13 - 8) + 16))(a9 + v23, a6, a13);
  (*(*(a14 - 8) + 16))(a9 + v25, a7, a14);
  return (*(*(a15 - 8) + 16))(a9 + v27, a1);
}

uint64_t combine<A, B, C, D, E, F, G, H>(_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_allocObject();
  OUTLINED_FUNCTION_116_1();
  v17[2] = *(v16 + 80);
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = a6;
  v17[8] = a7;
  v17[9] = a8;

  OUTLINED_FUNCTION_102();
  swift_getTupleTypeMetadata();
  v18 = OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)(v19, v20, v21, a8);
  OUTLINED_FUNCTION_155();

  return a1;
}

uint64_t sub_1BF12A35C(uint64_t a1, void *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v50 = a7;
  v59 = a8;
  v11 = *a2;
  v45 = a6;
  v46 = v11;
  v12 = *a3;
  v13 = *a4;
  v41 = *a5;
  v43 = *a6;
  v44 = v12;
  v47 = *a7;
  v48 = *a8;
  v49 = a2;
  v15 = *(a9 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](a1, a2);
  v18 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v19, a9, v17);
  v40 = (*(v15 + 80) + 128) & ~*(v15 + 80);
  v20 = swift_allocObject();
  v21 = v46;
  *(v20 + 2) = a9;
  v46 = *(v21 + 80);
  v22 = v44;
  v23 = v45;
  *(v20 + 3) = v46;
  v44 = *(v22 + 80);
  v24 = v13;
  *(v20 + 4) = v44;
  v25 = a4;
  v42 = *(v24 + 80);
  v26 = v41;
  *(v20 + 5) = v42;
  v27 = a5;
  v41 = *(v26 + 80);
  v28 = v43;
  *(v20 + 6) = v41;
  v43 = *(v28 + 80);
  v29 = v47;
  *(v20 + 7) = v43;
  v30 = v50;
  v47 = *(v29 + 80);
  v31 = v48;
  *(v20 + 8) = v47;
  v32 = v59;
  v33 = *(v31 + 80);
  *(v20 + 9) = v33;
  *(v20 + 10) = a3;
  *(v20 + 11) = v25;
  *(v20 + 12) = v27;
  *(v20 + 13) = v23;
  *(v20 + 14) = v30;
  *(v20 + 15) = v32;
  (*(v15 + 32))(&v20[v40], v18, a9);

  v51 = a9;
  v52 = v46;
  v53 = v44;
  v54 = v42;
  v55 = v41;
  v56 = v43;
  v57 = v47;
  v58 = v33;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v35 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v35, sub_1BF1449FC, v20, TupleTypeMetadata);
  v37 = v36;

  return v37;
}

uint64_t sub_1BF12A688(uint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v51 = a5;
  v52 = a6;
  v53 = a7;
  v62 = a2;
  v43 = *a2;
  v44 = a3;
  v45 = *a3;
  v46 = a4;
  v11 = *a5;
  v47 = *a4;
  v48 = v11;
  v12 = *a7;
  v49 = *a6;
  v50 = v12;
  v13 = *(a10 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v42 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a9 - 8);
  v16 = *(v15 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v20, v21, a9, v19);
  v22 = *(v13 + 16);
  v41 = a10;
  v22(&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a10);
  v23 = (*(v15 + 80) + 120) & ~*(v15 + 80);
  v24 = (v16 + *(v13 + 80) + v23) & ~*(v13 + 80);
  v25 = swift_allocObject();
  v26 = v43;
  *(v25 + 2) = a9;
  *(v25 + 3) = a10;
  v43 = *(v26 + 80);
  *(v25 + 4) = v43;
  v27 = v44;
  v45 = *(v45 + 80);
  *(v25 + 5) = v45;
  v28 = v46;
  v47 = *(v47 + 80);
  *(v25 + 6) = v47;
  v30 = v51;
  v29 = v52;
  v48 = *(v48 + 80);
  *(v25 + 7) = v48;
  v49 = *(v49 + 80);
  *(v25 + 8) = v49;
  v31 = v53;
  v32 = *(v50 + 80);
  *(v25 + 9) = v32;
  *(v25 + 10) = v27;
  *(v25 + 11) = v28;
  *(v25 + 12) = v30;
  *(v25 + 13) = v29;
  *(v25 + 14) = v31;
  (*(v15 + 32))(&v25[v23], v20);
  v33 = &v25[v24];
  v34 = v41;
  (*(v13 + 32))(v33, v42, v41);

  v54 = a9;
  v55 = v34;
  v56 = v43;
  v57 = v45;
  v58 = v47;
  v59 = v48;
  v60 = v49;
  v61 = v32;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v36 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v36, sub_1BF144A5C, v25, TupleTypeMetadata);
  v38 = v37;

  return v38;
}

uint64_t sub_1BF12AA18(uint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v52 = a8;
  v53 = a1;
  v62 = a5;
  v63 = a6;
  v60 = a3;
  v61 = a4;
  v72 = a2;
  v59 = a11;
  v11 = *a3;
  v54 = *a2;
  v55 = v11;
  v12 = *a5;
  v56 = *a4;
  v57 = v12;
  v58 = *a6;
  v13 = *(a11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v51 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a10 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v50 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v49 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v24);
  (*(v15 + 16))(&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v52, a10);
  v48 = v13;
  v25 = v59;
  (*(v13 + 16))(&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v53, v59);
  v26 = (*(v20 + 80) + 112) & ~*(v20 + 80);
  v27 = (v21 + *(v15 + 80) + v26) & ~*(v15 + 80);
  v28 = (v16 + *(v13 + 80) + v27) & ~*(v13 + 80);
  v29 = swift_allocObject();
  v30 = v54;
  v31 = v47;
  *(v29 + 2) = v47;
  *(v29 + 3) = a10;
  *(v29 + 4) = v25;
  v32 = *(v30 + 80);
  *(v29 + 5) = v32;
  v34 = v60;
  v33 = v61;
  v55 = *(v55 + 80);
  *(v29 + 6) = v55;
  v56 = *(v56 + 80);
  *(v29 + 7) = v56;
  v35 = v62;
  v57 = *(v57 + 80);
  *(v29 + 8) = v57;
  v36 = v63;
  v37 = *(v58 + 80);
  *(v29 + 9) = v37;
  *(v29 + 10) = v34;
  *(v29 + 11) = v33;
  *(v29 + 12) = v35;
  *(v29 + 13) = v36;
  v38 = &v29[v26];
  v39 = v31;
  (*(v20 + 32))(v38, v49);
  (*(v15 + 32))(&v29[v27], v50, a10);
  v40 = v59;
  (*(v48 + 32))(&v29[v28], v51, v59);

  v64 = v39;
  v65 = a10;
  v66 = v40;
  v67 = v32;
  v68 = v55;
  v69 = v56;
  v70 = v57;
  v71 = v37;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v42 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v42, sub_1BF144B0C, v29, TupleTypeMetadata);
  v44 = v43;

  return v44;
}

uint64_t sub_1BF12AE6C(unint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v69 = a8;
  v68 = a7;
  v80 = a4;
  v81 = a5;
  v90 = a2;
  v70 = a1;
  v78 = a12;
  v79 = a3;
  v12 = *a3;
  v72 = *a2;
  v73 = v12;
  v13 = *a5;
  v74 = *a4;
  v75 = v13;
  v14 = *(a12 - 8);
  v76 = a11;
  v77 = v14;
  v71 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v16;
  v18 = *(v17 - 8);
  v67 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v22;
  v60 = a10;
  v23 = *(a10 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v64 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v63 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v32);
  (*(v23 + 16))(&v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v68, a10);
  v62 = v18;
  v33 = v22;
  v34 = v76;
  (*(v18 + 16))(v33, v69, v76);
  v36 = v77;
  v35 = v78;
  (*(v77 + 16))(v16, v70, v78);
  v37 = (*(v28 + 80) + 104) & ~*(v28 + 80);
  v38 = (v29 + *(v23 + 80) + v37) & ~*(v23 + 80);
  v69 = (v24 + *(v18 + 80) + v38) & ~*(v18 + 80);
  v70 = (v67 + *(v36 + 80) + v69) & ~*(v36 + 80);
  v39 = swift_allocObject();
  v40 = v72;
  v41 = v61;
  v42 = v60;
  *(v39 + 2) = v61;
  *(v39 + 3) = v42;
  *(v39 + 4) = v34;
  *(v39 + 5) = v35;
  v43 = *(v40 + 80);
  *(v39 + 6) = v43;
  v45 = v79;
  v44 = v80;
  v73 = *(v73 + 80);
  *(v39 + 7) = v73;
  v46 = *(v74 + 80);
  *(v39 + 8) = v46;
  v47 = v81;
  v48 = *(v75 + 80);
  *(v39 + 9) = v48;
  *(v39 + 10) = v45;
  *(v39 + 11) = v44;
  *(v39 + 12) = v47;
  v49 = &v39[v37];
  v50 = v41;
  (*(v28 + 32))(v49, v63);
  v51 = &v39[v38];
  v52 = v42;
  (*(v23 + 32))(v51, v64, v42);
  v53 = v76;
  (*(v62 + 32))(&v39[v69], v65, v76);
  v54 = v78;
  (*(v77 + 32))(&v39[v70], v66, v78);

  v82 = v50;
  v83 = v52;
  v84 = v53;
  v85 = v54;
  v86 = v43;
  v87 = v73;
  v88 = v46;
  v89 = v48;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v56 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v56, sub_1BF144C00, v39, TupleTypeMetadata);
  v58 = v57;

  return v58;
}

uint64_t sub_1BF12B3A8(unint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v72 = a8;
  v71 = a7;
  v69 = a6;
  v84 = a3;
  v85 = a4;
  v94 = a2;
  v73 = a1;
  v82 = a13;
  v13 = *a3;
  v75 = *a2;
  v76 = v13;
  v77 = *a4;
  v80 = *(a13 - 8);
  v74 = *(v80 + 64);
  v79 = a12;
  MEMORY[0x1EEE9AC00](a1, a2);
  v83 = &v60 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = *(v14 - 8);
  v70 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v81 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a11;
  v18 = *(a11 - 8);
  v68 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v22;
  v63 = a10;
  v23 = *(a10 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v66 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v65 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v32);
  v60 = v23;
  (*(v23 + 16))(&v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v69, a10);
  v62 = v18;
  (*(v18 + 16))(v22, v71, a11);
  v33 = v78;
  v34 = v79;
  (*(v78 + 16))(v81, v72, v79);
  v35 = v80;
  v36 = v82;
  (*(v80 + 16))(v83, v73, v82);
  v37 = *(v23 + 80);
  v38 = (*(v28 + 80) + 96) & ~*(v28 + 80);
  v39 = (v29 + v37 + v38) & ~v37;
  v71 = (v24 + *(v18 + 80) + v39) & ~*(v18 + 80);
  v73 = (v68 + *(v33 + 80) + v71) & ~*(v33 + 80);
  v72 = (v70 + *(v35 + 80) + v73) & ~*(v35 + 80);
  v40 = swift_allocObject();
  v41 = v75;
  v42 = v64;
  v43 = v63;
  *(v40 + 2) = v64;
  *(v40 + 3) = v43;
  v44 = v61;
  *(v40 + 4) = v61;
  *(v40 + 5) = v34;
  *(v40 + 6) = v36;
  v45 = *(v41 + 80);
  *(v40 + 7) = v45;
  v47 = v84;
  v46 = v85;
  v48 = *(v76 + 80);
  *(v40 + 8) = v48;
  v49 = *(v77 + 80);
  *(v40 + 9) = v49;
  *(v40 + 10) = v47;
  *(v40 + 11) = v46;
  v50 = &v40[v38];
  v51 = v42;
  (*(v28 + 32))(v50, v65);
  v52 = v43;
  (*(v60 + 32))(&v40[v39], v66, v43);
  (*(v62 + 32))(&v40[v71], v67, v44);
  v53 = v79;
  (*(v78 + 32))(&v40[v73], v81, v79);
  v54 = v82;
  (*(v80 + 32))(&v40[v72], v83, v82);

  v86 = v51;
  v87 = v52;
  v88 = v44;
  v89 = v53;
  v90 = v54;
  v91 = v45;
  v92 = v48;
  v93 = v49;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v56 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v56, sub_1BF144D50, v40, TupleTypeMetadata);
  v58 = v57;

  return v58;
}

uint64_t sub_1BF12B9DC(unint64_t a1, uint64_t *a2, void *a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v75 = a8;
  v74 = a7;
  v72 = a6;
  v71 = a5;
  v89 = a3;
  v98 = a2;
  v76 = a1;
  v69 = a13;
  v87 = a14;
  v14 = *a3;
  v78 = *a2;
  v79 = v14;
  v86 = *(a14 - 8);
  v77 = *(v86 + 64);
  v82 = a12;
  MEMORY[0x1EEE9AC00](v77, a2);
  v88 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(v16 - 8);
  v73 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v85 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(v19 - 8);
  v70 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v84 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a11;
  v23 = *(a11 - 8);
  v68 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v27;
  v63 = a10;
  v28 = *(a10 - 8);
  v64 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v32;
  v80 = v33;
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v38 = MEMORY[0x1EEE9AC00](v36, v37);
  v65 = &v60 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v38);
  v60 = v28;
  (*(v28 + 16))(v32, v71, a10);
  v61 = v23;
  (*(v23 + 16))(v27, v72, a11);
  v39 = v81;
  (*(v81 + 16))(v84, v74, v82);
  v40 = v83;
  v41 = v69;
  (*(v83 + 16))(v85, v75, v69);
  v42 = v86;
  v43 = v87;
  (*(v86 + 16))(v88, v76, v87);
  v71 = (*(v34 + 80) + 88) & ~*(v34 + 80);
  v72 = (v35 + *(v28 + 80) + v71) & ~*(v28 + 80);
  v74 = (v64 + *(v23 + 80) + v72) & ~*(v23 + 80);
  v75 = (v68 + *(v39 + 80) + v74) & ~*(v39 + 80);
  v76 = (v70 + *(v40 + 80) + v75) & ~*(v40 + 80);
  v44 = (v73 + *(v42 + 80) + v76) & ~*(v42 + 80);
  v45 = swift_allocObject();
  v46 = v78;
  v47 = v63;
  *(v45 + 2) = v80;
  *(v45 + 3) = v47;
  v48 = v62;
  v49 = v82;
  *(v45 + 4) = v62;
  *(v45 + 5) = v49;
  *(v45 + 6) = v41;
  *(v45 + 7) = v43;
  v50 = *(v46 + 80);
  *(v45 + 8) = v50;
  v51 = v89;
  v52 = *(v79 + 80);
  *(v45 + 9) = v52;
  *(v45 + 10) = v51;
  (*(v34 + 32))(&v45[v71], v65);
  (*(v60 + 32))(&v45[v72], v66, v47);
  (*(v61 + 32))(&v45[v74], v67, v48);
  (*(v81 + 32))(&v45[v75], v84, v49);
  (*(v83 + 32))(&v45[v76], v85, v41);
  v53 = &v45[v44];
  v54 = v87;
  (*(v86 + 32))(v53, v88, v87);

  v90 = v80;
  v91 = v47;
  v92 = v48;
  v93 = v49;
  v94 = v41;
  v95 = v54;
  v96 = v50;
  v97 = v52;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v56 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v56, sub_1BF144EE8, v45, TupleTypeMetadata);
  v58 = v57;

  return v58;
}

uint64_t sub_1BF12C104(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v79 = a8;
  v76 = a7;
  v75 = a6;
  v74 = a5;
  v72 = a4;
  v103 = a2;
  v80 = a1;
  v89 = a12;
  v77 = a15;
  v82 = *a2;
  v92 = *(a15 - 8);
  v81 = *(v92 + 64);
  v86 = a13;
  v90 = a14;
  MEMORY[0x1EEE9AC00](v81, a2);
  v94 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *(v16 - 8);
  v78 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v93 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(v19 - 8);
  v73 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v91 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(v23 - 8);
  v71 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v24, v25);
  v87 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a11;
  v27 = *(a11 - 8);
  v67 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v31;
  v66 = a10;
  v32 = *(a10 - 8);
  v65 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v61 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v36;
  v84 = a9;
  v37 = *(*(a9 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38, v39);
  v68 = &v61 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v41;
  v61 = v41;
  (*(v41 + 16))(v40);
  v62 = v32;
  (*(v32 + 16))(v36, v72, a10);
  v63 = v27;
  (*(v27 + 16))(v31, v74, a11);
  v43 = v83;
  (*(v83 + 16))(v87, v75, v89);
  v44 = v85;
  (*(v85 + 16))(v91, v76, v86);
  v45 = v88;
  (*(v88 + 16))(v93, v79, v90);
  v46 = v92;
  v47 = v77;
  (*(v92 + 16))(v94, v80, v77);
  v72 = (*(v42 + 80) + 80) & ~*(v42 + 80);
  v74 = (v37 + *(v32 + 80) + v72) & ~*(v32 + 80);
  v75 = (v65 + *(v27 + 80) + v74) & ~*(v27 + 80);
  v48 = (v67 + *(v43 + 80) + v75) & ~*(v43 + 80);
  v76 = (v71 + *(v44 + 80) + v48) & ~*(v44 + 80);
  v80 = (v73 + *(v45 + 80) + v76) & ~*(v45 + 80);
  v79 = (v78 + *(v46 + 80) + v80) & ~*(v46 + 80);
  v49 = swift_allocObject();
  v50 = v66;
  *(v49 + 2) = v84;
  *(v49 + 3) = v50;
  v51 = v64;
  v52 = v89;
  v53 = v90;
  *(v49 + 4) = v64;
  *(v49 + 5) = v52;
  v54 = v86;
  *(v49 + 6) = v86;
  *(v49 + 7) = v53;
  *(v49 + 8) = v47;
  v55 = *(v82 + 80);
  *(v49 + 9) = v55;
  (*(v61 + 32))(&v49[v72], v68);
  (*(v62 + 32))(&v49[v74], v69, v50);
  (*(v63 + 32))(&v49[v75], v70, v51);
  (*(v83 + 32))(&v49[v48], v87, v52);
  (*(v85 + 32))(&v49[v76], v91, v54);
  (*(v88 + 32))(&v49[v80], v93, v53);
  (*(v92 + 32))(&v49[v79], v94, v47);
  v95 = v84;
  v96 = v50;
  v97 = v51;
  v98 = v52;
  v99 = v54;
  v100 = v53;
  v101 = v47;
  v102 = v55;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v57 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v57, sub_1BF1450D4, v49, TupleTypeMetadata);
  v59 = v58;

  return v59;
}

uint64_t sub_1BF12C91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v19 = TupleTypeMetadata[12];
  v20 = TupleTypeMetadata[16];
  v22 = TupleTypeMetadata[20];
  v24 = TupleTypeMetadata[24];
  v26 = TupleTypeMetadata[28];
  v28 = TupleTypeMetadata[32];
  v30 = TupleTypeMetadata[36];
  (*(*(a10 - 8) + 16))(a9, a2, a10);
  (*(*(a11 - 8) + 16))(a9 + v19, a3, a11);
  (*(*(a12 - 8) + 16))(a9 + v20, a4, a12);
  (*(*(a13 - 8) + 16))(a9 + v22, a5, a13);
  (*(*(a14 - 8) + 16))(a9 + v24, a6, a14);
  (*(*(a15 - 8) + 16))(a9 + v26, a7, a15);
  (*(*(a16 - 8) + 16))(a9 + v28, a8);
  return (*(*(a17 - 8) + 16))(a9 + v30, a1);
}

uint64_t *combine<A, B, C, D, E, F, G, H, I>(_:_:_:_:_:_:_:_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23 = *a1;
  v16 = swift_allocObject();
  v16[2] = *(v23 + 80);
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  v16[7] = a6;
  v16[8] = a7;
  v16[9] = a8;
  v16[10] = a9;

  OUTLINED_FUNCTION_102();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v18 = sub_1BF014EDC();
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)(v19, v20, v21, TupleTypeMetadata);
  OUTLINED_FUNCTION_155();

  return a1;
}

uint64_t sub_1BF12CDE8(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10)
{
  v53 = a8;
  v63 = a9;
  v51 = *a2;
  v52 = a2;
  v14 = *a3;
  v15 = *a4;
  v46 = a7;
  v47 = v15;
  v16 = *a5;
  v43 = *a6;
  v44 = v16;
  v45 = *a7;
  v48 = *a8;
  v49 = v14;
  v50 = *a9;
  v17 = *(a10 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](a1, a2);
  v20 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v21, a10, v19);
  v42 = (*(v17 + 80) + 144) & ~*(v17 + 80);
  v22 = swift_allocObject();
  v23 = v51;
  *(v22 + 2) = a10;
  v51 = *(v23 + 80);
  v24 = v49;
  *(v22 + 3) = v51;
  v49 = *(v24 + 80);
  v25 = v47;
  *(v22 + 4) = v49;
  v47 = *(v25 + 80);
  v26 = v44;
  *(v22 + 5) = v47;
  v27 = a5;
  v44 = *(v26 + 80);
  v28 = v43;
  *(v22 + 6) = v44;
  v29 = a6;
  v43 = *(v28 + 80);
  v30 = v45;
  v31 = v46;
  *(v22 + 7) = v43;
  v45 = *(v30 + 80);
  v32 = v48;
  *(v22 + 8) = v45;
  v33 = v53;
  v48 = *(v32 + 80);
  v34 = v50;
  *(v22 + 9) = v48;
  v35 = v63;
  v50 = *(v34 + 80);
  *(v22 + 10) = v50;
  *(v22 + 11) = a3;
  *(v22 + 12) = a4;
  *(v22 + 13) = v27;
  *(v22 + 14) = v29;
  *(v22 + 15) = v31;
  *(v22 + 16) = v33;
  *(v22 + 17) = v35;
  (*(v17 + 32))(&v22[v42], v20, a10);

  v54 = a10;
  v55 = v51;
  v56 = v49;
  v57 = v47;
  v58 = v44;
  v59 = v43;
  v60 = v45;
  v61 = v48;
  v62 = v50;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v37 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v37, sub_1BF143E50, v22, TupleTypeMetadata);
  v39 = v38;

  return v39;
}

uint64_t sub_1BF12D160(uint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v51 = a6;
  v52 = a7;
  v53 = a8;
  v46 = a5;
  v44 = a4;
  v42 = a3;
  v63 = a2;
  v41 = *a2;
  v43 = *a3;
  v45 = *a4;
  v12 = *a6;
  v47 = *a5;
  v48 = v12;
  v13 = *a8;
  v49 = *a7;
  v50 = v13;
  v14 = *(a11 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1, a9);
  v40 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a10 - 8);
  v17 = *(v16 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v21, v20);
  v22 = *(v14 + 16);
  v39 = a11;
  v22(&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a11);
  v23 = (*(v16 + 80) + 136) & ~*(v16 + 80);
  v24 = (v17 + *(v14 + 80) + v23) & ~*(v14 + 80);
  v25 = swift_allocObject();
  v26 = v41;
  *(v25 + 2) = a10;
  *(v25 + 3) = a11;
  v41 = *(v26 + 80);
  *(v25 + 4) = v41;
  v27 = v44;
  v28 = v42;
  v43 = *(v43 + 80);
  *(v25 + 5) = v43;
  v29 = v46;
  v45 = *(v45 + 80);
  *(v25 + 6) = v45;
  v47 = *(v47 + 80);
  *(v25 + 7) = v47;
  v31 = v51;
  v30 = v52;
  v48 = *(v48 + 80);
  *(v25 + 8) = v48;
  v49 = *(v49 + 80);
  *(v25 + 9) = v49;
  v32 = v53;
  v50 = *(v50 + 80);
  *(v25 + 10) = v50;
  *(v25 + 11) = v28;
  *(v25 + 12) = v27;
  *(v25 + 13) = v29;
  *(v25 + 14) = v31;
  *(v25 + 15) = v30;
  *(v25 + 16) = v32;
  (*(v16 + 32))(&v25[v23], v21);
  v33 = v39;
  (*(v14 + 32))(&v25[v24], v40, v39);

  v54 = a10;
  v55 = v33;
  v56 = v41;
  v57 = v43;
  v58 = v45;
  v59 = v47;
  v60 = v48;
  v61 = v49;
  v62 = v50;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v35 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v35, sub_1BF143EB4, v25, TupleTypeMetadata);
  v37 = v36;

  return v37;
}

uint64_t sub_1BF12D558(unint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v60 = a5;
  v61 = a6;
  v62 = a7;
  v55 = a4;
  v53 = a3;
  v72 = a2;
  v51 = a1;
  v50 = a12;
  v52 = *a2;
  v54 = *a3;
  v12 = *a5;
  v56 = *a4;
  v57 = v12;
  v13 = *a7;
  v58 = *a6;
  v59 = v13;
  v14 = *(a12 - 8);
  v15 = *(v14 + 64);
  v46 = a9;
  MEMORY[0x1EEE9AC00](a1, a2);
  v49 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a11 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v48 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v47 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v25);
  (*(v16 + 16))(&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v46, a11);
  v45 = v14;
  v26 = v50;
  (*(v14 + 16))(&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v51, v50);
  v27 = (*(v21 + 80) + 128) & ~*(v21 + 80);
  v51 = (v22 + *(v16 + 80) + v27) & ~*(v16 + 80);
  v28 = (v17 + *(v14 + 80) + v51) & ~*(v14 + 80);
  v29 = swift_allocObject();
  v30 = v52;
  v31 = v53;
  v32 = v44;
  *(v29 + 2) = v44;
  *(v29 + 3) = a11;
  *(v29 + 4) = v26;
  v52 = *(v30 + 80);
  *(v29 + 5) = v52;
  v33 = v55;
  v54 = *(v54 + 80);
  *(v29 + 6) = v54;
  v56 = *(v56 + 80);
  *(v29 + 7) = v56;
  v35 = v60;
  v34 = v61;
  v57 = *(v57 + 80);
  *(v29 + 8) = v57;
  v58 = *(v58 + 80);
  *(v29 + 9) = v58;
  v36 = v62;
  v59 = *(v59 + 80);
  *(v29 + 10) = v59;
  *(v29 + 11) = v31;
  *(v29 + 12) = v33;
  *(v29 + 13) = v35;
  *(v29 + 14) = v34;
  *(v29 + 15) = v36;
  v37 = &v29[v27];
  v38 = v32;
  (*(v21 + 32))(v37, v47);
  (*(v16 + 32))(&v29[v51], v48, a11);
  (*(v45 + 32))(&v29[v28], v49, v26);

  v63 = v38;
  v64 = a11;
  v65 = v26;
  v66 = v52;
  v67 = v54;
  v68 = v56;
  v69 = v57;
  v70 = v58;
  v71 = v59;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v40 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v40, sub_1BF143F60, v29, TupleTypeMetadata);
  v42 = v41;

  return v42;
}

uint64_t sub_1BF12DA18(unint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v70 = a8;
  v83 = a5;
  v84 = a6;
  v81 = a3;
  v82 = a4;
  v94 = a2;
  v71 = a1;
  v69 = a9;
  v80 = a13;
  v73 = *a2;
  v13 = *a4;
  v74 = *a3;
  v75 = v13;
  v14 = *a6;
  v76 = *a5;
  v77 = v14;
  v79 = *(a13 - 8);
  v72 = *(v79 + 64);
  v78 = a12;
  MEMORY[0x1EEE9AC00](a1, a2);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v16;
  v18 = *(v17 - 8);
  v68 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v22;
  v61 = a11;
  v23 = *(a11 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v65 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v64 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v32);
  (*(v23 + 16))(&v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v70, a11);
  v63 = v18;
  v33 = v22;
  v34 = v78;
  (*(v18 + 16))(v33, v69, v78);
  v35 = v79;
  v36 = v16;
  v37 = v80;
  (*(v79 + 16))(v36, v71, v80);
  v38 = (*(v28 + 80) + 120) & ~*(v28 + 80);
  v39 = (v29 + *(v23 + 80) + v38) & ~*(v23 + 80);
  v40 = (v24 + *(v18 + 80) + v39) & ~*(v18 + 80);
  v71 = (v68 + *(v35 + 80) + v40) & ~*(v35 + 80);
  v41 = swift_allocObject();
  v42 = v73;
  v43 = v62;
  v44 = v61;
  *(v41 + 2) = v62;
  *(v41 + 3) = v44;
  *(v41 + 4) = v34;
  *(v41 + 5) = v37;
  v45 = *(v42 + 80);
  *(v41 + 6) = v45;
  v47 = v81;
  v46 = v82;
  v74 = *(v74 + 80);
  *(v41 + 7) = v74;
  v75 = *(v75 + 80);
  *(v41 + 8) = v75;
  v48 = v83;
  v76 = *(v76 + 80);
  *(v41 + 9) = v76;
  v49 = v84;
  v50 = *(v77 + 80);
  *(v41 + 10) = v50;
  *(v41 + 11) = v47;
  *(v41 + 12) = v46;
  *(v41 + 13) = v48;
  *(v41 + 14) = v49;
  v51 = &v41[v38];
  v52 = v43;
  (*(v28 + 32))(v51, v64);
  (*(v23 + 32))(&v41[v39], v65, v44);
  v53 = v78;
  (*(v63 + 32))(&v41[v40], v66, v78);
  v54 = v80;
  (*(v79 + 32))(&v41[v71], v67, v80);

  v85 = v52;
  v86 = v44;
  v87 = v53;
  v88 = v54;
  v89 = v45;
  v90 = v74;
  v91 = v75;
  v92 = v76;
  v93 = v50;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v56 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v56, sub_1BF144058, v41, TupleTypeMetadata);
  v58 = v57;

  return v58;
}

uint64_t sub_1BF12DFB8(unint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, uint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v67 = a8;
  v64 = a7;
  v80 = a4;
  v81 = a5;
  v79 = a3;
  v91 = a2;
  v68 = a1;
  v66 = a9;
  v75 = a13;
  v65 = a14;
  v70 = *a2;
  v14 = *a4;
  v71 = *a3;
  v72 = v14;
  v73 = *a5;
  v76 = *(a14 - 8);
  v69 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v78 = &v55 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(v15 - 8);
  v63 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v77 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a12;
  v19 = *(a12 - 8);
  v62 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v23;
  v56 = a11;
  v24 = *(a11 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26, v27);
  v60 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v28;
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v33 = MEMORY[0x1EEE9AC00](v31, v32);
  v59 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v33);
  (*(v24 + 16))(&v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v64, a11);
  v57 = v19;
  (*(v19 + 16))(v23, v67, a12);
  v34 = v74;
  (*(v74 + 16))(v77, v66, v75);
  v35 = v76;
  v36 = v65;
  (*(v76 + 16))(v78, v68, v65);
  v37 = (*(v29 + 80) + 112) & ~*(v29 + 80);
  v64 = (v30 + *(v24 + 80) + v37) & ~*(v24 + 80);
  v66 = (v25 + *(v19 + 80) + v64) & ~*(v19 + 80);
  v68 = (v62 + *(v34 + 80) + v66) & ~*(v34 + 80);
  v67 = (v63 + *(v35 + 80) + v68) & ~*(v35 + 80);
  v38 = swift_allocObject();
  v39 = v70;
  v40 = v58;
  v41 = v56;
  *(v38 + 2) = v58;
  *(v38 + 3) = v41;
  v42 = v55;
  v43 = v75;
  *(v38 + 4) = v55;
  *(v38 + 5) = v43;
  *(v38 + 6) = v36;
  v44 = *(v39 + 80);
  *(v38 + 7) = v44;
  v46 = v79;
  v45 = v80;
  v71 = *(v71 + 80);
  *(v38 + 8) = v71;
  v72 = *(v72 + 80);
  *(v38 + 9) = v72;
  v47 = v81;
  v73 = *(v73 + 80);
  *(v38 + 10) = v73;
  *(v38 + 11) = v46;
  *(v38 + 12) = v45;
  *(v38 + 13) = v47;
  v48 = &v38[v37];
  v49 = v40;
  (*(v29 + 32))(v48, v59);
  (*(v24 + 32))(&v38[v64], v60, v41);
  (*(v57 + 32))(&v38[v66], v61, v42);
  (*(v74 + 32))(&v38[v68], v77, v43);
  (*(v76 + 32))(&v38[v67], v78, v36);

  v82 = v49;
  v83 = v41;
  v84 = v42;
  v85 = v43;
  v86 = v36;
  v87 = v44;
  v88 = v71;
  v89 = v72;
  v90 = v73;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v51 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v51, sub_1BF1441A4, v38, TupleTypeMetadata);
  v53 = v52;

  return v53;
}

uint64_t sub_1BF12E64C(unint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v78 = a8;
  v75 = a7;
  v74 = a6;
  v93 = a3;
  v94 = a4;
  v104 = a2;
  v79 = a1;
  v77 = a9;
  v90 = a15;
  v81 = *a2;
  v82 = *a3;
  v83 = *a4;
  v89 = *(a15 - 8);
  v80 = *(v89 + 64);
  v85 = a13;
  v87 = a14;
  MEMORY[0x1EEE9AC00](v80, a2);
  v92 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *(v16 - 8);
  v76 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v91 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(v19 - 8);
  v73 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v88 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a12;
  v23 = *(a12 - 8);
  v69 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v27;
  v67 = a11;
  v28 = *(a11 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30, v31);
  v71 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v32;
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  v70 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v37);
  v64 = v28;
  (*(v28 + 16))(&v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v74, a11);
  v65 = v23;
  (*(v23 + 16))(v27, v75, a12);
  v38 = v84;
  (*(v84 + 16))(v88, v78, v85);
  v39 = v86;
  (*(v86 + 16))(v91, v77, v87);
  v40 = v89;
  v41 = v90;
  (*(v89 + 16))(v92, v79, v90);
  v42 = *(v28 + 80);
  v43 = (*(v33 + 80) + 104) & ~*(v33 + 80);
  v74 = (v34 + v42 + v43) & ~v42;
  v75 = (v29 + *(v23 + 80) + v74) & ~*(v23 + 80);
  v77 = (v69 + *(v38 + 80) + v75) & ~*(v38 + 80);
  v79 = (v73 + *(v39 + 80) + v77) & ~*(v39 + 80);
  v78 = (v76 + *(v40 + 80) + v79) & ~*(v40 + 80);
  v44 = swift_allocObject();
  v45 = v81;
  v46 = v68;
  v47 = v67;
  *(v44 + 2) = v68;
  *(v44 + 3) = v47;
  v48 = v66;
  v49 = v85;
  *(v44 + 4) = v66;
  *(v44 + 5) = v49;
  v50 = v87;
  *(v44 + 6) = v87;
  *(v44 + 7) = v41;
  v51 = *(v45 + 80);
  *(v44 + 8) = v51;
  v52 = v93;
  v82 = *(v82 + 80);
  *(v44 + 9) = v82;
  v53 = v94;
  v54 = *(v83 + 80);
  *(v44 + 10) = v54;
  *(v44 + 11) = v52;
  *(v44 + 12) = v53;
  v55 = &v44[v43];
  v56 = v46;
  (*(v33 + 32))(v55, v70);
  (*(v64 + 32))(&v44[v74], v71, v47);
  v57 = v48;
  (*(v65 + 32))(&v44[v75], v72, v48);
  (*(v84 + 32))(&v44[v77], v88, v49);
  (*(v86 + 32))(&v44[v79], v91, v50);
  v58 = v90;
  (*(v89 + 32))(&v44[v78], v92, v90);

  v95 = v56;
  v96 = v47;
  v97 = v57;
  v98 = v49;
  v99 = v50;
  v100 = v58;
  v101 = v51;
  v102 = v82;
  v103 = v54;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v60 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v60, sub_1BF14433C, v44, TupleTypeMetadata);
  v62 = v61;

  return v62;
}

uint64_t sub_1BF12EDCC(unint64_t a1, uint64_t *a2, void *a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v83 = a8;
  v80 = a7;
  v79 = a6;
  v77 = a5;
  v101 = a3;
  v111 = a2;
  v84 = a1;
  v82 = a9;
  v94 = a15;
  v99 = a16;
  v86 = *a2;
  v87 = *a3;
  v97 = *(a16 - 8);
  v85 = *(v97 + 64);
  v95 = a13;
  v91 = a14;
  MEMORY[0x1EEE9AC00](v85, a2);
  v100 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = *(v17 - 8);
  v81 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v98 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = *(v20 - 8);
  v78 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v21, v22);
  v96 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *(v24 - 8);
  v76 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v93 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a12;
  v28 = *(a12 - 8);
  v72 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v32;
  v71 = a11;
  v33 = *(a11 - 8);
  v70 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v65 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v37;
  v89 = v38;
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v43 = MEMORY[0x1EEE9AC00](v41, v42);
  v73 = &v65 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v39 + 16))(v43);
  v67 = v33;
  (*(v33 + 16))(v37, v77, a11);
  v68 = v28;
  (*(v28 + 16))(v32, v79, a12);
  v44 = v88;
  (*(v88 + 16))(v93, v80, v95);
  v45 = v90;
  (*(v90 + 16))(v96, v83, v91);
  v46 = v92;
  (*(v92 + 16))(v98, v82, v94);
  v47 = v97;
  v48 = v99;
  (*(v97 + 16))(v100, v84, v99);
  v66 = (*(v39 + 80) + 96) & ~*(v39 + 80);
  v77 = (v40 + *(v33 + 80) + v66) & ~*(v33 + 80);
  v79 = (v70 + *(v28 + 80) + v77) & ~*(v28 + 80);
  v80 = (v72 + *(v44 + 80) + v79) & ~*(v44 + 80);
  v82 = (v76 + *(v45 + 80) + v80) & ~*(v45 + 80);
  v84 = (v78 + *(v46 + 80) + v82) & ~*(v46 + 80);
  v83 = (v81 + *(v47 + 80) + v84) & ~*(v47 + 80);
  v49 = swift_allocObject();
  v50 = v86;
  v51 = v71;
  *(v49 + 2) = v89;
  *(v49 + 3) = v51;
  v52 = v69;
  v53 = v94;
  v54 = v95;
  *(v49 + 4) = v69;
  *(v49 + 5) = v54;
  v55 = v91;
  *(v49 + 6) = v91;
  *(v49 + 7) = v53;
  *(v49 + 8) = v48;
  v56 = *(v50 + 80);
  *(v49 + 9) = v56;
  v57 = v101;
  v87 = *(v87 + 80);
  *(v49 + 10) = v87;
  *(v49 + 11) = v57;
  (*(v39 + 32))(&v49[v66], v73);
  (*(v67 + 32))(&v49[v77], v74, v51);
  (*(v68 + 32))(&v49[v79], v75, v52);
  (*(v88 + 32))(&v49[v80], v93, v54);
  (*(v90 + 32))(&v49[v82], v96, v55);
  v58 = v53;
  (*(v92 + 32))(&v49[v84], v98, v53);
  v59 = v99;
  (*(v97 + 32))(&v49[v83], v100, v99);

  v102 = v89;
  v103 = v51;
  v104 = v52;
  v105 = v54;
  v106 = v55;
  v107 = v58;
  v108 = v59;
  v109 = v56;
  v110 = v87;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v61 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v61, sub_1BF144520, v49, TupleTypeMetadata);
  v63 = v62;

  return v63;
}

uint64_t sub_1BF12F648(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v91 = a8;
  v89 = a7;
  v88 = a6;
  v86 = a5;
  v85 = a4;
  v121 = a2;
  v93 = a1;
  v90 = a9;
  v102 = a13;
  v106 = a14;
  v108 = a17;
  v95 = *a2;
  v107 = *(a17 - 8);
  v94 = *(v107 + 64);
  v100 = a15;
  v104 = a16;
  MEMORY[0x1EEE9AC00](a13, v94);
  v111 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = *(v18 - 8);
  v92 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v19, v17);
  v110 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *(v21 - 8);
  v87 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v22, v23);
  v109 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 - 8);
  v84 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v27, v28);
  v105 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v30 - 8);
  v83 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30, v32);
  v101 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a12;
  v34 = *(a12 - 8);
  v79 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v73 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v38;
  v78 = a11;
  v98 = *(a11 - 8);
  v39 = v98;
  v77 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v73 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v43;
  v96 = v44;
  v97 = *(v44 - 8);
  v45 = *(v97 + 64);
  v48 = MEMORY[0x1EEE9AC00](v46, v47);
  v80 = &v73 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v49 + 16))(v48);
  (*(v39 + 16))(v43, v85, a11);
  v50 = v34;
  v73 = v34;
  (*(v34 + 16))(v38, v86, a12);
  v74 = v31;
  (*(v31 + 16))(v101, v88, v102);
  v75 = v26;
  (*(v26 + 16))(v105, v89, v106);
  v51 = v99;
  (*(v99 + 16))(v109, v91, v100);
  v53 = v103;
  v52 = v104;
  (*(v103 + 16))(v110, v90, v104);
  v55 = v107;
  v54 = v108;
  (*(v107 + 16))(v111, v93, v108);
  v86 = (*(v97 + 80) + 88) & ~*(v97 + 80);
  v88 = (v45 + *(v98 + 80) + v86) & ~*(v98 + 80);
  v89 = (v77 + *(v50 + 80) + v88) & ~*(v50 + 80);
  v90 = (v79 + *(v31 + 80) + v89) & ~*(v31 + 80);
  v91 = (v83 + *(v26 + 80) + v90) & ~*(v26 + 80);
  v93 = (v84 + *(v51 + 80) + v91) & ~*(v51 + 80);
  v56 = (v87 + *(v53 + 80) + v93) & ~*(v53 + 80);
  v92 = (v92 + *(v55 + 80) + v56) & ~*(v55 + 80);
  v57 = swift_allocObject();
  v58 = v78;
  *(v57 + 2) = v96;
  *(v57 + 3) = v58;
  v59 = v76;
  v60 = v102;
  *(v57 + 4) = v76;
  *(v57 + 5) = v60;
  v61 = v106;
  v62 = v100;
  *(v57 + 6) = v106;
  *(v57 + 7) = v62;
  *(v57 + 8) = v52;
  *(v57 + 9) = v54;
  v63 = *(v95 + 80);
  *(v57 + 10) = v63;
  (*(v97 + 32))(&v57[v86], v80);
  (*(v98 + 32))(&v57[v88], v81, v58);
  (*(v73 + 32))(&v57[v89], v82, v59);
  (*(v74 + 32))(&v57[v90], v101, v60);
  v64 = v61;
  (*(v75 + 32))(&v57[v91], v105, v61);
  (*(v99 + 32))(&v57[v93], v109, v62);
  v65 = &v57[v56];
  v66 = v104;
  (*(v103 + 32))(v65, v110, v104);
  v67 = v108;
  (*(v107 + 32))(&v57[v92], v111, v108);
  v112 = v96;
  v113 = v58;
  v114 = v59;
  v115 = v60;
  v116 = v64;
  v117 = v62;
  v118 = v66;
  v119 = v67;
  v120 = v63;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v69 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v69, sub_1BF144768, v57, TupleTypeMetadata);
  v71 = v70;

  return v71;
}

uint64_t sub_1BF12FF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v21 = TupleTypeMetadata[12];
  v22 = TupleTypeMetadata[16];
  v24 = TupleTypeMetadata[20];
  v26 = TupleTypeMetadata[24];
  v28 = TupleTypeMetadata[28];
  v30 = TupleTypeMetadata[32];
  v31 = TupleTypeMetadata[36];
  v33 = TupleTypeMetadata[40];
  (*(*(a11 - 8) + 16))(a9, a2, a11);
  (*(*(a12 - 8) + 16))(a9 + v21, a3, a12);
  (*(*(a13 - 8) + 16))(a9 + v22, a4, a13);
  (*(*(a14 - 8) + 16))(a9 + v24, a5, a14);
  (*(*(a15 - 8) + 16))(a9 + v26, a6, a15);
  (*(*(a16 - 8) + 16))(a9 + v28, a7, a16);
  (*(*(a17 - 8) + 16))(a9 + v30, a8);
  (*(*(a18 - 8) + 16))(a9 + v31, a10);
  return (*(*(a19 - 8) + 16))(a9 + v33, a1);
}

void combine<A, B, C, D, E, F, G, H, I, J>(_:_:_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_175();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = *v62;
  v64 = swift_allocObject();
  v64[2] = *(v63 + 80);
  v64[3] = v61;
  v64[4] = v59;
  v64[5] = v57;
  v64[6] = v55;
  v64[7] = v53;
  v64[8] = v51;
  v64[9] = v49;
  v64[10] = a47;
  v64[11] = a48;

  OUTLINED_FUNCTION_102();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v66 = sub_1BF014EDC();
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)(v67, v68, v69, TupleTypeMetadata);
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_173();
}

uint64_t sub_1BF1304E0(uint64_t a1, void *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11)
{
  v48 = a8;
  v45 = a7;
  v67 = a10;
  v56 = a9;
  v54 = *a2;
  v55 = a2;
  v13 = *a3;
  v52 = *a4;
  v53 = v13;
  v50 = *a5;
  v47 = *a6;
  v44 = *a7;
  v46 = *a8;
  v49 = *a9;
  v51 = *a10;
  v16 = *(a11 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](a1, a2);
  v19 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v20, a11, v18);
  v43 = (*(v16 + 80) + 160) & ~*(v16 + 80);
  v21 = swift_allocObject();
  v22 = v54;
  *(v21 + 2) = a11;
  v54 = *(v22 + 80);
  v23 = v53;
  *(v21 + 3) = v54;
  v53 = *(v23 + 80);
  v24 = v52;
  *(v21 + 4) = v53;
  v25 = a4;
  v52 = *(v24 + 80);
  v26 = v50;
  *(v21 + 5) = v52;
  v27 = a5;
  v50 = *(v26 + 80);
  v28 = v47;
  *(v21 + 6) = v50;
  v29 = a6;
  v47 = *(v28 + 80);
  v30 = v44;
  *(v21 + 7) = v47;
  v31 = v45;
  v44 = *(v30 + 80);
  v32 = v46;
  *(v21 + 8) = v44;
  v33 = v48;
  v46 = *(v32 + 80);
  v34 = v49;
  *(v21 + 9) = v46;
  v35 = v56;
  v49 = *(v34 + 80);
  v36 = v51;
  *(v21 + 10) = v49;
  v37 = v67;
  v51 = *(v36 + 80);
  *(v21 + 11) = v51;
  *(v21 + 12) = a3;
  *(v21 + 13) = v25;
  *(v21 + 14) = v27;
  *(v21 + 15) = v29;
  *(v21 + 16) = v31;
  *(v21 + 17) = v33;
  *(v21 + 18) = v35;
  *(v21 + 19) = v37;
  (*(v16 + 32))(&v21[v43], v19, a11);

  v57 = a11;
  v58 = v54;
  v59 = v53;
  v60 = v52;
  v61 = v50;
  v62 = v47;
  v63 = v44;
  v64 = v46;
  v65 = v49;
  v66 = v51;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v39 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v39, sub_1BF142F40, v21, TupleTypeMetadata);
  v41 = v40;

  return v41;
}

uint64_t sub_1BF1308D8(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v54 = a7;
  v55 = a8;
  v48 = a6;
  v46 = a5;
  v44 = a4;
  v42 = a3;
  v39 = a1;
  v66 = a9;
  v41 = *a2;
  v53 = a2;
  v43 = *a3;
  v45 = *a4;
  v47 = *a5;
  v12 = *a7;
  v49 = *a6;
  v50 = v12;
  v13 = *a9;
  v51 = *a8;
  v52 = v13;
  v38 = a12;
  v14 = *(a12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1, a10);
  v40 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a11 - 8);
  v17 = *(v16 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v21, v20);
  (*(v14 + 16))(&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v39, a12);
  v22 = (*(v16 + 80) + 152) & ~*(v16 + 80);
  v39 = (v17 + *(v14 + 80) + v22) & ~*(v14 + 80);
  v23 = swift_allocObject();
  v24 = v41;
  *(v23 + 2) = a11;
  *(v23 + 3) = a12;
  v41 = *(v24 + 80);
  *(v23 + 4) = v41;
  v25 = v42;
  v43 = *(v43 + 80);
  *(v23 + 5) = v43;
  v26 = v44;
  v45 = *(v45 + 80);
  *(v23 + 6) = v45;
  v27 = v46;
  v47 = *(v47 + 80);
  *(v23 + 7) = v47;
  v28 = v48;
  v49 = *(v49 + 80);
  *(v23 + 8) = v49;
  v29 = v54;
  v50 = *(v50 + 80);
  *(v23 + 9) = v50;
  v30 = v55;
  v51 = *(v51 + 80);
  *(v23 + 10) = v51;
  v31 = v66;
  v52 = *(v52 + 80);
  *(v23 + 11) = v52;
  *(v23 + 12) = v25;
  *(v23 + 13) = v26;
  *(v23 + 14) = v27;
  *(v23 + 15) = v28;
  *(v23 + 16) = v29;
  *(v23 + 17) = v30;
  *(v23 + 18) = v31;
  (*(v16 + 32))(&v23[v22], v21);
  v32 = v38;
  (*(v14 + 32))(&v23[v39], v40, v38);

  v56 = a11;
  v57 = v32;
  v58 = v41;
  v59 = v43;
  v60 = v45;
  v61 = v47;
  v62 = v49;
  v63 = v50;
  v64 = v51;
  v65 = v52;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v34 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v34, sub_1BF142FA0, v23, TupleTypeMetadata);
  v36 = v35;

  return v36;
}

uint64_t sub_1BF130D58(unint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v64 = a5;
  v66 = a7;
  v67 = a8;
  v65 = a6;
  v58 = a4;
  v56 = a3;
  v78 = a2;
  v54 = a1;
  v53 = a10;
  v49 = a13;
  v55 = *a2;
  v57 = *a3;
  v13 = *a5;
  v59 = *a4;
  v60 = v13;
  v14 = *a7;
  v61 = *a6;
  v62 = v14;
  v63 = *a8;
  v15 = *(a13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1, a9);
  v52 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a12 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v51 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v50 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v26);
  (*(v17 + 16))(&v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v53, a12);
  v48 = v15;
  v27 = v49;
  (*(v15 + 16))(&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v54, v49);
  v28 = (*(v22 + 80) + 144) & ~*(v22 + 80);
  v29 = (v23 + *(v17 + 80) + v28) & ~*(v17 + 80);
  v54 = (v18 + *(v15 + 80) + v29) & ~*(v15 + 80);
  v30 = swift_allocObject();
  v31 = v55;
  v32 = v47;
  *(v30 + 2) = v47;
  *(v30 + 3) = a12;
  *(v30 + 4) = v27;
  v55 = *(v31 + 80);
  *(v30 + 5) = v55;
  v33 = v56;
  v57 = *(v57 + 80);
  *(v30 + 6) = v57;
  v34 = v58;
  v59 = *(v59 + 80);
  *(v30 + 7) = v59;
  v36 = v64;
  v35 = v65;
  v60 = *(v60 + 80);
  *(v30 + 8) = v60;
  v61 = *(v61 + 80);
  *(v30 + 9) = v61;
  v37 = v66;
  v62 = *(v62 + 80);
  *(v30 + 10) = v62;
  v38 = v67;
  v63 = *(v63 + 80);
  *(v30 + 11) = v63;
  *(v30 + 12) = v33;
  *(v30 + 13) = v34;
  *(v30 + 14) = v36;
  *(v30 + 15) = v35;
  *(v30 + 16) = v37;
  *(v30 + 17) = v38;
  v39 = &v30[v28];
  v40 = v32;
  (*(v22 + 32))(v39, v50);
  (*(v17 + 32))(&v30[v29], v51, a12);
  (*(v48 + 32))(&v30[v54], v52, v27);

  v68 = v40;
  v69 = a12;
  v70 = v27;
  v71 = v55;
  v72 = v57;
  v73 = v59;
  v74 = v60;
  v75 = v61;
  v76 = v62;
  v77 = v63;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v42 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v42, sub_1BF14305C, v30, TupleTypeMetadata);
  v44 = v43;

  return v44;
}

uint64_t sub_1BF131280(unint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v77 = a6;
  v78 = a7;
  v75 = a4;
  v76 = a5;
  v67 = a3;
  v89 = a2;
  v64 = a1;
  v63 = a10;
  v61 = a9;
  v62 = a14;
  v66 = *a2;
  v68 = *a3;
  v14 = *a5;
  v69 = *a4;
  v70 = v14;
  v15 = *a7;
  v71 = *a6;
  v72 = v15;
  v73 = *(a14 - 8);
  v65 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v74 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a13;
  v17 = *(a13 - 8);
  v57 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v21;
  v22 = *(a12 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24, v25);
  v59 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v58 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v31);
  v55 = v22;
  (*(v22 + 16))(&v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v61, a12);
  v56 = v17;
  (*(v17 + 16))(v21, v63, a13);
  v32 = v73;
  v33 = v62;
  (*(v73 + 16))(v74, v64, v62);
  v34 = (*(v27 + 80) + 136) & ~*(v27 + 80);
  v63 = (v28 + *(v22 + 80) + v34) & ~*(v22 + 80);
  v35 = (v23 + *(v17 + 80) + v63) & ~*(v17 + 80);
  v64 = (v57 + *(v32 + 80) + v35) & ~*(v32 + 80);
  v36 = swift_allocObject();
  v37 = v66;
  v38 = v54;
  *(v36 + 2) = v54;
  *(v36 + 3) = a12;
  v39 = v53;
  *(v36 + 4) = v53;
  *(v36 + 5) = v33;
  v40 = *(v37 + 80);
  *(v36 + 6) = v40;
  v41 = v67;
  v68 = *(v68 + 80);
  *(v36 + 7) = v68;
  v43 = v75;
  v42 = v76;
  v69 = *(v69 + 80);
  *(v36 + 8) = v69;
  v70 = *(v70 + 80);
  *(v36 + 9) = v70;
  v44 = v77;
  v71 = *(v71 + 80);
  *(v36 + 10) = v71;
  v45 = v78;
  v72 = *(v72 + 80);
  *(v36 + 11) = v72;
  *(v36 + 12) = v41;
  *(v36 + 13) = v43;
  *(v36 + 14) = v42;
  *(v36 + 15) = v44;
  *(v36 + 16) = v45;
  v46 = &v36[v34];
  v47 = v38;
  (*(v27 + 32))(v46, v58);
  (*(v55 + 32))(&v36[v63], v59, a12);
  (*(v56 + 32))(&v36[v35], v60, v39);
  (*(v73 + 32))(&v36[v64], v74, v33);

  v79 = v47;
  v80 = a12;
  v81 = v39;
  v82 = v33;
  v83 = v40;
  v84 = v68;
  v85 = v69;
  v86 = v70;
  v87 = v71;
  v88 = v72;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v49 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v49, sub_1BF143160, v36, TupleTypeMetadata);
  v51 = v50;

  return v51;
}

uint64_t sub_1BF131880(unint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v69 = a8;
  v86 = a5;
  v87 = a6;
  v84 = a3;
  v85 = a4;
  v98 = a2;
  v71 = a1;
  v70 = a10;
  v68 = a9;
  v81 = a15;
  v73 = *a2;
  v74 = *a3;
  v75 = *a4;
  v76 = *a5;
  v77 = *a6;
  v80 = *(a15 - 8);
  v72 = *(v80 + 64);
  v79 = a14;
  MEMORY[0x1EEE9AC00](a1, a2);
  v83 = &v58 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = *(v15 - 8);
  v67 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v82 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a13;
  v19 = *(a13 - 8);
  v63 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v23;
  v60 = a12;
  v24 = *(a12 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26, v27);
  v65 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v28;
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v33 = MEMORY[0x1EEE9AC00](v31, v32);
  v64 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v33);
  (*(v24 + 16))(&v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v69, a12);
  v61 = v19;
  (*(v19 + 16))(v23, v68, a13);
  v34 = v78;
  (*(v78 + 16))(v82, v70, v79);
  v36 = v80;
  v35 = v81;
  (*(v80 + 16))(v83, v71, v81);
  v37 = (*(v29 + 80) + 128) & ~*(v29 + 80);
  v68 = (v30 + *(v24 + 80) + v37) & ~*(v24 + 80);
  v69 = (v25 + *(v19 + 80) + v68) & ~*(v19 + 80);
  v71 = (v63 + *(v34 + 80) + v69) & ~*(v34 + 80);
  v70 = (v67 + *(v36 + 80) + v71) & ~*(v36 + 80);
  v38 = swift_allocObject();
  v39 = v73;
  v40 = v62;
  v41 = v60;
  *(v38 + 2) = v62;
  *(v38 + 3) = v41;
  v42 = v59;
  v43 = v79;
  *(v38 + 4) = v59;
  *(v38 + 5) = v43;
  *(v38 + 6) = v35;
  v44 = *(v39 + 80);
  *(v38 + 7) = v44;
  v45 = v84;
  v74 = *(v74 + 80);
  *(v38 + 8) = v74;
  v46 = v85;
  v75 = *(v75 + 80);
  *(v38 + 9) = v75;
  v47 = v86;
  v76 = *(v76 + 80);
  *(v38 + 10) = v76;
  v48 = v87;
  v77 = *(v77 + 80);
  *(v38 + 11) = v77;
  *(v38 + 12) = v45;
  *(v38 + 13) = v46;
  *(v38 + 14) = v47;
  *(v38 + 15) = v48;
  v49 = &v38[v37];
  v50 = v40;
  (*(v29 + 32))(v49, v64);
  v51 = v41;
  (*(v24 + 32))(&v38[v68], v65, v41);
  (*(v61 + 32))(&v38[v69], v66, v42);
  (*(v78 + 32))(&v38[v71], v82, v43);
  v52 = v81;
  (*(v80 + 32))(&v38[v70], v83, v81);

  v88 = v50;
  v89 = v51;
  v90 = v42;
  v91 = v43;
  v92 = v52;
  v93 = v44;
  v94 = v74;
  v95 = v75;
  v96 = v76;
  v97 = v77;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v54 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v54, sub_1BF1432C0, v38, TupleTypeMetadata);
  v56 = v55;

  return v56;
}

uint64_t sub_1BF131F94(unint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v79 = a8;
  v76 = a7;
  v98 = a4;
  v99 = a5;
  v97 = a3;
  v110 = a2;
  v81 = a1;
  v80 = a10;
  v77 = a9;
  v91 = a15;
  v94 = a16;
  v83 = *a2;
  v84 = *a3;
  v85 = *a4;
  v86 = *a5;
  v93 = *(a16 - 8);
  v82 = *(v93 + 64);
  v89 = a14;
  MEMORY[0x1EEE9AC00](v82, a2);
  v96 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = *(v17 - 8);
  v78 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v95 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *(v20 - 8);
  v75 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v21, v22);
  v92 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a13;
  v24 = *(a13 - 8);
  v71 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v28;
  v69 = a12;
  v29 = *(a12 - 8);
  v70 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v33;
  v87 = a11;
  v34 = *(a11 - 8);
  v35 = *(v34 + 64);
  v38 = MEMORY[0x1EEE9AC00](v36, v37);
  v72 = &v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v34;
  (*(v34 + 16))(v38);
  v66 = v29;
  (*(v29 + 16))(v33, v76, a12);
  v68 = v24;
  (*(v24 + 16))(v28, v79, a13);
  v39 = v88;
  (*(v88 + 16))(v92, v77, v89);
  v40 = v90;
  v41 = v91;
  (*(v90 + 16))(v95, v80, v91);
  v43 = v93;
  v42 = v94;
  (*(v93 + 16))(v96, v81, v94);
  v77 = (*(v34 + 80) + 120) & ~*(v34 + 80);
  v44 = (v35 + *(v29 + 80) + v77) & ~*(v29 + 80);
  v45 = (v70 + *(v24 + 80) + v44) & ~*(v24 + 80);
  v79 = (v71 + *(v39 + 80) + v45) & ~*(v39 + 80);
  v81 = (v75 + *(v40 + 80) + v79) & ~*(v40 + 80);
  v80 = (v78 + *(v43 + 80) + v81) & ~*(v43 + 80);
  v46 = swift_allocObject();
  v47 = v83;
  v48 = v69;
  *(v46 + 2) = v87;
  *(v46 + 3) = v48;
  v49 = v67;
  v50 = v89;
  *(v46 + 4) = v67;
  *(v46 + 5) = v50;
  *(v46 + 6) = v41;
  *(v46 + 7) = v42;
  v51 = *(v47 + 80);
  *(v46 + 8) = v51;
  v52 = v97;
  v84 = *(v84 + 80);
  *(v46 + 9) = v84;
  v53 = v98;
  v85 = *(v85 + 80);
  *(v46 + 10) = v85;
  v54 = v99;
  v55 = *(v86 + 80);
  *(v46 + 11) = v55;
  *(v46 + 12) = v52;
  *(v46 + 13) = v53;
  *(v46 + 14) = v54;
  (*(v65 + 32))(&v46[v77], v72);
  (*(v66 + 32))(&v46[v44], v73, v48);
  v56 = v49;
  (*(v68 + 32))(&v46[v45], v74, v49);
  (*(v88 + 32))(&v46[v79], v92, v50);
  v57 = v91;
  (*(v90 + 32))(&v46[v81], v95, v91);
  v58 = v94;
  (*(v93 + 32))(&v46[v80], v96, v94);

  v100 = v87;
  v101 = v48;
  v102 = v56;
  v103 = v50;
  v104 = v57;
  v105 = v58;
  v106 = v51;
  v107 = v84;
  v108 = v85;
  v109 = v55;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v60 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v60, sub_1BF143464, v46, TupleTypeMetadata);
  v62 = v61;

  return v62;
}

uint64_t sub_1BF132784(unint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v91 = a8;
  v89 = a7;
  v88 = a6;
  v111 = a3;
  v112 = a4;
  v123 = a2;
  v94 = a1;
  v93 = a10;
  v90 = a9;
  v104 = a14;
  v109 = a17;
  v96 = *a2;
  v97 = *a3;
  v98 = *a4;
  v107 = *(a17 - 8);
  v95 = *(v107 + 64);
  v101 = a15;
  v105 = a16;
  MEMORY[0x1EEE9AC00](a1, v95);
  v110 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = *(v18 - 8);
  v92 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v19, v17);
  v108 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *(v21 - 8);
  v87 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v22, v23);
  v106 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 - 8);
  v86 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v27, v28);
  v102 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a13;
  v30 = *(a13 - 8);
  v82 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v34;
  v80 = a12;
  v35 = *(a12 - 8);
  v79 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v75 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v39;
  v81 = v40;
  v100 = *(v40 - 8);
  v41 = *(v100 + 64);
  v44 = MEMORY[0x1EEE9AC00](v42, v43);
  v83 = &v75 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v44);
  v75 = v35;
  (*(v35 + 16))(v39, v88, a12);
  v76 = v30;
  (*(v30 + 16))(v34, v89, a13);
  v77 = v26;
  (*(v26 + 16))(v102, v91, v104);
  v46 = v99;
  v47 = v101;
  (*(v99 + 16))(v106, v90, v101);
  v48 = v103;
  (*(v103 + 16))(v108, v93, v105);
  v49 = v107;
  v50 = v109;
  (*(v107 + 16))(v110, v94, v109);
  v89 = (*(v100 + 80) + 112) & ~*(v100 + 80);
  v90 = (v41 + *(v35 + 80) + v89) & ~*(v35 + 80);
  v91 = (v79 + *(v30 + 80) + v90) & ~*(v30 + 80);
  v51 = *(v46 + 80);
  v52 = (v82 + *(v26 + 80) + v91) & ~*(v26 + 80);
  v53 = (v86 + v51 + v52) & ~v51;
  v94 = (v87 + *(v48 + 80) + v53) & ~*(v48 + 80);
  v93 = (v92 + *(v49 + 80) + v94) & ~*(v49 + 80);
  v54 = swift_allocObject();
  v55 = v96;
  v56 = v81;
  v57 = v80;
  *(v54 + 2) = v81;
  *(v54 + 3) = v57;
  v58 = v78;
  v59 = v104;
  v60 = v105;
  *(v54 + 4) = v78;
  *(v54 + 5) = v59;
  *(v54 + 6) = v47;
  *(v54 + 7) = v60;
  *(v54 + 8) = v50;
  v61 = *(v55 + 80);
  *(v54 + 9) = v61;
  v62 = v111;
  v97 = *(v97 + 80);
  *(v54 + 10) = v97;
  v63 = v112;
  v98 = *(v98 + 80);
  *(v54 + 11) = v98;
  *(v54 + 12) = v62;
  *(v54 + 13) = v63;
  v64 = v56;
  (*(v100 + 32))(&v54[v89], v83);
  (*(v75 + 32))(&v54[v90], v84, v57);
  (*(v76 + 32))(&v54[v91], v85, v58);
  v65 = &v54[v52];
  v66 = v59;
  (*(v77 + 32))(v65, v102, v59);
  v67 = &v54[v53];
  v68 = v101;
  (*(v99 + 32))(v67, v106, v101);
  (*(v103 + 32))(&v54[v94], v108, v60);
  v69 = v109;
  (*(v107 + 32))(&v54[v93], v110, v109);

  v113 = v64;
  v114 = v57;
  v115 = v58;
  v116 = v66;
  v117 = v68;
  v118 = v60;
  v119 = v69;
  v120 = v61;
  v121 = v97;
  v122 = v98;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v71 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v71, sub_1BF143660, v54, TupleTypeMetadata);
  v73 = v72;

  return v73;
}

uint64_t sub_1BF133064(unint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v94 = a8;
  v92 = a7;
  v90 = a6;
  v89 = a5;
  v118 = a3;
  v129 = a2;
  v97 = a1;
  v95 = a10;
  v93 = a9;
  v108 = a14;
  v111 = a17;
  v115 = a18;
  v99 = *a2;
  v100 = *a3;
  v114 = *(a18 - 8);
  v98 = *(v114 + 64);
  v112 = a15;
  v107 = a16;
  MEMORY[0x1EEE9AC00](a1, v98);
  v117 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = *(v19 - 8);
  v96 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v20, v18);
  v116 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = *(v22 - 8);
  v91 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v23, v24);
  v113 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = *(v26 - 8);
  v88 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v27, v28);
  v110 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v30 - 8);
  v87 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v32, v33);
  v106 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a13;
  v35 = *(a13 - 8);
  v83 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v77 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v39;
  v82 = a12;
  v104 = *(a12 - 8);
  v40 = v104;
  v80 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v77 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v44;
  v101 = v45;
  v103 = *(v45 - 8);
  v46 = *(v103 + 64);
  v49 = MEMORY[0x1EEE9AC00](v47, v48);
  v84 = &v77 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v50 + 16))(v49);
  (*(v40 + 16))(v44, v89, a12);
  v51 = v35;
  v78 = v35;
  (*(v35 + 16))(v39, v90, a13);
  v79 = v31;
  (*(v31 + 16))(v106, v92, v108);
  v52 = v102;
  (*(v102 + 16))(v110, v94, v112);
  v53 = v105;
  v54 = v107;
  (*(v105 + 16))(v113, v93, v107);
  v55 = v109;
  (*(v109 + 16))(v116, v95, v111);
  v57 = v114;
  v56 = v115;
  (*(v114 + 16))(v117, v97, v115);
  v90 = (*(v103 + 80) + 104) & ~*(v103 + 80);
  v92 = (v46 + *(v104 + 80) + v90) & ~*(v104 + 80);
  v93 = (v80 + *(v51 + 80) + v92) & ~*(v51 + 80);
  v94 = (v83 + *(v31 + 80) + v93) & ~*(v31 + 80);
  v95 = (v87 + *(v52 + 80) + v94) & ~*(v52 + 80);
  v58 = (v88 + *(v53 + 80) + v95) & ~*(v53 + 80);
  v97 = (v91 + *(v55 + 80) + v58) & ~*(v55 + 80);
  v96 = (v96 + *(v57 + 80) + v97) & ~*(v57 + 80);
  v59 = swift_allocObject();
  v60 = v99;
  v61 = v82;
  *(v59 + 2) = v101;
  *(v59 + 3) = v61;
  v62 = v81;
  v63 = v108;
  *(v59 + 4) = v81;
  *(v59 + 5) = v63;
  v65 = v111;
  v64 = v112;
  *(v59 + 6) = v112;
  *(v59 + 7) = v54;
  *(v59 + 8) = v65;
  *(v59 + 9) = v56;
  v66 = *(v60 + 80);
  *(v59 + 10) = v66;
  v67 = v118;
  v100 = *(v100 + 80);
  *(v59 + 11) = v100;
  *(v59 + 12) = v67;
  (*(v103 + 32))(&v59[v90], v84);
  (*(v104 + 32))(&v59[v92], v85, v61);
  (*(v78 + 32))(&v59[v93], v86, v62);
  (*(v79 + 32))(&v59[v94], v106, v63);
  v68 = v64;
  (*(v102 + 32))(&v59[v95], v110, v64);
  v69 = &v59[v58];
  v70 = v107;
  (*(v105 + 32))(v69, v113, v107);
  (*(v109 + 32))(&v59[v97], v116, v65);
  v71 = v115;
  (*(v114 + 32))(&v59[v96], v117, v115);

  v119 = v101;
  v120 = v61;
  v121 = v62;
  v122 = v63;
  v123 = v68;
  v124 = v70;
  v125 = v65;
  v126 = v71;
  v127 = v66;
  v128 = v100;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v73 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v73, sub_1BF1438A4, v59, TupleTypeMetadata);
  v75 = v74;

  return v75;
}

uint64_t sub_1BF133A24(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v102 = a8;
  v100 = a7;
  v98 = a6;
  v97 = a5;
  v95 = a4;
  v128 = a2;
  v105 = a1;
  v103 = a10;
  v101 = a9;
  v117 = a14;
  v120 = a15;
  v122 = a16;
  v124 = a19;
  v107 = *a2;
  v123 = *(a19 - 8);
  v106 = *(v123 + 64);
  v116 = a17;
  v139 = a18;
  MEMORY[0x1EEE9AC00](a1, v106);
  v127 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = *(v20 - 8);
  v104 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v21, v19);
  v126 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = *(v23 - 8);
  v99 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v24, v25);
  v125 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = *(v27 - 8);
  v96 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v28, v29);
  v121 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = *(v31 - 8);
  v94 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v32, v33);
  v119 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v35 - 8);
  v93 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v85 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v40;
  v87 = a13;
  v113 = *(a13 - 8);
  v41 = v113;
  v88 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v85 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v45;
  v109 = a12;
  v112 = *(a12 - 8);
  v46 = v112;
  v86 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v85 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v50;
  v110 = v51;
  v111 = *(v51 - 8);
  v52 = *(v111 + 64);
  v55 = MEMORY[0x1EEE9AC00](v53, v54);
  v89 = &v85 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v56 + 16))(v55);
  (*(v46 + 16))(v50, v95, a12);
  (*(v41 + 16))(v45, v97, a13);
  v57 = v36;
  v85 = v36;
  (*(v36 + 16))(v40, v98, v117);
  v58 = v108;
  (*(v108 + 16))(v119, v100, v120);
  v59 = v114;
  (*(v114 + 16))(v121, v102, v122);
  v60 = v115;
  v61 = v116;
  (*(v115 + 16))(v125, v101, v116);
  v62 = v118;
  (*(v118 + 16))(v126, v103, v139);
  v64 = v123;
  v63 = v124;
  (*(v123 + 16))(v127, v105, v124);
  v97 = (*(v111 + 80) + 96) & ~*(v111 + 80);
  v98 = (v52 + *(v112 + 80) + v97) & ~*(v112 + 80);
  v100 = (v86 + *(v113 + 80) + v98) & ~*(v113 + 80);
  v101 = (v88 + *(v57 + 80) + v100) & ~*(v57 + 80);
  v102 = (v93 + *(v58 + 80) + v101) & ~*(v58 + 80);
  v103 = (v94 + *(v59 + 80) + v102) & ~*(v59 + 80);
  v65 = (v96 + *(v60 + 80) + v103) & ~*(v60 + 80);
  v105 = (v99 + *(v62 + 80) + v65) & ~*(v62 + 80);
  v104 = (v104 + *(v64 + 80) + v105) & ~*(v64 + 80);
  v66 = swift_allocObject();
  v67 = v109;
  *(v66 + 2) = v110;
  *(v66 + 3) = v67;
  v68 = v87;
  v69 = v117;
  *(v66 + 4) = v87;
  *(v66 + 5) = v69;
  v70 = v120;
  v71 = v122;
  *(v66 + 6) = v120;
  *(v66 + 7) = v71;
  v72 = v139;
  *(v66 + 8) = v61;
  *(v66 + 9) = v72;
  *(v66 + 10) = v63;
  v73 = *(v107 + 80);
  *(v66 + 11) = v73;
  (*(v111 + 32))(&v66[v97], v89);
  (*(v112 + 32))(&v66[v98], v90, v67);
  (*(v113 + 32))(&v66[v100], v91, v68);
  (*(v85 + 32))(&v66[v101], v92, v69);
  v74 = v70;
  (*(v108 + 32))(&v66[v102], v119, v70);
  v75 = v71;
  (*(v114 + 32))(&v66[v103], v121, v71);
  v76 = &v66[v65];
  v77 = v116;
  (*(v115 + 32))(v76, v125, v116);
  v78 = v139;
  (*(v118 + 32))(&v66[v105], v126, v139);
  v79 = v124;
  (*(v123 + 32))(&v66[v104], v127, v124);
  v129 = v110;
  v130 = v109;
  v131 = v68;
  v132 = v69;
  v133 = v74;
  v134 = v75;
  v135 = v77;
  v136 = v78;
  v137 = v79;
  v138 = v73;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v81 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v81, sub_1BF143B48, v66, TupleTypeMetadata);
  v83 = v82;

  return v83;
}

uint64_t sub_1BF1344C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v23 = TupleTypeMetadata[12];
  v24 = TupleTypeMetadata[16];
  v26 = TupleTypeMetadata[20];
  v28 = TupleTypeMetadata[24];
  v30 = TupleTypeMetadata[28];
  v31 = TupleTypeMetadata[32];
  v33 = TupleTypeMetadata[36];
  v35 = TupleTypeMetadata[40];
  v37 = TupleTypeMetadata[44];
  (*(*(a12 - 8) + 16))(a9, a2, a12);
  (*(*(a13 - 8) + 16))(a9 + v23, a3, a13);
  (*(*(a14 - 8) + 16))(a9 + v24, a4, a14);
  (*(*(a15 - 8) + 16))(a9 + v26, a5, a15);
  (*(*(a16 - 8) + 16))(a9 + v28, a6, a16);
  (*(*(a17 - 8) + 16))(a9 + v30, a7, a17);
  (*(*(a18 - 8) + 16))(a9 + v31, a8);
  (*(*(a19 - 8) + 16))(a9 + v33, a10);
  (*(*(a20 - 8) + 16))(a9 + v35, a11);
  return (*(*(a21 - 8) + 16))(a9 + v37, a1);
}

uint64_t combine<A, B, C, D, E, F, G, H, I, J, K>(_:_:_:_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  swift_allocObject();
  OUTLINED_FUNCTION_116_1();
  v18[2] = *(v17 + 80);
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = a6;
  v18[8] = a7;
  v18[9] = a8;
  v18[10] = a9;
  v18[11] = a10;
  v18[12] = a11;

  OUTLINED_FUNCTION_102();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v20 = sub_1BF014EDC();
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)(v21, v22, v23, TupleTypeMetadata);
  OUTLINED_FUNCTION_155();

  return a1;
}

uint64_t sub_1BF134AAC(uint64_t a1, void *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, uint64_t a12)
{
  v50 = a8;
  v49 = a7;
  v75 = a11;
  v62 = a9;
  v63 = a10;
  v60 = *a2;
  v61 = a2;
  v14 = *a3;
  v58 = *a4;
  v59 = v14;
  v16 = *a5;
  v56 = *a6;
  v57 = v16;
  v54 = *a7;
  v52 = *a8;
  v51 = *a9;
  v53 = *a10;
  v55 = *a11;
  v18 = *(a12 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](a1, a2);
  v21 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v22, a12, v20);
  v48 = (*(v18 + 80) + 176) & ~*(v18 + 80);
  v23 = swift_allocObject();
  v24 = v60;
  *(v23 + 2) = a12;
  v60 = *(v24 + 80);
  v25 = v59;
  *(v23 + 3) = v60;
  v59 = *(v25 + 80);
  v26 = v58;
  *(v23 + 4) = v59;
  v27 = a4;
  v58 = *(v26 + 80);
  v28 = v57;
  *(v23 + 5) = v58;
  v29 = a5;
  v57 = *(v28 + 80);
  v30 = v56;
  *(v23 + 6) = v57;
  v31 = a6;
  v56 = *(v30 + 80);
  v32 = v54;
  *(v23 + 7) = v56;
  v33 = v49;
  v54 = *(v32 + 80);
  v34 = v52;
  *(v23 + 8) = v54;
  v35 = v50;
  v52 = *(v34 + 80);
  v36 = v51;
  *(v23 + 9) = v52;
  v37 = v62;
  v51 = *(v36 + 80);
  v38 = v53;
  *(v23 + 10) = v51;
  v39 = v63;
  v53 = *(v38 + 80);
  v40 = v55;
  *(v23 + 11) = v53;
  v41 = v75;
  v55 = *(v40 + 80);
  *(v23 + 12) = v55;
  *(v23 + 13) = a3;
  *(v23 + 14) = v27;
  *(v23 + 15) = v29;
  *(v23 + 16) = v31;
  *(v23 + 17) = v33;
  *(v23 + 18) = v35;
  *(v23 + 19) = v37;
  *(v23 + 20) = v39;
  *(v23 + 21) = v41;
  (*(v18 + 32))(&v23[v48], v21, a12);

  v64 = a12;
  v65 = v60;
  v66 = v59;
  v67 = v58;
  v68 = v57;
  v69 = v56;
  v70 = v54;
  v71 = v52;
  v72 = v51;
  v73 = v53;
  v74 = v55;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v43 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v43, sub_1BF141CDC, v23, TupleTypeMetadata);
  v45 = v44;

  return v45;
}

uint64_t sub_1BF134EFC(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v59 = a8;
  v53 = a7;
  v51 = a6;
  v49 = a5;
  v47 = a4;
  v45 = a3;
  v42 = a1;
  v72 = a10;
  v60 = a9;
  v44 = *a2;
  v58 = a2;
  v46 = *a3;
  v48 = *a4;
  v50 = *a5;
  v52 = *a6;
  v13 = *a8;
  v54 = *a7;
  v55 = v13;
  v14 = *a10;
  v56 = *a9;
  v57 = v14;
  v15 = *(a13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1, a11);
  v43 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a12 - 8);
  v18 = *(v17 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v22, v21);
  v23 = *(v15 + 16);
  v40 = a13;
  v23(&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v42, a13);
  v41 = (*(v17 + 80) + 168) & ~*(v17 + 80);
  v42 = (v18 + *(v15 + 80) + v41) & ~*(v15 + 80);
  v24 = swift_allocObject();
  v25 = v44;
  *(v24 + 2) = a12;
  *(v24 + 3) = a13;
  v44 = *(v25 + 80);
  *(v24 + 4) = v44;
  v26 = v45;
  v46 = *(v46 + 80);
  *(v24 + 5) = v46;
  v27 = v47;
  v48 = *(v48 + 80);
  *(v24 + 6) = v48;
  v28 = v49;
  v50 = *(v50 + 80);
  *(v24 + 7) = v50;
  v29 = v53;
  v30 = v51;
  v52 = *(v52 + 80);
  *(v24 + 8) = v52;
  v54 = *(v54 + 80);
  *(v24 + 9) = v54;
  v31 = v59;
  v32 = v60;
  v55 = *(v55 + 80);
  *(v24 + 10) = v55;
  v56 = *(v56 + 80);
  *(v24 + 11) = v56;
  v33 = v72;
  v57 = *(v57 + 80);
  *(v24 + 12) = v57;
  *(v24 + 13) = v26;
  *(v24 + 14) = v27;
  *(v24 + 15) = v28;
  *(v24 + 16) = v30;
  *(v24 + 17) = v29;
  *(v24 + 18) = v31;
  *(v24 + 19) = v32;
  *(v24 + 20) = v33;
  (*(v17 + 32))(&v24[v41], v22);
  v34 = v40;
  (*(v15 + 32))(&v24[v42], v43, v40);

  v61 = a12;
  v62 = v34;
  v63 = v44;
  v64 = v46;
  v65 = v48;
  v66 = v50;
  v67 = v52;
  v68 = v54;
  v69 = v55;
  v70 = v56;
  v71 = v57;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v36 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v36, sub_1BF141D44, v24, TupleTypeMetadata);
  v38 = v37;

  return v38;
}

uint64_t sub_1BF1353E8(unint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v71 = a7;
  v72 = a8;
  v65 = a6;
  v63 = a5;
  v61 = a4;
  v59 = a3;
  v85 = a2;
  v57 = a1;
  v70 = a14;
  v73 = a9;
  v58 = *a2;
  v60 = *a3;
  v62 = *a4;
  v64 = *a5;
  v14 = *a7;
  v66 = *a6;
  v67 = v14;
  v15 = *a9;
  v68 = *a8;
  v69 = v15;
  v16 = *(a14 - 8);
  v17 = *(v16 + 64);
  v52 = a11;
  MEMORY[0x1EEE9AC00](a1, a10);
  v56 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a13 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v55 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v54 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v27);
  v28 = *(v18 + 16);
  v51 = a13;
  v28(&v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v52, a13);
  v53 = v16;
  v29 = v70;
  (*(v16 + 16))(&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v57, v70);
  v30 = (*(v23 + 80) + 160) & ~*(v23 + 80);
  v52 = (v24 + *(v18 + 80) + v30) & ~*(v18 + 80);
  v57 = (v19 + *(v16 + 80) + v52) & ~*(v16 + 80);
  v31 = swift_allocObject();
  v32 = v58;
  v33 = v50;
  *(v31 + 2) = v50;
  *(v31 + 3) = a13;
  *(v31 + 4) = v29;
  v58 = *(v32 + 80);
  *(v31 + 5) = v58;
  v34 = v59;
  v60 = *(v60 + 80);
  *(v31 + 6) = v60;
  v35 = v61;
  v62 = *(v62 + 80);
  *(v31 + 7) = v62;
  v36 = v63;
  v64 = *(v64 + 80);
  *(v31 + 8) = v64;
  v37 = v65;
  v66 = *(v66 + 80);
  *(v31 + 9) = v66;
  v38 = v71;
  v67 = *(v67 + 80);
  *(v31 + 10) = v67;
  v39 = v72;
  v68 = *(v68 + 80);
  *(v31 + 11) = v68;
  v40 = v73;
  v69 = *(v69 + 80);
  *(v31 + 12) = v69;
  *(v31 + 13) = v34;
  *(v31 + 14) = v35;
  *(v31 + 15) = v36;
  *(v31 + 16) = v37;
  *(v31 + 17) = v38;
  *(v31 + 18) = v39;
  *(v31 + 19) = v40;
  v41 = v33;
  (*(v23 + 32))(&v31[v30], v54);
  v42 = v51;
  (*(v18 + 32))(&v31[v52], v55, v51);
  v43 = v70;
  (*(v53 + 32))(&v31[v57], v56, v70);

  v74 = v41;
  v75 = v42;
  v76 = v43;
  v77 = v58;
  v78 = v60;
  v79 = v62;
  v80 = v64;
  v81 = v66;
  v82 = v67;
  v83 = v68;
  v84 = v69;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v45 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v45, sub_1BF141DF4, v31, TupleTypeMetadata);
  v47 = v46;

  return v47;
}

uint64_t sub_1BF1359A4(unint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v82 = a7;
  v83 = a8;
  v80 = a5;
  v81 = a6;
  v72 = a4;
  v70 = a3;
  v95 = a2;
  v68 = a1;
  v64 = a10;
  v66 = a11;
  v65 = a15;
  v69 = *a2;
  v71 = *a3;
  v73 = *a4;
  v74 = *a5;
  v15 = *a7;
  v75 = *a6;
  v76 = v15;
  v77 = *a8;
  v78 = *(a15 - 8);
  v67 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](a1, a9);
  v79 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a14 - 8);
  v60 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v21;
  v57 = a13;
  v22 = *(a13 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24, v25);
  v62 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v61 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v31);
  (*(v22 + 16))(&v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v64, a13);
  v59 = v17;
  v32 = *(v17 + 16);
  v56 = a14;
  v32(v21, v66, a14);
  v33 = v78;
  v34 = v65;
  (*(v78 + 16))(v79, v68, v65);
  v35 = (*(v27 + 80) + 152) & ~*(v27 + 80);
  v66 = (v28 + *(v22 + 80) + v35) & ~*(v22 + 80);
  v36 = (v23 + *(v17 + 80) + v66) & ~*(v17 + 80);
  v68 = (v60 + *(v33 + 80) + v36) & ~*(v33 + 80);
  v37 = swift_allocObject();
  v38 = v69;
  v39 = v58;
  v40 = v57;
  *(v37 + 2) = v58;
  *(v37 + 3) = v40;
  *(v37 + 4) = a14;
  *(v37 + 5) = v34;
  v69 = *(v38 + 80);
  *(v37 + 6) = v69;
  v41 = v70;
  v71 = *(v71 + 80);
  *(v37 + 7) = v71;
  v42 = v72;
  v73 = *(v73 + 80);
  *(v37 + 8) = v73;
  v43 = v80;
  v74 = *(v74 + 80);
  *(v37 + 9) = v74;
  v45 = v81;
  v44 = v82;
  v75 = *(v75 + 80);
  *(v37 + 10) = v75;
  v76 = *(v76 + 80);
  *(v37 + 11) = v76;
  v46 = v83;
  v77 = *(v77 + 80);
  *(v37 + 12) = v77;
  *(v37 + 13) = v41;
  *(v37 + 14) = v42;
  *(v37 + 15) = v43;
  *(v37 + 16) = v45;
  *(v37 + 17) = v44;
  *(v37 + 18) = v46;
  v47 = &v37[v35];
  v48 = v39;
  (*(v27 + 32))(v47, v61);
  (*(v22 + 32))(&v37[v66], v62, v40);
  v49 = v56;
  (*(v59 + 32))(&v37[v36], v63, v56);
  (*(v78 + 32))(&v37[v68], v79, v34);

  v84 = v48;
  v85 = v40;
  v86 = v49;
  v87 = v34;
  v88 = v69;
  v89 = v71;
  v90 = v73;
  v91 = v74;
  v92 = v75;
  v93 = v76;
  v94 = v77;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v51 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v51, sub_1BF141EEC, v37, TupleTypeMetadata);
  v53 = v52;

  return v53;
}