void sub_1D6D003FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X8>)
{
  v254 = a4;
  v266 = a3;
  v257 = a2;
  v259 = a1;
  sub_1D6D0A158(0);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v252 = &v236 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D0A228(0, v10);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v245 = &v236 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v246 = &v236 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v247 = &v236 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v236 - v23;
  sub_1D6D09A7C(0, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
  v26 = v25;
  v256 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v265 = (&v236 - v28);
  v29 = v6;
  sub_1D5C144C0(0, &qword_1EDF04778, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v236 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v260 = (&v236 - v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v236 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  v261 = (&v236 - v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v236 - v46;
  MEMORY[0x1EEE9AC00](v48, v49);
  v263 = (&v236 - v50);
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v236 - v53;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v236 - v57;
  sub_1D6D0A314(0);
  MEMORY[0x1EEE9AC00](v59 - 8, v60);
  v248 = &v236 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62, v63);
  v249 = &v236 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v253 = &v236 - v67;
  MEMORY[0x1EEE9AC00](v68, v69);
  v251 = &v236 - v70;
  v71 = type metadata accessor for FeedCustomItem(0);
  v267 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v72);
  v250 = &v236 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74, v75);
  v244 = &v236 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v243 = &v236 - v79;
  v80 = type metadata accessor for GroupLayoutBindingContext(0);
  v81 = *&v29[v80[17]];
  v82 = *&v29[v80[19]];
  v264 = v26;
  v255 = a5;
  v258 = v71;
  if (v82 >= v81)
  {
LABEL_21:
    v115 = *&v29[v80[18]];
    v116 = __OFSUB__(v115, v82);
    v117 = v115 - v82;
    if (!v116)
    {
      v118 = *(v259 + 16);
      if (v117 < 1)
      {
        if (v118)
        {
          v120 = v40;
          v121 = *v29;
          v242 = v33;
          v241 = v29;
          v262 = v118;
          if ((v121 & 1) != 0 || !v257)
          {
            v124 = v118;
          }

          else
          {
            sub_1D62F0DA0(v259);
            v123 = v122;
            v124 = *(v122 + 16);
          }

          v145 = (v256 + 56);
          v146 = (v256 + 48);

          v147 = 0;
          while (1)
          {
            if (v147 == v124)
            {
              v148 = 1;
              v147 = v124;
              v149 = v120;
            }

            else
            {
              if ((v147 & 0x8000000000000000) != 0)
              {
                goto LABEL_96;
              }

              if (v147 >= *(v123 + 16))
              {
                goto LABEL_97;
              }

              v150 = v123 + ((*(v267 + 80) + 32) & ~*(v267 + 80)) + *(v267 + 72) * v147;
              v151 = *(v26 + 48);
              v152 = v265;
              *v265 = v147;
              sub_1D6D09934(v150, v152 + v151, type metadata accessor for FeedCustomItem);
              v153 = v152;
              v26 = v264;
              v149 = v120;
              sub_1D6D0A3D8(v153, v120, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
              v148 = 0;
              ++v147;
            }

            (*v145)(v149, v148, 1, v26);
            v154 = v149;
            v155 = v261;
            sub_1D6D09B18(v154, v261, &qword_1EDF04778, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
            if ((*v146)(v155, 1, v26) == 1)
            {
              break;
            }

            v156 = *v155;
            sub_1D6D0A444(v155 + *(v26 + 48), type metadata accessor for FeedCustomItem);
            if (!v266)
            {

              v268 = v123;
              v157 = v250;
              sub_1D5EC1E60(v156, v250);
              sub_1D6D0A350(0, &qword_1EDF15730, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0, "best remaining ");
              v159 = v158;
              v160 = *(v158 + 48);
              v161 = v249;
              sub_1D6D0A058(v157, v249, type metadata accessor for FeedCustomItem);
              *(v161 + v160) = v268;
              (*(*(v159 - 8) + 56))(v161, 0, 1, v159);
              a5 = v255;
              v162 = v258;
              goto LABEL_66;
            }
          }

          v71 = v258;
          if (v254)
          {

            sub_1D6D0A264(0, &qword_1EDF15708, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0);
            v164 = v246;
            (*(*(v163 - 8) + 56))(v246, 1, 1, v163);
            sub_1D6D0A444(v164, sub_1D6D0A228);
            a5 = v255;
            v33 = v242;
            v29 = v241;
            v118 = v262;
            goto LABEL_56;
          }

          v162 = v258;
          v180 = *(v123 + 16);
          a5 = v255;
          v161 = v249;
          if (!v180)
          {
            goto LABEL_103;
          }

          v181 = (*(v267 + 80) + 32) & ~*(v267 + 80);
          v182 = v246;
          sub_1D6D09934(v123 + v181, v246, type metadata accessor for FeedCustomItem);
          sub_1D5EC2DF8(v123, v123 + v181, 1, (2 * v180) | 1);
          v184 = v183;

          sub_1D6D0A264(0, &qword_1EDF15708, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0);
          v186 = v185;
          *(v182 + *(v185 + 48)) = v184;
          (*(*(v185 - 8) + 56))(v182, 0, 1, v185);
          v187 = *(v182 + *(v186 + 48));
          sub_1D6D0A350(0, &qword_1EDF15730, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0, "best remaining ");
          v159 = v188;
          v189 = *(v188 + 48);
          sub_1D6D0A058(v182, v161, type metadata accessor for FeedCustomItem);
          *(v161 + v189) = v187;
          (*(*(v159 - 8) + 56))(v161, 0, 1, v159);
LABEL_66:
          sub_1D6D0A350(0, &qword_1EDF15730, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0, "best remaining ");
          v190 = (*(*(v159 - 8) + 48))(v161, 1, v159);
          v33 = v242;
          v29 = v241;
          v118 = v262;
          if (v190 == 1)
          {
            goto LABEL_67;
          }

          v220 = v161;
          v221 = v252;
          sub_1D6D0A058(v220, v252, type metadata accessor for FeedCustomItem);
          v222 = *(v267 + 56);
          v222(v221, 0, 1, v162);
          sub_1D6D0A058(v221, a5, type metadata accessor for FeedCustomItem);
          v222(a5, 0, 1, v162);
        }

        else
        {
LABEL_56:
          v162 = v71;
          sub_1D6D0A350(0, &qword_1EDF15730, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0, "best remaining ");
          v161 = v249;
          (*(*(v165 - 8) + 56))(v249, 1, 1, v165);
LABEL_67:
          sub_1D6D0A444(v161, sub_1D6D0A314);
          v191 = v267 + 56;
          v192 = v252;
          v193 = v162;
          v263 = *(v267 + 56);
          v263(v252, 1, 1, v162);
          if (v118)
          {
            v262 = v191;
            if ((*v29 & 1) != 0 || !v257)
            {
              v194 = v33;
            }

            else
            {
              v194 = v33;
              sub_1D62F0DA0(v259);
            }

            v196 = *(v195 + 16);
            v197 = (v256 + 56);
            v198 = (v256 + 48);
            v199 = v195;

            v200 = 0;
            while (1)
            {
              if (v200 == v196)
              {
                v201 = 1;
                v200 = v196;
                v202 = v194;
              }

              else
              {
                if ((v200 & 0x8000000000000000) != 0)
                {
                  goto LABEL_98;
                }

                if (v200 >= *(v199 + 16))
                {
                  goto LABEL_99;
                }

                v203 = v199 + ((*(v267 + 80) + 32) & ~*(v267 + 80)) + *(v267 + 72) * v200;
                v204 = *(v26 + 48);
                v205 = v265;
                *v265 = v200;
                sub_1D6D09934(v203, v205 + v204, type metadata accessor for FeedCustomItem);
                v206 = v205;
                v26 = v264;
                v202 = v194;
                sub_1D6D0A3D8(v206, v194, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
                v201 = 0;
                ++v200;
              }

              (*v197)(v202, v201, 1, v26);
              v194 = v202;
              v207 = v202;
              v208 = v260;
              sub_1D6D09B18(v207, v260, &qword_1EDF04778, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
              if ((*v198)(v208, 1, v26) == 1)
              {
                break;
              }

              v209 = *v208;
              sub_1D6D0A444(v208 + *(v26 + 48), type metadata accessor for FeedCustomItem);
              if (!v266)
              {

                v268 = v199;
                v210 = v250;
                sub_1D5EC1E60(v209, v250);
                sub_1D6D0A350(0, &qword_1EDF15730, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0, "best remaining ");
                v212 = v211;
                v213 = *(v211 + 48);
                v214 = v248;
                sub_1D6D0A058(v210, v248, type metadata accessor for FeedCustomItem);
                *(v214 + v213) = v268;
                (*(*(v212 - 8) + 56))(v214, 0, 1, v212);
                a5 = v255;
                v215 = v258;
                goto LABEL_87;
              }
            }

            a5 = v255;
            if (v254)
            {

              sub_1D6D0A264(0, &qword_1EDF15708, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0);
              v217 = v245;
              (*(*(v216 - 8) + 56))(v245, 1, 1, v216);
              sub_1D6D0A444(v217, sub_1D6D0A228);
              v193 = v258;
              v192 = v252;
              goto LABEL_83;
            }

            v223 = *(v199 + 16);
            v215 = v258;
            v214 = v248;
            if (!v223)
            {
              goto LABEL_104;
            }

            v224 = v199;
            v225 = (*(v267 + 80) + 32) & ~*(v267 + 80);
            v226 = v245;
            sub_1D6D09934(v224 + v225, v245, type metadata accessor for FeedCustomItem);
            sub_1D5EC2DF8(v224, v224 + v225, 1, (2 * v223) | 1);
            v228 = v227;

            sub_1D6D0A264(0, &qword_1EDF15708, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0);
            v230 = v229;
            *(v226 + *(v229 + 48)) = v228;
            (*(*(v229 - 8) + 56))(v226, 0, 1, v229);
            v231 = *(v226 + *(v230 + 48));
            sub_1D6D0A350(0, &qword_1EDF15730, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0, "best remaining ");
            v212 = v232;
            v233 = *(v232 + 48);
            sub_1D6D0A058(v226, v214, type metadata accessor for FeedCustomItem);
            *(v214 + v233) = v231;
            (*(*(v212 - 8) + 56))(v214, 0, 1, v212);
LABEL_87:
            v219 = v263;
            sub_1D6D0A350(0, &qword_1EDF15730, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0, "best remaining ");
            v234 = (*(*(v212 - 8) + 48))(v214, 1, v212);
            v192 = v252;
            if (v234 == 1)
            {
              goto LABEL_88;
            }

            sub_1D6D0A058(v214, a5, type metadata accessor for FeedCustomItem);
            v235 = 0;
          }

          else
          {
LABEL_83:
            v215 = v193;
            sub_1D6D0A350(0, &qword_1EDF15730, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0, "best remaining ");
            v214 = v248;
            (*(*(v218 - 8) + 56))(v248, 1, 1, v218);
            v219 = v263;
LABEL_88:
            sub_1D6D0A444(v214, sub_1D6D0A314);
            v235 = 1;
          }

          v219(a5, v235, 1, v215);
          if ((*(v267 + 48))(v192, 1, v215) != 1)
          {
            sub_1D6D0A444(v192, sub_1D6D0A158);
          }
        }
      }

      else if (v118)
      {
        if ((*v29 & 1) != 0 || !v257)
        {

          v119 = v259;
        }

        else
        {
          sub_1D62F0DA0(v259);
          v118 = *(v119 + 16);
        }

        v125 = (v256 + 56);
        v126 = (v256 + 48);
        v127 = v119;

        v128 = 0;
        while (1)
        {
          if (v128 == v118)
          {
            v129 = 1;
            v128 = v118;
          }

          else
          {
            if ((v128 & 0x8000000000000000) != 0)
            {
              goto LABEL_94;
            }

            if (v128 >= *(v127 + 16))
            {
              goto LABEL_95;
            }

            v130 = v127 + ((*(v267 + 80) + 32) & ~*(v267 + 80)) + *(v267 + 72) * v128;
            v131 = *(v26 + 48);
            v132 = v265;
            *v265 = v128;
            sub_1D6D09934(v130, v132 + v131, type metadata accessor for FeedCustomItem);
            v133 = v132;
            v26 = v264;
            sub_1D6D0A3D8(v133, v47, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
            v129 = 0;
            ++v128;
          }

          v134 = v263;
          (*v125)(v47, v129, 1, v26);
          sub_1D6D09B18(v47, v134, &qword_1EDF04778, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
          if ((*v126)(v134, 1, v26) == 1)
          {
            break;
          }

          v135 = v134;
          v136 = *v134;
          sub_1D6D0A444(v135 + *(v26 + 48), type metadata accessor for FeedCustomItem);
          if (!v266)
          {

            v268 = v127;
            v137 = v250;
            sub_1D5EC1E60(v136, v250);
            sub_1D6D0A350(0, &qword_1EDF15730, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0, "best remaining ");
            v139 = v138;
            v140 = *(v138 + 48);
            v141 = v253;
            sub_1D6D0A058(v137, v253, type metadata accessor for FeedCustomItem);
            *(v141 + v140) = v268;
            (*(*(v139 - 8) + 56))(v141, 0, 1, v139);
            a5 = v255;
            goto LABEL_59;
          }
        }

        a5 = v255;
        if (v254)
        {

          sub_1D6D0A264(0, &qword_1EDF15708, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0);
          v143 = v247;
          (*(*(v142 - 8) + 56))(v247, 1, 1, v142);
          sub_1D6D0A444(v143, sub_1D6D0A228);
          goto LABEL_43;
        }

        v166 = *(v127 + 16);
        v141 = v253;
        if (!v166)
        {
          goto LABEL_102;
        }

        v167 = v127;
        v168 = (*(v267 + 80) + 32) & ~*(v267 + 80);
        v169 = v247;
        sub_1D6D09934(v167 + v168, v247, type metadata accessor for FeedCustomItem);
        sub_1D5EC2DF8(v167, v167 + v168, 1, (2 * v166) | 1);
        v171 = v170;

        sub_1D6D0A264(0, &qword_1EDF15708, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0);
        v173 = v172;
        *(v169 + *(v172 + 48)) = v171;
        (*(*(v172 - 8) + 56))(v169, 0, 1, v172);
        v174 = *(v169 + *(v173 + 48));
        sub_1D6D0A350(0, &qword_1EDF15730, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0, "best remaining ");
        v139 = v175;
        v176 = *(v175 + 48);
        sub_1D6D0A058(v169, v141, type metadata accessor for FeedCustomItem);
        *(v141 + v176) = v174;
        (*(*(v139 - 8) + 56))(v141, 0, 1, v139);
LABEL_59:
        sub_1D6D0A350(0, &qword_1EDF15730, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0, "best remaining ");
        if ((*(*(v139 - 8) + 48))(v141, 1, v139) == 1)
        {
          goto LABEL_60;
        }

        sub_1D6D0A058(v141, a5, type metadata accessor for FeedCustomItem);
        (*(v267 + 56))(a5, 0, 1, v258);
      }

      else
      {
LABEL_43:
        sub_1D6D0A350(0, &qword_1EDF15730, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0, "best remaining ");
        v141 = v253;
        (*(*(v144 - 8) + 56))(v253, 1, 1, v144);
LABEL_60:
        sub_1D6D0A444(v141, sub_1D6D0A314);
        (*(v267 + 56))(a5, 1, 1, v258);
      }

      return;
    }

LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    return;
  }

  v237 = v24;
  v83 = *(v259 + 16);
  v240 = v40;
  v239 = v80;
  v238 = v82;
  if (!v83)
  {
    sub_1D6D0A350(0, &qword_1EDF15730, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0, "best remaining ");
    v87 = v251;
    (*(*(v86 - 8) + 56))(v251, 1, 1, v86);
    v71 = v258;
LABEL_20:
    sub_1D6D0A444(v87, sub_1D6D0A314);
    v40 = v240;
    v80 = v239;
    v82 = v238;
    goto LABEL_21;
  }

  v84 = *v29;
  v242 = v33;
  v241 = v29;
  v236 = v47;
  if ((v84 & 1) != 0 || !v257)
  {
  }

  else
  {
    sub_1D62F0DA0(v259);
    v83 = *(v85 + 16);
  }

  v88 = (v256 + 56);
  v89 = (v256 + 48);
  v262 = v85;

  i = 0;
  if (v83)
  {
    goto LABEL_10;
  }

LABEL_9:
  v91 = 1;
  for (i = v83; ; ++i)
  {
    (*v88)(v54, v91, 1, v26);
    sub_1D6D09B18(v54, v58, &qword_1EDF04778, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
    if ((*v89)(v58, 1, v26) == 1)
    {
      break;
    }

    sub_1D6D0A444(&v58[*(v26 + 48)], type metadata accessor for FeedCustomItem);
    if (i == v83)
    {
      goto LABEL_9;
    }

LABEL_10:
    if ((i & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if (i >= *(v262 + 16))
    {
      goto LABEL_93;
    }

    v92 = v262 + ((*(v267 + 80) + 32) & ~*(v267 + 80)) + *(v267 + 72) * i;
    v93 = *(v26 + 48);
    v94 = v265;
    *v265 = i;
    sub_1D6D09934(v92, v94 + v93, type metadata accessor for FeedCustomItem);
    v95 = v94;
    v26 = v264;
    sub_1D6D0A3D8(v95, v54, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
    v91 = 0;
  }

  v96 = v262;

  if (v254)
  {

    sub_1D6D0A264(0, &qword_1EDF15708, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0);
    v98 = v237;
    (*(*(v97 - 8) + 56))(v237, 1, 1, v97);
    sub_1D6D0A444(v98, sub_1D6D0A228);
    sub_1D6D0A350(0, &qword_1EDF15730, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0, "best remaining ");
    v87 = v251;
    (*(*(v99 - 8) + 56))(v251, 1, 1, v99);
    a5 = v255;
    v71 = v258;
    v33 = v242;
    v29 = v241;
    v47 = v236;
    goto LABEL_20;
  }

  v100 = *(v96 + 16);
  a5 = v255;
  v101 = v258;
  v47 = v236;
  v102 = v237;
  if (!v100)
  {
    goto LABEL_101;
  }

  v103 = (*(v267 + 80) + 32) & ~*(v267 + 80);
  sub_1D6D09934(v96 + v103, v237, type metadata accessor for FeedCustomItem);
  sub_1D5EC2DF8(v96, v96 + v103, 1, (2 * v100) | 1);
  v105 = v104;

  sub_1D6D0A264(0, &qword_1EDF15708, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0);
  v107 = v106;
  *(v102 + *(v106 + 48)) = v105;
  (*(*(v106 - 8) + 56))(v102, 0, 1, v106);
  v108 = *(v102 + *(v107 + 48));
  sub_1D6D0A350(0, &qword_1EDF15730, type metadata accessor for FeedCustomItem, sub_1D6D0A2E0, "best remaining ");
  v110 = v109;
  v111 = *(v109 + 48);
  v112 = v102;
  v87 = v251;
  sub_1D6D0A058(v112, v251, type metadata accessor for FeedCustomItem);
  *(v87 + v111) = v108;
  v113 = *(v110 - 8);
  (*(v113 + 56))(v87, 0, 1, v110);
  v114 = (*(v113 + 48))(v87, 1, v110);
  v33 = v242;
  v29 = v241;
  v71 = v101;
  if (v114 == 1)
  {
    goto LABEL_20;
  }

  v177 = v244;
  sub_1D6D0A058(v87, v244, type metadata accessor for FeedCustomItem);
  v178 = v177;
  v179 = v243;
  sub_1D6D0A058(v178, v243, type metadata accessor for FeedCustomItem);
  sub_1D6D0A058(v179, a5, type metadata accessor for FeedCustomItem);
  (*(v267 + 56))(a5, 0, 1, v101);
}

void sub_1D6D022EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>, __n128 a8@<Q0>)
{
  v115 = a2;
  v112 = a5;
  v110 = a4;
  sub_1D6D0A0C0(0, a8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for FeedRecipe(0);
  v108 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v16);
  v106 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v103 - v20;
  sub_1D6D09A7C(0, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v25);
  v107 = (&v103 - v26);
  sub_1D5C144C0(0, &qword_1EDF04738, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  MEMORY[0x1EEE9AC00](a1, v27);
  v29 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v34 = (&v103 - v33);
  v35 = *(a1 + 16);
  if (!v35)
  {
    sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC, "best remaining ");
    v39 = *(*(v38 - 8) + 56);

    v39(a7, 1, 1, v38);
    return;
  }

  v36 = *v114;
  v105 = a7;
  v103 = v15;
  v104 = a6;
  if ((v36 & 1) != 0 || !a3)
  {
  }

  else
  {
    sub_1D62F1174(v32);
    v35 = *(v37 + 16);
  }

  v113 = (v24 + 48);
  v114 = (v24 + 56);
  v112 |= v110 == 0;
  v109 = v37;

  i = 0;
  v111 = v29;
  if (v35)
  {
    goto LABEL_11;
  }

LABEL_10:
  v41 = 1;
  for (i = v35; ; ++i)
  {
    (*v114)(v29, v41, 1, v23);
    sub_1D6D09B18(v29, v34, &qword_1EDF04738, &unk_1EDF04740, type metadata accessor for FeedRecipe);
    if ((*v113)(v34, 1, v23) == 1)
    {
      v78 = v109;

      if (v104)
      {

        sub_1D6D0A264(0, &qword_1EDF12DF8, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
        v80 = v103;
        (*(*(v79 - 8) + 56))(v103, 1, 1, v79);
        sub_1D6D0A444(v80, sub_1D6D0A0C0);
        sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC, "best remaining ");
        (*(*(v81 - 8) + 56))(v105, 1, 1, v81);
        return;
      }

      v91 = *(v78 + 16);
      if (!v91)
      {
        goto LABEL_63;
      }

      v92 = (*(v108 + 80) + 32) & ~*(v108 + 80);
      v93 = v103;
      sub_1D6D09934(v78 + v92, v103, type metadata accessor for FeedRecipe);
      sub_1D5EC2E2C(v78, v78 + v92, 1, (2 * v91) | 1);
      v95 = v94;

      sub_1D6D0A264(0, &qword_1EDF12DF8, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
      v97 = v96;
      *(v93 + *(v96 + 48)) = v95;
      (*(*(v96 - 8) + 56))(v93, 0, 1, v96);
      v98 = *(v93 + *(v97 + 48));
      sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC, "best remaining ");
      v85 = v99;
      v100 = *(v99 + 48);
      v101 = v93;
      v102 = v105;
      sub_1D6D0A058(v101, v105, type metadata accessor for FeedRecipe);
      *(v102 + v100) = v98;
      v89 = *(*(v85 - 8) + 56);
      v90 = v102;
LABEL_60:
      v89(v90, 0, 1, v85);
      return;
    }

    v45 = v35;
    v46 = *v34;
    sub_1D6D0A058(v34 + *(v23 + 48), v21, type metadata accessor for FeedRecipe);
    if (v112)
    {
      v47 = 0;
    }

    else
    {
      v48 = *(v21 + 7);
      v49 = [v48 thumbnailExtraLarge];
      if (v49 || (v49 = [v48 thumbnailLarge]) != 0 || (v49 = objc_msgSend(v48, sel_thumbnailMedium)) != 0 || (v49 = objc_msgSend(v48, sel_thumbnailSmall)) != 0)
      {
        v50 = v49;
        [v49 thumbnailSize];
        v52 = v51;
        v54 = v53;

        v55 = v52 / v54;
        v56 = 0x4000000000104;
        if (v52 / v54 > 0.9)
        {
          v57 = v55 > 1.1 || v55 <= 0.9;
          v58 = 256;
          if (!v57)
          {
            v58 = 768;
          }

          v56 = v58 + 0x4000000000104;
        }
      }

      else
      {
        v56 = 0x4000000000000;
      }

      v59 = &v21[*(v116 + 36)];
      if (*v59 - 1 >= 2)
      {
        v60 = v56;
      }

      else
      {
        v60 = v56 | 0x1000;
      }

      v61 = type metadata accessor for FeedRecipe.State(0);
      v62 = 0x80000000;
      if (!v59[*(v61 + 24)])
      {
        v62 = 0x100000000;
      }

      v47 = (v110 & ~(v62 | v60)) == 0;
    }

    v63 = *(v21 + 7);
    v64 = [v63 thumbnailExtraLarge];
    if (v64 || (v64 = [v63 thumbnailLarge]) != 0 || (v64 = objc_msgSend(v63, sel_thumbnailMedium)) != 0 || (v64 = objc_msgSend(v63, sel_thumbnailSmall)) != 0)
    {
      v65 = v64;
      [v64 thumbnailSize];
      v67 = v66;
      v69 = v68;

      v70 = v67 / v69;
      v71 = 0x4000000000104;
      if (v67 / v69 > 0.9)
      {
        v72 = v70 > 1.1 || v70 <= 0.9;
        v73 = 256;
        if (!v72)
        {
          v73 = 768;
        }

        v71 = v73 + 0x4000000000104;
      }
    }

    else
    {
      v71 = 0x4000000000000;
    }

    v74 = &v21[*(v116 + 36)];
    if (*v74 - 1 >= 2)
    {
      v75 = v71;
    }

    else
    {
      v75 = v71 | 0x1000;
    }

    v76 = type metadata accessor for FeedRecipe.State(0);
    v77 = 0x80000000;
    if (!v74[*(v76 + 24)])
    {
      v77 = 0x100000000;
    }

    if ((v115 & ~(v77 | v75)) == 0 && !v47)
    {
      v82 = v109;

      v117 = v82;
      v83 = v106;
      sub_1D5EC1EA0(v46, v106);
      sub_1D6D0A444(v21, type metadata accessor for FeedRecipe);
      sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC, "best remaining ");
      v85 = v84;
      v86 = *(v84 + 48);
      v87 = v83;
      v88 = v105;
      sub_1D6D0A058(v87, v105, type metadata accessor for FeedRecipe);
      *(v88 + v86) = v117;
      v89 = *(*(v85 - 8) + 56);
      v90 = v88;
      goto LABEL_60;
    }

    sub_1D6D0A444(v21, type metadata accessor for FeedRecipe);
    v35 = v45;
    v29 = v111;
    if (i == v45)
    {
      goto LABEL_10;
    }

LABEL_11:
    if ((i & 0x8000000000000000) != 0)
    {
      break;
    }

    if (i >= *(v109 + 16))
    {
      goto LABEL_62;
    }

    v42 = v107;
    v43 = v109 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * i;
    v44 = *(v23 + 48);
    *v107 = i;
    sub_1D6D09934(v43, v42 + v44, type metadata accessor for FeedRecipe);
    sub_1D6D0A3D8(v42, v29, &unk_1EDF04740, type metadata accessor for FeedRecipe);
    v41 = 0;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
}

void sub_1D6D02DC4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v103 = a5;
  v100 = a4;
  v101 = a2;
  sub_1D60D0A50(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v98 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  if (!v15)
  {
    sub_1D5DC1A68(v125);
    v18 = *&v125[112];
    *(a7 + 96) = *&v125[96];
    *(a7 + 112) = v18;
    *(a7 + 128) = *&v125[128];
    *(a7 + 144) = *&v125[144];
    v19 = *&v125[48];
    *(a7 + 32) = *&v125[32];
    *(a7 + 48) = v19;
    v20 = *&v125[80];
    *(a7 + 64) = *&v125[64];
    *(a7 + 80) = v20;
    v21 = *&v125[16];
    *a7 = *v125;
    *(a7 + 16) = v21;
    return;
  }

  v16 = *v7;
  v91 = a7;
  HIDWORD(v90) = a6;
  if ((v16 & 1) != 0 || !a3)
  {
  }

  else
  {
    sub_1D62F0AF0(a1);
    a1 = v17;
    v15 = *(v17 + 16);
  }

  v97 = (a1 + 32);
  LODWORD(v90) = (v100 & 0xFFFFFFFFFFFFBFBFLL) == 0;
  v94 = (v100 & 0xFFFFFFFFFFFFFFBFLL) == 0;
  v93 = v101 & 0xFFFFFFFFFFFFBFBFLL;
  v95 = v101 & 0xFFFFFFFFFFFFFFBFLL;

  v22 = 0;
  v99 = a1;
  v96 = v15;
  while (1)
  {
    if (v22 == v15)
    {
      sub_1D6D09A5C(v125);
      v23 = *v125;
      v141 = *&v125[104];
      v142[0] = *&v125[120];
      *(v142 + 9) = *&v125[129];
      v137 = *&v125[40];
      v138 = *&v125[56];
      v139 = *&v125[72];
      v140 = *&v125[88];
      v22 = v15;
      v135 = *&v125[8];
      v136 = *&v125[24];
    }

    else
    {
      if ((v22 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      if (v22 >= *(a1 + 16))
      {
        goto LABEL_65;
      }

      v24 = &v97[9 * v22];
      v107 = *v24;
      v25 = v24[1];
      v26 = v24[2];
      v27 = v24[4];
      v110 = v24[3];
      v111 = v27;
      v108 = v25;
      v109 = v26;
      v28 = v24[5];
      v29 = v24[6];
      v30 = v24[7];
      *(v114 + 9) = *(v24 + 121);
      v113 = v29;
      v114[0] = v30;
      v112 = v28;
      v123[0] = v24[7];
      *(v123 + 9) = *(v24 + 121);
      v121 = v24[5];
      v122 = v24[6];
      v117 = v24[1];
      v118 = v24[2];
      v119 = v24[3];
      v120 = v24[4];
      v116 = *v24;
      *v125 = v22;
      *&v125[8] = v116;
      *&v125[72] = v120;
      *&v125[56] = v119;
      *&v125[40] = v118;
      *&v125[24] = v117;
      *&v125[104] = v122;
      *&v125[88] = v121;
      *&v125[129] = *(v123 + 9);
      *&v125[120] = v123[0];
      nullsub_1();
      sub_1D5ECF2C4(&v107, v105);
      v23 = *v125;
      v140 = *&v125[88];
      v141 = *&v125[104];
      v142[0] = *&v125[120];
      *(v142 + 9) = *&v125[129];
      v137 = *&v125[40];
      v138 = *&v125[56];
      v139 = *&v125[72];
      ++v22;
      v135 = *&v125[8];
      v136 = *&v125[24];
    }

    v132 = v140;
    v133 = v141;
    v134[0] = v142[0];
    *(v134 + 9) = *(v142 + 9);
    v128 = v136;
    v129 = v137;
    v130 = v138;
    v131 = v139;
    v127 = v135;
    v126 = v23;
    if (sub_1D5DEA380(&v126) == 1)
    {
      break;
    }

    v102 = v23;
    *v125 = v135;
    *&v125[64] = v139;
    *&v125[80] = v140;
    *&v125[96] = v141;
    *&v125[112] = v142[0];
    *&v125[121] = *(v142 + 9);
    *&v125[16] = v136;
    *&v125[32] = v137;
    *&v125[48] = v138;
    v31 = v139;
    v32 = v135;
    if ((v103 & 1) != 0 || !v100)
    {
      LODWORD(v104) = 0;
      if ((v139 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v33 = [*v125 coverImageAssetHandle];
      v34 = v33;
      if (!v31)
      {
        if (v33)
        {
          [v32 coverImageAspectRatio];
          v50 = v32;
          v104 = v34;
          v51 = [v50 layeredCoverJSON];
          if (v51)
          {
            v52 = v51;
            v92 = sub_1D726207C();

            v53 = v98;
            sub_1D72579DC();
            v54 = sub_1D7257A4C();
            (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
            LOBYTE(v52) = sub_1D725AB8C();

            sub_1D6D0A444(v53, sub_1D60D0A50);
            if (v52)
            {

              v55 = -4161;
            }

            else
            {
              [v50 layeredCoverAspectRatio];

              v55 = -20545;
            }

            a1 = v99;
          }

          else
          {

            v55 = -4161;
          }

          v56 = v104;
        }

        else
        {
          v55 = -4097;
        }

        LODWORD(v104) = (v55 & v100) == 0;
LABEL_47:
        v57 = [v32 coverImageAssetHandle];
        if (v57)
        {
          v58 = v57;
          [v32 coverImageAspectRatio];
          v59 = v32;
          v60 = v58;
          v61 = [v59 layeredCoverJSON];
          if (v61)
          {
            v62 = v61;
            sub_1D726207C();

            v63 = v98;
            sub_1D72579DC();
            v64 = sub_1D7257A4C();
            (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
            LOBYTE(v62) = sub_1D725AB8C();

            sub_1D6D0A444(v63, sub_1D60D0A50);
            if (v62)
            {

              v65 = -4161;
            }

            else
            {
              [v59 layeredCoverAspectRatio];

              v65 = -20545;
            }

            a1 = v99;
            v15 = v96;
          }

          else
          {

            v65 = -4161;
          }
        }

        else
        {
          v65 = -4097;
        }

        if ((v65 & v101) != 0)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      if (v33)
      {
        [v32 coverImageAspectRatio];
        v35 = v32;
        v36 = v34;
        v37 = [v35 layeredCoverJSON];
        v38 = v94;
        if (v37)
        {
          v104 = v36;
          v39 = v37;
          v92 = sub_1D726207C();

          v40 = v98;
          sub_1D72579DC();
          v41 = sub_1D7257A4C();
          (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
          LOBYTE(v39) = sub_1D725AB8C();

          sub_1D6D0A444(v40, sub_1D60D0A50);
          v38 = v94;
          if ((v39 & 1) == 0)
          {
            [v35 layeredCoverAspectRatio];
            v38 = v90;
          }

          v36 = v104;
        }

        LODWORD(v104) = v38;

        a1 = v99;
      }

      else
      {
        LODWORD(v104) = 0;
      }
    }

    v42 = [v32 coverImageAssetHandle];
    if (v42)
    {
      v43 = v42;
      [v32 coverImageAspectRatio];
      v44 = v32;
      v45 = v43;
      v46 = [v44 layeredCoverJSON];
      if (v46)
      {
        v47 = v46;
        sub_1D726207C();

        v48 = v98;
        sub_1D72579DC();
        v49 = sub_1D7257A4C();
        (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
        LOBYTE(v47) = sub_1D725AB8C();

        sub_1D6D0A444(v48, sub_1D60D0A50);
        if ((v47 & 1) == 0)
        {
          [v44 layeredCoverAspectRatio];

          a1 = v99;
          v15 = v96;
          if (v93)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        a1 = v99;
        v15 = v96;
      }

      if (v95)
      {
        goto LABEL_9;
      }
    }

    else if (v101)
    {
      goto LABEL_9;
    }

LABEL_8:
    if (!v104)
    {

      *&v107 = a1;
      sub_1D5EC2178(v102, &v116);
      sub_1D5ECF320(v125);
      v85 = v123[0];
      v86 = v91;
      *(v91 + 96) = v122;
      *(v86 + 112) = v85;
      *(v86 + 121) = *(v123 + 9);
      v87 = v119;
      *(v86 + 32) = v118;
      *(v86 + 48) = v87;
      v88 = v121;
      *(v86 + 64) = v120;
      *(v86 + 80) = v88;
      v89 = v117;
      *v86 = v116;
      *(v86 + 16) = v89;
      *(v86 + 144) = v107;
      goto LABEL_63;
    }

LABEL_9:
    sub_1D5ECF320(v125);
  }

  if ((v90 & 0x100000000) != 0)
  {

    sub_1D5DC1A68(v105);
    v113 = v105[6];
    v114[0] = v105[7];
    v114[1] = v105[8];
    v115 = v106;
    v109 = v105[2];
    v110 = v105[3];
    v111 = v105[4];
    v112 = v105[5];
    v107 = v105[0];
    v108 = v105[1];
    sub_1D6D0A444(&v107, sub_1D6D0999C);
    sub_1D5DC1A68(&v116);
    v66 = v123[0];
    v67 = v91;
    *(v91 + 96) = v122;
    *(v67 + 112) = v66;
    *(v67 + 128) = v123[1];
    *(v67 + 144) = v124;
    v68 = v119;
    *(v67 + 32) = v118;
    *(v67 + 48) = v68;
    v69 = v121;
    *(v67 + 64) = v120;
    *(v67 + 80) = v69;
    v70 = v117;
    *v67 = v116;
    *(v67 + 16) = v70;
    return;
  }

  v71 = *(a1 + 16);
  v72 = v91;
  if (v71)
  {
    v73 = v97;
    v74 = v97[6];
    v121 = v97[5];
    v122 = v74;
    v123[0] = v97[7];
    *(v123 + 9) = *(v97 + 121);
    v75 = v97[1];
    v76 = v97[3];
    v77 = v97[4];
    v118 = v97[2];
    v119 = v76;
    v120 = v77;
    v116 = *v97;
    v117 = v75;
    memmove(v125, v97, 0x89uLL);
    sub_1D5EC2CBC(a1, v73, 1, (2 * v71) | 1);
    v79 = v78;
    sub_1D5ECF2C4(&v116, &v107);

    *&v125[144] = v79;
    nullsub_1();
    v80 = *&v125[144];
    v81 = *&v125[112];
    *(v72 + 96) = *&v125[96];
    *(v72 + 112) = v81;
    *(v72 + 121) = *&v125[121];
    v82 = *&v125[48];
    *(v72 + 32) = *&v125[32];
    *(v72 + 48) = v82;
    v83 = *&v125[80];
    *(v72 + 64) = *&v125[64];
    *(v72 + 80) = v83;
    v84 = *&v125[16];
    *v72 = *v125;
    *(v72 + 16) = v84;
    *(v72 + 144) = v80;
LABEL_63:
    nullsub_1();
    return;
  }

LABEL_66:
  __break(1u);
}

void sub_1D6D038E8(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v90 = a5;
  v94 = a1;
  v95 = a3;
  v96 = type metadata accessor for FeedRecipe(0);
  v93 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v9);
  v89 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v86 - v14;
  sub_1D6D0A0C0(0, v13);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D09A7C(0, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v91 = (&v86 - v24);
  sub_1D5C144C0(0, &qword_1EDF04738, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = (&v86 - v31);
  sub_1D6D09F58(0);
  MEMORY[0x1EEE9AC00](a2, v33);
  v36 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v34 + 16))
  {
    sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC, "best remaining ");
    (*(*(v40 - 8) + 56))(v36, 1, 1, v40);
LABEL_39:
    sub_1D6D0A444(v36, sub_1D6D09F58);
    v85 = 1;
    goto LABEL_41;
  }

  v37 = *(v34 + 16);
  v38 = *v94;
  v87 = a6;
  v88 = v36;
  v86 = v19;
  if ((v38 & 1) != 0 || !a4)
  {
  }

  else
  {
    sub_1D62F1174(v34);
    v37 = *(v39 + 16);
  }

  v41 = (v22 + 56);
  v42 = (v22 + 48);
  v92 = v39;

  v43 = 0;
  while (1)
  {
    if (v43 == v37)
    {
      v44 = 1;
      v43 = v37;
    }

    else
    {
      if ((v43 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      if (v43 >= *(v92 + 16))
      {
        goto LABEL_43;
      }

      v45 = v92 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v43;
      v46 = *(v21 + 48);
      v47 = v91;
      *v91 = v43;
      sub_1D6D09934(v45, v47 + v46, type metadata accessor for FeedRecipe);
      sub_1D6D0A3D8(v47, v28, &unk_1EDF04740, type metadata accessor for FeedRecipe);
      v44 = 0;
      ++v43;
    }

    (*v41)(v28, v44, 1, v21);
    sub_1D6D09B18(v28, v32, &qword_1EDF04738, &unk_1EDF04740, type metadata accessor for FeedRecipe);
    if ((*v42)(v32, 1, v21) == 1)
    {
      break;
    }

    v48 = v37;
    v94 = *v32;
    sub_1D6D0A058(v32 + *(v21 + 48), v15, type metadata accessor for FeedRecipe);
    v49 = *(v15 + 7);
    v50 = [v49 thumbnailExtraLarge];
    if (v50 || (v50 = [v49 thumbnailLarge]) != 0 || (v50 = objc_msgSend(v49, sel_thumbnailMedium)) != 0 || (v50 = objc_msgSend(v49, sel_thumbnailSmall)) != 0)
    {
      v51 = v50;
      [v50 thumbnailSize];
      v53 = v52;
      v55 = v54;

      v56 = v53 / v55;
      v57 = 0x4000000000104;
      if (v53 / v55 > 0.9)
      {
        v58 = v56 > 1.1 || v56 <= 0.9;
        v59 = 256;
        if (!v58)
        {
          v59 = 768;
        }

        v57 = v59 + 0x4000000000104;
      }
    }

    else
    {
      v57 = 0x4000000000000;
    }

    v60 = &v15[*(v96 + 36)];
    if (*v60 - 1 >= 2)
    {
      v61 = v57;
    }

    else
    {
      v61 = v57 | 0x1000;
    }

    v62 = type metadata accessor for FeedRecipe.State(0);
    v63 = 0x80000000;
    if (!v60[*(v62 + 24)])
    {
      v63 = 0x100000000;
    }

    if ((v95 & ~(v63 | v61)) == 0)
    {
      v68 = v92;

      v97 = v68;
      v69 = v89;
      sub_1D5EC1EA0(v94, v89);
      sub_1D6D0A444(v15, type metadata accessor for FeedRecipe);
      sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC, "best remaining ");
      v71 = v70;
      v72 = *(v70 + 48);
      v73 = v69;
      v36 = v88;
      sub_1D6D0A058(v73, v88, type metadata accessor for FeedRecipe);
      *&v36[v72] = v97;
      goto LABEL_38;
    }

    sub_1D6D0A444(v15, type metadata accessor for FeedRecipe);
    v37 = v48;
  }

  v64 = v92;

  if (v90)
  {

    sub_1D6D0A264(0, &qword_1EDF12DF8, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
    v66 = v86;
    (*(*(v65 - 8) + 56))(v86, 1, 1, v65);
    sub_1D6D0A444(v66, sub_1D6D0A0C0);
    sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC, "best remaining ");
    v36 = v88;
    (*(*(v67 - 8) + 56))(v88, 1, 1, v67);
    a6 = v87;
    goto LABEL_39;
  }

  v74 = *(v64 + 16);
  v36 = v88;
  if (!v74)
  {
    goto LABEL_44;
  }

  v75 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v76 = v86;
  sub_1D6D09934(v64 + v75, v86, type metadata accessor for FeedRecipe);
  sub_1D5EC2E2C(v64, v64 + v75, 1, (2 * v74) | 1);
  v78 = v77;

  sub_1D6D0A264(0, &qword_1EDF12DF8, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
  v80 = v79;
  *(v76 + *(v79 + 48)) = v78;
  (*(*(v79 - 8) + 56))(v76, 0, 1, v79);
  v81 = *(v76 + *(v80 + 48));
  sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC, "best remaining ");
  v71 = v82;
  v83 = *(v82 + 48);
  sub_1D6D0A058(v76, v36, type metadata accessor for FeedRecipe);
  *&v36[v83] = v81;
LABEL_38:
  (*(*(v71 - 8) + 56))(v36, 0, 1, v71);
  sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC, "best remaining ");
  v84 = (*(*(v71 - 8) + 48))(v36, 1, v71);
  a6 = v87;
  if (v84 == 1)
  {
    goto LABEL_39;
  }

  sub_1D6D0A058(v36, a6, type metadata accessor for FeedRecipe);
  v85 = 0;
LABEL_41:
  (*(v93 + 56))(a6, v85, 1, v96);
}

void sub_1D6D04354(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v91 = a5;
  v96 = a3;
  v97 = a1;
  v98 = type metadata accessor for FeedRecipe(0);
  v94 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v9);
  v90 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v86 - v14;
  sub_1D6D0A0C0(0, v13);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D09A7C(0, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v92 = (&v86 - v24);
  sub_1D5C144C0(0, &qword_1EDF04738, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = (&v86 - v31);
  sub_1D6D09F58(0);
  MEMORY[0x1EEE9AC00](a2, v33);
  v36 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v34 + 16);
  if (!v37)
  {
    sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC, "best remaining ");
    (*(*(v40 - 8) + 56))(v36, 1, 1, v40);
LABEL_39:
    sub_1D6D0A444(v36, sub_1D6D09F58);
    v85 = 1;
    goto LABEL_41;
  }

  v38 = *v97;
  v88 = a6;
  v89 = v36;
  v87 = v19;
  if ((v38 & 1) != 0 || !a4)
  {
    v97 = v37;
  }

  else
  {
    sub_1D62F1174(v34);
    v97 = *(v39 + 16);
  }

  v96 |= 0x1000uLL;
  v41 = (v22 + 56);
  v42 = (v22 + 48);
  v93 = v39;

  v43 = 0;
  for (i = &unk_1EDF04740; ; i = v49)
  {
    if (v43 == v97)
    {
      v45 = 1;
      v43 = v97;
    }

    else
    {
      if ((v43 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      if (v43 >= *(v93 + 16))
      {
        goto LABEL_43;
      }

      v46 = v93 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v43;
      v47 = *(v21 + 48);
      v48 = v92;
      *v92 = v43;
      sub_1D6D09934(v46, v48 + v47, type metadata accessor for FeedRecipe);
      sub_1D6D0A3D8(v48, v28, i, type metadata accessor for FeedRecipe);
      v45 = 0;
      ++v43;
    }

    (*v41)(v28, v45, 1, v21);
    sub_1D6D09B18(v28, v32, &qword_1EDF04738, i, type metadata accessor for FeedRecipe);
    if ((*v42)(v32, 1, v21) == 1)
    {
      break;
    }

    v49 = i;
    v95 = *v32;
    sub_1D6D0A058(v32 + *(v21 + 48), v15, type metadata accessor for FeedRecipe);
    v50 = *(v15 + 7);
    v51 = [v50 thumbnailExtraLarge];
    if (v51 || (v51 = [v50 thumbnailLarge]) != 0 || (v51 = objc_msgSend(v50, sel_thumbnailMedium)) != 0 || (v51 = objc_msgSend(v50, sel_thumbnailSmall)) != 0)
    {
      v52 = v51;
      [v51 thumbnailSize];
      v54 = v53;
      v56 = v55;

      v57 = v54 / v56;
      v58 = 0x4000000000104;
      if (v54 / v56 > 0.9)
      {
        v59 = v57 > 1.1 || v57 <= 0.9;
        v60 = 256;
        if (!v59)
        {
          v60 = 768;
        }

        v58 = v60 + 0x4000000000104;
      }
    }

    else
    {
      v58 = 0x4000000000000;
    }

    v61 = &v15[*(v98 + 36)];
    if (*v61 - 1 >= 2)
    {
      v62 = v58;
    }

    else
    {
      v62 = v58 | 0x1000;
    }

    v63 = type metadata accessor for FeedRecipe.State(0);
    v64 = 0x80000000;
    if (!v61[*(v63 + 24)])
    {
      v64 = 0x100000000;
    }

    if ((v96 & ~(v64 | v62)) == 0)
    {
      v69 = v93;

      v99 = v69;
      v70 = v90;
      sub_1D5EC1EA0(v95, v90);
      sub_1D6D0A444(v15, type metadata accessor for FeedRecipe);
      sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC, "best remaining ");
      v72 = v71;
      v73 = *(v71 + 48);
      v36 = v89;
      sub_1D6D0A058(v70, v89, type metadata accessor for FeedRecipe);
      *&v36[v73] = v99;
      goto LABEL_38;
    }

    sub_1D6D0A444(v15, type metadata accessor for FeedRecipe);
  }

  v65 = v93;

  if (v91)
  {

    sub_1D6D0A264(0, &qword_1EDF12DF8, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
    v67 = v87;
    (*(*(v66 - 8) + 56))(v87, 1, 1, v66);
    sub_1D6D0A444(v67, sub_1D6D0A0C0);
    sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC, "best remaining ");
    v36 = v89;
    (*(*(v68 - 8) + 56))(v89, 1, 1, v68);
    a6 = v88;
    goto LABEL_39;
  }

  v74 = *(v65 + 16);
  v36 = v89;
  v75 = v87;
  if (!v74)
  {
    goto LABEL_44;
  }

  v76 = (*(v94 + 80) + 32) & ~*(v94 + 80);
  sub_1D6D09934(v65 + v76, v87, type metadata accessor for FeedRecipe);
  sub_1D5EC2E2C(v65, v65 + v76, 1, (2 * v74) | 1);
  v78 = v77;

  sub_1D6D0A264(0, &qword_1EDF12DF8, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
  v80 = v79;
  *(v75 + *(v79 + 48)) = v78;
  (*(*(v79 - 8) + 56))(v75, 0, 1, v79);
  v81 = *(v75 + *(v80 + 48));
  sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC, "best remaining ");
  v72 = v82;
  v83 = *(v82 + 48);
  sub_1D6D0A058(v75, v36, type metadata accessor for FeedRecipe);
  *&v36[v83] = v81;
LABEL_38:
  (*(*(v72 - 8) + 56))(v36, 0, 1, v72);
  sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC, "best remaining ");
  v84 = (*(*(v72 - 8) + 48))(v36, 1, v72);
  a6 = v88;
  if (v84 == 1)
  {
    goto LABEL_39;
  }

  sub_1D6D0A058(v36, a6, type metadata accessor for FeedRecipe);
  v85 = 0;
LABEL_41:
  (*(v94 + 56))(a6, v85, 1, v98);
}

void sub_1D6D04DCC(uint64_t a1, void *a2, __n128 a3)
{
  v946 = a2;
  v933 = a1;
  sub_1D6D09328(0);
  v920 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v907 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v907 - v10);
  sub_1D6D0935C(0);
  v919 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v917 = &v907 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v930 = &v907 - v17;
  sub_1D6D093F4(0);
  v918 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v916 = &v907 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v928 = (&v907 - v23);
  sub_1D6D09428(0);
  v931 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v915 = &v907 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v929 = &v907 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v914 = &v907 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v927 = (&v907 - v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v913 = &v907 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v926 = (&v907 - v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v912 = &v907 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v925 = (&v907 - v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  v911 = &v907 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v924 = (&v907 - v53);
  MEMORY[0x1EEE9AC00](v54, v55);
  v910 = &v907 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v923 = (&v907 - v59);
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v907 - v62;
  MEMORY[0x1EEE9AC00](v64, v65);
  v922 = (&v907 - v66);
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = &v907 - v69;
  MEMORY[0x1EEE9AC00](v71, v72);
  v921 = (&v907 - v73);
  sub_1D6D0945C(0);
  MEMORY[0x1EEE9AC00](v74, v75);
  v77 = &v907 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78, v79);
  MEMORY[0x1EEE9AC00](v80, v81);
  v83 = &v907 - v82;
  MEMORY[0x1EEE9AC00](v84, v85);
  v89 = *(v3 + 64);
  switch(v89)
  {
    case 0uLL:
      v90 = v946;
      v91 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v92 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v92 != 255)
      {
        if ((v92 & 1) == 0)
        {
          goto LABEL_106;
        }

        v908 = (&v907 - v87);
        v931 = v86;
        v94 = *v91;
        v93 = v91[1];
        v95 = v91[4];
        v928 = v91[5];
        v929 = v95;
        *&v945[0] = *(v3 + 72);

        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        sub_1D6FA2770(*&v945[0], v944);

        v926 = *(v3 + 136);
        v927 = *&v944[0];
        v96 = v90;
        v97 = *(v3 + 144);
        v930 = v3;
        v98 = *v3;
        v99 = v96[2];
        v100 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v101 = v933;
        swift_beginAccess();
        v102 = *(v101 + v100);
        if (*(v102 + 16))
        {
          v103 = sub_1D5B69D90(v94, v93);
          if (v104)
          {
            v105 = *(*(v102 + 56) + 8 * v103);
            swift_endAccess();
            v106 = *(v105 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
            v107 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
            swift_beginAccess();

            v108 = v932;
            sub_1D6CFBBC4((v105 + v107), v106, 0, 0, v927, v926, v97, v929, v83, v928, v98, v99);
            v946 = v108;
            if (v108)
            {
              goto LABEL_7;
            }

            swift_endAccess();

            sub_1D6D0A058(v83, v908, sub_1D6D0945C);
            goto LABEL_256;
          }
        }

        goto LABEL_107;
      }

      v908 = (&v907 - v87);
      v930 = v3;
      v931 = v86;
      *&v945[0] = *(v3 + 72);

      sub_1D69869F4(MEMORY[0x1E69E7CC0]);
      v501 = *(*&v945[0] + 16);
      if (v501)
      {
        v502 = 0;
        v503 = (*&v945[0] + 32);
        do
        {
          v504 = *v503++;
          LOBYTE(v944[0]) = v504;
          sub_1D6FA308C(v945);
          v505 = *&v945[0];
          if ((*&v945[0] & ~v502) == 0)
          {
            v505 = 0;
          }

          v502 |= v505;
          --v501;
        }

        while (v501);
      }

      else
      {
        v502 = 0;
      }

      v712 = *(v930 + 136);
      v928 = *(v930 + 144);
      v929 = v712;
      v713 = v90[4];
      v714 = v90[5];
      v715 = *v930;
      v716 = v90[2];
      v717 = v933;
      v718 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v719 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v720 = v932;
      sub_1D6CFBBC4((v717 + v719), v718, 0, 0, v502, v929, v928, v713, v908, v714, v715, v716);
      if (!v720)
      {
        v946 = 0;
        swift_endAccess();
LABEL_256:
        v817 = v931;
        v818 = v908;

        v563 = v930;
        sub_1D5B886D0(v819);

        sub_1D6985C44(v820);
        v821 = (v818 + *(v817 + 9));
        v822 = *v821;
        v823 = v821[1];
        v824 = v821[2];
        v825 = v821[3];
        v826 = v821[4];
        v827 = v821[5];
        v828 = v563[26];
        v829 = v563[27];
        v830 = v563[29];
        v932 = v563[28];
        v933 = v828;
        v931 = v830;
        v831 = v563[30];
        v928 = v563[31];
        v929 = v831;
        sub_1D67F5880(v822, v823);
        sub_1D67F58E4(v933, v829);
        v563[26] = v822;
        v563[27] = v823;
        v563[28] = v824;
        v563[29] = v825;
        v563[30] = v826;
        v563[31] = v827;
        *(&v945[1] + 1) = type metadata accessor for FeedHeadline(0);
        *&v945[2] = sub_1D6D098EC(&qword_1EDF34AD0, type metadata accessor for FeedHeadline, &protocol conformance descriptor for FeedHeadline);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v945);
        v577 = v908;
        goto LABEL_257;
      }

      goto LABEL_236;
    case 1uLL:
      v277 = v946;
      v278 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v279 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v279 != 255)
      {
        if ((v279 & 1) == 0)
        {
          goto LABEL_106;
        }

        v94 = *v278;
        v93 = v278[1];
        v281 = v278[4];
        v280 = v278[5];
        v931 = v281;
        v929 = v280;
        *&v944[0] = *(v3 + 72);

        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        sub_1D6FA2770(*&v944[0], v934);

        v928 = v934[0];
        v282 = *(v3 + 136);
        v283 = *(v3 + 144);
        v930 = v3;
        v284 = *v3;
        v285 = v277[2];
        v286 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v287 = v933;
        swift_beginAccess();
        v288 = *(v287 + v286);
        if (*(v288 + 16))
        {
          v289 = sub_1D5B69D90(v94, v93);
          if (v290)
          {
            v291 = *(*(v288 + 56) + 8 * v289);
            swift_endAccess();
            v292 = *(v291 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
            v293 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
            swift_beginAccess();

            v294 = v932;
            sub_1D6CF7EAC((v291 + v293), v292, 0, 0, v928, v282, v283, v931, v944, v929, v284, v285);
            if (v294)
            {
              goto LABEL_7;
            }

            v946 = 0;
            swift_endAccess();

            v945[10] = v944[10];
            v945[11] = v944[11];
            v945[12] = v944[12];
            v945[6] = v944[6];
            v945[7] = v944[7];
            v945[8] = v944[8];
            v945[9] = v944[9];
            v945[2] = v944[2];
            v945[3] = v944[3];
            v945[4] = v944[4];
            v945[5] = v944[5];
            v945[0] = v944[0];
            v945[1] = v944[1];
            goto LABEL_238;
          }
        }

        goto LABEL_107;
      }

      v930 = v3;
      *&v944[0] = *(v3 + 72);

      sub_1D69869F4(MEMORY[0x1E69E7CC0]);
      v506 = *(*&v944[0] + 16);
      if (v506)
      {
        v507 = 0;
        v508 = (*&v944[0] + 32);
        do
        {
          v509 = *v508++;
          v510 = qword_1D7349118[v509];
          if ((v510 & ~v507) == 0)
          {
            v510 = 0;
          }

          v507 |= v510;
          --v506;
        }

        while (v506);
      }

      else
      {
        v507 = 0;
      }

      v721 = *(v930 + 144);
      v931 = *(v930 + 136);
      v929 = v721;
      v722 = v277[4];
      v723 = v277[5];
      v724 = *v930;
      v725 = v277[2];
      v726 = v933;
      v727 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v728 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v729 = v932;
      sub_1D6CF7EAC((v726 + v728), v727, 0, 0, v507, v931, v929, v722, v945, v723, v724, v725);
      if (!v729)
      {
        v946 = 0;
        swift_endAccess();
LABEL_238:

        v563 = v930;
        sub_1D5B886D0(v730);

        sub_1D6985C44(v731);
        v732 = v945[10];
        v733 = v945[11];
        v734 = v945[12];
        v735 = v563[26];
        v736 = v563[27];
        v737 = v563[29];
        v932 = v563[28];
        v933 = v735;
        v931 = v737;
        v738 = v563[30];
        v928 = v563[31];
        v929 = v738;
        sub_1D67F5880(*&v945[10], *(&v945[10] + 1));
        sub_1D67F58E4(v933, v736);
        *(v563 + 13) = v732;
        *(v563 + 14) = v733;
        *(v563 + 15) = v734;
        v935[3] = &type metadata for FeedIssue;
        v935[4] = sub_1D5EE5AA4();
        v739 = swift_allocObject();
        v942 = v945[6];
        v943[0] = v945[7];
        *(v943 + 9) = *(&v945[7] + 9);
        v740 = v945[1];
        v741 = v945[2];
        v938 = v945[2];
        v939 = v945[3];
        v742 = v945[3];
        v940 = v945[4];
        v941 = v945[5];
        v936 = v945[0];
        v937 = v945[1];
        v743 = v945[5];
        v745 = v945[6];
        v744 = v945[7];
        v739[7] = v945[6];
        v739[8] = v744;
        *(v739 + 137) = *(&v945[7] + 9);
        v747 = v945[0];
        v746 = v945[1];
        v748 = v945[3];
        v739[3] = v945[2];
        v739[4] = v748;
        v749 = v945[5];
        v750 = v945[4];
        v739[5] = v945[4];
        v739[6] = v749;
        v739[1] = v945[0];
        v739[2] = v746;
        v944[10] = v945[10];
        v944[11] = v945[11];
        v944[12] = v945[12];
        v944[6] = v745;
        v944[7] = v945[7];
        v944[8] = v945[8];
        v944[9] = v945[9];
        v944[2] = v741;
        v944[3] = v742;
        v944[4] = v750;
        v944[5] = v743;
        v935[0] = v739;
        v944[0] = v747;
        v944[1] = v740;
        sub_1D5ECF2C4(&v936, v934);
        sub_1D6D09524(v944, &qword_1EC891EB0, &type metadata for FeedIssue, type metadata accessor for FormatNodeBindingItem);
        v488 = v935;
        goto LABEL_266;
      }

      goto LABEL_236;
    case 2uLL:
      v203 = v946;
      v204 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v205 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v205 != 255)
      {
        if ((v205 & 1) == 0)
        {
          goto LABEL_106;
        }

        v94 = *v204;
        v93 = v204[1];
        v206 = v204[4];
        v928 = v204[5];
        v929 = v206;
        *&v945[0] = *(v3 + 72);

        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        sub_1D6FA2770(*&v945[0], v944);

        v207 = *(v3 + 144);
        v926 = *(v3 + 136);
        v927 = *&v944[0];
        v930 = v3;
        v208 = *v3;
        v209 = v203[2];
        v210 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v211 = v933;
        swift_beginAccess();
        v212 = *(v211 + v210);
        if (*(v212 + 16))
        {
          v213 = sub_1D5B69D90(v94, v93);
          if (v214)
          {
            v215 = *(*(v212 + 56) + 8 * v213);
            swift_endAccess();
            v216 = *(v215 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
            v217 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
            swift_beginAccess();

            v218 = v932;
            sub_1D6CF0260((v215 + v217), v216, 0, 0, v927, v926, v207, v929, v70, v928, v208, v209);
            if (v218)
            {
              goto LABEL_7;
            }

            v946 = 0;
            swift_endAccess();

            v219 = v70;
            v220 = v921;
            sub_1D6D0A058(v219, v921, sub_1D6D09428);
            goto LABEL_222;
          }
        }

        goto LABEL_107;
      }

      v930 = v3;
      *&v945[0] = *(v3 + 72);

      sub_1D69869F4(MEMORY[0x1E69E7CC0]);
      v458 = *(*&v945[0] + 16);
      if (v458)
      {
        v459 = 0;
        v460 = (*&v945[0] + 32);
        do
        {
          v461 = *v460++;
          v462 = qword_1D7349118[v461];
          if ((v462 & ~v459) == 0)
          {
            v462 = 0;
          }

          v459 |= v462;
          --v458;
        }

        while (v458);
      }

      else
      {
        v459 = 0;
      }

      v641 = *(v930 + 136);
      v928 = *(v930 + 144);
      v929 = v641;
      v642 = v203[4];
      v643 = v203[5];
      v644 = *v930;
      v645 = v203[2];
      v646 = v933;
      v647 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v648 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v893 = v643;
      v220 = v921;
      v649 = v932;
      sub_1D6CF0260((v646 + v648), v647, 0, 0, v459, v929, v928, v642, v921, v893, v644, v645);
      if (!v649)
      {
        v946 = 0;
        swift_endAccess();
LABEL_222:
        v650 = v931;

        v563 = v930;
        sub_1D5B886D0(v651);

        sub_1D6985C44(v652);
        v653 = (v220 + *(v650 + 9));
        v654 = *v653;
        v655 = v653[1];
        v656 = v653[2];
        v657 = v653[3];
        v658 = v653[4];
        v659 = v653[5];
        v660 = v563[26];
        v661 = v563[27];
        v662 = v563[29];
        v932 = v563[28];
        v933 = v660;
        v931 = v662;
        v663 = v563[30];
        v928 = v563[31];
        v929 = v663;
        sub_1D67F5880(v654, v655);
        sub_1D67F58E4(v933, v661);
        v563[26] = v654;
        v563[27] = v655;
        v563[28] = v656;
        v563[29] = v657;
        v563[30] = v658;
        v563[31] = v659;
        *(&v945[1] + 1) = type metadata accessor for FeedWebEmbed(0);
        *&v945[2] = sub_1D6D098EC(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed, &protocol conformance descriptor for FeedWebEmbed);
        v576 = __swift_allocate_boxed_opaque_existential_1(v945);
        v577 = v921;
        goto LABEL_264;
      }

      goto LABEL_236;
    case 3uLL:
      v241 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v242 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v242 == 255)
      {
        v909 = v88;
        v930 = v3;
        v931 = v86;
        *&v945[0] = *(v3 + 72);

        sub_1D69869F4(&unk_1F50F6D30);
        v490 = *(*&v945[0] + 16);
        if (v490)
        {
          v491 = 0;
          v492 = (*&v945[0] + 32);
          v493 = v946;
          do
          {
            v494 = *v492++;
            v495 = qword_1D7349118[v494];
            if ((v495 & ~v491) == 0)
            {
              v495 = 0;
            }

            v491 |= v495;
            --v490;
          }

          while (v490);
        }

        else
        {
          v491 = 0;
          v493 = v946;
        }

        v664 = *(v930 + 144);
        v946 = *(v930 + 136);
        v929 = v664;
        v665 = v493[4];
        v666 = v493[5];
        v667 = *v930;
        v668 = v493[2];
        v669 = v933;
        v670 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
        v671 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
        swift_beginAccess();
        v672 = v932;
        sub_1D6CFBBC4((v669 + v671), v670, 0, 0, v491, v946, v929, v665, v909, v666, v667, v668);
        if (v672)
        {
          goto LABEL_236;
        }

        v946 = 0;
        swift_endAccess();
        goto LABEL_226;
      }

      if ((v242 & 1) == 0)
      {
        goto LABEL_106;
      }

      v909 = v88;
      v931 = v86;
      v94 = *v241;
      v93 = v241[1];
      v243 = v241[4];
      v928 = v241[5];
      v929 = v243;
      *&v945[0] = *(v3 + 72);

      sub_1D69869F4(&unk_1F50F6D30);
      sub_1D6FA2770(*&v945[0], v944);

      v244 = *(v3 + 144);
      v926 = *(v3 + 136);
      v927 = *&v944[0];
      v930 = v3;
      v245 = *v3;
      v246 = v946[2];
      v247 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
      v248 = v933;
      swift_beginAccess();
      v249 = *(v248 + v247);
      if (*(v249 + 16))
      {
        v250 = sub_1D5B69D90(v94, v93);
        if (v251)
        {
          v252 = *(*(v249 + 56) + 8 * v250);
          swift_endAccess();
          v253 = *(v252 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
          v254 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
          swift_beginAccess();

          v255 = v932;
          sub_1D6CFBBC4((v252 + v254), v253, 0, 0, v927, v926, v244, v929, v77, v928, v245, v246);
          if (v255)
          {
            goto LABEL_7;
          }

          v946 = 0;
          swift_endAccess();

          sub_1D6D0A058(v77, v909, sub_1D6D0945C);
LABEL_226:
          v673 = v931;
          v674 = v909;

          v563 = v930;
          sub_1D5B886D0(v675);

          sub_1D6985C44(v676);
          v677 = (v674 + *(v673 + 9));
          v678 = *v677;
          v679 = v677[1];
          v680 = v677[2];
          v681 = v677[3];
          v682 = v677[4];
          v683 = v677[5];
          v684 = v563[26];
          v685 = v563[27];
          v686 = v563[29];
          v932 = v563[28];
          v933 = v684;
          v931 = v686;
          v687 = v563[30];
          v928 = v563[31];
          v929 = v687;
          sub_1D67F5880(v678, v679);
          sub_1D67F58E4(v933, v685);
          v563[26] = v678;
          v563[27] = v679;
          v563[28] = v680;
          v563[29] = v681;
          v563[30] = v682;
          v563[31] = v683;
          *(&v945[1] + 1) = type metadata accessor for FeedHeadline(0);
          *&v945[2] = sub_1D6D098EC(&qword_1EDF34AD0, type metadata accessor for FeedHeadline, &protocol conformance descriptor for FeedHeadline);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v945);
          v577 = v909;
LABEL_257:
          sub_1D6D09934(v577, boxed_opaque_existential_1, type metadata accessor for FeedHeadline);
          v832 = sub_1D6D0945C;
          goto LABEL_265;
        }
      }

      goto LABEL_107;
    case 4uLL:
      v148 = v946;
      v149 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v150 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v150 != 255)
      {
        if ((v150 & 1) == 0)
        {
          goto LABEL_106;
        }

        v94 = *v149;
        v93 = v149[1];
        v152 = v149[4];
        v151 = v149[5];
        v931 = v152;
        v929 = v151;
        *&v944[0] = *(v3 + 72);

        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        sub_1D6FA2770(*&v944[0], v934);

        v928 = v934[0];
        v153 = *(v3 + 136);
        v154 = *(v3 + 144);
        v930 = v3;
        v155 = *v3;
        v156 = v148[2];
        v157 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v158 = v933;
        swift_beginAccess();
        v159 = *(v158 + v157);
        if (*(v159 + 16))
        {
          v160 = sub_1D5B69D90(v94, v93);
          if (v161)
          {
            v162 = *(*(v159 + 56) + 8 * v160);
            swift_endAccess();
            v163 = *(v162 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
            v164 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
            swift_beginAccess();

            v165 = v932;
            sub_1D6CF4AD0((v162 + v164), v163, 0, 0, v928, v153, v154, v931, v944, v929, v155, v156);
            if (v165)
            {
              goto LABEL_7;
            }

            v946 = 0;
            swift_endAccess();

            v945[10] = v944[10];
            v945[11] = v944[11];
            v945[12] = v944[12];
            *&v945[13] = *&v944[13];
            v945[6] = v944[6];
            v945[7] = v944[7];
            v945[8] = v944[8];
            v945[9] = v944[9];
            v945[2] = v944[2];
            v945[3] = v944[3];
            v945[4] = v944[4];
            v945[5] = v944[5];
            v945[0] = v944[0];
            v945[1] = v944[1];
            goto LABEL_209;
          }
        }

        goto LABEL_107;
      }

      v930 = v3;
      *&v944[0] = *(v3 + 72);

      sub_1D69869F4(MEMORY[0x1E69E7CC0]);
      v443 = *(*&v944[0] + 16);
      if (v443)
      {
        v444 = 0;
        v445 = (*&v944[0] + 32);
        do
        {
          v446 = *v445++;
          v447 = qword_1D7349118[v446];
          if ((v447 & ~v444) == 0)
          {
            v447 = 0;
          }

          v444 |= v447;
          --v443;
        }

        while (v443);
      }

      else
      {
        v444 = 0;
      }

      v578 = *(v930 + 144);
      v931 = *(v930 + 136);
      v929 = v578;
      v579 = v148[4];
      v580 = v148[5];
      v581 = *v930;
      v582 = v148[2];
      v583 = v933;
      v584 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v585 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v586 = v932;
      sub_1D6CF4AD0((v583 + v585), v584, 0, 0, v444, v931, v929, v579, v945, v580, v581, v582);
      if (!v586)
      {
        v946 = 0;
        swift_endAccess();
LABEL_209:

        v563 = v930;
        sub_1D5B886D0(v587);

        sub_1D6985C44(v588);
        v589 = *(&v945[10] + 1);
        v590 = v945[11];
        v591 = v945[12];
        v592 = *&v945[13];
        v593 = v563[26];
        v594 = v563[27];
        v595 = v563[29];
        v932 = v563[28];
        v933 = v593;
        v931 = v595;
        v596 = v563[30];
        v928 = v563[31];
        v929 = v596;
        sub_1D67F5880(*(&v945[10] + 1), *&v945[11]);
        sub_1D67F58E4(v933, v594);
        v563[26] = v589;
        *(v563 + 27) = v590;
        *(v563 + 29) = v591;
        v563[31] = v592;
        v597 = &type metadata for FeedTag;
        *(&v944[1] + 1) = &type metadata for FeedTag;
        *&v944[2] = sub_1D5EE5BA8();
        *&v944[0] = swift_allocObject();
        sub_1D5EE5AF8(v945, *&v944[0] + 16);
        v598 = &unk_1EDF0E100;
        goto LABEL_214;
      }

      goto LABEL_236;
    case 5uLL:
      v295 = v946;
      v296 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v297 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v297 != 255)
      {
        if ((v297 & 1) == 0)
        {
          goto LABEL_106;
        }

        v299 = *v296;
        v298 = v296[1];
        v300 = v296[4];
        v928 = v296[5];
        v929 = v300;
        *&v945[0] = *(v3 + 72);

        sub_1D69869F4(&unk_1F50F6D58);
        sub_1D6FA2770(*&v945[0], v944);

        v926 = *(v3 + 136);
        v927 = *&v944[0];
        v301 = v295;
        v302 = *(v3 + 144);
        v930 = v3;
        v303 = *v3;
        v304 = v301[2];
        v305 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v306 = v933;
        swift_beginAccess();
        v307 = *(v306 + v305);
        if (!*(v307 + 16) || (v308 = sub_1D5B69D90(v299, v298), (v309 & 1) == 0))
        {
          swift_endAccess();
          type metadata accessor for FormatLayoutError(0);
          sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          *v551 = v299;
          goto LABEL_201;
        }

        v310 = *(*(v307 + 56) + 8 * v308);
        swift_endAccess();
        v311 = *(v310 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
        v312 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
        swift_beginAccess();

        v313 = v932;
        sub_1D6CF0260((v310 + v312), v311, 0, 0, v927, v926, v302, v929, v63, v928, v303, v304);
        if (v313)
        {
          swift_endAccess();
          goto LABEL_105;
        }

        v946 = 0;
        swift_endAccess();

        v759 = v922;
        sub_1D6D0A058(v63, v922, sub_1D6D09428);
        goto LABEL_259;
      }

      v930 = v3;
      *&v945[0] = *(v3 + 72);

      sub_1D69869F4(&unk_1F50F6D58);
      v511 = *(*&v945[0] + 16);
      if (v511)
      {
        v512 = 0;
        v513 = (*&v945[0] + 32);
        do
        {
          v514 = *v513++;
          v515 = qword_1D7349118[v514];
          if ((v515 & ~v512) == 0)
          {
            v515 = 0;
          }

          v512 |= v515;
          --v511;
        }

        while (v511);
      }

      else
      {
        v512 = 0;
      }

      v751 = *(v930 + 136);
      v928 = *(v930 + 144);
      v929 = v751;
      v752 = v295[4];
      v753 = v295[5];
      v754 = *v930;
      v755 = v295[2];
      v756 = v933;
      v757 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v758 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v895 = v753;
      v759 = v922;
      v760 = v932;
      sub_1D6CF0260((v756 + v758), v757, 0, 0, v512, v929, v928, v752, v922, v895, v754, v755);
      if (!v760)
      {
        v946 = 0;
        swift_endAccess();
LABEL_259:
        v833 = v931;

        v563 = v930;
        sub_1D5B886D0(v834);

        sub_1D6985C44(v835);
        v836 = (v759 + *(v833 + 9));
        v837 = *v836;
        v838 = v836[1];
        v839 = v836[2];
        v840 = v836[3];
        v841 = v836[4];
        v842 = v836[5];
        v843 = v563[26];
        v844 = v563[27];
        v845 = v563[29];
        v932 = v563[28];
        v933 = v843;
        v931 = v845;
        v846 = v563[30];
        v928 = v563[31];
        v929 = v846;
        sub_1D67F5880(v837, v838);
        sub_1D67F58E4(v933, v844);
        v563[26] = v837;
        v563[27] = v838;
        v563[28] = v839;
        v563[29] = v840;
        v563[30] = v841;
        v563[31] = v842;
        *(&v945[1] + 1) = type metadata accessor for FeedWebEmbed(0);
        *&v945[2] = sub_1D6D098EC(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed, &protocol conformance descriptor for FeedWebEmbed);
        v576 = __swift_allocate_boxed_opaque_existential_1(v945);
        v577 = v922;
        goto LABEL_264;
      }

      goto LABEL_236;
    case 6uLL:
      v332 = v946;
      v333 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v334 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v334 != 255)
      {
        if ((v334 & 1) == 0)
        {
          goto LABEL_106;
        }

        v94 = *v333;
        v93 = v333[1];
        v335 = v333[4];
        v929 = v333[5];
        *&v945[0] = *(v3 + 72);

        sub_1D69869F4(&unk_1F50F6D80);
        sub_1D6FA2770(*&v945[0], v944);

        v927 = *(v3 + 136);
        v928 = *&v944[0];
        v336 = v332;
        v337 = *(v3 + 144);
        v930 = v3;
        v338 = *v3;
        v339 = v336[2];
        v340 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v341 = v933;
        swift_beginAccess();
        v342 = *(v341 + v340);
        if (*(v342 + 16))
        {
          v343 = sub_1D5B69D90(v94, v93);
          if (v344)
          {
            v345 = *(*(v342 + 56) + 8 * v343);
            swift_endAccess();
            v346 = *(v345 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
            v347 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
            swift_beginAccess();

            v903 = v338;
            v348 = v910;
            v349 = v932;
            sub_1D6CF0260((v345 + v347), v346, 0, 0, v928, v927, v337, v335, v910, v929, v903, v339);
            if (v349)
            {
              goto LABEL_7;
            }

            v946 = 0;
            swift_endAccess();

            v350 = v923;
            sub_1D6D0A058(v348, v923, sub_1D6D09428);
            goto LABEL_245;
          }
        }

        goto LABEL_107;
      }

      v930 = v3;
      *&v945[0] = *(v3 + 72);

      sub_1D69869F4(&unk_1F50F6D80);
      v526 = *(*&v945[0] + 16);
      if (v526)
      {
        v527 = 0;
        v528 = (*&v945[0] + 32);
        do
        {
          v529 = *v528++;
          v530 = qword_1D7349118[v529];
          if ((v530 & ~v527) == 0)
          {
            v530 = 0;
          }

          v527 |= v530;
          --v526;
        }

        while (v526);
      }

      else
      {
        v527 = 0;
      }

      v761 = *(v930 + 136);
      v928 = *(v930 + 144);
      v929 = v761;
      v762 = v332[4];
      v763 = v332[5];
      v764 = *v930;
      v765 = v332[2];
      v766 = v933;
      v767 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v768 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v896 = v763;
      v350 = v923;
      v769 = v932;
      sub_1D6CF0260((v766 + v768), v767, 0, 0, v527, v929, v928, v762, v923, v896, v764, v765);
      if (!v769)
      {
        v946 = 0;
        swift_endAccess();
LABEL_245:
        v770 = v931;

        v563 = v930;
        sub_1D5B886D0(v771);

        sub_1D6985C44(v772);
        v773 = (v350 + *(v770 + 9));
        v774 = *v773;
        v775 = v773[1];
        v776 = v773[2];
        v777 = v773[3];
        v778 = v773[4];
        v779 = v773[5];
        v780 = v563[26];
        v781 = v563[27];
        v782 = v563[29];
        v932 = v563[28];
        v933 = v780;
        v931 = v782;
        v783 = v563[30];
        v928 = v563[31];
        v929 = v783;
        sub_1D67F5880(v774, v775);
        sub_1D67F58E4(v933, v781);
        v563[26] = v774;
        v563[27] = v775;
        v563[28] = v776;
        v563[29] = v777;
        v563[30] = v778;
        v563[31] = v779;
        *(&v945[1] + 1) = type metadata accessor for FeedWebEmbed(0);
        *&v945[2] = sub_1D6D098EC(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed, &protocol conformance descriptor for FeedWebEmbed);
        v576 = __swift_allocate_boxed_opaque_existential_1(v945);
        v577 = v923;
        goto LABEL_264;
      }

      goto LABEL_236;
    case 7uLL:
      v256 = v946;
      v257 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v258 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v258 != 255)
      {
        if ((v258 & 1) == 0)
        {
          goto LABEL_106;
        }

        v259 = *v257;
        v93 = v257[1];
        v260 = v257[4];
        v929 = v257[5];
        *&v945[0] = *(v3 + 72);

        sub_1D69869F4(&unk_1F50F6DA8);
        sub_1D6FA2770(*&v945[0], v944);

        v927 = *(v3 + 136);
        v928 = *&v944[0];
        v261 = v256;
        v262 = *(v3 + 144);
        v930 = v3;
        v263 = *v3;
        v264 = v261[2];
        v265 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v266 = v933;
        swift_beginAccess();
        v267 = *(v266 + v265);
        if (!*(v267 + 16) || (v268 = sub_1D5B69D90(v259, v93), (v269 & 1) == 0))
        {
          swift_endAccess();
          type metadata accessor for FormatLayoutError(0);
          sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          *v410 = v259;
          goto LABEL_108;
        }

        v270 = *(*(v267 + 56) + 8 * v268);
        swift_endAccess();
        v271 = *(v270 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
        v272 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
        swift_beginAccess();

        v273 = v260;
        v274 = v911;
        v275 = v932;
        sub_1D6CF0260((v270 + v272), v271, 0, 0, v928, v927, v262, v273, v911, v929, v263, v264);
        if (v275)
        {
          goto LABEL_7;
        }

        v946 = 0;
        swift_endAccess();

        v276 = v924;
        sub_1D6D0A058(v274, v924, sub_1D6D09428);
        goto LABEL_230;
      }

      v930 = v3;
      *&v945[0] = *(v3 + 72);

      sub_1D69869F4(&unk_1F50F6DA8);
      v496 = *(*&v945[0] + 16);
      if (v496)
      {
        v497 = 0;
        v498 = (*&v945[0] + 32);
        do
        {
          v499 = *v498++;
          v500 = qword_1D7349118[v499];
          if ((v500 & ~v497) == 0)
          {
            v500 = 0;
          }

          v497 |= v500;
          --v496;
        }

        while (v496);
      }

      else
      {
        v497 = 0;
      }

      v689 = *(v930 + 136);
      v928 = *(v930 + 144);
      v929 = v689;
      v690 = v256[4];
      v691 = v256[5];
      v692 = *v930;
      v693 = v256[2];
      v694 = v933;
      v695 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v696 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v894 = v691;
      v276 = v924;
      v697 = v932;
      sub_1D6CF0260((v694 + v696), v695, 0, 0, v497, v929, v928, v690, v924, v894, v692, v693);
      if (!v697)
      {
        v946 = 0;
        swift_endAccess();
LABEL_230:
        v698 = v931;

        v563 = v930;
        sub_1D5B886D0(v699);

        sub_1D6985C44(v700);
        v701 = (v276 + *(v698 + 9));
        v702 = *v701;
        v703 = v701[1];
        v704 = v701[2];
        v705 = v701[3];
        v706 = v701[4];
        v707 = v701[5];
        v708 = v563[26];
        v709 = v563[27];
        v710 = v563[29];
        v932 = v563[28];
        v933 = v708;
        v931 = v710;
        v711 = v563[30];
        v928 = v563[31];
        v929 = v711;
        sub_1D67F5880(v702, v703);
        sub_1D67F58E4(v933, v709);
        v563[26] = v702;
        v563[27] = v703;
        v563[28] = v704;
        v563[29] = v705;
        v563[30] = v706;
        v563[31] = v707;
        *(&v945[1] + 1) = type metadata accessor for FeedWebEmbed(0);
        *&v945[2] = sub_1D6D098EC(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed, &protocol conformance descriptor for FeedWebEmbed);
        v576 = __swift_allocate_boxed_opaque_existential_1(v945);
        v577 = v924;
        goto LABEL_264;
      }

      goto LABEL_236;
    case 8uLL:
      v370 = v946;
      v371 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v372 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v372 != 255)
      {
        if ((v372 & 1) == 0)
        {
          goto LABEL_106;
        }

        v94 = *v371;
        v93 = v371[1];
        v373 = v371[4];
        v928 = v371[5];
        v929 = v373;
        *&v945[0] = *(v3 + 72);

        sub_1D69869F4(&unk_1F50F6DD0);
        sub_1D6FA2770(*&v945[0], v944);

        v927 = *&v944[0];
        v374 = *(v3 + 136);
        v375 = *(v3 + 144);
        v930 = v3;
        v376 = *v3;
        v377 = v370[2];
        v378 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v379 = v933;
        swift_beginAccess();
        v380 = *(v379 + v378);
        if (*(v380 + 16))
        {
          v381 = sub_1D5B69D90(v94, v93);
          if (v382)
          {
            v383 = *(*(v380 + 56) + 8 * v381);
            swift_endAccess();
            v384 = *(v383 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
            v385 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
            swift_beginAccess();

            v905 = v376;
            v386 = v912;
            v387 = v932;
            sub_1D6CF0260((v383 + v385), v384, 0, 0, v927, v374, v375, v929, v912, v928, v905, v377);
            if (v387)
            {
              goto LABEL_7;
            }

            v946 = 0;
            swift_endAccess();

            v815 = v925;
            sub_1D6D0A058(v386, v925, sub_1D6D09428);
            goto LABEL_263;
          }
        }

        goto LABEL_107;
      }

      v930 = v3;
      *&v945[0] = *(v3 + 72);

      sub_1D69869F4(&unk_1F50F6DD0);
      v536 = *(*&v945[0] + 16);
      if (v536)
      {
        v537 = 0;
        v538 = (*&v945[0] + 32);
        do
        {
          v539 = *v538++;
          v540 = qword_1D7349118[v539];
          if ((v540 & ~v537) == 0)
          {
            v540 = 0;
          }

          v537 |= v540;
          --v536;
        }

        while (v536);
      }

      else
      {
        v537 = 0;
      }

      v807 = *(v930 + 136);
      v928 = *(v930 + 144);
      v929 = v807;
      v808 = v370[4];
      v809 = v370[5];
      v810 = *v930;
      v811 = v370[2];
      v812 = v933;
      v813 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v814 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v898 = v809;
      v815 = v925;
      v816 = v932;
      sub_1D6CF0260((v812 + v814), v813, 0, 0, v537, v929, v928, v808, v925, v898, v810, v811);
      if (!v816)
      {
        v946 = 0;
        swift_endAccess();
LABEL_263:
        v861 = v931;

        v563 = v930;
        sub_1D5B886D0(v862);

        sub_1D6985C44(v863);
        v864 = (v815 + *(v861 + 9));
        v865 = *v864;
        v866 = v864[1];
        v867 = v864[2];
        v868 = v864[3];
        v869 = v864[4];
        v870 = v864[5];
        v871 = v563[26];
        v872 = v563[27];
        v873 = v563[29];
        v932 = v563[28];
        v933 = v871;
        v931 = v873;
        v874 = v563[30];
        v928 = v563[31];
        v929 = v874;
        sub_1D67F5880(v865, v866);
        sub_1D67F58E4(v933, v872);
        v563[26] = v865;
        v563[27] = v866;
        v563[28] = v867;
        v563[29] = v868;
        v563[30] = v869;
        v563[31] = v870;
        *(&v945[1] + 1) = type metadata accessor for FeedWebEmbed(0);
        *&v945[2] = sub_1D6D098EC(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed, &protocol conformance descriptor for FeedWebEmbed);
        v576 = __swift_allocate_boxed_opaque_existential_1(v945);
        v577 = v925;
        goto LABEL_264;
      }

      goto LABEL_236;
    case 9uLL:
      v184 = v946;
      v185 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v186 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v186 != 255)
      {
        if ((v186 & 1) == 0)
        {
          goto LABEL_106;
        }

        v94 = *v185;
        v93 = v185[1];
        v187 = v185[4];
        v928 = v185[5];
        v929 = v187;
        *&v945[0] = *(v3 + 72);

        sub_1D69869F4(&unk_1F50F6DF8);
        sub_1D6FA2770(*&v945[0], v944);

        v927 = *&v944[0];
        v188 = *(v3 + 136);
        v189 = *(v3 + 144);
        v930 = v3;
        v190 = *v3;
        v191 = v184[2];
        v192 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v193 = v933;
        swift_beginAccess();
        v194 = *(v193 + v192);
        if (*(v194 + 16))
        {
          v195 = sub_1D5B69D90(v94, v93);
          if (v196)
          {
            v197 = *(*(v194 + 56) + 8 * v195);
            swift_endAccess();
            v198 = *(v197 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
            v199 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
            swift_beginAccess();

            v901 = v190;
            v200 = v913;
            v201 = v932;
            sub_1D6CF0260((v197 + v199), v198, 0, 0, v927, v188, v189, v929, v913, v928, v901, v191);
            if (v201)
            {
              goto LABEL_7;
            }

            v946 = 0;
            swift_endAccess();

            v202 = v926;
            sub_1D6D0A058(v200, v926, sub_1D6D09428);
            goto LABEL_218;
          }
        }

        goto LABEL_107;
      }

      v930 = v3;
      *&v945[0] = *(v3 + 72);

      sub_1D69869F4(&unk_1F50F6DF8);
      v453 = *(*&v945[0] + 16);
      if (v453)
      {
        v454 = 0;
        v455 = (*&v945[0] + 32);
        do
        {
          v456 = *v455++;
          v457 = qword_1D7349118[v456];
          if ((v457 & ~v454) == 0)
          {
            v457 = 0;
          }

          v454 |= v457;
          --v453;
        }

        while (v453);
      }

      else
      {
        v454 = 0;
      }

      v618 = *(v930 + 136);
      v928 = *(v930 + 144);
      v929 = v618;
      v619 = v184[4];
      v620 = v184[5];
      v621 = *v930;
      v622 = v184[2];
      v623 = v933;
      v624 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v625 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v892 = v620;
      v202 = v926;
      v626 = v932;
      sub_1D6CF0260((v623 + v625), v624, 0, 0, v454, v929, v928, v619, v926, v892, v621, v622);
      if (!v626)
      {
        v946 = 0;
        swift_endAccess();
LABEL_218:
        v627 = v931;

        v563 = v930;
        sub_1D5B886D0(v628);

        sub_1D6985C44(v629);
        v630 = (v202 + *(v627 + 9));
        v631 = *v630;
        v632 = v630[1];
        v633 = v630[2];
        v634 = v630[3];
        v635 = v630[4];
        v636 = v630[5];
        v637 = v563[26];
        v638 = v563[27];
        v639 = v563[29];
        v932 = v563[28];
        v933 = v637;
        v931 = v639;
        v640 = v563[30];
        v928 = v563[31];
        v929 = v640;
        sub_1D67F5880(v631, v632);
        sub_1D67F58E4(v933, v638);
        v563[26] = v631;
        v563[27] = v632;
        v563[28] = v633;
        v563[29] = v634;
        v563[30] = v635;
        v563[31] = v636;
        *(&v945[1] + 1) = type metadata accessor for FeedWebEmbed(0);
        *&v945[2] = sub_1D6D098EC(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed, &protocol conformance descriptor for FeedWebEmbed);
        v576 = __swift_allocate_boxed_opaque_existential_1(v945);
        v577 = v926;
        goto LABEL_264;
      }

      goto LABEL_236;
    case 0xAuLL:
      v351 = v946;
      v352 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v353 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v353 != 255)
      {
        if ((v353 & 1) == 0)
        {
          goto LABEL_106;
        }

        v94 = *v352;
        v93 = v352[1];
        v354 = v352[4];
        v928 = v352[5];
        v929 = v354;
        *&v945[0] = *(v3 + 72);

        sub_1D69869F4(&unk_1F50F6E20);
        sub_1D6FA2770(*&v945[0], v944);

        v926 = *&v944[0];
        v355 = *(v3 + 136);
        v356 = *(v3 + 144);
        v930 = v3;
        v357 = *v3;
        v358 = v351[2];
        v359 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v360 = v933;
        swift_beginAccess();
        v361 = *(v360 + v359);
        if (*(v361 + 16))
        {
          v362 = sub_1D5B69D90(v94, v93);
          if (v363)
          {
            v364 = *(*(v361 + 56) + 8 * v362);
            swift_endAccess();
            v365 = *(v364 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
            v366 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
            swift_beginAccess();

            v904 = v357;
            v367 = v914;
            v368 = v932;
            sub_1D6CF0260((v364 + v366), v365, 0, 0, v926, v355, v356, v929, v914, v928, v904, v358);
            if (v368)
            {
              goto LABEL_7;
            }

            v946 = 0;
            swift_endAccess();

            v369 = v927;
            sub_1D6D0A058(v367, v927, sub_1D6D09428);
            goto LABEL_249;
          }
        }

        goto LABEL_107;
      }

      v930 = v3;
      *&v945[0] = *(v3 + 72);

      sub_1D69869F4(&unk_1F50F6E20);
      v531 = *(*&v945[0] + 16);
      if (v531)
      {
        v532 = 0;
        v533 = (*&v945[0] + 32);
        do
        {
          v534 = *v533++;
          v535 = qword_1D7349118[v534];
          if ((v535 & ~v532) == 0)
          {
            v535 = 0;
          }

          v532 |= v535;
          --v531;
        }

        while (v531);
      }

      else
      {
        v532 = 0;
      }

      v784 = *(v930 + 136);
      v928 = *(v930 + 144);
      v929 = v784;
      v785 = v351[4];
      v786 = v351[5];
      v787 = *v930;
      v788 = v351[2];
      v789 = v933;
      v790 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v791 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v897 = v786;
      v369 = v927;
      v792 = v932;
      sub_1D6CF0260((v789 + v791), v790, 0, 0, v532, v929, v928, v785, v927, v897, v787, v788);
      if (!v792)
      {
        v946 = 0;
        swift_endAccess();
LABEL_249:
        v793 = v931;

        v563 = v930;
        sub_1D5B886D0(v794);

        sub_1D6985C44(v795);
        v796 = (v369 + *(v793 + 9));
        v797 = *v796;
        v798 = v796[1];
        v799 = v796[2];
        v800 = v796[3];
        v801 = v796[4];
        v802 = v796[5];
        v803 = v563[26];
        v804 = v563[27];
        v805 = v563[29];
        v932 = v563[28];
        v933 = v803;
        v931 = v805;
        v806 = v563[30];
        v928 = v563[31];
        v929 = v806;
        sub_1D67F5880(v797, v798);
        sub_1D67F58E4(v933, v804);
        v563[26] = v797;
        v563[27] = v798;
        v563[28] = v799;
        v563[29] = v800;
        v563[30] = v801;
        v563[31] = v802;
        *(&v945[1] + 1) = type metadata accessor for FeedWebEmbed(0);
        *&v945[2] = sub_1D6D098EC(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed, &protocol conformance descriptor for FeedWebEmbed);
        v576 = __swift_allocate_boxed_opaque_existential_1(v945);
        v577 = v927;
        goto LABEL_264;
      }

LABEL_236:
      swift_endAccess();
      return;
    case 0xBuLL:
      v129 = v946;
      v130 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v131 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v131 == 255)
      {
        v930 = v3;
        *&v945[0] = *(v3 + 72);

        sub_1D69869F4(&unk_1F50F6E48);
        v438 = *(*&v945[0] + 16);
        if (v438)
        {
          v439 = 0;
          v440 = (*&v945[0] + 32);
          do
          {
            v441 = *v440++;
            v442 = qword_1D7349118[v441];
            if ((v442 & ~v439) == 0)
            {
              v442 = 0;
            }

            v439 |= v442;
            --v438;
          }

          while (v438);
        }

        else
        {
          v439 = 0;
        }

        v552 = *(v930 + 136);
        v927 = *(v930 + 144);
        v928 = v552;
        v553 = v129[4];
        v554 = v129[5];
        v555 = *v930;
        v556 = v129[2];
        v557 = v933;
        v558 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
        v559 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
        swift_beginAccess();
        v891 = v554;
        v147 = v929;
        v560 = v932;
        sub_1D6CF0260((v557 + v559), v558, 0, 0, v439, v928, v927, v553, v929, v891, v555, v556);
        if (v560)
        {
          goto LABEL_236;
        }

        v946 = 0;
        swift_endAccess();
        goto LABEL_205;
      }

      if ((v131 & 1) == 0)
      {
        goto LABEL_106;
      }

      v94 = *v130;
      v93 = v130[1];
      v132 = v130[4];
      v927 = v130[5];
      v928 = v132;
      *&v945[0] = *(v3 + 72);

      sub_1D69869F4(&unk_1F50F6E48);
      sub_1D6FA2770(*&v945[0], v944);

      v926 = *&v944[0];
      v133 = *(v3 + 136);
      v134 = *(v3 + 144);
      v930 = v3;
      v135 = *v3;
      v136 = v129[2];
      v137 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
      v138 = v933;
      swift_beginAccess();
      v139 = *(v138 + v137);
      if (*(v139 + 16))
      {
        v140 = sub_1D5B69D90(v94, v93);
        if (v141)
        {
          v142 = *(*(v139 + 56) + 8 * v140);
          swift_endAccess();
          v143 = *(v142 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
          v144 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
          swift_beginAccess();

          v900 = v135;
          v145 = v915;
          v146 = v932;
          sub_1D6CF0260((v142 + v144), v143, 0, 0, v926, v133, v134, v928, v915, v927, v900, v136);
          if (v146)
          {
            goto LABEL_7;
          }

          v946 = 0;
          swift_endAccess();

          v147 = v929;
          sub_1D6D0A058(v145, v929, sub_1D6D09428);
LABEL_205:
          v561 = v931;

          v563 = v930;
          sub_1D5B886D0(v562);

          sub_1D6985C44(v564);
          v565 = &v147[*(v561 + 9)];
          v566 = *v565;
          v567 = v565[1];
          v568 = v565[2];
          v569 = v565[3];
          v570 = v565[4];
          v571 = v565[5];
          v572 = v563[26];
          v573 = v563[27];
          v574 = v563[29];
          v932 = v563[28];
          v933 = v572;
          v931 = v574;
          v575 = v563[30];
          v927 = v563[31];
          v928 = v575;
          sub_1D67F5880(v566, v567);
          sub_1D67F58E4(v933, v573);
          v563[26] = v566;
          v563[27] = v567;
          v563[28] = v568;
          v563[29] = v569;
          v563[30] = v570;
          v563[31] = v571;
          *(&v945[1] + 1) = type metadata accessor for FeedWebEmbed(0);
          *&v945[2] = sub_1D6D098EC(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed, &protocol conformance descriptor for FeedWebEmbed);
          v576 = __swift_allocate_boxed_opaque_existential_1(v945);
          v577 = v929;
LABEL_264:
          sub_1D6D09934(v577, v576, type metadata accessor for FeedWebEmbed);
          v832 = sub_1D6D09428;
          goto LABEL_265;
        }
      }

      goto LABEL_107;
    case 0xCuLL:
      v166 = v946;
      v167 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v168 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v168 == 255)
      {
        v930 = v3;
        *&v944[0] = *(v3 + 72);

        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        v448 = *(*&v944[0] + 16);
        if (v448)
        {
          v449 = 0;
          v450 = (*&v944[0] + 32);
          do
          {
            v451 = *v450++;
            v452 = qword_1D7349118[v451];
            if ((v452 & ~v449) == 0)
            {
              v452 = 0;
            }

            v449 |= v452;
            --v448;
          }

          while (v448);
        }

        else
        {
          v449 = 0;
        }

        v599 = *(v930 + 144);
        v931 = *(v930 + 136);
        v929 = v599;
        v600 = v166[4];
        v601 = v166[5];
        v602 = *v930;
        v603 = v166[2];
        v604 = v933;
        v605 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
        v606 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
        swift_beginAccess();
        v607 = v932;
        sub_1D6CECE98((v604 + v606), v605, 0, 0, v449, v931, v929, v600, v945, v601, v602, v603);
        if (v607)
        {
          goto LABEL_236;
        }

        v946 = 0;
        swift_endAccess();
        goto LABEL_213;
      }

      if ((v168 & 1) == 0)
      {
        goto LABEL_106;
      }

      v94 = *v167;
      v93 = v167[1];
      v170 = v167[4];
      v169 = v167[5];
      v931 = v170;
      v929 = v169;
      *&v944[0] = *(v3 + 72);

      sub_1D69869F4(MEMORY[0x1E69E7CC0]);
      sub_1D6FA2770(*&v944[0], v934);

      v928 = v934[0];
      v171 = *(v3 + 136);
      v172 = *(v3 + 144);
      v930 = v3;
      v173 = *v3;
      v174 = v166[2];
      v175 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
      v176 = v933;
      swift_beginAccess();
      v177 = *(v176 + v175);
      if (*(v177 + 16))
      {
        v178 = sub_1D5B69D90(v94, v93);
        if (v179)
        {
          v180 = *(*(v177 + 56) + 8 * v178);
          swift_endAccess();
          v181 = *(v180 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
          v182 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
          swift_beginAccess();

          v183 = v932;
          sub_1D6CECE98((v180 + v182), v181, 0, 0, v928, v171, v172, v931, v944, v929, v173, v174);
          if (v183)
          {
            goto LABEL_7;
          }

          v946 = 0;
          swift_endAccess();

          memcpy(v945, v944, 0x110uLL);
LABEL_213:

          v563 = v930;
          sub_1D5B886D0(v608);

          sub_1D6985C44(v609);
          v611 = *(&v945[14] + 1);
          v610 = *&v945[14];
          v612 = v945[15];
          v613 = v945[16];
          v614 = v563[26];
          v615 = v563[27];
          v616 = v563[29];
          v932 = v563[28];
          v933 = v614;
          v931 = v616;
          v617 = v563[30];
          v928 = v563[31];
          v929 = v617;
          sub_1D67F5880(*&v945[14], *(&v945[14] + 1));
          sub_1D67F58E4(v933, v615);
          v563[26] = v610;
          v563[27] = v611;
          *(v563 + 14) = v612;
          *(v563 + 15) = v613;
          v597 = &type metadata for FeedPuzzle;
          *(&v944[1] + 1) = &type metadata for FeedPuzzle;
          *&v944[2] = sub_1D63071A0();
          *&v944[0] = swift_allocObject();
          sub_1D5F2DEAC(v945, *&v944[0] + 16);
          v598 = &unk_1EDF0E0F8;
LABEL_214:
          sub_1D6D09524(v945, v598, v597, type metadata accessor for FormatNodeBindingItem);
          v488 = v944;
          goto LABEL_266;
        }
      }

      goto LABEL_107;
    case 0xDuLL:
      v314 = v946;
      v315 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v316 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v316 == 255)
      {
        *&v944[0] = *(v3 + 72);

        v516 = v3;
        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        sub_1D6FA2770(*&v944[0], &v936);

        v517 = *(v3 + 144);
        v930 = *(v3 + 136);
        v931 = v936;
        v929 = v517;
        v518 = v314[4];
        v519 = v314[5];
        v520 = *v3;
        v521 = v314[2];
        v522 = v933;
        v523 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
        v524 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
        swift_beginAccess();
        v525 = v932;
        sub_1D6CE97DC((v522 + v524), v523, 0, 0, v931, v930, v929, v518, v945, v519, v520, v521);
        if (v525)
        {
          goto LABEL_236;
        }

        v946 = 0;
        v930 = v516;
        swift_endAccess();
        goto LABEL_261;
      }

      if ((v316 & 1) == 0)
      {
        goto LABEL_106;
      }

      v94 = *v315;
      v93 = v315[1];
      v318 = v315[4];
      v317 = v315[5];
      v931 = v318;
      v929 = v317;
      *&v944[0] = *(v3 + 72);

      sub_1D69869F4(MEMORY[0x1E69E7CC0]);
      sub_1D6FA2770(*&v944[0], v934);

      v928 = v934[0];
      v319 = *(v3 + 136);
      v320 = *(v3 + 144);
      v930 = v3;
      v321 = *v3;
      v322 = v314[2];
      v323 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
      v324 = v933;
      swift_beginAccess();
      v325 = *(v324 + v323);
      if (*(v325 + 16))
      {
        v326 = sub_1D5B69D90(v94, v93);
        if (v327)
        {
          v328 = *(*(v325 + 56) + 8 * v326);
          swift_endAccess();
          v329 = *(v328 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
          v330 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
          swift_beginAccess();

          v331 = v932;
          sub_1D6CE97DC((v328 + v330), v329, 0, 0, v928, v319, v320, v931, v944, v929, v321, v322);
          if (v331)
          {
            goto LABEL_7;
          }

          v946 = 0;
          swift_endAccess();

          v945[4] = v944[4];
          v945[5] = v944[5];
          v945[6] = v944[6];
          v945[7] = v944[7];
          v945[0] = v944[0];
          v945[1] = v944[1];
          v945[2] = v944[2];
          v945[3] = v944[3];
LABEL_261:

          v848 = v930;
          sub_1D5B886D0(v847);

          sub_1D6985C44(v849);
          v850 = v945[5];
          v851 = v945[6];
          v852 = v945[7];
          v853 = v848[26];
          v854 = v848[27];
          v855 = v848[29];
          v932 = v848[28];
          v933 = v853;
          v931 = v855;
          v856 = v848[30];
          v928 = v848[31];
          v929 = v856;
          sub_1D67F5880(*&v945[5], *(&v945[5] + 1));
          sub_1D67F58E4(v933, v854);
          *(v848 + 13) = v850;
          *(v848 + 14) = v851;
          *(v848 + 15) = v852;
          v934[3] = &type metadata for FeedPuzzleType;
          v934[4] = sub_1D6307250();
          v857 = swift_allocObject();
          v934[0] = v857;
          v858 = v945[1];
          v936 = v945[0];
          v937 = v945[1];
          v859 = v945[2];
          v860 = v945[3];
          v938 = v945[2];
          v939 = v945[3];
          v857[1] = v945[0];
          v857[2] = v858;
          v857[3] = v859;
          v857[4] = v860;
          sub_1D63071F4(&v936, v944);
          sub_1D6D09490(v934, (v848 + 19));
          v944[4] = v945[4];
          v944[5] = v945[5];
          v944[6] = v945[6];
          v944[7] = v945[7];
          v944[0] = v945[0];
          v944[1] = v945[1];
          v944[2] = v945[2];
          v944[3] = v945[3];
          sub_1D6D09524(v944, &qword_1EC891EA8, &type metadata for FeedPuzzleType, type metadata accessor for FormatNodeBindingItem);
          return;
        }
      }

      goto LABEL_107;
    case 0xEuLL:
      v109 = v946;
      v110 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v111 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v111 == 255)
      {
        *&v945[0] = *(v3 + 72);

        v114 = v3;
        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        sub_1D6FA2770(*&v945[0], v944);

        v411 = *(v3 + 144);
        v930 = *(v3 + 136);
        v931 = *&v944[0];
        v929 = v411;
        v412 = v109[4];
        v413 = v109[5];
        v414 = *v3;
        v415 = v109[2];
        v416 = v933;
        v417 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
        v418 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
        swift_beginAccess();
        v419 = (v416 + v418);
        v128 = v928;
        v420 = v932;
        sub_1D6CE4CF8(v419, v417, 0, 0, v931, v930, v929, v412, v928, v413, v414, v415);
        if (v420)
        {
          goto LABEL_236;
        }

        v946 = 0;
        swift_endAccess();
        goto LABEL_111;
      }

      if ((v111 & 1) == 0)
      {
        goto LABEL_106;
      }

      v94 = *v110;
      v93 = v110[1];
      v112 = v110[4];
      v930 = v110[5];
      v931 = v112;
      *&v945[0] = *(v3 + 72);

      sub_1D69869F4(MEMORY[0x1E69E7CC0]);
      sub_1D6FA2770(*&v945[0], v944);

      v929 = *&v944[0];
      v113 = *(v3 + 144);
      v927 = *(v3 + 136);
      v114 = v3;
      v115 = *v3;
      v116 = v109[2];
      v117 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
      v118 = v933;
      swift_beginAccess();
      v119 = *(v118 + v117);
      if (*(v119 + 16))
      {
        v120 = sub_1D5B69D90(v94, v93);
        if (v121)
        {
          v122 = *(*(v119 + 56) + 8 * v120);
          swift_endAccess();
          v123 = *(v122 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
          v124 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
          swift_beginAccess();

          v899 = v115;
          v125 = v916;
          v126 = v932;
          sub_1D6CE4CF8((v122 + v124), v123, 0, 0, v929, v927, v113, v931, v916, v930, v899, v116);
          if (v126)
          {
            goto LABEL_7;
          }

          v946 = 0;
          swift_endAccess();

          v127 = v125;
          v128 = v928;
          sub_1D6D0A058(v127, v928, sub_1D6D093F4);
LABEL_111:
          v421 = v918;

          sub_1D5B886D0(v422);

          sub_1D6985C44(v423);
          v424 = (v128 + *(v421 + 36));
          v425 = *v424;
          v426 = v424[1];
          v427 = v424[2];
          v428 = v424[3];
          v430 = v424[4];
          v429 = v424[5];
          v431 = v114[26];
          v432 = v114[27];
          v433 = v114[29];
          v932 = v114[28];
          v933 = v431;
          v434 = v114[31];
          v930 = v114[30];
          v931 = v433;
          v929 = v434;
          sub_1D67F5880(v425, v426);
          sub_1D67F58E4(v933, v432);
          v114[26] = v425;
          v114[27] = v426;
          v114[28] = v427;
          v114[29] = v428;
          v114[30] = v430;
          v114[31] = v429;
          *(&v945[1] + 1) = type metadata accessor for FeedPuzzleStatistic(0);
          *&v945[2] = sub_1D6D098EC(&qword_1EC885960, type metadata accessor for FeedPuzzleStatistic, &protocol conformance descriptor for FeedPuzzleStatistic);
          v435 = __swift_allocate_boxed_opaque_existential_1(v945);
          v436 = v928;
          sub_1D6D09934(v928, v435, type metadata accessor for FeedPuzzleStatistic);
          v437 = sub_1D6D093F4;
          goto LABEL_145;
        }
      }

      goto LABEL_107;
    case 0xFuLL:
      v221 = v946;
      v222 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v223 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v223 == 255)
      {
        *&v945[0] = *(v3 + 72);

        v114 = v3;
        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        sub_1D6FA2770(*&v945[0], v944);

        v931 = *&v944[0];
        v463 = *(v3 + 136);
        v928 = *(v3 + 144);
        v929 = v463;
        v464 = v221[4];
        v465 = v221[5];
        v466 = *v3;
        v467 = v221[2];
        v468 = v933;
        v469 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
        v470 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
        swift_beginAccess();
        v471 = (v468 + v470);
        v240 = v930;
        v472 = v932;
        sub_1D6CE1A94(v471, v469, 0, 0, v931, v929, v928, v464, v930, v465, v466, v467);
        if (v472)
        {
          goto LABEL_236;
        }

        v946 = 0;
        swift_endAccess();
        goto LABEL_144;
      }

      if ((v223 & 1) == 0)
      {
        goto LABEL_106;
      }

      v94 = *v222;
      v93 = v222[1];
      v225 = v222[4];
      v224 = v222[5];
      v931 = v225;
      v929 = v224;
      *&v945[0] = *(v3 + 72);

      sub_1D69869F4(MEMORY[0x1E69E7CC0]);
      sub_1D6FA2770(*&v945[0], v944);

      v226 = *(v3 + 144);
      v927 = *(v3 + 136);
      v928 = *&v944[0];
      v114 = v3;
      v227 = *v3;
      v228 = v221[2];
      v229 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
      v230 = v933;
      swift_beginAccess();
      v231 = *(v230 + v229);
      if (*(v231 + 16))
      {
        v232 = sub_1D5B69D90(v94, v93);
        if (v233)
        {
          v234 = *(*(v231 + 56) + 8 * v232);
          swift_endAccess();
          v235 = *(v234 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
          v236 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
          swift_beginAccess();

          v902 = v227;
          v237 = v917;
          v238 = v932;
          sub_1D6CE1A94((v234 + v236), v235, 0, 0, v928, v927, v226, v931, v917, v929, v902, v228);
          if (v238)
          {
LABEL_7:
            swift_endAccess();

            return;
          }

          v946 = 0;
          swift_endAccess();

          v239 = v237;
          v240 = v930;
          sub_1D6D0A058(v239, v930, sub_1D6D0935C);
LABEL_144:
          v473 = v919;

          sub_1D5B886D0(v474);

          sub_1D6985C44(v475);
          v476 = (v240 + *(v473 + 36));
          v477 = *v476;
          v478 = v476[1];
          v479 = v476[2];
          v480 = v476[3];
          v482 = v476[4];
          v481 = v476[5];
          v483 = v114[26];
          v484 = v114[27];
          v485 = v114[29];
          v932 = v114[28];
          v933 = v483;
          v931 = v485;
          v486 = v114[30];
          v928 = v114[31];
          v929 = v486;
          sub_1D67F5880(v477, v478);
          sub_1D67F58E4(v933, v484);
          v114[26] = v477;
          v114[27] = v478;
          v114[28] = v479;
          v114[29] = v480;
          v114[30] = v482;
          v114[31] = v481;
          *(&v945[1] + 1) = type metadata accessor for FeedRecipe(0);
          *&v945[2] = sub_1D6D098EC(&qword_1EDF12E00, type metadata accessor for FeedRecipe, &protocol conformance descriptor for FeedRecipe);
          v487 = __swift_allocate_boxed_opaque_existential_1(v945);
          v436 = v930;
          sub_1D6D09934(v930, v487, type metadata accessor for FeedRecipe);
          v437 = sub_1D6D0935C;
LABEL_145:
          sub_1D6D0A444(v436, v437);
          v488 = v945;
          v489 = (v114 + 19);
          goto LABEL_267;
        }
      }

LABEL_107:
      swift_endAccess();
      type metadata accessor for FormatLayoutError(0);
      sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v410 = v94;
LABEL_108:
      v410[1] = v93;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    default:
      v907 = v11;
      v388 = *(v3 + 56);
      v389 = v946;
      v390 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v391 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v391 == 255)
      {
        v541 = v3;
        *&v945[0] = *(v3 + 72);
        sub_1D5CBA110(v388, v89);

        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        sub_1D6FA2770(*&v945[0], v944);

        v542 = *(v3 + 144);
        v930 = *(v3 + 136);
        v931 = *&v944[0];
        v543 = v389[5];
        v928 = v389[4];
        v929 = v542;
        v927 = v543;
        v544 = *v3;
        v545 = v389[2];
        v546 = v933;
        v547 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
        v548 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
        swift_beginAccess();
        v906 = v544;
        v549 = v907;
        v550 = v932;
        sub_1D6CDF148((v546 + v548), v547, v388, v89, v931, v930, v929, v928, v907, v927, v906, v545);
        if (v550)
        {
          swift_endAccess();
          sub_1D5CBA0FC(v388, v89);
          return;
        }

        v946 = 0;
        v930 = v541;
        swift_endAccess();
        sub_1D5CBA0FC(v388, v89);
      }

      else
      {
        if ((v391 & 1) == 0)
        {
LABEL_106:
          type metadata accessor for FormatLayoutError(0);
          sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          return;
        }

        v392 = *v390;
        v298 = v390[1];
        v393 = v390[4];
        v928 = v390[5];
        v929 = v393;
        *&v945[0] = *(v3 + 72);
        v931 = v388;
        sub_1D5CBA110(v388, v89);

        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        sub_1D6FA2770(*&v945[0], v944);

        v394 = *(v3 + 144);
        v926 = *(v3 + 136);
        v927 = *&v944[0];
        v925 = v394;
        v930 = v3;
        v395 = *v3;
        v396 = v389[2];
        v397 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v398 = v933;
        swift_beginAccess();
        v399 = *(v398 + v397);
        if (!*(v399 + 16) || (v400 = sub_1D5B69D90(v392, v298), (v401 & 1) == 0))
        {
          swift_endAccess();
          sub_1D5CBA0FC(v931, v89);
          type metadata accessor for FormatLayoutError(0);
          sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          *v551 = v392;
LABEL_201:
          v551[1] = v298;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return;
        }

        v402 = *(*(v399 + 56) + 8 * v400);
        swift_endAccess();
        v403 = *(v402 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
        v404 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
        swift_beginAccess();

        v405 = (v402 + v404);
        v406 = v7;
        v407 = v7;
        v409 = v931;
        v408 = v932;
        sub_1D6CDF148(v405, v403, v931, v89, v927, v926, v925, v929, v407, v928, v395, v396);
        if (v408)
        {
          swift_endAccess();
          sub_1D5CBA0FC(v409, v89);
LABEL_105:

          return;
        }

        v946 = 0;
        swift_endAccess();
        sub_1D5CBA0FC(v409, v89);

        v875 = v406;
        v549 = v907;
        sub_1D6D0A058(v875, v907, sub_1D6D09328);
      }

      v876 = v920;

      v563 = v930;
      sub_1D5B886D0(v877);

      sub_1D6985C44(v878);
      v879 = (v549 + *(v876 + 36));
      v880 = *v879;
      v881 = v879[1];
      v882 = v879[2];
      v883 = v879[3];
      v884 = v879[4];
      v885 = v879[5];
      v886 = v563[26];
      v887 = v563[27];
      v888 = v563[29];
      v932 = v563[28];
      v933 = v886;
      v931 = v888;
      v889 = v563[30];
      v928 = v563[31];
      v929 = v889;
      sub_1D67F5880(v880, v881);
      sub_1D67F58E4(v933, v887);
      v563[26] = v880;
      v563[27] = v881;
      v563[28] = v882;
      v563[29] = v883;
      v563[30] = v884;
      v563[31] = v885;
      *(&v945[1] + 1) = type metadata accessor for FeedCustomItem(0);
      *&v945[2] = sub_1D6D098EC(&qword_1EDF15710, type metadata accessor for FeedCustomItem, &protocol conformance descriptor for FeedCustomItem);
      v890 = __swift_allocate_boxed_opaque_existential_1(v945);
      v577 = v907;
      sub_1D6D09934(v907, v890, type metadata accessor for FeedCustomItem);
      v832 = sub_1D6D09328;
LABEL_265:
      sub_1D6D0A444(v577, v832);
      v488 = v945;
LABEL_266:
      v489 = (v563 + 19);
LABEL_267:
      sub_1D6D09490(v488, v489);
      return;
  }
}

void sub_1D6D09390(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6D09490(uint64_t a1, uint64_t a2)
{
  sub_1D6D09390(0, &qword_1EDF34AB8, sub_1D5EFF46C, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6D09524(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1D6D09E8C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D6D09580(void *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_1D725AA4C() == v2 && v4 == v3)
  {

    v7 = 0;
  }

  else
  {
    v6 = sub_1D72646CC();

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_1D6D09618(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_1D725AA4C() == v2 && v4 == v3)
  {

    v7 = 0;
  }

  else
  {
    v6 = sub_1D72646CC();

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

BOOL sub_1D6D096B8(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v5 = *(v4 + 16);
  v6 = a2[7];
  v15[6] = a2[6];
  v16[0] = v6;
  *(v16 + 9) = *(a2 + 121);
  v7 = a2[3];
  v15[2] = a2[2];
  v15[3] = v7;
  v8 = a2[5];
  v15[4] = a2[4];
  v15[5] = v8;
  v9 = a2[1];
  v15[0] = *a2;
  v15[1] = v9;
  v10 = a4[7];
  v17[6] = a4[6];
  v18[0] = v10;
  *(v18 + 9) = *(a4 + 121);
  v11 = a4[3];
  v17[2] = a4[2];
  v17[3] = v11;
  v12 = a4[5];
  v17[4] = a4[4];
  v17[5] = v12;
  v13 = a4[1];
  v17[0] = *a4;
  v17[1] = v13;
  return sub_1D71EA090(a1, v15, a3, v17, v5);
}

uint64_t sub_1D6D09744@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v7[5] = *(a1 + 11);
  v7[6] = *(a1 + 13);
  v8[0] = *(a1 + 15);
  *(v8 + 9) = *(a1 + 129);
  v7[1] = *(a1 + 3);
  v7[2] = *(a1 + 5);
  v7[3] = *(a1 + 7);
  v7[4] = *(a1 + 9);
  v7[0] = *(a1 + 1);
  result = v4(v5, v7);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D6D0983C(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D6D09DA8(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D6D098EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6D09934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D6D099D0(uint64_t a1)
{
  if (!qword_1EC894E60)
  {
    sub_1D6D09E8C(255, &qword_1EC880BA0, &type metadata for FeedIssue, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC894E60);
    }
  }
}

double sub_1D6D09A5C(uint64_t a1)
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

void sub_1D6D09A7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D6D09B18(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1D5C144C0(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void sub_1D6D09C2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

BOOL sub_1D6D09CC0(uint64_t a1, _OWORD *a2, uint64_t a3, __int128 *a4)
{
  v5 = *(v4 + 16);
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  v8 = a4[1];
  v12[0] = *a4;
  v12[1] = v8;
  v9 = a4[3];
  v12[2] = a4[2];
  v12[3] = v9;
  return sub_1D71E9960(a1, v11, a3, v12, v5);
}

uint64_t sub_1D6D09D10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = *(a1 + 3);
  v9[0] = *(a1 + 1);
  v9[1] = v6;
  v7 = *(a1 + 7);
  v9[2] = *(a1 + 5);
  v9[3] = v7;
  result = v4(v5, v9);
  *a2 = result & 1;
  return result;
}

void sub_1D6D09DA8(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1D6D09E04(255, a3, a4, a5);
    v6 = sub_1D726393C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6D09E04(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D6D09E8C(255, a3, a4, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D6D09E8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D6D09F94(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1D6D0A350(255, a3, a4, a5, "best remaining ");
    v6 = sub_1D726393C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D6D0A058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D6D0A0FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), __n128 a6)
{
  if (!*a2)
  {
    sub_1D6D0A264(255, a3, a4, a5);
    v7 = sub_1D726393C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6D0A1B4@<X0>(char *a1@<X0>, char *a2@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, _BYTE *a5@<X8>)
{
  v9 = *(v5 + 16);
  v10 = *a1;
  sub_1D6D09C2C(0, a3, a4);
  result = v9(v10, &a1[*(v11 + 48)], *a2, &a2[*(v11 + 48)]);
  *a5 = result & 1;
  return result;
}

void sub_1D6D0A264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D6D0A350(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D6D0A3D8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D6D09A7C(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6D0A444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D6D0A4B8()
{
  result = qword_1EC894EA0;
  if (!qword_1EC894EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894EA0);
  }

  return result;
}

double sub_1D6D0A5F8@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v3 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      *a3 = a1;
      *(a3 + 8) = a2;
      *(a3 + 24) = MEMORY[0x1E69E6158];
      return result;
    }

    v4 = a3;

    a3 = v4;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double sub_1D6D0A65C@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *a1 & 0x1FFFFFFFFFFFFFFFLL;
  if (v3 >> 61 != 1)
  {
    goto LABEL_6;
  }

  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {

    *a2 = v6;
    *(a2 + 8) = v5;
    *(a2 + 24) = MEMORY[0x1E69E6158];
  }

  else
  {
LABEL_6:

    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_1D6D0A744(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v10 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v20 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            return;
          }

          if (v20 >= v8)
          {
            goto LABEL_22;
          }

          v7 = *(v4 + 8 * v20);
          ++v10;
        }

        while (!v7);
        v10 = v20;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v11 = (*(v2 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
      v13 = *v11;
      v12 = v11[1];
      sub_1D7264A0C();

      sub_1D72621EC();
      v14 = sub_1D7264A5C();
      v15 = -1 << *(a1 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v17 = ~v15;
      while (1)
      {
        v18 = (*(a1 + 48) + 16 * v16);
        v19 = *v18 == v13 && v18[1] == v12;
        if (v19 || (sub_1D72646CC() & 1) != 0)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }
}

double FormatSnippetNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v116 = a1;
  v5 = type metadata accessor for GroupLayoutContext(0);
  v112 = *(v5 - 8);
  v6 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v114 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatOption(0);
  v117 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FormatNodeBinderContext(0);
  *(&v123 + 1) = v12;
  *&v124 = &protocol witness table for FormatNodeBinderContext;
  *&v122 = a2;

  v13 = sub_1D6D0C3D8(&v122);
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(&v122);
  }

  else
  {
    v15 = v13;
    v119 = v8;
    v120 = v11;
    v104 = v6;
    v106 = v12;
    v110 = 0;
    v111 = a2;
    __swift_destroy_boxed_opaque_existential_1(&v122);
    swift_beginAccess();
    v16 = v2[3];
    v108 = v2[2];
    swift_beginAccess();
    v17 = *(v15 + 72);
    v18 = *(v17 + 16);
    v115 = v2;
    v113 = v15;
    v109 = v16;
    if (v18)
    {
      *&v122 = MEMORY[0x1E69E7CC0];

      sub_1D5D24610(0, v18, 0);
      v19 = v122;
      v20 = *(v117 + 80);
      v107 = v17;
      v21 = v17 + ((v20 + 32) & ~v20);
      v118 = *(v117 + 72);
      do
      {
        v22 = v120;
        sub_1D5D2552C(v21, v120, type metadata accessor for FormatOption);
        v23 = swift_allocBox();
        sub_1D5D5E614(v22, v24, type metadata accessor for FormatOption);
        *&v122 = v19;
        v26 = *(v19 + 16);
        v25 = *(v19 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1D5D24610((v25 > 1), v26 + 1, 1);
          v19 = v122;
        }

        *(v19 + 16) = v26 + 1;
        *(v19 + 8 * v26 + 32) = v23 | 0xA000000000000004;
        v21 += v118;
        --v18;
      }

      while (v18);

      v2 = v115;
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
    }

    v27 = v120;
    v28 = v117;
    swift_beginAccess();
    v29 = v2[11];
    v30 = *(v29 + 16);
    v31 = MEMORY[0x1E69E7CC0];
    if (v30)
    {
      *&v122 = MEMORY[0x1E69E7CC0];

      sub_1D5D24610(0, v30, 0);
      v31 = v122;
      v32 = *(v28 + 80);
      v117 = v29;
      v33 = v29 + ((v32 + 32) & ~v32);
      v118 = *(v28 + 72);
      do
      {
        sub_1D5D2552C(v33, v27, type metadata accessor for FormatOption);
        v34 = swift_allocBox();
        sub_1D5D5E614(v27, v35, type metadata accessor for FormatOption);
        *&v122 = v31;
        v37 = *(v31 + 16);
        v36 = *(v31 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1D5D24610((v36 > 1), v37 + 1, 1);
          v31 = v122;
        }

        *(v31 + 16) = v37 + 1;
        *(v31 + 8 * v37 + 32) = v34 | 0x5000000000000004;
        v33 += v118;
        --v30;
        v27 = v120;
      }

      while (v30);
    }

    v38 = v113;
    *&v122 = v19;
    sub_1D6985C44(v31);
    v39 = v122;
    swift_beginAccess();
    v40 = *(v38 + 80);
    v41 = v115;
    swift_beginAccess();

    v43 = sub_1D5D6021C(v42, v40);
    swift_beginAccess();
    v44 = v41[12];
    v129 = 0;
    memset(v128, 0, sizeof(v128));
    v131 = 0;
    v45 = v111;

    v119 = sub_1D6E8DE74(v108, v109);

    swift_beginAccess();
    v131 = 1;

    v46 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors);
    if (*(v43 + 16) && (sub_1D6D0A744(*(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors), v43), (v47 & 1) == 0))
    {
      v48 = 1;
      v131 = 1;

      v46 = sub_1D5D6021C(v49, v46);
    }

    else
    {

      v48 = 0;
    }

    v117 = v46;
    v50 = *(v39 + 16);
    v120 = v43;
    if (v50)
    {
      v51 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
      v52 = sub_1D6F619D8(v39);

      if (v52)
      {
        v118 = v52;
        v130 = 1;
        v131 = 1;
      }

      else
      {
        v130 = v48;

        v118 = v51;
      }
    }

    else
    {
      v130 = v48;

      v118 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
    }

    v53 = *(v45 + 40);
    v105 = *(v45 + 32);
    v109 = v53;

    v108 = sub_1D6BEC5F4(v44, v45, &v131);

    v54 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
    v55 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 8);
    v57 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 16);
    v56 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 24);
    v58 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 32);
    v59 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 40);
    v60 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
    sub_1D62E312C(v54, v55, v57, v56, v58, v59, *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48));
    v62 = sub_1D6BEC878(v128, v45, &v131, v61);
    v64 = *(v45 + 96);
    v124 = *(v45 + 80);
    v125 = v64;
    v126 = *(v45 + 112);
    v127 = *(v45 + 128);
    v65 = *(v45 + 64);
    v122 = *(v45 + 48);
    v123 = v65;
    v107 = v54;
    if (v131 == 1)
    {
      v96 = v63;
      v97 = v62;
      v98 = v60;
      v99 = v59;
      v100 = v58;
      v101 = v56;
      v102 = v57;
      v103 = v55;
      if (v130)
      {
        sub_1D67C846C(0, &qword_1EDF3BDD0, type metadata accessor for FormatContextLayoutOptions, MEMORY[0x1E69D63A0]);
        v66 = v114;
        sub_1D5D2552C(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v114, type metadata accessor for GroupLayoutContext);
        v67 = (*(v112 + 80) + 16) & ~*(v112 + 80);
        v68 = (v104 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
        v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
        v70 = swift_allocObject();
        v71 = v70 + v67;
        v45 = v111;
        sub_1D5D5E614(v66, v71, type metadata accessor for GroupLayoutContext);
        v72 = v118;
        *(v70 + v68) = v118;
        v73 = v117;
        *(v70 + v69) = v117;
        sub_1D5CF6A5C(&v122, v121);

        v112 = sub_1D725A80C();
      }

      else
      {
        v74 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions);
        sub_1D5CF6A5C(&v122, v121);
        v112 = v74;

        v66 = v114;
        v73 = v117;
        v72 = v118;
      }

      v75 = *(v45 + 16);
      sub_1D5D2552C(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v66, type metadata accessor for GroupLayoutContext);
      v76 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData);
      sub_1D5B68374(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger, v121);
      v45 = swift_allocObject();
      v77 = v119;
      *(v45 + 16) = v75;
      *(v45 + 24) = v77;
      v78 = v125;
      *(v45 + 80) = v124;
      *(v45 + 96) = v78;
      *(v45 + 112) = v126;
      *(v45 + 128) = v127;
      v79 = v123;
      *(v45 + 48) = v122;
      *(v45 + 64) = v79;
      *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options) = v72;
      *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors) = v73;
      sub_1D5D2552C(v66, v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, type metadata accessor for GroupLayoutContext);
      v80 = v109;
      *(v45 + 32) = v105;
      *(v45 + 40) = v80;
      *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks) = v108;
      *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData) = v76;
      sub_1D5B68374(v121, v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
      v81 = v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
      v82 = v102;
      v83 = v103;
      *v81 = v107;
      *(v81 + 8) = v83;
      *(v81 + 16) = v82;
      v84 = v100;
      *(v81 + 24) = v101;
      *(v81 + 32) = v84;
      *(v81 + 40) = v99;
      *(v81 + 48) = v98;
      v85 = (v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
      v86 = v96;
      *v85 = v97;
      v85[1] = v86;

      __swift_destroy_boxed_opaque_existential_1(v121);
      sub_1D5CF63C0(v66, type metadata accessor for GroupLayoutContext);
      sub_1D62E3214(v128);
      *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions) = v112;
    }

    else
    {

      sub_1D62E31A0(v107, v55, v57, v56, v58, v59, v60);

      sub_1D62E3214(v128);
    }

    v87 = v115;
    v88 = v113;
    v89 = *(v113 + 72);

    v90 = v116;
    v91 = v110;
    sub_1D6213004(v116, v45, v89);

    if (v91)
    {
    }

    else
    {
      swift_beginAccess();
      v92 = *(v88 + 88);

      sub_1D62212CC(v90, v45, v92);

      swift_beginAccess();
      v93 = *(v88 + 64);

      sub_1D6215F90(v90, v45, v93);

      v94 = v87[11];

      sub_1D6213004(v90, v45, v94);
    }
  }

  return result;
}

void sub_1D6D0B48C()
{
  v2 = v0;
  swift_beginAccess();
  v4 = v0[4];
  v3 = v0[5];
  swift_beginAccess();
  v5 = v0[2];
  v6 = v2[3];
  swift_beginAccess();
  v7 = v2[12];
  sub_1D5EB99F0();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  *(v8 + 24) = v9;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = 0;
  *(v8 + 76) = 0x2000;
  *(v8 + 72) = 0;
  v73 = v8;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();

  v59 = v7;

  sub_1D6C4D418(v10);
  if (v1)
  {
  }

  else
  {
    v11 = v4;

    v12 = v2[11];

    sub_1D626DA28(&v73, v12);

    v13 = v7;
    if (v7 >> 62)
    {
LABEL_31:
      v49 = v13;
      v14 = sub_1D7263BFC();
      v13 = v49;
    }

    else
    {
      v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    if (v14)
    {
      v16 = 0;
      v55 = v13 & 0xFFFFFFFFFFFFFF8;
      v56 = v13 & 0xC000000000000001;
      v52 = v13 + 32;
      v53 = v3;
      v54 = v6;
      v50 = v14;
      v51 = v11;
      do
      {
        if (v56)
        {
          v19 = MEMORY[0x1DA6FB460](v16, v13);
          v20 = __OFADD__(v16, 1);
          v21 = v16 + 1;
          if (v20)
          {
LABEL_28:
            __break(1u);

            goto LABEL_4;
          }
        }

        else
        {
          if (v16 >= *(v55 + 16))
          {
            __break(1u);
            goto LABEL_31;
          }

          v19 = *(v52 + 8 * v16);

          v20 = __OFADD__(v16, 1);
          v21 = v16 + 1;
          if (v20)
          {
            goto LABEL_28;
          }
        }

        v57 = v21;
        v22 = swift_allocObject();
        v23 = MEMORY[0x1E69E7CC0];
        *(v22 + 16) = MEMORY[0x1E69E7CC0];
        *(v22 + 24) = v23;
        *(v22 + 32) = 0u;
        *(v22 + 48) = 0u;
        *(v22 + 64) = 0;
        *(v22 + 76) = -512;
        *(v22 + 72) = 0;
        v72 = v22;
        swift_beginAccess();
        v58 = v19;
        v24 = *(*(v19 + 32) + 16);

        if (v24)
        {
          v26 = (v25 + 72);
          do
          {
            v64 = v24;
            v27 = *(v26 - 5);
            v28 = *(v26 - 3);
            v30 = *v26;
            v29 = v26[1];
            v31 = v26[2];
            v32 = v26[3];
            v33 = v26[4];
            v67 = *v26;
            v68 = v26[5];
            v34 = v26[6];
            v35 = v26[7];
            v66 = v34;
            v65 = v35;
            if (v28)
            {
              v61 = *(v26 - 1);
              v60 = *(v26 - 4);

              v62 = v33;
              sub_1D5CFDAE4(v30, v29, v31, v32, v33, v68, v34, v35);
              v36 = v28;

              v37 = v72;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v45 = swift_allocObject();
                swift_beginAccess();
                v46 = v37[2];
                v70[0] = v37[1];
                v70[1] = v46;
                v71[0] = v37[3];
                *(v71 + 14) = *(v37 + 62);
                memmove((v45 + 16), v37 + 1, 0x3EuLL);
                sub_1D5EB9AB0(v70, v69);

                v72 = v45;
                v37 = v45;
              }

              v63 = v29;
              swift_beginAccess();
              v38 = *(v37 + 3);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v37 + 3) = v38;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v38 = sub_1D698F85C(0, *(v38 + 2) + 1, 1, v38);
                *(v37 + 3) = v38;
              }

              v41 = *(v38 + 2);
              v40 = *(v38 + 3);
              if (v41 >= v40 >> 1)
              {
                v38 = sub_1D698F85C((v40 > 1), v41 + 1, 1, v38);
              }

              *(v38 + 2) = v41 + 1;
              v42 = &v38[32 * v41];
              *(v42 + 4) = v60;
              *(v42 + 5) = v36;
              *(v42 + 3) = v61;
              *(v37 + 3) = v38;
              swift_endAccess();
              v43 = v32;
              v44 = v62;
              v29 = v63;
            }

            else
            {

              sub_1D5CFDAE4(v67, v29, v31, v32, v33, v68, v34, v35);
              v43 = v32;
              v44 = v33;
            }

            *&v70[0] = v27;

            sub_1D6299090(&v72);

            sub_1D5CFDD14(v67, v29, v31, v43, v44, v68, v66, v65);
            v26 += 13;
            v24 = v64 - 1;
          }

          while (v64 != 1);
        }

        v17 = swift_allocObject();
        v18 = *(v58 + 24);
        v11 = v72;
        *(v17 + 16) = *(v58 + 16);
        *(v17 + 24) = v18;
        *(v17 + 32) = v11;

        sub_1D6C4D24C(v17 | 0x2000000000000000);

        v15 = v51;
        v16 = v57;
        v3 = v53;
        v6 = v54;
        v13 = v59;
      }

      while (v57 != v50);
    }

    v47 = swift_allocObject();
    *(v47 + 16) = v15;
    *(v47 + 24) = v3;
    *(v47 + 32) = 0;
    sub_1D6C4D24C(v47 | 0x5000000000000000);

    v48 = swift_allocObject();
    *(v48 + 16) = v73;

    sub_1D6C4D24C(v48);
  }

LABEL_4:
}

uint64_t FormatSnippetNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatSnippetNode.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FormatSnippetNode.description.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

double FormatSnippetNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t FormatSnippetNode.snippetIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

double FormatSnippetNode.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  return result;
}

double FormatSnippetNode.description.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  return result;
}

double FormatSnippetNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;

  return result;
}

double FormatSnippetNode.options.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;

  return result;
}

double FormatSnippetNode.blocks.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;

  return result;
}

uint64_t FormatSnippetNode.__allocating_init(identifier:snippetIdentifier:name:description:selectors:options:blocks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  *(v18 + 64) = 0u;
  *(v18 + 48) = 0u;
  swift_beginAccess();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  swift_beginAccess();
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;

  swift_beginAccess();
  *(v18 + 64) = a7;
  *(v18 + 72) = a8;

  swift_beginAccess();
  *(v18 + 80) = a9;
  swift_beginAccess();
  *(v18 + 88) = a10;
  swift_beginAccess();
  *(v18 + 96) = a11;
  return v18;
}

uint64_t FormatSnippetNode.init(identifier:snippetIdentifier:name:description:selectors:options:blocks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 64) = 0u;
  *(v11 + 48) = 0u;
  swift_beginAccess();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  swift_beginAccess();
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;

  swift_beginAccess();
  *(v11 + 64) = a7;
  *(v11 + 72) = a8;

  swift_beginAccess();
  *(v11 + 80) = a9;
  swift_beginAccess();
  *(v11 + 88) = a10;
  swift_beginAccess();
  *(v11 + 96) = a11;
  return v11;
}

uint64_t FormatSnippetNode.deinit()
{

  return v0;
}

uint64_t FormatSnippetNode.__deallocating_deinit()
{
  FormatSnippetNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6D0C3D8(void *a1)
{
  v2 = v1;
  sub_1D5C2C40C(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v24[-v11];
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 8))(v13, v14) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets;
  swift_beginAccess();
  v16 = *(v15 + 8);

  swift_beginAccess();
  if (*(v16 + 16) && (v17 = *(v2 + 32), v18 = *(v2 + 40), , v25 = sub_1D5B69D90(v17, v18), v20 = v19, , (v20 & 1) != 0))
  {
    sub_1D5D2552C(*(v16 + 56) + *(v5 + 72) * v25, v8, sub_1D5C2C40C);
    sub_1D5D5E614(v8, v12, sub_1D5C2C40C);

    v21 = *v12;

    sub_1D5CF63C0(v12, sub_1D5C2C40C);
  }

  else
  {

    v21 = type metadata accessor for FormatLayoutError(0);
    sub_1D6D0C878(&qword_1EDF2F560, 255, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v22 = v2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v21;
}

uint64_t sub_1D6D0C6E0(uint64_t a1, uint64_t a2)
{
  result = sub_1D6D0C878(&qword_1EC894EA8, a2, type metadata accessor for FormatSnippetNode, &protocol conformance descriptor for FormatSnippetNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6D0C738(void *a1, uint64_t a2)
{
  a1[1] = sub_1D6D0C878(&qword_1EDF2F1D8, a2, type metadata accessor for FormatSnippetNode, &protocol conformance descriptor for FormatSnippetNode);
  a1[2] = sub_1D6D0C878(&qword_1EDF10B68, v3, type metadata accessor for FormatSnippetNode, &protocol conformance descriptor for FormatSnippetNode);
  result = sub_1D6D0C878(&qword_1EC894EB0, v4, type metadata accessor for FormatSnippetNode, &protocol conformance descriptor for FormatSnippetNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6D0C7E4(uint64_t a1, uint64_t a2)
{
  result = sub_1D6D0C878(&qword_1EC894EB8, a2, type metadata accessor for FormatSnippetNode, &protocol conformance descriptor for FormatSnippetNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6D0C878(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s8NewsFeed27FormatAccessibilityPropertyO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*a1 >> 60) & 3 | v6;
  if (*(a2 + 8))
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = (v4 >> 60) & 3 | v8;
  if (v7 <= 2)
  {
    if (!v7)
    {
      if (v9)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    if (v7 == 1)
    {
      if (v9 == 1)
      {
LABEL_15:
        v16 = v4 & 0xCFFFFFFFFFFFFFFFLL;
        v17 = v2 & 0xCFFFFFFFFFFFFFFFLL;
LABEL_26:
        sub_1D5D07778(v4, v5);
        sub_1D5D07778(v2, v3);
        sub_1D5D07778(v2, v3);
        sub_1D5D07778(v4, v5);
        v10 = _s8NewsFeed26FormatAccessibilityContentO2eeoiySbAC_ACtFZ_0(&v17, &v16);
        sub_1D5D06D9C(v2, v3);
        sub_1D5D06D9C(v4, v5);
        sub_1D5D06D9C(v4, v5);
        sub_1D5D06D9C(v2, v3);
        return v10 & 1;
      }
    }

    else if (v9 == 2)
    {
      goto LABEL_15;
    }

LABEL_22:

LABEL_23:
    sub_1D5D07778(v4, v5);
    sub_1D5D06D9C(v2, v3);
    sub_1D5D06D9C(v4, v5);
    v10 = 0;
    return v10 & 1;
  }

  if (v7 <= 4)
  {
    if (v7 == 3)
    {
      if (v9 != 3)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    if (v9 != 4)
    {
      goto LABEL_22;
    }

LABEL_25:
    v16 = *a2;
    v17 = v2;
    goto LABEL_26;
  }

  if (v7 == 5)
  {
    if (v9 != 5)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  if (v9 != 6)
  {
    goto LABEL_23;
  }

  LOBYTE(v17) = *a1;
  LOBYTE(v16) = v4;
  v12 = FormatAccessibilityTrait.rawValue.getter();
  v14 = v13;
  if (v12 == FormatAccessibilityTrait.rawValue.getter() && v14 == v15)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D72646CC();
  }

  sub_1D5D06D9C(v2, v3);
  sub_1D5D06D9C(v4, v5);

  return v10 & 1;
}

unint64_t sub_1D6D0CB04(uint64_t a1)
{
  result = sub_1D6D0CB2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D0CB2C()
{
  result = qword_1EC894EC0;
  if (!qword_1EC894EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894EC0);
  }

  return result;
}

unint64_t sub_1D6D0CB80(void *a1)
{
  a1[1] = sub_1D5C66964();
  a1[2] = sub_1D6662194();
  result = sub_1D6D0CBB8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D0CBB8()
{
  result = qword_1EC894EC8[0];
  if (!qword_1EC894EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC894EC8);
  }

  return result;
}

uint64_t sub_1D6D0CC3C(uint64_t result, char a2)
{
  *result = *result & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
  *(result + 8) = (a2 & 4) != 0;
  return result;
}

uint64_t FeedBannerAdBlueprintModifier.init(updates:policyValidator:layoutCollection:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  sub_1D5B7DDE8(a2, (a9 + 8));
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a8;
  v20[5] = a10;
  v17 = *(type metadata accessor for FeedBannerAdBlueprintModifier(0, v20) + 72);
  v18 = sub_1D725E9DC();
  return (*(*(v18 - 8) + 32))(&a9[v17], a3, v18);
}

double FeedBannerAdBlueprintModifier.modify(blueprint:completion:)(void (*a1)(void, void, void), void (*a2)(void), uint64_t a3, void *a4)
{
  v65 = a2;
  v66 = a3;
  v6 = a4[3];
  v7 = a4[4];
  v8 = a4[7];
  v72 = a4[2];
  v73 = v6;
  v74 = v7;
  v75 = v8;
  v9 = sub_1D725E50C();
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v58 - v11;
  v67 = v72;
  v68 = v8;
  v73 = v6;
  v69 = v7;
  v70 = v6;
  v74 = v7;
  v75 = v8;
  v13 = sub_1D725FACC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v59 = &v58 - v16;
  v17 = swift_allocBox();
  v63 = a1;
  v64 = v17;
  v19 = v18;
  v58 = *(v14 + 16);
  v58(v18, a1, v13);
  if (qword_1EDF1BB68 != -1)
  {
    swift_once();
  }

  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7273AE0;
  v21 = *v71;
  v22 = *(*v71 + 16);
  v23 = MEMORY[0x1E69E65A8];
  *(v20 + 56) = MEMORY[0x1E69E6530];
  *(v20 + 64) = v23;
  *(v20 + 32) = v22;
  sub_1D7262EDC();
  sub_1D725C30C("Modifying blueprint to integrate %d update(s)", v58);

  if (*(v21 + 16))
  {
    MEMORY[0x1EEE9AC00](v24, v25);
    v26 = v69;
    v27 = v70;
    *(&v58 - 10) = v67;
    *(&v58 - 9) = v27;
    v29 = a4[5];
    v28 = a4[6];
    *(&v58 - 8) = v26;
    *(&v58 - 7) = v29;
    v60 = v28;
    v30 = v68;
    *(&v58 - 6) = v28;
    *(&v58 - 5) = v30;
    v31 = v71;
    *(&v58 - 4) = v19;
    *(&v58 - 3) = v31;
    v32 = v63;
    *(&v58 - 2) = v63;
    v33 = sub_1D5FBE4F0(sub_1D6D0F4B8, (&v58 - 12), v21);
    if (v33 >> 62)
    {
      v54 = v33;
      v55 = sub_1D7263BFC();
      v33 = v54;
      if (v55)
      {
        goto LABEL_6;
      }
    }

    else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v35 = MEMORY[0x1EEE9AC00](v33, v34);
      *(&v58 - 2) = v36;
      sub_1D6D0F50C(0, v35);
      v62 = sub_1D725BDCC();

      v37 = v59;
      v58(v59, v32, v13);
      v38 = (*(v14 + 80) + 88) & ~*(v14 + 80);
      v39 = swift_allocObject();
      v41 = v66;
      v40 = v67;
      v42 = v69;
      v43 = v70;
      *(v39 + 2) = v67;
      *(v39 + 3) = v43;
      *(v39 + 4) = v42;
      *(v39 + 5) = v29;
      v71 = v29;
      v44 = v68;
      *(v39 + 6) = v60;
      *(v39 + 7) = v44;
      v45 = v65;
      *(v39 + 8) = v64;
      *(v39 + 9) = v45;
      *(v39 + 10) = v41;
      (*(v14 + 32))(&v39[v38], v37, v13);
      v46 = swift_allocObject();
      *(v46 + 16) = sub_1D6D0F640;
      *(v46 + 24) = v39;

      v47 = sub_1D725B92C();
      sub_1D725BA8C();

      v48 = swift_allocObject();
      v50 = v69;
      v49 = v70;
      v48[2] = v40;
      v48[3] = v49;
      v51 = v71;
      v48[4] = v50;
      v48[5] = v51;
      v48[6] = v60;
      v48[7] = v44;
      v48[8] = v45;
      v48[9] = v41;

      v52 = sub_1D725B92C();
      sub_1D725BACC();

      return result;
    }
  }

  v57 = v61;
  v56 = v62;
  (*(v61 + 104))(v12, *MEMORY[0x1E69D7ED0], v62);
  v65(v12);
  (*(v57 + 8))(v12, v56);

  return result;
}

void sub_1D6D0D2E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v57 = a8;
  v58 = a4;
  v59 = a3;
  v65 = a9;
  v16 = sub_1D7260DDC();
  v62 = *(v16 - 8);
  v63 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v61 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for FeedBannerAd(0);
  MEMORY[0x1EEE9AC00](v60, v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a5;
  v66 = a5;
  v67 = a6;
  v56 = a7;
  v68 = a7;
  v69 = a11;
  v22 = sub_1D725FACC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v49 - v25;
  v55 = a6;
  v53 = a11;
  v27 = sub_1D725CE8C();
  v51 = sub_1D726393C();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v28);
  v30 = &v49 - v29;
  v31 = *(v27 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v49 = (&v49 - v35);
  (*(v23 + 16))(v26, a2, v22, v34);
  sub_1D5BE1514(0);
  v52 = v36;
  v64 = a1;
  sub_1D726052C();

  sub_1D6AEF51C(v21);
  sub_1D725FA3C();

  (*(v23 + 8))(v26, v22);
  if ((*(v31 + 48))(v30, 1, v27) == 1)
  {
    (*(v50 + 8))(v30, v51);
    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    v37 = qword_1EDFFC830;
    v38 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1D7273AE0;
    sub_1D726052C();
    v40 = v61;
    v42 = v62;
    v41 = v63;
    (*(v62 + 16))(v61, &v21[*(v60 + 20)], v63);
    sub_1D6AEF51C(v21);
    v43 = sub_1D7260D7C();
    v45 = v44;
    (*(v42 + 8))(v40, v41);
    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 64) = sub_1D5B7E2C0();
    *(v39 + 32) = v43;
    *(v39 + 40) = v45;
    sub_1D725C30C("Failed to find placement=%{public}@", 35, 2, &dword_1D5B42000, v37, v38, v39);

    v46 = 0;
  }

  else
  {
    v47 = v49;
    (*(v31 + 32))(v49, v30, v27);
    v66 = v54;
    v67 = v55;
    v68 = v56;
    v69 = v57;
    v70 = a10;
    v71 = v53;
    v48 = type metadata accessor for FeedBannerAdBlueprintModifier(0, &v66);
    v46 = sub_1D6D0D848(v47, v58, v64, v48);
    (*(v31 + 8))(v47, v27);
  }

  *v65 = v46;
}

uint64_t sub_1D6D0D848(uint64_t (*a1)(uint64_t, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = a4;
  v101 = a1;
  v102 = a2;
  sub_1D5BE1514(0);
  v6 = v5;
  v93 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v91 = v8;
  v92 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D0F5DC(0, &qword_1EDF3C370, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v100 = &v88 - v11;
  v12 = sub_1D7258DBC();
  v104 = *(v12 - 8);
  v105 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v99 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1D72604BC();
  v15 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v16);
  v18 = (&v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_1D7260DDC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v97 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v88 - v25;
  v27 = type metadata accessor for FeedBannerAd(0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v88 - v33;
  v108 = v6;
  v35 = a3;
  sub_1D726052C();
  v103 = v27;
  v36 = *(v27 + 20);
  v95 = *(v20 + 16);
  v95(v26, &v34[v36], v19);
  sub_1D6AEF51C(v34);
  sub_1D7260DBC();
  v37 = v107;
  v38 = *(v20 + 8);
  v98 = v19;
  v96 = v20 + 8;
  v38(v26, v19);
  if ((*(v15 + 88))(v18, v37) != *MEMORY[0x1E69B3ED8])
  {
    (*(v15 + 8))(v18, v37);
    sub_1D726052C();
    sub_1D6D0F5DC(0, &qword_1EDF3B9A0, type metadata accessor for FeedBannerAd, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  v39 = v35;
  (*(v15 + 96))(v18, v37);
  __swift_destroy_boxed_opaque_existential_1(v18);
  v40 = v106;
  v41 = *(v106 + 24);
  v42 = *(v106 + 32);
  v43 = *(v106 + 56);
  v90 = *(v106 + 16);
  v109 = v90;
  v110 = v41;
  v89 = v41;
  v88 = v42;
  v111 = v42;
  *&v112 = v43;
  v107 = v43;
  sub_1D725FACC();
  v44 = v100;
  sub_1D725FABC();
  v46 = v104;
  v45 = v105;
  if ((*(v104 + 48))(v44, 1, v105) == 1)
  {
    sub_1D6BC6C94(v44);
  }

  else
  {
    v48 = v40;
    v49 = v99;
    (*(v46 + 32))(v99, v44, v45);
    v50 = v94;
    v51 = v48;
    v52 = sub_1D725E9AC();
    v53 = v39;
    if (v52)
    {
      v54 = v52;
      [v52 frame];
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v62 = v61;

      MEMORY[0x1EEE9AC00](v63, v64);
      v65 = v89;
      *(&v88 - 12) = v90;
      *(&v88 - 11) = v65;
      *(&v88 - 10) = v88;
      *(&v88 - 9) = *(v51 + 40);
      *(&v88 - 7) = v107;
      *(&v88 - 6) = v53;
      *(&v88 - 5) = v56;
      *(&v88 - 4) = v58;
      *(&v88 - 3) = v60;
      *(&v88 - 2) = v62;
      *(&v88 - 1) = v50;
      v100 = sub_1D725BDCC();
      v66 = v93;
      v106 = *(v93 + 16);
      v67 = v92;
      v68 = v108;
      (v106)(v92, v53, v108);
      v69 = *(v66 + 80);
      v102 = v53;
      v70 = (v69 + 16) & ~v69;
      v107 = v70 + v91;
      v71 = (v70 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
      v72 = swift_allocObject();
      v101 = *(v66 + 32);
      v101(v72 + v70, v67, v68);
      v73 = (v72 + v71);
      *v73 = v56;
      v73[1] = v58;
      v73[2] = v60;
      v73[3] = v62;
      v74 = sub_1D725B92C();
      v103 = sub_1D725BA8C();

      (v106)(v67, v102, v68);
      v75 = swift_allocObject();
      v101(v75 + v70, v67, v68);
      v76 = sub_1D725B92C();
      v77 = sub_1D725BB6C();

      (*(v46 + 8))(v99, v105);
      return v77;
    }

    (*(v46 + 8))(v49, v45);
  }

  v78 = v30;
  if (qword_1EDF1BB68 != -1)
  {
    swift_once();
  }

  v79 = qword_1EDFFC830;
  v80 = sub_1D7262EBC();
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_1D7273AE0;
  sub_1D726052C();
  v82 = &v30[*(v103 + 20)];
  v83 = v97;
  v84 = v98;
  v95(v97, v82, v98);
  sub_1D6AEF51C(v78);
  v85 = sub_1D7260D7C();
  v87 = v86;
  v38(v83, v84);
  *(v81 + 56) = MEMORY[0x1E69E6158];
  *(v81 + 64) = sub_1D5B7E2C0();
  *(v81 + 32) = v85;
  *(v81 + 40) = v87;
  sub_1D725C30C("Failed to find layout for placement=%{public}@", 46, 2, &dword_1D5B42000, v79, v80, v81);

  v109 = v90;
  v110 = v89;
  v111 = v88;
  v112 = *(v106 + 40);
  v113 = v107;
  type metadata accessor for FeedBannerAdBlueprintModifier.Errors(0, &v109);
  swift_getWitnessTable();
  swift_allocError();
  sub_1D6D0F5DC(0, &qword_1EDF3B9A0, type metadata accessor for FeedBannerAd, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BAFC();
}

uint64_t sub_1D6D0E250(uint64_t a1)
{
  v1 = sub_1D725B92C();
  type metadata accessor for FeedBannerAd(0);
  v2 = sub_1D725BEFC();

  return v2;
}

uint64_t sub_1D6D0E2AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v54 = a6;
  v55 = a5;
  v56 = a4;
  v15 = sub_1D725D85C();
  v53 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v51 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a7;
  v59 = a8;
  v60 = a9;
  v61 = a12;
  v18 = sub_1D725FACC();
  v49 = *(v18 - 8);
  v50 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v47 = a8;
  v48 = &v42 - v20;
  v58 = a7;
  v59 = a8;
  v60 = a9;
  v61 = a12;
  v52 = a12;
  v21 = sub_1D725E50C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v42 - v24;
  v26 = swift_projectBox();
  v27 = *(a1 + 16);
  if (v27)
  {
    v28 = v26;
    v43 = v25;
    v44 = v22;
    v45 = v21;
    v46 = v15;
    v57 = a9;
    v29 = *(type metadata accessor for FeedBannerAd(0) - 8);
    v30 = (a1 + ((*(v29 + 80) + 32) & ~*(v29 + 80)));
    v31 = v47;
    v32 = *(v29 + 72);
    v33 = v52;
    do
    {
      sub_1D6D0E6A0(v30, v28, a7, v31, v57, a10, a11, v33);
      v30 = (v30 + v32);
      --v27;
    }

    while (v27);
    swift_beginAccess();
    v35 = v48;
    v34 = v49;
    v36 = v50;
    (*(v49 + 16))(v48, v28, v50);
    v37 = v53;
    v38 = v51;
    v39 = v46;
    (*(v53 + 104))(v51, *MEMORY[0x1E69D7A38], v46);
    v40 = v43;
    sub_1D725E4AC();
    (*(v37 + 8))(v38, v39);
    (*(v34 + 8))(v35, v36);
    v56(v40);
    return (*(v44 + 8))(v40, v45);
  }

  else
  {
    (*(v22 + 104))(v25, *MEMORY[0x1E69D7ED0], v21);
    v56(v25);
    return (*(v22 + 8))(v25, v21);
  }
}

void sub_1D6D0E6A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v77 = a6;
  v85 = a1;
  MEMORY[0x1EEE9AC00](a1, a2);
  v76 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D726090C();
  v74 = *(v14 - 8);
  v75 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v73 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D726031C();
  v71 = *(v17 - 8);
  v72 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v70 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D726035C();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v20);
  v66 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a3;
  v82 = a4;
  v83 = a5;
  v84 = a8;
  v22 = sub_1D725FACC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v62 - v25;
  v78 = a4;
  v79 = a8;
  v27 = sub_1D725CE8C();
  v28 = sub_1D726393C();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v62 - v31;
  v33 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v34, v35);
  v69 = &v62 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v80 = &v62 - v39;
  swift_beginAccess();
  (*(v23 + 16))(v26, a2, v22);
  sub_1D725FA3C();
  (*(v23 + 8))(v26, v22);
  if ((*(v33 + 48))(v32, 1, v27) == 1)
  {
    (*(v29 + 8))(v32, v28);
    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    v40 = qword_1EDFFC830;
    v41 = sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1D7273AE0;
    type metadata accessor for FeedBannerAd(0);
    v43 = sub_1D7260D7C();
    v45 = v44;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1D5B7E2C0();
    *(v42 + 32) = v43;
    *(v42 + 40) = v45;
    sub_1D725C30C("Failed to find placement=%{public}@", 35, 2, &dword_1D5B42000, v40, v41, v42);
  }

  else
  {
    v65 = a2;
    (*(v33 + 32))(v80, v32, v27);
    v64 = v33;
    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    v63 = qword_1EDFFC830;
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1D7270C10;
    type metadata accessor for FeedBannerAd(0);
    v47 = v85;
    v48 = sub_1D7260D7C();
    v50 = v49;
    *(v46 + 56) = MEMORY[0x1E69E6158];
    v51 = sub_1D5B7E2C0();
    *(v46 + 64) = v51;
    *(v46 + 32) = v48;
    *(v46 + 40) = v50;
    v52 = v66;
    sub_1D7260DCC();
    v53 = v70;
    sub_1D726033C();
    (*(v67 + 8))(v52, v68);
    v54 = v73;
    sub_1D726030C();
    (*(v71 + 8))(v53, v72);
    sub_1D72608FC();
    (*(v74 + 8))(v54, v75);
    v55 = sub_1D726210C();
    v57 = v56;

    *(v46 + 96) = MEMORY[0x1E69E6158];
    *(v46 + 104) = v51;
    *(v46 + 72) = v55;
    *(v46 + 80) = v57;
    v58 = sub_1D7262EDC();
    sub_1D725C30C("Integrating update for placement=%{public}@, state=%{public}@", 61, 2, &dword_1D5B42000, v63, v58, v46);

    (*(v77 + 16))(v47, v78);
    v59 = v69;
    sub_1D725CE6C();
    swift_beginAccess();
    v60 = v80;
    sub_1D725FA6C();
    swift_endAccess();
    v61 = *(v64 + 8);
    v61(v59, v27);
    v61(v60, v27);
  }
}

uint64_t sub_1D6D0EEA0(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a9;
  v11 = sub_1D725E50C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v22 - v14;
  if (qword_1EDF1BB68 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDFFC830;
  v17 = sub_1D7262EBC();
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D7273AE0;
  v23 = 0;
  v24 = 0xE000000000000000;
  v22[1] = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  v19 = v23;
  v20 = v24;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = sub_1D5B7E2C0();
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  sub_1D725C30C("Failed to integrate blueprint modify error=%{public}@", 53, 2, &dword_1D5B42000, v16, v17, v18);

  (*(v12 + 104))(v15, *MEMORY[0x1E69D7ED0], v11);
  a2(v15);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1D6D0F0E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE46F70](a1, WitnessTable);
}

uint64_t sub_1D6D0F13C(double a1, double a2, uint64_t a3, void *a4)
{
  v5 = sub_1D7260DDC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedBannerAd(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D726078C();
  v15 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE1514(0);
  sub_1D726052C();
  (*(v6 + 16))(v9, &v14[*(v11 + 28)], v5);
  sub_1D6AEF51C(v14);
  sub_1D7260D7C();
  (*(v6 + 8))(v9, v5);
  sub_1D726077C();
  __swift_project_boxed_opaque_existential_1(a4 + 1, a4[4]);
  v19 = sub_1D7260C8C();
  (*(v15 + 8))(v18, v22);
  return v19;
}

uint64_t sub_1D6D0F398(double a1, double a2, double a3, double a4)
{
  v4 = sub_1D7260D6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7260D5C();
  sub_1D5BE1514(0);
  sub_1D726054C();
  return (*(v5 + 8))(v8, v4);
}

void sub_1D6D0F50C(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF1B470)
  {
    sub_1D6D0F5DC(255, &qword_1EDF1B468, type metadata accessor for FeedBannerAd, MEMORY[0x1E69E62F8]);
    sub_1D5B67994(255, &qword_1EDF1AE00, &qword_1EDF3C5D0, MEMORY[0x1E69E7280], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1B470);
    }
  }
}

void sub_1D6D0F5DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6D0F640(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = *(v3 + 56);
  v12 = *(sub_1D725FACC() - 8);
  return sub_1D6D0E2AC(a1, a2, *(v3 + 64), *(v3 + 72), *(v3 + 80), v3 + ((*(v12 + 80) + 88) & ~*(v12 + 80)), v6, v7, v8, v9, v10, v11);
}

void sub_1D6D0F78C(uint64_t a1)
{
  sub_1D6D0F5DC(319, &qword_1EDF1B578, sub_1D5BE1514, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D5B49474(319, &qword_1EDF43908, MEMORY[0x1E69B4360]);
    if (v2 <= 0x3F)
    {
      sub_1D725E9DC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D6D0F8DC()
{
  sub_1D5BE1514(0);
  v2 = (v0 + ((*(*(v1 - 8) + 64) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1D6D0F398(*v2, v2[1], v2[2], v2[3]);
}

uint64_t sub_1D6D0FA44(uint64_t a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1D725811C();

  return v3;
}

void *sub_1D6D0FBB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A7A0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A770, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3EE20, &protocol descriptor for PuzzleHistoryServiceType, 1);
  result = sub_1D725AACC();
  if (!v12)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1A830, 0x1E69B53F8);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AC30, 0x1E69B5678);
  result = sub_1D725AABC();
  if (result)
  {
    v8 = result;
    v9 = type metadata accessor for PuzzleNotificationAutoEnableManager();
    v10 = swift_allocObject();
    v10[7] = v5;
    result = sub_1D5B63F14(&v11, (v10 + 2));
    v10[8] = v6;
    v10[9] = v7;
    v10[10] = v8;
    a2[3] = v9;
    a2[4] = &off_1F51A8098;
    *a2 = v10;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_1D6D0FDAC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB10, 0x1E69B51C0);
  result = sub_1D725AABC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for LocalRecipeManager();
    v6 = swift_allocObject();
    result = sub_1D605DC44(MEMORY[0x1E69E7CC0]);
    *(v6 + 16) = v4;
    *(v6 + 24) = result;
    a2[3] = v5;
    a2[4] = &protocol witness table for LocalRecipeManager;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OfflineManager.State.description.getter()
{
  if (*(v0 + 8))
  {
    return 0x656E696C66666FLL;
  }

  else
  {
    return 0x656E696C6E6FLL;
  }
}

BOOL static OfflineManager.State.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = a2[6];
  if (!v3)
  {
    if (!v10)
    {
      v19 = *a2;
      v20 = a2[2];
      v21 = a2[3];
      sub_1D5C39354(*a1, 0, v5, v4, v7, v6, v8);
      sub_1D5C39354(v19, 0, v20, v21, v14, v13, v15);
      return 1;
    }

    goto LABEL_5;
  }

  if (!v10)
  {
LABEL_5:
    v26 = *a2;
    v28 = a2[2];
    v30 = a2[3];
    v31 = a2[5];
    v18 = a1[6];
    sub_1D6D10118(*a2, v10);
    sub_1D6D10118(v2, v3);
    sub_1D5C39354(v2, v3, v5, v4, v7, v6, v18);
    sub_1D5C39354(v26, v10, v28, v30, v14, v31, v15);
    return 0;
  }

  v33[0] = *a1;
  v33[1] = v3;
  v33[2] = v5;
  v33[3] = v4;
  v33[4] = v7;
  v33[5] = v6;
  v33[6] = v8;
  v32[0] = v9;
  v32[1] = v10;
  v32[2] = v12;
  v32[3] = v11;
  v32[4] = v14;
  v32[5] = v13;
  v32[6] = v15;
  v24 = v7;
  v16 = v9;
  v29 = v11;
  v23 = v8;
  v27 = v12;
  v25 = v15;
  v17 = _s8NewsFeed12OfflineModelV2eeoiySbAC_ACtFZ_0(v33, v32);
  sub_1D6D10118(v16, v10);
  sub_1D6D10118(v2, v3);
  sub_1D5C39354(v2, v3, v5, v4, v24, v6, v23);
  sub_1D5C39354(v16, v10, v27, v29, v14, v13, v25);
  return v17;
}

uint64_t sub_1D6D10118(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id OfflineManager.clear()()
{
  v1 = (v0 + qword_1EC894F50);
  v2 = *(v0 + qword_1EC894F50);
  v3 = *(v0 + qword_1EC894F50 + 8);
  *v1 = 0;
  v1[1] = 0;
  sub_1D5B74328(v2, v3);

  return v5;
}

Swift::Void __swiftcall OfflineManager.triggerIfOffline()()
{
  OfflineManager.state.getter(&v7);
  if (*(&v7 + 1))
  {
    sub_1D5C39354(v7, *(&v7 + 1), v8, *(&v8 + 1), v9, *(&v9 + 1), v10);
    v1 = *(v0 + qword_1EC894F50);
    if (v1)
    {
      v2 = *(v0 + qword_1EC894F50 + 8);

      OfflineManager.state.getter(&v7);
      v3 = v7;
      v4 = v8;
      v5 = v9;
      v6 = v10;
      v1(&v3);
      sub_1D5B74328(v1, v2);
      sub_1D5C39354(v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6);
    }
  }
}

void sub_1D6D1028C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  _s8NewsFeed14OfflineManagerC28networkReachabilityDidChangeyySo09FCNetworkF4Type_pSgF_0();
  swift_unknownObjectRelease();
}

id OfflineManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OfflineManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s8NewsFeed14OfflineManagerC28networkReachabilityDidChangeyySo09FCNetworkF4Type_pSgF_0()
{
  v1 = *(v0 + qword_1EC894F50);
  if (v1)
  {
    v2 = *(v0 + qword_1EC894F50 + 8);

    OfflineManager.state.getter(v7);
    v3 = v7[0];
    v4 = v7[1];
    v5 = v7[2];
    v6 = v8;
    v1(&v3);
    sub_1D5B74328(v1, v2);
    sub_1D5C39354(v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6);
  }
}

uint64_t sub_1D6D104CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6D1051C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_1D6D1057C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

void sub_1D6D10728(void *a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  v1 = [a1 sublayers];
  if (v1)
  {
    v2 = v1;
    sub_1D5B5A498(0, &unk_1EDF1A700, 0x1E6979398);
    v3 = sub_1D726267C();

    if (v3 >> 62)
    {
      v4 = sub_1D7263BFC();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        if (v4 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v4; ++i)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x1DA6FB460](i, v3);
          }

          else
          {
            v6 = *(v3 + 8 * i + 32);
          }

          v7 = v6;
          type metadata accessor for FormatBorderLayer();
          if (swift_dynamicCastClass())
          {
            v8 = v7;
            MEMORY[0x1DA6F9CE0]();
            if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
            }

            sub_1D726278C();
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_1D6D108BC(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = *(a3 + 24);
  v7 = *(a3 + 25);
  v8 = a3[4];
  v9 = *a4;
  v10 = *(a4 + 8);
  v11 = *(a4 + 16);
  v133[0] = a3[2];
  sub_1D6013498();
  v13 = v12;
  v110 = v4;
  v114 = v6;
  v115 = v5;
  v116 = v11;
  if (v12 == 0.0)
  {
    return;
  }

  v109 = v9;
  v14 = v11;
  if (v11 <= 0xFFFFFFFD)
  {
    v16 = a1;
    v15 = v5;
    v17 = v10;
    v18 = v8;
    if ((v14 & 0x80000000) != 0)
    {
      goto LABEL_69;
    }

    v24 = *(v17 + 16);
    if (v24)
    {
      v25 = 0;
      v26 = (v17 + 32);
      v27 = (v17 + 32);
      v28 = *(v17 + 16);
      do
      {
        v29 = *v27++;
        v30 = qword_1D7349D08[v29];
        if ((v30 & ~v25) == 0)
        {
          v30 = 0;
        }

        v25 |= v30;
        --v28;
      }

      while (v28);
      if (v25 == -1)
      {
        goto LABEL_69;
      }

      v31 = 0;
      do
      {
        v32 = *v26++;
        v33 = qword_1D7349D08[v32];
        if ((v33 & ~v31) == 0)
        {
          v33 = 0;
        }

        v31 |= v33;
        --v24;
      }

      while (v24);
      if (v31 == 15)
      {
LABEL_69:
        if (*(v5 + 16) == 1)
        {

          sub_1D5FCFC4C(v34, v133);

          if (LOBYTE(v133[0]) == 4 && !*(v8 + 16))
          {
            [a1 bounds];
            if ((v14 & 0x80000000) != 0)
            {
              v96 = v91;
              v97 = v13;
              v98 = v92;
              v99 = v93;
              v100 = v94;
              Height = CGRectGetHeight(*&v91);
              v136.origin.x = v96;
              v136.origin.y = v98;
              v13 = v97;
              v136.size.width = v99;
              v136.size.height = v100;
              Width = CGRectGetWidth(v136);
              if (Width >= Height)
              {
                Width = Height;
              }

              v95 = Width * 0.5;
            }

            else
            {
              v95 = *&v109;
              sub_1D5ED34B0(v109, v17, v14);
            }

            [a1 setCornerRadius_];
            v133[0] = v4;
            v104 = FormatColor.color.getter(v103);
            v22 = [(objc_class *)v104 resolvedColorWithTraitCollection:a2];

            v23 = [v22 CGColor];
            goto LABEL_63;
          }
        }
      }
    }
  }

  else
  {
    v15 = v5;
    v16 = a1;
    v17 = v10;
    v18 = v8;
    if (*(v5 + 16) == 1)
    {

      sub_1D5FCFC4C(v19, v133);

      if (LOBYTE(v133[0]) == 4 && !*(v8 + 16))
      {
        v133[0] = v4;
        v21 = FormatColor.color.getter(v20);
        v22 = [(objc_class *)v21 resolvedColorWithTraitCollection:a2];

        v23 = [v22 CGColor];
LABEL_63:
        v105 = v23;

        [v16 setBorderColor_];

        [v16 setBorderWidth_];
        return;
      }
    }
  }

  v107 = v7;
  v108 = v17;
  Mutable = CGPathCreateMutable();
  v35 = v15 + 56;
  v36 = 1 << *(v15 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v15 + 56);
  v39 = (v36 + 63) >> 6;

  v40 = 0;
  v41 = &off_1E84D3000;
  v112 = v15 + 56;
  v113 = v18;
  v111 = v39;
  while (v38)
  {
LABEL_30:
    v126 = *(*(v15 + 48) + (__clz(__rbit64(v38)) | (v40 << 6)));
    [v16 v41[222]];
    v117 = v38;
    if (v14 <= 0xFFFFFFFD)
    {
      v119 = v46;
      v50 = v45;
      v51 = v44;
      v52 = v43;
      v48 = v108;
      sub_1D5ED34C4(v109, v108, v14);
      [v16 v41[222]];
      v57 = v14;
      v47 = *&v109;
      if ((v14 & 0x80000000) != 0)
      {
        v58 = v53;
        v106 = v13;
        v59 = v54;
        v60 = v55;
        v61 = v56;
        v62 = CGRectGetHeight(*&v53);
        v135.origin.x = v58;
        v135.origin.y = v59;
        v13 = v106;
        v135.size.width = v60;
        v135.size.height = v61;
        v63 = CGRectGetWidth(v135);
        if (v63 >= v62)
        {
          v63 = v62;
        }

        v47 = v63 * 0.5;
        v57 = v109;
        v48 = &unk_1F50F49C8;
      }

      v49 = v57 & 1;
      v43 = v52;
      v44 = v51;
      v45 = v50;
      v46 = v119;
    }

    else
    {
      v47 = 0.0;
      v48 = 0;
      v49 = 0;
    }

    *v124 = v47;
    v124[1] = v48;
    v125 = v49;
    v123 = v114;
    v64 = sub_1D7015C14(v124, &v123, v43, v44, v45, v46, v13);

    v65 = *(v64 + 2);
    if (v65)
    {
      v66 = (v64 + 64);
      do
      {
        v69 = *(v66 - 4);
        v68 = *(v66 - 3);
        v71 = *(v66 - 2);
        v70 = *(v66 - 1);
        v72 = *v66;
        if (*v66)
        {
          sub_1D6959FD8(*(v66 - 4), *(v66 - 3), *(v66 - 2), *(v66 - 1), *v66);
          v67 = [v69 CGPath];
          v133[1] = 0;
          v133[2] = 0;
          v133[0] = 0x3FF0000000000000;
          v133[3] = 0x3FF0000000000000;
          v133[4] = 0;
          v133[5] = 0;
          sub_1D7262EFC();
          sub_1D6959FF0(v69, v68, v71, v70, v72);
        }

        else
        {
          sub_1D620967C(0);
          v73 = swift_allocObject();
          *(v73 + 16) = xmmword_1D7270C10;
          *(v73 + 32) = v69;
          *(v73 + 40) = v68;
          *(v73 + 48) = v71;
          *(v73 + 56) = v70;
          v128 = 0;
          v129 = 0;
          v127 = 0x3FF0000000000000;
          v130 = 0x3FF0000000000000;
          v131 = 0;
          v132 = 0;
          sub_1D7262F3C();
        }

        v66 += 40;
        --v65;
      }

      while (v65);
    }

    v38 = (v117 - 1) & v117;

    v16 = a1;
    v35 = v112;
    v18 = v113;
    v41 = &off_1E84D3000;
    v14 = v116;
    v15 = v115;
    v39 = v111;
  }

  while (1)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      return;
    }

    if (v42 >= v39)
    {
      break;
    }

    v38 = *(v35 + 8 * v42);
    ++v40;
    if (v38)
    {
      v40 = v42;
      goto LABEL_30;
    }
  }

  v75 = sub_1D6209084(v74);
  if (!v75)
  {
    v75 = [objc_allocWithZone(type metadata accessor for FormatBorderLayer()) init];
  }

  v76 = v107;
  v77 = v75;
  [v77 setPath_];
  v78 = [objc_opt_self() clearColor];
  v79 = [v78 CGColor];

  [v77 setFillColor_];
  v124[0] = v110;
  v81 = FormatColor.color.getter(v80);
  v82 = [(objc_class *)v81 resolvedColorWithTraitCollection:a2];

  v83 = [v82 CGColor];
  [v77 setStrokeColor_];

  [v77 setLineWidth_];
  v124[0] = MEMORY[0x1E69E7CC0];
  v84 = *(v18 + 16);
  if (v84)
  {

    v85 = 32;
    do
    {
      v86 = *(v18 + v85);
      v87 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v88) = v86;
      if ([v87 initWithFloat_])
      {
        MEMORY[0x1DA6F9CE0]();
        if (*((v124[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
          v41 = &off_1E84D3000;
        }

        sub_1D726278C();
      }

      v85 += 4;
      --v84;
    }

    while (v84);

    v76 = v107;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
  v89 = sub_1D726265C();

  [v77 setLineDashPattern_];

  v90 = **(&unk_1E84D00C0 + v76);
  [v77 setLineCap_];

  v121 = v77;
  [v16 v41[222]];
  [v121 setFrame_];

  [v16 addSublayer_];
}

void sub_1D6D111F4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = *a4;
  v11 = a4[1];
  v13 = *(a4 + 16);
  [a1 setBorderColor_];
  [a1 setBorderWidth_];
  sub_1D6D10728(a1);
  v15 = v14;
  v38 = v14;
  if (a3)
  {
    v16 = *(a3 + 16);
    if (v16)
    {
      v31 = a5;
      v32 = a6;
      v30 = a2;
      v17 = a1;
      v18 = (a3 + 64);
      v19 = v11;
      v20 = v13;
      do
      {
        v22 = *(v18 - 4);
        v21 = *(v18 - 3);
        v23 = *(v18 - 2);
        v24 = *(v18 - 4);
        v25 = *v18;
        v18 += 5;
        v35[0] = v22;
        v35[1] = v21;
        v35[2] = v23;
        v36 = v24;
        v37 = v25;
        v33[0] = v12;
        v33[1] = v19;
        v34 = v20;

        sub_1D6D108BC(v17, v30, v35, v33);

        --v16;
      }

      while (v16);
      v15 = v38;
    }
  }

  if (v15 >> 62)
  {
    v26 = sub_1D7263BFC();
    if (!v26)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v26 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_15;
    }
  }

  if (v26 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v26; ++i)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1DA6FB460](i, v15);
    }

    else
    {
      v28 = *(v15 + 8 * i + 32);
    }

    v29 = v28;
    [v28 removeFromSuperlayer];
  }

LABEL_15:
}

double sub_1D6D113D4(__n128 a1)
{
  sub_1D725C6FC();
  sub_1D725C77C();

  sub_1D725C6FC();
  sub_1D725C77C();

  sub_1D725C6FC();
  sub_1D725C77C();

  sub_1D725C6FC();
  sub_1D725C77C();

  sub_1D725C6FC();
  sub_1D725C77C();

  return result;
}

void sub_1D6D114D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = *(v6 + 80);
  v8[3] = *(v6 + 88);
  v8[4] = v7;
  v8[5] = a1;
  v8[6] = a2;
  sub_1D6D11CAC(0, &qword_1EDF17B98, MEMORY[0x1E69D6770]);
  v10 = objc_allocWithZone(v9);

  v11 = sub_1D725B3AC();
  [v3[9] addOperation_];
}

uint64_t sub_1D6D1160C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D725C59C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69D6188], v2, v5);
  sub_1D725C84C();
  return (*(v3 + 8))(v7, v2);
}

void sub_1D6D11728(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 72);

    [v2 setSuspended_];
  }
}

void sub_1D6D117A0()
{
  sub_1D725C6BC();
  sub_1D725C66C();
  if (!v0)
  {

    sub_1D725C6EC();
    sub_1D725C76C();

    sub_1D725C6BC();
    sub_1D725C66C();

    sub_1D725C6EC();
    sub_1D725C76C();

    sub_1D725C6BC();
    sub_1D725C66C();

    sub_1D725C6EC();
    sub_1D725C76C();

    sub_1D725C6BC();
    sub_1D725C66C();

    sub_1D725C6EC();
    sub_1D725C76C();

    sub_1D725C6BC();
    sub_1D725C66C();

    sub_1D725C6EC();
    sub_1D725C76C();
  }
}

uint64_t sub_1D6D11988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1D725C59C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B67AC4(0, &qword_1EDF16870, MEMORY[0x1E69E7FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v15 - v10;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D7261ADC();
    v12 = sub_1D7261B2C();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
    (*(v4 + 104))(v7, *MEMORY[0x1E69D6188], v3);
    v13 = sub_1D725C7CC();
    (*(v4 + 8))(v7, v3);
    sub_1D5FD676C(v11);

    return v13;
  }

  else
  {
    sub_1D6D11CAC(0, &qword_1EDF3B8E0, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

uint64_t sub_1D6D11BCC()
{

  return v0;
}

uint64_t sub_1D6D11C24()
{
  sub_1D6D11BCC();

  return swift_deallocClassInstance();
}

void sub_1D6D11CAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA8] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6D11D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q0>)
{
  v67 = a5;
  sub_1D6D165B0(0, a6);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D165E4(0);
  v58 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v57 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D17098(0);
  v61 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v59 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D17140(0);
  v65 = v20;
  v62 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v60 = v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D17354(0);
  v66 = v23;
  v64 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v63 = v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D726290C();

  v26 = sub_1D72628FC();
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = a1;
  v27[5] = a2;
  v27[6] = a3;
  v27[7] = a4;

  v29 = sub_1D72628FC();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = v28;
  v30[4] = a1;
  v30[5] = a2;
  v30[6] = a3;
  v30[7] = a4;
  sub_1D72619BC();
  v56 = aBlock;
  v55 = v73;
  v54[1] = v74;
  v31 = swift_allocObject();
  v31[2] = a1;
  v31[3] = a2;
  v31[4] = a3;
  v31[5] = a4;
  v68 = a1;
  v69 = a2;
  v70 = a3;
  v71 = a4;
  type metadata accessor for DebugFormatWorkspaceTreeWorkspaceHeaderView(0);
  sub_1D6D16704(0, v32);
  sub_1D6D18708(&qword_1EC8950D8, type metadata accessor for DebugFormatWorkspaceTreeWorkspaceHeaderView, &unk_1D734774C);
  sub_1D6D18708(&qword_1EC8950E0, sub_1D6D16704, MEMORY[0x1E6981F48]);

  v33 = v57;
  sub_1D7260FFC();
  v34 = v33 + *(v58 + 44);
  *v34 = xmmword_1D7286690;
  *(v34 + 16) = xmmword_1D72866A0;
  *(v34 + 32) = 0;
  if (sub_1D6D13A54(a1, a2, a3, a4))
  {
    v35 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v76 = sub_1D6D17480;
    v77 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v73 = 1107296256;
    v74 = sub_1D6E0CD34;
    v75 = &block_descriptor_93;
    v36 = _Block_copy(&aBlock);
    [v35 initWithDynamicProvider_];
    _Block_release(v36);

    v37 = sub_1D726189C();
  }

  else
  {
    v37 = sub_1D726185C();
  }

  aBlock = v37;
  v38 = sub_1D726199C();
  v39 = v59;
  sub_1D6D174F0(v33, v59, sub_1D6D165E4);
  v40 = v61;
  *(v39 + *(v61 + 36)) = v38;
  sub_1D7260EDC();
  v41 = sub_1D6D171C4();
  v42 = v60;
  sub_1D72617DC();
  sub_1D6D18B48(v39, sub_1D6D17098);
  sub_1D72613DC();
  v43 = sub_1D72613EC();
  v44 = *(*(v43 - 8) + 56);
  v44(v13, 0, 1, v43);
  v45 = sub_1D726160C();
  aBlock = v40;
  v73 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v63;
  v48 = v65;
  MEMORY[0x1DA6F8EA0](v13, v45, v65, OpaqueTypeConformance2);
  sub_1D6D18B48(v13, sub_1D6D165B0);
  (*(v62 + 8))(v42, v48);
  sub_1D72613DC();
  v44(v13, 0, 1, v43);
  v49 = sub_1D72615FC();
  aBlock = v48;
  v73 = OpaqueTypeConformance2;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v49;
  v52 = v66;
  MEMORY[0x1DA6F8EA0](v13, v51, v66, v50);
  sub_1D6D18B48(v13, sub_1D6D165B0);
  return (*(v64 + 8))(v47, v52);
}

uint64_t sub_1D6D12478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v227 = a4;
  v192 = a5;
  v193 = a3;
  v216 = a2;
  v225 = a1;
  sub_1D6D16F24(0);
  v187 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v213 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D16EF0(0);
  v189 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v215 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v188 = &v177 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v214 = &v177 - v18;
  sub_1D6D16CF4(0);
  v184 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v202 = &v177 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D16CC0(0);
  v186 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v191 = &v177 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v185 = &v177 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v221 = &v177 - v30;
  sub_1D6D16AC8(0);
  v177 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v180 = &v177 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D16A94(0);
  KeyPath = v34;
  MEMORY[0x1EEE9AC00](v34, v35);
  v190 = &v177 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v178 = &v177 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v220 = &v177 - v42;
  sub_1D6D16738(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v46 = &v177 - v45;
  v47 = type metadata accessor for DebugFormatWorkspace(0);
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47, v50);
  v51 = &v177 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v177 - v54;
  v56 = *(a2 + 16);
  v194 = v57;
  v58 = (a4 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace + *(v57 + 20));
  v59 = v58[10];
  v217 = v58[9];
  v60 = v58[11];
  v226 = a4 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
  sub_1D6D18C68(a4 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace, &v177 - v54, type metadata accessor for DebugFormatWorkspace);
  v206 = v55;
  sub_1D6D174F0(v55, v51, type metadata accessor for DebugFormatWorkspace);
  v61 = *(v48 + 80);
  v62 = (v61 + 16) & ~v61;
  v204 = v61;
  v63 = swift_allocObject();
  v205 = v62;
  *&v223 = v51;
  sub_1D6D174F0(v51, v63 + v62, type metadata accessor for DebugFormatWorkspace);
  v244 = 0;
  v243 = 0;
  LOBYTE(v245) = -1;
  sub_1D5B49DA8(0, &unk_1EC88AAB8, &type metadata for DebugFormatFeedViewDescriptor, MEMORY[0x1E69E6720]);
  v65 = v64;
  sub_1D72618EC();
  v210 = v259;
  v211 = v258;
  v209 = v260;
  v212 = v261;
  v66 = sub_1D726294C();
  v67 = *(v66 - 8);
  v68 = *(v67 + 56);
  v200 = v67 + 56;
  v201 = v68;
  v68(v46, 1, 1, v66);
  sub_1D726290C();
  v222 = v60;

  v219 = v56;

  v218 = v59;

  v69 = sub_1D72628FC();
  v70 = swift_allocObject();
  v71 = MEMORY[0x1E69E85E0];
  v70[2] = v69;
  v70[3] = v71;
  v70[4] = &unk_1D7349F30;
  v70[5] = v63;
  *&v224 = v46;
  v208 = sub_1D6737878(0, 0, v46, &unk_1D7349F38, v70);

  v72 = v193;
  v73 = v227;
  if (sub_1D6D13A54(v225, v216, v193, v227))
  {
    v74 = [objc_opt_self() secondarySystemBackgroundColor];
    v75 = sub_1D726189C();
  }

  else
  {
    v75 = sub_1D726185C();
  }

  v258 = v75;
  v76 = sub_1D726199C();
  v207 = v76;
  if (v222 && (v78 = *(v222 + 48), v78 != 2) && (v78 & 1) != 0)
  {
    v79 = v206;
    sub_1D6D18C68(v226, v206, type metadata accessor for DebugFormatWorkspace);
    v80 = v223;
    sub_1D6D174F0(v79, v223, type metadata accessor for DebugFormatWorkspace);
    v206 = v65;
    v81 = v205;
    v82 = swift_allocObject();
    sub_1D6D174F0(v80, v82 + v81, type metadata accessor for DebugFormatWorkspace);
    v244 = 0;
    v243 = 0;
    LOBYTE(v245) = -1;
    sub_1D72618EC();
    v205 = v259;
    v206 = v258;
    v203 = v260;
    v204 = v261;
    v83 = v224;
    v201(v224, 1, 1, v66);

    v84 = sub_1D72628FC();
    v85 = swift_allocObject();
    v85[2] = v84;
    v85[3] = MEMORY[0x1E69E85E0];
    v85[4] = &unk_1D7349FB0;
    v85[5] = v82;
    v201 = sub_1D6737878(0, 0, v83, &unk_1D7349FB8, v85);

    LOBYTE(v258) = 0;
    v182 = 0;
    v86 = v72;
    v87 = v73;
    if (sub_1D6D13A54(v225, v216, v72, v73))
    {
      v88 = [objc_opt_self() secondarySystemBackgroundColor];
      v89 = sub_1D726189C();
    }

    else
    {
      v89 = sub_1D726185C();
    }

    v258 = v89;
    v76 = sub_1D726199C();
    v183 = v76;
    v181 = 65792;
    v199 = v217;
    v200 = v219;
    v197 = 0x4030000000000000;
    v198 = v218;
    v195 = 0xC038000000000000;
    v196 = v222;
  }

  else
  {
    v199 = 0;
    v200 = 0;
    v197 = 0;
    v198 = 0;
    v195 = 0;
    v196 = 0;
    v201 = 0;
    v205 = 0;
    v206 = 0;
    v203 = 0;
    v204 = 0;
    v182 = 0;
    v183 = 0;
    v181 = 0;
    v87 = v73;
    v86 = v72;
  }

  v90 = v216;
  MEMORY[0x1EEE9AC00](v76, v77);
  v91 = sub_1D5FBD7E0(sub_1D6D176F4, (&v177 - 4), &unk_1F5113478);
  sub_1D6302530(v91);
  v93 = v92;

  v258 = v93;
  swift_getKeyPath();
  v94 = swift_allocObject();
  v95 = v225;
  v94[2] = v225;
  v94[3] = v90;
  v94[4] = v86;
  v94[5] = v87;
  v96 = swift_allocObject();
  *(v96 + 16) = sub_1D6D17710;
  *(v96 + 24) = v94;
  sub_1D6D16C20(0);
  sub_1D6D18708(&qword_1EC895058, sub_1D6D16C20, MEMORY[0x1E69E6338]);
  v97 = sub_1D6D17750();

  v176 = v97;
  v98 = v180;
  sub_1D72619DC();
  sub_1D6D16B30(0);
  v100 = v98 + *(v99 + 36);
  v223 = xmmword_1D72866A0;
  v224 = xmmword_1D7349E30;
  *v100 = xmmword_1D7349E30;
  *(v100 + 16) = xmmword_1D72866A0;
  *(v100 + 32) = 0;
  sub_1D6D16AFC(0);
  *(v98 + *(v101 + 36)) = 1;
  *(v98 + *(v177 + 36)) = 1;
  if (sub_1D6D13A54(v95, v90, v86, v87))
  {
    v102 = [objc_opt_self() secondarySystemBackgroundColor];
    v103 = sub_1D726189C();
  }

  else
  {
    v103 = sub_1D726185C();
  }

  v258 = v103;
  v104 = sub_1D726199C();
  v105 = v178;
  sub_1D6D174F0(v98, v178, sub_1D6D16AC8);
  *(v105 + *(KeyPath + 36)) = v104;
  sub_1D6D174F0(v105, v220, sub_1D6D16A94);
  v258 = *(v226 + *(v194 + 32));
  KeyPath = swift_getKeyPath();
  v106 = swift_allocObject();
  v107 = v225;
  v106[2] = v225;
  v106[3] = v90;
  v106[4] = v86;
  v106[5] = v87;
  sub_1D5EF3A64(0);
  sub_1D6D18708(&qword_1EC8848F0, sub_1D5EF3A64, MEMORY[0x1E69E6338]);
  v108 = v86;
  v109 = sub_1D68C37D4();

  v180 = v109;
  v176 = v109;
  v110 = v108;
  v111 = v202;
  sub_1D72619DC();
  v112 = swift_allocObject();
  v112[2] = v107;
  v112[3] = v90;
  v113 = v227;
  v112[4] = v110;
  v112[5] = v113;
  v114 = swift_allocObject();
  *(v114 + 16) = sub_1D6D177B0;
  *(v114 + 24) = v112;
  sub_1D6D16DC4(0);
  v116 = (v111 + *(v115 + 36));
  *v116 = sub_1D6D177BC;
  v116[1] = v114;
  v117 = swift_allocObject();
  v117[2] = v107;
  v117[3] = v90;
  v118 = v227;
  v117[4] = v110;
  v117[5] = v118;
  v119 = swift_allocObject();
  *(v119 + 16) = sub_1D6D177C4;
  *(v119 + 24) = v117;
  sub_1D6D16D90(0);
  v121 = (v111 + *(v120 + 36));
  *v121 = sub_1D6D177D0;
  v121[1] = v119;
  swift_retain_n();
  swift_retain_n();
  sub_1D62D7C2C();
  LOBYTE(v119) = sub_1D61881BC();

  sub_1D6D16D5C(0);
  *(v111 + *(v122 + 36)) = (v119 & 1) == 0;
  sub_1D62D7C2C();
  LOBYTE(v119) = sub_1D61881BC();

  sub_1D6D16D28(0);
  *(v111 + *(v123 + 36)) = (v119 & 1) == 0;
  v124 = v111 + *(v184 + 36);
  v125 = v223;
  *v124 = v224;
  *(v124 + 16) = v125;
  *(v124 + 32) = 0;
  v126 = v90;
  if (sub_1D6D13A54(v107, v90, v110, v227))
  {
    v127 = [objc_opt_self() secondarySystemBackgroundColor];
    v128 = sub_1D726189C();
  }

  else
  {
    v128 = sub_1D726185C();
  }

  v258 = v128;
  v129 = sub_1D726199C();
  v130 = v185;
  sub_1D6D174F0(v202, v185, sub_1D6D16CF4);
  *(v130 + *(v186 + 36)) = v129;
  sub_1D6D174F0(v130, v221, sub_1D6D16CC0);
  v258 = *(v226 + *(v194 + 36));
  swift_getKeyPath();
  v131 = swift_allocObject();
  v132 = v225;
  v131[2] = v225;
  v131[3] = v90;
  v133 = v132;
  v134 = v227;
  v131[4] = v110;
  v131[5] = v134;
  sub_1D6D17064(0);
  sub_1D6D18708(&qword_1EC8950D0, sub_1D6D17064, MEMORY[0x1E69E6338]);

  v176 = v180;
  v135 = v213;
  sub_1D72619DC();
  v136 = swift_allocObject();
  v137 = v133;
  v136[2] = v133;
  v136[3] = v126;
  v138 = v193;
  v136[4] = v193;
  v136[5] = v134;
  v139 = swift_allocObject();
  *(v139 + 16) = sub_1D6D177E4;
  *(v139 + 24) = v136;
  sub_1D6D16FF4(0);
  v141 = (v135 + *(v140 + 36));
  *v141 = sub_1D6D18CD4;
  v141[1] = v139;
  v142 = swift_allocObject();
  v142[2] = v137;
  v142[3] = v126;
  v142[4] = v138;
  v142[5] = v134;
  v143 = swift_allocObject();
  *(v143 + 16) = sub_1D6D177F0;
  *(v143 + 24) = v142;
  sub_1D6D16FC0(0);
  v145 = (v135 + *(v144 + 36));
  *v145 = sub_1D6D18CE0;
  v145[1] = v143;
  swift_retain_n();
  swift_retain_n();
  sub_1D62D7C2C();
  LOBYTE(v143) = sub_1D61881BC();

  sub_1D6D16F8C(0);
  *(v135 + *(v146 + 36)) = (v143 & 1) == 0;
  sub_1D62D7C2C();
  LOBYTE(v143) = sub_1D61881BC();

  sub_1D6D16F58(0);
  *(v135 + *(v147 + 36)) = (v143 & 1) == 0;
  v148 = v135 + *(v187 + 36);
  v149 = v223;
  *v148 = v224;
  *(v148 + 16) = v149;
  *(v148 + 32) = 0;
  if (sub_1D6D13A54(v137, v126, v138, v134))
  {
    v150 = [objc_opt_self() secondarySystemBackgroundColor];
    v151 = sub_1D726189C();
  }

  else
  {
    v151 = sub_1D726185C();
  }

  v258 = v151;
  v152 = sub_1D726199C();
  v153 = v188;
  sub_1D6D174F0(v213, v188, sub_1D6D16F24);
  *(v153 + *(v189 + 36)) = v152;
  v154 = v214;
  sub_1D6D174F0(v153, v214, sub_1D6D16EF0);
  v155 = v181 | v182;
  v227 = v181 | v182;
  v156 = v190;
  sub_1D6D18C68(v220, v190, sub_1D6D16A94);
  v157 = v191;
  sub_1D6D18C68(v221, v191, sub_1D6D16CC0);
  sub_1D6D18C68(v154, v215, sub_1D6D16EF0);
  *&v228 = v219;
  *(&v228 + 1) = v217;
  *&v229 = v218;
  *(&v229 + 1) = v222;
  *&v230 = v208;
  *(&v230 + 1) = v211;
  *&v231 = v210;
  BYTE8(v231) = v209;
  HIDWORD(v231) = *(v275 + 3);
  *(&v231 + 9) = v275[0];
  *&v232[0] = v212;
  *(v232 + 8) = v224;
  *(&v232[1] + 8) = v223;
  WORD4(v232[2]) = 256;
  BYTE10(v232[2]) = 1;
  HIBYTE(v232[2]) = v277;
  *(&v232[2] + 11) = v276;
  v233 = v207;
  v159 = v232[0];
  v158 = v232[1];
  v160 = v232[2];
  v161 = v192;
  *(v192 + 112) = v207;
  *(v161 + 80) = v158;
  *(v161 + 96) = v160;
  v162 = v228;
  v163 = v229;
  v164 = v230;
  *(v161 + 48) = v231;
  *(v161 + 64) = v159;
  *(v161 + 16) = v163;
  *(v161 + 32) = v164;
  *v161 = v162;
  *&v234 = v200;
  *(&v234 + 1) = v199;
  *&v235 = v198;
  *(&v235 + 1) = v196;
  *&v236 = v201;
  *(&v236 + 1) = v206;
  *&v237 = v205;
  *(&v237 + 1) = v203;
  v238 = v204;
  v239 = 0;
  v240 = v195;
  *&v241 = v197;
  *(&v241 + 1) = v155;
  v165 = v183;
  v242 = v183;
  v166 = v234;
  v167 = v204;
  *(v161 + 168) = v237;
  v168 = v235;
  *(v161 + 152) = v236;
  *(v161 + 136) = v168;
  *(v161 + 120) = v166;
  v169 = v240;
  v170 = v241;
  *(v161 + 232) = v165;
  *(v161 + 216) = v170;
  *(v161 + 200) = v169;
  *(v161 + 184) = v167;
  sub_1D6D1679C(0);
  v172 = v171;
  sub_1D6D18C68(v156, v161 + *(v171 + 64), sub_1D6D16A94);
  sub_1D6D18C68(v157, v161 + *(v172 + 80), sub_1D6D16CC0);
  v173 = v161 + *(v172 + 96);
  v174 = v215;
  sub_1D6D18C68(v215, v173, sub_1D6D16EF0);
  sub_1D6D18C68(&v228, &v258, sub_1D6D1683C);
  sub_1D6D18C68(&v234, &v258, sub_1D6D16A60);
  sub_1D6D18B48(v214, sub_1D6D16EF0);
  sub_1D6D18B48(v221, sub_1D6D16CC0);
  sub_1D6D18B48(v220, sub_1D6D16A94);
  sub_1D6D18B48(v174, sub_1D6D16EF0);
  sub_1D6D18B48(v157, sub_1D6D16CC0);
  sub_1D6D18B48(v156, sub_1D6D16A94);
  v243 = v200;
  v244 = v199;
  v245 = v198;
  v246 = v196;
  v247 = v201;
  v248 = v206;
  v249 = v205;
  v250 = v203;
  v251 = v204;
  v252 = 0;
  v253 = v195;
  v254 = 0;
  v255 = v197;
  v256 = v227;
  v257 = v165;
  sub_1D6D18B48(&v243, sub_1D6D16A60);
  v258 = v219;
  v259 = v217;
  v260 = v218;
  v261 = v222;
  v262 = v208;
  v263 = v211;
  v264 = v210;
  v265 = v209;
  *v266 = v275[0];
  *&v266[3] = *(v275 + 3);
  v267 = v212;
  v268 = v224;
  v269 = v223;
  v270 = 256;
  v271 = 1;
  v273 = v277;
  v272 = v276;
  v274 = v207;
  return sub_1D6D18B48(&v258, sub_1D6D1683C);
}

uint64_t sub_1D6D13A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DebugFormatWorkspace(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (a4 + *(v5 + 20) + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace);
  v15 = *v14;
  v16 = v14[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if ((*(v6 + 48))(v13, 1, v5))
  {
    sub_1D6D18B48(v13, sub_1D60CB67C);
    v17 = 0;
  }

  else
  {
    sub_1D6D18C68(v13, v9, type metadata accessor for DebugFormatWorkspace);
    sub_1D6D18B48(v13, sub_1D60CB67C);
    v18 = &v9[*(v5 + 20)];
    v20 = *v18;
    v19 = *(v18 + 1);

    sub_1D6D18B48(v9, type metadata accessor for DebugFormatWorkspace);
    if (v15 == v20 && v16 == v19)
    {

      v17 = 1;
    }

    else
    {
      v17 = sub_1D72646CC();
    }
  }

  return v17 & 1;
}

uint64_t sub_1D6D13CAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, void *a4@<X8>)
{
  sub_1D6D16738(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v20[-v11 - 8];
  v13 = *(a3 + 16);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  sub_1D6D18C68(v21, v20, sub_1D630BB34);
  sub_1D630BB34(0);
  sub_1D72618EC();
  sub_1D6D18B48(v21, sub_1D630BB34);
  *a4 = v13;
  v14 = sub_1D726294C();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_1D726290C();

  v15 = sub_1D72628FC();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a1;
  v16[5] = a2;
  result = sub_1D6737550(0, 0, v12, &unk_1D734A000, v16);
  a4[1] = result;
  return result;
}

uint64_t sub_1D6D13E80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 16);

  sub_1D62D7C2C();
  v6 = sub_1D61881BC();

  v7 = *(v4 + 16);
  v8 = *(v7 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  v11 = (v7 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  if (!v13)
  {
    v12 = 0x64656C7469746E55;
  }

  v14 = 0xE800000000000000;
  v15 = MEMORY[0x1E69E7CC0];
  *a3 = v5;
  if (v13)
  {
    v14 = v13;
  }

  *(a3 + 8) = v8;
  if (v6)
  {
    v15 = &unk_1F51197A8;
  }

  *(a3 + 16) = v10;
  *(a3 + 24) = v9;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = v12;
  *(a3 + 56) = v14;
  *(a3 + 64) = 0;
  *(a3 + 72) = v15;
}

double sub_1D6D13FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v35 = a4;
  sub_1D6D16738(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v35 - v11;
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
  v15 = a5 + *(type metadata accessor for DebugFormatWorkspace(0) + 20) + v14;
  v16 = *(v15 + 144);
  v17 = *(v15 + 112);
  v44 = *(v15 + 128);
  v45 = v16;
  v18 = *(v15 + 144);
  v46[0] = *(v15 + 160);
  v19 = *(v15 + 80);
  v21 = *(v15 + 48);
  v40 = *(v15 + 64);
  v20 = v40;
  v41 = v19;
  v22 = *(v15 + 80);
  v23 = *(v15 + 112);
  v42 = *(v15 + 96);
  v24 = v42;
  v43 = v23;
  v25 = *(v15 + 16);
  v26 = *(v15 + 48);
  v38 = *(v15 + 32);
  v27 = v38;
  v39 = v26;
  v28 = *(v15 + 16);
  v37[0] = *v15;
  v29 = v37[0];
  v37[1] = v28;
  *(v13 + 144) = v44;
  *(v13 + 160) = v18;
  *(v13 + 176) = *(v15 + 160);
  *(v13 + 80) = v20;
  *(v13 + 96) = v22;
  *(v13 + 112) = v24;
  *(v13 + 128) = v17;
  *(v13 + 16) = v29;
  *(v13 + 32) = v25;
  *(v46 + 15) = *(v15 + 175);
  *(v13 + 191) = *(v15 + 175);
  *(v13 + 48) = v27;
  *(v13 + 64) = v21;
  sub_1D5ECF1C0(v37, &v36);
  sub_1D5B49DA8(0, &qword_1EC886038, &type metadata for FormatWorkspacePackage, MEMORY[0x1E69E62F8]);
  sub_1D6D188D8(&qword_1EC88DB08, MEMORY[0x1E69E6318]);
  sub_1D6D188D8(&qword_1EC88DB10, MEMORY[0x1E69E6348]);
  sub_1D7262D3C();
  v30 = sub_1D726294C();
  (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
  sub_1D726290C();

  v31 = sub_1D72628FC();
  v32 = swift_allocObject();
  v33 = MEMORY[0x1E69E85E0];
  v32[2] = v31;
  v32[3] = v33;
  v32[4] = a2;
  v32[5] = a3;
  v32[6] = v35;
  v32[7] = a5;
  v32[8] = v13;
  sub_1D6736BD4(0, 0, v12, &unk_1D7349FF8, v32);

  return result;
}

double sub_1D6D1428C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v43 = a3;
  v44 = a5;
  sub_1D6D16738(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v42 - v11;
  v13 = sub_1D7258C9C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258C7C();
  sub_1D6D18708(&qword_1EC88DAF0, MEMORY[0x1E6969B50], MEMORY[0x1E6969B70]);
  v18 = sub_1D7261FBC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    v20 = swift_allocObject();
    v21 = OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
    v22 = a6 + *(type metadata accessor for DebugFormatWorkspace(0) + 20) + v21;
    v23 = *(v22 + 144);
    v24 = *(v22 + 112);
    v53 = *(v22 + 128);
    v54 = v23;
    v25 = *(v22 + 144);
    v55[0] = *(v22 + 160);
    v26 = *(v22 + 80);
    v28 = *(v22 + 48);
    v49 = *(v22 + 64);
    v27 = v49;
    v50 = v26;
    v29 = *(v22 + 80);
    v30 = *(v22 + 112);
    v51 = *(v22 + 96);
    v31 = v51;
    v52 = v30;
    v32 = *(v22 + 16);
    v33 = *(v22 + 48);
    v47 = *(v22 + 32);
    v34 = v47;
    v48 = v33;
    v35 = *(v22 + 16);
    v46[0] = *v22;
    v36 = v46[0];
    v46[1] = v35;
    *(v20 + 144) = v53;
    *(v20 + 160) = v25;
    *(v20 + 176) = *(v22 + 160);
    *(v20 + 80) = v27;
    *(v20 + 96) = v29;
    *(v20 + 112) = v31;
    *(v20 + 128) = v24;
    *(v20 + 16) = v36;
    *(v20 + 32) = v32;
    *(v55 + 15) = *(v22 + 175);
    *(v20 + 191) = *(v22 + 175);
    *(v20 + 48) = v34;
    *(v20 + 64) = v28;
    sub_1D5ECF1C0(v46, &v45);
    sub_1D5B49DA8(0, &qword_1EC886038, &type metadata for FormatWorkspacePackage, MEMORY[0x1E69E62F8]);
    sub_1D6D188D8(&qword_1EC88DB08, MEMORY[0x1E69E6318]);
    sub_1D7261F8C();
    v37 = sub_1D726294C();
    (*(*(v37 - 8) + 56))(v12, 1, 1, v37);
    sub_1D726290C();

    v38 = sub_1D72628FC();
    v39 = swift_allocObject();
    v40 = MEMORY[0x1E69E85E0];
    v39[2] = v38;
    v39[3] = v40;
    v41 = v44;
    v39[4] = v43;
    v39[5] = a4;
    v39[6] = v41;
    v39[7] = a6;
    v39[8] = v20;
    sub_1D6736BD4(0, 0, v12, &unk_1D7349FE8, v39);
  }

  return result;
}

void sub_1D6D1463C(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(a1 + *(type metadata accessor for DebugFormatWorkspaceGroup(0) + 20));
  if (v6)
  {
    v7 = *(v6 + 16);
    v8 = *(v7 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    v11 = (v7 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
    swift_beginAccess();
    v13 = *v11;
    v12 = v11[1];
  }

  else
  {
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);

    v13 = 0;
    v12 = 0;
    v8 = 0;
  }

  sub_1D62D7C2C();
  v14 = sub_1D61881BC();

  v15 = MEMORY[0x1E69E7CC0];
  v16 = 0x64656C7469746E55;
  *a3 = v5;
  if (v12)
  {
    v16 = v13;
  }

  v17 = 0xE800000000000000;
  *(a3 + 8) = v8;
  if (v12)
  {
    v17 = v12;
  }

  *(a3 + 16) = v10;
  *(a3 + 24) = v9;
  if (v14)
  {
    v15 = &unk_1F51197D8;
  }

  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = v16;
  *(a3 + 56) = v17;
  *(a3 + 64) = 0;
  *(a3 + 72) = v15;
}

uint64_t sub_1D6D14798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v36 = a4;
  sub_1D6D16738(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v35 - v11;
  v13 = OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
  v14 = a5 + *(type metadata accessor for DebugFormatWorkspace(0) + 20) + v13;
  v15 = *(v14 + 144);
  v16 = *(v14 + 112);
  v57 = *(v14 + 128);
  v58 = v15;
  v17 = *(v14 + 144);
  v59[0] = *(v14 + 160);
  v18 = *(v14 + 80);
  v19 = *(v14 + 48);
  v53 = *(v14 + 64);
  v54 = v18;
  v20 = *(v14 + 80);
  v21 = *(v14 + 112);
  v55 = *(v14 + 96);
  v56 = v21;
  v22 = *(v14 + 16);
  v23 = *(v14 + 48);
  v51 = *(v14 + 32);
  v52 = v23;
  v24 = *(v14 + 16);
  v50[0] = *v14;
  v50[1] = v24;
  v45 = v57;
  v46 = v17;
  v47[0] = *(v14 + 160);
  v41 = v53;
  v42 = v20;
  v43 = v55;
  v44 = v16;
  v37 = v50[0];
  v38 = v22;
  *(v59 + 15) = *(v14 + 175);
  *(v47 + 15) = *(v14 + 175);
  v39 = v51;
  v40 = v19;
  sub_1D5ECF1C0(v50, v60);
  sub_1D6D185FC(0);
  sub_1D6D18708(&qword_1EC88DAE0, sub_1D6D185FC, MEMORY[0x1E69E6318]);
  sub_1D6D18708(&qword_1EC88DAE8, sub_1D6D185FC, MEMORY[0x1E69E6348]);
  sub_1D7262D3C();
  v25 = sub_1D726294C();
  (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  sub_1D726290C();

  v26 = sub_1D72628FC();
  v48[8] = v45;
  v48[9] = v46;
  v49[0] = v47[0];
  *(v49 + 15) = *(v47 + 15);
  v48[4] = v41;
  v48[5] = v42;
  v48[6] = v43;
  v48[7] = v44;
  v48[0] = v37;
  v48[1] = v38;
  v48[2] = v39;
  v48[3] = v40;
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  *(v27 + 16) = v26;
  *(v27 + 24) = v28;
  *(v27 + 32) = a2;
  *(v27 + 40) = a3;
  *(v27 + 48) = v36;
  *(v27 + 56) = a5;
  v29 = v46;
  *(v27 + 192) = v45;
  *(v27 + 208) = v29;
  *(v27 + 224) = v47[0];
  *(v27 + 239) = *(v47 + 15);
  v30 = v42;
  *(v27 + 128) = v41;
  *(v27 + 144) = v30;
  v31 = v44;
  *(v27 + 160) = v43;
  *(v27 + 176) = v31;
  v32 = v38;
  *(v27 + 64) = v37;
  *(v27 + 80) = v32;
  v33 = v40;
  *(v27 + 96) = v39;
  *(v27 + 112) = v33;
  sub_1D5ECF1C0(v48, v60);
  sub_1D6736BD4(0, 0, v12, &unk_1D7349FD8, v27);

  v60[8] = v45;
  v60[9] = v46;
  v61[0] = v47[0];
  *(v61 + 15) = *(v47 + 15);
  v60[4] = v41;
  v60[5] = v42;
  v60[6] = v43;
  v60[7] = v44;
  v60[0] = v37;
  v60[1] = v38;
  v60[2] = v39;
  v60[3] = v40;
  return sub_1D5ECF21C(v60);
}

uint64_t sub_1D6D14B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v42 = a3;
  v43 = a5;
  sub_1D6D16738(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v42 - v11;
  v13 = sub_1D7258C9C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258C7C();
  sub_1D6D18708(&qword_1EC88DAF0, MEMORY[0x1E6969B50], MEMORY[0x1E6969B70]);
  v18 = sub_1D7261FBC();
  result = (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    v20 = OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
    v21 = a6 + *(type metadata accessor for DebugFormatWorkspace(0) + 20) + v20;
    v22 = *(v21 + 144);
    v23 = *(v21 + 112);
    v62 = *(v21 + 128);
    v63 = v22;
    v24 = *(v21 + 144);
    v64[0] = *(v21 + 160);
    v25 = *(v21 + 80);
    v26 = *(v21 + 48);
    v58 = *(v21 + 64);
    v59 = v25;
    v27 = *(v21 + 80);
    v28 = *(v21 + 112);
    v60 = *(v21 + 96);
    v61 = v28;
    v29 = *(v21 + 16);
    v30 = *(v21 + 48);
    v56 = *(v21 + 32);
    v57 = v30;
    v31 = *(v21 + 16);
    v55[0] = *v21;
    v55[1] = v31;
    v52 = v62;
    v53 = v24;
    v54[0] = *(v21 + 160);
    v48 = v58;
    v49 = v27;
    v50 = v60;
    v51 = v23;
    v44 = v55[0];
    v45 = v29;
    *(v64 + 15) = *(v21 + 175);
    *(v54 + 15) = *(v21 + 175);
    v46 = v56;
    v47 = v26;
    sub_1D5ECF1C0(v55, v67);
    sub_1D6D185FC(0);
    sub_1D6D18708(&qword_1EC88DAE0, sub_1D6D185FC, MEMORY[0x1E69E6318]);
    sub_1D7261F8C();
    v32 = sub_1D726294C();
    (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
    sub_1D726290C();

    v33 = sub_1D72628FC();
    v67[8] = v52;
    v67[9] = v53;
    v68[0] = v54[0];
    *(v68 + 15) = *(v54 + 15);
    v67[4] = v48;
    v67[5] = v49;
    v67[6] = v50;
    v67[7] = v51;
    v67[0] = v44;
    v67[1] = v45;
    v67[2] = v46;
    v67[3] = v47;
    v34 = swift_allocObject();
    v35 = MEMORY[0x1E69E85E0];
    *(v34 + 16) = v33;
    *(v34 + 24) = v35;
    v36 = v43;
    *(v34 + 32) = v42;
    *(v34 + 40) = a4;
    *(v34 + 48) = v36;
    *(v34 + 56) = a6;
    v37 = v53;
    *(v34 + 192) = v52;
    *(v34 + 208) = v37;
    *(v34 + 224) = v54[0];
    *(v34 + 239) = *(v54 + 15);
    v38 = v49;
    *(v34 + 128) = v48;
    *(v34 + 144) = v38;
    v39 = v51;
    *(v34 + 160) = v50;
    *(v34 + 176) = v39;
    v40 = v45;
    *(v34 + 64) = v44;
    *(v34 + 80) = v40;
    v41 = v47;
    *(v34 + 96) = v46;
    *(v34 + 112) = v41;
    sub_1D5ECF1C0(v67, v65);
    sub_1D6736BD4(0, 0, v12, &unk_1D7349FC8, v34);

    v65[8] = v52;
    v65[9] = v53;
    v66[0] = v54[0];
    *(v66 + 15) = *(v54 + 15);
    v65[4] = v48;
    v65[5] = v49;
    v65[6] = v50;
    v65[7] = v51;
    v65[0] = v44;
    v65[1] = v45;
    v65[2] = v46;
    v65[3] = v47;
    return sub_1D5ECF21C(v65);
  }

  return result;
}

void sub_1D6D14F48(uint64_t a2@<X5>, _BYTE *a3@<X8>)
{
  v5 = type metadata accessor for DebugFormatWorkspace(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if ((*(v6 + 48))(v13, 1, v5))
  {
    sub_1D6D18B48(v13, sub_1D60CB67C);
    v14 = 0;
  }

  else
  {
    sub_1D6D18C68(v13, v9, type metadata accessor for DebugFormatWorkspace);
    sub_1D6D18B48(v13, sub_1D60CB67C);
    v15 = &v9[*(v5 + 20)];
    v17 = *v15;
    v16 = *(v15 + 1);

    sub_1D6D18B48(v9, type metadata accessor for DebugFormatWorkspace);
    v18 = (a2 + *(v5 + 20) + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace);
    if (v17 == *v18 && v16 == v18[1])
    {

      v14 = 1;
    }

    else
    {
      v14 = sub_1D72646CC();
    }
  }

  *a3 = v14 & 1;
}

double sub_1D6D151A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = type metadata accessor for DebugFormatWorkspace(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v32 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v32 - v23;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if ((*(v9 + 48))(v24, 1, v8))
  {
    sub_1D6D18B48(v24, sub_1D60CB67C);
LABEL_3:
    sub_1D6D18C68(a7 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace, v20, type metadata accessor for DebugFormatWorkspace);
    (*(v9 + 56))(v20, 0, 1, v8);
    sub_1D6D18C68(v20, v16, sub_1D60CB67C);

    sub_1D725B32C();

    sub_1D6D18B48(v20, sub_1D60CB67C);
    return result;
  }

  sub_1D6D18C68(v24, v12, type metadata accessor for DebugFormatWorkspace);
  sub_1D6D18B48(v24, sub_1D60CB67C);
  v26 = &v12[*(v8 + 20)];
  v28 = *v26;
  v27 = *(v26 + 1);

  sub_1D6D18B48(v12, type metadata accessor for DebugFormatWorkspace);
  v29 = (a7 + *(v8 + 20) + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace);
  if (v28 == *v29 && v27 == v29[1])
  {
  }

  else
  {
    v31 = sub_1D72646CC();

    if ((v31 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t sub_1D6D154EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[122] = a8;
  v8[121] = a7;
  v8[120] = a5;
  sub_1D726290C();
  v8[123] = sub_1D72628FC();
  v10 = sub_1D726285C();
  v8[124] = v10;
  v8[125] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D6D15590, v10, v9);
}

uint64_t sub_1D6D15590()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);
  v3 = *(*(v0 + 960) + 16);
  *(v0 + 1008) = *(v3 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
  v4 = OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
  swift_beginAccess();
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  v7 = *(v1 + 64);
  *(v0 + 48) = *(v1 + 48);
  *(v0 + 64) = v7;
  *(v0 + 16) = v5;
  *(v0 + 32) = v6;
  v8 = *(v1 + 80);
  v9 = *(v1 + 96);
  v10 = *(v1 + 128);
  *(v0 + 112) = *(v1 + 112);
  *(v0 + 128) = v10;
  *(v0 + 80) = v8;
  *(v0 + 96) = v9;
  v11 = *(v1 + 144);
  v12 = *(v1 + 160);
  v13 = *(v1 + 176);
  *(v0 + 191) = *(v1 + 191);
  *(v0 + 160) = v12;
  *(v0 + 176) = v13;
  *(v0 + 144) = v11;
  v14 = *(v1 + 16);
  v15 = *(v1 + 32);
  v16 = *(v1 + 48);
  *(v0 + 248) = *(v1 + 64);
  *(v0 + 232) = v16;
  *(v0 + 216) = v15;
  *(v0 + 200) = v14;
  v17 = *(v1 + 80);
  v18 = *(v1 + 96);
  v19 = *(v1 + 128);
  *(v0 + 296) = *(v1 + 112);
  *(v0 + 312) = v19;
  *(v0 + 264) = v17;
  *(v0 + 280) = v18;
  v20 = *(v1 + 144);
  v21 = *(v1 + 160);
  v22 = *(v1 + 176);
  *(v0 + 375) = *(v1 + 191);
  *(v0 + 344) = v21;
  *(v0 + 360) = v22;
  *(v0 + 328) = v20;

  sub_1D5ECF1C0(v0 + 16, v0 + 384);
  v23 = swift_task_alloc();
  *(v0 + 1016) = v23;
  *v23 = v0;
  v23[1] = sub_1D6D15714;

  return sub_1D60B4B58(v2 + v4, v0 + 200, v3);
}

uint64_t sub_1D6D15714()
{
  v2 = *v1;
  v3 = (*v1 + 200);
  *(*v1 + 1024) = v0;

  v4 = *v3;
  v5 = *(v2 + 216);
  v6 = *(v2 + 248);
  if (v0)
  {
    *(v2 + 600) = *(v2 + 232);
    *(v2 + 616) = v6;
    *(v2 + 568) = v4;
    *(v2 + 584) = v5;
    v7 = *(v2 + 264);
    v8 = *(v2 + 280);
    v9 = *(v2 + 312);
    *(v2 + 664) = *(v2 + 296);
    *(v2 + 680) = v9;
    *(v2 + 632) = v7;
    *(v2 + 648) = v8;
    v10 = *(v2 + 328);
    v11 = *(v2 + 344);
    v12 = *(v2 + 360);
    *(v2 + 743) = *(v2 + 375);
    *(v2 + 712) = v11;
    *(v2 + 728) = v12;
    *(v2 + 696) = v10;
    sub_1D5ECF21C(v2 + 568);
    v13 = *(v2 + 1000);
    v14 = *(v2 + 992);
    v15 = sub_1D6D1594C;
  }

  else
  {
    *(v2 + 784) = *(v2 + 232);
    *(v2 + 800) = v6;
    *(v2 + 752) = v4;
    *(v2 + 768) = v5;
    v16 = *(v2 + 264);
    v17 = *(v2 + 280);
    v18 = *(v2 + 312);
    *(v2 + 848) = *(v2 + 296);
    *(v2 + 864) = v18;
    *(v2 + 816) = v16;
    *(v2 + 832) = v17;
    v19 = *(v2 + 328);
    v20 = *(v2 + 344);
    v21 = *(v2 + 360);
    *(v2 + 927) = *(v2 + 375);
    *(v2 + 896) = v20;
    *(v2 + 912) = v21;
    *(v2 + 880) = v19;
    sub_1D5ECF21C(v2 + 752);
    v13 = *(v2 + 1000);
    v14 = *(v2 + 992);
    v15 = sub_1D6D158E8;
  }

  return MEMORY[0x1EEE6DFA0](v15, v14, v13);
}

uint64_t sub_1D6D158E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6D1594C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6D159B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[96] = a8;
  v8[95] = a7;
  v8[94] = a5;
  sub_1D726290C();
  v8[97] = sub_1D72628FC();
  v10 = sub_1D726285C();
  v8[98] = v10;
  v8[99] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D6D15A54, v10, v9);
}

uint64_t sub_1D6D15A54()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 760);
  v3 = *(*(v0 + 752) + 16);
  *(v0 + 800) = *(v3 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
  v4 = OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
  v5 = *(v1 + 48);
  v7 = *v1;
  v6 = *(v1 + 16);
  *(v0 + 48) = *(v1 + 32);
  *(v0 + 64) = v5;
  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  v8 = *(v1 + 112);
  v10 = *(v1 + 64);
  v9 = *(v1 + 80);
  *(v0 + 112) = *(v1 + 96);
  *(v0 + 128) = v8;
  *(v0 + 80) = v10;
  *(v0 + 96) = v9;
  v12 = *(v1 + 144);
  v11 = *(v1 + 160);
  v13 = *(v1 + 128);
  *(v0 + 191) = *(v1 + 175);
  *(v0 + 160) = v12;
  *(v0 + 176) = v11;
  *(v0 + 144) = v13;

  sub_1D5ECF1C0(v1, v0 + 200);
  v14 = swift_task_alloc();
  *(v0 + 808) = v14;
  *v14 = v0;
  v14[1] = sub_1D6D15B80;

  return sub_1D60B4B58(v2 + v4, v0 + 16, v3);
}

uint64_t sub_1D6D15B80()
{
  v2 = *v1;
  *(*v1 + 816) = v0;

  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 64);
  if (v0)
  {
    *(v2 + 416) = *(v2 + 48);
    *(v2 + 432) = v5;
    *(v2 + 384) = v3;
    *(v2 + 400) = v4;
    v6 = *(v2 + 80);
    v7 = *(v2 + 96);
    v8 = *(v2 + 128);
    *(v2 + 480) = *(v2 + 112);
    *(v2 + 496) = v8;
    *(v2 + 448) = v6;
    *(v2 + 464) = v7;
    v9 = *(v2 + 144);
    v10 = *(v2 + 160);
    v11 = *(v2 + 176);
    *(v2 + 559) = *(v2 + 191);
    *(v2 + 528) = v10;
    *(v2 + 544) = v11;
    *(v2 + 512) = v9;
    sub_1D5ECF21C(v2 + 384);
    v12 = *(v2 + 792);
    v13 = *(v2 + 784);
    v14 = sub_1D6D18CD0;
  }

  else
  {
    *(v2 + 600) = *(v2 + 48);
    *(v2 + 616) = v5;
    *(v2 + 568) = v3;
    *(v2 + 584) = v4;
    v15 = *(v2 + 80);
    v16 = *(v2 + 96);
    v17 = *(v2 + 128);
    *(v2 + 664) = *(v2 + 112);
    *(v2 + 680) = v17;
    *(v2 + 632) = v15;
    *(v2 + 648) = v16;
    v18 = *(v2 + 144);
    v19 = *(v2 + 160);
    v20 = *(v2 + 176);
    *(v2 + 743) = *(v2 + 191);
    *(v2 + 712) = v19;
    *(v2 + 728) = v20;
    *(v2 + 696) = v18;
    sub_1D5ECF21C(v2 + 568);
    v12 = *(v2 + 792);
    v13 = *(v2 + 784);
    v14 = sub_1D6D18CDC;
  }

  return MEMORY[0x1EEE6DFA0](v14, v13, v12);
}

uint64_t sub_1D6D15D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[122] = a8;
  v8[121] = a7;
  v8[120] = a5;
  sub_1D726290C();
  v8[123] = sub_1D72628FC();
  v10 = sub_1D726285C();
  v8[124] = v10;
  v8[125] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D6D15DEC, v10, v9);
}

uint64_t sub_1D6D15DEC()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);
  v3 = *(*(v0 + 960) + 16);
  *(v0 + 1008) = *(v3 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
  v4 = OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
  swift_beginAccess();
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  v7 = *(v1 + 64);
  *(v0 + 48) = *(v1 + 48);
  *(v0 + 64) = v7;
  *(v0 + 16) = v5;
  *(v0 + 32) = v6;
  v8 = *(v1 + 80);
  v9 = *(v1 + 96);
  v10 = *(v1 + 128);
  *(v0 + 112) = *(v1 + 112);
  *(v0 + 128) = v10;
  *(v0 + 80) = v8;
  *(v0 + 96) = v9;
  v11 = *(v1 + 144);
  v12 = *(v1 + 160);
  v13 = *(v1 + 176);
  *(v0 + 191) = *(v1 + 191);
  *(v0 + 160) = v12;
  *(v0 + 176) = v13;
  *(v0 + 144) = v11;
  v14 = *(v1 + 16);
  v15 = *(v1 + 32);
  v16 = *(v1 + 48);
  *(v0 + 248) = *(v1 + 64);
  *(v0 + 232) = v16;
  *(v0 + 216) = v15;
  *(v0 + 200) = v14;
  v17 = *(v1 + 80);
  v18 = *(v1 + 96);
  v19 = *(v1 + 128);
  *(v0 + 296) = *(v1 + 112);
  *(v0 + 312) = v19;
  *(v0 + 264) = v17;
  *(v0 + 280) = v18;
  v20 = *(v1 + 144);
  v21 = *(v1 + 160);
  v22 = *(v1 + 176);
  *(v0 + 375) = *(v1 + 191);
  *(v0 + 344) = v21;
  *(v0 + 360) = v22;
  *(v0 + 328) = v20;

  sub_1D5ECF1C0(v0 + 16, v0 + 384);
  v23 = swift_task_alloc();
  *(v0 + 1016) = v23;
  *v23 = v0;
  v23[1] = sub_1D6D15F70;

  return sub_1D60B4B58(v2 + v4, v0 + 200, v3);
}

uint64_t sub_1D6D15F70()
{
  v2 = *v1;
  v3 = (*v1 + 200);
  *(*v1 + 1024) = v0;

  v4 = *v3;
  v5 = *(v2 + 216);
  v6 = *(v2 + 248);
  if (v0)
  {
    *(v2 + 600) = *(v2 + 232);
    *(v2 + 616) = v6;
    *(v2 + 568) = v4;
    *(v2 + 584) = v5;
    v7 = *(v2 + 264);
    v8 = *(v2 + 280);
    v9 = *(v2 + 312);
    *(v2 + 664) = *(v2 + 296);
    *(v2 + 680) = v9;
    *(v2 + 632) = v7;
    *(v2 + 648) = v8;
    v10 = *(v2 + 328);
    v11 = *(v2 + 344);
    v12 = *(v2 + 360);
    *(v2 + 743) = *(v2 + 375);
    *(v2 + 712) = v11;
    *(v2 + 728) = v12;
    *(v2 + 696) = v10;
    sub_1D5ECF21C(v2 + 568);
    v13 = *(v2 + 1000);
    v14 = *(v2 + 992);
    v15 = sub_1D6D18CD8;
  }

  else
  {
    *(v2 + 784) = *(v2 + 232);
    *(v2 + 800) = v6;
    *(v2 + 752) = v4;
    *(v2 + 768) = v5;
    v16 = *(v2 + 264);
    v17 = *(v2 + 280);
    v18 = *(v2 + 312);
    *(v2 + 848) = *(v2 + 296);
    *(v2 + 864) = v18;
    *(v2 + 816) = v16;
    *(v2 + 832) = v17;
    v19 = *(v2 + 328);
    v20 = *(v2 + 344);
    v21 = *(v2 + 360);
    *(v2 + 927) = *(v2 + 375);
    *(v2 + 896) = v20;
    *(v2 + 912) = v21;
    *(v2 + 880) = v19;
    sub_1D5ECF21C(v2 + 752);
    v13 = *(v2 + 1000);
    v14 = *(v2 + 992);
    v15 = sub_1D6D18CE4;
  }

  return MEMORY[0x1EEE6DFA0](v15, v14, v13);
}

uint64_t sub_1D6D16144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[96] = a8;
  v8[95] = a7;
  v8[94] = a5;
  sub_1D726290C();
  v8[97] = sub_1D72628FC();
  v10 = sub_1D726285C();
  v8[98] = v10;
  v8[99] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D6D161E8, v10, v9);
}

uint64_t sub_1D6D161E8()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 760);
  v3 = *(*(v0 + 752) + 16);
  *(v0 + 800) = *(v3 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
  v4 = OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
  v5 = *(v1 + 48);
  v7 = *v1;
  v6 = *(v1 + 16);
  *(v0 + 48) = *(v1 + 32);
  *(v0 + 64) = v5;
  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  v8 = *(v1 + 112);
  v10 = *(v1 + 64);
  v9 = *(v1 + 80);
  *(v0 + 112) = *(v1 + 96);
  *(v0 + 128) = v8;
  *(v0 + 80) = v10;
  *(v0 + 96) = v9;
  v12 = *(v1 + 144);
  v11 = *(v1 + 160);
  v13 = *(v1 + 128);
  *(v0 + 191) = *(v1 + 175);
  *(v0 + 160) = v12;
  *(v0 + 176) = v11;
  *(v0 + 144) = v13;

  sub_1D5ECF1C0(v1, v0 + 200);
  v14 = swift_task_alloc();
  *(v0 + 808) = v14;
  *v14 = v0;
  v14[1] = sub_1D6D16314;

  return sub_1D60B4B58(v2 + v4, v0 + 16, v3);
}

uint64_t sub_1D6D16314()
{
  v2 = *v1;
  *(*v1 + 816) = v0;

  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 64);
  if (v0)
  {
    *(v2 + 416) = *(v2 + 48);
    *(v2 + 432) = v5;
    *(v2 + 384) = v3;
    *(v2 + 400) = v4;
    v6 = *(v2 + 80);
    v7 = *(v2 + 96);
    v8 = *(v2 + 128);
    *(v2 + 480) = *(v2 + 112);
    *(v2 + 496) = v8;
    *(v2 + 448) = v6;
    *(v2 + 464) = v7;
    v9 = *(v2 + 144);
    v10 = *(v2 + 160);
    v11 = *(v2 + 176);
    *(v2 + 559) = *(v2 + 191);
    *(v2 + 528) = v10;
    *(v2 + 544) = v11;
    *(v2 + 512) = v9;
    sub_1D5ECF21C(v2 + 384);
    v12 = *(v2 + 792);
    v13 = *(v2 + 784);
    v14 = sub_1D6D16540;
  }

  else
  {
    *(v2 + 600) = *(v2 + 48);
    *(v2 + 616) = v5;
    *(v2 + 568) = v3;
    *(v2 + 584) = v4;
    v15 = *(v2 + 80);
    v16 = *(v2 + 96);
    v17 = *(v2 + 128);
    *(v2 + 664) = *(v2 + 112);
    *(v2 + 680) = v17;
    *(v2 + 632) = v15;
    *(v2 + 648) = v16;
    v18 = *(v2 + 144);
    v19 = *(v2 + 160);
    v20 = *(v2 + 176);
    *(v2 + 743) = *(v2 + 191);
    *(v2 + 712) = v19;
    *(v2 + 728) = v20;
    *(v2 + 696) = v18;
    sub_1D5ECF21C(v2 + 568);
    v12 = *(v2 + 792);
    v13 = *(v2 + 784);
    v14 = sub_1D6D164DC;
  }

  return MEMORY[0x1EEE6DFA0](v14, v13, v12);
}

uint64_t sub_1D6D164DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6D16540()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D6D16618(uint64_t a1)
{
  if (!qword_1EC894FC8)
  {
    type metadata accessor for DebugFormatWorkspaceTreeWorkspaceHeaderView(255);
    sub_1D6D16704(255, v1);
    sub_1D6D18708(&qword_1EC8950D8, type metadata accessor for DebugFormatWorkspaceTreeWorkspaceHeaderView, &unk_1D734774C);
    sub_1D6D18708(&qword_1EC8950E0, sub_1D6D16704, MEMORY[0x1E6981F48]);
    v2 = sub_1D726100C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC894FC8);
    }
  }
}