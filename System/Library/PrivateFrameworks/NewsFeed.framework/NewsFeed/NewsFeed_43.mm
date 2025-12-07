uint64_t *sub_1D5F2BF80(uint64_t a1)
{
  v4 = *v1;
  v14 = *(v1 + 16);
  v5 = *(v1 + 8);
  v12 = v4;
  v13 = v5;
  sub_1D5F2C6D4(v4, v5);
  v6 = &v12;
  sub_1D69A9B58(a1);
  if (v2)
  {
    sub_1D5F2C6E8(v12, v13);
  }

  else
  {
    v8 = v7;
    sub_1D5F2C6E8(v12, v13);
    v9 = sub_1D619AA74();
    v10 = [v9 stringFromNumber_];

    if (v10)
    {
      v6 = sub_1D726207C();
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

BOOL _s8NewsFeed20FormatTextNodeNumberV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[2];
  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  v18 = *a1;
  LOBYTE(v19) = v7;
  v11 = v5;
  LOBYTE(v12) = v8;
  sub_1D5F2C6D4(v18, v7);
  sub_1D5F2C6D4(v5, v8);
  LOBYTE(v5) = _s8NewsFeed12FormatNumberO2eeoiySbAC_ACtFZ_0(&v18, &v11);
  sub_1D5F2C6E8(v11, v12);
  sub_1D5F2C6E8(v18, v19);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  if ((v4 & 0xFF00) != 0x800)
  {
    v22 = *(a1 + 9);
    v23 = *(a1 + 11);
    v24[0] = *(a1 + 13);
    *(v24 + 9) = *(a1 + 113);
    v19 = *(a1 + 3);
    v20 = *(a1 + 5);
    v21 = *(a1 + 7);
    v18 = v4;
    if ((v6 & 0xFF00) != 0x800)
    {
      v15 = *(a2 + 9);
      v16 = *(a2 + 11);
      v17[0] = *(a2 + 13);
      *(v17 + 9) = *(a2 + 113);
      v12 = *(a2 + 3);
      v13 = *(a2 + 5);
      v14 = *(a2 + 7);
      v11 = v6;
      return _s8NewsFeed012FormatNumberC0V2eeoiySbAC_ACtFZ_0(&v18, &v11);
    }

    return 0;
  }

  return (v6 & 0xFF00) == 2048;
}

unint64_t sub_1D5F2C424(uint64_t a1)
{
  result = sub_1D5F2C44C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2C44C()
{
  result = qword_1EC8811F0;
  if (!qword_1EC8811F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8811F0);
  }

  return result;
}

unint64_t sub_1D5F2C4A0(void *a1)
{
  a1[1] = sub_1D5F2C4D8();
  a1[2] = sub_1D5F2C52C();
  result = sub_1D5F2C580();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F2C4D8()
{
  result = qword_1EDF0ECB8;
  if (!qword_1EDF0ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ECB8);
  }

  return result;
}

unint64_t sub_1D5F2C52C()
{
  result = qword_1EDF0ECC0;
  if (!qword_1EDF0ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ECC0);
  }

  return result;
}

unint64_t sub_1D5F2C580()
{
  result = qword_1EC8811F8;
  if (!qword_1EC8811F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8811F8);
  }

  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1D5F2C614(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 129))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1D5F2C65C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D5F2C6D4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D5F2C6E8(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return v2;
}

unint64_t sub_1D5F2C734(uint64_t a1)
{
  result = sub_1D5F2C75C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2C75C()
{
  result = qword_1EC881200;
  if (!qword_1EC881200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881200);
  }

  return result;
}

void *sub_1D5F2C800(__int128 *a1, uint64_t a2)
{
  v186 = a2;
  sub_1D5D5046C(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v184 = &v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeedRecipe(0);
  v180 = *(v6 - 8);
  v181 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v183 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F2DDBC(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v179 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v185 = &v163 - v14;
  v15 = type metadata accessor for FeedPuzzleStatistic(0);
  v175 = *(v15 - 8);
  v176 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v166 = &v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v182 = &v163 - v20;
  sub_1D5F2DDF0(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v174 = &v163 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v178 = &v163 - v26;
  v27 = type metadata accessor for FeedWebEmbed(0);
  v170 = *(v27 - 8);
  v171 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v165 = &v163 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v177 = &v163 - v32;
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v169 = &v163 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v173 = &v163 - v38;
  v39 = type metadata accessor for FeedHeadline(0);
  v168 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v40);
  v164 = &v163 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v172 = &v163 - v44;
  sub_1D5F2DE24(0);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v48 = &v163 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v163 - v51;
  v53 = type metadata accessor for FeedWeather(0);
  v167 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v163 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = &v163 - v59;
  v61 = type metadata accessor for FeedGroupItem(0);
  MEMORY[0x1EEE9AC00](v61, v62);
  v64 = &v163 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1[7];
  v243 = a1[6];
  v244 = v65;
  v245 = a1[8];
  v246 = *(a1 + 18);
  v66 = a1[3];
  v239 = a1[2];
  v240 = v66;
  v67 = a1[5];
  v241 = a1[4];
  v242 = v67;
  v68 = a1[1];
  v237 = *a1;
  v238 = v68;
  sub_1D5F2E068(v186, v64, type metadata accessor for FeedGroupItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v99 = *(v64 + 5);
      v100 = *(v64 + 7);
      v193 = *(v64 + 6);
      v194[0] = v100;
      *(v194 + 9) = *(v64 + 121);
      v101 = *(v64 + 1);
      v102 = *(v64 + 3);
      v189 = *(v64 + 2);
      v190 = v102;
      v103 = *(v64 + 3);
      v104 = *(v64 + 5);
      v191 = *(v64 + 4);
      v192 = v104;
      v105 = *(v64 + 1);
      v187 = *v64;
      v188 = v105;
      v106 = a1[7];
      v202 = a1[6];
      v203 = v106;
      v204 = a1[8];
      v107 = a1[3];
      v198 = a1[2];
      v199 = v107;
      v108 = a1[5];
      v200 = a1[4];
      v201 = v108;
      v109 = a1[1];
      v196 = *a1;
      v197 = v109;
      v110 = *(v64 + 7);
      v231 = v193;
      v232[0] = v110;
      *(v232 + 9) = *(v64 + 121);
      v227 = v189;
      v228 = v103;
      v229 = v191;
      v230 = v99;
      *&v205 = *(a1 + 18);
      v225 = v187;
      v226 = v101;
      v69 = sub_1D6CDE0AC(&v196, &v225);
      sub_1D5ECF320(&v187);
      return v69;
    case 2u:
    case 0xCu:
      sub_1D5F2DD5C(v64, type metadata accessor for FeedGroupItem);
      return sub_1D7073500(MEMORY[0x1E69E7CC0]);
    case 3u:
      sub_1D5F2E000(v64, v60, type metadata accessor for FeedWeather);
      sub_1D5F2E068(v60, v52, type metadata accessor for FeedWeather);
      v79 = v167;
      (*(v167 + 56))(v52, 0, 1, v53);
      sub_1D5F2E068(v52, v48, sub_1D5F2DE24);
      if ((*(v79 + 48))(v48, 1, v53) == 1)
      {
        sub_1D5F2DD5C(v48, sub_1D5F2DE24);
        v69 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        sub_1D5F2E000(v48, v56, type metadata accessor for FeedWeather);
        v202 = v243;
        v203 = v244;
        v204 = v245;
        *&v205 = v246;
        v198 = v239;
        v199 = v240;
        v200 = v241;
        v201 = v242;
        v196 = v237;
        v197 = v238;
        v69 = sub_1D60F2F30(&v196, v56);
        sub_1D5F2DD5C(v56, type metadata accessor for FeedWeather);
      }

      sub_1D5F2DD5C(v52, sub_1D5F2DE24);
      v139 = type metadata accessor for FeedWeather;
      goto LABEL_29;
    case 4u:
      v115 = *(v64 + 13);
      v116 = *(v64 + 11);
      v208 = *(v64 + 12);
      v209 = v115;
      v117 = *(v64 + 13);
      v210 = *(v64 + 14);
      v118 = *(v64 + 9);
      v119 = *(v64 + 7);
      v204 = *(v64 + 8);
      v205 = v118;
      v120 = *(v64 + 9);
      v121 = *(v64 + 11);
      v206 = *(v64 + 10);
      v207 = v121;
      v122 = *(v64 + 5);
      v123 = *(v64 + 3);
      v200 = *(v64 + 4);
      v201 = v122;
      v124 = *(v64 + 5);
      v125 = *(v64 + 7);
      v202 = *(v64 + 6);
      v203 = v125;
      v126 = *(v64 + 1);
      v196 = *v64;
      v197 = v126;
      v127 = *(v64 + 3);
      v129 = *v64;
      v128 = *(v64 + 1);
      v198 = *(v64 + 2);
      v199 = v127;
      v130 = a1[7];
      v231 = a1[6];
      v232[0] = v130;
      v232[1] = a1[8];
      v131 = a1[3];
      v227 = a1[2];
      v228 = v131;
      v132 = a1[5];
      v229 = a1[4];
      v230 = v132;
      v133 = a1[1];
      v225 = *a1;
      v226 = v133;
      v194[5] = v208;
      v194[6] = v117;
      v194[7] = *(v64 + 14);
      v194[1] = v204;
      v194[2] = v120;
      v194[3] = v206;
      v194[4] = v116;
      v191 = v200;
      v192 = v124;
      v193 = v202;
      v194[0] = v119;
      v187 = v129;
      v188 = v128;
      v211 = *(v64 + 30);
      *&v233 = *(a1 + 18);
      v195 = *(v64 + 30);
      v189 = v198;
      v190 = v123;
      v69 = sub_1D6A4FE30(&v225, &v187);
      sub_1D5F2DFAC(&v196);
      return v69;
    case 5u:
      v60 = v172;
      sub_1D5F2E000(v64, v172, type metadata accessor for FeedHeadline);
      v140 = v173;
      sub_1D5F2E068(v60, v173, type metadata accessor for FeedHeadline);
      v141 = v168;
      (*(v168 + 56))(v140, 0, 1, v39);
      v142 = v169;
      sub_1D5F2E068(v140, v169, sub_1D5B69BE0);
      if ((*(v141 + 48))(v142, 1, v39) == 1)
      {
        sub_1D5F2DD5C(v142, sub_1D5B69BE0);
        v69 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v161 = v164;
        sub_1D5F2E000(v142, v164, type metadata accessor for FeedHeadline);
        v202 = v243;
        v203 = v244;
        v204 = v245;
        *&v205 = v246;
        v198 = v239;
        v199 = v240;
        v200 = v241;
        v201 = v242;
        v196 = v237;
        v197 = v238;
        v69 = sub_1D5E4E6A4(&v196, v161);
        sub_1D5F2DD5C(v161, type metadata accessor for FeedHeadline);
      }

      sub_1D5F2DD5C(v140, sub_1D5B69BE0);
      v139 = type metadata accessor for FeedHeadline;
      goto LABEL_29;
    case 6u:
      v60 = v177;
      sub_1D5F2E000(v64, v177, type metadata accessor for FeedWebEmbed);
      v111 = v178;
      sub_1D5F2E068(v60, v178, type metadata accessor for FeedWebEmbed);
      v113 = v170;
      v112 = v171;
      (*(v170 + 56))(v111, 0, 1, v171);
      v114 = v174;
      sub_1D5F2E068(v111, v174, sub_1D5F2DDF0);
      if ((*(v113 + 48))(v114, 1, v112) == 1)
      {
        sub_1D5F2DD5C(v114, sub_1D5F2DDF0);
        v69 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v160 = v165;
        sub_1D5F2E000(v114, v165, type metadata accessor for FeedWebEmbed);
        v202 = v243;
        v203 = v244;
        v204 = v245;
        *&v205 = v246;
        v198 = v239;
        v199 = v240;
        v200 = v241;
        v201 = v242;
        v196 = v237;
        v197 = v238;
        v69 = sub_1D6D49E84(&v196, v160);
        sub_1D5F2DD5C(v160, type metadata accessor for FeedWebEmbed);
      }

      sub_1D5F2DD5C(v111, sub_1D5F2DDF0);
      v139 = type metadata accessor for FeedWebEmbed;
      goto LABEL_29;
    case 7u:
      v153 = *v64;
      v154 = a1[7];
      v202 = a1[6];
      v203 = v154;
      v204 = a1[8];
      *&v205 = *(a1 + 18);
      v155 = a1[3];
      v198 = a1[2];
      v199 = v155;
      v156 = a1[5];
      v200 = a1[4];
      v201 = v156;
      v157 = a1[1];
      v196 = *a1;
      v197 = v157;
      v93 = v153;
      v94 = FCFeedDescriptor.feedTag.getter();

      goto LABEL_20;
    case 8u:
      v84 = *v64;
      v85 = *(v64 + 1);
      v87 = *(v64 + 2);
      v86 = *(v64 + 3);
      v88 = v64[32];
      v89 = a1[7];
      v202 = a1[6];
      v203 = v89;
      v204 = a1[8];
      *&v205 = *(a1 + 18);
      v90 = a1[3];
      v198 = a1[2];
      v199 = v90;
      v91 = a1[5];
      v200 = a1[4];
      v201 = v91;
      v92 = a1[1];
      v196 = *a1;
      v197 = v92;
      *&v187 = v84;
      *(&v187 + 1) = v85;
      *&v188 = v87;
      *(&v188 + 1) = v86;
      LOBYTE(v189) = v88;
      v69 = sub_1D6B19314(&v196, &v187);
      swift_unknownObjectRelease();

      return v69;
    case 9u:
      v143 = *(v64 + 11);
      v206 = *(v64 + 10);
      v207 = v143;
      v208 = *(v64 + 12);
      v144 = *(v64 + 7);
      v202 = *(v64 + 6);
      v203 = v144;
      v145 = *(v64 + 9);
      v204 = *(v64 + 8);
      v205 = v145;
      v146 = *(v64 + 3);
      v198 = *(v64 + 2);
      v199 = v146;
      v147 = *(v64 + 5);
      v200 = *(v64 + 4);
      v201 = v147;
      v148 = *(v64 + 1);
      v196 = *v64;
      v197 = v148;
      sub_1D5F2DEAC(&v196, &v187);
      sub_1D5F2E068(&v187, &v212, sub_1D5F2DF08);
      if (v215)
      {
        v234 = v222;
        v235 = v223;
        v236 = v224;
        v231 = v218;
        v232[0] = v219;
        v233 = v221;
        v232[1] = v220;
        v227 = v214;
        v228 = v215;
        v229 = v216;
        v230 = v217;
        v225 = v212;
        v226 = v213;
        v149 = a1[7];
        v218 = a1[6];
        v219 = v149;
        v220 = a1[8];
        *&v221 = *(a1 + 18);
        v150 = a1[3];
        v214 = a1[2];
        v215 = v150;
        v151 = a1[5];
        v216 = a1[4];
        v217 = v151;
        v152 = a1[1];
        v212 = *a1;
        v213 = v152;
        v69 = sub_1D69CADF0(&v212, &v225);
        sub_1D5F2DF58(&v225);
      }

      else
      {
        sub_1D5F2DD5C(&v212, sub_1D5F2DF08);
        v69 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
      }

      sub_1D5F2DD5C(&v187, sub_1D5F2DF08);
      sub_1D5F2DF58(&v196);
      return v69;
    case 0xAu:
      v70 = *(v64 + 1);
      v187 = *v64;
      v188 = v70;
      v71 = *(v64 + 3);
      v73 = *v64;
      v72 = *(v64 + 1);
      v189 = *(v64 + 2);
      v190 = v71;
      v74 = a1[7];
      v202 = a1[6];
      v203 = v74;
      v204 = a1[8];
      v75 = a1[3];
      v198 = a1[2];
      v199 = v75;
      v76 = a1[5];
      v200 = a1[4];
      v201 = v76;
      v77 = a1[1];
      v196 = *a1;
      v197 = v77;
      *&v205 = *(a1 + 18);
      v225 = v73;
      v226 = v72;
      v78 = *(v64 + 3);
      v227 = v189;
      v228 = v78;
      v69 = sub_1D69ABAE8(&v196, &v225);
      sub_1D5F2DE58(&v187);
      return v69;
    case 0xBu:
      v60 = v182;
      sub_1D5F2E000(v64, v182, type metadata accessor for FeedPuzzleStatistic);
      v80 = v185;
      sub_1D5F2E068(v60, v185, type metadata accessor for FeedPuzzleStatistic);
      v82 = v175;
      v81 = v176;
      (*(v175 + 56))(v80, 0, 1, v176);
      v83 = v179;
      sub_1D5F2E068(v80, v179, sub_1D5F2DDBC);
      if ((*(v82 + 48))(v83, 1, v81) == 1)
      {
        sub_1D5F2DD5C(v83, sub_1D5F2DDBC);
        v69 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v159 = v166;
        sub_1D5F2E000(v83, v166, type metadata accessor for FeedPuzzleStatistic);
        v202 = v243;
        v203 = v244;
        v204 = v245;
        *&v205 = v246;
        v198 = v239;
        v199 = v240;
        v200 = v241;
        v201 = v242;
        v196 = v237;
        v197 = v238;
        v69 = sub_1D6A62CCC(&v196, v159);
        sub_1D5F2DD5C(v159, type metadata accessor for FeedPuzzleStatistic);
      }

      sub_1D5F2DD5C(v80, sub_1D5F2DDBC);
      v139 = type metadata accessor for FeedPuzzleStatistic;
      goto LABEL_29;
    case 0xDu:
      v60 = v183;
      sub_1D5F2E000(v64, v183, type metadata accessor for FeedRecipe);
      v134 = a1[7];
      v202 = a1[6];
      v203 = v134;
      v204 = a1[8];
      *&v205 = *(a1 + 18);
      v135 = a1[3];
      v198 = a1[2];
      v199 = v135;
      v136 = a1[5];
      v200 = a1[4];
      v201 = v136;
      v137 = a1[1];
      v196 = *a1;
      v197 = v137;
      v138 = v184;
      sub_1D5F2E068(v60, v184, type metadata accessor for FeedRecipe);
      (*(v180 + 56))(v138, 0, 1, v181);
      v69 = sub_1D6C9EA0C(&v196, v138);
      sub_1D5F2DD5C(v138, sub_1D5D5046C);
      v139 = type metadata accessor for FeedRecipe;
LABEL_29:
      sub_1D5F2DD5C(v60, v139);
      break;
    default:
      v94 = *v64;
      v93 = *(v64 + 1);
      v95 = a1[7];
      v202 = a1[6];
      v203 = v95;
      v204 = a1[8];
      *&v205 = *(a1 + 18);
      v96 = a1[3];
      v198 = a1[2];
      v199 = v96;
      v97 = a1[5];
      v200 = a1[4];
      v201 = v97;
      v98 = a1[1];
      v196 = *a1;
      v197 = v98;
LABEL_20:
      ObjectType = swift_getObjectType();
      v69 = sub_1D6A5AE4C(&v196, v94, MEMORY[0x1E69E7CC0], ObjectType);
      swift_unknownObjectRelease();

      break;
  }

  return v69;
}

void *sub_1D5F2D9BC(uint64_t a1, uint64_t a2)
{
  sub_1D5F2DC78(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatInspectionFeedGroupItem(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 112);
  v29 = *(a1 + 96);
  v30 = v13;
  v31 = *(a1 + 128);
  v32 = *(a1 + 144);
  v14 = *(a1 + 48);
  v25 = *(a1 + 32);
  v26 = v14;
  v15 = *(a1 + 80);
  v27 = *(a1 + 64);
  v28 = v15;
  v16 = *(a1 + 16);
  v23 = *a1;
  v24 = v16;
  sub_1D5F2E068(a2, v7, sub_1D5F2DC78);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D5F2DD5C(v7, sub_1D5F2DC78);
    return sub_1D7073500(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1D5F2E000(v7, v12, type metadata accessor for FormatInspectionFeedGroupItem);
    sub_1D5F2DCF8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v21[6] = v29;
    v21[7] = v30;
    v21[8] = v31;
    v22 = v32;
    v21[2] = v25;
    v21[3] = v26;
    v21[4] = v27;
    v21[5] = v28;
    v21[0] = v23;
    v21[1] = v24;
    v19 = sub_1D5F2C800(v21, v12);
    *(inited + 56) = &type metadata for FormatInspection;
    *(inited + 64) = &off_1F51E3FD0;
    *(inited + 32) = v19;
    v20 = sub_1D7073500(inited);
    swift_setDeallocating();
    sub_1D5F2DD5C(inited + 32, sub_1D5E4F358);
    sub_1D5F2DD5C(v12, type metadata accessor for FormatInspectionFeedGroupItem);
    return v20;
  }
}

uint64_t type metadata accessor for FormatInspectionFeedGroupItem(uint64_t a1)
{
  result = qword_1EC881208;
  if (!qword_1EC881208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5F2DCF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5F2DD5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D5F2DF08()
{
  if (!qword_1EDF12E30)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF12E30);
    }
  }
}

uint64_t sub_1D5F2E000(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5F2E068(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5F2E0F8(uint64_t a1)
{
  result = type metadata accessor for FeedGroupItem(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double static FormatCodingNotEmptyTextExpressionLogicStrategy.defaultValue.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 50) = -64;
  *(a1 + 48) = 0;
  return result;
}

BOOL static FormatCodingNotEmptyTextExpressionLogicStrategy.shouldEncode(wrappedValue:)(uint64_t a1)
{
  v1 = vorrq_s8(*(a1 + 8), *(a1 + 24));
  v2 = *&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | *(a1 + 40);
  return *a1 != 1 || v2 != 0 || (*(a1 + 48) | (*(a1 + 50) << 16)) != 12582912;
}

double sub_1D5F2E254@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 50) = -64;
  *(a1 + 48) = 0;
  return result;
}

BOOL sub_1D5F2E27C(uint64_t a1)
{
  v1 = vorrq_s8(*(a1 + 8), *(a1 + 24));
  v2 = *&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | *(a1 + 40);
  return *a1 != 1 || v2 != 0 || (*(a1 + 48) | (*(a1 + 50) << 16)) != 12582912;
}

double static FormatCodingNotEmptyFloatExpressionLogicStrategy.defaultValue.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 13;
  *a1 = xmmword_1D7282A80;
  return result;
}

unint64_t sub_1D5F2E300(uint64_t a1)
{
  result = sub_1D5F2E328();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2E328()
{
  result = qword_1EC881218;
  if (!qword_1EC881218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881218);
  }

  return result;
}

unint64_t sub_1D5F2E37C(uint64_t a1)
{
  result = sub_1D5F2E3A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2E3A4()
{
  result = qword_1EC881220;
  if (!qword_1EC881220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881220);
  }

  return result;
}

unint64_t sub_1D5F2E3F8()
{
  result = qword_1EDF08298;
  if (!qword_1EDF08298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF08298);
  }

  return result;
}

