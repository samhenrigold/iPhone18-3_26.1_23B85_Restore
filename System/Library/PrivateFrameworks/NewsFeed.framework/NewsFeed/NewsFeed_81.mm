double sub_1D627EC58(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v251 = (&v244 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&result = MEMORY[0x1EEE9AC00](v8, v9).n128_u64[0];
  v250 = (&v244 - v12);
  v13 = *(a2 + 16);
  if (!v13)
  {
    return result;
  }

  v248 = v10;
  v14 = (a2 + 40);
  v258 = a1;
  while (1)
  {
    v17 = *(v14 - 1);
    v16 = *v14;
    *&v260 = v17;
    v18 = v16 & 0x1FFFFFFFFFFFFFFFLL;

    swift_retain_n();
    sub_1D6285C00(a1, v19, v20, v21, v22, v23, v24, v25);
    v259 = v2;
    if (v2)
    {

      return result;
    }

    v26 = v16 >> 61;
    if ((v16 >> 61) <= 1)
    {
      if (v26)
      {
        v253 = v14;
        v256 = v16 & 0x1FFFFFFFFFFFFFFFLL;
        v257 = v17;
        v68 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v260 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v261 = v68;
        v69 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v262[0] = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v262[1] = v69;
        *&v263 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
        v70 = v260;
        v71 = *(&v261 + 1);
        v72 = v261;
        if ((~*(&v260 + 1) & 0xF000000000000007) != 0 || (BYTE8(v261) & 7) != 7)
        {
          if ((BYTE8(v261) & 4) != 0)
          {
            *&v266 = v260;
            sub_1D62B72DC(&v260, &v272);
            sub_1D62B738C(v70, *(&v70 + 1), v72, v71);
            v108 = v259;
            sub_1D6E5C118(v258);
            v259 = v108;
            if (v108)
            {
              sub_1D62B7110(v70, *(&v70 + 1), v72, v71);
              sub_1D62B7338(&v260);

              goto LABEL_221;
            }
          }

          else
          {
            sub_1D62B72DC(&v260, &v272);
            sub_1D62B738C(v70, *(&v70 + 1), v72, v71);
            v73 = v258;
            v74 = v259;
            sub_1D6282658(v258, v70);
            if (v74)
            {
              sub_1D62B7110(v70, *(&v70 + 1), v72, v71);
              sub_1D62B7338(&v260);

              goto LABEL_231;
            }

            sub_1D626CB38(v73, *(&v70 + 1), v72, v71, v75, v76, v77);
            v259 = 0;
          }

          sub_1D62B7110(v70, *(&v70 + 1), v72, v71);
        }

        else
        {
          sub_1D62B72DC(&v260, &v272);
        }

        a1 = v258;
        v109 = *&v262[0];
        v110 = *&v262[1];
        if ((*&v262[0] & 0x3000000000000007 & *&v262[1]) == 0x3000000000000007)
        {
          v14 = v253;
        }

        else
        {
          v111 = *(&v262[0] + 1);
          v14 = v253;
          if ((*&v262[1] & 0x2000000000000000) != 0)
          {
            *&v272 = *&v262[0];
            sub_1D62B6FC0(*&v262[0], *(&v262[0] + 1), *&v262[1]);
            v112 = v259;
            sub_1D6297BE8(v258);
          }

          else
          {
            sub_1D62B6FC0(*&v262[0], *(&v262[0] + 1), *&v262[1]);
            v112 = v259;
            sub_1D626CAA4(v258, v109, v111, v110, v113, v114, v115);
          }

          v259 = v112;
          if (v112)
          {
            sub_1D62B7020(v109, v111, v110);
LABEL_218:
            sub_1D62B7338(&v260);
LABEL_220:

LABEL_221:

            return result;
          }

          sub_1D62B7020(v109, v111, v110);
          a1 = v258;
        }

        v116 = v259;
        sub_1D627DA04(a1, v263);
        v259 = v116;
        if (v116)
        {
          goto LABEL_218;
        }

        sub_1D62B7338(&v260);
        goto LABEL_6;
      }

      v37 = *(v16 + 32);
      v272 = *(v16 + 16);
      v273 = v37;
      v38 = *(v16 + 64);
      *v274 = *(v16 + 48);
      *&v274[16] = v38;
      v39 = v272;
      v40 = *(&v273 + 1);
      if ((BYTE8(v273) & 4) != 0)
      {
        *&v266 = v272;
        sub_1D5CFBAA8(&v272, &v260);
        a1 = v258;
        v45 = v259;
        sub_1D6E5C118(v258);
        if (v45)
        {
          goto LABEL_215;
        }
      }

      else
      {
        v256 = v16 & 0x1FFFFFFFFFFFFFFFLL;
        v41 = v14;
        v42 = v13;
        v44 = *(&v272 + 1);
        v43 = v273;
        sub_1D5CFBAA8(&v272, &v260);
        v46 = v258;
        v45 = v259;
        sub_1D6282658(v258, v39);
        if (v45)
        {
          goto LABEL_215;
        }

        sub_1D626CB38(v46, v44, v43, v40, v47, v48, v49);
        a1 = v46;
        v13 = v42;
        v14 = v41;
      }

      v79 = *&v274[16];
      if ((*&v274[16] & 0x2000000000000000) == 0)
      {
        v80 = *&v274[8];
        v81 = *(*v274 + 32);
        v260 = *(*v274 + 16);
        v261 = v81;
        v262[0] = *(*v274 + 48);
        *(v262 + 15) = *(*v274 + 63);
        sub_1D628DEA4(a1, *v262);
        sub_1D6281C84(a1, v80);
        *&v260 = v79;

        sub_1D6297BE8(a1);
        v259 = 0;

        goto LABEL_123;
      }

      if (!(*v274 >> 62))
      {
        v137 = *(*v274 + 80);
        v262[1] = *(*v274 + 64);
        v263 = v137;
        v264 = *(*v274 + 96);
        v265 = *(*v274 + 112);
        v138 = *(*v274 + 32);
        v260 = *(*v274 + 16);
        v261 = v138;
        v262[0] = *(*v274 + 48);
        sub_1D6287E20(a1);
        v259 = v45;
        goto LABEL_123;
      }

      if (*v274 >> 62 != 1)
      {
        v139 = *((*v274 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        *&v260 = *((*v274 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

        sub_1D6297BE8(a1);

        sub_1D62844E8(a1, v139, sub_1D6297BE8);
        v259 = 0;
        goto LABEL_123;
      }

      v255 = v13;
      v257 = v17;
      v259 = v45;
      v82 = *((*v274 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v83 = *((*v274 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v85 = *((*v274 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v84 = *((*v274 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v86 = *((*v274 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      v249 = *((*v274 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v252 = v86;
      LODWORD(v254) = *((*v274 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v87 = swift_allocObject();
      *(v87 + 16) = v82;
      *(v87 + 24) = v83;
      *(v87 + 32) = v85;
      *(v87 + 40) = v84;
      v88 = v87 | 0x9000000000000000;
      v89 = *a1;
      swift_beginAccess();
      v90 = *(v89 + 16);
      v91 = *(v90 + 16);
      v253 = v14;
      if (v91)
      {
        v92 = *(v90 + 8 * v91 + 24);

        v94 = sub_1D60E14A8(v92, v88, v93);

        if (v94)
        {

          a1 = v258;
          v95 = v252;
LABEL_119:
          v152 = v254;
          v13 = v255;
          v153 = v249;
          if (v254 != 255)
          {
            *&v260 = v249;
            *(&v260 + 1) = v95;
            LOBYTE(v261) = v254;
            sub_1D5E433E0(v249, v95, v254);
            v154 = v259;
            sub_1D628BAB8(a1);
            v259 = v154;
            if (v154)
            {
              sub_1D5E43440(v153, v95, v152);
              goto LABEL_219;
            }

            sub_1D5E43440(v153, v95, v152);
          }

          v14 = v253;
LABEL_123:
          v155 = *&v274[24] >> 62;
          if ((*&v274[24] >> 62) > 1)
          {
            if (v155 != 2)
            {
              goto LABEL_5;
            }

            v165 = *((*&v274[24] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v166 = v259;
            sub_1D62809AC(a1, *((*&v274[24] & 0x3FFFFFFFFFFFFFFFLL) + 0x10));
            if (v166)
            {
LABEL_215:
              sub_1D5D08954(&v272);
              goto LABEL_230;
            }

            sub_1D62A10B8(a1, v165);
          }

          else
          {
            if (!v155)
            {
              v156 = swift_projectBox();
              v157 = v250;
              sub_1D62B50EC(v156, v250, type metadata accessor for FormatCommandOpenURL);
              sub_1D62B50EC(v157, v251, type metadata accessor for FormatCommandOpenURL);
              if (swift_getEnumCaseMultiPayload() < 2)
              {
                sub_1D62B51D0(v250, type metadata accessor for FormatCommandOpenURL);
                v15 = v251;
LABEL_4:
                sub_1D62B51D0(v15, type metadata accessor for FormatCommandOpenURL);
LABEL_5:
                sub_1D5D08954(&v272);
LABEL_6:

                goto LABEL_7;
              }

              v159 = *v251;
              v158 = v251[1];
              v160 = v251[2];
              *&v260 = *v251;
              *(&v260 + 1) = v158;
              *&v261 = v160;
              LOBYTE(v266) = 6;

              v161 = v259;
              v162 = sub_1D703E0C8(&v260, &v266);
              v259 = v161;
              if (!v161)
              {
                v163 = v162;

                v164 = swift_allocObject();
                *(v164 + 16) = v159;
                *(v164 + 24) = v158;
                *(v164 + 32) = v163;
                *(v164 + 40) = 0;
                a1 = v258;
                sub_1D6C4D24C(v164 | 0x3000000000000000);

                v15 = v250;
                goto LABEL_4;
              }

              sub_1D62B51D0(v250, type metadata accessor for FormatCommandOpenURL);

LABEL_219:
              sub_1D5D08954(&v272);
              goto LABEL_220;
            }

            v167 = *((*&v274[24] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v169 = *(v167 + 16);
            v168 = *(v167 + 24);
            v170 = *(v167 + 32);
            v171 = *(v167 + 40);
            v172 = *(v167 + 64);
            if (*(v167 + 66))
            {
              v173 = 8;
            }

            else
            {
              v173 = 0;
            }

            v174 = v173 & 0xFFFFFFF8 | (v172 >> 11) & 7;
            if (v174 <= 4)
            {
              v166 = v259;
              if (v174 > 1)
              {
                if (v174 != 3)
                {
                  goto LABEL_5;
                }

                goto LABEL_139;
              }

              if (v174)
              {
                goto LABEL_5;
              }

              v184 = (v171 >> 3) & 7;
              if (v184 <= 1)
              {
                if (v184)
                {
                  goto LABEL_5;
                }
              }

              else if (v184 != 2 && v184 != 3)
              {
                *&v260 = v169;
                *(&v260 + 1) = v168;
                *&v261 = v170;
                BYTE8(v261) = v171 & 0xC7;
LABEL_157:
                sub_1D628E970(a1);
                goto LABEL_131;
              }

LABEL_139:
              *&v260 = v169;
              *(&v260 + 1) = v168;
              LOBYTE(v261) = v170;
              sub_1D628E900(a1);
              goto LABEL_131;
            }

            v166 = v259;
            if (v174 <= 6)
            {
              if (v174 == 5)
              {
                goto LABEL_5;
              }

              *&v260 = *(v167 + 16);
              *(&v260 + 1) = v168;
              *&v261 = v170;
              BYTE8(v261) = v171;
              goto LABEL_157;
            }

            if (v174 != 7)
            {
              goto LABEL_5;
            }

            *&v260 = *(v167 + 16);
            *(&v260 + 1) = v168;
            *&v261 = v170;
            *(&v261 + 1) = v171;
            v262[0] = *(v167 + 48);
            LOWORD(v262[1]) = v172 & 0xC7FF;
            sub_1D690A374(a1);
          }

LABEL_131:
          v259 = v166;
          if (v166)
          {
            goto LABEL_219;
          }

          goto LABEL_5;
        }
      }

      else
      {
      }

      v145 = v258;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v147 = *v145;
      v95 = v252;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
        v239 = swift_allocObject();
        swift_beginAccess();
        v240 = v147[2];
        v260 = v147[1];
        v261 = v240;
        v262[0] = v147[3];
        *(v262 + 14) = *(v147 + 62);
        memmove((v239 + 16), v147 + 1, 0x3EuLL);
        sub_1D5EB9AB0(&v260, &v266);

        *v145 = v239;
        v147 = v239;
      }

      swift_beginAccess();
      v148 = *(v147 + 2);
      v149 = swift_isUniquelyReferenced_nonNull_native();
      *(v147 + 2) = v148;
      if ((v149 & 1) == 0)
      {
        v148 = sub_1D698F848(0, *(v148 + 2) + 1, 1, v148);
        *(v147 + 2) = v148;
      }

      v151 = *(v148 + 2);
      v150 = *(v148 + 3);
      if (v151 >= v150 >> 1)
      {
        v148 = sub_1D698F848((v150 > 1), v151 + 1, 1, v148);
      }

      *(v148 + 2) = v151 + 1;
      *&v148[8 * v151 + 32] = v88;
      *(v147 + 2) = v148;
      swift_endAccess();
      a1 = v258;
      goto LABEL_119;
    }

    if (v26 == 2)
    {
      v255 = v13;
      v257 = v17;
      v50 = a1;
      v51 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v52 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v53 = (v52 & 0x1FFFFFFFFFFFFFFFLL);

      v54 = v50;
      v55 = v259;
      sub_1D627EC58(v54, v51);
      if (v55)
      {
        goto LABEL_212;
      }

      v56 = v52 >> 61;
      if ((v52 >> 61) > 1)
      {
        if (v56 != 2)
        {
          a1 = v258;
          if (v56 == 3)
          {
            v58 = v53[2];
            v57 = v53[3];
            v59 = v53[4];
            v60 = *(v58 + 24);
            v61 = *(v58 + 32);
            v62 = *(v58 + 40);
            v63 = *(v58 + 64);
            if (*(v58 + 66))
            {
              v64 = 8;
            }

            else
            {
              v64 = 0;
            }

            v65 = v64 & 0xFFFFFFF8 | (v63 >> 11) & 7;
            if (v65 <= 3)
            {
              if ((v65 - 1) >= 2)
              {
                if (!v65)
                {
                  v67 = v53[3];
                  *&v260 = *(v58 + 16);
                  *(&v260 + 1) = v60;
                  *&v261 = v61;
                  BYTE8(v261) = v62;
                  sub_1D628E820(v258);
LABEL_180:
                  v57 = v67;
                  goto LABEL_181;
                }

                goto LABEL_172;
              }
            }

            else if (((1 << v65) & 0x330) == 0)
            {
              if (v65 != 6)
              {
                v67 = v53[3];
                *&v260 = *(v58 + 16);
                *(&v260 + 1) = v60;
                *&v261 = v61;
                *(&v261 + 1) = v62;
                v262[0] = *(v58 + 48);
                LOWORD(v262[1]) = v63 & 0xC7FF;
                sub_1D690A374(v258);
                goto LABEL_180;
              }

              if (v62 >> 6 && v62 >> 6 != 1)
              {
                if ((v62 & 0x3F) != 1 || (v60 & 0xF000000000000007) == 0xF000000000000007)
                {
                  goto LABEL_181;
                }

                v67 = v53[3];
                *&v260 = *(v58 + 24);
                goto LABEL_177;
              }

LABEL_172:
              if (*(v58 + 32) != 1 || (*(v58 + 16) & 0xF000000000000007) == 0xF000000000000007)
              {
                goto LABEL_181;
              }

              v67 = v53[3];
              *&v260 = *(v58 + 16);
LABEL_177:

              sub_1D6E5C118(a1);

              goto LABEL_180;
            }

LABEL_181:
            sub_1D627B710(a1, v57);
            sub_1D6297730(a1, v59);
            v259 = 0;
            goto LABEL_182;
          }

          v259 = 0;
LABEL_182:

          v13 = v255;
          goto LABEL_7;
        }

        v118 = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v119 = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        a1 = v258;
        sub_1D627EC58(v258, v118);
        sub_1D6297730(a1, v119);
LABEL_107:
        v259 = 0;
        goto LABEL_182;
      }

      if (!v56)
      {
        v96 = *(v52 + 16);
        v97 = *(v52 + 40);
        v98 = *(v52 + 48);
        v99 = *(v52 + 64);
        v252 = *(v52 + 56);
        v259 = v99;
        v100 = *(v52 + 72);
        if ((v97 & 4) != 0)
        {
          *&v260 = v96;
          a1 = v258;
          sub_1D6E5C118(v258);
        }

        else
        {
          v254 = v51;
          v256 = v18;
          v103 = (v52 + 24);
          v102 = *(v52 + 24);
          v101 = v103[1];
          v104 = v258;
          sub_1D6282658(v258, v96);
          sub_1D626CB38(v104, v102, v101, v97, v105, v106, v107);
          a1 = v258;
        }

        if ((v259 & 0x2000000000000000) != 0)
        {
          *&v260 = v98;
          sub_1D6297BE8(a1);
        }

        else
        {
          v144 = *(v98 + 32);
          v260 = *(v98 + 16);
          v261 = v144;
          v262[0] = *(v98 + 48);
          *(v262 + 15) = *(v98 + 63);
          sub_1D628DEA4(a1, *v262);
          sub_1D6281C84(a1, v252);
          *&v260 = v259;

          sub_1D6297BE8(a1);
        }

        sub_1D6297F18(a1, v100);
        goto LABEL_107;
      }

      v254 = v51;
      v256 = v16 & 0x1FFFFFFFFFFFFFFFLL;
      v120 = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v122 = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v121 = v53[6];
      v124 = v53[7];
      v123 = v53[8];
      v125 = v53[10];
      if ((~v120 & 0xF000000000000007) == 0 && (v122 & 7) == 7)
      {
        goto LABEL_145;
      }

      v249 = v53[6];
      v246 = v123;
      v247 = v124;
      v252 = v125;
      v259 = 0;
      v127 = v53[2];
      v128 = v53[4];
      if ((v122 & 4) != 0)
      {
        *&v260 = v53[2];
        v129 = v128;
        sub_1D62B7098(v127, v120, v128, v122);
        v175 = v259;
        sub_1D6E5C118(v258);
        v135 = v175;
        v136 = v127;
        if (!v175)
        {
          goto LABEL_144;
        }

        v241 = v120;
        v242 = v129;
        v243 = v122;
      }

      else
      {
        v129 = v53[4];
        sub_1D62B7098(v53[2], v120, v128, v122);
        v130 = v258;
        v131 = v259;
        sub_1D6282658(v258, v127);
        if (!v131)
        {
          sub_1D626CB38(v130, v120, v129, v122, v132, v133, v134);
          v135 = 0;
          v136 = v127;
LABEL_144:
          sub_1D62B7110(v136, v120, v129, v122);
          v55 = v135;
          v125 = v252;
          v123 = v246;
          v124 = v247;
          v121 = v249;
LABEL_145:
          a1 = v258;
          if ((v121 & 0x3000000000000007 & v123) == 0x3000000000000007)
          {
            goto LABEL_148;
          }

          *&v260 = v121;
          *(&v260 + 1) = v124;
          *&v261 = v123;
          v176 = v121;
          v259 = v55;
          v177.n128_f64[0] = sub_1D62B6FC0(v121, v124, v123);
          v55 = v259;
          sub_1D62975F8(a1, v177, v178, v179, v180, v181, v182, v183);
          if (!v55)
          {
            sub_1D62B703C(v176, v124, v123);
LABEL_148:
            sub_1D627DA04(a1, v125);
            v259 = v55;
            if (v55)
            {

              return result;
            }

            goto LABEL_182;
          }

          sub_1D62B703C(v176, v124, v123);
LABEL_212:

LABEL_213:

          return result;
        }

        v136 = v127;
        v241 = v120;
        v242 = v129;
        v243 = v122;
      }

      sub_1D62B7110(v136, v241, v242, v243);
      goto LABEL_212;
    }

    if (v26 != 3)
    {
      goto LABEL_6;
    }

    v257 = v17;
    v27 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v254 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v255 = v13;
    v28 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v29 = *(v27 + 32);
    v260 = *(v27 + 16);
    v261 = v29;
    v262[0] = *(v27 + 48);
    *(v262 + 15) = *(v27 + 63);
    v30 = v260;
    v31 = *(&v29 + 1);
    v32 = v29;
    v33 = v262[1];
    if (BYTE2(v262[1]))
    {
      v34 = 8;
    }

    else
    {
      v34 = 0;
    }

    v35 = v34 & 0xFFFFFFF8 | (LOWORD(v262[1]) >> 11) & 7;
    v252 = v28;
    if (v35 <= 4)
    {
      v36 = v259;
      if (v35 <= 1)
      {
        if (v35)
        {
          goto LABEL_164;
        }

        v117 = (DWORD2(v29) >> 3) & 7;
        if (v117 <= 1)
        {
          if (v117)
          {
            goto LABEL_164;
          }

          goto LABEL_159;
        }

        if (v117 != 2 && v117 != 3)
        {
          if (!(BYTE8(v29) >> 6) || BYTE8(v29) >> 6 == 1)
          {
            v272 = v260;
            LOBYTE(v273) = v29;

            v78 = v254;

            a1 = v258;
            sub_1D628E900(v258);
            if (v36)
            {
              goto LABEL_237;
            }

            goto LABEL_185;
          }

          sub_1D6287888(v258, v30, *(&v30 + 1), v32, v31 & 7);
          if (v36)
          {
LABEL_237:

            goto LABEL_231;
          }

          a1 = v258;
          goto LABEL_171;
        }
      }

      else if (v35 != 3)
      {
        goto LABEL_164;
      }

      goto LABEL_159;
    }

    v36 = v259;
    if (v35 > 6)
    {
      if (v35 != 7)
      {
        a1 = v258;

        v78 = v254;
LABEL_49:

        goto LABEL_185;
      }

      if (!(LOWORD(v262[1]) >> 14))
      {
LABEL_164:

        v78 = v254;

        a1 = v258;
        goto LABEL_185;
      }

      if (LOWORD(v262[1]) >> 14 == 1)
      {
        v266 = v260;
        v267 = v29;
        v276 = 5;

        v140 = v27;

        sub_1D62B5248(&v260, &v272);
        v141 = sub_1D703E0C8(&v266, &v276);
        if (v36)
        {

          return result;
        }

        v142 = v141;
        v143 = swift_allocObject();
        *(v143 + 16) = v30;
        *(v143 + 32) = v142;
        *(v143 + 40) = 0;

        a1 = v258;
        sub_1D6C4D24C(v143 | 0x3000000000000000);

        v27 = v140;
      }

      else
      {
        v275 = v262[1] & 0x7FF;
        v245 = *(&v262[0] + 1);
        v246 = *&v262[0];
        v249 = v27;
        v247 = *(&v260 + 1);
        switch(((v262[1] & 0x700) >> 7) & 0xFFFFFFFE | (LOWORD(v262[1]) >> 3) & 1)
        {
          case 3u:
          case 4u:
            v266 = v260;
            v267 = v29;
            v276 = 5;

            sub_1D62B5248(&v260, &v272);

            v236 = sub_1D703E0C8(&v266, &v276);
            v259 = v36;
            if (!v36)
            {
              v237 = v236;

              v238 = swift_allocObject();
              v256 = v18;
              *(v238 + 16) = v30;
              *(v238 + 32) = v237;
              *(v238 + 40) = 0;
              sub_1D6C4D24C(v238 | 0x3000000000000000);
              v18 = v256;

              v36 = v259;
              goto LABEL_169;
            }

            goto LABEL_213;
          default:

LABEL_169:
            v185 = v275;
            *&v272 = v30;
            *(&v272 + 1) = v247;
            *&v273 = v32;
            *(&v273 + 1) = v31;
            v259 = v32;
            v244 = v30;
            v187 = v245;
            v186 = v246;
            *v274 = v246;
            *&v274[8] = v245;
            v274[16] = v33;
            v274[17] = BYTE1(v275);
            v188 = v258;
            sub_1D62099A8(v258);
            if (v36)
            {
              goto LABEL_229;
            }

            *&v266 = v244;
            *(&v266 + 1) = v247;
            v267 = v259;
            v268 = v31;
            v269 = v186;
            v270 = v187;
            v271 = v185;
            sub_1D5FD697C(v188);
            a1 = v188;
            v27 = v249;
            break;
        }
      }

LABEL_171:
      v78 = v254;
      goto LABEL_185;
    }

    if (v35 == 5)
    {
      goto LABEL_164;
    }

    if (BYTE8(v29) >> 6 && BYTE8(v29) >> 6 != 1)
    {
      break;
    }

LABEL_159:
    if (v29 > 1u)
    {
      v78 = v254;
    }

    else
    {
      v78 = v254;
      if (v29 && (~v260 & 0xF000000000000007) != 0)
      {
        *&v272 = v260;

        sub_1D5CFCFAC(v30);
        a1 = v258;
        sub_1D6E5C118(v258);
        if (v36)
        {
          goto LABEL_236;
        }

        goto LABEL_185;
      }
    }

    a1 = v258;
LABEL_185:
    sub_1D627B710(a1, v78);
    if (v36)
    {
LABEL_229:

      goto LABEL_230;
    }

    v190 = v252;
    v191 = v252 >> 61;
    if ((v252 >> 61) <= 1)
    {
      v256 = v18;
      v249 = v27;
      if (v191)
      {
        v208 = *((v252 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v210 = *((v252 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
        v209 = *((v252 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v212 = *((v252 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
        v211 = *((v252 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v213 = *((v252 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
        if ((~v208 & 0xF000000000000007) != 0 || (*((v252 & 0x1FFFFFFFFFFFFFFFLL) + 0x28) & 7) != 7)
        {
          v246 = *((v252 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          v247 = v212;
          v252 = v211;
          v259 = v213;
          v214 = *((v190 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v215 = *((v190 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          *&v272 = v215;
          *(&v272 + 1) = v208;
          *&v273 = v214;
          *(&v273 + 1) = v210;
          v216.n128_f64[0] = sub_1D62B7098(v215, v208, v214, v210);
          sub_1D629758C(v258, v216);
          sub_1D62B7130(v215, v208, v214, v210);
          a1 = v258;
          v213 = v259;
          v211 = v252;
          v209 = v246;
          v212 = v247;
        }

        if ((v209 & 0x3000000000000007 & v211) != 0x3000000000000007)
        {
          v217 = v213;
          *&v272 = v209;
          *(&v272 + 1) = v212;
          *&v273 = v211;
          v218 = v209;
          v219 = v211;
          v259 = 0;
          v220 = v212;
          v221.n128_f64[0] = sub_1D62B6FC0(v209, v212, v211);
          v222 = v259;
          sub_1D62975F8(a1, v221, v223, v224, v225, v226, v227, v228);
          if (v222)
          {
            sub_1D62B703C(v218, v220, v219);

            goto LABEL_231;
          }

          sub_1D62B703C(v218, v220, v219);
          v213 = v217;
        }

        sub_1D627DA04(a1, v213);
        v259 = 0;
      }

      else
      {
        v196 = *(v252 + 16);
        v197 = *(v252 + 40);
        v198 = *(v252 + 48);
        v200 = *(v252 + 56);
        v199 = *(v252 + 64);
        v259 = *(v252 + 72);
        v202 = *(v252 + 24);
        v201 = *(v252 + 32);
        v203 = v258;
        sub_1D6282658(v258, v196);
        sub_1D626CB38(v203, v202, v201, v197, v204, v205, v206);
        *&v272 = v198;
        *(&v272 + 1) = v200;
        *&v273 = v199;
        v229.n128_f64[0] = sub_1D62B6FC0(v198, v200, v199);
        a1 = v258;
        sub_1D62975F8(v258, v229, v230, v231, v232, v233, v234, v235);
        sub_1D62B703C(v198, v200, v199);
        sub_1D6297F18(a1, v259);
        v259 = 0;
      }
    }

    else if (v191 == 2)
    {
      v207 = *((v252 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D627EC58(a1, *((v252 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
      sub_1D6297730(a1, v207);
      v259 = 0;
    }

    else if (v191 == 3)
    {
      v249 = v27;
      v192 = *((v252 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v193 = *((v252 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v194 = *((v252 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v195 = *(v192 + 32);
      v272 = *(v192 + 16);
      v273 = v195;
      *v274 = *(v192 + 48);
      *&v274[15] = *(v192 + 63);
      sub_1D628DEA4(a1, *v274);
      sub_1D627B710(a1, v193);
      sub_1D6297730(a1, v194);
      v259 = 0;
    }

    else
    {
      v259 = 0;
    }

    v13 = v255;
LABEL_7:
    v14 += 2;
    --v13;
    v2 = v259;
    if (!v13)
    {
      return result;
    }
  }

  if ((BYTE8(v29) & 0x3Fu) > 1)
  {
    a1 = v258;
LABEL_184:

    v78 = v254;

    goto LABEL_185;
  }

  a1 = v258;
  if ((BYTE8(v29) & 0x3F) == 0)
  {
    goto LABEL_184;
  }

  v78 = v254;
  if ((~*(&v260 + 1) & 0xF000000000000007) == 0)
  {

    goto LABEL_49;
  }

  *&v272 = *(&v260 + 1);

  v249 = v27;

  sub_1D5CFCFAC(*(&v30 + 1));
  sub_1D6E5C118(v30);
  if (!v36)
  {

    v27 = v249;
    goto LABEL_185;
  }

LABEL_236:

LABEL_230:

LABEL_231:

  return result;
}

void sub_1D62809AC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v105 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v105, v6);
  v107 = (&v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v106 = &v99 - v10;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (a2 + 40);
    v104 = a1;
    do
    {
      v13 = *v12;
      *&v110 = *(v12 - 1);

      swift_retain_n();
      sub_1D6285C00(a1, v14, v15, v16, v17, v18, v19, v20);
      if (v3)
      {

        return;
      }

      v21 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v21 == 2)
        {
          v36 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v37 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

          sub_1D62809AC(a1, v36);
          sub_1D62A10B8(a1, v37);
          v3 = 0;

          goto LABEL_5;
        }

        goto LABEL_4;
      }

      if (v21)
      {
        v117 = v11;
        v38 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v39 = *(v38 + 32);
        v114 = *(v38 + 16);
        v115 = v39;
        v40 = *(v38 + 48);
        *&v116[15] = *(v38 + 63);
        *v116 = v40;
        v41 = v114;
        v42 = v39;
        if (v116[18])
        {
          v43 = 8;
        }

        else
        {
          v43 = 0;
        }

        v44 = v43 & 0xFFFFFFF8 | (*&v116[16] >> 11) & 7;
        if (v44 > 4)
        {
          if (v44 <= 6)
          {
            if (v44 == 5)
            {
              goto LABEL_68;
            }

            if (!(BYTE8(v39) >> 6) || BYTE8(v39) >> 6 == 1)
            {
              goto LABEL_45;
            }

            v53 = BYTE8(v39) & 0x3F;
            if (v53 <= 1)
            {
              if ((BYTE8(v39) & 0x3F) == 0)
              {
                goto LABEL_67;
              }

LABEL_81:
              if ((~*(&v114 + 1) & 0xF000000000000007) != 0)
              {
                *&v108 = *(&v114 + 1);
                v41 = *(&v114 + 1);
LABEL_49:

                sub_1D62B5248(&v114, &v110);
                sub_1D5CFCFAC(v41);
                sub_1D6E5C118(a1);
LABEL_50:

                goto LABEL_84;
              }

LABEL_68:

              goto LABEL_69;
            }

LABEL_70:
            v11 = v117;
            if (v53 != 2)
            {
LABEL_62:
              sub_1D5D085FC(&v114);
            }
          }

          else
          {
            if (v44 == 7)
            {
              if (!(*&v116[16] >> 14))
              {
                goto LABEL_68;
              }

              if (*&v116[16] >> 14 != 1)
              {
                switch((*&v116[16] >> 7) & 0xE | (*&v116[16] >> 3) & 1)
                {
                  case 1:
                  case 5:
                  case 6:
                  case 7:
                  case 9:
                  case 0xA:
                  case 0xB:
                  case 0xC:
                  case 0xD:

                    break;
                  case 2:
                    v102 = v38;
                    v103 = *(&v114 + 1);
                    v79 = v116[16];

                    sub_1D62B5248(&v114, &v110);
                    v80 = v79;
                    if ((v79 & 0xF0) != 0x30)
                    {
                      goto LABEL_143;
                    }

                    if (BYTE1(v42) <= 1u)
                    {
                      if (BYTE1(v42))
                      {
                        if (v42 > 0xFDu)
                        {
                          goto LABEL_143;
                        }

                        v85 = v42 >> 6;
                        if (v85 > 1)
                        {
                          if (v85 == 2)
                          {
                            if ((v42 & 1) == 0)
                            {
                              goto LABEL_141;
                            }

                            sub_1D62B5248(&v114, &v110);
                            sub_1D62B5248(&v114, &v110);
                            v82 = &unk_1F5112C08;
                          }

                          else
                          {
                            if ((v42 & 1) == 0)
                            {
                              goto LABEL_141;
                            }

                            sub_1D62B5248(&v114, &v110);
                            sub_1D62B5248(&v114, &v110);
                            v82 = &unk_1F5112C30;
                          }
                        }

                        else if (v85)
                        {
                          if ((v42 & 1) == 0)
                          {
                            goto LABEL_141;
                          }

                          sub_1D62B5248(&v114, &v110);
                          sub_1D62B5248(&v114, &v110);
                          v82 = &unk_1F5112BE0;
                        }

                        else
                        {
                          if ((v42 & 1) == 0)
                          {
                            goto LABEL_141;
                          }

                          sub_1D62B5248(&v114, &v110);
                          sub_1D62B5248(&v114, &v110);
                          v82 = &unk_1F5112BB8;
                        }
                      }

                      else
                      {
                        if (v42 > 0xFDu)
                        {
                          goto LABEL_143;
                        }

                        v83 = v42 >> 6;
                        if (v83 > 1)
                        {
                          if (v83 == 2)
                          {
                            if ((v42 & 1) == 0)
                            {
                              goto LABEL_141;
                            }

                            sub_1D62B5248(&v114, &v110);
                            sub_1D62B5248(&v114, &v110);
                            v82 = &unk_1F5112B68;
                          }

                          else
                          {
                            if ((v42 & 1) == 0)
                            {
                              goto LABEL_141;
                            }

                            sub_1D62B5248(&v114, &v110);
                            sub_1D62B5248(&v114, &v110);
                            v82 = &unk_1F5112B90;
                          }
                        }

                        else
                        {
                          if (!v83)
                          {
                            if (v42)
                            {
                              sub_1D62B5248(&v114, &v110);
                              sub_1D62B5248(&v114, &v110);
                              v82 = &unk_1F5112B18;
                              goto LABEL_140;
                            }

LABEL_141:
                            sub_1D5D085FC(&v114);
                            a1 = v104;
LABEL_142:
                            v80 = v79;
                            goto LABEL_143;
                          }

                          if ((v42 & 1) == 0)
                          {
                            goto LABEL_141;
                          }

                          sub_1D62B5248(&v114, &v110);
                          sub_1D62B5248(&v114, &v110);
                          v82 = &unk_1F5112B40;
                        }
                      }

LABEL_140:
                      v100 = sub_1D5E26E28(v82);
                      v89 = swift_allocObject();
                      v101 = v41;
                      v90 = v103;
                      *(v89 + 16) = v41;
                      *(v89 + 24) = v90;
                      *(v89 + 32) = v100;
                      *(v89 + 40) = 0;
                      v91 = v104;
                      sub_1D6C4D24C(v89 | 0x3000000000000000);
                      a1 = v91;
                      v41 = v101;

                      sub_1D5D085FC(&v114);
                      goto LABEL_142;
                    }

                    if (BYTE1(v42) == 2)
                    {
                      if (v42 > 0xFDu)
                      {
                        goto LABEL_143;
                      }

                      v84 = v42 >> 6;
                      if (v84 > 1)
                      {
                        if (v84 == 2)
                        {
                          if ((v42 & 1) == 0)
                          {
                            goto LABEL_141;
                          }

                          sub_1D62B5248(&v114, &v110);
                          sub_1D62B5248(&v114, &v110);
                          v82 = &unk_1F5112CA8;
                        }

                        else
                        {
                          if ((v42 & 1) == 0)
                          {
                            goto LABEL_141;
                          }

                          sub_1D62B5248(&v114, &v110);
                          sub_1D62B5248(&v114, &v110);
                          v82 = &unk_1F5112CD0;
                        }
                      }

                      else if (v84)
                      {
                        if ((v42 & 1) == 0)
                        {
                          goto LABEL_141;
                        }

                        sub_1D62B5248(&v114, &v110);
                        sub_1D62B5248(&v114, &v110);
                        v82 = &unk_1F5112C80;
                      }

                      else
                      {
                        if ((v42 & 1) == 0)
                        {
                          goto LABEL_141;
                        }

                        sub_1D62B5248(&v114, &v110);
                        sub_1D62B5248(&v114, &v110);
                        v82 = &unk_1F5112C58;
                      }

                      goto LABEL_140;
                    }

                    if (BYTE1(v42) == 3 && v42 <= 0xFDu)
                    {
                      v81 = v42 >> 6;
                      if (v81 > 1)
                      {
                        if (v81 == 2)
                        {
                          if ((v42 & 1) == 0)
                          {
                            goto LABEL_141;
                          }

                          sub_1D62B5248(&v114, &v110);
                          sub_1D62B5248(&v114, &v110);
                          v82 = &unk_1F5112D48;
                        }

                        else
                        {
                          if ((v42 & 1) == 0)
                          {
                            goto LABEL_141;
                          }

                          sub_1D62B5248(&v114, &v110);
                          sub_1D62B5248(&v114, &v110);
                          v82 = &unk_1F5112D70;
                        }
                      }

                      else
                      {
                        if (!v81)
                        {
                          if (v42)
                          {
                            sub_1D62B5248(&v114, &v110);
                            sub_1D62B5248(&v114, &v110);
                            v82 = &unk_1F5112CF8;
                            goto LABEL_140;
                          }

                          goto LABEL_141;
                        }

                        if ((v42 & 1) == 0)
                        {
                          goto LABEL_141;
                        }

                        sub_1D62B5248(&v114, &v110);
                        sub_1D62B5248(&v114, &v110);
                        v82 = &unk_1F5112D20;
                      }

                      goto LABEL_140;
                    }

LABEL_143:
                    if (v80 >> 4 != 3)
                    {
                      break;
                    }

                    if (BYTE1(v42) <= 1u)
                    {
                      if (BYTE1(v42))
                      {
                        if (v42 > 0xFDu)
                        {
                          goto LABEL_80;
                        }

                        v92 = v41;
                        if ((v42 >> 6) > 1u)
                        {
                          if (v42 >> 6 == 2)
                          {
                            if (v42)
                            {
                              sub_1D62B5248(&v114, &v110);
                              sub_1D62B5248(&v114, &v110);
                              v93 = &unk_1F5112E88;
                              goto LABEL_177;
                            }
                          }

                          else if (v42)
                          {
                            sub_1D62B5248(&v114, &v110);
                            sub_1D62B5248(&v114, &v110);
                            v93 = &unk_1F5112EB0;
                            goto LABEL_177;
                          }
                        }

                        else if (v42 >> 6)
                        {
                          if (v42)
                          {
                            sub_1D62B5248(&v114, &v110);
                            sub_1D62B5248(&v114, &v110);
                            v93 = &unk_1F5112E60;
                            goto LABEL_177;
                          }
                        }

                        else if (v42)
                        {
                          sub_1D62B5248(&v114, &v110);
                          sub_1D62B5248(&v114, &v110);
                          v93 = &unk_1F5112E38;
                          goto LABEL_177;
                        }
                      }

                      else
                      {
                        if (v42 > 0xFDu)
                        {
                          goto LABEL_80;
                        }

                        v92 = v41;
                        if ((v42 >> 6) > 1u)
                        {
                          if (v42 >> 6 == 2)
                          {
                            if (v42)
                            {
                              sub_1D62B5248(&v114, &v110);
                              sub_1D62B5248(&v114, &v110);
                              v93 = &unk_1F5112DE8;
                              goto LABEL_177;
                            }
                          }

                          else if (v42)
                          {
                            sub_1D62B5248(&v114, &v110);
                            sub_1D62B5248(&v114, &v110);
                            v93 = &unk_1F5112E10;
                            goto LABEL_177;
                          }
                        }

                        else if (v42 >> 6)
                        {
                          if (v42)
                          {
                            sub_1D62B5248(&v114, &v110);
                            sub_1D62B5248(&v114, &v110);
                            v93 = &unk_1F5112DC0;
                            goto LABEL_177;
                          }
                        }

                        else if (v42)
                        {
                          sub_1D62B5248(&v114, &v110);
                          sub_1D62B5248(&v114, &v110);
                          v93 = &unk_1F5112D98;
LABEL_177:
                          v96 = sub_1D5E26E28(v93);
                          v97 = swift_allocObject();
                          v98 = v103;
                          *(v97 + 16) = v92;
                          *(v97 + 24) = v98;
                          *(v97 + 32) = v96;
                          *(v97 + 40) = 0;
                          a1 = v104;
                          sub_1D6C4D24C(v97 | 0x3000000000000000);

                          sub_1D5D085FC(&v114);
                          break;
                        }
                      }

                      sub_1D5D085FC(&v114);
                      goto LABEL_80;
                    }

                    if (BYTE1(v42) != 2 && BYTE1(v42) != 3)
                    {
                      goto LABEL_80;
                    }

                    if (v42 <= 0xFDu)
                    {
                      *&v110 = v41;
                      *(&v110 + 1) = v103;
                      LOBYTE(v111) = v42;
                      sub_1D5E1DA6C(v114, *(&v114 + 1), v115, *(&v115 + 1), *v116, *&v116[8], *&v116[16] & 0xC7FF);
                      sub_1D62A1A50();
                      sub_1D5E1E15C(v41, v103, v42);
                    }

                    break;
                  case 3:
                  case 4:
                    v108 = v114;
                    v109 = v39;
                    v113 = 5;
                    v103 = *(&v114 + 1);
                    sub_1D62B5248(&v114, &v110);

                    sub_1D62B5248(&v114, &v110);

                    v73 = sub_1D703E0C8(&v108, &v113);
                    v101 = v41;
                    v100 = v73;

                    v74 = swift_allocObject();
                    v75 = v103;
                    *(v74 + 16) = v101;
                    *(v74 + 24) = v75;
                    *(v74 + 32) = v100;
                    *(v74 + 40) = 0;
                    sub_1D6C4D24C(v74 | 0x3000000000000000);

                    *&v108 = v101;
                    *(&v108 + 1) = v103;
                    v109 = v42;
                    v113 = 5;
                    sub_1D62B5248(&v114, &v110);

                    v76 = sub_1D703E0C8(&v108, &v113);

                    v77 = swift_allocObject();
                    v78 = v103;
                    a1 = v104;
                    *(v77 + 16) = v101;
                    *(v77 + 24) = v78;
                    *(v77 + 32) = v76;
                    *(v77 + 40) = 0;
                    sub_1D6C4D24C(v77 | 0x3000000000000000);
                    goto LABEL_50;
                  default:

                    sub_1D62B5248(&v114, &v110);
                    break;
                }

LABEL_84:
                sub_1D5D085FC(&v114);

LABEL_69:

                v11 = v117;
                goto LABEL_5;
              }

              v108 = v114;
              v109 = v39;
              v113 = 5;
              v55 = v38;
              v56 = *(&v114 + 1);
              sub_1D62B5248(&v114, &v110);
              v102 = v55;

              sub_1D62B5248(&v114, &v110);
              v57 = sub_1D703E0C8(&v108, &v113);
              v58 = swift_allocObject();
              *(v58 + 16) = v41;
              *(v58 + 24) = v56;
              *(v58 + 32) = v57;
              *(v58 + 40) = 0;
              v103 = v58 | 0x3000000000000000;
              v59 = *a1;
              swift_beginAccess();
              v60 = *(v59 + 16);
              v61 = *(v60 + 16);
              if (v61)
              {
                v62 = *(v60 + 8 * v61 + 24);

                v64 = sub_1D60E14A8(v62, v103, v63);

                if (v64)
                {

LABEL_80:
                  sub_1D5D085FC(&v114);

LABEL_32:

                  a1 = v104;
                  v11 = v117;
                  goto LABEL_5;
                }
              }

              else
              {
              }

              v65 = v104;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v67 = *v65;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
                v94 = swift_allocObject();
                swift_beginAccess();
                v95 = v67[2];
                v110 = v67[1];
                v111 = v95;
                v112[0] = v67[3];
                *(v112 + 14) = *(v67 + 62);
                memmove((v94 + 16), v67 + 1, 0x3EuLL);
                sub_1D5EB9AB0(&v110, &v108);

                *v65 = v94;
                v67 = v94;
              }

              swift_beginAccess();
              v68 = *(v67 + 2);
              v69 = swift_isUniquelyReferenced_nonNull_native();
              *(v67 + 2) = v68;
              if (v69)
              {
                v70 = v67;
              }

              else
              {
                v68 = sub_1D698F848(0, *(v68 + 2) + 1, 1, v68);
                v70 = v67;
                *(v67 + 2) = v68;
              }

              v72 = *(v68 + 2);
              v71 = *(v68 + 3);
              if (v72 >= v71 >> 1)
              {
                v68 = sub_1D698F848((v71 > 1), v72 + 1, 1, v68);
              }

              *(v68 + 2) = v72 + 1;
              *&v68[8 * v72 + 32] = v103;
              *(v70 + 2) = v68;
              swift_endAccess();
              goto LABEL_80;
            }

            v11 = v117;
          }

LABEL_4:

          goto LABEL_5;
        }

        if (v44 > 1)
        {
          if (v44 != 3)
          {
            goto LABEL_68;
          }

          goto LABEL_45;
        }

        if (v44)
        {
          goto LABEL_68;
        }

        v52 = (DWORD2(v39) >> 3) & 7;
        if (v52 > 1)
        {
          if (v52 != 2 && v52 != 3 && BYTE8(v39) >> 6 && BYTE8(v39) >> 6 != 1)
          {
            v53 = BYTE8(v39) & 7;
            if (v53 <= 1)
            {
              if ((BYTE8(v39) & 7) != 0)
              {
                goto LABEL_81;
              }

LABEL_67:
              sub_1D5D085FC(&v114);
              goto LABEL_68;
            }

            goto LABEL_70;
          }

LABEL_45:
          v54 = v39;
          if (v39 <= 1u)
          {
            if (!v39)
            {
              goto LABEL_67;
            }

            if ((~v114 & 0xF000000000000007) != 0)
            {
              *&v108 = v114;
              goto LABEL_49;
            }

            goto LABEL_68;
          }

LABEL_61:
          v11 = v117;
          if (v54 != 2)
          {
            goto LABEL_62;
          }

          goto LABEL_4;
        }

        if (v52)
        {
          goto LABEL_67;
        }

        v54 = v39;
        if (v39 > 1u)
        {
          goto LABEL_61;
        }

        if (!v39)
        {
          goto LABEL_67;
        }

        if ((~v114 & 0xF000000000000007) == 0)
        {
          goto LABEL_68;
        }

        *&v108 = v114;

        sub_1D62B5248(&v114, &v110);
        sub_1D5CFCFAC(v41);
        sub_1D6E5C118(a1);

        sub_1D5D085FC(&v114);

        v11 = v117;
      }

      else
      {
        v22 = swift_projectBox();
        v23 = v106;
        sub_1D62B50EC(v22, v106, type metadata accessor for FormatCommandOpenURL);
        sub_1D62B50EC(v23, v107, type metadata accessor for FormatCommandOpenURL);
        if (swift_getEnumCaseMultiPayload() < 2)
        {
          sub_1D62B51D0(v106, type metadata accessor for FormatCommandOpenURL);
          sub_1D62B51D0(v107, type metadata accessor for FormatCommandOpenURL);
          goto LABEL_4;
        }

        v117 = v11;
        v24 = v107[1];
        v26 = v107[2];
        *&v110 = *v107;
        v25 = v110;
        *(&v110 + 1) = v24;
        *&v111 = v26;
        LOBYTE(v108) = 6;

        v27 = sub_1D703E0C8(&v110, &v108);
        v103 = 0;

        v28 = swift_allocObject();
        *(v28 + 16) = v25;
        *(v28 + 24) = v24;
        *(v28 + 32) = v27;
        *(v28 + 40) = 0;
        v29 = v28 | 0x3000000000000000;
        a1 = v104;
        v30 = *v104;
        swift_beginAccess();
        v31 = *(v30 + 16);
        v32 = *(v31 + 16);
        if (!v32 || (v33 = *(v31 + 8 * v32 + 24), , v35 = sub_1D60E14A8(v33, v29, v34), a1 = v104, , (v35 & 1) == 0))
        {
          v45 = swift_isUniquelyReferenced_nonNull_native();
          v46 = *a1;
          if ((v45 & 1) == 0)
          {
            sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
            v86 = swift_allocObject();
            swift_beginAccess();
            v87 = v46[2];
            v110 = v46[1];
            v111 = v87;
            v112[0] = v46[3];
            *(v112 + 14) = *(v46 + 62);
            memmove((v86 + 16), v46 + 1, 0x3EuLL);
            sub_1D5EB9AB0(&v110, &v108);

            *v104 = v86;
            v46 = v86;
          }

          swift_beginAccess();
          v47 = *(v46 + 2);
          v48 = swift_isUniquelyReferenced_nonNull_native();
          *(v46 + 2) = v47;
          if ((v48 & 1) == 0)
          {
            v47 = sub_1D698F848(0, *(v47 + 2) + 1, 1, v47);
            *(v46 + 2) = v47;
          }

          v50 = *(v47 + 2);
          v49 = *(v47 + 3);
          if (v50 >= v49 >> 1)
          {
            v88 = sub_1D698F848((v49 > 1), v50 + 1, 1, v47);
            v51 = v29;
            v47 = v88;
          }

          else
          {
            v51 = v29;
          }

          v3 = v103;
          *(v47 + 2) = v50 + 1;
          *&v47[8 * v50 + 32] = v51;
          *(v46 + 2) = v47;
          swift_endAccess();
          sub_1D62B51D0(v106, type metadata accessor for FormatCommandOpenURL);

          goto LABEL_32;
        }

        sub_1D62B51D0(v106, type metadata accessor for FormatCommandOpenURL);

        v11 = v117;
        v3 = v103;
      }

LABEL_5:
      v12 += 2;
      --v11;
    }

    while (v11);
  }
}

void sub_1D6281C84(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (!v4)
  {
    return;
  }

  v5 = a1;
  v6 = 0;
  v7 = a2 + 32;
  v94 = a1;
  v76 = v4;
  v77 = a2 + 32;
  while (1)
  {
    v11 = v7 + 32 * v6;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    if (v15 >> 62)
    {
      break;
    }

    v84 = v3;
    v36 = v7;
    v37 = *(v15 + 80);
    v92[1] = *(v15 + 64);
    v92[2] = v37;
    v92[3] = *(v15 + 96);
    v93 = *(v15 + 112);
    v38 = *(v15 + 32);
    v90 = *(v15 + 16);
    v91 = v38;
    v39 = *(v15 + 64);
    v92[0] = *(v15 + 48);
    v40 = *(v15 + 80);
    v41 = *(v15 + 96);
    v88[3] = v39;
    v88[4] = v40;
    v88[5] = v41;
    v89 = *(v15 + 112);
    v42 = *(v15 + 32);
    v88[0] = *(v15 + 16);
    v88[1] = v42;
    v88[2] = *(v15 + 48);
    v43 = v5;
    v44 = v12;
    v45 = v13;
    v46 = v14;
    sub_1D5D03180(v12, v13, v14);
    swift_retain_n();
    sub_1D5D0322C(&v90, v87);
    sub_1D6287E20(v43);
    sub_1D5D07BA8(v44, v45, v46);

    sub_1D5D07BBC(&v90);

    if (v84)
    {
      return;
    }

    v5 = v94;
    v7 = v36;
    v3 = 0;
LABEL_6:
    if (++v6 == v4)
    {
      return;
    }
  }

  v86 = *(v11 + 16);
  if (v15 >> 62 != 1)
  {
    v85 = v3;
    v47 = v6;
    v48 = v4;
    v49 = v15 & 0x3FFFFFFFFFFFFFFFLL;
    v50 = *(v49 + 24);
    *&v90 = *(v49 + 16);
    v51 = v12;
    v52 = v13;
    sub_1D5D03180(v12, v13, v14);
    swift_retain_n();

    swift_retain_n();
    v53 = v94;
    sub_1D6297BE8(v94);
    if (v85)
    {

      sub_1D5D07BA8(v51, v52, v86);

      return;
    }

    sub_1D62844E8(v53, v50, sub_1D6297BE8);
    sub_1D5D07BA8(v51, v52, v86);

    v5 = v94;
    v4 = v48;
    v6 = v47;
    v3 = 0;
    goto LABEL_5;
  }

  v16 = *v11;
  v79 = *(v11 + 8);
  v17 = v15 & 0x3FFFFFFFFFFFFFFFLL;
  v18 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v19 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v21 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v20 = *(v17 + 40);
  v81 = *(v17 + 48);
  v82 = *(v17 + 56);
  v78 = *(v17 + 64);
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  *(v22 + 24) = v19;
  v83 = v19;
  *(v22 + 32) = v21;
  *(v22 + 40) = v20;
  v80 = v20;
  v23 = *v94;
  swift_beginAccess();
  v24 = v86;
  v25 = *(v23 + 16);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = *(v25 + 8 * v26 + 24);
    if (v27 >> 60 == 9)
    {
      v28 = (v27 & 0xFFFFFFFFFFFFFFFLL);
      v29 = v28[4];
      v30 = v28[5];
      v31 = v28[2] == v18 && v28[3] == v83;
      if (v31 || (v32 = sub_1D72646CC(), v24 = v86, (v32 & 1) != 0))
      {
        if (v30)
        {
          if (v80)
          {
            if (v29 == v21 && v30 == v80)
            {
              v35 = v16;
              sub_1D5D03180(v16, v79, v24);
              swift_retain_n();

              goto LABEL_56;
            }

            v34 = sub_1D72646CC();
            v24 = v86;
            if (v34)
            {
              v35 = v16;
              sub_1D5D03180(v16, v79, v86);
              swift_retain_n();

LABEL_56:

              v63 = v81;
              v62 = v82;
              sub_1D5E433CC(v81, v82, v78);
              v61 = v35;

LABEL_58:

              goto LABEL_36;
            }
          }
        }

        else if (!v80)
        {
          v61 = v16;
          sub_1D5D03180(v16, v79, v24);
          swift_retain_n();

          v63 = v81;
          v62 = v82;
          sub_1D5E433CC(v81, v82, v78);
          goto LABEL_58;
        }
      }
    }
  }

  sub_1D5D03180(v16, v79, v24);

  swift_retain_n();

  sub_1D5E433CC(v81, v82, v78);

  v54 = v94;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v54;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
    v70 = swift_allocObject();
    swift_beginAccess();
    v71 = v56[2];
    v90 = v56[1];
    v91 = v71;
    v92[0] = v56[3];
    *(v92 + 14) = *(v56 + 62);
    memmove((v70 + 16), v56 + 1, 0x3EuLL);
    sub_1D5EB9AB0(&v90, v88);

    *v94 = v70;
    v56 = v70;
  }

  swift_beginAccess();
  v57 = *(v56 + 2);
  v58 = swift_isUniquelyReferenced_nonNull_native();
  *(v56 + 2) = v57;
  if ((v58 & 1) == 0)
  {
    v57 = sub_1D698F848(0, *(v57 + 2) + 1, 1, v57);
    *(v56 + 2) = v57;
  }

  v60 = *(v57 + 2);
  v59 = *(v57 + 3);
  if (v60 >= v59 >> 1)
  {
    v57 = sub_1D698F848((v59 > 1), v60 + 1, 1, v57);
  }

  *(v57 + 2) = v60 + 1;
  *&v57[8 * v60 + 32] = v22 | 0x9000000000000000;
  *(v56 + 2) = v57;
  swift_endAccess();
  v61 = v16;
  v63 = v81;
  v62 = v82;
LABEL_36:
  v4 = v76;
  v7 = v77;
  v5 = v94;
  if (v78 <= 1)
  {
    v75 = v61;
    if (v78)
    {
      v67 = *(v63 + 16);
      sub_1D5E433E0(v63, v62, 1u);
      if (v67)
      {
        v68 = (v63 + 40);
        do
        {
          if ((*v68 & 1) == 0)
          {
            *&v90 = *(v68 - 1);
            v69 = v90;
            swift_retain_n();
            sub_1D6012F58();
            if (v3)
            {
              sub_1D62B72BC(v69, 0);

              sub_1D5E4342C(v81, v82, 1u);
              sub_1D5D07BA8(v75, v79, v86);

              v72 = v81;
              v73 = v82;
              v74 = 1;
              goto LABEL_64;
            }

            sub_1D62B72BC(v69, 0);
          }

          v68 += 16;
          --v67;
        }

        while (v67);
      }

      sub_1D5E4342C(v81, v82, 1u);
      sub_1D5D07BA8(v75, v79, v86);

      v8 = v81;
      v9 = v82;
      v10 = 1;
    }

    else
    {
      v64 = *(v63 + 16);
      sub_1D5E433E0(v63, v62, 0);
      if (v64)
      {
        v65 = (v63 + 40);
        do
        {
          if ((*v65 & 1) == 0)
          {
            *&v90 = *(v65 - 1);
            v66 = v90;
            swift_retain_n();
            sub_1D6012F58();
            if (v3)
            {
              sub_1D62B72BC(v66, 0);

              sub_1D5E4342C(v81, v82, 0);
              sub_1D5D07BA8(v75, v79, v86);

              v72 = v81;
              v73 = v82;
              v74 = 0;
              goto LABEL_64;
            }

            sub_1D62B72BC(v66, 0);
          }

          v65 += 16;
          --v64;
        }

        while (v64);
      }

      sub_1D5E4342C(v81, v82, 0);
      sub_1D5D07BA8(v75, v79, v86);

      v8 = v81;
      v9 = v82;
      v10 = 0;
    }

    sub_1D5E4342C(v8, v9, v10);

LABEL_5:
    v7 = v77;
    goto LABEL_6;
  }

  if (v78 != 2)
  {

    sub_1D5E4342C(v63, v62, 0xFFu);
    sub_1D5D07BA8(v61, v79, v86);

    goto LABEL_6;
  }

  sub_1D5E433E0(v63, v62, 2u);
  sub_1D6273544(v5, v63);
  if (!v3)
  {
    sub_1D6273544(v5, v62);
    v3 = 0;

    sub_1D5E4342C(v63, v62, 2u);
    sub_1D5D07BA8(v61, v79, v86);

    sub_1D5E4342C(v63, v62, 2u);

    goto LABEL_6;
  }

  sub_1D5E4342C(v63, v62, 2u);
  sub_1D5D07BA8(v61, v79, v86);

  v72 = v63;
  v73 = v62;
  v74 = 2;
LABEL_64:
  sub_1D5E4342C(v72, v73, v74);
}

void sub_1D6282658(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = a2 + 56; ; i += 32)
    {
      v6 = *(i - 8);
      v7 = *(i - 16);

      swift_retain_n();

      sub_1D6285C00(a1, v8, v9, v10, v11, v12, v13, v14);
      if (v2)
      {
        break;
      }

      sub_1D628DEA4(a1, *(v7 + 48));
      sub_1D62827E8(a1, v6);

      sub_1D6E5C118(a1);

      if (!--v3)
      {
        return;
      }
    }
  }
}

void sub_1D62827E8(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v5 = a2 + 56;
    while (1)
    {
      v6 = *(v5 - 24);
      v7 = *(v5 - 16);
      v8 = *(v5 - 8);
      sub_1D5D03180(v6, v7, v8);
      swift_retain_n();
      sub_1D6E5C118(a1);
      if (v2)
      {
        break;
      }

      v5 += 32;
      sub_1D5D07BA8(v6, v7, v8);

      if (!--v3)
      {
        return;
      }
    }

    sub_1D5D07BA8(v6, v7, v8);
  }
}

void sub_1D62828D8(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v8 = *v5++;
      v7 = v8;
      if (v8 < 0)
      {
        v6 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

        sub_1D6282B60(a1, v6);
        if (v2)
        {

          return;
        }
      }

      else if (*(v7 + 40))
      {
        v13 = v5;
        v9 = *(v7 + 24);
        v10 = *(v7 + 32);
        v17 = v9;
        sub_1D5F586D0(v9, v10, 1);

        sub_1D5F586D0(v9, v10, 1);
        sub_1D5D0ACAC(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
        sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);

        if (swift_dynamicCast())
        {
          v11 = *(&v15 + 1);
          v12 = v16;
          __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
          (*(v12 + 8))(a1, v11, v12);
          if (v2)
          {
            sub_1D5F5870C(v9, v10, 1);
            sub_1D5F5870C(v9, v10, 1);
            __swift_destroy_boxed_opaque_existential_1(&v14);

            return;
          }

          __swift_destroy_boxed_opaque_existential_1(&v14);
        }

        else
        {
          v16 = 0;
          v14 = 0u;
          v15 = 0u;
          sub_1D5BFB774(&v14, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
        }

        sub_1D62768C8(a1, v10);
        sub_1D5F5870C(v9, v10, 1);
        sub_1D5F5870C(v9, v10, 1);

        if (v2)
        {
          return;
        }

        v5 = v13;
      }

      --v3;
    }

    while (v3);
  }
}

uint64_t *sub_1D6282B60(uint64_t *result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = a2 + 40; ; i += 16)
    {
      swift_retain_n();

      sub_1D6285C00(v4, v6, v7, v8, v9, v10, v11, v12);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_1D6282C14(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = a2 + 48; ; i += 24)
    {

      swift_bridgeObjectRetain_n();
      sub_1D6EE4610(a1);
      if (v2)
      {
        break;
      }

      sub_1D629CE04(a1);

      if (!--v3)
      {
        return;
      }
    }
  }
}

void sub_1D6282D08(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a1;
    v5 = (a2 + 40);
    v71 = a1;
    while (1)
    {
      v6 = *v5;
      *&v57 = *(v5 - 1);

      swift_retain_n();
      sub_1D6285C00(v4, v7, v8, v9, v10, v11, v12, v13);
      if (v2)
      {

        return;
      }

      v14 = v6 >> 61;
      if ((v6 >> 61) <= 1)
      {
        if (v14)
        {
          v44 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v43 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

          sub_1D6282D08(v4, v44);
          *&v57 = v43;

          sub_1D629CE04(v4);
        }

        else
        {
          v27 = *(v6 + 208);
          v67 = *(v6 + 192);
          v68 = v27;
          v28 = *(v6 + 240);
          v69 = *(v6 + 224);
          v70 = v28;
          v29 = *(v6 + 144);
          v63 = *(v6 + 128);
          v64 = v29;
          v30 = *(v6 + 176);
          v65 = *(v6 + 160);
          v66 = v30;
          v31 = *(v6 + 80);
          *&v59[16] = *(v6 + 64);
          v60 = v31;
          v32 = *(v6 + 112);
          v61 = *(v6 + 96);
          v62 = v32;
          v33 = *(v6 + 32);
          v57 = *(v6 + 16);
          v58 = v33;
          *v59 = *(v6 + 48);
          v34 = *(v6 + 208);
          v56[11] = *(v6 + 192);
          v56[12] = v34;
          v35 = *(v6 + 240);
          v56[13] = *(v6 + 224);
          v56[14] = v35;
          v36 = *(v6 + 144);
          v56[7] = *(v6 + 128);
          v56[8] = v36;
          v37 = *(v6 + 176);
          v56[9] = *(v6 + 160);
          v56[10] = v37;
          v38 = *(v6 + 80);
          v56[3] = *(v6 + 64);
          v56[4] = v38;
          v39 = *(v6 + 112);
          v56[5] = *(v6 + 96);
          v56[6] = v39;
          v40 = *(v6 + 32);
          v56[0] = *(v6 + 16);
          v56[1] = v40;
          v56[2] = *(v6 + 48);

          sub_1D5EEBE38(&v57, v55);
          sub_1D629F098(v4);

          sub_1D5EEBE94(&v57);
        }

        goto LABEL_3;
      }

      if (v14 == 2)
      {
        break;
      }

      if (v14 != 3)
      {
        v42 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        *&v57 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();

        sub_1D629CE04(v4);

        sub_1D6282C14(v4, v42);

        goto LABEL_3;
      }

      v15 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v17 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      *&v57 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = v57;
      *(&v57 + 1) = v15;
      *&v58 = v17;
      LOBYTE(v56[0]) = 9;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v18 = sub_1D703E0C8(&v57, v56);
      v19 = swift_allocObject();
      *(v19 + 16) = v16;
      *(v19 + 24) = v15;
      *(v19 + 32) = v18;
      *(v19 + 40) = 0;
      v20 = v19 | 0x3000000000000000;
      v21 = *v71;
      swift_beginAccess();
      v22 = *(v21 + 16);
      v23 = *(v22 + 16);
      v54 = v20;
      if (!v23)
      {

LABEL_18:
        v45 = v71;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = *v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
          v52 = v47;
          v47 = swift_allocObject();
          swift_beginAccess();
          v53 = v52[2];
          v57 = v52[1];
          v58 = v53;
          *v59 = v52[3];
          *&v59[14] = *(v52 + 62);
          memmove((v47 + 16), v52 + 1, 0x3EuLL);
          sub_1D5EB9AB0(&v57, v56);

          *v45 = v47;
        }

        swift_beginAccess();
        v48 = *(v47 + 16);
        v49 = swift_isUniquelyReferenced_nonNull_native();
        *(v47 + 16) = v48;
        if ((v49 & 1) == 0)
        {
          v48 = sub_1D698F848(0, *(v48 + 2) + 1, 1, v48);
          *(v47 + 16) = v48;
        }

        v51 = *(v48 + 2);
        v50 = *(v48 + 3);
        if (v51 >= v50 >> 1)
        {
          v48 = sub_1D698F848((v50 > 1), v51 + 1, 1, v48);
        }

        *(v48 + 2) = v51 + 1;
        *&v48[8 * v51 + 32] = v54;
        *(v47 + 16) = v48;
        swift_endAccess();

        v4 = v71;
        goto LABEL_4;
      }

      v24 = *(v22 + 8 * v23 + 24);

      v26 = sub_1D60E14A8(v24, v20, v25);

      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }

      v4 = v71;
LABEL_4:
      v5 += 2;
      if (!--v3)
      {
        return;
      }
    }

    v41 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    *&v57 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    swift_retain_n();

    sub_1D629CE04(v4);

    *&v57 = v41;

    sub_1D629CE04(v4);

LABEL_3:

    goto LABEL_4;
  }
}

uint64_t *sub_1D62833C4(uint64_t *result, uint64_t a2, void (*a3)(__int128 *, void *), uint64_t (*a4)(__int128 *))
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v8 = result;
    for (i = (a2 + 32); ; i = (i + 168))
    {
      v10 = i[9];
      v33 = i[8];
      v34 = v10;
      v35 = *(i + 160);
      v11 = i[5];
      v30[0] = i[4];
      v30[1] = v11;
      v12 = i[7];
      v31 = i[6];
      v32 = v12;
      v13 = i[1];
      v26 = *i;
      v27 = v13;
      v14 = i[3];
      v28 = i[2];
      v29 = v14;
      v25 = v26;
      a3(&v26, v24);

      sub_1D6EE4610(v8);
      if (v4)
      {
        break;
      }

      v15 = v27;

      if (v15)
      {
        sub_1D6273544(v8, v15);
      }

      if ((~*(&v27 + 1) & 0xF000000000000007) != 0)
      {
        v24[0] = *(&v27 + 1);

        sub_1D62891F0(v8, v16, v17, v18, v19, v20, v21, v22, v23);
      }

      if (v28)
      {
        sub_1D626FA1C(v8, v28);
      }

      if (v34 != 254)
      {
        v24[0] = v31;
        swift_retain_n();
        sub_1D62895DC(v8);

        sub_1D5D0ABCC(v30, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      if ((~*(&v34 + 1) & 0xF000000000000007) != 0)
      {
        v24[0] = *(&v34 + 1);

        sub_1D62895DC(v8);
      }

      result = a4(&v26);
      if (!--v5)
      {
        return result;
      }
    }

    return a4(&v26);
  }

  return result;
}

uint64_t *sub_1D6283604(uint64_t *result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 32); ; i += 13)
    {
      v6 = i[9];
      v7 = i[11];
      v53 = i[10];
      v54 = v7;
      v8 = i[11];
      v55 = i[12];
      v9 = i[5];
      v10 = i[7];
      v49 = i[6];
      v50 = v10;
      v11 = i[7];
      v12 = i[9];
      v51 = i[8];
      v52 = v12;
      v13 = i[1];
      v14 = i[3];
      v45 = i[2];
      v46 = v14;
      v15 = i[3];
      v16 = i[5];
      v47 = i[4];
      v48 = v16;
      v17 = i[1];
      v44[0] = *i;
      v44[1] = v17;
      v41 = v53;
      v42 = v8;
      v43 = i[12];
      v37 = v49;
      v38 = v11;
      v39 = v51;
      v40 = v6;
      v33 = v45;
      v34 = v15;
      v35 = v47;
      v36 = v9;
      v31 = v44[0];
      v32 = v13;
      sub_1D5D0B3B8(v44, &v18);
      sub_1D6296FA4(v4);
      if (v2)
      {
        break;
      }

      v28 = v41;
      v29 = v42;
      v30 = v43;
      v24 = v37;
      v25 = v38;
      v26 = v39;
      v27 = v40;
      v20 = v33;
      v21 = v34;
      v22 = v35;
      v23 = v36;
      v18 = v31;
      v19 = v32;
      result = sub_1D5D0B670(&v18);
      if (!--v3)
      {
        return result;
      }
    }

    v28 = v41;
    v29 = v42;
    v30 = v43;
    v24 = v37;
    v25 = v38;
    v26 = v39;
    v27 = v40;
    v20 = v33;
    v21 = v34;
    v22 = v35;
    v23 = v36;
    v18 = v31;
    v19 = v32;
    return sub_1D5D0B670(&v18);
  }

  return result;
}

uint64_t sub_1D6283774(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = result;
    v6 = (a2 + 32);
    do
    {
      v7 = v6[9];
      v29 = v6[8];
      v30 = v7;
      v31 = v6[10];
      v32 = *(v6 + 176);
      v8 = v6[5];
      v26 = v6[4];
      v27 = v8;
      v9 = v6[7];
      v28[0] = v6[6];
      v28[1] = v9;
      v10 = v6[1];
      v22 = *v6;
      v23 = v10;
      v11 = v6[3];
      v24 = v6[2];
      v25 = v11;
      v21 = v22;
      sub_1D62B7804(&v22, &v16);

      sub_1D6EE4610(v5);
      if (v3)
      {

        return sub_1D62B7860(&v22);
      }

      v12 = v23;
      if (v27 <= 1u)
      {
        if (v27)
        {
          v18 = v25;
          v19 = v26;
          v20 = v27;
          v16 = v23;
          v17 = v24;
          sub_1D619916C(&v16, v15);
          sub_1D6276AB0(v5, v12);
          sub_1D5D0ABCC(&v23, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
        }

        v13 = *(&v27 + 1);
        if (!*(&v27 + 1))
        {
          goto LABEL_13;
        }
      }

      else if (v27 == 2)
      {
        v14 = v26;
        v18 = v25;
        v19 = v26;
        v20 = v27;
        v16 = v23;
        v17 = v24;
        sub_1D619916C(&v16, v15);
        sub_1D627683C(v5, v12);
        if (v14)
        {

          sub_1D6273544(v5, v14);
          sub_1D6273544(v5, *(&v14 + 1));
          v3 = 0;
          sub_1D5CDE22C(v14, *(&v14 + 1));
        }

        sub_1D5D0ABCC(&v23, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
        v13 = *(&v27 + 1);
        if (!*(&v27 + 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        v13 = *(&v27 + 1);
        if (!*(&v27 + 1))
        {
          goto LABEL_13;
        }
      }

      sub_1D626FA1C(v5, v13);
LABEL_13:
      if (v32 != 254)
      {
        *&v16 = v29;
        swift_retain_n();
        sub_1D62895DC(v5);

        sub_1D5D0ABCC(v28, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      result = sub_1D62B7860(&v22);
      v6 = (v6 + 184);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t *sub_1D6283A60(uint64_t *result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = a2 + 32; ; i += 216)
    {
      v6 = *(i + 176);
      v7 = *(i + 144);
      v55 = *(i + 160);
      v56 = v6;
      v8 = *(i + 176);
      v57 = *(i + 192);
      v9 = *(i + 112);
      v10 = *(i + 80);
      v51 = *(i + 96);
      v52 = v9;
      v11 = *(i + 112);
      v12 = *(i + 144);
      v53 = *(i + 128);
      v54 = v12;
      v13 = *(i + 48);
      v14 = *(i + 16);
      v47 = *(i + 32);
      v48 = v13;
      v15 = *(i + 48);
      v16 = *(i + 80);
      v49 = *(i + 64);
      v50 = v16;
      v17 = *(i + 16);
      v46[0] = *i;
      v46[1] = v17;
      v42 = v55;
      v43 = v8;
      v44 = *(i + 192);
      v38 = v51;
      v39 = v11;
      v40 = v53;
      v41 = v7;
      v34 = v47;
      v35 = v15;
      v36 = v49;
      v37 = v10;
      v58 = *(i + 208);
      v45 = *(i + 208);
      v32 = v46[0];
      v33 = v14;
      sub_1D5D0B0E4(v46, &v18);
      sub_1D62947BC(v4);
      if (v2)
      {
        break;
      }

      v28 = v42;
      v29 = v43;
      v30 = v44;
      v31 = v45;
      v24 = v38;
      v25 = v39;
      v26 = v40;
      v27 = v41;
      v20 = v34;
      v21 = v35;
      v22 = v36;
      v23 = v37;
      v18 = v32;
      v19 = v33;
      result = sub_1D5D0B1AC(&v18);
      if (!--v3)
      {
        return result;
      }
    }

    v28 = v42;
    v29 = v43;
    v30 = v44;
    v31 = v45;
    v24 = v38;
    v25 = v39;
    v26 = v40;
    v27 = v41;
    v20 = v34;
    v21 = v35;
    v22 = v36;
    v23 = v37;
    v18 = v32;
    v19 = v33;
    return sub_1D5D0B1AC(&v18);
  }

  return result;
}

double sub_1D6283BF0(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = a2 + 56; ; i += 32)
    {

      swift_retain_n();

      sub_1D6E5C118(a1);
      if (v2)
      {
        break;
      }

      sub_1D62A1FA8(a1);

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_1D6283CFC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (v4)
  {
    v6 = (a2 + 40);
    do
    {
      v9 = *v6;

      sub_1D5D085B4(v9);

      sub_1D6285C00(a1, v10, v11, v12, v13, v14, v15, v16);
      if (v3)
      {

        sub_1D5D05694(v9);

        return;
      }

      v17 = v9 >> 61;
      if ((v9 >> 61) <= 2)
      {
        if (!v17)
        {
          v21 = *(v9 + 16);
          sub_1D5D085B4(v9);
          sub_1D5C82CD8(v21);
          sub_1D626D654(a1);

          sub_1D5D05694(v9);
          sub_1D5C92A8C(v21);
          sub_1D5D05694(v9);
          goto LABEL_6;
        }

        if (v17 == 1)
        {
          v19 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v18 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          sub_1D5D085B4(v9);

          sub_1D5D085B4(v18);
          sub_1D6283CFC(a1, v19);
          v20 = v18 >> 61;
          if ((v18 >> 61) <= 2)
          {
            if (!v20)
            {
              sub_1D5D085B4(v18);
              sub_1D626D654(a1);

              sub_1D5D05694(v9);
              sub_1D5D05694(v18);

              sub_1D5D05694(v18);
              sub_1D5D05694(v9);
              goto LABEL_6;
            }

            if (v20 != 1)
            {
LABEL_29:
              v25 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              sub_1D5D085B4(v18);
              sub_1D6283BF0(a1, v25);
              goto LABEL_32;
            }

            v22 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v27 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            sub_1D5D085B4(v18);
            sub_1D6283CFC(a1, v22);
            sub_1D5D085B4(v27);
            sub_1D62A1DA4(a1, v23);

            sub_1D5D05694(v9);
            v24 = v27;
LABEL_33:
            sub_1D5D05694(v24);
            sub_1D5D05694(v18);

            v26 = v18;
          }

          else
          {
            if (v20 <= 4)
            {
              if (v20 == 3)
              {
                goto LABEL_29;
              }

LABEL_31:
              sub_1D5D085B4(v18);
              sub_1D6E5C118(a1);
LABEL_32:
              v3 = 0;

              v24 = v9;
              goto LABEL_33;
            }

            if (v20 == 5)
            {
              goto LABEL_31;
            }

            if (v18 == 0xC000000000000000)
            {

              sub_1D5D05694(v9);
              sub_1D5D05694(0xC000000000000000);

              v26 = 0xC000000000000000;
            }

            else
            {

              sub_1D5D05694(v9);
              if (v18 == 0xC000000000000008)
              {
                sub_1D5D05694(0xC000000000000008);

                v26 = 0xC000000000000008;
              }

              else
              {
                sub_1D5D05694(0xC000000000000010);

                v26 = 0xC000000000000010;
              }
            }
          }

          sub_1D5D05694(v26);
          sub_1D5D05694(v9);
          goto LABEL_6;
        }
      }

      else
      {
        if (v17 > 4)
        {
          if (v17 != 5)
          {
            if (v9 == 0xC000000000000000)
            {

              v8 = 0xC000000000000000;
            }

            else
            {

              if (v9 == 0xC000000000000008)
              {
                v8 = 0xC000000000000008;
              }

              else
              {
                v8 = 0xC000000000000010;
              }
            }

            goto LABEL_5;
          }

LABEL_19:
          sub_1D5D085B4(v9);

          sub_1D6E5C118(a1);

          sub_1D5D05694(v9);

          goto LABEL_4;
        }

        if (v17 != 3)
        {
          goto LABEL_19;
        }
      }

      v7 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D5D085B4(v9);

      sub_1D6283BF0(a1, v7);

      sub_1D5D05694(v9);

LABEL_4:
      v8 = v9;
LABEL_5:
      sub_1D5D05694(v8);
LABEL_6:
      v6 += 2;
      --v4;
    }

    while (v4);
  }
}

void sub_1D6284208(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = *(a2 + 16);
  if (v22)
  {
    v5 = 0;
    v6 = a2 + 32;
    p_superclass = (&OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler + 8);
    v21 = a2 + 32;
    while (1)
    {
      v8 = (v6 + 24 * v5);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];

      v26 = v11;
      sub_1D5DEA234(v11);
      v12 = p_superclass[355];

      if (v12 != -1)
      {
        swift_once();
      }

      v23[0] = v9;
      v23[1] = v10;
      v13 = sub_1D6844380(v23);
      v14 = *(v13 + 16);
      if (v14)
      {
        break;
      }

LABEL_11:

      v20 = v26;
      if (v26 >= 3)
      {
        sub_1D6273544(a1, v26);
        if (v3)
        {

          sub_1D5CBF568(v20);
          return;
        }
      }

      ++v5;

      sub_1D5CBF568(v20);
      v6 = v21;
      p_superclass = &OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler.superclass;
      if (v5 == v22)
      {
        return;
      }
    }

    v15 = 0;
    v16 = 32;
    while (v15 < *(v13 + 16))
    {
      v17 = *(v13 + v16);
      v18 = *(v13 + v16 + 16);
      v19 = *(v13 + v16 + 32);
      v25 = *(v13 + v16 + 48);
      v24[1] = v18;
      v24[2] = v19;
      v24[0] = v17;
      sub_1D5E3B610(v24, v23);
      sub_1D6844F60(a1);
      if (v3)
      {

        sub_1D5E3B66C(v24);

        sub_1D5CBF568(v26);

        return;
      }

      ++v15;
      sub_1D5E3B66C(v24);
      v16 += 56;
      if (v14 == v15)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1D62843FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *(a2 + 16);
  if (v4)
  {
    for (i = (a2 + 48); ; i += 3)
    {
      v8 = *i;
      swift_bridgeObjectRetain_n();

      sub_1D6EE4610(a1);
      if (v3)
      {
        break;
      }

      a3(a1, v8);

      if (!--v4)
      {
        return;
      }
    }
  }
}

void sub_1D62844E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a2 + 16);
  if (v4)
  {
    for (i = a2 + 48; ; i += 24)
    {

      swift_bridgeObjectRetain_n();
      sub_1D6EE4610(a1);
      if (v3)
      {
        break;
      }

      a3(a1);

      if (!--v4)
      {
        return;
      }
    }
  }
}

void sub_1D62845E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = (a2 + 48); ; i += 3)
    {
      v6 = *i;

      sub_1D5F33D5C(v6);

      sub_1D6EE4610(a1);
      if (v2)
      {
        break;
      }

      sub_1D5F33D5C(v6);
      sub_1D62A17B0(a1);

      sub_1D5F33D8C(v6);
      sub_1D5F33D8C(v6);
      if (!--v3)
      {
        return;
      }
    }

    sub_1D5F33D8C(v6);
  }
}

void sub_1D62846E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a2 + 16);
  if (v4)
  {
    for (i = a2 + 40; ; i += 16)
    {

      swift_retain_n();
      sub_1D6285C00(a1, v8, v9, v10, v11, v12, v13, v14);
      if (v3)
      {
        break;
      }

      a3(a1);

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t sub_1D62847D0(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = a2 + 56;
    while (1)
    {
      v6 = *(v5 - 24);
      v7 = *(v5 - 16);
      v8 = *(v5 - 8);
      sub_1D5D03180(v6, v7, v8);
      swift_retain_n();
      sub_1D6287A8C(v4);
      if (v2)
      {
        break;
      }

      v5 += 32;
      sub_1D5D07BA8(v6, v7, v8);

      if (!--v3)
      {
        return result;
      }
    }

    sub_1D5D07BA8(v6, v7, v8);
  }

  return result;
}

void sub_1D62848B0(uint64_t a1, uint64_t a2)
{
  sub_1D5CF4A48(0, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = (v14 - v8);
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    do
    {
      sub_1D62B7198(v11, v9, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
      v13 = v9[1];
      v14[0] = *v9;
      v14[1] = v13;

      sub_1D6EE4610(a1);
      sub_1D62B7204(v9, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);

      if (v2)
      {
        break;
      }

      v11 += v12;
      --v10;
    }

    while (v10);
  }
}

void sub_1D6284A20(uint64_t a1, uint64_t a2)
{
  v16 = *(a2 + 16);
  if (v16)
  {
    v4 = 0;
    v20 = a2 + 32;
    while (1)
    {
      v5 = (v20 + 24 * v4);
      v6 = *v5;
      v7 = v5[1];
      v8 = qword_1EDF2AB18;
      swift_bridgeObjectRetain_n();
      if (v8 != -1)
      {
        swift_once();
      }

      v17[0] = v6;
      v17[1] = v7;
      v9 = sub_1D6844380(v17);
      v10 = *(v9 + 16);
      if (v10)
      {
        break;
      }

LABEL_3:
      ++v4;
      swift_bridgeObjectRelease_n();

      if (v4 == v16)
      {
        return;
      }
    }

    v11 = 0;
    v12 = 32;
    while (v11 < *(v9 + 16))
    {
      v13 = *(v9 + v12);
      v14 = *(v9 + v12 + 16);
      v15 = *(v9 + v12 + 32);
      v19 = *(v9 + v12 + 48);
      v18[1] = v14;
      v18[2] = v15;
      v18[0] = v13;
      sub_1D5E3B610(v18, v17);
      sub_1D6844F60(a1);
      if (v2)
      {

        sub_1D5E3B66C(v18);
        swift_bridgeObjectRelease_n();
        return;
      }

      ++v11;
      sub_1D5E3B66C(v18);
      v12 += 56;
      if (v10 == v11)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }
}

void sub_1D6284BAC(uint64_t a1, uint64_t a2)
{
  sub_1D5CF4AE4(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = (v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    do
    {
      sub_1D62B50EC(v11, v9, sub_1D5CF4AE4);
      v13 = v9[1];
      v14[0] = *v9;
      v14[1] = v13;

      sub_1D6EE4610(a1);
      sub_1D62B51D0(v9, sub_1D5CF4AE4);

      if (v2)
      {
        break;
      }

      v11 += v12;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1D6284CF8(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = a2 + 56;
    while (1)
    {
      v6 = *(v5 - 24);
      v7 = *(v5 - 16);
      v8 = *(v5 - 8);
      sub_1D5D03180(v6, v7, v8);
      swift_retain_n();
      sub_1D6293788(v4);
      if (v2)
      {
        break;
      }

      v5 += 32;
      sub_1D5D07BA8(v6, v7, v8);

      if (!--v3)
      {
        return result;
      }
    }

    sub_1D5D07BA8(v6, v7, v8);
  }

  return result;
}

void sub_1D6284DD8(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (!v4)
  {
    return;
  }

  v6 = 0;
  v7 = a2 + 32;
  v19 = a2 + 32;
  v20 = *(a2 + 16);
  while (1)
  {
    v8 = v7 + 24 * v6;
    if (*(v8 + 16) < 0xCu)
    {
      goto LABEL_4;
    }

    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = qword_1EDF2AB18;

    if (v11 != -1)
    {
      swift_once();
    }

    v24 = v9;
    v21[0] = v9;
    v21[1] = v10;
    v12 = sub_1D6844380(v21);
    v13 = *(v12 + 16);
    if (v13)
    {
      break;
    }

LABEL_3:

    sub_1D62B7514(v24, v10, 0xCu);
    v7 = v19;
    v4 = v20;
LABEL_4:
    if (++v6 == v4)
    {
      return;
    }
  }

  v14 = 0;
  v15 = 32;
  while (v14 < *(v12 + 16))
  {
    v16 = *(v12 + v15);
    v17 = *(v12 + v15 + 16);
    v18 = *(v12 + v15 + 32);
    v23 = *(v12 + v15 + 48);
    v22[1] = v17;
    v22[2] = v18;
    v22[0] = v16;
    sub_1D5E3B610(v22, v21);
    sub_1D6844F60(result);
    if (v3)
    {

      sub_1D5E3B66C(v22);
      sub_1D62B7514(v24, v10, 0xCu);
      return;
    }

    ++v14;
    sub_1D5E3B66C(v22);
    v15 += 56;
    if (v13 == v14)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
}

uint64_t *sub_1D6284F74(uint64_t *result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 32); ; i += 528)
    {
      memcpy(__dst, i, sizeof(__dst));
      memcpy(__src, i, sizeof(__src));
      sub_1D5CFDDA0(__dst, v6);
      sub_1D62A230C(v4);
      if (v2)
      {
        break;
      }

      memcpy(v6, __src, sizeof(v6));
      result = sub_1D5CFF4CC(v6);
      if (!--v3)
      {
        return result;
      }
    }

    memcpy(v6, __src, sizeof(v6));
    return sub_1D5CFF4CC(v6);
  }

  return result;
}

void sub_1D6285038(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = (a2 + 40); ; i += 2)
    {
      v6 = *i;

      sub_1D5C82CD8(v6);

      sub_1D6285C00(a1, v7, v8, v9, v10, v11, v12, v13);

      if (v2)
      {
        break;
      }

      sub_1D5C82CD8(v6);
      sub_1D626D654(a1);

      sub_1D5C92A8C(v6);
      sub_1D5C92A8C(v6);
      if (!--v3)
      {
        return;
      }
    }

    sub_1D5C92A8C(v6);
  }
}

void sub_1D6285120(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = a2 + 64; ; i += 40)
    {
      v6 = *(i - 8);

      swift_retain_n();

      sub_1D6E5C118(a1);
      if (v2)
      {
        break;
      }

      if (v6)
      {
        sub_1D6290E24(a1);
      }

      if (!--v3)
      {
        return;
      }
    }
  }
}

void sub_1D6285260(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = a2 + 48; ; i += 24)
    {

      swift_bridgeObjectRetain_n();
      sub_1D6EE4610(a1);
      if (v2)
      {
        break;
      }

      sub_1D6E5C118(a1);

      if (!--v3)
      {
        return;
      }
    }
  }
}

void sub_1D628535C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = a2 + 40; ; i += 16)
    {

      swift_retain_n();
      sub_1D6285C00(a1, v6, v7, v8, v9, v10, v11, v12);
      if (v2)
      {
        break;
      }

      sub_1D6E5C118(a1);

      if (!--v3)
      {
        return;
      }
    }
  }
}

void sub_1D6285444(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a2 + 16);
  if (v4)
  {
    for (i = a2 + 48; ; i += 24)
    {

      swift_bridgeObjectRetain_n();
      sub_1D6EE4610(a1);
      if (v3)
      {
        break;
      }

      a3(a1);

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t *sub_1D6285540(uint64_t *result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 48); ; i += 5)
    {
      v6 = *i;
      v7 = i[2];
      v17 = i[1];
      v18 = v7;
      v19 = i[3];
      v8 = *i;
      v15 = *(i - 1);
      v16 = v8;
      v12 = v6;
      v13 = v17;
      v14[0] = i[2];
      *(v14 + 15) = *(i + 47);
      sub_1D5CF5D60(&v15, &v9);
      sub_1D5CF5DBC(&v16, &v9);
      sub_1D629D254(v4);
      if (v2)
      {
        break;
      }

      sub_1D5CF5E18(&v15);
      v9 = v12;
      v10 = v13;
      v11[0] = v14[0];
      *(v11 + 15) = *(v14 + 15);
      result = sub_1D5CF603C(&v9);
      if (!--v3)
      {
        return result;
      }
    }

    sub_1D5CF5E18(&v15);
    v9 = v12;
    v10 = v13;
    v11[0] = v14[0];
    *(v11 + 15) = *(v14 + 15);
    return sub_1D5CF603C(&v9);
  }

  return result;
}

void sub_1D6285678(uint64_t *a1)
{
  v3 = *v1;
  switch((*v1 >> 59) & 0x1E | (*v1 >> 2) & 1)
  {
    case 1uLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0x19uLL:
      return;
    case 2uLL:
      v18 = v3 & 0xFFFFFFFFFFFFFFBLL;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);

      sub_1D6273544(a1, v19);
      if (!v2)
      {
        sub_1D6273544(a1, v20);
      }

      goto LABEL_16;
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 0xAuLL:
    case 0xBuLL:
      v5 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      sub_1D6273544(a1, v5);
      goto LABEL_17;
    case 9uLL:
      sub_1D6273544(a1, *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10));
      return;
    case 0xEuLL:
    case 0xFuLL:
    case 0x16uLL:

      sub_1D6290E24(a1);

      return;
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:

      sub_1D6290E24(a1);

      goto LABEL_17;
    case 0x14uLL:
    case 0x15uLL:
      v6 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      sub_1D62744A4(a1, v6);
      goto LABEL_17;
    case 0x17uLL:
      v14 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      sub_1D6282B60(a1, v14);
LABEL_16:

      goto LABEL_17;
    case 0x18uLL:
      v7 = (v3 & 0xFFFFFFFFFFFFFFBLL);
      v8 = v7[2];
      v9 = v7[3];
      v10 = v7[4];
      v11 = v7[5];

      v12.n128_u64[0] = 0;
      v13 = sub_1D71C2CF8(v12, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
      sub_1D6C4D418(v13);
      if (v2)
      {
      }

      else
      {

        sub_1D6273544(a1, v8);
        sub_1D6273544(a1, v9);
        sub_1D6273544(a1, v10);
        sub_1D6273544(a1, v11);

LABEL_17:
      }

      return;
    default:
      v15 = *(v3 + 24);
      v17 = *(v3 + 32);
      v16 = *(v3 + 40);
      sub_1D6273544(a1, *(v3 + 16));
      if (!v2)
      {
        sub_1D6273544(a1, v15);
        sub_1D6273544(a1, v17);
        sub_1D6273544(a1, v16);
      }

      return;
  }
}

uint64_t sub_1D62859BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = type metadata accessor for FormatEquationToken(0, *(a2 + 16), *(a2 + 24), a4);
  return sub_1D69F81A0(a1, v6, v7, &off_1F513FC88);
}

uint64_t sub_1D6285A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = type metadata accessor for FormatSwitchListValue.CaseValue(0, *(a2 + 16), *(a2 + 24), a4);
  return sub_1D69F81A0(a1, v6, v7, &off_1F51420F8);
}

uint64_t sub_1D6285A8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v3, v4);
  sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  if (swift_dynamicCast())
  {
    v8 = *(&v12 + 1);
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    (*(v9 + 8))(a1, v8, v9);
    return __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    return sub_1D5BFB774(&v11, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  }
}

void sub_1D6285C00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v8;
  v11 = *v8 >> 60;
  if (v11 <= 6)
  {
    if (v11 > 3)
    {
      if (v11 == 4)
      {
        sub_1D628AB78(a1);
      }

      else
      {

        sub_1D6EE4610(a1);
      }
    }

    else if ((v11 - 2) >= 2 && v11 != 0)
    {
      sub_1D6055D1C(a1, *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x10));
    }
  }

  else
  {
    if (v11 > 0xE)
    {
      goto LABEL_19;
    }

    if (((1 << v11) & 0x6C00) != 0)
    {
      return;
    }

    if (v11 == 9)
    {
      v12 = a1;

      sub_1D6285C00(v12, v13, v14, v15, v16, v17, v18, v19);
      if (!v9)
      {
LABEL_23:

        sub_1D6285C00(v12, v42, v43, v44, v45, v46, v47, v48);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    if (v11 != 12)
    {
LABEL_19:
      v12 = a1;
      if (v11 != 7)
      {

        sub_1D6285C00(v12, v35, v36, v37, v38, v39, v40, v41);
        if (v9)
        {

          return;
        }

        goto LABEL_23;
      }

      sub_1D6285C00(v12, v28, v29, v30, v31, v32, v33, v34);
LABEL_24:

      return;
    }

    v22 = v10 & 0xFFFFFFFFFFFFFFFLL;
    v24 = *(v22 + 32);
    v23 = *(v22 + 40);
    v25 = *(v22 + 48);
    v26 = *(v22 + 56);
    if (v26 >> 6 > 1)
    {

      sub_1D6273544(a1, v24);
      if (!v9)
      {
        sub_1D6290E24(a1);
      }
    }

    else
    {

      sub_1D6273544(a1, v24);
    }

    sub_1D6057D74(v24, v23, v25, v26);
  }
}

void sub_1D6285EA0(uint64_t *a1)
{
  v4 = *v1 >> 62;
  if (!v4)
  {

    sub_1D6286074(a1);
    goto LABEL_5;
  }

  if (v4 == 1)
  {

    sub_1D694AE44(a1, v5);
LABEL_5:

    return;
  }

  v6 = *((*v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v7 = *(v6 + 16);

  sub_1D62707E8(a1, v7, v8);
  if (v2 || (v9 = *(v6 + 104), v10 = *(v6 + 136), v31 = *(v6 + 120), v32[0] = v10, *(v32 + 9) = *(v6 + 145), v11 = *(v6 + 40), v12 = *(v6 + 72), v27 = *(v6 + 56), v28 = v12, v29 = *(v6 + 88), v30 = v9, v25 = *(v6 + 24), v26 = v11, memmove(__dst, (v6 + 24), 0x89uLL), sub_1D60486AC(__dst) == 1))
  {
  }

  else
  {
    v21 = __dst[6];
    v22[0] = v34[0];
    *(v22 + 9) = *(v34 + 9);
    v17 = __dst[2];
    v18 = __dst[3];
    v19 = __dst[4];
    v20 = __dst[5];
    v15 = __dst[0];
    v16 = __dst[1];
    v23[6] = v31;
    v24[0] = v32[0];
    *(v24 + 9) = *(v32 + 9);
    v23[2] = v27;
    v23[3] = v28;
    v23[4] = v29;
    v23[5] = v30;
    v23[0] = v25;
    v23[1] = v26;
    sub_1D62B4994(v23, v13);
    sub_1D62867D4(a1);

    v13[6] = v21;
    v14[0] = v22[0];
    *(v14 + 9) = *(v22 + 9);
    v13[2] = v17;
    v13[3] = v18;
    v13[4] = v19;
    v13[5] = v20;
    v13[0] = v15;
    v13[1] = v16;
    sub_1D62B49F0(v13);
  }
}

void sub_1D6286074(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  if (*(v1 + 64) != 4)
  {
    if (v5)
    {

      sub_1D6273544(a1, v5);
      if (v2)
      {
        goto LABEL_14;
      }
    }

    if (v4)
    {

      sub_1D6273544(a1, v4);
      if (v2)
      {
        goto LABEL_14;
      }
    }

    if (!v6)
    {
LABEL_25:
      v12 = v2;
      goto LABEL_26;
    }

    sub_1D6273544(a1, v6);
    v12 = v2;
    if (!v2)
    {

      goto LABEL_26;
    }

LABEL_14:

    return;
  }

  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = *(v1 + 56);
  if (v5)
  {

    sub_1D6273544(a1, v5);
    if (v2)
    {
      v10 = v5;
      v11 = v4;
LABEL_24:
      sub_1D5CDE22C(v10, v11);
      return;
    }

    sub_1D6273544(a1, v4);
    sub_1D5CDE22C(v5, v4);
  }

  if (v6)
  {

    sub_1D6273544(a1, v6);
    if (v2)
    {
      v10 = v6;
      v11 = v8;
      goto LABEL_24;
    }

    sub_1D6273544(a1, v8);
    sub_1D5CDE22C(v6, v8);
  }

  if (!v7)
  {
    goto LABEL_25;
  }

  sub_1D6273544(a1, v7);
  if (v2)
  {
    v10 = v7;
    v11 = v9;
    goto LABEL_24;
  }

  sub_1D6273544(a1, v9);
  v12 = 0;
  sub_1D5CDE22C(v7, v9);
LABEL_26:
  v13 = *(v1 + 88);
  if (v13 != 255 && (v13 & 1) != 0)
  {
    v14 = *(v1 + 72);
    v15 = *(v1 + 80);
    sub_1D6189668(v14, v15, *(v1 + 88));
    sub_1D6189668(v14, v15, v13);
    v16 = sub_1D5E26E28(&unk_1F5112938);
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    *(v17 + 24) = v15;
    *(v17 + 32) = v16;
    *(v17 + 40) = 0;
    sub_1D6C4D24C(v17 | 0x3000000000000000);
    sub_1D60107F0(v14, v15, v13);
  }

  v18 = *(v1 + 112);
  if (v18 != 255 && (v18 & 1) != 0)
  {
    v19 = *(v1 + 96);
    v20 = *(v1 + 104);
    sub_1D6189668(v19, v20, *(v1 + 112));
    sub_1D6189668(v19, v20, v18);
    v21 = sub_1D5E26E28(&unk_1F5112960);
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v20;
    *(v22 + 32) = v21;
    *(v22 + 40) = 0;
    sub_1D6C4D24C(v22 | 0x3000000000000000);
    sub_1D60107F0(v19, v20, v18);
  }

  v23 = *(v1 + 200);
  v24 = *(v1 + 232);
  v55 = *(v1 + 216);
  v56[0] = v24;
  *(v56 + 9) = *(v1 + 241);
  v25 = *(v1 + 136);
  v26 = *(v1 + 168);
  v51 = *(v1 + 152);
  v52 = v26;
  v53 = *(v1 + 184);
  v54 = v23;
  v49 = *(v1 + 120);
  v50 = v25;
  v27 = *(v1 + 200);
  v28 = *(v1 + 232);
  v63 = *(v1 + 216);
  v64[0] = v28;
  *(v64 + 9) = *(v1 + 241);
  v29 = *(v1 + 136);
  v30 = *(v1 + 168);
  v59 = *(v1 + 152);
  v60 = v30;
  v61 = *(v1 + 184);
  v62 = v27;
  v57 = *(v1 + 120);
  v58 = v29;
  if (sub_1D60486AC(&v57) != 1)
  {
    v45 = v63;
    v46[0] = v64[0];
    *(v46 + 9) = *(v64 + 9);
    v41 = v59;
    v42 = v60;
    v43 = v61;
    v44 = v62;
    v39 = v57;
    v40 = v58;
    v47[6] = v55;
    v48[0] = v56[0];
    *(v48 + 9) = *(v56 + 9);
    v47[2] = v51;
    v47[3] = v52;
    v47[4] = v53;
    v47[5] = v54;
    v47[0] = v49;
    v47[1] = v50;
    sub_1D62B4994(v47, &v31);
    sub_1D62867D4(a1);
    if (v12)
    {
      v37 = v45;
      v38[0] = v46[0];
      *(v38 + 9) = *(v46 + 9);
      v33 = v41;
      v34 = v42;
      v35 = v43;
      v36 = v44;
      v31 = v39;
      v32 = v40;
      sub_1D62B49F0(&v31);
    }

    else
    {
      v37 = v45;
      v38[0] = v46[0];
      *(v38 + 9) = *(v46 + 9);
      v33 = v41;
      v34 = v42;
      v35 = v43;
      v36 = v44;
      v31 = v39;
      v32 = v40;
      sub_1D62B49F0(&v31);
    }
  }
}

void sub_1D62865A0(uint64_t a1)
{
  v5 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  if (*(v1 + 48) != 4)
  {
    if (v5)
    {

      sub_1D6273544(a1, v5);
      if (v2)
      {
        goto LABEL_13;
      }
    }

    if (!v4)
    {
LABEL_11:
      if (!v6)
      {
        return;
      }

      sub_1D6273544(a1, v6);
      goto LABEL_13;
    }

    sub_1D6273544(a1, v4);
    if (!v2)
    {

      goto LABEL_11;
    }

LABEL_13:

    return;
  }

  v8 = *(v1 + 24);
  v7 = *(v1 + 32);
  v9 = *(v1 + 40);
  if (v5)
  {

    sub_1D6273544(a1, v5);
    if (v2)
    {
      v10 = v5;
      v11 = v4;
LABEL_24:
      sub_1D5CDE22C(v10, v11);
      return;
    }

    sub_1D6273544(a1, v4);
    sub_1D5CDE22C(v5, v4);
  }

  if (v6)
  {

    sub_1D6273544(a1, v6);
    if (v2)
    {
      v10 = v6;
      v11 = v8;
      goto LABEL_24;
    }

    sub_1D6273544(a1, v8);
    sub_1D5CDE22C(v6, v8);
  }

  if (v7)
  {

    sub_1D6273544(a1, v7);
    if (!v2)
    {
      sub_1D6273544(a1, v9);
    }

    v10 = v7;
    v11 = v9;
    goto LABEL_24;
  }
}

double sub_1D62867D4(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v9 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v26 = *(v1 + 56);
  v27 = *(v1 + 88);
  v28 = *(v1 + 96);
  v29 = *(v1 + 80);
  v30 = *(v1 + 104);
  v31 = *(v1 + 112);
  v24 = *(v1 + 128);
  v25 = *(v1 + 120);
  v12 = *(v1 + 136);
  if (!v4 || (sub_1D6273544(a1, v4), !v2))
  {
    if (!v5 || (sub_1D6273544(a1, v5), !v2))
    {
      if (!v7 || (sub_1D6273544(a1, v7), !v2))
      {
        if (!v6 || (sub_1D6273544(a1, v6), !v2))
        {
          if (!v9 || (sub_1D6273544(a1, v9), !v2))
          {
            if (!v8 || (sub_1D6273544(a1, v8), !v2))
            {
              if (v11 != 255)
              {
                v14 = v11;
                if (v11)
                {
                  v15 = v10;
                  v16 = v10;
                  v17 = v14;
                  sub_1D6189668(v26, v16, v14);
                  sub_1D6189668(v26, v15, v17);
                  v18 = v12;
                  v19 = sub_1D5E26E28(&unk_1F50F4730);
                  v20 = swift_allocObject();
                  *(v20 + 16) = v26;
                  *(v20 + 24) = v15;
                  *(v20 + 32) = v19;
                  *(v20 + 40) = 0;
                  sub_1D6C4D24C(v20 | 0x3000000000000000);
                  v12 = v18;
                  sub_1D60107F0(v26, v15, v17);
                }
              }

              if (v31 != 255 && (v31 & 1) != 0)
              {
                sub_1D618903C(v29, v27, v28, v30, 1);
                sub_1D6273544(a1, v29);
                if (v2)
                {
                  return sub_1D62B4B50(v29, v27, v28, v30, v31);
                }

                sub_1D6273544(a1, v27);
                sub_1D6273544(a1, v28);
                sub_1D6273544(a1, v30);
                result = sub_1D62B4B50(v29, v27, v28, v30, v31);
              }

              if (v12 != 255 && (v12 & 1) != 0)
              {
                sub_1D6189668(v25, v24, v12);
                sub_1D6189668(v25, v24, v12);
                v21 = v12;
                v22 = sub_1D5E26E28(&unk_1F50F4758);
                v23 = swift_allocObject();
                *(v23 + 16) = v25;
                *(v23 + 24) = v24;
                *(v23 + 32) = v22;
                *(v23 + 40) = 0;
                sub_1D6C4D24C(v23 | 0x3000000000000000);
                sub_1D60107F0(v25, v24, v21);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1D6286AF0(uint64_t *a1, __n128 a2)
{
  v5 = *v2;
  sub_1D62707E8(a1, *(*v2 + 16), a2);
  if (!v3)
  {
    v6 = *(v5 + 104);
    v7 = *(v5 + 136);
    v28 = *(v5 + 120);
    v29[0] = v7;
    *(v29 + 9) = *(v5 + 145);
    v8 = *(v5 + 40);
    v9 = *(v5 + 72);
    v24 = *(v5 + 56);
    v25 = v9;
    v26 = *(v5 + 88);
    v27 = v6;
    v22 = *(v5 + 24);
    v23 = v8;
    memmove(__dst, (v5 + 24), 0x89uLL);
    if (sub_1D60486AC(__dst) != 1)
    {
      v18 = __dst[6];
      v19[0] = v31[0];
      *(v19 + 9) = *(v31 + 9);
      v14 = __dst[2];
      v15 = __dst[3];
      v16 = __dst[4];
      v17 = __dst[5];
      v12 = __dst[0];
      v13 = __dst[1];
      v20[6] = v28;
      v21[0] = v29[0];
      *(v21 + 9) = *(v29 + 9);
      v20[2] = v24;
      v20[3] = v25;
      v20[4] = v26;
      v20[5] = v27;
      v20[0] = v22;
      v20[1] = v23;
      sub_1D62B4994(v20, v10);
      sub_1D62867D4(a1);
      v10[6] = v18;
      v11[0] = v19[0];
      *(v11 + 9) = *(v19 + 9);
      v10[2] = v14;
      v10[3] = v15;
      v10[4] = v16;
      v10[5] = v17;
      v10[0] = v12;
      v10[1] = v13;
      sub_1D62B49F0(v10);
    }
  }
}

double sub_1D6286C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2 || (, sub_1D6273544(a1, a2), , !v4))
  {
    if (!a3 || (, sub_1D6273544(a1, a3), , !v4))
    {
      if (a4)
      {

        sub_1D6273544(a1, a4);
      }
    }
  }

  return result;
}

uint64_t sub_1D6286D00(uint64_t result)
{
  v3 = result;
  v4 = *v1;
  if (*v1)
  {
    v5 = v1[1];

    sub_1D6273544(v3, v4);
    if (v2)
    {
LABEL_6:
      v6 = v4;
      v7 = v5;
      return sub_1D5CDE22C(v6, v7);
    }

    sub_1D6273544(v3, v5);
    result = sub_1D5CDE22C(v4, v5);
  }

  v4 = v1[2];
  if (v4)
  {
    v5 = v1[3];

    sub_1D6273544(v3, v4);
    if (v2)
    {
      goto LABEL_6;
    }

    sub_1D6273544(v3, v5);
    result = sub_1D5CDE22C(v4, v5);
  }

  v8 = v1[4];
  if (v8)
  {
    v9 = v1[5];

    sub_1D6273544(v3, v8);
    if (!v2)
    {
      sub_1D6273544(v3, v9);
    }

    v6 = v8;
    v7 = v9;
    return sub_1D5CDE22C(v6, v7);
  }

  return result;
}

uint64_t sub_1D6286E38(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = sub_1D726393C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - v12;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v35 - v17;
  v19 = *(v7 + 16);
  v37 = v3;
  v44 = v19;
  (v19)(&v35 - v17, v3, v6, v16);
  v40 = *(*(v5 - 8) + 48);
  v20 = v40(v18, 1, v5);
  v35 = a1;
  if (v20 == 1)
  {
    v21 = v7;
    (*(v7 + 8))(v18, v6);
LABEL_7:
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v7 = v21;
    v23 = v38;
    goto LABEL_8;
  }

  v21 = v7;
  sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v22 = *(&v42 + 1);
  v23 = v38;
  if (!*(&v42 + 1))
  {
LABEL_8:
    sub_1D5BFB774(&v41, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
    goto LABEL_9;
  }

  v24 = v43;
  __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
  v25 = v39;
  (*(v24 + 8))(v35, v22, v24);
  result = __swift_destroy_boxed_opaque_existential_1(&v41);
  v39 = v25;
  if (v25)
  {
    return result;
  }

  v7 = v21;
  v23 = v38;
LABEL_9:
  v27 = v37;
  v44(v13, v37 + *(v23 + 36), v6);
  if (v40(v13, 1, v5) == 1)
  {
    (*(v7 + 8))(v13, v6);
LABEL_15:
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    goto LABEL_16;
  }

  sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v28 = *(&v42 + 1);
  if (!*(&v42 + 1))
  {
LABEL_16:
    sub_1D5BFB774(&v41, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
    goto LABEL_17;
  }

  v29 = v43;
  __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
  v30 = v39;
  (*(v29 + 8))(v35, v28, v29);
  result = __swift_destroy_boxed_opaque_existential_1(&v41);
  v39 = v30;
  if (!v30)
  {
    v23 = v38;
LABEL_17:
    v31 = v27 + *(v23 + 40);
    v32 = v36;
    v44(v36, v31, v6);
    if (v40(v32, 1, v5) == 1)
    {
      (*(v7 + 8))(v32, v6);
    }

    else
    {
      sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
      if (swift_dynamicCast())
      {
        v33 = *(&v42 + 1);
        if (*(&v42 + 1))
        {
          v34 = v43;
          __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
          (*(v34 + 8))(v35, v33, v34);
          return __swift_destroy_boxed_opaque_existential_1(&v41);
        }

        return sub_1D5BFB774(&v41, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
      }
    }

    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    return sub_1D5BFB774(&v41, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  }

  return result;
}

double sub_1D62872F8(uint64_t a1)
{
  if (*(v1 + 48) != 4)
  {
    return sub_1D6286C44(a1, *v1, *(v1 + 8), *(v1 + 16));
  }

  sub_1D6286D00(a1);
  return result;
}

void sub_1D62873B8(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v63 = a1;
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v8 = *(v2 + 48);
  v7 = *(v2 + 56);
  v9 = *(v2 + 64);
  *&v55 = *(v2 + 16);
  *(&v55 + 1) = v4;
  *&v56 = v5;
  *(&v56 + 1) = v6;
  *&v57 = v8;
  *(&v57 + 1) = v7;
  LOBYTE(v58) = v9;
  sub_1D62B753C(v55, v4, v5, v6, v8, v7, v9);
  sub_1D62865A0(v63);
  sub_1D62B4A44(v55, v4, v5, v6, v8, v7, v9);
  if (!v34)
  {
    v10 = *(v2 + 88);
    v11 = v63;
    v12 = v2;
    if (v10 != 255 && (v10 & 1) != 0)
    {
      v13 = *(v2 + 72);
      v14 = *(v2 + 80);
      sub_1D6189668(v13, v14, *(v2 + 88));
      sub_1D6189668(v13, v14, v10);
      v15 = sub_1D5E26E28(&unk_1F5112988);
      v16 = swift_allocObject();
      *(v16 + 16) = v13;
      *(v16 + 24) = v14;
      *(v16 + 32) = v15;
      *(v16 + 40) = 0;
      sub_1D6C4D24C(v16 | 0x3000000000000000);
      sub_1D60107F0(v13, v14, v10);
    }

    v17 = *(v3 + 112);
    if (v17 != 255 && (v17 & 1) != 0)
    {
      v18 = *(v12 + 96);
      v19 = *(v12 + 104);
      sub_1D6189668(v18, v19, *(v12 + 112));
      sub_1D6189668(v18, v19, v17);
      v20 = sub_1D5E26E28(&unk_1F51129B0);
      v21 = swift_allocObject();
      *(v21 + 16) = v18;
      *(v21 + 24) = v19;
      *(v21 + 32) = v20;
      *(v21 + 40) = 0;
      sub_1D6C4D24C(v21 | 0x3000000000000000);
      sub_1D60107F0(v18, v19, v17);
    }

    v22 = *(v12 + 120);
    if (v22)
    {
      sub_1D6273544(v11, v22);
    }

    v23 = *(v12 + 128);
    if (v23)
    {
      sub_1D6273544(v11, v23);
    }

    v24 = *(v12 + 136);
    if (v24)
    {
      sub_1D6273544(v11, v24);
    }

    v25 = *(v12 + 144);
    if (v25)
    {
      sub_1D6273544(v11, v25);
    }

    v26 = *(v12 + 232);
    v27 = *(v12 + 264);
    v53 = *(v12 + 248);
    v54[0] = v27;
    *(v54 + 9) = *(v12 + 273);
    v28 = *(v12 + 168);
    v29 = *(v12 + 200);
    v49 = *(v12 + 184);
    v50 = v29;
    v51 = *(v12 + 216);
    v52 = v26;
    v47 = *(v12 + 152);
    v48 = v28;
    v30 = *(v12 + 232);
    v31 = *(v12 + 264);
    v61 = *(v12 + 248);
    v62[0] = v31;
    *(v62 + 9) = *(v12 + 273);
    v32 = *(v12 + 168);
    v33 = *(v12 + 200);
    v57 = *(v12 + 184);
    v58 = v33;
    v59 = *(v12 + 216);
    v60 = v30;
    v55 = *(v12 + 152);
    v56 = v32;
    if (sub_1D60486AC(&v55) != 1)
    {
      v43 = v61;
      v44[0] = v62[0];
      *(v44 + 9) = *(v62 + 9);
      v39 = v57;
      v40 = v58;
      v41 = v59;
      v42 = v60;
      v37 = v55;
      v38 = v56;
      v45[6] = v53;
      v46[0] = v54[0];
      *(v46 + 9) = *(v54 + 9);
      v45[2] = v49;
      v45[3] = v50;
      v45[4] = v51;
      v45[5] = v52;
      v45[0] = v47;
      v45[1] = v48;
      sub_1D62B4994(v45, v35);
      sub_1D62867D4(v11);
      v35[6] = v43;
      v36[0] = v44[0];
      *(v36 + 9) = *(v44 + 9);
      v35[2] = v39;
      v35[3] = v40;
      v35[4] = v41;
      v35[5] = v42;
      v35[0] = v37;
      v35[1] = v38;
      sub_1D62B49F0(v35);
    }
  }
}

void sub_1D628773C(uint64_t *a1)
{
  swift_beginAccess();
  v4 = *(v1 + 72);
  if (!v4 || (, sub_1D62707E8(a1, v4, v5), , !v2))
  {
    swift_beginAccess();
    v6 = *(v1 + 88);

    sub_1D6272D88(a1, v6);
  }
}

void sub_1D6287818(uint64_t *a1)
{
  v4 = *(v1 + 40);

  sub_1D6EE4610(a1);

  if (!v2)
  {
    if (v4)
    {
      sub_1D62707E8(a1, v4, v5);
    }
  }
}

double sub_1D6287888(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1 && (a3 & 0xF000000000000007) != 0xF000000000000007)
  {

    sub_1D6E5C118(a1);
  }

  return result;
}

uint64_t sub_1D62878FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v8 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + *(v7 + 36), v4, v5);
  sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  if (swift_dynamicCast())
  {
    v9 = *(&v13 + 1);
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    (*(v10 + 8))(a1, v9, v10);
    return __swift_destroy_boxed_opaque_existential_1(&v12);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    return sub_1D5BFB774(&v12, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  }
}

void sub_1D6287A8C(uint64_t *a1)
{
  v4 = *v1;
  v5 = *v1 >> 60;
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {
        swift_retain_n();

        sub_1D6287A8C(a1);
        if (v2)
        {

          return;
        }

        sub_1D62938C4(a1);
      }

      else
      {
        if (v5 != 8)
        {
          return;
        }

        v13 = *((v4 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        swift_retain_n();

        sub_1D6287A8C(a1);
        if (v2)
        {

          return;
        }

        sub_1D6285444(a1, v13, sub_1D6287A8C);
      }

      goto LABEL_24;
    }

    v14 = v4 & 0xFFFFFFFFFFFFFFFLL;
    if (v5 != 5)
    {
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);

      sub_1D628D658(a1, v16, v17, sub_1D6287A8C);

LABEL_24:

      return;
    }

    v15 = *(v14 + 16);

    sub_1D62846E0(a1, v15, sub_1D6287A8C);
    if (v2)
    {
    }

    else
    {

      sub_1D6287A8C(a1);
    }
  }

  else
  {
    if (v5 > 1)
    {
      v6 = (v4 & 0xFFFFFFFFFFFFFFFLL);
      if (v5 == 2)
      {
        sub_1D619F180(a1);
        return;
      }

      if (v5 != 3)
      {
        sub_1D62881C8(a1);
        return;
      }

      v7 = v6[2];
      v8 = v6[3];
      v9 = v6[4];

      sub_1D626CBD0(a1, v7, v8, v9, v10, v11, v12);

      goto LABEL_24;
    }

    if (v5)
    {
      sub_1D6287E20(a1);
    }

    else
    {
      sub_1D6B7947C(a1, *(v4 + 16));
    }
  }
}

void sub_1D6287E20(uint64_t *a1)
{
  v3 = v2;
  v4 = a1;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 24);
  v25 = *(v1 + 32);
  v26 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v23 = *(v1 + 80);
  v24 = *(v1 + 72);
  v29 = *(v1 + 88);
  v27 = *(v1 + 96);
  if (v7 == 1)
  {
    v11 = *(v1 + 16);
    v28[0] = v5;
    v28[1] = v6;
    v28[2] = v11;
    v30 = 5;
    sub_1D5FB995C(v5, v6, v11, 1);
    v12 = sub_1D703E0C8(v28, &v30);
    if (v2)
    {
      return;
    }

    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    *(v14 + 24) = v6;
    *(v14 + 32) = v13;
    *(v14 + 40) = 0;
    v15 = 0x3000000000000000;
    v4 = a1;
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    *(v14 + 24) = v6;
    v15 = 0x8000000000000000;
  }

  sub_1D6C4D24C(v15 | v14);

  v16 = v8 >> 8;
  if (v8 >> 8 > 0xFE)
  {
    v17 = v9;
    goto LABEL_23;
  }

  v17 = v9;
  if (v8 >> 8 <= 1)
  {
    if (v16)
    {
      if (!v26)
      {
        v19 = v25;
        v18 = 0;
        goto LABEL_22;
      }

      sub_1D5F586A4(v25, v26, v8, 1);
      sub_1D6273544(v4, v26);
      if (v3)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v28[0] = v25;
      sub_1D5F586A4(v25, v26, v8, 0);

      sub_1D6290ACC(v4);
      if (v3)
      {

LABEL_17:
        v19 = v25;
        v18 = v26;
        goto LABEL_18;
      }
    }

    v19 = v25;
    v18 = v26;
    goto LABEL_22;
  }

  v18 = v26;
  if (v16 == 2)
  {
    sub_1D5F586A4(v25, v26, v8, 2);
    sub_1D6273544(v4, v25);
    v19 = v25;
    v18 = v26;
    if (!v3)
    {
      goto LABEL_22;
    }

LABEL_18:
    sub_1D5FBACE0(v19, v18, v8);
    return;
  }

  v19 = v25;
LABEL_22:
  sub_1D5FBACE0(v19, v18, v8);
LABEL_23:
  if ((~v10 & 0xF000000000000007) != 0)
  {
    v28[0] = v10;
    sub_1D5FB99B0(v10, v17);

    sub_1D62895DC(v4);

    if (v3)
    {
      sub_1D5FBACF4(v10, v17);
      return;
    }

    v28[0] = v17;

    sub_1D62895DC(v4);

    sub_1D5FBACF4(v10, v17);
  }

  if (v29)
  {
    sub_1D5C75A4C(v24, v23, 1);
    sub_1D5C75A4C(v24, v23, 1);
    v20 = sub_1D5E26E28(&unk_1F50F4708);
    v21 = swift_allocObject();
    *(v21 + 16) = v24;
    *(v21 + 24) = v23;
    *(v21 + 32) = v20;
    *(v21 + 40) = 0;
    sub_1D6C4D24C(v21 | 0x3000000000000000);
    sub_1D5D2F2C8(v24, v23, 1);
  }

  if ((~v27 & 0xF000000000000007) != 0)
  {
    v28[0] = v27;
    sub_1D5F33D5C(v27);
    sub_1D62A17B0(v4);
    sub_1D5F33D8C(v27);
  }
}

void sub_1D62881C8(uint64_t *a1)
{
  v18 = v1[4];
  v19 = v1[3];
  v17 = v1[5];
  v20 = v1[7];
  v4 = v1[9];
  v15 = v1[8];
  v16 = v1[6];
  v6 = v1[10];
  v5 = v1[11];
  v8 = v1[12];
  v7 = v1[13];
  v9 = v1[14];

  sub_1D6298B34(a1);
  if (v2)
  {
    goto LABEL_3;
  }

  v14 = v7;
  v13 = v9;

  sub_1D6298B34(a1);

  sub_1D6298B34(a1);

  if ((~v19 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
    v11 = v4;
    v10 = v5;
    v12 = v20;
  }

  else
  {
    v11 = v4;
    v10 = v5;
    v12 = v20;
  }

  if ((~v18 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v17 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v16 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v12 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v15 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v11 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v6 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v10 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v8 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v14 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v13 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
LABEL_3:
  }
}

uint64_t sub_1D628861C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = type metadata accessor for FormatSwitchValue.CaseValue(0, v8, v9, a4);
  result = sub_1D69F81A0(a1, v7, v10, &off_1F51420E8);
  if (!v5)
  {
    v13 = type metadata accessor for FormatSwitchValue.DefaultValue(0, v8, v9, v12);
    return sub_1D6285A8C(a1, v13);
  }

  return result;
}

unint64_t sub_1D62886C0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = result;
  if (a2 >= 2)
  {
    v5 = a3;
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    sub_1D5D0A57C(v6);
    sub_1D5D0A57C(v7);
    sub_1D62886C0(v4, v6, v7);
    sub_1D5D0A58C(v6);
    result = sub_1D5D0A58C(v7);
    if (v3)
    {
      return result;
    }

    a3 = v5;
  }

  if (a3 >= 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);
    sub_1D62886C0(v4, v8, v9);
    sub_1D5D0A58C(v8);
    return sub_1D5D0A58C(v9);
  }

  return result;
}

unint64_t sub_1D6288794(unint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = result;
  if (a2 >= 3)
  {
    v5 = a3;
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    sub_1D5D0AFBC(v6);
    sub_1D5D0AFBC(v7);
    sub_1D6288794(v4, v6, v7);
    sub_1D5D0AFCC(v6);
    result = sub_1D5D0AFCC(v7);
    if (v3)
    {
      return result;
    }

    a3 = v5;
  }

  if (a3 >= 3)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    sub_1D5D0AFBC(v8);
    sub_1D5D0AFBC(v9);
    sub_1D6288794(v4, v8, v9);
    sub_1D5D0AFCC(v8);
    return sub_1D5D0AFCC(v9);
  }

  return result;
}

double sub_1D6288868(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  sub_1D629CE04(a1);

  if (!v3)
  {

    sub_1D629CE04(a1);
  }

  return result;
}

double sub_1D62888F4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1D629836C(a1);

  if (!v3)
  {

    sub_1D629836C(a1);
  }

  return result;
}

double sub_1D6288980(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  sub_1D629DD00(a1);

  if (!v3)
  {

    sub_1D629DD00(a1);
  }

  return result;
}

uint64_t sub_1D6288A0C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = a1;
  v28 = a2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v13 = *(v7 + 16);
  v13(&v21 - v14, v2, v6, v12);
  sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  if (swift_dynamicCast())
  {
    v22 = v13;
    v24 = v2;
    v16 = *(&v26 + 1);
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
    v17 = *(v15 + 8);
    v23 = v5;
    v17(v5, v16, v15);
    result = __swift_destroy_boxed_opaque_existential_1(&v25);
    if (v3)
    {
      return result;
    }

    v5 = v23;
    v4 = v24;
    v13 = v22;
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_1D5BFB774(&v25, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  }

  (v13)(v9, v4 + *(v28 + 36), v6);
  if (swift_dynamicCast())
  {
    v19 = *(&v26 + 1);
    v20 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
    (*(v20 + 8))(v5, v19, v20);
    return __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    return sub_1D5BFB774(&v25, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  }
}

void sub_1D6288CD4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v5 = a3;
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    sub_1D5D0A57C(v6);

    sub_1D6288CD4(a1, v6, v7);
    sub_1D5D0A58C(v6);

    if (v3)
    {
      return;
    }

    a3 = v5;
  }

  sub_1D6273C90(a1, a3);
}

void sub_1D6288D68(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 62 == 1)
  {
    v5 = a3;
    v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v6);

    sub_1D6288D68(a1, v6, v7);
    sub_1D5EB15C4(v6);

    if (v3)
    {
      return;
    }

    a3 = v5;
  }

  sub_1D62740D0(a1, a3);
}

void sub_1D6288E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5D0ACAC(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
  sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);

  if (swift_dynamicCast())
  {
    v6 = *(&v9 + 1);
    v7 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    (*(v7 + 8))(a1, v6, v7);
    __swift_destroy_boxed_opaque_existential_1(&v8);
    if (v3)
    {
      return;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    sub_1D5BFB774(&v8, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  }

  sub_1D62768C8(a1, a3);
}

double sub_1D6288F48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_2;
  }

  v8 = a3;
  v9 = a5;
  v10 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v11 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v12 = a1;

  a4(v12, v10, v11);

  if (!v5)
  {
    a5 = v9;
    a3 = v8;
    a1 = v12;
LABEL_2:
    sub_1D6273A6C(a1, a3, a5);
  }

  return result;
}

void sub_1D6288FFC(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v9 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v6, v7);
  sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  if (swift_dynamicCast())
  {
    v10 = *(&v16 + 1);
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    (*(v11 + 8))(a1, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v15);
    if (v3)
    {
      return;
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_1D5BFB774(&v15, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  }

  v12 = sub_1D61834A8(a2);
  v14 = type metadata accessor for FormatSelectorValueSelector(0, v6, *(a2 + 24), v13);

  sub_1D69F81A0(a1, v12, v14, &off_1F51404E8);
}

void sub_1D62891F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v11 = *v9;
  v12 = *v9 >> 61;
  if (v12 > 3)
  {
    if (v12 > 5)
    {
      if (v12 == 6)
      {
        v26 = v11 & 0x1FFFFFFFFFFFFFFFLL;
        v27 = *(v26 + 128);
        v47 = *(v26 + 112);
        v48 = v27;
        v49 = *(v26 + 144);
        LOBYTE(v50[0]) = *(v26 + 160);
        v28 = *(v26 + 64);
        v43 = *(v26 + 48);
        v44 = v28;
        v29 = *(v26 + 96);
        v45 = *(v26 + 80);
        v46 = v29;
        v30 = *(v26 + 32);
        v41 = *(v26 + 16);
        v42 = v30;
        sub_1D6289EC0(a1);
      }

      else
      {
        memmove(&v41, ((v11 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0xA2uLL);
        v39 = sub_1D62B4E2C(&v41);
        if (v39 > 1)
        {
          if (v39 == 2)
          {
            v40 = sub_1D5D04BC4(&v41);
            v51[7] = *(v40 + 112);
            v51[8] = *(v40 + 128);
            v51[9] = *(v40 + 144);
            v52 = *(v40 + 160);
            v51[3] = *(v40 + 48);
            v51[4] = *(v40 + 64);
            v51[5] = *(v40 + 80);
            v51[6] = *(v40 + 96);
            v51[0] = *v40;
            v51[1] = *(v40 + 16);
            v51[2] = *(v40 + 32);
            sub_1D62914C8(a1);
          }
        }

        else
        {
          sub_1D5D04BC4(&v41);
        }
      }
    }

    else
    {
      v13 = v11 & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 == 4)
      {
        v14 = *(v13 + 144);
        v48 = *(v13 + 128);
        v49 = v14;
        v50[0] = *(v13 + 160);
        *(v50 + 9) = *(v13 + 169);
        v15 = *(v13 + 80);
        v44 = *(v13 + 64);
        v45 = v15;
        v16 = *(v13 + 112);
        v46 = *(v13 + 96);
        v47 = v16;
        v17 = *(v13 + 32);
        v41 = *(v13 + 16);
        v42 = v17;
        v43 = *(v13 + 48);
        sub_1D6289BE4(a1);
      }

      else
      {
        v36 = *(v13 + 24);
        *&v41 = *(v13 + 16);

        swift_retain_n();
        sub_1D6287A8C(a1);
        if (v10)
        {
        }

        else
        {

          if (v36)
          {
            sub_1D62938C4(a1);
          }
        }
      }
    }
  }

  else if (v12 > 1)
  {
    v18 = (v11 & 0x1FFFFFFFFFFFFFFFLL);
    if (v12 == 2)
    {
      v19 = v18[6];
      v20 = v18[7];
      v21 = v18[8];
      v45 = v18[5];
      v46 = v19;
      v47 = v20;
      v48 = v21;
      v22 = v18[2];
      v41 = v18[1];
      v42 = v22;
      v23 = v18[4];
      v43 = v18[3];
      v44 = v23;
      v24 = v21;
      sub_1D60865E4(&v41, v51);
      sub_1D627683C(a1, v24);
      sub_1D6086640(&v41);
    }

    else
    {
      *&v41 = *(v18 + 2);
      sub_1D6289B90(a1);
    }
  }

  else if (v12)
  {
    v31 = (v11 & 0x1FFFFFFFFFFFFFFFLL);
    v32 = v31[2];
    v34 = v31[8];
    v33 = v31[9];

    sub_1D5D615EC(v34, v33);
    sub_1D627683C(a1, v32);
    if (v10)
    {

      sub_1D5CDE22C(v34, v33);
    }

    else if (v34)
    {

      sub_1D6273544(a1, v34);
      sub_1D6273544(a1, v33);
      sub_1D5CDE22C(v34, v33);

      sub_1D5CDE22C(v34, v33);
    }

    else
    {

      sub_1D5CDE22C(0, v33);
    }
  }

  else
  {
    *&v41 = *(v11 + 16);
    sub_1D62895DC(a1);
  }
}

void sub_1D62895DC(uint64_t a1)
{
  v4 = *v1;
  v5 = *v1 >> 60;
  if (v5 <= 4)
  {
    if (v5 < 3)
    {
      return;
    }

    v13 = v4 & 0xFFFFFFFFFFFFFFFLL;
    if (v5 != 3)
    {
      v32 = *(v13 + 24);
      v36 = *(v13 + 16);
      swift_retain_n();

      sub_1D62895DC(a1);
      if (!v2)
      {

        sub_1D6273600(a1, v32);
        goto LABEL_31;
      }

      goto LABEL_25;
    }

    v14 = *(v13 + 16);
    v15 = *(v13 + 24);

    sub_1D628D658(a1, v14, v15, sub_1D62895DC);

    goto LABEL_16;
  }

  if (v5 > 8)
  {
    v16 = v4 & 0xFFFFFFFFFFFFFFFLL;
    if (v5 != 9)
    {
      if (v5 != 10)
      {
        v29 = *(v16 + 24);
        v30 = *(v16 + 32);
        v36 = *(v16 + 16);

        swift_retain_n();

        sub_1D62895DC(a1);
        if (!v2)
        {

          sub_1D6285444(a1, v29, sub_1D62895DC);
          v36 = v30;

          sub_1D62895DC(a1);

          goto LABEL_31;
        }

LABEL_25:

        return;
      }

      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      v19 = *(v16 + 32);

      sub_1D628D6F0(a1, v17, v18, v19);

LABEL_16:

      return;
    }

    v21 = *(v16 + 16);
    v20 = *(v16 + 24);
    v22 = *(v16 + 32);
    v23 = *(v16 + 40);
    v24 = *(v16 + 48);
    if (v23 > 3)
    {
      if (*(v16 + 40) > 5u)
      {
        v25 = *(v16 + 16);
        v26 = *(v16 + 24);
        v27 = *(v16 + 32);
        if (v23 == 6)
        {
          v28 = 6;
        }

        else
        {
          v28 = 7;
        }
      }

      else
      {
        v25 = *(v16 + 16);
        v26 = *(v16 + 24);
        v27 = *(v16 + 32);
        if (v23 == 4)
        {
          v28 = 4;
        }

        else
        {
          v28 = 5;
        }
      }
    }

    else if (*(v16 + 40) > 1u)
    {
      if (v23 != 2)
      {
        v36 = *(v16 + 16);
        v37 = v20;
        v38 = v22;
        v39 = 7;
        sub_1D5F58038(v21, v20, v22, 3);

        sub_1D5F58038(v21, v20, v22, 3);
        v33 = sub_1D703E0C8(&v36, &v39);
        if (v2)
        {
          sub_1D5F57FEC(v21, v20, v22, 3);

          return;
        }

        v34 = v33;
        v35 = swift_allocObject();
        *(v35 + 16) = v21;
        *(v35 + 24) = v20;
        *(v35 + 32) = v34;
        *(v35 + 40) = 0;

        sub_1D6C4D24C(v35 | 0x3000000000000000);

        goto LABEL_42;
      }

      v25 = *(v16 + 16);
      v26 = *(v16 + 24);
      v27 = *(v16 + 32);
      v28 = 2;
    }

    else
    {
      v25 = *(v16 + 16);
      v26 = *(v16 + 24);
      v27 = *(v16 + 32);
      v28 = v23 != 0;
    }

    sub_1D5F58038(v25, v26, v27, v28);

LABEL_42:
    v36 = v24;

    sub_1D62895DC(a1);
    sub_1D5F57FEC(v21, v20, v22, v23);

    return;
  }

  if ((v5 - 5) < 2)
  {
    return;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFLL;
  if (v5 != 7)
  {
    v31 = *(v6 + 24);
    v36 = *(v6 + 16);
    swift_retain_n();

    sub_1D62895DC(a1);
    if (!v2)
    {

      sub_1D6285444(a1, v31, sub_1D62895DC);
LABEL_31:

      return;
    }

    goto LABEL_25;
  }

  if (*(v6 + 40) == 3)
  {
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    v9 = *(v6 + 32);
    v36 = v8;
    v37 = v7;
    v38 = v9;
    v39 = 7;
    sub_1D5F58038(v8, v7, v9, 3);
    sub_1D5F58038(v8, v7, v9, 3);
    v10 = sub_1D703E0C8(&v36, &v39);
    if (!v2)
    {
      v11 = v10;
      v12 = swift_allocObject();
      *(v12 + 16) = v8;
      *(v12 + 24) = v7;
      *(v12 + 32) = v11;
      *(v12 + 40) = 0;

      sub_1D6C4D24C(v12 | 0x3000000000000000);
    }

    sub_1D5F57FEC(v8, v7, v9, 3);
  }
}

void sub_1D6289BE4(uint64_t a1)
{
  v5 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 80);
  v16[2] = *(v1 + 64);
  v17 = v8;
  v18 = *(v1 + 96);
  v9 = *(v1 + 48);
  v16[0] = *(v1 + 32);
  v16[1] = v9;
  v10 = *(v1 + 104);
  v11 = *(v1 + 120);
  v12 = *(v1 + 136);
  v13 = *(v1 + 152);
  v21 = *(v1 + 168);
  v19[2] = v12;
  v20 = v13;
  v19[0] = v10;
  v19[1] = v11;
  swift_bridgeObjectRetain_n();

  sub_1D6273544(a1, v5);
  if (v2)
  {

    swift_bridgeObjectRelease_n();
  }

  else
  {

    sub_1D6273544(a1, v4);

    swift_bridgeObjectRelease_n();
    sub_1D6273544(a1, v6);
    sub_1D6273544(a1, v7);
    if (v18)
    {

      sub_1D5D615EC(v17, *(&v17 + 1));
      sub_1D627683C(a1, *&v16[0]);
      if (v17)
      {

        sub_1D6273544(a1, v17);
        sub_1D6273544(a1, *(&v17 + 1));
        sub_1D5CDE22C(v17, *(&v17 + 1));
      }

      sub_1D60FBD38(v16);
    }

    else
    {
      v22 = *&v16[0];
      sub_1D62895DC(a1);
    }

    v14 = *&v19[0];
    if (v21)
    {
      v15 = v20;

      sub_1D5D615EC(v15, *(&v15 + 1));
      sub_1D627683C(a1, v14);
      if (v15)
      {

        sub_1D6273544(a1, v15);
        sub_1D6273544(a1, *(&v15 + 1));
        sub_1D5CDE22C(v15, *(&v15 + 1));
      }

      sub_1D60FBD38(v19);
    }

    else
    {
      v22 = *&v19[0];
      sub_1D62895DC(a1);
    }
  }
}

void sub_1D6289EC0(uint64_t *a1)
{
  v4 = (v1 + 1);
  v33 = *v1;

  sub_1D629836C(a1);
  if (v2)
  {
  }

  else
  {

    v5 = *(v1 + 15);
    v31 = *(v1 + 13);
    v32[0] = v5;
    *(v32 + 9) = *(v1 + 129);
    v6 = *(v1 + 7);
    v27 = *(v1 + 5);
    v28 = v6;
    v7 = *(v1 + 11);
    v29 = *(v1 + 9);
    v30 = v7;
    v8 = *(v1 + 3);
    v25 = *v4;
    v26 = v8;
    if (sub_1D60486AC(&v25) != 1)
    {
      v21 = v31;
      v22[0] = v32[0];
      *(v22 + 9) = *(v32 + 9);
      v17 = v27;
      v18 = v28;
      v19 = v29;
      v20 = v30;
      v15 = v25;
      v16 = v26;
      v9 = *(v1 + 15);
      v23[6] = *(v1 + 13);
      v24[0] = v9;
      *(v24 + 9) = *(v1 + 129);
      v10 = *(v1 + 7);
      v23[2] = *(v1 + 5);
      v23[3] = v10;
      v11 = *(v1 + 11);
      v23[4] = *(v1 + 9);
      v23[5] = v11;
      v12 = *(v1 + 3);
      v23[0] = *v4;
      v23[1] = v12;
      sub_1D62B4994(v23, v13);
      sub_1D62867D4(a1);
      v13[6] = v21;
      v14[0] = v22[0];
      *(v14 + 9) = *(v22 + 9);
      v13[2] = v17;
      v13[3] = v18;
      v13[4] = v19;
      v13[5] = v20;
      v13[0] = v15;
      v13[1] = v16;
      sub_1D62B49F0(v13);
    }
  }
}

void sub_1D628A050(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = v1[4];

  sub_1D6273544(a1, v4);
  if (v2)
  {
  }

  else
  {
    sub_1D6273544(a1, v5);

    sub_1D6273544(a1, v7);
    sub_1D6273544(a1, v6);
    sub_1D6273544(a1, v8);
  }
}

void sub_1D628A124(uint64_t a1)
{
  v5 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 48);
  if (v9 > 2)
  {
    if (v9 == 3)
    {

      sub_1D6273544(a1, v5);
      if (!v2)
      {
        sub_1D6273544(a1, v4);

        sub_1D6273544(a1, v6);
        sub_1D6273544(a1, v7);
      }
    }

    else
    {
      if (v9 != 4)
      {
        return;
      }

      sub_1D6273544(a1, v5);
      if (!v2)
      {
        sub_1D6273544(a1, v4);

        sub_1D6273544(a1, v6);
        sub_1D6273544(a1, v7);
        sub_1D6273544(a1, v8);
        return;
      }
    }
  }

  else if (*(v1 + 48) && v9 != 1)
  {
    sub_1D628A310(a1);
  }

  else
  {
    sub_1D6273544(a1, *v1);
    if (!v2)
    {
      sub_1D6273544(a1, v4);
    }
  }
}

double sub_1D628A310(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];

  sub_1D6273544(a1, v4);
  if (!v2)
  {
    sub_1D6273544(a1, v5);

    sub_1D6273544(a1, v6);
    sub_1D6273544(a1, v7);

    sub_1D6273544(a1, v8);
    sub_1D6273544(a1, v9);
  }

  return result;
}

double sub_1D628A490(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];

  sub_1D6273544(a1, v4);
  if (!v2)
  {
    sub_1D6273544(a1, v5);

    sub_1D6273544(a1, v6);
    sub_1D6273544(a1, v7);
  }

  return result;
}

double sub_1D628A57C(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = *v1 >> 62;
  if ((v7 - 2) >= 2)
  {
    if (v7)
    {
      v11 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v12 = *(v11 + 16);
      v8 = *(v11 + 24);

      sub_1D5F33D5C(v8);
      sub_1D6273544(a1, v12);
      if (v2)
      {
LABEL_10:

        return sub_1D5F33D8C(v8);
      }

      v22 = v8;
      sub_1D5F33D5C(v8);
      sub_1D628A8D0(a1);
      sub_1D5F33D8C(v8);

      result = sub_1D5F33D8C(v8);
    }

    else if (!*(v4 + 40))
    {
      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      v15 = *(v4 + 32);
      v22 = v14;
      v23 = v13;
      v24 = v15;
      v25 = 1;
      sub_1D5D27950(v14, v13, v15, 0);
      sub_1D5D27950(v14, v13, v15, 0);
      v16 = sub_1D703E0C8(&v22, &v25);
      if (v2)
      {
LABEL_12:
        sub_1D5D28C84(v14, v13, v15, 0);
        return result;
      }

      v18 = v16;
      v19 = swift_allocObject();
      *(v19 + 16) = v14;
      *(v19 + 24) = v13;
      *(v19 + 32) = v18;
      *(v19 + 40) = 0;

      sub_1D6C4D24C(v19 | 0x3000000000000000);
      sub_1D5D28C84(v14, v13, v15, 0);
    }
  }

  if ((v5 & 0xFE) != 0xC && (v6 >> 62) - 2 >= 2)
  {
    if (v6 >> 62 == 1)
    {
      v9 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D5F33D5C(v8);
      sub_1D6273544(a1, v9);
      if (!v2)
      {
        v22 = v8;
        sub_1D5F33D5C(v8);
        sub_1D628A8D0(a1);
        sub_1D5F33D8C(v8);

        return sub_1D5F33D8C(v8);
      }

      goto LABEL_10;
    }

    if (!*(v6 + 40))
    {
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      v15 = *(v6 + 32);
      v22 = v14;
      v23 = v13;
      v24 = v15;
      v25 = 1;
      sub_1D5D27950(v14, v13, v15, 0);

      v17 = sub_1D703E0C8(&v22, &v25);
      if (v2)
      {
        goto LABEL_12;
      }

      v20 = v17;
      v21 = swift_allocObject();
      *(v21 + 16) = v14;
      *(v21 + 24) = v13;
      *(v21 + 32) = v20;
      *(v21 + 40) = 0;

      sub_1D6C4D24C(v21 | 0x3000000000000000);
      sub_1D5D28C84(v14, v13, v15, 0);
    }
  }

  return result;
}

double sub_1D628A8D0(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 62;
  if ((v4 - 2) >= 2)
  {
    if (v4)
    {
      v11 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = *(v11 + 16);
      v12 = *(v11 + 24);

      sub_1D5F33D5C(v12);
      sub_1D6273544(a1, v13);
      if (!v2)
      {
        v16[0] = v12;
        sub_1D5F33D5C(v12);
        sub_1D628A8D0(a1);
        sub_1D5F33D8C(v12);
      }

      return sub_1D5F33D8C(v12);
    }

    else if (!*(v3 + 40))
    {
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      v8 = *(v3 + 32);
      v16[0] = v7;
      v16[1] = v6;
      v16[2] = v8;
      v17 = 1;
      sub_1D5D27950(v7, v6, v8, 0);
      sub_1D5D27950(v7, v6, v8, 0);
      v9 = sub_1D703E0C8(v16, &v17);
      if (v2)
      {
        sub_1D5D28C84(v7, v6, v8, 0);
      }

      else
      {
        v14 = v9;
        v15 = swift_allocObject();
        *(v15 + 16) = v7;
        *(v15 + 24) = v6;
        *(v15 + 32) = v14;
        *(v15 + 40) = 0;

        sub_1D6C4D24C(v15 | 0x3000000000000000);
        sub_1D5D28C84(v7, v6, v8, 0);
      }
    }
  }

  return result;
}

double sub_1D628AAA0(uint64_t a1)
{
  if ((*v1 & 0xFELL) != 0xC)
  {
    v4 = v1[1];
    sub_1D5F33D5C(v4);
    sub_1D628A8D0(a1);
    return sub_1D5F33D8C(v4);
  }

  return result;
}

double sub_1D628AB14(uint64_t a1)
{
  v4 = *(v1 + 8);
  sub_1D5F33D5C(v4);
  sub_1D628A8D0(a1);
  return sub_1D5F33D8C(v4);
}

void sub_1D628AB78(uint64_t *a1)
{
  v3 = v1[1];
  v19 = *v1;
  v20 = v3;
  *&v24[11] = *(v1 + 91);
  v4 = v1[3];
  v21 = v1[2];
  v22 = v4;
  v5 = *(v1 + 4);
  v6 = v1[5];
  v23 = v5;
  *v24 = v6;
  v7 = v19;
  v8 = (v24[26] >> 1) & 8 | (*&v24[24] >> 13);
  if (v8 > 4)
  {
    if (v8 > 6)
    {
      if (v8 == 7 && (v19.n128_u8[8] & 0xFE) != 0xCLL)
      {
        v12.n128_u64[0] = v20;
        sub_1D62B50D4(v19.n128_i8[8]);
        sub_1D6012F58();
      }
    }

    else if (v8 == 5)
    {
      if (!BYTE8(v20))
      {
        v17 = v19;
        v18 = v20;
        v16 = 6;
        sub_1D62B48E4(&v19, &v12);
        v9 = sub_1D703E0C8(&v17, &v16);
        if (!v2)
        {
          v10 = v9;
          v11 = swift_allocObject();
          *(v11 + 16) = v7;
          *(v11 + 32) = v10;
          *(v11 + 40) = 0;

          sub_1D6C4D24C(v11 | 0x3000000000000000);
        }
      }
    }

    else
    {
      v12 = v19;
      *&v13 = v20;
      sub_1D628A57C(a1);
    }
  }

  else if ((v8 - 2) >= 3)
  {
    if (v8)
    {
      sub_1D628B13C(a1);
    }

    else
    {
      v12 = v19;
      v13 = v20;
      v14 = v21;
      v15 = WORD4(v21) & 0x1FF;
      sub_1D628AD9C(a1, v5);
    }
  }
}

void sub_1D628AD9C(uint64_t *a1, __n128 a2)
{
  v5 = *v2;
  v4 = *(v2 + 8);
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = (v9 >> 1) & 0xF;
  if (v10 <= 3)
  {
    if (v10 < 2)
    {
      return;
    }

    if (v10 == 2)
    {
      v11 = v9 >> 5;
      if (v9 >> 5 > 3)
      {
        if (v9 >> 5 > 5)
        {
          if (v11 == 6)
          {
            goto LABEL_5;
          }

          return;
        }
      }

      else
      {
        if (v9 >> 5 > 1)
        {
          if (v11 == 2 || BYTE1(v7) > 2u)
          {
            return;
          }

          if (BYTE1(v7))
          {
            if (BYTE1(v7) == 1)
            {
              if (v4)
              {
                v19 = *(v2 + 40);
                v21 = v8;
                sub_1D62B4D50(v5, v4, v7, v6, v8, v9 & 0xE1, sub_1D5F58484, sub_1D5F586A4, sub_1D5F58484);
                sub_1D6273544(a1, v4);
                sub_1D62B4C5C(v5, v4, v7, v6, v21, v19, v22);
              }
            }

            else
            {
              sub_1D6273544(a1, *v2);
            }

            return;
          }

          v25 = *v2;
          sub_1D62B4D50(v5, v4, v7, v6, v8, v9 & 0xE1, sub_1D5F58484, sub_1D5F586A4, sub_1D5F58484);
          sub_1D6290ACC(a1);
LABEL_14:

          return;
        }

        if (!v11)
        {
          return;
        }
      }
    }

    v15 = (v4 >> 59) & 2 | (v4 >> 2) & 1;
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        return;
      }

      v25 = v4 & 0xEFFFFFFFFFFFFFFBLL;

      v16 = a1;
      sub_1D6290ACC(a1);
      v17 = v3;
      if (!v3)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v16 = a1;
      if (v15)
      {
        v25 = v4 & 0xEFFFFFFFFFFFFFFBLL;

        sub_1D6290ACC(v16);
        v17 = v3;
        if (!v3)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v25 = *(v2 + 8);

        sub_1D6290ACC(v16);
        v17 = v3;
        if (!v3)
        {
LABEL_19:

          sub_1D6273544(v16, v7);
          if (!v17)
          {

            sub_1D6273544(v16, v6);
          }

          return;
        }
      }
    }

    return;
  }

  if (((v9 >> 1) & 0xF) < 7)
  {
    return;
  }

  if (v10 == 7)
  {
    v25 = *v2;
    v26 = v4;
    v27 = v7;
    v24 = 8;
    sub_1D62B4B68(v5, v4, v7, v6, v8, v9, a2);
    v12 = sub_1D703E0C8(&v25, &v24);
    if (v3)
    {
      return;
    }

    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    *(v14 + 24) = v4;
    *(v14 + 32) = v13;
    *(v14 + 40) = 0;

    sub_1D6C4D24C(v14 | 0x3000000000000000);
    goto LABEL_14;
  }

  if (v10 == 8)
  {
LABEL_5:
    v25 = *v2;
    v26 = v4;
    v27 = v7;
    v28 = v6;
    v29 = v8;
    v30 = v9 & 1;
    sub_1D6291E90(a1);
  }
}

void sub_1D628B13C(uint64_t a1)
{
  v3 = v1[1];
  v33 = *v1;
  v34 = v3;
  v36 = *(v1 + 24);
  v35 = v1[2];
  v4 = *(v1 + 7);
  v5 = *(v1 + 8);
  v6 = *(v1 + 9);
  v7 = *(v1 + 10);
  v8 = *(v1 + 11);
  v9 = *(v1 + 12);
  v10 = *(v1 + 106);
  v11 = *(v1 + 52);
  v12 = ((2 * HIBYTE(v36)) | ((v36 & 8) != 0));
  if (v12 - 5 < 0xA || v12 < 2)
  {
    goto LABEL_2;
  }

  v25 = *(v1 + 10);
  v26 = *(v1 + 9);
  v28 = a1;
  v14 = v2;
  v15 = v34;
  v27 = v33;
  if (v12 - 3 < 2)
  {
    v24 = v4;
    v16 = *(&v33 + 1);
    v31 = v33;
    v32 = v34;
    v37 = 5;
    sub_1D5FD78CC(&v33, &v29);
    sub_1D5FD78CC(&v33, &v29);

    v17 = sub_1D703E0C8(&v31, &v37);

    v14 = v2;
    if (v2)
    {

      sub_1D5FD7B18(&v33);
      return;
    }

    v22 = swift_allocObject();
    *(v22 + 16) = v27;
    *(v22 + 24) = v16;
    *(v22 + 32) = v17;
    *(v22 + 40) = 0;
    sub_1D6C4D24C(v22 | 0x3000000000000000);

    v21 = v36;
    v4 = v24;
    switch((2 * HIBYTE(v36)) | ((v36 & 8) != 0))
    {
      case 1:
      case 5:
      case 6:
      case 7:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
        break;
      case 2:
        v15 = v34;
        v27 = v33;
        goto LABEL_17;
      default:
        sub_1D5FD7B18(&v33);
        break;
    }

    v2 = 0;
LABEL_22:
    a1 = v28;
    goto LABEL_23;
  }

  v21 = v36 & 0xF7;
  sub_1D5E1E0D4(v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), v36 & 0xF7, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
LABEL_17:
  if (v21 >> 4 == 3)
  {
    v2 = v14;
    v29 = v27;
    LOWORD(v30) = v15;
    sub_1D62921EC(v28);
    sub_1D5FD7B18(&v33);
    if (v14)
    {
      return;
    }

    goto LABEL_22;
  }

  sub_1D5FD7B18(&v33);
  a1 = v28;
  v2 = v14;
LABEL_23:
  v7 = v25;
  v6 = v26;
LABEL_2:
  v13 = v11 | (v10 << 16);
  if (((v13 >> 21) & 7) == 5)
  {
    v18 = (v13 >> 7) & 0xFE | (v13 >> 3) & 1;
    if (v18 - 5 >= 0xA && v18 >= 2)
    {
      if (v18 - 3 >= 2)
      {
        if ((v11 & 0xF0) == 0x30)
        {
          *&v29 = v4;
          *(&v29 + 1) = v5;
          LOWORD(v30) = v6;
          sub_1D62921EC(a1);
        }
      }

      else
      {
        *&v29 = v4;
        *(&v29 + 1) = v5;
        v30 = v6;
        LOBYTE(v31) = 5;
        sub_1D5CA8444(v4, v5, v6, v7, v8, v9, v13);

        v20 = sub_1D703E0C8(&v29, &v31);

        if (v2)
        {
        }

        else
        {
          v23 = swift_allocObject();
          *(v23 + 16) = v4;
          *(v23 + 24) = v5;
          *(v23 + 32) = v20;
          *(v23 + 40) = 0;
          sub_1D6C4D24C(v23 | 0x3000000000000000);
        }
      }
    }
  }
}

void sub_1D628B51C()
{
  if (!*(v0 + 24))
  {
    v3 = *(v0 + 8);
    v2 = *(v0 + 16);
    v4 = *v0;
    v8[0] = v4;
    v8[1] = v3;
    v8[2] = v2;
    v9 = 6;
    sub_1D5D27950(v4, v3, v2, 0);
    v5 = sub_1D703E0C8(v8, &v9);
    if (!v1)
    {
      v6 = v5;
      v7 = swift_allocObject();
      *(v7 + 16) = v4;
      *(v7 + 24) = v3;
      *(v7 + 32) = v6;
      *(v7 + 40) = 0;

      sub_1D6C4D24C(v7 | 0x3000000000000000);
    }
  }
}

double sub_1D628B604()
{
  v1 = *(v0 + 8);
  if ((v1 & 0xFE) != 0xC)
  {
    sub_1D62B50D4(v1);
    sub_1D6012F58();
  }

  return result;
}

double sub_1D628B674()
{
  if ((*v0 & 0xFELL) != 0xC)
  {

    sub_1D6012F58();
  }

  return result;
}

double sub_1D628B6DC()
{

  sub_1D6012F58();

  return result;
}

double sub_1D628B734(uint64_t *a1, __n128 a2)
{
  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  sub_1D62B4B68(*v2, v8, v9, v10, v11, v12, a2);
  sub_1D6B7947C(a1, v4);
  return sub_1D62B4C5C(v7, v8, v9, v10, v11, v12, v5);
}

uint64_t sub_1D628B7D0(uint64_t result)
{
  v2 = *(v1 + 50) >> 5;
  if (v2 >= 5 && v2 == 5)
  {
    v4 = *(v1 + 8);
    v5 = *(v1 + 16);
    v6 = *(v1 + 32);
    v7 = *(v1 + 48) | (*(v1 + 50) << 16);
    *&v11 = *v1;
    *(&v11 + 1) = v4;
    v12 = v5;
    v13 = v6;
    v14 = v7;
    v15[0] = v11;
    v15[1] = v4;
    v16 = v5;
    v17 = v6;
    v18 = v7;
    v19 = BYTE2(v7) & 0x1F;
    v8 = result;
    sub_1D6157520(v15, v9);
    sub_1D5FD697C(v8);
    v9[0] = v11;
    v9[1] = v12;
    v9[2] = v13;
    v10 = v14;
    return sub_1D5FD7B18(v9);
  }

  return result;
}

uint64_t sub_1D628B89C(uint64_t a1)
{
  v3 = v1[1];
  v13[0] = *v1;
  v13[1] = v3;
  v5 = *v1;
  v4 = v1[1];
  v13[2] = v1[2];
  v14 = *(v1 + 24);
  v9 = v5;
  v10 = v4;
  v11 = v1[2];
  v12 = *(v1 + 24);
  sub_1D5FD78CC(v13, v7);
  sub_1D5FD697C(a1);
  v7[0] = v9;
  v7[1] = v10;
  v7[2] = v11;
  v8 = v12;
  return sub_1D5FD7B18(v7);
}

void sub_1D628B95C(uint64_t *a1)
{
  v4 = *v1;
  swift_beginAccess();
  v5 = *(v4 + 40);

  sub_1D626DA28(a1, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v4 + 32);

    sub_1D626DB9C(a1, v6);
  }
}

double sub_1D628BA14(uint64_t a1)
{

  sub_1D62895DC(a1);

  if (!v1)
  {

    sub_1D6012F58();
  }

  return result;
}

void sub_1D628BAB8(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16) && *(v1 + 16) != 1)
  {
    v4 = *(v1 + 8);
    v5 = a1;
    sub_1D6273544(a1, v3);
    if (v2)
    {
      return;
    }

    a1 = v5;
    v3 = v4;
  }

  sub_1D6273544(a1, v3);
}

void sub_1D628BB04(uint64_t *a1)
{
  v3 = v1;
  swift_beginAccess();
  v16 = *(v1 + 32);
  sub_1D5C82CD8(v16);
  sub_1D626D654(a1);
  if (v2)
  {
    sub_1D5C92A8C(v16);
  }

  else
  {
    sub_1D5C92A8C(v16);
    swift_beginAccess();
    v5 = *(v1 + 48);

    sub_1D6274044(a1, v5);

    swift_beginAccess();
    v6 = v3[8];
    if (v6 >> 62 == 1)
    {
      v7 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v3[8]);
      sub_1D5EB1500(v7);

      sub_1D6288D68(a1, v7, v8);
      sub_1D5EB15C4(v7);

      sub_1D5EB15C4(v6);
    }

    sub_1D628BEFC(a1);

    if ((~v3[13] & 0xF000000000000007) != 0)
    {

      sub_1D6E5C118(a1);
    }

    if ((~v3[14] & 0xF000000000000007) != 0)
    {

      sub_1D628BEFC(a1);
    }

    if ((~v3[15] & 0xF000000000000007) != 0)
    {

      sub_1D6E5C118(a1);
    }

    v9 = v3[18];
    if (v9)
    {
      swift_beginAccess();
      v10 = *(v9 + 72);
      if (v10)
      {

        sub_1D62707E8(a1, v10, v11);
      }

      swift_beginAccess();
      v12 = *(v9 + 88);

      sub_1D6272D88(a1, v12);
    }

    swift_beginAccess();
    v13 = v3[23];

    sub_1D62828D8(a1, v13);

    if (v3[24])
    {
      v14 = v3[28];

      sub_1D5DEA234(v14);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v14);
    }

    swift_beginAccess();
    v15 = v3[10];

    sub_1D626DB9C(a1, v15);
  }
}

void sub_1D628BEFC(uint64_t *a1)
{
  v7 = &v100;
  v8 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v91 - v14;
  v16 = *v1;
  v17 = *v1 >> 60;
  if (v17 <= 5)
  {
    if (v17 > 2)
    {
      if (v17 == 3 || v17 != 4)
      {
        return;
      }

      v34 = v16 & 0xFFFFFFFFFFFFFFFLL;
      v35 = *(v34 + 16);
      v36 = *(v34 + 24);

      sub_1D62846E0(a1, v35, sub_1D628BEFC);
      if (!v2)
      {
        *&v100 = v36;

        sub_1D628BEFC(a1);

        return;
      }

      goto LABEL_70;
    }

    if (v17)
    {
      if (v17 == 1)
      {
        v18 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v20 = v18[1].n128_i64[0];
        v19 = v18[1].n128_u64[1];
        v21 = v18[2].n128_u64[0];
        v22 = v18[2].n128_u64[1];
        v23 = v18[4].n128_u16[0];
        if (v18[4].n128_u8[2])
        {
          v24 = 8;
        }

        else
        {
          v24 = 0;
        }

        v25 = v24 & 0xFFFFFFF8 | (v23 >> 11) & 7;
        if (v25 > 3)
        {
          if (((1 << v25) & 0x330) == 0)
          {
            if (v25 == 6)
            {
              *&v100 = v18[1].n128_u64[0];
              *(&v100 + 1) = v19;
              *&v101 = v21;
              BYTE8(v101) = v22;
LABEL_12:
              sub_1D628E970(a1);
              return;
            }

            *&v100 = v18[1].n128_u64[0];
            *(&v100 + 1) = v19;
            *&v101 = v21;
            *(&v101 + 1) = v22;
            v102 = v18[3];
            LOWORD(v103) = v23 & 0xC7FF;
            goto LABEL_35;
          }

          return;
        }

        if ((v25 - 1) < 2)
        {
          return;
        }

        if (!v25)
        {
          v53 = (v22 >> 3) & 7;
          if (v53 <= 1)
          {
            v54 = v20 & 0xF000000000000007;
            if (v53)
            {
              v55 = 0;
            }

            else
            {
              v55 = v18[2].n128_u64[0] == 1;
            }

LABEL_102:
            if (v55 && v54 != 0xF000000000000007)
            {
              *&v100 = v18[1].n128_u64[0];

              sub_1D5CFCFAC(v20);
              sub_1D6E5C118(a1);
            }

            return;
          }

          if (v53 != 2 && v53 != 3)
          {
            *&v100 = v18[1].n128_u64[0];
            *(&v100 + 1) = v19;
            *&v101 = v21;
            BYTE8(v101) = v22 & 0xC7;
            goto LABEL_12;
          }
        }

        v54 = v20 & 0xF000000000000007;
        v55 = v18[2].n128_u64[0] == 1;
        goto LABEL_102;
      }

      v52 = swift_projectBox();
      sub_1D62B50EC(v52, v15, type metadata accessor for FormatCommandOpenURL);
      sub_1D62B50EC(v15, v11, type metadata accessor for FormatCommandOpenURL);
      if (swift_getEnumCaseMultiPayload() <= 1)
      {
        sub_1D62B51D0(v15, type metadata accessor for FormatCommandOpenURL);
        sub_1D62B51D0(v11, type metadata accessor for FormatCommandOpenURL);
        return;
      }

      v58 = *v11;
      v57 = v11[1];
      v59 = v11[2];
      *&v100 = *v11;
      *(&v100 + 1) = v57;
      *&v101 = v59;
      LOBYTE(v94) = 6;

      v60 = sub_1D703E0C8(&v100, &v94);
      if (!v2)
      {
        v66 = v60;

        v67 = swift_allocObject();
        *(v67 + 16) = v58;
        *(v67 + 24) = v57;
        *(v67 + 32) = v66;
        *(v67 + 40) = 0;
        sub_1D6C4D24C(v67 | 0x3000000000000000);

        sub_1D62B51D0(v15, type metadata accessor for FormatCommandOpenURL);
        return;
      }

      sub_1D62B51D0(v15, type metadata accessor for FormatCommandOpenURL);

LABEL_70:

      return;
    }

    v40 = *(v16 + 16);
    v41 = *(v16 + 24);
    if (v40)
    {
      v42 = *(v40 + 16);

      if (v42)
      {
        v7 = 0;
        while (v7 < *(v40 + 16))
        {
          v3 = *(v40 + 8 * v7 + 32);

          sub_1D6297730(a1, v3);
          if (v2)
          {

            return;
          }

          v7 = (v7 + 1);
          if (v42 == v7)
          {
            goto LABEL_59;
          }
        }

        __break(1u);
LABEL_127:
        v74 = v40;
        *v7 = v3;
        v7[1] = v5;
        LOWORD(v101) = v4;
        sub_1D62921EC(a1);
        goto LABEL_98;
      }
    }

    else
    {
    }

LABEL_59:
    if (v41)
    {
      sub_1D627DA04(a1, v41);
    }

    goto LABEL_70;
  }

  if (v17 <= 8)
  {
    if ((v17 - 7) < 2)
    {
      return;
    }

    v26 = v16 & 0xFFFFFFFFFFFFFFFLL;
    v27 = *(v26 + 32);
    v100 = *(v26 + 16);
    v101 = v27;
    v28 = *(v26 + 64);
    v102 = *(v26 + 48);
    v103 = v28;
    v29 = *(v26 + 80);
    v104 = v29;
    v30 = v100;
    v31 = v28;
    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v94 = v100;
        v95 = v101;
        sub_1D629DA88(a1);
      }

      return;
    }

    if (v29)
    {
      v61 = *(&v103 + 1) & 0xF000000000000007;
      if ((*(&v103 + 1) & 0xF000000000000007) == 0x3000000000000007)
      {
        return;
      }

      v96 = v100;
      v97 = v101;
      v98 = v102;
      v99 = v103;
      v91 = v101;
      v92 = v102;
      sub_1D614F7FC(&v100, &v94);
      sub_1D5E1DA6C(v30, *(&v30 + 1), v91, *(&v91 + 1), v92.n128_i64[0], v92.n128_i64[1], v31);
      sub_1D690A374(a1);
      if (v2)
      {
        sub_1D5E1DE98(v96, *(&v96 + 1), v97, *(&v97 + 1), v98.n128_i64[0], v98.n128_i64[1], v99);
      }

      else
      {
        sub_1D5E1DE98(v96, *(&v96 + 1), v97, *(&v97 + 1), v98.n128_i64[0], v98.n128_i64[1], v99);
        if (v61 != 0x7000000000000007)
        {
          v68 = (*(&v31 + 1) >> 57) & 0x78 | BYTE8(v31) & 7;
          if (v68 != 95 && v68 != 127)
          {
            *&v94 = *(&v31 + 1);
            sub_1D6298B34(a1);
          }
        }
      }

      goto LABEL_124;
    }

    if ((v100 & 0xF000000000000007) == 0x7000000000000007)
    {
      return;
    }

    v32 = (v100 >> 57) & 0x78 | v100 & 7;
    if (v32 != 95 && v32 != 127)
    {
      if ((v100 >> 62) <= 1)
      {
        return;
      }

      if (v100 >> 62 == 2)
      {
        if (*((v100 & 0x3FFFFFFFFFFFFFFFLL) + 0x28) > 2u || *((v100 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
        {
          return;
        }

        v86 = *((v100 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v85 = *((v100 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v87 = *((v100 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        *&v96 = v86;
        *(&v96 + 1) = v85;
        *&v97 = v87;
        v93 = 6;
        sub_1D5D27950(v86, v85, v87, 0);
        sub_1D614F7FC(&v100, &v94);
        sub_1D5D27950(v86, v85, v87, 0);
        v88 = sub_1D703E0C8(&v96, &v93);
        if (v2)
        {
          sub_1D5D28C84(v86, v85, v87, 0);
          goto LABEL_124;
        }

        v89 = v88;
        v90 = swift_allocObject();
        *(v90 + 16) = v86;
        *(v90 + 24) = v85;
        *(v90 + 32) = v89;
        *(v90 + 40) = 0;

        sub_1D6C4D24C(v90 | 0x3000000000000000);
        sub_1D5D28C84(v86, v85, v87, 0);
        goto LABEL_123;
      }

      v84 = *((v100 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      *&v96 = *((v100 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D614F7FC(&v100, &v94);
      swift_retain_n();

      sub_1D6298B34(a1);
      if (!v2)
      {

        sub_1D627496C(a1, v84);
        swift_bridgeObjectRelease_n();
LABEL_123:

        goto LABEL_124;
      }
    }

LABEL_124:
    sub_1D614F7CC(&v100);
    return;
  }

  if (v17 == 9)
  {
    v41 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    if (!(v41 >> 14))
    {
      return;
    }

    v3 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v4 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v92.n128_u64[0] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v43 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v40 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
    if (v41 >> 14 == 1)
    {
      *&v100 = v3;
      *(&v100 + 1) = v5;
      *&v101 = v4;
      LOBYTE(v94) = 5;
      v44 = v92.n128_u64[0];
      sub_1D5E1DA6C(v3, v5, v4, v92.n128_i64[0], v43, v40, v41);
      sub_1D5E1DA6C(v3, v5, v4, v44, v43, v40, v41);
      v45 = sub_1D703E0C8(&v100, &v94);
      v46 = v40;
      if (v2)
      {
        v47 = v3;
        v48 = v5;
        v49 = v4;
        v50 = v92.n128_u64[0];
        v51 = v43;
      }

      else
      {
        v62 = v45;
        v63 = swift_allocObject();
        *&v91 = v43;
        v64 = v63;
        v63[2] = v3;
        v63[3] = v5;
        v63[4] = v62;
        v63[5] = 0;

        sub_1D6C4D24C(v64 | 0x3000000000000000);

        v47 = v3;
        v48 = v5;
        v49 = v4;
        v50 = v92.n128_u64[0];
        v51 = v91;
      }

      v65 = v46;
      goto LABEL_121;
    }

    *&v91 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v56 = (v41 >> 7) & 0x7E | (v41 >> 3) & 1;
    if (v56 <= 4)
    {
      if (v56 > 2)
      {
        *&v100 = v3;
        *(&v100 + 1) = v5;
        *&v101 = v4;
        LOBYTE(v94) = 5;
        v72 = v91;
        sub_1D5E1DA6C(v3, v5, v4, v92.n128_i64[0], v91, v40, v41);
        sub_1D5E1DA6C(v3, v5, v4, v92.n128_i64[0], v72, v40, v41);

        v73 = sub_1D703E0C8(&v100, &v94);
        v74 = v40;
        if (v2)
        {

LABEL_98:
          v47 = v3;
          v48 = v5;
          v49 = v4;
          v50 = v92.n128_u64[0];
          v51 = v91;
          v65 = v74;
          goto LABEL_121;
        }

        v76 = v73;

        v77 = swift_allocObject();
        v105 = v74;
        *(v77 + 16) = v3;
        *(v77 + 24) = v5;
        *(v77 + 32) = v76;
        *(v77 + 40) = 0;
        sub_1D6C4D24C(v77 | 0x3000000000000000);

        v40 = v105;
        goto LABEL_110;
      }

      if (v56)
      {
        if (v56 != 1)
        {
          sub_1D5E1DA6C(v3, v5, v4, v92.n128_i64[0], v91, v40, v41);
          if ((v41 & 0xF0) == 0x30)
          {
            v105 = v40;
            *&v100 = v3;
            *(&v100 + 1) = v5;
            LOWORD(v101) = v4;
            sub_1D62921EC(a1);
            if (v2)
            {
              v47 = v3;
              v48 = v5;
              v49 = v4;
              v50 = v92.n128_u64[0];
              v51 = v91;
              v65 = v105;
LABEL_121:
              sub_1D5E1DE98(v47, v48, v49, v50, v51, v65, v41);
              return;
            }

            v40 = v105;
          }

          v51 = v91;
          if (v41 >> 4 == 3)
          {
            goto LABEL_127;
          }

          goto LABEL_119;
        }

        goto LABEL_63;
      }
    }

    else
    {
      if (((1 << v56) & 0x3EE0) != 0)
      {
LABEL_63:
        if (v56 > 7)
        {
          v51 = v91;
        }

        else
        {
          if (v56 <= 4)
          {
            if ((v56 - 3) >= 2)
            {
              goto LABEL_107;
            }

LABEL_110:
            *&v100 = v3;
            *(&v100 + 1) = v5;
            *&v101 = v4;
            LOBYTE(v94) = 5;
            v78 = v4;
            v79 = v91;
            sub_1D5E1DA6C(v3, v5, v4, v92.n128_i64[0], v91, v40, v41);

            v80 = sub_1D703E0C8(&v100, &v94);
            v81 = v40;
            if (v2)
            {

              v47 = v3;
              v48 = v5;
              v49 = v78;
              v50 = v92.n128_u64[0];
              v51 = v79;
            }

            else
            {
              v82 = v80;

              v83 = swift_allocObject();
              *(v83 + 16) = v3;
              *(v83 + 24) = v5;
              *(v83 + 32) = v82;
              *(v83 + 40) = 0;
              sub_1D6C4D24C(v83 | 0x3000000000000000);

              v47 = v3;
              v48 = v5;
              v49 = v78;
              v50 = v92.n128_u64[0];
              v51 = v91;
            }

            v65 = v81;
            goto LABEL_121;
          }

          if (v56 == 5)
          {
LABEL_107:
            v47 = v3;
            v48 = v5;
            v49 = v4;
            v50 = v92.n128_u64[0];
            v51 = v91;
            goto LABEL_120;
          }

          v51 = v91;
        }

LABEL_119:
        v47 = v3;
        v48 = v5;
        v49 = v4;
        v50 = v92.n128_u64[0];
        goto LABEL_120;
      }

      if (v56 == 8)
      {
        v69 = v91;
        sub_1D5E1DA6C(v3, v5, v4, v92.n128_i64[0], v91, v40, v41);
        v51 = v69;
        goto LABEL_119;
      }
    }

    v70 = v92.n128_u64[0];
    v71 = v91;
    sub_1D5E1DA6C(v3, v5, v4, v92.n128_i64[0], v91, v40, v41);
    v47 = v3;
    v48 = v5;
    v49 = v4;
    v50 = v70;
    v51 = v71;
LABEL_120:
    v65 = v40;
    goto LABEL_121;
  }

  if (v17 == 10)
  {
    v37 = v16 & 0xFFFFFFFFFFFFFFFLL;
    v38 = *(v37 + 64);
    v39 = *(v37 + 32);
    v100 = *(v37 + 16);
    v101 = v39;
    v102 = *(v37 + 48);
    LOWORD(v103) = v38;
LABEL_35:
    sub_1D690A374(a1);
  }
}

void sub_1D628CD5C(uint64_t *a1)
{
  v5 = *v1;
  v4 = v1[1];
  if (v5 && (v6 = *(v5 + 16)) != 0)
  {
    v7 = 0;
    while (v7 < *(v5 + 16))
    {
      v8 = *(v5 + 32 + 8 * v7);

      sub_1D6297730(a1, v8);

      if (v2)
      {
        return;
      }

      if (v6 == ++v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    if (v4)
    {
      sub_1D627DA04(a1, v4);
    }
  }
}

void sub_1D628CE04(uint64_t *a1)
{
  v2 = *(*v1 + 16);
  v3 = *(*v1 + 40);
  if (*(*v1 + 66))
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFFFFF8 | (*(*v1 + 64) >> 11) & 7;
  if (v5 <= 3)
  {
    if ((v5 - 1) < 2)
    {
      return;
    }

    if (!v5)
    {
      v9 = (v3 >> 3) & 7;
      if (v9 <= 1)
      {
        v11 = v2 & 0xF000000000000007;
        if (v9)
        {
          v12 = 0;
        }

        else
        {
          v12 = *(*v1 + 32) == 1;
        }

        goto LABEL_22;
      }

      if (v9 != 2 && v9 != 3)
      {
        v10 = *(*v1 + 40);
        if (v10 >> 6 > 1)
        {
          v6 = v10 & 7;
LABEL_10:
          if (v6 == 1 && (*(*v1 + 24) & 0xF000000000000007) != 0xF000000000000007)
          {
            v8 = a1;
LABEL_27:

            sub_1D6E5C118(v8);

            return;
          }

          return;
        }
      }
    }
  }

  else
  {
    if (((1 << v5) & 0x330) != 0)
    {
      return;
    }

    if (v5 != 6)
    {
      sub_1D690A374(a1);
      return;
    }

    if (v3 >> 6 && v3 >> 6 != 1)
    {
      v6 = v3 & 0x3F;
      goto LABEL_10;
    }
  }

  v11 = v2 & 0xF000000000000007;
  v12 = *(*v1 + 32) == 1;
LABEL_22:
  if (v12 && v11 != 0xF000000000000007)
  {
    v8 = a1;
    goto LABEL_27;
  }
}

void sub_1D628CF74(uint64_t *result)
{
  v3 = v1[1];
  v29 = *v1;
  v30 = v3;
  v4 = v1[3];
  v31 = v1[2];
  v32 = v4;
  v33 = *(v1 + 64);
  v5 = v29;
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      v23 = v29;
      v24 = v30;
      sub_1D629DA88(result);
    }
  }

  else
  {
    if (v33)
    {
      v11 = *(&v32 + 1);
      v12 = *(&v32 + 1) & 0xF000000000000007;
      if ((*(&v32 + 1) & 0xF000000000000007) == 0x3000000000000007)
      {
        return;
      }

      v20 = v30;
      v21 = v31;
      v13 = v32;
      v25 = v29;
      v26 = v30;
      v27 = v31;
      v28 = v32;
      sub_1D614F7FC(&v29, &v23);
      sub_1D5E1DA6C(v5, *(&v5 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v13);
      sub_1D690A374(result);
      if (v2)
      {
        sub_1D5E1DE98(v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28);
      }

      else
      {
        sub_1D5E1DE98(v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28);
        if (v12 != 0x7000000000000007)
        {
          v15 = (v11 >> 57) & 0x78 | v11 & 7;
          if (v15 != 95 && v15 != 127)
          {
            *&v23 = v11;
            sub_1D6298B34(result);
          }
        }
      }

      goto LABEL_25;
    }

    if ((v29 & 0xF000000000000007) == 0x7000000000000007)
    {
      return;
    }

    v6 = (v29 >> 57) & 0x78 | v29 & 7;
    if (v6 == 95 || v6 == 127)
    {
LABEL_25:
      sub_1D614F7CC(&v29);
      return;
    }

    if ((v29 >> 62) < 2)
    {
      return;
    }

    if (v29 >> 62 != 2)
    {
      v16 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      *&v25 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D614F7FC(&v29, &v23);
      swift_retain_n();

      sub_1D6298B34(result);
      if (v2)
      {
      }

      else
      {

        sub_1D627496C(result, v16);
        swift_bridgeObjectRelease_n();
      }

      goto LABEL_25;
    }

    if (!*((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
    {
      v8 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v9 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      *&v25 = v8;
      *(&v25 + 1) = v7;
      *&v26 = v9;
      v22 = 6;
      sub_1D5D27950(v8, v7, v9, 0);
      sub_1D614F7FC(&v29, &v23);
      sub_1D5D27950(v8, v7, v9, 0);
      v10 = sub_1D703E0C8(&v25, &v22);
      if (v2)
      {
        sub_1D5D28C84(v8, v7, v9, 0);
      }

      else
      {
        v18 = v10;
        v19 = swift_allocObject();
        *(v19 + 16) = v8;
        *(v19 + 24) = v7;
        *(v19 + 32) = v18;
        *(v19 + 40) = 0;

        sub_1D6C4D24C(v19 | 0x3000000000000000);
        sub_1D5D28C84(v8, v7, v9, 0);
      }

      sub_1D614F7CC(&v29);
    }
  }
}

void sub_1D628D2F4(uint64_t a1)
{
  v3 = *v1;
  if (!*(v1 + 56))
  {
    v5 = *(v1 + 48);
    if ((v5 & 0xF000000000000007) == 0xD000000000000007)
    {
      return;
    }

    v7 = *(v1 + 8);
    v6 = *(v1 + 16);
    v9 = *(v1 + 24);
    v8 = *(v1 + 32);
    v10 = *(v1 + 40);
    if ((~v3 & 0xF000000000000007) != 0)
    {
      sub_1D62B54E4(v3, v7, v6, v9, v8, v10, v5, 0);
      sub_1D5CFCFAC(v3);
      sub_1D62895DC(a1);

      if (v2)
      {
        v11 = v3;
        v12 = v7;
        v13 = v6;
        v14 = v9;
        v15 = v8;
        v16 = v10;
        goto LABEL_15;
      }

      v17 = v7;
      v18 = v6;
      v19 = v9;
      v20 = v8;
    }

    else
    {
      v17 = v7;
      v18 = v6;
      v19 = v9;
      v20 = v8;
      sub_1D62B545C(v3, v7, v6, v9, v8, v10, v5, sub_1D5CFCFAC, sub_1D5D04BD4);
    }

    if ((v5 & 0xF000000000000007) != 0xF000000000000007)
    {

      sub_1D6012F58();

      sub_1D62B53F0(v3, v17, v18, v19, v20, v10, v5, 0);
      return;
    }

    v11 = v3;
    v12 = v17;
    v13 = v18;
    v14 = v19;
    v15 = v20;
    v16 = v10;
LABEL_15:
    sub_1D62B53F0(v11, v12, v13, v14, v15, v16, v5, 0);
    return;
  }

  if (*(v1 + 56) == 1 && (~v3 & 0xD000000000000007) != 0)
  {
    sub_1D62B53D4(v3);
    sub_1D6012F58();
  }
}

double sub_1D628D520(uint64_t a1)
{
  v4 = v1[6];
  if ((~*v1 & 0xF000000000000007) == 0 || (, sub_1D62895DC(a1), , !v2))
  {
    if ((~v4 & 0xF000000000000007) != 0)
    {

      sub_1D6012F58();
    }
  }

  return result;
}

double sub_1D628D5F4()
{
  if ((~*v0 & 0xF000000000000007) != 0)
  {

    sub_1D6012F58();
  }

  return result;
}

double sub_1D628D658(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a1);

  if (!v4)
  {

    a4(a1);
  }

  return result;
}

void sub_1D628D6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_retain_n();

  sub_1D62895DC(a1);
  if (v4)
  {
  }

  else
  {

    sub_1D6273600(a1, a3);

    sub_1D62895DC(a1);
  }
}

uint64_t sub_1D628D7D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v13 = MEMORY[0x1EEE9AC00](v12, v10);
  (*(v15 + 16))(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v11, v13);
  sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  if (swift_dynamicCast())
  {
    v25 = v3;
    v16 = v5;
    v18 = *(&v27 + 1);
    v17 = v28;
    __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
    v19 = v29;
    (*(v17 + 8))(v16, v18, v17);
    result = __swift_destroy_boxed_opaque_existential_1(&v26);
    if (v19)
    {
      return result;
    }

    v5 = v16;
    v3 = v25;
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_1D5BFB774(&v26, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  }

  (*(v7 + 16))(v9, v3 + *(a2 + 52), v6);
  if (swift_dynamicCast())
  {
    v21 = v5;
    v22 = *(&v27 + 1);
    v23 = v28;
    __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
    (*(v23 + 8))(v21, v22, v23);
    return __swift_destroy_boxed_opaque_existential_1(&v26);
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    return sub_1D5BFB774(&v26, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  }
}

double sub_1D628DAB8(uint64_t a1)
{

  sub_1D62895DC(a1);

  return result;
}

double sub_1D628DB0C(uint64_t a1)
{

  sub_1D62895DC(a1);

  if (!v1)
  {

    sub_1D628DB94(a1);
  }

  return result;
}

uint64_t sub_1D628DB94(uint64_t result)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    v3 = result;

    swift_retain_n();
    sub_1D62895DC(v3);
    if (!v2)
    {

      sub_1D628DB94(v3);
    }
  }

  return result;
}

double sub_1D628DC74(uint64_t a1)
{
  v3 = v1[1];
  if ((*v1 & 0x8000000000000000) == 0)
  {
    goto LABEL_2;
  }

  v5 = v1[1];
  v6 = a1;
  result = sub_1D628DB0C(a1);
  if (!v2)
  {
    a1 = v6;
    v3 = v5;
LABEL_2:
    sub_1D6273600(a1, v3);
  }

  return result;
}

double sub_1D628DCDC(uint64_t a1)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    return sub_1D628DB0C(a1);
  }

  return result;
}

void sub_1D628DD1C(uint64_t a1)
{
  v3 = *v1 >> 61;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      sub_1D62895DC(a1);
    }

    else if (v3 == 4)
    {

      sub_1D62895DC(a1);
    }
  }

  else if (v3 >= 2)
  {
    v4 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    swift_retain_n();

    sub_1D628DB94(a1);
    if (v2)
    {
    }

    else
    {

      sub_1D6273600(a1, v4);
    }
  }
}

void sub_1D628DE58(uint64_t a1)
{
  v3 = *(v1 + 8);

  sub_1D6273544(a1, v3);
}

double sub_1D628DEA4(uint64_t *a1, double result)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 48);
  v9 = *(v2 + 50);
  if (v9)
  {
    v10 = 8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 & 0xFFFFFFF8 | (v8 >> 11) & 7;
  if (v11 > 3)
  {
    v12 = *(v2 + 32);
    v13 = *(v2 + 40);
    if (((1 << v11) & 0x330) != 0)
    {
      return v14;
    }

    if (v11 == 6)
    {
      if (!(v6 >> 6) || v6 >> 6 == 1)
      {
        if (*(v2 + 16) != 1 || (v4 & 0xF000000000000007) == 0xF000000000000007)
        {
          return v14;
        }

        goto LABEL_23;
      }

      if ((v6 & 0x3F) == 1 && (v5 & 0xF000000000000007) != 0xF000000000000007)
      {
        v37 = *(v2 + 8);
        v21 = a1;

        v20 = v21;
        goto LABEL_24;
      }

      return v14;
    }

    if (!(v8 >> 14))
    {
      return v14;
    }

    if (v8 >> 14 == 1)
    {
      v37 = *v2;
      v38 = v5;
      v39 = v7;
      v41 = 5;
      sub_1D5E1DCFC(v4, v5, v7, v6, v12, v13, v8, v9, sub_1D5E1DA1C, sub_1D5E1DA1C, sub_1D5E1DA6C);
      v15 = sub_1D703E0C8(&v37, &v41);
      if (!v3)
      {
        v16 = v15;
        v17 = swift_allocObject();
        *(v17 + 16) = v4;
        *(v17 + 24) = v5;
        *(v17 + 32) = v16;
        *(v17 + 40) = 0;

        sub_1D6C4D24C(v17 | 0x3000000000000000);
      }

      return v14;
    }

    v22 = (v8 >> 7) & 0xE | (v8 >> 3) & 1;
    if (v22 - 5 >= 0xA && v22 >= 2)
    {
      if (v22 - 3 < 2)
      {
        v37 = *v2;
        v38 = v5;
        v39 = v7;
        v41 = 5;
        v34 = v13;
        v35 = v12;
        v36 = v6;
        v25 = v8;
        v26 = v9;
        v24 = v3;
        sub_1D5E1DCFC(v4, v5, v7, v6, v12, v13, v8, v9, sub_1D5E1DA1C, sub_1D5E1DA1C, sub_1D5E1DA6C);

        v27 = sub_1D703E0C8(&v37, &v41);
        if (v3)
        {
          goto LABEL_39;
        }

        v29 = v27;

        v30 = swift_allocObject();
        *(v30 + 16) = v4;
        *(v30 + 24) = v5;
        *(v30 + 32) = v29;
        *(v30 + 40) = 0;
        sub_1D6C4D24C(v30 | 0x3000000000000000);

        v12 = v35;
        v6 = v36;
        v9 = v26;
        v8 = v25;
        v13 = v34;
LABEL_46:
        v37 = v4;
        v38 = v5;
        v39 = v7;
        v41 = 5;
        sub_1D5E1DCFC(v4, v5, v7, v6, v12, v13, v8, v9, sub_1D5E1DA1C, sub_1D5E1DA1C, sub_1D5E1DA6C);

        v31 = sub_1D703E0C8(&v37, &v41);
        if (!v24)
        {
          v32 = v31;

          v33 = swift_allocObject();
          *(v33 + 16) = v4;
          *(v33 + 24) = v5;
          *(v33 + 32) = v32;
          *(v33 + 40) = 0;
          sub_1D6C4D24C(v33 | 0x3000000000000000);

          return v14;
        }

LABEL_39:

        return v14;
      }

      if ((v8 & 0xF0) != 0x30)
      {
        return v14;
      }

      v37 = *v2;
      v38 = v5;
      LOWORD(v39) = v7;
      v28 = a1;
      sub_1D62921EC(a1);
      if (v3)
      {
        return v14;
      }

      a1 = v28;
    }

    else
    {
      if (v22 - 5 < 0xA || v22 < 2)
      {
        return v14;
      }

      if (v22 - 3 < 2)
      {
        v24 = v3;
        goto LABEL_46;
      }

      if ((v8 & 0xF0) != 0x30)
      {
        return v14;
      }
    }

    v37 = v4;
    v38 = v5;
    LOWORD(v39) = v7;
    sub_1D62921EC(a1);
    return v14;
  }

  if ((v11 - 1) >= 2)
  {
    if (!v11)
    {
      v37 = *v2;
      v38 = v5;
      v39 = v7;
      v40 = v6;
      return sub_1D628E820(a1);
    }

    if (*(v2 + 16) == 1 && (v4 & 0xF000000000000007) != 0xF000000000000007)
    {
LABEL_23:
      v37 = *v2;
      v19 = a1;

      v20 = v19;
LABEL_24:
      sub_1D6E5C118(v20);
    }
  }

  return v14;
}

void sub_1D628E374(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        sub_1D6297650(a1);
        return;
      }

      v10 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *(v10 + 24);

      sub_1D6277298(a1, v11);
      if (!v2)
      {
        sub_1D628E374(a1, *(v10 + 32));
      }
    }

    else
    {
      if ((*(a2 + 48) & 1) == 0)
      {
        return;
      }

      v5 = *(a2 + 16);
      v6 = *(a2 + 24);
      v7 = *(a2 + 32);
      v8 = *(a2 + 40);
      v9 = *(v8 + 24);
      sub_1D5F26358(v5, v6, v7);
      sub_1D62B5FC8(v8, 1);

      sub_1D6277824(a1, v9);
      if (!v2)
      {
        sub_1D628E4DC(a1, *(v8 + 32));
      }

      sub_1D5F26348(v5, v6, v7);
      sub_1D5FC4E9C(v8, 1);
    }
  }
}

uint64_t sub_1D628E4DC(uint64_t a1, void *a2)
{
  v11 = a2;
  sub_1D62B7E2C();
  sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  v4 = a2;
  if (swift_dynamicCast())
  {
    v5 = *(&v9 + 1);
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    (*(v6 + 8))(a1, v5, v6);
    return __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    return sub_1D5BFB774(&v8, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  }
}

double sub_1D628E5E4(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    v4 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *(v4 + 24);

    sub_1D627981C(a1, v5);
    if (!v2)
    {
      sub_1D628E5E4(a1, *(v4 + 32));
    }
  }

  return result;
}

uint64_t sub_1D628E690(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v8 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + *(v7 + 28), v4, v5);
  sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  if (swift_dynamicCast())
  {
    v9 = *(&v13 + 1);
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    (*(v10 + 8))(a1, v9, v10);
    return __swift_destroy_boxed_opaque_existential_1(&v12);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    return sub_1D5BFB774(&v12, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  }
}

double sub_1D628E820(uint64_t *a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (v4 >> 3) & 7;
  if (v5 <= 1)
  {
    v6 = v2 & 0xF000000000000007;
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v3 == 1;
    }
  }

  else
  {
    if (v5 != 2 && v5 != 3)
    {
      if (v4 >> 6 > 1)
      {
        if ((v4 & 7) != 1)
        {
          return result;
        }

        v2 = v1[1];
      }

      else if (v3 != 1)
      {
        return result;
      }

      if ((v2 & 0xF000000000000007) == 0xF000000000000007)
      {
        return result;
      }

      goto LABEL_19;
    }

    v6 = v2 & 0xF000000000000007;
    v7 = v3 == 1;
  }

  if (v7 && v6 != 0xF000000000000007)
  {
LABEL_19:

    sub_1D6E5C118(a1);
  }

  return result;
}

double sub_1D628E900(uint64_t *a1)
{
  if (*(v1 + 16) == 1 && (*v1 & 0xF000000000000007) != 0xF000000000000007)
  {

    sub_1D6E5C118(a1);
  }

  return result;
}

double sub_1D628E970(uint64_t *a1)
{
  v2 = *(v1 + 24);
  if (v2 >> 6 > 1)
  {
    v5 = v2 & 0x3F;
    v3 = *(v1 + 8) & 0xF000000000000007;
    v4 = v5 == 1;
  }

  else
  {
    v3 = *v1 & 0xF000000000000007;
    v4 = *(v1 + 16) == 1;
  }

  if (v4 && v3 != 0xF000000000000007)
  {

    sub_1D6E5C118(a1);
  }

  return result;
}

uint64_t sub_1D628EA38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v8 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + *(v7 + 44), v4, v5);
  sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  if (swift_dynamicCast())
  {
    v9 = *(&v13 + 1);
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    (*(v10 + 8))(a1, v9, v10);
    return __swift_destroy_boxed_opaque_existential_1(&v12);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    return sub_1D5BFB774(&v12, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  }
}

void sub_1D628EBC8(uint64_t *a1)
{
  v4 = type metadata accessor for FormatPropertyDefinition(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *(*v1 + 16);
  if (v10)
  {
    v11 = 0;
    while (v11 < *(v9 + 16))
    {
      sub_1D62B50EC(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v8, type metadata accessor for FormatPropertyDefinition);
      sub_1D629E924(a1);
      if (v2)
      {
        sub_1D62B51D0(v8, type metadata accessor for FormatPropertyDefinition);
        return;
      }

      ++v11;
      sub_1D62B51D0(v8, type metadata accessor for FormatPropertyDefinition);
      if (v10 == v11)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D628ED30(uint64_t *a1)
{
  v3 = v1;
  v17 = v1[7];
  sub_1D5C82CD8(v17);
  sub_1D626D654(a1);
  if (v2)
  {
    sub_1D5C92A8C(v17);
  }

  else
  {
    sub_1D5C92A8C(v17);
    swift_beginAccess();
    v5 = v1[9];

    sub_1D6274044(a1, v5);

    v6 = v3[10];
    if (v6)
    {
      v7 = *(v6 + 56);
      if (v7)
      {
        sub_1D626DA28(a1, v7);
      }

      swift_beginAccess();
      v8 = *(v6 + 64);

      sub_1D626FD48(a1, v8);
    }

    v9 = v3[11];
    if (v9)
    {
      swift_beginAccess();
      v10 = *(v9 + 72);
      if (v10)
      {

        sub_1D62707E8(a1, v10, v11);
      }

      swift_beginAccess();
      v12 = *(v9 + 88);

      sub_1D6272D88(a1, v12);
    }

    swift_beginAccess();
    v13 = v3[13];
    if (v13 >> 62 == 1)
    {
      v14 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v15 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v3[13]);
      sub_1D5EB1500(v14);

      sub_1D6288D68(a1, v14, v15);
      sub_1D5EB15C4(v14);

      sub_1D5EB15C4(v13);
    }

    if (v3[15])
    {
      v16 = v3[19];

      sub_1D5DEA234(v16);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v16);
    }
  }
}

double sub_1D628F024(uint64_t *a1)
{
  v4 = *v1;
  v5 = *(*v1 + 56);
  if (!v5 || (sub_1D626DA28(a1, v5), !v2))
  {
    swift_beginAccess();
    v7 = *(v4 + 64);

    sub_1D626FD48(a1, v7);
  }

  return result;
}

void sub_1D628F0B0(uint64_t *a1)
{
  v4 = *(v1 + 24);

  sub_1D6EE4610(a1);

  if (!v2)
  {
    if (v4)
    {
      sub_1D626DA28(a1, v4);
    }
  }
}

double sub_1D628F138(uint64_t a1)
{
  v4 = v1[1];
  sub_1D6273544(a1, *v1);
  if (!v2)
  {
    sub_1D5F33D5C(v4);
    sub_1D628A8D0(a1);
    return sub_1D5F33D8C(v4);
  }

  return result;
}

void sub_1D628F1A4(uint64_t *a1)
{
  v4 = *(v1 + 80);
  v5 = *(v1 + 96);
  v6 = *(v1 + 106);
  v7 = *(v1 + 104);

  sub_1D628F2F4(a1);

  if (!v2)
  {

    sub_1D626DA28(a1, v4);

    v8 = v7 | (v6 << 16);
    if (BYTE2(v8) != 255)
    {
      sub_1D610CA74(v5, v8, SBYTE2(v8), sub_1D610CA28, sub_1D610CA5C);
      sub_1D628F694(a1);
      sub_1D610CA74(v5, v8, SBYTE2(v8), sub_1D60CF6A8, sub_1D60CF6DC);
    }
  }
}

void sub_1D628F2F4(uint64_t *a1)
{
  v4 = *v1;
  v5 = *v1 >> 60;
  if (v5 <= 3)
  {
    if (v5 > 1)
    {
      v9 = v4 & 0xFFFFFFFFFFFFFFFLL;
      if (v5 == 2)
      {
        v10 = *(v9 + 96);
        v11 = *(v9 + 112);
        v12 = *(v9 + 128);
        v33 = *(v9 + 80);
        v34 = v10;
        v35 = v11;
        v36 = v12;
        v13 = *(v9 + 32);
        v29 = *(v9 + 16);
        v30 = v13;
        v14 = *(v9 + 64);
        v31 = *(v9 + 48);
        v32 = v14;
        v15 = v12;
        sub_1D60865E4(&v29, &v28);
        sub_1D627683C(a1, v15);
        sub_1D6086640(&v29);
      }

      else
      {
        *&v29 = *(v9 + 24);

        sub_1D629DD00(a1);
      }

      return;
    }

    if (!v5)
    {
      *&v29 = *(v4 + 16);
      sub_1D62895DC(a1);
      return;
    }

    v23 = (v4 & 0xFFFFFFFFFFFFFFFLL);
    v24 = v23[2];
    v26 = v23[8];
    v25 = v23[9];

    sub_1D5D615EC(v26, v25);
    sub_1D627683C(a1, v24);
    if (!v2)
    {
      if (!v26)
      {

        v27 = 0;
LABEL_27:
        sub_1D5CDE22C(v27, v25);
        return;
      }

      sub_1D6273544(a1, v26);
      sub_1D6273544(a1, v25);
      sub_1D5CDE22C(v26, v25);
    }

    v27 = v26;
    goto LABEL_27;
  }

  if (v5 <= 5)
  {
    v16 = v4 & 0xFFFFFFFFFFFFFFFLL;
    if (v5 == 4)
    {
      v17 = *(v16 + 128);
      v35 = *(v16 + 112);
      v36 = v17;
      v37 = *(v16 + 144);
      v38 = *(v16 + 160);
      v18 = *(v16 + 64);
      v31 = *(v16 + 48);
      v32 = v18;
      v19 = *(v16 + 96);
      v33 = *(v16 + 80);
      v34 = v19;
      v20 = *(v16 + 32);
      v29 = *(v16 + 16);
      v30 = v20;
      sub_1D6289EC0(a1);
    }

    else
    {
      *&v29 = *(v16 + 16);
      sub_1D6289B90(a1);
    }
  }

  else
  {
    if (v5 == 6)
    {
      v21 = v4 & 0xFFFFFFFFFFFFFFFLL;
      v22 = *(v21 + 24);
      *&v29 = *(v21 + 16);
      swift_retain_n();

      sub_1D628F2F4(a1);
      if (v2)
      {
        goto LABEL_15;
      }

      sub_1D6285444(a1, v22, sub_1D628F2F4);
    }

    else
    {
      if (v5 != 7)
      {
        return;
      }

      v6 = (v4 & 0xFFFFFFFFFFFFFFFLL);
      v7 = v6[3];
      v8 = v6[4];
      *&v29 = v6[2];

      swift_retain_n();

      sub_1D628F2F4(a1);
      if (v2)
      {

LABEL_15:

        return;
      }

      sub_1D6285444(a1, v7, sub_1D628F2F4);
      *&v29 = v8;

      sub_1D628F2F4(a1);
    }
  }
}