unint64_t sub_1D5F2E44C(uint64_t a1)
{
  result = sub_1D5F2E474();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2E474()
{
  result = qword_1EC881228;
  if (!qword_1EC881228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881228);
  }

  return result;
}

unint64_t sub_1D5F2E4C8()
{
  result = qword_1EDF1C478;
  if (!qword_1EDF1C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C478);
  }

  return result;
}

unint64_t sub_1D5F2E51C()
{
  result = qword_1EDF06388;
  if (!qword_1EDF06388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06388);
  }

  return result;
}

unint64_t sub_1D5F2E570(uint64_t a1)
{
  result = sub_1D5F2E598();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2E598()
{
  result = qword_1EC881230;
  if (!qword_1EC881230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881230);
  }

  return result;
}

unint64_t sub_1D5F2E5EC()
{
  result = qword_1EDF1C0D0;
  if (!qword_1EDF1C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C0D0);
  }

  return result;
}

unint64_t sub_1D5F2E640()
{
  result = qword_1EDF06120;
  if (!qword_1EDF06120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06120);
  }

  return result;
}

unint64_t sub_1D5F2E694(uint64_t a1)
{
  result = sub_1D5F2E6BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2E6BC()
{
  result = qword_1EC881238;
  if (!qword_1EC881238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881238);
  }

  return result;
}

unint64_t sub_1D5F2E710()
{
  result = qword_1EDF1C790;
  if (!qword_1EDF1C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C790);
  }

  return result;
}

unint64_t sub_1D5F2E764()
{
  result = qword_1EDF06590;
  if (!qword_1EDF06590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06590);
  }

  return result;
}

unint64_t sub_1D5F2E7B8(uint64_t a1)
{
  result = sub_1D5F2E7E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2E7E0()
{
  result = qword_1EC881240;
  if (!qword_1EC881240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881240);
  }

  return result;
}

unint64_t sub_1D5F2E834()
{
  result = qword_1EDF1FD08;
  if (!qword_1EDF1FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1FD08);
  }

  return result;
}

unint64_t sub_1D5F2E888()
{
  result = qword_1EDF09568;
  if (!qword_1EDF09568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09568);
  }

  return result;
}

unint64_t sub_1D5F2E8DC(uint64_t a1)
{
  result = sub_1D5F2E904();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2E904()
{
  result = qword_1EC881248;
  if (!qword_1EC881248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881248);
  }

  return result;
}

unint64_t sub_1D5F2E958()
{
  result = qword_1EDF1D320;
  if (!qword_1EDF1D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1D320);
  }

  return result;
}

unint64_t sub_1D5F2E9AC()
{
  result = qword_1EDF06F08;
  if (!qword_1EDF06F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06F08);
  }

  return result;
}

unint64_t sub_1D5F2EA00(uint64_t a1)
{
  result = sub_1D5F2EA28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2EA28()
{
  result = qword_1EC881250;
  if (!qword_1EC881250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881250);
  }

  return result;
}

unint64_t sub_1D5F2EA7C()
{
  result = qword_1EDF1E6B0;
  if (!qword_1EDF1E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E6B0);
  }

  return result;
}

unint64_t sub_1D5F2EAD0()
{
  result = qword_1EDF07EA0;
  if (!qword_1EDF07EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07EA0);
  }

  return result;
}

uint64_t FeedReplaceLocation.group.getter@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t FeedReplaceLocation.cursorContainer.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t FeedReplaceLocation.init(group:cursorContainer:findConfigBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a7, a1, AssociatedTypeWitness);
  result = type metadata accessor for FeedReplaceLocation(0, a5, a6, v15);
  *(a7 + *(result + 36)) = a2;
  v17 = (a7 + *(result + 40));
  *v17 = a3;
  v17[1] = a4;
  return result;
}

uint64_t sub_1D5F2EE4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for FeedCursorContainer(319, v2, v1, v4);
    if (v6 <= 0x3F)
    {
      result = sub_1D5B5D9E0();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D5F2EF60(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_1D5F2F164(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = a3 - v10 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v8 < 0x7FFFFFFF)
      {
        v19 = ((((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = (a2 - 1);
        }
      }

      else
      {
        v18 = *(v7 + 56);

        v18(a1, a2);
      }

      return;
    }
  }

  if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

void FormatAnimationNodeDataLayoutAttributes.sourceItemData.getter(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  sub_1D5EBC314(v4, v5, v6);
}

void sub_1D5F2F434(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1D5F2F810(319);
    if (v2 <= 0x3F)
    {
      sub_1D5F2F868();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D5F2F4D4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1D5F2F620(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v19 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v19 = a2;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1D5F2F810(uint64_t a1)
{
  if (!qword_1EDF2CBF0)
  {
    type metadata accessor for FormatAnimationData();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF2CBF0);
    }
  }
}

void sub_1D5F2F868()
{
  if (!qword_1EDF2AB20)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF2AB20);
    }
  }
}

uint64_t FeedContentPrefetchContext.init(formatService:assetHandleFactory:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5B63F14(a1, a3);

  return sub_1D5B63F14(a2, a3 + 40);
}

uint64_t FeedContentPrefetchTask.Result.serviceConfig.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t sub_1D5F2F984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  result = type metadata accessor for FeedContentPrefetchTask.Result(0, a3, a4, v11);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t FeedContentPrefetchTask.__allocating_init(configFetcher:context:purpose:log:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  FeedContentPrefetchTask.init(configFetcher:context:purpose:log:)(a1, a2, a3, a4);
  return v8;
}

char *FeedContentPrefetchTask.init(configFetcher:context:purpose:log:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(*v4 + 80);
  (*(*(v9 - 8) + 32))(&v4[*(*v4 + 104)], a1, v9);
  v10 = *(v8 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v10;
  (*(v12 + 32))(v14 + v13, a2, AssociatedTypeWitness);
  v15 = &v4[*(*v4 + 112)];
  *v15 = sub_1D5F2FD4C;
  v15[1] = v14;
  *&v4[*(*v4 + 120)] = a3;
  *(v4 + 2) = a4;
  return v4;
}

uint64_t sub_1D5F2FC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v8 = &v10 - v7;
  sub_1D725BC0C();
  (*(v5 + 16))(v8, a1, AssociatedTypeWitness);
  return sub_1D725BB0C();
}

uint64_t sub_1D5F2FD4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1D5F2FC48(v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v1, v2);
}

char *FeedContentPrefetchTask.__allocating_init(configFetcher:purpose:log:contextBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  (*(*(*(*v10 + 80) - 8) + 32))(&v10[*(*v10 + 104)], a1);
  v11 = &v10[*(*v10 + 112)];
  *v11 = a4;
  *(v11 + 1) = a5;
  *&v10[*(*v10 + 120)] = a2;
  *(v10 + 2) = a3;
  return v10;
}

char *FeedContentPrefetchTask.init(configFetcher:purpose:log:contextBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(*(*v5 + 80) - 8) + 32))(&v5[*(*v5 + 104)], a1);
  v10 = &v5[*(*v5 + 112)];
  *v10 = a4;
  *(v10 + 1) = a5;
  *&v5[*(*v5 + 120)] = a2;
  *(v5 + 2) = a3;
  return v5;
}

uint64_t FeedContentPrefetchTask.prefetch(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v2[2];
  v6 = sub_1D7262EDC();
  sub_1D725C30C("FeedContentPrefetchTask: will prefetch config", 45, 2, &dword_1D5B42000, v5, v6, MEMORY[0x1E69E7CC0]);
  v7 = *(v4 + 88);
  v8 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  sub_1D725BDCC();
  v9 = sub_1D725B92C();
  swift_getAssociatedTypeWitness();
  sub_1D725BA9C();

  sub_1D5F305C0(a1, &v23);
  v10 = swift_allocObject();
  v11 = v26;
  v10[3] = v25;
  v10[4] = v11;
  v10[5] = v27;
  v12 = v24;
  v10[1] = v23;
  v10[2] = v12;
  v13 = sub_1D725B92C();
  sub_1D725BA9C();

  sub_1D5F305C0(a1, &v23);
  v14 = swift_allocObject();
  v15 = v26;
  v14[3] = v25;
  v14[4] = v15;
  v14[5] = v27;
  v16 = v24;
  v14[1] = v23;
  v14[2] = v16;
  v17 = sub_1D725B92C();
  sub_1D5F30D78(255);
  swift_getTupleTypeMetadata2();
  sub_1D725BA9C();

  v18 = sub_1D725B92C();
  type metadata accessor for FeedContentPrefetchTask.Result(0, v8, v7, v19);
  sub_1D725BAAC();

  v20 = sub_1D725B92C();
  v21 = sub_1D725BADC();

  return v21;
}

uint64_t sub_1D5F303AC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *a2;
  v22 = *(*a2 + 88);
  v7 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = &v21 - v11;
  v13 = a2[2];
  v14 = sub_1D7262EDC();
  sub_1D725C30C("FeedContentPrefetchTask: will prefetch content", 46, 2, &dword_1D5B42000, v13, v14, MEMORY[0x1E69E7CC0]);
  sub_1D5F30614(a1, a3);
  (*(v9 + 16))(v12, a1, AssociatedTypeWitness);
  v15 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 2) = v7;
  *(v16 + 3) = v17;
  *(v16 + 4) = a2;
  (*(v9 + 32))(&v16[v15], v12, AssociatedTypeWitness);

  v18 = sub_1D725B92C();
  v19 = sub_1D725BA8C();

  return v19;
}

uint64_t sub_1D5F30614(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = type metadata accessor for FormatTransformData(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatServiceOptions(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + *(v4 + 120));
  v14 = v2[2];
  if (qword_1EDF2BBB8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_1EDFFCAD0);
  sub_1D5CEEFC0(v15, v8, type metadata accessor for FormatTransformData);
  *(v12 + 5) = 0x4122750000000000;
  v12[48] = 0;
  *&v12[v9[12]] = v13;
  *&v12[v9[13]] = v14;
  *(v12 + 56) = xmmword_1D7282F10;
  *(v12 + 9) = 0x40F5180000000000;
  *(v12 + 10) = 30;
  sub_1D5CEEFC0(v8, &v12[v9[10]], type metadata accessor for FormatTransformData);
  v16 = v13;
  v17 = v14;
  sub_1D5F32C28(v8, type metadata accessor for FormatTransformData);
  *&v12[v9[11]] = MEMORY[0x1E69E7CD0];
  *&v12[v9[16]] = 0;
  *(v12 + 4) = 0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v12[v9[15]] = 1;
  v12[v9[14]] = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = sub_1D5F316A4(AssociatedTypeWitness, AssociatedConformanceWitness);
  MEMORY[0x1EEE9AC00](v20, v21);
  v27[-2] = a2;
  v27[-1] = v12;
  sub_1D5ECAC14(sub_1D5F32E90, &v27[-4], v20);
  v23 = v22;

  sub_1D5F32EB0(0);
  v27[0] = v23;
  v24 = sub_1D725B92C();
  sub_1D5B59480(0, &qword_1EDF05390, sub_1D5F32EB0, MEMORY[0x1E69E62F8]);
  sub_1D5F32EE4(&qword_1EDF05388, &qword_1EDF05390, sub_1D5F32EB0);
  v25 = sub_1D725BA3C();

  sub_1D5F32C28(v12, type metadata accessor for FormatServiceOptions);
  return v25;
}

uint64_t sub_1D5F309B4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = a1[2];
  sub_1D5C384A0(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7273AE0;
  v7 = sub_1D72644BC();
  v9 = v8;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D5B7E2C0();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  v10 = sub_1D7262EDC();
  sub_1D725C30C("FeedContentPrefetchTask: successfully prefetched content for %{public}@ groups", 78, 2, &dword_1D5B42000, v5, v10, v6);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a3, a2, AssociatedTypeWitness);
}

uint64_t sub_1D5F30B1C(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a3;
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v9);
  v11 = &v19 - v10;
  v12 = a2[2];
  v13 = sub_1D7262EDC();
  sub_1D725C30C("FeedContentPrefetchTask: will prefetch assets", 45, 2, &dword_1D5B42000, v12, v13, MEMORY[0x1E69E7CC0]);
  v20 = sub_1D5F328F8(a1, v20, v6, v5);
  (*(v8 + 16))(v11, a1, AssociatedTypeWitness);
  v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v6;
  *(v15 + 3) = v5;
  *(v15 + 4) = a2;
  (*(v8 + 32))(&v15[v14], v11, AssociatedTypeWitness);

  v16 = sub_1D725B92C();
  sub_1D5F30D78(255);
  swift_getTupleTypeMetadata2();
  v17 = sub_1D725BA8C();

  return v17;
}

void sub_1D5F30D78(uint64_t a1)
{
  if (!qword_1EDF1AEB8)
  {
    sub_1D5B5A498(255, &qword_1EDF1AB50, 0x1E69B51B8);
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1AEB8);
    }
  }
}

uint64_t sub_1D5F30DE0@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = a2[2];
  sub_1D5C384A0(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7273AE0;
  if (v6 >> 62)
  {
    sub_1D7263BFC();
  }

  v9 = sub_1D72644BC();
  v11 = v10;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1D5B7E2C0();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  v12 = sub_1D7262EDC();
  sub_1D725C30C("FeedContentPrefetchTask: successfully prefetched %{public}@ assets", 66, 2, &dword_1D5B42000, v7, v12, v8);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D5F30D78(255);
  v14 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, a3, AssociatedTypeWitness);
  *(a4 + v14) = v6;
}

uint64_t sub_1D5F30F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D5F30D78(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v9);
  v11 = &v40 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v42 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v40 - v19;
  (*(v21 + 16))(v11, a1, TupleTypeMetadata2, v18);
  v22 = *&v11[*(TupleTypeMetadata2 + 48)];
  v43 = v12;
  v44 = AssociatedTypeWitness;
  (*(v12 + 32))(v20, v11, AssociatedTypeWitness);
  v45 = v6;
  v23 = sub_1D5F313CC(v20, v6, v5);
  if (v22 >> 62)
  {
    v24 = sub_1D7263BFC();
  }

  else
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v47;
  v46 = v5;
  v41 = v23;
  if (!v24)
  {

LABEL_12:
    v31 = objc_allocWithZone(MEMORY[0x1E69B5240]);
    sub_1D5B5A498(0, &unk_1EDF04508, 0x1E69B5240);
    v32 = sub_1D726265C();

    v33 = [v31 initWithManifests_];

    v35 = v42;
    v34 = v43;
    v36 = v44;
    (*(v43 + 16))(v42, v20, v44);
    v37 = objc_opt_self();
    v38 = v41;
    v39 = [v37 manifestByMergingManifest:v41 withManifest:v33];

    (*(v34 + 8))(v20, v36);
    return sub_1D5F2F984(v35, v39, v45, v46, v25);
  }

  v48 = MEMORY[0x1E69E7CC0];
  result = sub_1D7263ECC();
  if ((v24 & 0x8000000000000000) == 0)
  {
    v40 = v3;
    v27 = 0;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1DA6FB460](v27, v22);
      }

      else
      {
        v28 = *(v22 + 8 * v27 + 32);
      }

      v29 = v28;
      ++v27;
      v30 = [v28 contentManifest];

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    while (v24 != v27);

    v25 = v47;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_1D5F313CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v5);
  (*(v8 + 16))(&v15 - v7, a1, AssociatedTypeWitness, v6);
  sub_1D5B49474(0, qword_1EDF0FDC8, &protocol descriptor for ResourceBackedType);
  if (swift_dynamicCast())
  {
    v9 = *(&v16 + 1);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    v11 = (*(v10 + 8))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(&v15);
    if (v11)
    {
      v12 = [v11 contentManifest];

      return v12;
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_1D5F32C28(&v15, sub_1D5F32620);
  }

  v14 = [objc_opt_self() empty];

  return v14;
}

uint64_t sub_1D5F315A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = sub_1D7262EBC();
  sub_1D5C384A0(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D5B7E2C0();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_1D725C30C("FeedContentPrefetchTask: failed to prefetch content with error %{public}@", 73, 2, &dword_1D5B42000, v2, v3, v4);
}

uint64_t sub_1D5F316A4(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  v9 = &v20[-v8];
  v10 = swift_checkMetadataState();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v20[-v14];
  (*(a2 + 64))(a1, a2, v13);
  (*(AssociatedConformanceWitness + 40))(v10, AssociatedConformanceWitness);
  (*(v11 + 8))(v15, v10);
  v16 = swift_getAssociatedConformanceWitness();
  v17 = (*(v16 + 48))(AssociatedTypeWitness, v16);
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  v23 = v17;
  v21 = a1;
  v22 = a2;
  swift_getAssociatedTypeWitness();
  sub_1D72627FC();
  type metadata accessor for FormatContent(0);
  swift_getWitnessTable();
  v18 = sub_1D726242C();

  return v18;
}

void sub_1D5F31994(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for FormatServiceOptions(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v19 = a2;
  v20 = a1;
  v21 = a3;
  type metadata accessor for FormatContent.Resolved(0);
  sub_1D725BDCC();
  sub_1D5F305C0(a2, v22);
  sub_1D5CEEFC0(a3, &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for FormatServiceOptions);
  v12 = (*(v9 + 80) + 96) & ~*(v9 + 80);
  v13 = swift_allocObject();
  v14 = v22[3];
  v13[3] = v22[2];
  v13[4] = v14;
  v13[5] = v22[4];
  v15 = v22[1];
  v13[1] = v22[0];
  v13[2] = v15;
  sub_1D5F32F68(&v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12);
  v16 = sub_1D725B92C();
  v17 = sub_1D725BA7C();

  *a4 = v17;
}

uint64_t sub_1D5F31B54(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = a3;
  sub_1D5B59480(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v24 - v6;
  v8 = type metadata accessor for FormatContentPool(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[4];
  v25 = a1[3];
  v26 = v12;
  v24[1] = __swift_project_boxed_opaque_existential_1(a1, v25);
  v13 = sub_1D72608BC();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = MEMORY[0x1E69E7CC0];
  v15 = sub_1D605A62C(MEMORY[0x1E69E7CC0]);
  v16 = sub_1D605A62C(v14);
  v17 = sub_1D605A5F8(v14);
  v18 = sub_1D605AD18(v14);
  v19 = sub_1D605B9BC(v14);
  v20 = sub_1D605B9F0(v14);
  v21 = sub_1D605ACB8(v14);
  FormatContentPool.init(headlines:headlineLists:issues:tags:tagFeeds:tagFeedFetches:puzzles:puzzleTypes:puzzleStatistics:recipes:recipeLists:placeholders:slotPlaceholders:webArchivePromises:resourcePromises:sportsDataVisualizations:genericDataVisualizations:sponsoredAdBanner:)(v14, v15, v14, v14, v16, v17, v14, v14, v11, v14, v14, v18, v14, v14, v19, v20, v14, v21, v7);
  v22 = FormatServiceType.resolve(content:pool:options:)(v27, v11, v28, v25, v26);
  sub_1D5F32C28(v11, type metadata accessor for FormatContentPool);
  return v22;
}

uint64_t sub_1D5F31D8C(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v7 + 16))(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2, v5);
  sub_1D5B49474(0, &qword_1EDF14238, &protocol descriptor for FeedConfigPrefetchable);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v12, v14);
    v8 = v15;
    v9 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v10 = (*(v9 + 8))(a1 + 40, v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return v10;
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1D5F32C28(v12, sub_1D5F32C88);
    return MEMORY[0x1E69E7CC0];
  }
}

id *FeedContentPrefetchTask.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 13));

  return v0;
}

uint64_t FeedContentPrefetchTask.__deallocating_deinit()
{
  FeedContentPrefetchTask.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F3204C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D5F32094(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5F320F8(uint64_t a1)
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

uint64_t sub_1D5F3220C(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_1D5B5A498(319, &unk_1EDF04508, 0x1E69B5240);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D5F322B4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_1D5F32444(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v12 = a3 - v10 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v10 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 > v10)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v10;
    }

    else
    {
      v16 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v10 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        *(a1 + v11) = v16;
      }

      else
      {
        *(a1 + v11) = v16;
      }
    }

    else if (v15)
    {
      *(a1 + v11) = v16;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v11) = 0;
  }

  else if (v15)
  {
    *(a1 + v11) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v8 < 0x7FFFFFFF)
  {
    v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = (a2 - 1);
    }

    *v19 = v20;
  }

  else
  {
    v18 = *(v7 + 56);

    v18(a1, a2);
  }
}

void sub_1D5F32620(uint64_t a1)
{
  if (!qword_1EDF0FDC0)
  {
    sub_1D5B49474(255, qword_1EDF0FDC8, &protocol descriptor for ResourceBackedType);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF0FDC0);
    }
  }
}

uint64_t sub_1D5F32688@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  (*(v10 + 16))(v15 - v9, a1, AssociatedTypeWitness, v8);
  sub_1D5B49474(0, &qword_1EDF14258, &protocol descriptor for FeedGroupPrefetchable);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v15, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v12 + 8))(v11, v12);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_1D5F32C28(v15, sub_1D5F33084);
    v14 = type metadata accessor for FormatContent(0);
    return (*(*(v14 - 8) + 56))(a4, 1, 1, v14);
  }
}

uint64_t sub_1D5F328F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1D5F31D8C(a2, AssociatedTypeWitness);
  v7 = v6;
  if (!(v6 >> 62))
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_14:

    sub_1D5F32BC0(0);
    v16 = sub_1D725B92C();
    sub_1D5B59480(0, &qword_1EDF05370, sub_1D5F32BC0, MEMORY[0x1E69E62F8]);
    sub_1D5F32EE4(&qword_1EDF05368, &qword_1EDF05370, sub_1D5F32BC0);
    v17 = sub_1D725BA3C();

    return v17;
  }

  v8 = sub_1D7263BFC();
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_3:
  result = sub_1D7263ECC();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA6FB460](v10, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v12 filePath];
      if (v14)
      {

        v18 = v13;
        sub_1D5F32BC0(0);
        swift_allocObject();
        sub_1D725BB1C();
      }

      else
      {
        MEMORY[0x1EEE9AC00](0, v15);
        sub_1D5F32BC0(v11);
        swift_allocObject();
        sub_1D725BBAC();
      }

      ++v10;
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    while (v8 != v10);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1D5F32BC0(uint64_t a1)
{
  if (!qword_1EDF17938)
  {
    sub_1D5B5A498(255, &qword_1EDF1AB50, 0x1E69B51B8);
    v1 = sub_1D725BC0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17938);
    }
  }
}

uint64_t sub_1D5F32C28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D5F32C88(uint64_t a1)
{
  if (!qword_1EDF14230)
  {
    sub_1D5B49474(255, &qword_1EDF14238, &protocol descriptor for FeedConfigPrefetchable);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF14230);
    }
  }
}

uint64_t objectdestroy_18Tm_0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D5F32EE4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B59480(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5F32F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatServiceOptions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F32FCC(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatServiceOptions(0) - 8);
  v4 = (*(v3 + 80) + 96) & ~*(v3 + 80);
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  return FormatServiceType.prefetch(content:options:)(a1, v1 + v4, v5, v6);
}

void sub_1D5F33084(uint64_t a1)
{
  if (!qword_1EDF14250)
  {
    sub_1D5B49474(255, &qword_1EDF14258, &protocol descriptor for FeedGroupPrefetchable);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF14250);
    }
  }
}

uint64_t sub_1D5F330EC(uint64_t a1)
{
  result = sub_1D725FACC();
  if (v2 <= 0x3F)
  {
    result = sub_1D725D34C();
    if (v3 <= 0x3F)
    {
      result = sub_1D725E9DC();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1D5F33238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5BB13E4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5F33294(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

double sub_1D5F332A8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v28 = a4;
  v6 = sub_1D726062C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v23 - v13;
  v15 = a1[3];
  v26 = a1[4];
  v27 = __swift_project_boxed_opaque_existential_1(a1, v15);
  v25 = sub_1D726025C();
  v16 = *(v7 + 16);
  v16(v14, a2, v6);
  v16(v10, v24, v6);
  v17 = *(v7 + 80);
  v18 = (v17 + 16) & ~v17;
  v19 = (v8 + v17 + v18) & ~v17;
  v20 = swift_allocObject();
  v21 = *(v7 + 32);
  v21(v20 + v18, v14, v6);
  v21(v20 + v19, v10, v6);
  sub_1D72609CC();
  sub_1D7260A0C();
  sub_1D7260A9C();
  sub_1D5B48940(&qword_1EDF43930, MEMORY[0x1E69B41B0], MEMORY[0x1E69B41A8]);
  sub_1D72609DC();

  return result;
}

uint64_t sub_1D5F33524(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v34 = a2;
  v35 = MEMORY[0x1E69B4228];
  sub_1D5BB13E4(0, &unk_1EDF3A9A8, MEMORY[0x1E69B4228]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v27 - v6;
  v8 = sub_1D72602AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D726057C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  (*(v9 + 104))(v12, *MEMORY[0x1E69B3E10], v8);
  sub_1D726056C();
  sub_1D5B48940(&qword_1EDF3AA50, MEMORY[0x1E69B3F60], MEMORY[0x1E69B3F58]);
  sub_1D72609FC();
  (*(v14 + 8))(v17, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = *MEMORY[0x1E69B4210];
  v32 = sub_1D7260AEC();
  v20 = *(v32 - 8);
  v31 = *(v20 + 104);
  v33 = v20 + 104;
  v31(v7, v19, v32);
  v30 = *MEMORY[0x1E69B4220];
  v21 = v30;
  v22 = sub_1D7260AFC();
  v23 = *(v22 - 8);
  v29 = *(v23 + 104);
  v29(v7, v21, v22);
  v28 = *(v23 + 56);
  v28(v7, 0, 1, v22);
  sub_1D726062C();
  sub_1D5B48940(&qword_1EDF3AA30, MEMORY[0x1E69B3FD8], MEMORY[0x1E69B3FD0]);
  sub_1D72609EC();
  v24 = v35;
  sub_1D5F33238(v7, &unk_1EDF3A9A8, v35);
  v25 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v31(v7, *MEMORY[0x1E69B4218], v32);
  v29(v7, v30, v22);
  v28(v7, 0, 1, v22);
  sub_1D72609EC();
  return sub_1D5F33238(v7, &unk_1EDF3A9A8, v24);
}

double sub_1D5F33988@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1D726062C() - 8);
  v6 = *(v5 + 80);
  return sub_1D5F332A8(a1, v2 + ((v6 + 16) & ~v6), v2 + ((*(v5 + 64) + v6 + ((v6 + 16) & ~v6)) & ~v6), a2);
}

uint64_t sub_1D5F33A30(void *a1)
{
  v3 = *(sub_1D726062C() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return sub_1D5F33524(a1, v1 + v5, v6);
}

uint64_t static FormatSlotItemTagFilterCondition.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v3 >> 62 == 1)
      {
        v10 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v14 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v15 = v10;
        sub_1D5F33D5C(v3);
        sub_1D5F33D5C(v2);
        v6 = _s8NewsFeed35FormatSlotItemTagFilterAndConditionV2eeoiySbAC_ACtFZ_0(&v15, &v14);
        goto LABEL_10;
      }
    }

    else if (!(v3 >> 62))
    {
      v5 = *(v2 + 16);
      v14 = *(v3 + 16);
      v15 = v5;
      sub_1D5F33D5C(v3);
      sub_1D5F33D5C(v2);
      v6 = _s8NewsFeed35FormatSlotItemTagFilterAndConditionV2eeoiySbAC_ACtFZ_0(&v15, &v14);
LABEL_10:
      v9 = v6;
      goto LABEL_11;
    }

    goto LABEL_24;
  }

  if (v4 != 2)
  {
    v11 = __ROR8__(v2 + 0x4000000000000000, 3);
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        if (v3 != 0xC000000000000010)
        {
          goto LABEL_24;
        }

        sub_1D5F33D8C(*a1);
        v12 = 0xC000000000000010;
      }

      else
      {
        if (v3 != 0xC000000000000018)
        {
          goto LABEL_24;
        }

        sub_1D5F33D8C(*a1);
        v12 = 0xC000000000000018;
      }
    }

    else if (v11)
    {
      if (v3 != 0xC000000000000008)
      {
        goto LABEL_24;
      }

      sub_1D5F33D8C(*a1);
      v12 = 0xC000000000000008;
    }

    else
    {
      if (v3 != 0xC000000000000000)
      {
        goto LABEL_24;
      }

      sub_1D5F33D8C(*a1);
      v12 = 0xC000000000000000;
    }

    sub_1D5F33D8C(v12);
    v9 = 1;
    return v9 & 1;
  }

  if (v3 >> 62 != 2)
  {
LABEL_24:
    sub_1D5F33D5C(*a2);
    sub_1D5F33D5C(v2);
    sub_1D5F33D8C(v2);
    sub_1D5F33D8C(v3);
    v9 = 0;
    return v9 & 1;
  }

  v8 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  *&v15 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v7 = v15;
  *&v14 = v8;
  sub_1D5F33D5C(v3);
  sub_1D5F33D5C(v2);
  sub_1D5F33D5C(v8);
  sub_1D5F33D5C(v15);
  v9 = static FormatSlotItemTagFilterCondition.== infix(_:_:)(&v15, &v14);
  sub_1D5F33D8C(v8);
  sub_1D5F33D8C(v7);
LABEL_11:
  sub_1D5F33D8C(v2);
  sub_1D5F33D8C(v3);
  return v9 & 1;
}

double sub_1D5F33D5C(unint64_t a1)
{
  if ((a1 >> 62) <= 2)
  {
  }

  return result;
}

double sub_1D5F33D8C(unint64_t a1)
{
  if ((a1 >> 62) <= 2)
  {
  }

  return result;
}

uint64_t sub_1D5F33DF0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *v3 >> 62;
  if (v8 <= 1)
  {
    if (v8)
    {
      v14 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = *(v14 + 16);
      v9 = *(v14 + 24);
      sub_1D5F33D5C(v10);
      sub_1D5F33D5C(v9);
      sub_1D5F33D5C(v10);
      v15 = sub_1D5F33DF0(a1, a2, a3);
      sub_1D5F33D8C(v10);
      if (v15)
      {
        sub_1D5F33D8C(v10);
        sub_1D5F33D8C(v9);
        v12 = 1;
        return v12 & 1;
      }
    }

    else
    {
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      sub_1D5F33D5C(v10);
      sub_1D5F33D5C(v9);
      sub_1D5F33D5C(v10);
      v11 = sub_1D5F33DF0(a1, a2, a3);
      sub_1D5F33D8C(v10);
      if ((v11 & 1) == 0)
      {
        sub_1D5F33D8C(v10);
        sub_1D5F33D8C(v9);
        v12 = 0;
        return v12 & 1;
      }
    }

    sub_1D5F33D5C(v9);
    v12 = sub_1D5F33DF0(a1, a2, a3);
    sub_1D5F33D8C(v10);
    sub_1D5F33D8C(v9);
    sub_1D5F33D8C(v9);
    return v12 & 1;
  }

  if (v8 == 2)
  {
    v34 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1D5F33D5C(v34);
    sub_1D5F33D5C(v34);
    v13 = sub_1D5F33DF0(a1, a2, a3);
    sub_1D5F33D8C(v34);
    sub_1D5F33D8C(v34);
    v12 = v13 ^ 1;
    return v12 & 1;
  }

  v16 = __ROR8__(v7 + 0x4000000000000000, 3);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v12 = [*(a3 + 56) hasSubscriptionToTag_];
    }

    else
    {
      v12 = [*(a3 + 56) hasSubscriptionToTag_] ^ 1;
    }

    return v12 & 1;
  }

  if (v16)
  {
    v24 = *(a2 + *(type metadata accessor for FormatServiceOptions(0) + 64));
    if (v24)
    {
      v25 = *(v24 + 32);
      if (v25)
      {
        swift_unknownObjectRetain();
        v26 = [a1 identifier];
        v20 = sub_1D726207C();
        v22 = v27;

        v23 = [v25 identifier];
        goto LABEL_20;
      }
    }

LABEL_25:
    v12 = 0;
    return v12 & 1;
  }

  v17 = *(a2 + *(type metadata accessor for FormatServiceOptions(0) + 64));
  if (!v17 || !*(v17 + 24))
  {
    goto LABEL_25;
  }

  v18 = FCFeedDescriptor.feedTag.getter();
  v19 = [a1 identifier];
  v20 = sub_1D726207C();
  v22 = v21;

  v23 = [v18 identifier];
LABEL_20:
  v28 = v23;
  v29 = sub_1D726207C();
  v31 = v30;

  if (v20 == v29 && v22 == v31)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D72646CC();
  }

  swift_unknownObjectRelease();
  return v12 & 1;
}

uint64_t sub_1D5F34118(double a1)
{
  v2 = *v1;
  v3 = *v1 >> 62;
  if (v3 <= 1)
  {
    if (v3)
    {
      v15 = sub_1D5F34118(a1);
      v4 = 762474285;
      v5 = 0xE400000000000000;
    }

    else
    {
      v15 = sub_1D5F34118(a1);
      v4 = 0x2D646E612DLL;
      v5 = 0xE500000000000000;
    }

    v8 = MEMORY[0x1DA6F9910](v4, v5);
    v9 = sub_1D5F34118(v8);
    MEMORY[0x1DA6F9910](v9);

    return v15;
  }

  if (v3 == 2)
  {
    v15 = 762605422;
    v14 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v6 = sub_1D5F33D5C(v14);
    v7 = sub_1D5F34118(v6);
    MEMORY[0x1DA6F9910](v7);

    sub_1D5F33D8C(v14);
    return v15;
  }

  v11 = __ROR8__(v2 + 0x4000000000000000, 3);
  v12 = 0x67615464656566;
  v13 = 0x6465776F6C6C6F66;
  if (v11 != 2)
  {
    v13 = 0x776F6C6C6F666E75;
  }

  if (v11)
  {
    v12 = 0x67615470756F7267;
  }

  if (v11 <= 1)
  {
    return v12;
  }

  else
  {
    return v13;
  }
}

unint64_t sub_1D5F342B0(uint64_t a1)
{
  result = sub_1D5F342D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F342D8()
{
  result = qword_1EC881260;
  if (!qword_1EC881260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881260);
  }

  return result;
}

unint64_t sub_1D5F3432C(void *a1)
{
  a1[1] = sub_1D5F34364();
  a1[2] = sub_1D5F343B8();
  result = sub_1D5F3440C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F34364()
{
  result = qword_1EDF08188;
  if (!qword_1EDF08188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF08188);
  }

  return result;
}

unint64_t sub_1D5F343B8()
{
  result = qword_1EC881268;
  if (!qword_1EC881268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881268);
  }

  return result;
}

unint64_t sub_1D5F3440C()
{
  result = qword_1EC881270;
  if (!qword_1EC881270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881270);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed32FormatSlotItemTagFilterConditionO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

void *sub_1D5F3447C(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

uint64_t sub_1D5F344D0(uint64_t a1)
{
  v2 = sub_1D5F34598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F3450C(uint64_t a1)
{
  v2 = sub_1D5F34598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D5F34598()
{
  result = qword_1EDF09CA8;
  if (!qword_1EDF09CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09CA8);
  }

  return result;
}

void sub_1D5F345EC()
{
  if (!qword_1EDF3C880)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C880);
    }
  }
}

uint64_t sub_1D5F3468C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5F345EC();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5F3473C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D5F347C4(uint64_t a1)
{
  v2 = sub_1D5F34A38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F34800(uint64_t a1)
{
  v2 = sub_1D5F34A38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5F3488C(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v15[0] = a5;
  sub_1D5F35218(0, a2, a3, a4, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v15 - v11;
  v13 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (v15[0])();

  sub_1D7264B5C();
  v15[3] = v13;
  sub_1D5F345EC();
  sub_1D5F3468C(&qword_1EDF04C40, sub_1D5B59EF4, MEMORY[0x1E69E6300]);
  sub_1D726443C();

  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1D5F34A38()
{
  result = qword_1EDF0A4B8[0];
  if (!qword_1EDF0A4B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0A4B8);
  }

  return result;
}

uint64_t sub_1D5F34ADC@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  v18 = a6;
  sub_1D5F35218(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_1D7264B0C();
  if (!v6)
  {
    v15 = v17;
    v14 = v18;
    sub_1D5F345EC();
    sub_1D5F3468C(&qword_1EDF3C870, sub_1D5B59EA0, MEMORY[0x1E69E6330]);
    sub_1D726431C();
    (*(v15 + 8))(v13, v10);
    *v14 = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double FormatContentSubgroupFilterNot.filter.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

unint64_t static FormatContentSubgroupFilterNot.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;

  LOBYTE(v2) = static FormatContentSubgroupFilter.== infix(_:_:)(&v5, &v4);

  return v2 & 1;
}

uint64_t sub_1D5F34D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D5F34DF8(uint64_t a1)
{
  v2 = sub_1D5F35004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F34E34(uint64_t a1)
{
  v2 = sub_1D5F35004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSubgroupFilterNot.encode(to:)(void *a1)
{
  sub_1D5F35218(0, &qword_1EDF02548, sub_1D5F35004, &type metadata for FormatContentSubgroupFilterNot.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F35004();

  sub_1D7264B5C();
  v11[3] = v9;
  sub_1D5B59EF4();
  sub_1D726443C();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D5F35004()
{
  result = qword_1EDF09C80;
  if (!qword_1EDF09C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09C80);
  }

  return result;
}

uint64_t FormatContentSubgroupFilterNot.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  sub_1D5F35218(0, &qword_1EDF03940, sub_1D5F35004, &type metadata for FormatContentSubgroupFilterNot.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F35004();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v13;
    sub_1D5B59EA0();
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
    *v10 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5F35218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D5F352C0()
{
  result = qword_1EDF09C88;
  if (!qword_1EDF09C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09C88);
  }

  return result;
}

unint64_t sub_1D5F35314()
{
  result = qword_1EDF09C90;
  if (!qword_1EDF09C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09C90);
  }

  return result;
}

unint64_t sub_1D5F35368()
{
  result = qword_1EC881278;
  if (!qword_1EC881278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881278);
  }

  return result;
}

unint64_t sub_1D5F353FC()
{
  result = qword_1EDF0A498;
  if (!qword_1EDF0A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A498);
  }

  return result;
}

unint64_t sub_1D5F35450()
{
  result = qword_1EDF0A4A0;
  if (!qword_1EDF0A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A4A0);
  }

  return result;
}

unint64_t sub_1D5F354A4()
{
  result = qword_1EC881280;
  if (!qword_1EC881280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881280);
  }

  return result;
}

uint64_t sub_1D5F35538(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F3558C()
{
  result = qword_1EDF09C60;
  if (!qword_1EDF09C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09C60);
  }

  return result;
}

unint64_t sub_1D5F355E0()
{
  result = qword_1EDF09C68;
  if (!qword_1EDF09C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09C68);
  }

  return result;
}

unint64_t sub_1D5F35634()
{
  result = qword_1EC881288;
  if (!qword_1EC881288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881288);
  }

  return result;
}

unint64_t sub_1D5F356B8(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;

  LOBYTE(v2) = static FormatContentSubgroupFilter.== infix(_:_:)(&v5, &v4);

  return v2 & 1;
}

unint64_t sub_1D5F35794()
{
  result = qword_1EC881290;
  if (!qword_1EC881290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881290);
  }

  return result;
}

unint64_t sub_1D5F357EC()
{
  result = qword_1EC881298;
  if (!qword_1EC881298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881298);
  }

  return result;
}

unint64_t sub_1D5F35844()
{
  result = qword_1EC8812A0;
  if (!qword_1EC8812A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8812A0);
  }

  return result;
}

unint64_t sub_1D5F3589C()
{
  result = qword_1EDF09C70;
  if (!qword_1EDF09C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09C70);
  }

  return result;
}

unint64_t sub_1D5F358F4()
{
  result = qword_1EDF09C78;
  if (!qword_1EDF09C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09C78);
  }

  return result;
}

unint64_t sub_1D5F3594C()
{
  result = qword_1EDF0A4A8;
  if (!qword_1EDF0A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A4A8);
  }

  return result;
}

unint64_t sub_1D5F359A4()
{
  result = qword_1EDF0A4B0;
  if (!qword_1EDF0A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A4B0);
  }

  return result;
}

unint64_t sub_1D5F359FC()
{
  result = qword_1EDF09C98;
  if (!qword_1EDF09C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09C98);
  }

  return result;
}

unint64_t sub_1D5F35A54()
{
  result = qword_1EDF09CA0;
  if (!qword_1EDF09CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09CA0);
  }

  return result;
}

uint64_t sub_1D5F35B18()
{
  v1 = v0[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = sub_1D725AA4C();
  LOBYTE(v1) = sub_1D5BE240C(v2, v3, v1);

  if (v1)
  {
    return 1;
  }

  v5 = v0[3];
  v6 = sub_1D725AA4C();
  LOBYTE(v5) = sub_1D5BE240C(v6, v7, v5);

  if (v5)
  {
    return 2;
  }

  v8 = v0[4];
  v9 = sub_1D725AA4C();
  LOBYTE(v8) = sub_1D5BE240C(v9, v10, v8);

  if (v8)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

void *sub_1D5F35CB0()
{

  return v0;
}

uint64_t sub_1D5F35CE0()
{
  sub_1D5F35CB0();

  return swift_deallocClassInstance();
}

unint64_t sub_1D5F35D2C()
{
  v1 = 0x776F6C6C61;
  v2 = 0xD00000000000001BLL;
  if (*v0 == 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D5F35DC8()
{
  result = qword_1EC8812A8;
  if (!qword_1EC8812A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8812A8);
  }

  return result;
}

id sub_1D5F35E1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_1D6997D10(0, v1, 0);
  v2 = v28;
  v4 = a1 + 64;
  result = sub_1D7263B7C();
  v6 = result;
  v7 = 0;
  v27 = *(a1 + 36);
  v25 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v27 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v26 = *v10;
    v12 = *(*(a1 + 56) + 8 * v6);

    result = [v12 doubleValue];
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = v13;
      result = sub_1D6997D10((v14 > 1), v15 + 1, 1);
      v13 = v24;
    }

    *(v28 + 16) = v15 + 1;
    v16 = (v28 + 24 * v15);
    v16[4] = v26;
    v16[5] = v11;
    v16[6] = v13;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v27 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (a1 + 72 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1D5C25E1C(v6, v27, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v6, v27, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

char *sub_1D5F3608C(unint64_t a1)
{
  v1 = a1;
  v20 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v22 = MEMORY[0x1E69E7CC0];
    result = sub_1D6997CD0(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    if (!i)
    {
      break;
    }

    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v20)
    {
      v19 = sub_1D7263BFC();
    }

    else
    {
      v19 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = 0;
    v21 = v1 & 0xC000000000000001;
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    while (v10 < i)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_45;
      }

      if (v19 == v10)
      {
        goto LABEL_46;
      }

      if (v21)
      {
        v12 = MEMORY[0x1DA6FB460](v10, v1);
      }

      else
      {
        if (v10 >= *(v4 + 16))
        {
          goto LABEL_47;
        }

        v12 = *(v1 + 8 * v10 + 32);
        swift_unknownObjectRetain();
      }

      v13 = v1;
      v14 = [swift_unknownObjectRetain() scoreProfile];
      if (!v14)
      {
        v14 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
      }

      swift_unknownObjectRelease();
      v16 = *(v22 + 16);
      v15 = *(v22 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D6997CD0((v15 > 1), v16 + 1, 1);
      }

      *(v22 + 16) = v16 + 1;
      v17 = v22 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      ++v10;
      v1 = v13;
      v4 = v18;
      if (v11 == i)
      {
        goto LABEL_8;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1 & 0xC000000000000001;
LABEL_8:
  if (v20)
  {
    while (i != sub_1D7263BFC())
    {
LABEL_12:
      if (v21)
      {
        v5 = MEMORY[0x1DA6FB460](i, v1);
        if (__OFADD__(i, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (i < 0)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        if (i >= *(v4 + 16))
        {
          goto LABEL_43;
        }

        v5 = *(v1 + 8 * i + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(i, 1))
        {
          goto LABEL_42;
        }
      }

      v6 = [swift_unknownObjectRetain() scoreProfile];
      if (!v6)
      {
        v6 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
      }

      swift_unknownObjectRelease();
      v8 = *(v22 + 16);
      v7 = *(v22 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1D6997CD0((v7 > 1), v8 + 1, 1);
      }

      *(v22 + 16) = v8 + 1;
      v9 = v22 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      ++i;
      if (!v20)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (i != *(v4 + 16))
    {
      goto LABEL_12;
    }
  }

  return v22;
}

void FeedPersonalizationServiceType.score<A>(group:context:)(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  if (FeedGroupable.personalizingScoredItems.getter(a4, a6))
  {
    (*(a5 + 48))();

    (*(a6 + 48))(a4, a6);
  }

  else
  {
    v11 = (*(a6 + 32))(a4, a6);
    v13 = v10;
    FeedPersonalizationServiceType.groupScore(items:context:)(v11, &v13, a3, a5);

    if (!v12)
    {
      (*(a6 + 48))(a4, a6);
    }
  }
}

uint64_t FeedPersonalizationServiceType.groupScore(items:context:)(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  result = (*(a4 + 8))(a1, &v7);
  if (!v4)
  {
    (*(a4 + 48))();
  }

  return result;
}

uint64_t FeedPersonalizationServiceType.scoreSort<A>(groups:context:)(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  v11 = *a2;
  v35 = a1;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = v11;
  v12 = sub_1D72627FC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1D5B874E4(sub_1D5F36980, v28, v12, TupleTypeMetadata2, v14, WitnessTable, MEMORY[0x1E69E7288], &v34);
  if (!v6)
  {
    v27 = &v26;
    v35 = v16;
    MEMORY[0x1EEE9AC00](v16, v17);
    v18 = sub_1D72627FC();
    swift_getWitnessTable();
    v19 = sub_1D72624AC();

    v27 = &v26;
    v35 = v19;
    MEMORY[0x1EEE9AC00](v20, v21);
    v25[2] = a3;
    v25[3] = v9;
    v25[4] = a5;
    v25[5] = a6;
    v22 = swift_getWitnessTable();
    v9 = sub_1D5B874E4(sub_1D5F36B30, v25, v18, v9, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  }

  return v9;
}

uint64_t sub_1D5F36828@<X0>(uint64_t a1@<X0>, __int16 a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, uint64_t a8@<X8>)
{
  v15 = *(a4 - 8);
  (*(v15 + 16))(a8, a1, a4);
  v21 = a2;
  FeedPersonalizationServiceType.score<A>(group:context:)(a1, &v21, a3, a4, a5, a6);
  if (v20)
  {
    result = (*(v15 + 8))(a8, a4);
    *a7 = v20;
  }

  else
  {
    v18 = v16;
    result = swift_getTupleTypeMetadata2();
    *(a8 + *(result + 48)) = v18;
  }

  return result;
}

uint64_t sub_1D5F36A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v7);
  v10 = v13 - v9;
  (*(v11 + 16))(v13 - v9, a1, v8);
  return (*(*(a2 - 8) + 32))(a3, v10, a2);
}

uint64_t FeedPersonalizationServiceType.score(content:context:)@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = v9 >> 13;
  if (v9 >> 13 > 2)
  {
    if (v10 == 3)
    {
      v13 = type metadata accessor for FormatContent.Resolved(0);
      v14 = sub_1D5CECAC0(*(a1 + *(v13 + 36)));
      v15 = *(a4 + 24);
      sub_1D5B5A498(0, &qword_1EDF3C6B0, 0x1E69B5578);
      v15(v14);

LABEL_8:

      return sub_1D5D63D9C(a1, a5);
    }

    v16 = type metadata accessor for FormatContent.Resolved(0);
    v12 = sub_1D5CEB958(*(a1 + *(v16 + 36)));
    LOBYTE(v18) = 0;
LABEL_7:
    (*(a4 + 16))(v12, &v18, a3, a4);

    goto LABEL_8;
  }

  if (v10 - 1 >= 2)
  {
    v11 = type metadata accessor for FormatContent.Resolved(0);
    v12 = sub_1D5CEB958(*(a1 + *(v11 + 36)));
    LOBYTE(v18) = v9;
    goto LABEL_7;
  }

  return sub_1D5D63D9C(a1, a5);
}

uint64_t *FeedPersonalizationServiceType.bestOfGroup(from:context:allowClusteringFallback:)(uint64_t a1, unsigned __int8 *a2, char a3, uint64_t a4, unint64_t a5)
{
  v7 = v6;
  v9 = a4;
  LOBYTE(v10) = a3;
  v11 = *a2;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v54[0] = MEMORY[0x1E69E7CC0];
    sub_1D6997D30(0, v12, 0);
    v13 = v54[0];
    v15 = (a1 + 32);
    do
    {
      v52 = *v15;
      v54[0] = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      swift_unknownObjectRetain();
      v18 = *(&v52 + 1);
      if (v17 >= v16 >> 1)
      {
        sub_1D6997D30((v16 > 1), v17 + 1, 1);
        v13 = v54[0];
      }

      *(v13 + 16) = v17 + 1;
      v19 = v13 + 24 * v17;
      *(v19 + 32) = v52;
      *(v19 + 48) = 0;
      ++v15;
      --v12;
    }

    while (v12);
    v7 = v48;
    v5 = v50;
    v9 = a4;
    LOBYTE(v10) = a3;
  }

  LOWORD(v54[0]) = v11;
  if (qword_1EC87DBF8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v20 = type metadata accessor for FeedPersonalizationClusteringRules(0);
  v21 = __swift_project_value_buffer(v20, qword_1EC8974C0);
  v22 = (*(a5 + 72))(v13, v54, v10 & 1, v21, v9, a5);
  if (!v7)
  {
    v9 = v22;

    v13 = *(v9 + 16);
    if (v13)
    {
      v23 = 0;
      v24 = v9 + 48;
      v43 = v13 - 1;
      v5 = MEMORY[0x1E69E7CC0];
      v49 = *(v9 + 16);
      v51 = v9;
      v44 = v9 + 48;
      do
      {
        v46 = v5;
        v5 = (v24 + 24 * v23);
        a5 = v23;
        while (1)
        {
          if (a5 >= *(v9 + 16))
          {
            __break(1u);
            goto LABEL_27;
          }

          v26 = *(v5 - 2);
          v25 = *(v5 - 1);
          v10 = *v5;
          v23 = a5 + 1;
          v54[4] = &unk_1F52ABB80;
          v27 = swift_dynamicCastObjCProtocolConditional();
          if (v27)
          {
            break;
          }

          v53 = a5 + 1;
          v28 = qword_1EDF1BB50;
          swift_unknownObjectRetain();
          v29 = v25;
          v30 = v10;
          if (v28 != -1)
          {
            swift_once();
          }

          v7 = qword_1EDFFC828;
          v31 = sub_1D7262EBC();
          sub_1D5C384A0(0);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_1D7273AE0;
          v54[0] = v26;
          v54[1] = v29;
          v54[2] = v10;
          swift_unknownObjectRetain();
          v33 = v29;
          v34 = v30;
          v10 = sub_1D72620FC();
          v36 = v35;
          *(v32 + 56) = MEMORY[0x1E69E6158];
          *(v32 + 64) = sub_1D5B7E2C0();
          *(v32 + 32) = v10;
          *(v32 + 40) = v36;
          sub_1D725C30C("Creating Best Of group and found a non-headline item: %{public}@", 64, 2, &dword_1D5B42000, v7, v31, v32);

          swift_unknownObjectRelease();
          v5 += 3;
          v9 = v51;
          a5 = v53;
          v13 = v49;
          if (v49 == v53)
          {
            v5 = v46;
            goto LABEL_25;
          }
        }

        v37 = v27;
        swift_unknownObjectRetain();
        v38 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1D698FB64(0, *(v46 + 2) + 1, 1, v46);
        }

        v7 = *(v46 + 2);
        v39 = *(v46 + 3);
        if (v7 >= v39 >> 1)
        {
          v46 = sub_1D698FB64((v39 > 1), v7 + 1, 1, v46);
        }

        v40 = v37;
        v5 = v46;
        *(v46 + 2) = v7 + 1;
        v41 = &v46[16 * v7];
        *(v41 + 4) = v40;
        *(v41 + 5) = v38;
        v24 = v44;
      }

      while (v43 != a5);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }
  }

LABEL_25:

  return v5;
}

uint64_t FeedPersonalizationService.__allocating_init(feedPersonalizingEngine:groupingPersonalizer:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FeedPersonalizationService.init(feedPersonalizingEngine:groupingPersonalizer:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

char *FeedPersonalizationService.score(items:context:)(unint64_t a1, unsigned __int16 *a2)
{
  v4 = *a2;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_22:
    v22 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
    v14 = sub_1D5F38AC8(a1, v22);

    return v14;
  }

  if (!sub_1D7263BFC())
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = *(v2 + 16);
  sub_1D5B5534C(0, &qword_1EDF1A860, &protocolRef_FCFeedPersonalizingItem);
  v6 = sub_1D726265C();
  if (v4 >> 13 > 2)
  {
    v7 = 0;
  }

  else if (v4 >> 13 == 1)
  {
    v7 = qword_1D7283B98[v4];
  }

  else
  {
    v7 = FeedHeadlineScoringContext.configurationSet.getter();
  }

  v8 = [v5 sortItems:v6 options:0 configurationSet:v7];

  v9 = [v8 sortedItems];
  v10 = sub_1D726267C();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

  v11 = sub_1D7263BFC();
  if (!v11)
  {
LABEL_24:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_10:
  v24 = MEMORY[0x1E69E7CC0];
  result = sub_1D6997D30(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = v24;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1DA6FB460](v13, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v13 + 32);
        swift_unknownObjectRetain();
      }

      v16 = [v8 scoreProfiles];
      v17 = [v16 objectForKey_];

      v18 = v17;
      if (!v17)
      {
        v18 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
      }

      v20 = *(v24 + 16);
      v19 = *(v24 + 24);
      if (v20 >= v19 >> 1)
      {
        v23 = v18;
        sub_1D6997D30((v19 > 1), v20 + 1, 1);
        v18 = v23;
      }

      ++v13;
      *(v24 + 16) = v20 + 1;
      v21 = (v24 + 24 * v20);
      v21[4] = v15;
      v21[5] = v18;
      v21[6] = 0;
    }

    while (v11 != v13);

    return v14;
  }

  __break(1u);
  return result;
}

char *FeedPersonalizationService.score(headlines:context:)(unint64_t a1, _BYTE *a2)
{
  v3 = v2;
  v4 = a1;
  if (a1 >> 62)
  {
LABEL_33:
    if (sub_1D7263BFC())
    {
      v6 = *(v3 + 16);
      sub_1D5B5534C(0, &qword_1EDF1A860, &protocolRef_FCFeedPersonalizingItem);

      sub_1D726403C();

      goto LABEL_4;
    }
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v3 + 16);

      sub_1D726479C();
      sub_1D5B5534C(0, &qword_1EDF1A860, &protocolRef_FCFeedPersonalizingItem);
      if (!swift_dynamicCastMetatype())
      {
        v23 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          v24 = v5 + 32;
          do
          {
            if (!swift_dynamicCastObjCProtocolConditional())
            {
              break;
            }

            v24 += 8;
            --v23;
          }

          while (v23);
        }
      }

LABEL_4:
      sub_1D5B5534C(0, &qword_1EDF1A860, &protocolRef_FCFeedPersonalizingItem);
      v7 = sub_1D726265C();

      v8 = [v6 sortItems:v7 options:0 configurationSet:FeedHeadlineScoringContext.configurationSet.getter()];

      sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
      v9 = sub_1D726265C();
      v10 = [v8 scoreProfiles];
      FCAssignPersonalizationScoresFromProfiles();

      v11 = [v8 sortedItems];
      v12 = sub_1D726267C();

      if (v12 >> 62)
      {
        v4 = sub_1D7263BFC();
        if (v4)
        {
LABEL_6:
          v3 = 0;
          v13 = MEMORY[0x1E69E7CC0];
          do
          {
            v14 = v3;
            while (1)
            {
              if ((v12 & 0xC000000000000001) != 0)
              {
                v15 = MEMORY[0x1DA6FB460](v14, v12);
                v3 = v14 + 1;
                if (__OFADD__(v14, 1))
                {
                  goto LABEL_31;
                }
              }

              else
              {
                if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_32;
                }

                v15 = *(v12 + 8 * v14 + 32);
                swift_unknownObjectRetain();
                v3 = v14 + 1;
                if (__OFADD__(v14, 1))
                {
LABEL_31:
                  __break(1u);
LABEL_32:
                  __break(1u);
                  goto LABEL_33;
                }
              }

              v16 = swift_dynamicCastObjCProtocolConditional();
              if (v16)
              {
                break;
              }

              swift_unknownObjectRelease();
              ++v14;
              if (v3 == v4)
              {
                goto LABEL_38;
              }
            }

            v27 = v16;
            swift_unknownObjectRetain();
            v26 = v8;
            v17 = [v8 scoreProfiles];
            v18 = [v17 objectForKey_];

            if (!v18)
            {
              v18 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
            }

            swift_unknownObjectRelease();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_1D698FB64(0, *(v13 + 2) + 1, 1, v13);
            }

            v20 = *(v13 + 2);
            v19 = *(v13 + 3);
            v21 = v27;
            if (v20 >= v19 >> 1)
            {
              v13 = sub_1D698FB64((v19 > 1), v20 + 1, 1, v13);
              v21 = v27;
            }

            *(v13 + 2) = v20 + 1;
            v22 = &v13[16 * v20];
            *(v22 + 4) = v21;
            *(v22 + 5) = v18;
            v8 = v26;
          }

          while (v3 != v4);
          goto LABEL_38;
        }
      }

      else
      {
        v4 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4)
        {
          goto LABEL_6;
        }
      }

      v13 = MEMORY[0x1E69E7CC0];
LABEL_38:

      return v13;
    }
  }

  return sub_1D5F3608C(v4);
}

id sub_1D5F37918@<X0>(void **a1@<X0>, void *x8_0@<X8>)
{
  v4 = *a1;
  v5 = objc_allocWithZone(MEMORY[0x1E69B52B8]);
  swift_unknownObjectRetain();
  return FeedScoredRecipe.init(recipe:scoreProfile:)(v4, [v5 init], x8_0);
}

char *FeedPersonalizationService.score(issues:context:)(unint64_t a1, char *a2)
{
  v3 = a1;
  v4 = *a2;
  if (a1 >> 62)
  {
LABEL_27:
    if (sub_1D7263BFC())
    {
      v5 = *(v2 + 16);
      sub_1D5B5534C(0, &qword_1EDF1A860, &protocolRef_FCFeedPersonalizingItem);

      sub_1D726403C();

LABEL_4:
      sub_1D5B5534C(0, &qword_1EDF1A860, &protocolRef_FCFeedPersonalizingItem);
      v6 = sub_1D726265C();

      v7 = [v5 sortItems:v6 options:0 configurationSet:qword_1D7283B98[v4]];

      v8 = [v7 sortedItems];
      v2 = sub_1D726267C();

      if (v2 >> 62)
      {
        v9 = sub_1D7263BFC();
        if (v9)
        {
LABEL_6:
          v3 = 0;
          v10 = MEMORY[0x1E69E7CC0];
          do
          {
            v11 = v3;
            while (1)
            {
              if ((v2 & 0xC000000000000001) != 0)
              {
                v4 = MEMORY[0x1DA6FB460](v11, v2);
                v3 = v11 + 1;
                if (__OFADD__(v11, 1))
                {
                  goto LABEL_25;
                }
              }

              else
              {
                if (v11 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_26;
                }

                v4 = *(v2 + 8 * v11 + 32);
                swift_unknownObjectRetain();
                v3 = v11 + 1;
                if (__OFADD__(v11, 1))
                {
LABEL_25:
                  __break(1u);
LABEL_26:
                  __break(1u);
                  goto LABEL_27;
                }
              }

              objc_opt_self();
              v12 = swift_dynamicCastObjCClass();
              if (v12)
              {
                break;
              }

              swift_unknownObjectRelease();
              ++v11;
              if (v3 == v9)
              {
                goto LABEL_32;
              }
            }

            v22 = v12;
            swift_unknownObjectRetain();
            v21 = v7;
            v13 = [v7 scoreProfiles];
            v14 = [v13 objectForKey_];

            if (!v14)
            {
              v14 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
            }

            swift_unknownObjectRelease();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_1D698FC88(0, *(v10 + 2) + 1, 1, v10);
            }

            v16 = *(v10 + 2);
            v15 = *(v10 + 3);
            v4 = v16 + 1;
            v17 = v22;
            if (v16 >= v15 >> 1)
            {
              v10 = sub_1D698FC88((v15 > 1), v16 + 1, 1, v10);
              v17 = v22;
            }

            *(v10 + 2) = v4;
            v18 = &v10[16 * v16];
            *(v18 + 4) = v17;
            *(v18 + 5) = v14;
            v7 = v21;
          }

          while (v3 != v9);
          goto LABEL_32;
        }
      }

      else
      {
        v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          goto LABEL_6;
        }
      }

      v10 = MEMORY[0x1E69E7CC0];
LABEL_32:

      return v10;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v2 + 16);

    sub_1D726479C();
    sub_1D5B5534C(0, &qword_1EDF1A860, &protocolRef_FCFeedPersonalizingItem);
    goto LABEL_4;
  }

  v19 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
  v10 = sub_1D5F3882C(v3, v19);

  return v10;
}

void FeedPersonalizationService.score(tags:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1D726265C();
  v4 = [v2 scoresForTagIDs_];

  if (v4)
  {
    sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
    v5 = sub_1D7261D3C();

    sub_1D5F35E1C(v5);
  }

  else
  {
    __break(1u);
  }
}

id FeedPersonalizationService.bestOfGroup(from:context:)(unint64_t a1)
{
  v53[1] = *MEMORY[0x1E69E9840];
  isUniquelyReferenced_nonNull_native = sub_1D605BC90(MEMORY[0x1E69E7CC0]);
  v43 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_28:
    if (qword_1EDF1BB50 != -1)
    {
LABEL_56:
      swift_once();
    }

    sub_1D5C384A0(0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7273AE0;
    if (v43)
    {
      v24 = sub_1D7263BFC();
    }

    else
    {
      v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = MEMORY[0x1E69E65A8];
    *(v23 + 56) = MEMORY[0x1E69E6530];
    *(v23 + 64) = v25;
    *(v23 + 32) = v24;
    sub_1D7262EDC();
    sub_1D725C30C("Creating Best Of group from FeedPersonalizationService with %d headlines.", v42);

    v26 = *(v44 + 24);
    sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
    v27 = sub_1D726265C();
    v28 = FeedHeadlineScoringContext.configurationSet.getter();
    v53[0] = 0;
    v29 = [v26 bestOfGroupFromHeadlines:v27 configurationSet:v28 error:v53];

    if (v53[0])
    {
      v53[0];

      return swift_willThrow();
    }

    a1 = sub_1D726267C();

    v53[0] = MEMORY[0x1E69E7CC0];
    if (a1 >> 62)
    {
      v50 = a1 & 0xFFFFFFFFFFFFFF8;
      v31 = sub_1D7263BFC();
      if (v31)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v50 = a1 & 0xFFFFFFFFFFFFFF8;
      v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
LABEL_36:
        v32 = 0;
        v48 = a1 & 0xC000000000000001;
        v46 = MEMORY[0x1E69E7CC0];
        v52 = isUniquelyReferenced_nonNull_native;
        while (1)
        {
          isUniquelyReferenced_nonNull_native = v32;
          while (1)
          {
            if (v48)
            {
              v33 = MEMORY[0x1DA6FB460](isUniquelyReferenced_nonNull_native, a1);
              v32 = isUniquelyReferenced_nonNull_native + 1;
              if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
              {
                goto LABEL_54;
              }
            }

            else
            {
              if (isUniquelyReferenced_nonNull_native >= *(v50 + 16))
              {
                goto LABEL_55;
              }

              v33 = *(a1 + 8 * isUniquelyReferenced_nonNull_native + 32);
              swift_unknownObjectRetain();
              v32 = isUniquelyReferenced_nonNull_native + 1;
              if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
              {
LABEL_54:
                __break(1u);
LABEL_55:
                __break(1u);
                goto LABEL_56;
              }
            }

            v34 = a1;
            v35 = [v33 itemID];
            v36 = sub_1D726207C();
            v38 = v37;

            if (*(v52 + 16))
            {
              break;
            }

            swift_unknownObjectRelease();

LABEL_39:
            a1 = v34;
            ++isUniquelyReferenced_nonNull_native;
            if (v32 == v31)
            {
              goto LABEL_59;
            }
          }

          sub_1D5B69D90(v36, v38);
          v40 = v39;

          if ((v40 & 1) == 0)
          {
            break;
          }

          swift_unknownObjectRetain();
          v41 = swift_unknownObjectRelease();
          MEMORY[0x1DA6F9CE0](v41);
          a1 = v34;
          if (*((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          v46 = v53[0];
          if (v32 == v31)
          {
LABEL_59:

            return v46;
          }
        }

        swift_unknownObjectRelease();
        goto LABEL_39;
      }
    }

    v46 = MEMORY[0x1E69E7CC0];
    goto LABEL_59;
  }

LABEL_3:
  v4 = 0;
  v47 = a1 & 0xFFFFFFFFFFFFFF8;
  v49 = a1 & 0xC000000000000001;
  v45 = a1;
  while (1)
  {
    if (v49)
    {
      v5 = MEMORY[0x1DA6FB460](v4, a1);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v4 >= *(v47 + 16))
      {
        goto LABEL_24;
      }

      v5 = *(a1 + 8 * v4 + 32);
      swift_unknownObjectRetain();
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        v3 = sub_1D7263BFC();
        if (!v3)
        {
          goto LABEL_28;
        }

        goto LABEL_3;
      }
    }

    v51 = v6;
    v7 = [v5 identifier];
    v8 = sub_1D726207C();
    v10 = v9;

    swift_unknownObjectRetain();
    v11 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53[0] = v11;
    v13 = sub_1D5B69D90(v8, v10);
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_25;
    }

    a1 = v12;
    if (v11[3] < v16)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1D6D7DB48();
      if (a1)
      {
LABEL_4:

        isUniquelyReferenced_nonNull_native = v53[0];
        *(*(v53[0] + 7) + 8 * v13) = v5;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_5;
      }
    }

LABEL_16:
    isUniquelyReferenced_nonNull_native = v53[0];
    *(v53[0] + (v13 >> 6) + 8) |= 1 << v13;
    v19 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v13);
    *v19 = v8;
    v19[1] = v10;
    *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v13) = v5;
    swift_unknownObjectRelease();
    v20 = *(isUniquelyReferenced_nonNull_native + 16);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_26;
    }

    *(isUniquelyReferenced_nonNull_native + 16) = v22;
LABEL_5:
    ++v4;
    a1 = v45;
    if (v51 == v3)
    {
      goto LABEL_28;
    }
  }

  sub_1D6D66678(v16, isUniquelyReferenced_nonNull_native);
  v17 = sub_1D5B69D90(v8, v10);
  if ((a1 & 1) == (v18 & 1))
  {
    v13 = v17;
    if (a1)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t FeedPersonalizationService.prepareForUse()()
{
  sub_1D5B73960();
  swift_allocObject();
  return sub_1D725BBAC();
}

void sub_1D5F3846C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D5DF743C;
  *(v10 + 24) = v8;
  v12[4] = sub_1D5F39624;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D5B6B06C;
  v12[3] = &block_descriptor_6;
  v11 = _Block_copy(v12);

  [v9 prepareForUseWithCompletionHandler_];
  _Block_release(v11);
}

uint64_t FeedPersonalizationService.diversify<A>(recipes:)()
{
  nullsub_1();
}

uint64_t FeedPersonalizationService.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t FeedPersonalizationService.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D5F386AC(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v3 = sub_1D726265C();
  v4 = [v2 scoresForTagIDs_];

  if (v4)
  {
    sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
    v5 = sub_1D7261D3C();

    sub_1D5F35E1C(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D5F387B0()
{
  sub_1D5B73960();
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t sub_1D5F38804()
{
  nullsub_1();
}

char *sub_1D5F3882C(unint64_t a1, void *a2)
{
  v2 = a1;
  v25 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v28 = MEMORY[0x1E69E7CC0];
    result = sub_1D6997CF0(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    if (!i)
    {
      break;
    }

    v5 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v25)
    {
      v24 = sub_1D7263BFC();
    }

    else
    {
      v24 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    v27 = v2 & 0xC000000000000001;
    v22 = v2 & 0xFFFFFFFFFFFFFF8;
    v23 = v2;
    while (v14 < i)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_40;
      }

      if (v24 == v14)
      {
        goto LABEL_41;
      }

      if (v27)
      {
        v16 = MEMORY[0x1DA6FB460](v14, v2);
      }

      else
      {
        if (v14 >= *(v5 + 16))
        {
          goto LABEL_42;
        }

        v16 = *(v2 + 8 * v14 + 32);
      }

      v17 = v16;
      v19 = *(v28 + 16);
      v18 = *(v28 + 24);
      v20 = a2;
      if (v19 >= v18 >> 1)
      {
        sub_1D6997CF0((v18 > 1), v19 + 1, 1);
      }

      *(v28 + 16) = v19 + 1;
      v21 = v28 + 16 * v19;
      *(v21 + 32) = v17;
      *(v21 + 40) = v20;
      ++v14;
      v5 = v22;
      v2 = v23;
      if (v15 == i)
      {
        goto LABEL_8;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  v27 = v2 & 0xC000000000000001;
LABEL_8:
  if (v25)
  {
    while (i != sub_1D7263BFC())
    {
LABEL_12:
      if (v27)
      {
        v6 = MEMORY[0x1DA6FB460](i, v2);
      }

      else
      {
        if (i < 0)
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (i >= *(v5 + 16))
        {
          goto LABEL_38;
        }

        v6 = *(v2 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        goto LABEL_37;
      }

      v9 = *(v28 + 16);
      v8 = *(v28 + 24);
      v10 = a2;
      if (v9 >= v8 >> 1)
      {
        v12 = v8 > 1;
        v13 = v10;
        sub_1D6997CF0(v12, v9 + 1, 1);
        v10 = v13;
      }

      *(v28 + 16) = v9 + 1;
      v11 = v28 + 16 * v9;
      *(v11 + 32) = v7;
      *(v11 + 40) = v10;
      ++i;
      if (!v25)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (i != *(v5 + 16))
    {
      goto LABEL_12;
    }
  }

  return v28;
}

char *sub_1D5F38AC8(unint64_t a1, void *a2)
{
  v2 = a1;
  v23 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v26 = MEMORY[0x1E69E7CC0];
    result = sub_1D6997D30(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    if (!i)
    {
      break;
    }

    v20 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v23)
    {
      v22 = sub_1D7263BFC();
    }

    else
    {
      v22 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v25 = v2 & 0xC000000000000001;
    v21 = v2;
    while (v6 < i)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_41;
      }

      if (v22 == v6)
      {
        goto LABEL_42;
      }

      if (v25)
      {
        v8 = MEMORY[0x1DA6FB460](v6, v2);
      }

      else
      {
        if (v6 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v8 = *(v2 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      v10 = *(v26 + 16);
      v9 = *(v26 + 24);
      v11 = a2;
      if (v10 >= v9 >> 1)
      {
        sub_1D6997D30((v9 > 1), v10 + 1, 1);
      }

      *(v26 + 16) = v10 + 1;
      v12 = (v26 + 24 * v10);
      v12[4] = v8;
      v12[5] = v11;
      v12[6] = 0;
      ++v6;
      v2 = v21;
      if (v7 == i)
      {
        v5 = v20;
        goto LABEL_21;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  v25 = v2 & 0xC000000000000001;
LABEL_21:
  if (v23)
  {
    while (i != sub_1D7263BFC())
    {
LABEL_25:
      if (v25)
      {
        v13 = MEMORY[0x1DA6FB460](i, v2);
        if (__OFADD__(i, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (i < 0)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (i >= *(v5 + 16))
        {
          goto LABEL_39;
        }

        v13 = *(v2 + 8 * i + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(i, 1))
        {
          goto LABEL_38;
        }
      }

      v15 = *(v26 + 16);
      v14 = *(v26 + 24);
      v16 = a2;
      if (v15 >= v14 >> 1)
      {
        v18 = v14 > 1;
        v19 = v16;
        sub_1D6997D30(v18, v15 + 1, 1);
        v16 = v19;
      }

      *(v26 + 16) = v15 + 1;
      v17 = (v26 + 24 * v15);
      v17[4] = v13;
      v17[5] = v16;
      v17[6] = 0;
      ++i;
      if (!v23)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:
    if (i != *(v5 + 16))
    {
      goto LABEL_25;
    }
  }

  return v26;
}

uint64_t _s8NewsFeed0B22PersonalizationServiceC5score7recipes7contextSayAA0B12ScoredRecipeVyxGGSayxG_AA0bI14ScoringContextOtSo16FCRecipeScorableRzlF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[5] = a1;
  v11[2] = a3;
  v4 = sub_1D72627FC();
  v7 = type metadata accessor for FeedScoredRecipe(0, a3, v5, v6);
  WitnessTable = swift_getWitnessTable();
  return sub_1D5B874E4(sub_1D5F396DC, v11, v4, v7, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);
}

void *sub_1D5F38E4C(void *a1, unsigned __int16 *a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = [objc_allocWithZone(MEMORY[0x1E69B53A0]) init];
  v6 = a1[2];
  if (v6)
  {
    v7 = a1 + 4;
    v8 = a1 + 5;
    v9 = v6;
    do
    {
      [v5 setObject:*v8 forKey:*(v8 - 1)];
      v8 += 3;
      --v9;
    }

    while (v9);
    v10 = *(v2 + 24);
    v24[0] = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    do
    {
      v7 += 3;
      swift_unknownObjectRetain();
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = *(v2 + 24);
  }

  sub_1D5B5534C(0, &qword_1EDF1A860, &protocolRef_FCFeedPersonalizingItem);
  v11 = sub_1D726265C();

  if (v4 >> 13 > 2)
  {
    v12 = 0;
  }

  else if (v4 >> 13 == 1)
  {
    v12 = qword_1D7283B98[v4];
  }

  else
  {
    LOBYTE(v24[0]) = v4;
    v12 = FeedHeadlineScoringContext.configurationSet.getter();
  }

  v24[0] = 0;
  v13 = [v10 bestOfGroupFromFeedItems:v11 scoreProfiles:v5 configurationSet:v12 error:v24];

  if (v24[0])
  {
    v24[0];

    swift_willThrow();
    return v13;
  }

  v14 = sub_1D726267C();

  if (v14 >> 62)
  {
    v15 = sub_1D7263BFC();
    if (v15)
    {
      goto LABEL_17;
    }

LABEL_29:

    return MEMORY[0x1E69E7CC0];
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_17:
  v24[0] = MEMORY[0x1E69E7CC0];
  sub_1D6997D30(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
    __break(1u);
  }

  v16 = 0;
  v13 = v24[0];
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1DA6FB460](v16, v14);
    }

    else
    {
      v17 = *(v14 + 8 * v16 + 32);
      swift_unknownObjectRetain();
    }

    v18 = [v5 objectForKey_];
    if (!v18)
    {
      v18 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
    }

    v24[0] = v13;
    v20 = v13[2];
    v19 = v13[3];
    if (v20 >= v19 >> 1)
    {
      v23 = v18;
      sub_1D6997D30((v19 > 1), v20 + 1, 1);
      v18 = v23;
      v13 = v24[0];
    }

    ++v16;
    v13[2] = v20 + 1;
    v21 = &v13[3 * v20];
    v21[4] = v17;
    v21[5] = v18;
    v21[6] = 0;
  }

  while (v15 != v16);

  return v13;
}

double _s8NewsFeed0B22PersonalizationServiceC10groupScore5itemsSdSayAA0B10ScoredItemVG_tF_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1D6998464(0, v1, 0);
    v3 = v11;
    v4 = (a1 + 40);
    do
    {
      [*v4 sortingScore];
      v10 = v3;
      v7 = *(*&v3 + 16);
      v6 = *(*&v3 + 24);
      if (v7 >= v6 >> 1)
      {
        v8 = v5;
        sub_1D6998464((v6 > 1), v7 + 1, 1);
        v5 = v8;
      }

      *(*&v3 + 16) = v7 + 1;
      *(*&v3 + 8 * v7 + 32) = v5;
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  sub_1D5F39688();
  sub_1D72626FC();

  return v10;
}

double _s8NewsFeed0B22PersonalizationServiceC10groupScore9headlinesSdSayAA0B14ScoredHeadlineVG_tF_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1D6998464(0, v1, 0);
    v3 = v11;
    v4 = (a1 + 40);
    do
    {
      [*v4 sortingScore];
      v10 = v3;
      v7 = *(*&v3 + 16);
      v6 = *(*&v3 + 24);
      if (v7 >= v6 >> 1)
      {
        v8 = v5;
        sub_1D6998464((v6 > 1), v7 + 1, 1);
        v5 = v8;
      }

      *(*&v3 + 16) = v7 + 1;
      *(*&v3 + 8 * v7 + 32) = v5;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  sub_1D5F39688();
  sub_1D72626FC();

  return v10;
}

double _s8NewsFeed0B22PersonalizationServiceC10groupScore7recipesSdSayAA0B12ScoredRecipeVyxGG_tSo16FCRecipeScorableRzlF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *&a1;
  v8[2] = a2;
  type metadata accessor for FeedScoredRecipe(255, a2, a3, a4);
  v4 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  sub_1D5B874E4(sub_1D5F3964C, v8, v4, MEMORY[0x1E69E63B0], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);
  sub_1D5F39688();
  sub_1D72626FC();

  return v9;
}

id sub_1D5F3964C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(a1 + 8) sortingScore];
  *a2 = v4;
  return result;
}

unint64_t sub_1D5F39688()
{
  result = qword_1EDF05860;
  if (!qword_1EDF05860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05860);
  }

  return result;
}

unint64_t sub_1D5F396FC()
{
  result = qword_1EC8812B0;
  if (!qword_1EC8812B0)
  {
    sub_1D5B9F048(255, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, sub_1D5B5534C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8812B0);
  }

  return result;
}

unint64_t sub_1D5F39780()
{
  result = qword_1EC8812C0;
  if (!qword_1EC8812C0)
  {
    sub_1D5B9F048(255, &qword_1EDF1AE20, &qword_1EDF3C6B0, 0x1E69B5578, sub_1D5B5A498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8812C0);
  }

  return result;
}

Swift::Void __swiftcall TaskScheduler.scheduleIfMainElseStart(_:)(NSOperation a1)
{
  if ([objc_opt_self() isMainThread])
  {

    sub_1D725AC2C();
  }

  else
  {

    [(objc_class *)a1.super.isa start];
  }
}

uint64_t FormatAdMetricsNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatAdMetricsNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatAdMetricsNode.privacyMarkerFrameIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

unint64_t FormatAdMetricsNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

double FormatAdMetricsNode.resize.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 56);

  return result;
}

uint64_t FormatAdMetricsNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

double FormatAdMetricsNode.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

double sub_1D5F39B98(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 80);
  sub_1D5EB1500(v2);
  *(v3 + 80) = v2;
  return sub_1D5EB15C4(v4);
}

double FormatAdMetricsNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = v2;
  return sub_1D5EB15C4(v3);
}

uint64_t FormatAdMetricsNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[12];
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  v6 = v1[16];
  v7 = v1[17];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6, v7);
}

uint64_t FormatAdMetricsNode.__allocating_init(identifier:content:privacyMarkerFrameIdentifier:size:resize:adjustments:zIndex:visibility:isUserInteractionEnabled:flex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t *a10, char a11, uint64_t a12)
{
  v18 = swift_allocObject();
  v19 = *a6;
  v20 = *a7;
  v21 = *a10;
  v22 = *(a12 + 40);
  v26 = *(a12 + 32);
  swift_beginAccess();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = v19;
  *(v18 + 56) = v20;
  swift_beginAccess();
  *(v18 + 64) = a8;
  swift_beginAccess();
  *(v18 + 72) = a9;
  swift_beginAccess();
  *(v18 + 80) = v21;
  swift_beginAccess();
  *(v18 + 88) = a11;
  v23 = *(a12 + 16);
  *(v18 + 96) = *a12;
  *(v18 + 112) = v23;
  *(v18 + 128) = v26;
  *(v18 + 136) = v22;
  return v18;
}

uint64_t FormatAdMetricsNode.init(identifier:content:privacyMarkerFrameIdentifier:size:resize:adjustments:zIndex:visibility:isUserInteractionEnabled:flex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t *a10, char a11, uint64_t a12)
{
  v18 = *a6;
  v19 = *a7;
  v24 = *(a12 + 32);
  v22 = *a10;
  v23 = *(a12 + 40);
  swift_beginAccess();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = v18;
  *(v12 + 56) = v19;
  swift_beginAccess();
  *(v12 + 64) = a8;
  swift_beginAccess();
  *(v12 + 72) = a9;
  swift_beginAccess();
  *(v12 + 80) = v22;
  swift_beginAccess();
  *(v12 + 88) = a11;
  v20 = *(a12 + 16);
  *(v12 + 96) = *a12;
  *(v12 + 112) = v20;
  *(v12 + 128) = v24;
  *(v12 + 136) = v23;
  return v12;
}

void *FormatAdMetricsNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 48));

  sub_1D5EB15C4(*(v0 + 80));
  sub_1D5EB2398(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  return v0;
}

uint64_t FormatAdMetricsNode.__deallocating_deinit()
{
  FormatAdMetricsNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F3A058(uint64_t a1)
{
  result = sub_1D5F3A19C(&qword_1EC8812D0, &protocol conformance descriptor for FormatAdMetricsNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5F3A09C(void *a1)
{
  a1[1] = sub_1D5F3A19C(&qword_1EDF2CDC0, &protocol conformance descriptor for FormatAdMetricsNode);
  a1[2] = sub_1D5F3A19C(&qword_1EDF0FCB0, &protocol conformance descriptor for FormatAdMetricsNode);
  result = sub_1D5F3A19C(&qword_1EC8812D8, &protocol conformance descriptor for FormatAdMetricsNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D5F3A158(uint64_t a1)
{
  result = sub_1D5F3A19C(&qword_1EC8812E0, &protocol conformance descriptor for FormatAdMetricsNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5F3A19C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatAdMetricsNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5F3A1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, __n128 a6@<Q0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v14 = a6.n128_u64[0];
  v15 = *(a3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v16 = *(a4 + 16);
  v17 = *(a4 + 24);

  if (*(v15 + 40))
  {
    v35 = *(v15 + 32);
    v36 = *(v15 + 40);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v16, v17);

    v16 = v35;
    v17 = v36;
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v29 = *(a4 + 16);
  v30 = *(a4 + 24);

  swift_unownedRetainStrong();
  v18 = *(a4 + 56);

  v31 = v16;
  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = *(v18 + 16);
  swift_beginAccess();
  if (!*(*(v19 + 16) + 16))
  {

LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

LABEL_8:
  v20 = swift_allocObject();
  swift_unownedRetainStrong();
  swift_beginAccess();
  v21 = *(a4 + 72);

  swift_unownedRetainStrong();
  swift_beginAccess();
  v22 = *(a4 + 80);
  sub_1D5EB1500(v22);

  sub_1D615B4A8(a3, &v37);
  sub_1D5EB15C4(v22);
  v23 = v37;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v24 = *(a4 + 88);

  swift_unownedRetainStrong();
  v25 = *(a4 + 32);
  v26 = *(a4 + 40);

  type metadata accessor for FormatAdMetricsNodeLayoutAttributes();
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = a2;
  *(v27 + 32) = v31;
  *(v27 + 40) = v17;
  *(v27 + 48) = v29;
  *(v27 + 56) = v30;
  *(v27 + 64) = v14;
  *(v27 + 72) = a7;
  *(v27 + 80) = a8;
  *(v27 + 88) = a9;
  *(v27 + 96) = v19;
  *(v27 + 104) = v21;
  *(v27 + 112) = v23;
  *(v27 + 120) = v24;
  *(v27 + 128) = v25;
  *(v27 + 136) = v26;
  *(v20 + 16) = v27;
  *a5 = v20 | 0x5000000000000004;
}

uint64_t sub_1D5F3A4E8(void *a1)
{
  sub_1D5F3EF50(0, &qword_1EC881358, sub_1D5F3EEA8, &type metadata for DebugInspectionScoreProfile.Cohort.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F3EEA8();
  sub_1D7264B5C();
  v14 = 0;
  sub_1D72643FC();
  if (!v1)
  {
    v13 = 1;
    sub_1D726441C();
    v12 = 2;
    sub_1D726441C();
    v11 = 3;
    sub_1D726441C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D5F3A6B4(void *a1)
{
  sub_1D5F3EF50(0, &qword_1EC881360, sub_1D5F3EEFC, &type metadata for DebugInspectionScoreProfile.Coefficients.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F3EEFC();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D726441C();
  if (!v1)
  {
    v15 = 1;
    sub_1D726441C();
    v14 = 2;
    sub_1D726441C();
    v13 = 3;
    sub_1D726441C();
    v12 = 4;
    sub_1D726441C();
    v11 = 5;
    sub_1D726441C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D5F3A8C0()
{
  v1 = 0x696669746E656469;
  v2 = 0x6B63696C43776172;
  if (*v0 != 2)
  {
    v2 = 0x6973736572706D69;
  }

  if (*v0)
  {
    v1 = 0x736B63696C63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D5F3A948@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D5F3C164(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D5F3A970(uint64_t a1)
{
  v2 = sub_1D5F3EEA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F3A9AC(uint64_t a1)
{
  v2 = sub_1D5F3EEA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D5F3A9E8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D5F3C2D8(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

unint64_t sub_1D5F3AA48()
{
  v1 = *v0;
  v2 = 0x6353726576726573;
  v3 = 0x726F635369626174;
  if (v1 != 4)
  {
    v3 = 0xD000000000000015;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000016;
  if (v1 == 1)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D5F3AB14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D5F3C554(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D5F3AB3C(uint64_t a1)
{
  v2 = sub_1D5F3EEFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F3AB78(uint64_t a1)
{
  v2 = sub_1D5F3EEFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D5F3ABB4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D5F3C760(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1D5F3AC10(char a1)
{
  result = 0x726F635369626174;
  switch(a1)
  {
    case 1:
    case 7:
    case 16:
    case 29:
      result = 0xD000000000000013;
      break;
    case 2:
    case 19:
    case 28:
      result = 0xD000000000000010;
      break;
    case 3:
    case 34:
      result = 0xD00000000000001ELL;
      break;
    case 4:
    case 23:
    case 27:
    case 30:
      result = 0xD000000000000011;
      break;
    case 5:
      return result;
    case 6:
      result = 0xD000000000000014;
      break;
    case 8:
    case 38:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
    case 15:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0x6C754D6F69647561;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 17:
    case 22:
      result = 0xD000000000000012;
      break;
    case 18:
    case 21:
      result = 0xD000000000000016;
      break;
    case 20:
    case 31:
      result = 0xD000000000000015;
      break;
    case 24:
      v3 = 1852138867;
      goto LABEL_14;
    case 25:
      v3 = 1684104562;
LABEL_14:
      result = v3 | 0x616E655000000000;
      break;
    case 26:
      result = 0x64656E657473696CLL;
      break;
    case 32:
      result = 0x53676E6974726F73;
      break;
    case 33:
      result = 0x6154776F64616873;
      break;
    case 35:
      result = 0x6F436C61626F6C67;
      break;
    case 36:
      result = 0x6963696666656F63;
      break;
    case 37:
      result = 0x56676E69726F6373;
      break;
    case 39:
      result = 0x696C7069746C756DLL;
      break;
    case 40:
      result = 0xD000000000000020;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1D5F3AFF4(void *a1)
{
  v3 = v1;
  sub_1D5F3EF50(0, &qword_1EC881308, sub_1D5F3EB64, &type metadata for DebugInspectionScoreProfile.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F3EB64();
  sub_1D7264B5C();
  LOBYTE(v14) = 0;
  sub_1D726441C();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1D726441C();
    LOBYTE(v14) = 2;
    sub_1D726441C();
    LOBYTE(v14) = 3;
    sub_1D726441C();
    LOBYTE(v14) = 4;
    sub_1D726441C();
    LOBYTE(v14) = 5;
    sub_1D726441C();
    LOBYTE(v14) = 6;
    sub_1D726441C();
    LOBYTE(v14) = 7;
    sub_1D726441C();
    LOBYTE(v14) = 8;
    sub_1D726441C();
    LOBYTE(v14) = 9;
    sub_1D726441C();
    LOBYTE(v14) = 10;
    sub_1D726441C();
    LOBYTE(v14) = 11;
    sub_1D726441C();
    LOBYTE(v14) = 12;
    sub_1D726441C();
    LOBYTE(v14) = 13;
    sub_1D726441C();
    LOBYTE(v14) = 14;
    sub_1D726441C();
    LOBYTE(v14) = 15;
    sub_1D726441C();
    LOBYTE(v14) = 16;
    sub_1D726441C();
    LOBYTE(v14) = 17;
    sub_1D726441C();
    LOBYTE(v14) = 18;
    sub_1D726441C();
    LOBYTE(v14) = 19;
    sub_1D726441C();
    LOBYTE(v14) = 20;
    sub_1D726441C();
    LOBYTE(v14) = 21;
    sub_1D726441C();
    LOBYTE(v14) = 22;
    sub_1D726441C();
    LOBYTE(v14) = 23;
    sub_1D726441C();
    LOBYTE(v14) = 24;
    sub_1D726441C();
    LOBYTE(v14) = 25;
    sub_1D726441C();
    LOBYTE(v14) = 26;
    sub_1D726441C();
    LOBYTE(v14) = 27;
    sub_1D726441C();
    LOBYTE(v14) = 28;
    sub_1D726441C();
    LOBYTE(v14) = 29;
    sub_1D726441C();
    LOBYTE(v14) = 30;
    sub_1D726441C();
    LOBYTE(v14) = 31;
    sub_1D726441C();
    LOBYTE(v14) = 32;
    sub_1D726441C();
    LOBYTE(v14) = 33;
    sub_1D726441C();
    LOBYTE(v14) = 34;
    sub_1D726441C();
    v12 = *(v3 + 296);
    v14 = *(v3 + 280);
    v15 = v12;
    *&v16 = *(v3 + 312);
    v17 = 35;
    sub_1D5F3ECC8();
    sub_1D726443C();
    v13 = *(v3 + 336);
    v14 = *(v3 + 320);
    v15 = v13;
    v16 = *(v3 + 352);
    v17 = 36;
    sub_1D5F3ED1C();
    sub_1D726443C();
    LOBYTE(v14) = 37;
    sub_1D726445C();
    LOBYTE(v14) = 38;
    sub_1D726437C();
    LOBYTE(v14) = 39;
    sub_1D726441C();
    LOBYTE(v14) = 40;
    sub_1D726441C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D5F3B7AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D5F3D37C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D5F3B7E0(uint64_t a1)
{
  v2 = sub_1D5F3EB64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F3B81C(uint64_t a1)
{
  v2 = sub_1D5F3EB64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D5F3B858@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D5F3E020(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x198uLL);
  }

  return result;
}

void sub_1D5F3B8BC(uint64_t a1@<X8>)
{
  v3 = v1[48];
  if (v3)
  {
    v4 = v1[47];
    sub_1D5F3D224();
    v5 = swift_allocObject();
    *(v5 + 32) = 0xD000000000000012;
    *(v5 + 40) = 0x80000001D73C2DD0;
    v6 = MEMORY[0x1E69E6158];
    v7 = MEMORY[0x1E69E61C8];
    *(v5 + 16) = xmmword_1D7273AE0;
    *(v5 + 72) = v6;
    *(v5 + 80) = v7;
    *(v5 + 48) = v4;
    *(v5 + 56) = v3;
    *(v5 + 88) = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5F3D224();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7283D40;
  v9 = v1[1];
  *(v8 + 48) = *v1;
  *(v8 + 112) = v9;
  *(v8 + 176) = v1[2];
  v10 = v1[5];
  *(v8 + 240) = v1[4];
  v11 = v1[7];
  *(v8 + 304) = v1[6];
  *(v8 + 368) = v11;
  *(v8 + 432) = v10;
  v12 = v1[9];
  *(v8 + 496) = v1[8];
  *(v8 + 560) = v12;
  *(v8 + 624) = v1[10];
  v13 = v1[32];
  *(v8 + 688) = v1[31];
  *(v8 + 752) = v13;
  v14 = v1[34];
  *(v8 + 816) = v1[33];
  v15 = MEMORY[0x1E69E63B0];
  v16 = MEMORY[0x1E69E6418];
  *(v8 + 32) = 0xD000000000000016;
  *(v8 + 40) = 0x80000001D73C2C40;
  *(v8 + 72) = v15;
  *(v8 + 80) = v16;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0xD000000000000015;
  *(v8 + 104) = 0x80000001D73C2C60;
  *(v8 + 136) = v15;
  *(v8 + 144) = v16;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0xD000000000000012;
  *(v8 + 168) = 0x80000001D73C2C80;
  *(v8 + 200) = v15;
  *(v8 + 208) = v16;
  *(v8 + 216) = 0;
  *(v8 + 224) = 0xD000000000000013;
  *(v8 + 232) = 0x80000001D73C2CA0;
  *(v8 + 264) = v15;
  *(v8 + 272) = v16;
  *(v8 + 280) = 0;
  *(v8 + 288) = 0xD000000000000017;
  *(v8 + 296) = 0x80000001D73C2CC0;
  *(v8 + 328) = v15;
  *(v8 + 336) = v16;
  *(v8 + 344) = 0;
  *(v8 + 352) = 0xD000000000000015;
  *(v8 + 360) = 0x80000001D73C2CE0;
  *(v8 + 392) = v15;
  *(v8 + 400) = v16;
  *(v8 + 408) = 0;
  *(v8 + 416) = 0x6F63532069626154;
  *(v8 + 424) = 0xEA00000000006572;
  *(v8 + 456) = v15;
  *(v8 + 464) = v16;
  *(v8 + 472) = 0;
  *(v8 + 480) = 0xD000000000000019;
  *(v8 + 488) = 0x80000001D73C2D00;
  *(v8 + 520) = v15;
  *(v8 + 528) = v16;
  *(v8 + 536) = 0;
  *(v8 + 544) = 0xD000000000000015;
  *(v8 + 552) = 0x80000001D73C2D20;
  *(v8 + 584) = v15;
  *(v8 + 592) = v16;
  *(v8 + 600) = 0;
  *(v8 + 608) = 0xD00000000000001ALL;
  *(v8 + 616) = 0x80000001D73C2D40;
  *(v8 + 648) = v15;
  *(v8 + 656) = v16;
  *(v8 + 664) = 0;
  *(v8 + 672) = 0xD000000000000016;
  *(v8 + 680) = 0x80000001D73C2D60;
  *(v8 + 712) = v15;
  *(v8 + 720) = v16;
  *(v8 + 728) = 0;
  strcpy((v8 + 736), "Sorting Score");
  *(v8 + 750) = -4864;
  *(v8 + 776) = v15;
  *(v8 + 784) = v16;
  *(v8 + 792) = 0;
  *(v8 + 800) = 0xD000000000000011;
  *(v8 + 808) = 0x80000001D73C2D80;
  *(v8 + 840) = v15;
  *(v8 + 848) = v16;
  *(v8 + 856) = 0;
  *(v8 + 864) = 0xD000000000000021;
  *(v8 + 872) = 0x80000001D73C2DA0;
  *(v8 + 904) = v15;
  *(v8 + 912) = v16;
  *(v8 + 880) = v14;
  *(v8 + 920) = 0;

  sub_1D6986C3C(v8);
  *(a1 + 24) = &type metadata for DebugInspectionDataSection;
  *(a1 + 32) = &off_1F5132800;
  strcpy(a1, "Score Profile");
  *(a1 + 14) = -4864;
  *(a1 + 16) = v5;
}

uint64_t sub_1D5F3BC44@<X0>(uint64_t a1@<X8>)
{
  sub_1D5F3D224();
  result = swift_allocObject();
  *(result + 16) = xmmword_1D7279970;
  *(result + 32) = 0xD000000000000021;
  *(result + 40) = 0x80000001D73C2DF0;
  v4 = v1[3];
  v5 = MEMORY[0x1E69E63B0];
  v6 = MEMORY[0x1E69E6418];
  *(result + 72) = MEMORY[0x1E69E63B0];
  *(result + 80) = v6;
  *(result + 48) = v4;
  *(result + 88) = 0;
  *(result + 96) = 0xD000000000000015;
  *(result + 104) = 0x80000001D73C2E20;
  v7 = v1[29];
  *(result + 136) = v5;
  *(result + 144) = v6;
  *(result + 112) = v7;
  *(result + 152) = 0;
  *(result + 160) = 0xD000000000000016;
  *(result + 168) = 0x80000001D73C2E40;
  v8 = v1[45];
  *(result + 200) = v5;
  *(result + 208) = v6;
  *(result + 176) = v8;
  *(result + 216) = 0;
  *(a1 + 24) = &type metadata for DebugInspectionDataSection;
  *(a1 + 32) = &off_1F5132800;
  strcpy(a1, "Coefficients");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  *(a1 + 16) = result;
  return result;
}

double sub_1D5F3BD48@<D0>(void *a1@<X8>)
{
  sub_1D5F3D224();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7283D50;
  *(v3 + 48) = *(v1 + 392);
  v4 = *(v1 + 96);
  *(v3 + 112) = *(v1 + 88);
  *(v3 + 176) = v4;
  v5 = *(v1 + 112);
  *(v3 + 240) = *(v1 + 104);
  *(v3 + 304) = v5;
  v6 = *(v1 + 128);
  *(v3 + 368) = *(v1 + 120);
  *(v3 + 432) = v6;
  v7 = *(v1 + 144);
  *(v3 + 496) = *(v1 + 136);
  *(v3 + 560) = v7;
  result = *(v1 + 160);
  *(v3 + 624) = *(v1 + 152);
  *(v3 + 32) = 0x696C7069746C754DLL;
  *(v3 + 40) = 0xEA00000000007265;
  v9 = MEMORY[0x1E69E63B0];
  v10 = MEMORY[0x1E69E6418];
  *(v3 + 72) = MEMORY[0x1E69E63B0];
  *(v3 + 80) = v10;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0xD000000000000010;
  *(v3 + 104) = 0x80000001D73C2E60;
  *(v3 + 136) = v9;
  *(v3 + 144) = v10;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0xD000000000000016;
  *(v3 + 168) = 0x80000001D73C2E80;
  *(v3 + 200) = v9;
  *(v3 + 208) = v10;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0xD000000000000016;
  *(v3 + 232) = 0x80000001D73C2EA0;
  *(v3 + 264) = v9;
  *(v3 + 272) = v10;
  *(v3 + 280) = 0;
  *(v3 + 288) = 0xD000000000000015;
  *(v3 + 296) = 0x80000001D73C2EC0;
  *(v3 + 328) = v9;
  *(v3 + 336) = v10;
  *(v3 + 344) = 0;
  *(v3 + 352) = 0xD00000000000001ALL;
  *(v3 + 360) = 0x80000001D73C2EE0;
  *(v3 + 392) = v9;
  *(v3 + 400) = v10;
  *(v3 + 408) = 0;
  *(v3 + 416) = 0xD000000000000014;
  *(v3 + 424) = 0x80000001D73C2F00;
  *(v3 + 456) = v9;
  *(v3 + 464) = v10;
  *(v3 + 472) = 0;
  *(v3 + 480) = 0xD000000000000013;
  *(v3 + 488) = 0x80000001D73C2F20;
  *(v3 + 520) = v9;
  *(v3 + 528) = v10;
  *(v3 + 536) = 0;
  *(v3 + 544) = 0xD000000000000018;
  *(v3 + 552) = 0x80000001D73C2F40;
  *(v3 + 584) = v9;
  *(v3 + 592) = v10;
  *(v3 + 600) = 0;
  *(v3 + 608) = 0xD000000000000011;
  *(v3 + 616) = 0x80000001D73C2F60;
  *(v3 + 648) = v9;
  *(v3 + 656) = v10;
  *(v3 + 664) = 0;
  *(v3 + 672) = 0xD000000000000016;
  *(v3 + 680) = 0x80000001D73C2F80;
  *(v3 + 712) = v9;
  *(v3 + 720) = v10;
  *(v3 + 688) = result;
  *(v3 + 728) = 0;
  a1[3] = &type metadata for DebugInspectionDataSection;
  a1[4] = &off_1F5132800;
  *a1 = 0x696C7069746C754DLL;
  a1[1] = 0xEB00000000737265;
  a1[2] = v3;
  return result;
}

double sub_1D5F3BF80@<D0>(void *a1@<X8>)
{
  sub_1D5F3D224();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7283D60;
  v4 = *(v1 + 184);
  *(v3 + 48) = *(v1 + 192);
  v5 = *(v1 + 208);
  *(v3 + 112) = *(v1 + 200);
  *(v3 + 176) = v5;
  v6 = *(v1 + 224);
  *(v3 + 240) = *(v1 + 216);
  *(v3 + 304) = v6;
  v7 = *(v1 + 176);
  *(v3 + 368) = *(v1 + 168);
  *(v3 + 432) = v7;
  strcpy((v3 + 32), "Seen Penalty");
  *(v3 + 45) = 0;
  *(v3 + 46) = -5120;
  v8 = MEMORY[0x1E69E63B0];
  v9 = MEMORY[0x1E69E6418];
  *(v3 + 72) = MEMORY[0x1E69E63B0];
  *(v3 + 80) = v9;
  *(v3 + 88) = 0;
  strcpy((v3 + 96), "Read Penalty");
  *(v3 + 109) = 0;
  *(v3 + 110) = -5120;
  *(v3 + 136) = v8;
  *(v3 + 144) = v9;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0xD000000000000010;
  *(v3 + 168) = 0x80000001D73C2FA0;
  *(v3 + 200) = v8;
  *(v3 + 208) = v9;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0xD000000000000013;
  *(v3 + 232) = 0x80000001D73C2FC0;
  *(v3 + 264) = v8;
  *(v3 + 272) = v9;
  *(v3 + 280) = 0;
  *(v3 + 288) = 0xD000000000000012;
  *(v3 + 296) = 0x80000001D73C2FE0;
  *(v3 + 328) = v8;
  *(v3 + 336) = v9;
  *(v3 + 344) = 0;
  *(v3 + 352) = 0xD000000000000018;
  *(v3 + 360) = 0x80000001D73C3000;
  *(v3 + 392) = v8;
  *(v3 + 400) = v9;
  *(v3 + 408) = 0;
  *(v3 + 416) = 0xD000000000000013;
  *(v3 + 424) = 0x80000001D73C3020;
  *(v3 + 456) = v8;
  *(v3 + 464) = v9;
  *(v3 + 472) = 0;
  *(v3 + 480) = 0xD000000000000013;
  *(v3 + 488) = 0x80000001D73C3040;
  *(v3 + 520) = v8;
  *(v3 + 528) = v9;
  *(v3 + 496) = v4;
  *(v3 + 536) = 0;
  *(v3 + 544) = 0xD000000000000012;
  *(v3 + 552) = 0x80000001D73C3060;
  result = *(v1 + 240);
  *(v3 + 584) = v8;
  *(v3 + 592) = v9;
  *(v3 + 560) = result;
  *(v3 + 600) = 0;
  a1[3] = &type metadata for DebugInspectionDataSection;
  a1[4] = &off_1F5132800;
  *a1 = 0x6569746C616E6550;
  a1[1] = 0xE900000000000073;
  a1[2] = v3;
  return result;
}

uint64_t sub_1D5F3C164(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736B63696C63 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B63696C43776172 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEB00000000736E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D5F3C2D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  sub_1D5F3EF50(0, &qword_1EC881338, sub_1D5F3EEA8, &type metadata for DebugInspectionScoreProfile.Cohort.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F3EEA8();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v23;
  v27 = 0;
  v12 = sub_1D72642BC();
  v14 = v13;
  v15 = v12;
  v26 = 1;
  sub_1D72642DC();
  v17 = v16;
  v25 = 2;
  sub_1D72642DC();
  v19 = v18;
  v24 = 3;
  sub_1D72642DC();
  v21 = v20;
  (*(v10 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v11 = v15;
  v11[1] = v14;
  v11[2] = v17;
  v11[3] = v19;
  v11[4] = v21;
  return result;
}

uint64_t sub_1D5F3C554(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6353726576726573 && a2 == 0xEB0000000065726FLL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73C3450 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C3470 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73C3490 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F635369626174 && a2 == 0xE900000000000065 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D73C34B0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D5F3C760@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v25 = a2;
  sub_1D5F3EF50(0, &qword_1EC881348, sub_1D5F3EEFC, &type metadata for DebugInspectionScoreProfile.Coefficients.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F3EEFC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v25;
  v31 = 0;
  sub_1D72642DC();
  v12 = v11;
  v30 = 1;
  sub_1D72642DC();
  v14 = v13;
  v29 = 2;
  sub_1D72642DC();
  v16 = v15;
  v28 = 3;
  sub_1D72642DC();
  v18 = v17;
  v27 = 4;
  sub_1D72642DC();
  v20 = v19;
  v26 = 5;
  sub_1D72642DC();
  v22 = v21;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v12;
  v10[1] = v14;
  v10[2] = v16;
  v10[3] = v18;
  v10[4] = v20;
  v10[5] = v22;
  return result;
}

void *sub_1D5F3CA00@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    [v3 subscribedChannelCtr];
    v126 = v4;
    [v3 paidNonpaidSubscriptionCtr];
    v125 = v5;
    [v3 autoSubscribeCtr];
    v124 = v6;
    [v3 computedGlobalScoreCoefficient];
    v123 = v7;
    [v3 userFeedbackScore];
    v122 = v8;
    [v3 tabiScore];
    v121 = v9;
    [v3 rawUserFeedbackScore];
    v120 = v10;
    [v3 rawPersonalizationScore];
    v119 = v11;
    [v3 personalizationScore];
    v118 = v12;
    [v3 agedPersonalizationScore];
    v117 = v13;
    [v3 conversionMultiplier];
    v116 = v14;
    [v3 dampenedStaticMultiplier];
    v115 = v15;
    [v3 staticMultiplier];
    v114 = v16;
    [v3 qualitativeMultiplier];
    v112 = v17;
    [v3 publisherDampener];
    v113 = v18;
    [v3 publisherFavorability];
    v111 = v19;
    [v3 sortingScore];
    v110 = v20;
    [v3 shadowTabiScore];
    v109 = v21;
    [v3 shadowAgedPersonalizationScore];
    v108 = v22;
    v23 = [v3 globalCohort];
    [v23 clicks];
    v107 = v24;

    v25 = [v3 globalCohort];
    [v25 rawClicks];
    v106 = v26;

    v27 = [v3 globalCohort];
    [v27 impressions];
    v105 = v28;

    v29 = [v3 coefficients];
    [v29 serverScoreCoefficient];
    v104 = v30;

    v31 = [v3 coefficients];
    [v31 subscribedTopicScoreCoefficient];
    v103 = v32;

    v33 = [v3 coefficients];
    [v33 subscribedChannelScoreCoefficent];
    v102 = v34;

    v35 = [v3 coefficients];
    [v35 autofavoritedScoreCoefficient];
    v101 = v36;

    v37 = [v3 coefficients];
    [v37 tabiScoreCoefficient];
    v100 = v38;

    v39 = [v3 coefficients];
    [v39 conversionCoefficient];
    v99 = v40;

    v41 = [v3 debugFields];
    [v41 userConversionScore];
    v98 = v42;

    v43 = [v3 debugFields];
    [v43 audioMultiplier];
    v97 = v44;

    v45 = [v3 debugFields];
    [v45 bundleFreeMultiplier];
    v96 = v46;

    v47 = [v3 debugFields];
    [v47 bundlePaidMultiplier];
    v95 = v48;

    v49 = [v3 debugFields];
    [v49 evergreenMultiplier];
    v94 = v50;

    v51 = [v3 debugFields];
    [v51 featuredMultiplier];
    v93 = v52;

    [v3 nicheContentMultiplier];
    v92 = v53;
    [v3 contentTriggerDampener];
    v91 = v54;
    v55 = [v3 debugFields];
    [v55 multiplierDampener];
    v90 = v56;

    v57 = [v3 debugFields];
    [v57 mutedVoteDampener];
    v88 = v58;

    v59 = [v3 debugFields];
    [v59 seenPenalty];
    v61 = v60;

    v62 = [v3 debugFields];
    [v62 readPenalty];
    v64 = v63;

    v65 = [v3 debugFields];
    [v65 listenedPenalty];
    v67 = v66;

    v68 = [v3 debugFields];
    [v68 sparseTagsPenalty];
    v70 = v69;

    v71 = [v3 debugFields];
    [v71 timeDecayPenalty];
    v73 = v72;

    v74 = [v3 coefficients];
    [v74 halfLifeCoefficient];
    v76 = v75;

    v77 = [v3 scoringVersion];
    v78 = [v3 debugFields];
    v79 = [v78 scoringAssetsIdentifier];

    if (v79)
    {
      v80 = sub_1D726207C();
      v82 = v81;
    }

    else
    {
      v80 = 0;
      v82 = 0;
    }

    [v3 multiplier];
    v84 = v83;
    [v3 serverScoreDemocratizationFactor];
    v86 = v85;

    __src[0] = v126;
    __src[1] = v125;
    __src[2] = v124;
    __src[3] = v123;
    __src[4] = v122;
    __src[5] = v121;
    __src[6] = v120;
    __src[7] = v98;
    __src[8] = v119;
    __src[9] = v118;
    __src[10] = v117;
    __src[11] = v97;
    __src[12] = v96;
    __src[13] = v95;
    __src[14] = v116;
    __src[15] = v115;
    __src[16] = v94;
    __src[17] = v93;
    __src[18] = v92;
    __src[19] = v114;
    __src[20] = v112;
    __src[21] = v91;
    __src[22] = v90;
    __src[23] = v89;
    __src[24] = v61;
    __src[25] = v64;
    __src[26] = v67;
    __src[27] = v70;
    __src[28] = v73;
    __src[29] = v76;
    __src[30] = v113;
    __src[31] = v111;
    __src[32] = v110;
    *&__src[33] = v109;
    *&__src[34] = v108;
    __src[35] = 42;
    __src[36] = 0xE100000000000000;
    __src[37] = v107;
    __src[38] = v106;
    __src[39] = v105;
    __src[40] = v104;
    __src[41] = v103;
    __src[42] = v102;
    __src[43] = v101;
    __src[44] = v100;
    __src[45] = v99;
    __src[46] = v77;
    __src[47] = v80;
    __src[48] = v82;
    __src[49] = v84;
    __src[50] = v86;
    nullsub_1();
    memcpy(__dst, __src, sizeof(__dst));
  }

  else
  {
    sub_1D5F3D1E4(__dst);
  }

  return memcpy(a2, __dst, 0x198uLL);
}

double sub_1D5F3D1E4(uint64_t a1)
{
  *(a1 + 400) = 0;
  result = 0.0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
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

void sub_1D5F3D224()
{
  if (!qword_1EC893920)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC893920);
    }
  }
}

uint64_t sub_1D5F3D27C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 408))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 288);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D5F3D2C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 408) = 1;
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
      *(result + 288) = (a2 - 1);
      return result;
    }

    *(result + 408) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5F3D37C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001D73C3080 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C30A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C30C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D73C30E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C3100 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F635369626174 && a2 == 0xE900000000000065 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73C3120 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C3140 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D73C3160 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73C3180 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C31A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6C754D6F69647561 && a2 == 0xEF7265696C706974 || (sub_1D72646CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73C31C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73C31E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73C3200 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C3220 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C3240 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73C3260 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C3280 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C32A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D73C32C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C32E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73C3300 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C3320 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x616E65506E656573 && a2 == 0xEB0000000079746CLL || (sub_1D72646CC() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x616E655064616572 && a2 == 0xEB0000000079746CLL || (sub_1D72646CC() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x64656E657473696CLL && a2 == 0xEF79746C616E6550 || (sub_1D72646CC() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C3340 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C3360 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C3380 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C33A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D73C33C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x53676E6974726F73 && a2 == 0xEC00000065726F63 || (sub_1D72646CC() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x6154776F64616873 && a2 == 0xEF65726F63536962 || (sub_1D72646CC() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D73C33E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x6F436C61626F6C67 && a2 == 0xEC00000074726F68 || (sub_1D72646CC() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0x6963696666656F63 && a2 == 0xEC00000073746E65 || (sub_1D72646CC() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0x56676E69726F6373 && a2 == 0xEE006E6F69737265 || (sub_1D72646CC() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D73C3400 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0x696C7069746C756DLL && a2 == 0xEA00000000007265 || (sub_1D72646CC() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001D73C3420 == a2)
  {

    return 40;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 40;
    }

    else
    {
      return 41;
    }
  }
}

void *sub_1D5F3E020@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D5F3EF50(0, &qword_1EC8812E8, sub_1D5F3EB64, &type metadata for DebugInspectionScoreProfile.CodingKeys, MEMORY[0x1E69E6F48]);
  v105 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v64 - v8;
  v10 = a1[3];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D5F3EB64();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v106);
  }

  v11 = v6;
  LOBYTE(v108) = 0;
  sub_1D72642DC();
  v13 = v12;
  LOBYTE(v108) = 1;
  sub_1D72642DC();
  v15 = v14;
  LOBYTE(v108) = 2;
  sub_1D72642DC();
  v17 = v16;
  LOBYTE(v108) = 3;
  sub_1D72642DC();
  v19 = v18;
  LOBYTE(v108) = 4;
  sub_1D72642DC();
  v21 = v20;
  LOBYTE(v108) = 5;
  sub_1D72642DC();
  v23 = v22;
  LOBYTE(v108) = 6;
  sub_1D72642DC();
  v25 = v24;
  LOBYTE(v108) = 7;
  sub_1D72642DC();
  v103 = v26;
  v104 = a2;
  LOBYTE(v108) = 8;
  sub_1D72642DC();
  v28 = v27;
  LOBYTE(v108) = 9;
  sub_1D72642DC();
  v102 = v29;
  LOBYTE(v108) = 10;
  sub_1D72642DC();
  v101 = v30;
  LOBYTE(v108) = 11;
  sub_1D72642DC();
  v100 = v31;
  LOBYTE(v108) = 12;
  sub_1D72642DC();
  v99 = v32;
  LOBYTE(v108) = 13;
  sub_1D72642DC();
  v98 = v33;
  LOBYTE(v108) = 14;
  sub_1D72642DC();
  v97 = v34;
  LOBYTE(v108) = 15;
  sub_1D72642DC();
  v96 = v35;
  LOBYTE(v108) = 16;
  sub_1D72642DC();
  v95 = v36;
  LOBYTE(v108) = 17;
  sub_1D72642DC();
  v94 = v37;
  LOBYTE(v108) = 18;
  sub_1D72642DC();
  v93 = v38;
  LOBYTE(v108) = 19;
  sub_1D72642DC();
  v92 = v39;
  LOBYTE(v108) = 20;
  sub_1D72642DC();
  v91 = v40;
  LOBYTE(v108) = 21;
  sub_1D72642DC();
  v90 = v41;
  LOBYTE(v108) = 22;
  sub_1D72642DC();
  v89 = v42;
  LOBYTE(v108) = 23;
  sub_1D72642DC();
  v88 = v43;
  LOBYTE(v108) = 24;
  sub_1D72642DC();
  v87 = v44;
  LOBYTE(v108) = 25;
  sub_1D72642DC();
  v86 = v45;
  LOBYTE(v108) = 26;
  sub_1D72642DC();
  v85 = v46;
  LOBYTE(v108) = 27;
  sub_1D72642DC();
  v84 = v47;
  LOBYTE(v108) = 28;
  sub_1D72642DC();
  v83 = v48;
  LOBYTE(v108) = 29;
  sub_1D72642DC();
  v82 = v49;
  LOBYTE(v108) = 30;
  sub_1D72642DC();
  v81 = v50;
  LOBYTE(v108) = 31;
  sub_1D72642DC();
  v80 = v51;
  LOBYTE(v108) = 32;
  sub_1D72642DC();
  v79 = v52;
  LOBYTE(v108) = 33;
  sub_1D72642DC();
  v78 = v53;
  LOBYTE(v108) = 34;
  sub_1D72642DC();
  v77 = v54;
  LOBYTE(v107[0]) = 35;
  sub_1D5F3EBB8();
  sub_1D726431C();
  v55 = v108;
  v56 = v109;
  v75 = v111;
  v76 = v110;
  v74 = v112;
  LOBYTE(v107[0]) = 36;
  sub_1D5F3EC0C();
  sub_1D726431C();
  v72 = v109;
  v73 = v108;
  v70 = v111;
  v71 = v110;
  v68 = v113;
  v69 = v112;
  LOBYTE(v108) = 37;
  v57 = sub_1D726432C();
  LOBYTE(v108) = 38;
  v65 = sub_1D726422C();
  v59 = v58;
  LOBYTE(v108) = 39;
  sub_1D72642DC();
  v67 = v60;
  v159 = 40;
  sub_1D72642DC();
  v66 = v61;
  (*(v11 + 8))(v9, v105);
  v107[0] = v13;
  v107[1] = v15;
  v107[2] = v17;
  v107[3] = v19;
  v107[4] = v21;
  v107[5] = v23;
  v107[6] = v25;
  v107[7] = v103;
  v107[8] = v28;
  v107[9] = v102;
  v107[10] = v101;
  v107[11] = v100;
  v107[12] = v99;
  v107[13] = v98;
  v107[14] = v97;
  v107[15] = v96;
  v107[16] = v95;
  v107[17] = v94;
  v107[18] = v93;
  v107[19] = v92;
  v107[20] = v91;
  v107[21] = v90;
  v107[22] = v89;
  v107[23] = v88;
  v107[24] = v87;
  v107[25] = v86;
  v107[26] = v85;
  v107[27] = v84;
  v107[28] = v83;
  v107[29] = v82;
  v107[30] = v81;
  v107[31] = v80;
  v107[32] = v79;
  v107[33] = v78;
  v107[34] = v77;
  v107[35] = v55;
  v107[36] = v56;
  v107[37] = v76;
  v107[38] = v75;
  v107[39] = v74;
  v107[40] = v73;
  v107[41] = v72;
  v107[42] = v71;
  v107[43] = v70;
  v107[44] = v69;
  v107[45] = v68;
  v107[46] = v57;
  v62 = v65;
  v107[47] = v65;
  v107[48] = v59;
  v107[49] = v67;
  v107[50] = v66;
  sub_1D5F3EC60(v107, &v108);
  __swift_destroy_boxed_opaque_existential_1(v106);
  v108 = v13;
  v109 = v15;
  v110 = v17;
  v111 = v19;
  v112 = v21;
  v113 = v23;
  v114 = v25;
  v115 = v103;
  v116 = v28;
  v117 = v102;
  v118 = v101;
  v119 = v100;
  v120 = v99;
  v121 = v98;
  v122 = v97;
  v123 = v96;
  v124 = v95;
  v125 = v94;
  v126 = v93;
  v127 = v92;
  v128 = v91;
  v129 = v90;
  v130 = v89;
  v131 = v88;
  v132 = v87;
  v133 = v86;
  v134 = v85;
  v135 = v84;
  v136 = v83;
  v137 = v82;
  v138 = v81;
  v139 = v80;
  v140 = v79;
  v141 = v78;
  v142 = v77;
  v143 = v55;
  v144 = v56;
  v145 = v76;
  v146 = v75;
  v147 = v74;
  v148 = v73;
  v149 = v72;
  v150 = v71;
  v151 = v70;
  v152 = v69;
  v153 = v68;
  v154 = v57;
  v155 = v62;
  v156 = v59;
  v157 = v67;
  v158 = v66;
  sub_1D5F3EC98(&v108);
  return memcpy(v104, v107, 0x198uLL);
}

unint64_t sub_1D5F3EB64()
{
  result = qword_1EC8812F0;
  if (!qword_1EC8812F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8812F0);
  }

  return result;
}

unint64_t sub_1D5F3EBB8()
{
  result = qword_1EC8812F8;
  if (!qword_1EC8812F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8812F8);
  }

  return result;
}

unint64_t sub_1D5F3EC0C()
{
  result = qword_1EC881300;
  if (!qword_1EC881300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881300);
  }

  return result;
}

unint64_t sub_1D5F3ECC8()
{
  result = qword_1EC881310;
  if (!qword_1EC881310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881310);
  }

  return result;
}

unint64_t sub_1D5F3ED1C()
{
  result = qword_1EC881318;
  if (!qword_1EC881318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881318);
  }

  return result;
}

unint64_t sub_1D5F3EDA4()
{
  result = qword_1EC881320;
  if (!qword_1EC881320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881320);
  }

  return result;
}

unint64_t sub_1D5F3EDFC()
{
  result = qword_1EC881328;
  if (!qword_1EC881328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881328);
  }

  return result;
}

unint64_t sub_1D5F3EE54()
{
  result = qword_1EC881330;
  if (!qword_1EC881330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881330);
  }

  return result;
}

unint64_t sub_1D5F3EEA8()
{
  result = qword_1EC881340;
  if (!qword_1EC881340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881340);
  }

  return result;
}

unint64_t sub_1D5F3EEFC()
{
  result = qword_1EC881350;
  if (!qword_1EC881350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881350);
  }

  return result;
}

void sub_1D5F3EF50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D5F3EFDC()
{
  result = qword_1EC881368;
  if (!qword_1EC881368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881368);
  }

  return result;
}

unint64_t sub_1D5F3F034()
{
  result = qword_1EC881370;
  if (!qword_1EC881370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881370);
  }

  return result;
}

unint64_t sub_1D5F3F08C()
{
  result = qword_1EC881378;
  if (!qword_1EC881378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881378);
  }

  return result;
}

unint64_t sub_1D5F3F0E4()
{
  result = qword_1EC881380;
  if (!qword_1EC881380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881380);
  }

  return result;
}

unint64_t sub_1D5F3F13C()
{
  result = qword_1EC881388;
  if (!qword_1EC881388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881388);
  }

  return result;
}

unint64_t sub_1D5F3F194()
{
  result = qword_1EC881390;
  if (!qword_1EC881390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881390);
  }

  return result;
}

void *sub_1D5F3F1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D5E4049C();
  v3[2] = sub_1D7263ADC();
  v3[3] = v7;
  v3[4] = a1;
  v3[5] = a2;
  swift_beginAccess();

  v8 = FormatGroupCollection.subscript.getter(a2);
  if (v8)
  {
    v9 = v8;
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v4[6] = v9;
  return v4;
}

uint64_t sub_1D5F3F2DC()
{

  return swift_deallocClassInstance();
}

uint64_t FormatContentSubgroupFilterLastPrecededBy.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FormatContentSubgroupFilterLastPrecededBy.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t sub_1D5F3F3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D5F3F440(uint64_t a1)
{
  v2 = sub_1D5F3F604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F3F47C(uint64_t a1)
{
  v2 = sub_1D5F3F604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSubgroupFilterLastPrecededBy.encode(to:)(void *a1)
{
  sub_1D5F3F7DC(0, &qword_1EC881398, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F3F604();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D5F3F604()
{
  result = qword_1EC8813A0;
  if (!qword_1EC8813A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8813A0);
  }

  return result;
}

uint64_t FormatContentSubgroupFilterLastPrecededBy.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5F3F7DC(0, &qword_1EC8813A8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F3F604();
  sub_1D7264B0C();
  if (!v2)
  {
    v11 = sub_1D72642BC();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5F3F7DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5F3F604();
    v7 = a3(a1, &type metadata for FormatContentSubgroupFilterLastPrecededBy.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5F3F840(void *a1)
{
  a1[1] = sub_1D5F3F878();
  a1[2] = sub_1D5F3F8CC();
  result = sub_1D5F3F920();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F3F878()
{
  result = qword_1EC8813B0;
  if (!qword_1EC8813B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8813B0);
  }

  return result;
}

unint64_t sub_1D5F3F8CC()
{
  result = qword_1EC8813B8;
  if (!qword_1EC8813B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8813B8);
  }

  return result;
}

unint64_t sub_1D5F3F920()
{
  result = qword_1EC8813C0;
  if (!qword_1EC8813C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8813C0);
  }

  return result;
}

uint64_t sub_1D5F3F98C(void *a1)
{
  sub_1D5F3F7DC(0, &qword_1EC881398, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F3F604();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D5F3FAFC()
{
  result = qword_1EC8813C8;
  if (!qword_1EC8813C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8813C8);
  }

  return result;
}

unint64_t sub_1D5F3FB54()
{
  result = qword_1EC8813D0;
  if (!qword_1EC8813D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8813D0);
  }

  return result;
}

unint64_t sub_1D5F3FBAC()
{
  result = qword_1EC8813D8;
  if (!qword_1EC8813D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8813D8);
  }

  return result;
}

double FormatVideoPlayerOverlayData.logoImage.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

double FormatVideoPlayerOverlayData.logoResizing.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 24);

  return result;
}

uint64_t FormatVideoPlayerOverlayData.duration.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed11FormatImageO(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 6;
  }

  else
  {
    return *a1 >> 61;
  }
}

uint64_t sub_1D5F3FC84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1D5F3FCE0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 static FormatCodingSplitBackgroundInsetsZeroStrategy.defaultValue.getter@<Q0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_1D5F3FE24(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  result = xmmword_1D7273AE0;
  *(v5 + 16) = xmmword_1D7273AE0;
  *(v5 + 32) = v4;
  *(v5 + 40) = 0;
  *a1 = v3;
  a1[1] = v5;
  return result;
}

void sub_1D5F3FE24(uint64_t a1)
{
  if (!qword_1EDF19860)
  {
    sub_1D5F3FE7C(255);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19860);
    }
  }
}

void sub_1D5F3FE7C(uint64_t a1)
{
  if (!qword_1EDF2C898[0])
  {
    v2 = sub_1D5C35130();
    v4 = type metadata accessor for FormatEquationToken(a1, &type metadata for FormatFloat, v2, v3);
    if (!v5)
    {
      atomic_store(v4, qword_1EDF2C898);
    }
  }
}

uint64_t _s8NewsFeed45FormatCodingSplitBackgroundInsetsZeroStrategyV12shouldEncode12wrappedValueSbAA0cefG0V_tFZ_0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  sub_1D5F3FE24(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = v3;
  *(inited + 40) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1D7273AE0;
  *(v6 + 32) = v5;
  *(v6 + 40) = 0;
  sub_1D633A310(v2, inited);
  if (v7)
  {
    sub_1D633A310(v1, v6);
    v9 = v8;

    v10 = v9 ^ 1;
  }

  else
  {

    v10 = 1;
  }

  return v10 & 1;
}

unint64_t sub_1D5F3FFE8(uint64_t a1)
{
  result = sub_1D5F40010();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F40010()
{
  result = qword_1EC8813E0;
  if (!qword_1EC8813E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8813E0);
  }

  return result;
}

unint64_t sub_1D5F40064()
{
  result = qword_1EDF0AF08;
  if (!qword_1EDF0AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AF08);
  }

  return result;
}

unint64_t sub_1D5F400B8()
{
  result = qword_1EC8813E8;
  if (!qword_1EC8813E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8813E8);
  }

  return result;
}

uint64_t sub_1D5F40124(void *a1)
{
  v3 = v1;
  sub_1D5F4118C(0, &qword_1EC881410, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13[-v9 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F40D10();
  sub_1D7264B5C();
  LOBYTE(v14) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v14 = *(v3 + 16);
    v15 = v14;
    v13[23] = 1;
    sub_1D5F40D64(&v15, v13);
    sub_1D5F13DF8();
    sub_1D726443C();
    sub_1D5B952F8(v14, *(&v14 + 1));
    LOBYTE(v14) = 2;
    sub_1D72643FC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D5F402FC()
{
  v1 = 1635017060;
  if (*v0 != 1)
  {
    v1 = 0x54746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D616E656C6966;
  }
}

uint64_t sub_1D5F40358@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D5F40DC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D5F40380(uint64_t a1)
{
  v2 = sub_1D5F40D10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F403BC(uint64_t a1)
{
  v2 = sub_1D5F40D10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D5F403F8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D5F40EDC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1D5F40454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v51 = a2;
  v40 = a3;
  v42 = type metadata accessor for FormatVersioningMode(0);
  MEMORY[0x1EEE9AC00](v42, v4);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BDF8(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v47 = &v38 - v8;
  v9 = sub_1D725BD1C();
  v10 = *(v9 - 8);
  v45 = v9;
  v46 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v41 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1D725789C();
  v13 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v14);
  v16 = (&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1D725785C();
  MEMORY[0x1EEE9AC00](v17, v18);
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_1D7263D4C();

  v50 = a1;
  v52 = FormatFile.identifier.getter();
  v53 = v19;
  MEMORY[0x1DA6F9910](0x656966696E696D2DLL, 0xEE006E6F736A2E64);
  v39 = v52;
  v48 = v53;
  sub_1D72578EC();
  swift_allocObject();
  sub_1D72578DC();
  v20 = MEMORY[0x1E6967F78];
  sub_1D5B5BDF8(0, &qword_1EC8813F0, MEMORY[0x1E6967F78], MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D7273AE0;
  sub_1D725782C();
  v52 = v21;
  sub_1D5F40C58(&qword_1EC8813F8, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
  sub_1D5B5BDF8(0, &qword_1EC881400, v20, MEMORY[0x1E69E62F8]);
  sub_1D5F40B44();
  sub_1D7263B6C();
  sub_1D725786C();
  *v16 = 0x7974696E69666E69;
  v16[1] = 0xE800000000000000;
  v16[2] = 0x74696E69666E692DLL;
  v16[3] = 0xE900000000000079;
  v16[4] = 7233902;
  v16[5] = 0xE300000000000000;
  (*(v13 + 104))(v16, *MEMORY[0x1E6967FE0], v44);
  v22 = v45;
  sub_1D72578AC();
  v23 = v47;
  sub_1D5D3A874(v51, v47);
  v24 = v46;
  if ((*(v46 + 48))(v23, 1, v22) == 1)
  {
    sub_1D5F40BCC(v23);
  }

  else
  {
    v25 = v41;
    (*(v24 + 32))(v41, v23, v22);
    v26 = v43;
    (*(v24 + 16))(v43, v25, v22);
    swift_storeEnumTagMultiPayload();
    v27 = sub_1D72578CC();
    v29 = v28;
    v54 = *v28;
    swift_bridgeObjectRetain_n();
    Dictionary<>.seedFormatCodingVersion(mode:)(v26);
    sub_1D5F40CA0(v26, type metadata accessor for FormatVersioningMode);
    *v29 = v54;

    v27(&v52, 0);
    (*(v24 + 8))(v25, v22);
  }

  type metadata accessor for FormatFile(0);
  sub_1D5F40C58(&qword_1EC8857F0, type metadata accessor for FormatFile, &protocol conformance descriptor for FormatFile);
  v30 = v49;
  v31 = v50;
  v32 = sub_1D72578BC();
  v34 = v33;

  sub_1D5F40BCC(v51);
  sub_1D5F40CA0(v31, type metadata accessor for FormatFile);
  if (v30)
  {
  }

  v36 = v48;

  sub_1D5E3E824(v32, v34);

  sub_1D5B952F8(v32, v34);

  v37 = v40;
  *v40 = v39;
  v37[1] = v36;
  v37[2] = v32;
  v37[3] = v34;
  v37[4] = 0xD000000000000010;
  v37[5] = 0x80000001D73C3510;
  return result;
}

unint64_t sub_1D5F40B44()
{
  result = qword_1EC881408;
  if (!qword_1EC881408)
  {
    sub_1D5B5BDF8(255, &qword_1EC881400, MEMORY[0x1E6967F78], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881408);
  }

  return result;
}

uint64_t sub_1D5F40BCC(uint64_t a1)
{
  sub_1D5B5BDF8(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5F40C58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5F40CA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D5F40D10()
{
  result = qword_1EC881418;
  if (!qword_1EC881418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881418);
  }

  return result;
}

uint64_t sub_1D5F40DC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D5F40EDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5F4118C(0, &qword_1EC881420, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F40D10();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25) = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v24 = v11;
  v27 = 1;
  sub_1D5F1449C();
  sub_1D726431C();
  v22 = v25;
  v23 = v26;
  LOBYTE(v25) = 2;
  v14 = sub_1D72642BC();
  v16 = v15;
  v17 = v14;
  (*(v7 + 8))(v10, v6);

  v19 = v22;
  v18 = v23;
  sub_1D5E3E824(v22, v23);

  __swift_destroy_boxed_opaque_existential_1(a1);

  sub_1D5B952F8(v19, v18);

  *a2 = v24;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v16;
  return result;
}

void sub_1D5F4118C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5F40D10();
    v7 = a3(a1, &type metadata for DebugFormatUploadFile.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5F41204()
{
  result = qword_1EC881428;
  if (!qword_1EC881428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881428);
  }

  return result;
}

unint64_t sub_1D5F4125C()
{
  result = qword_1EC881430;
  if (!qword_1EC881430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881430);
  }

  return result;
}

unint64_t sub_1D5F412B4()
{
  result = qword_1EC881438;
  if (!qword_1EC881438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881438);
  }

  return result;
}

void sub_1D5F41308(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_1D7263BAC();
    }

    else
    {
      v3 = sub_1D7263B7C();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_1D5FD2040(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 identifier];
        v14 = sub_1D726207C();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1D5BFC364((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_1D7263BCC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          sub_1D5F4249C(0, &qword_1EC881448, MEMORY[0x1E69E64B8]);
          v6 = sub_1D7262B6C();
          sub_1D7263C4C();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_1D5C25E1C(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_1D5C25E1C(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_1D5C25E1C(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          v2 = v33;
          if (v5 == v33)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t type metadata accessor for FormatDataManager(uint64_t a1)
{
  result = qword_1EDF10C88;
  if (!qword_1EDF10C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5F41770(uint64_t a1)
{
  result = type metadata accessor for FormatPluginData(319);
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

char *sub_1D5F41818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for FormatReloadRequest(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v14 = result;
  v33 = MEMORY[0x1E69E7CD0];
  if (!a2 || (sub_1D5F41AA8(a2), !v15))
  {
    if (!a3)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_1D5F41AA8(a3);
    if (v18)
    {
      sub_1D5F41308(v18);
      v20 = v19;

      sub_1D5B87D50(v20);
    }

    goto LABEL_9;
  }

  sub_1D5F41308(v15);
  v17 = v16;

  sub_1D5B87D50(v17);

  if (a3)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (a4)
  {
    sub_1D5F41AA8(a4);
    if (v21)
    {
      sub_1D5F41308(v21);
      v23 = v22;

      sub_1D5B87D50(v23);
    }
  }

  if (a5)
  {
    sub_1D5F41AA8(a5);
    if (v24)
    {
      sub_1D5F41308(v24);
      v26 = v25;

      sub_1D5B87D50(v26);
    }
  }

  v27 = &v14[OBJC_IVAR____TtC8NewsFeed17FormatDataManager_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = *(v27 + 1);
    swift_getObjectType();
    v29 = OBJC_IVAR____TtC8NewsFeed17FormatDataManager_pluginData;
    swift_beginAccess();
    sub_1D5F423D0(&v14[v29], v12);
    *&v12[*(v9 + 20)] = v33;
    v30 = *(v28 + 8);
    v31 = v14;
    v30();
    swift_unknownObjectRelease();

    return sub_1D5F425C8(v12, type metadata accessor for FormatReloadRequest);
  }

  else
  {
  }
}