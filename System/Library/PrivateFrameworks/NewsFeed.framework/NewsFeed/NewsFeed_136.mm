unint64_t sub_1D67AB290(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

void sub_1D67AB2DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D67AB340(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatLayeredMediaNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatLayeredMediaNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t FormatLayeredMediaNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double FormatLayeredMediaNodeStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

uint64_t FormatLayeredMediaNodeStyle.background.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  return sub_1D5D04BD4(v2);
}

uint64_t FormatLayeredMediaNodeStyle.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 96);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatLayeredMediaNodeStyle.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v4 = *(v1 + 168);
  v10 = *(v1 + 152);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 184);
  v6 = *(v1 + 120);
  v9[0] = *(v1 + 104);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D67AE85C(v9, v8, sub_1D615C3A4);
}

uint64_t FormatLayeredMediaNodeStyle.video.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 208);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t FormatLayeredMediaNodeStyle.motion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 224);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 232);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t sub_1D67AB674(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  swift_beginAccess();
  v249 = v2;
  v8 = v2[6];
  swift_beginAccess();
  v9 = *(a1 + 48);
  v338 = MEMORY[0x1E69E7CC8];
  v10 = *(v8 + 16);
  if (__OFADD__(v10, *(v9 + 16)))
  {
    goto LABEL_96;
  }

  v250 = *(v9 + 16);
  v244 = a1;
  sub_1D67AE748(0);

  v256 = v9;

  sub_1D7261DAC();
  v11 = sub_1D698F4BC(0, v10, 0, MEMORY[0x1E69E7CC0]);
  v12 = v8;
  v13 = v11;
  v14 = *(v12 + 16);
  v247 = v5;
  v248 = v4;
  v245 = v7;
  v246 = v6;
  v253 = v12;
  if (v14)
  {
    v15 = 0;
    v16 = (v12 + 32);
    v17 = v14 - 1;
    while (1)
    {
      v325 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      v20 = v16[3];
      v329 = v16[4];
      v328 = v20;
      v327 = v19;
      v326 = v18;
      v21 = v16[5];
      v22 = v16[6];
      v23 = v16[7];
      v333 = v16[8];
      v332 = v23;
      v331 = v22;
      v330 = v21;
      v24 = v16[9];
      v25 = v16[10];
      v26 = v16[11];
      v337 = v16[12];
      v336 = v26;
      v335 = v25;
      v334 = v24;
      v27 = v325;
      sub_1D5D0B3B8(&v325, &v312);
      sub_1D5D0B3B8(&v325, &v312);
      v28 = v338;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v299 = v28;
      v30 = sub_1D6D8CB60();
      v32 = v28[2];
      v33 = (v31 & 1) == 0;
      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
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
LABEL_97:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }

      v36 = v31;
      if (v28[3] < v35)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_9;
      }

      v58 = v30;
      sub_1D6D83C30();
      v30 = v58;
      if (v36)
      {
LABEL_10:
        v38 = v299;
        v39 = (*(v299 + 56) + 208 * v30);
        v312 = *v39;
        v40 = v39[3];
        v42 = v39[1];
        v41 = v39[2];
        v316 = v39[4];
        v315 = v40;
        v313 = v42;
        v314 = v41;
        v43 = v39[7];
        v45 = v39[5];
        v44 = v39[6];
        v320 = v39[8];
        v319 = v43;
        v317 = v45;
        v318 = v44;
        v46 = v39[11];
        v48 = v39[9];
        v47 = v39[10];
        v324 = v39[12];
        v323 = v46;
        v321 = v48;
        v322 = v47;
        *v39 = v325;
        v49 = v326;
        v50 = v327;
        v51 = v329;
        v39[3] = v328;
        v39[4] = v51;
        v39[1] = v49;
        v39[2] = v50;
        v52 = v330;
        v53 = v331;
        v54 = v333;
        v39[7] = v332;
        v39[8] = v54;
        v39[5] = v52;
        v39[6] = v53;
        v55 = v334;
        v56 = v335;
        v57 = v337;
        v39[11] = v336;
        v39[12] = v57;
        v39[9] = v55;
        v39[10] = v56;
        sub_1D5D0B670(&v312);
        goto LABEL_14;
      }

LABEL_12:
      v38 = v299;
      *(v299 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      *(v38[6] + 16 * v30) = v27;
      v59 = (v38[7] + 208 * v30);
      v60 = v337;
      v61 = v336;
      v62 = v335;
      v59[9] = v334;
      v59[10] = v62;
      v59[11] = v61;
      v59[12] = v60;
      v63 = v333;
      v64 = v332;
      v65 = v331;
      v59[5] = v330;
      v59[6] = v65;
      v59[7] = v64;
      v59[8] = v63;
      v66 = v329;
      v67 = v328;
      v68 = v327;
      v59[1] = v326;
      v59[2] = v68;
      v59[3] = v67;
      v59[4] = v66;
      *v59 = v325;
      v69 = v38[2];
      v34 = __OFADD__(v69, 1);
      v70 = v69 + 1;
      if (v34)
      {
        goto LABEL_92;
      }

      v38[2] = v70;

LABEL_14:
      v338 = v38;

      sub_1D5D0B670(&v325);
      v72 = *(v13 + 2);
      v71 = *(v13 + 3);
      if (v72 >= v71 >> 1)
      {
        v13 = sub_1D698F4BC((v71 > 1), v72 + 1, 1, v13);
      }

      *(v13 + 2) = v72 + 1;
      *&v13[16 * v72 + 32] = v27;
      if (v17 == v15)
      {
        goto LABEL_19;
      }

      ++v15;
      v16 += 13;
      if (v15 >= *(v253 + 16))
      {
        goto LABEL_88;
      }
    }

    sub_1D6D707D8(v35, isUniquelyReferenced_nonNull_native);
    v30 = sub_1D6D8CB60();
    if ((v36 & 1) != (v37 & 1))
    {
      goto LABEL_97;
    }

LABEL_9:
    if (v36)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

LABEL_19:
  v73 = v256;
  v74 = sub_1D698F4BC(0, v250, 0, MEMORY[0x1E69E7CC0]);
  v75 = *(v256 + 16);
  if (!v75)
  {
    goto LABEL_51;
  }

  v76 = 0;
  v251 = v75 - 1;
  v77 = 32;
  do
  {
    v325 = *(v73 + v77);
    v78 = *(v73 + v77 + 16);
    v79 = *(v73 + v77 + 32);
    v80 = *(v73 + v77 + 48);
    v329 = *(v73 + v77 + 64);
    v328 = v80;
    v327 = v79;
    v326 = v78;
    v81 = *(v73 + v77 + 80);
    v82 = *(v73 + v77 + 96);
    v83 = *(v73 + v77 + 112);
    v333 = *(v73 + v77 + 128);
    v332 = v83;
    v331 = v82;
    v330 = v81;
    v84 = *(v73 + v77 + 144);
    v85 = *(v73 + v77 + 160);
    v86 = *(v73 + v77 + 176);
    v337 = *(v73 + v77 + 192);
    v336 = v86;
    v335 = v85;
    v334 = v84;
    v321 = *(v73 + v77 + 144);
    v322 = *(v73 + v77 + 160);
    v323 = *(v73 + v77 + 176);
    v324 = *(v73 + v77 + 192);
    v317 = *(v73 + v77 + 80);
    v318 = *(v73 + v77 + 96);
    v319 = *(v73 + v77 + 112);
    v320 = *(v73 + v77 + 128);
    v313 = *(v73 + v77 + 16);
    v314 = *(v73 + v77 + 32);
    v315 = *(v73 + v77 + 48);
    v316 = *(v73 + v77 + 64);
    v312 = *(v73 + v77);
    v87 = v338;
    if (v338[2])
    {
      v88 = *(&v312 + 1);
      v89 = v312;
      sub_1D5D0B3B8(&v325, &v286);
      v90 = sub_1D6D8CB60();
      if (v91)
      {
        v92 = (v87[7] + 208 * v90);
        v273 = *v92;
        v93 = v92[3];
        v94 = v92[4];
        v95 = v92[2];
        v274 = v92[1];
        v275 = v95;
        v276 = v93;
        v277 = v94;
        v96 = v92[5];
        v97 = v92[6];
        v98 = v92[8];
        v280 = v92[7];
        v281 = v98;
        v278 = v96;
        v279 = v97;
        v99 = v92[9];
        v100 = v92[10];
        v101 = v92[12];
        v284 = v92[11];
        v285 = v101;
        v282 = v99;
        v283 = v100;
        v308 = v92[9];
        v309 = v92[10];
        v310 = v92[11];
        v311 = v92[12];
        v304 = v92[5];
        v305 = v92[6];
        v306 = v92[7];
        v307 = v92[8];
        v300 = v92[1];
        v301 = v92[2];
        v302 = v92[3];
        v303 = v92[4];
        v299 = *v92;
        v102 = v299;
        sub_1D67AD390(&v312, &v286);
        sub_1D5D0B3B8(&v273, &v260);
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v259 = v87;
        v104 = sub_1D6D8CB60();
        v106 = v87[2];
        v107 = (v105 & 1) == 0;
        v34 = __OFADD__(v106, v107);
        v108 = v106 + v107;
        if (v34)
        {
          goto LABEL_94;
        }

        v109 = v105;
        if (v87[3] >= v108)
        {
          if ((v103 & 1) == 0)
          {
            v167 = v104;
            sub_1D6D83C30();
            v104 = v167;
            if (v109)
            {
              goto LABEL_37;
            }

            goto LABEL_45;
          }
        }

        else
        {
          sub_1D6D707D8(v108, v103);
          v104 = sub_1D6D8CB60();
          if ((v109 & 1) != (v110 & 1))
          {
            goto LABEL_97;
          }
        }

        if (v109)
        {
LABEL_37:
          v139 = v259;
          v140 = (v259[7] + 208 * v104);
          v260 = *v140;
          v141 = v140[4];
          v143 = v140[1];
          v142 = v140[2];
          v263 = v140[3];
          v264 = v141;
          v261 = v143;
          v262 = v142;
          v144 = v140[8];
          v146 = v140[5];
          v145 = v140[6];
          v267 = v140[7];
          v268 = v144;
          v265 = v146;
          v266 = v145;
          v147 = v140[12];
          v149 = v140[9];
          v148 = v140[10];
          v271 = v140[11];
          v272 = v147;
          v269 = v149;
          v270 = v148;
          v140[9] = v295;
          v140[10] = v296;
          v140[11] = v297;
          v140[12] = v298;
          v140[5] = v291;
          v140[6] = v292;
          v140[7] = v293;
          v140[8] = v294;
          v140[1] = v287;
          v140[2] = v288;
          v140[3] = v289;
          v140[4] = v290;
          *v140 = v286;
          sub_1D5D0B670(&v260);
LABEL_47:
          v258[10] = v309;
          v258[11] = v310;
          v258[12] = v311;
          v258[6] = v305;
          v258[7] = v306;
          v258[8] = v307;
          v258[9] = v308;
          v258[2] = v301;
          v258[3] = v302;
          v258[4] = v303;
          v258[5] = v304;
          v258[0] = v299;
          v258[1] = v300;
          sub_1D5D0B670(v258);
          v270 = v322;
          v271 = v323;
          v272 = v324;
          v266 = v318;
          v267 = v319;
          v268 = v320;
          v269 = v321;
          v262 = v314;
          v263 = v315;
          v264 = v316;
          v265 = v317;
          v260 = v312;
          v261 = v313;
          sub_1D5D0B670(&v260);
          v338 = v139;
          goto LABEL_48;
        }

LABEL_45:
        v139 = v259;
        v259[(v104 >> 6) + 8] |= 1 << v104;
        *(v139[6] + 16 * v104) = v102;
        v168 = (v139[7] + 208 * v104);
        *v168 = v286;
        v168[4] = v290;
        v168[3] = v289;
        v168[2] = v288;
        v168[1] = v287;
        v168[8] = v294;
        v168[7] = v293;
        v168[6] = v292;
        v168[5] = v291;
        v168[12] = v298;
        v168[11] = v297;
        v168[10] = v296;
        v168[9] = v295;
        v169 = v139[2];
        v34 = __OFADD__(v169, 1);
        v170 = v169 + 1;
        if (v34)
        {
          goto LABEL_95;
        }

        v139[2] = v170;

        goto LABEL_47;
      }
    }

    else
    {
      sub_1D5D0B3B8(&v325, &v286);
      v88 = *(&v312 + 1);
      v89 = v312;
    }

    v296 = v322;
    v297 = v323;
    v298 = v324;
    v292 = v318;
    v293 = v319;
    v294 = v320;
    v295 = v321;
    v288 = v314;
    v289 = v315;
    v290 = v316;
    v291 = v317;
    v286 = v312;
    v287 = v313;
    sub_1D5D0B3B8(&v286, &v273);
    v111 = swift_isUniquelyReferenced_nonNull_native();
    *&v260 = v87;
    v112 = sub_1D6D8CB60();
    v114 = v87[2];
    v115 = (v113 & 1) == 0;
    v34 = __OFADD__(v114, v115);
    v116 = v114 + v115;
    if (v34)
    {
      goto LABEL_91;
    }

    v117 = v113;
    if (v87[3] < v116)
    {
      sub_1D6D707D8(v116, v111);
      v112 = sub_1D6D8CB60();
      if ((v117 & 1) != (v118 & 1))
      {
        goto LABEL_97;
      }

LABEL_33:
      if ((v117 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_34;
    }

    if (v111)
    {
      goto LABEL_33;
    }

    v150 = v112;
    sub_1D6D83C30();
    v112 = v150;
    if ((v117 & 1) == 0)
    {
LABEL_39:
      v119 = v260;
      *(v260 + 8 * (v112 >> 6) + 64) |= 1 << v112;
      v151 = (v119[6] + 16 * v112);
      *v151 = v89;
      v151[1] = v88;
      v152 = (v119[7] + 208 * v112);
      v153 = v298;
      v155 = v296;
      v154 = v297;
      v152[9] = v295;
      v152[10] = v155;
      v152[11] = v154;
      v152[12] = v153;
      v157 = v293;
      v156 = v294;
      v158 = v292;
      v152[5] = v291;
      v152[6] = v158;
      v152[7] = v157;
      v152[8] = v156;
      v160 = v289;
      v159 = v290;
      v161 = v288;
      v152[1] = v287;
      v152[2] = v161;
      v152[3] = v160;
      v152[4] = v159;
      *v152 = v286;
      v162 = v119[2];
      v34 = __OFADD__(v162, 1);
      v163 = v162 + 1;
      if (v34)
      {
        goto LABEL_93;
      }

      v119[2] = v163;

      goto LABEL_41;
    }

LABEL_34:
    v119 = v260;
    v120 = (*(v260 + 56) + 208 * v112);
    v273 = *v120;
    v121 = v120[4];
    v123 = v120[1];
    v122 = v120[2];
    v276 = v120[3];
    v277 = v121;
    v274 = v123;
    v275 = v122;
    v124 = v120[8];
    v126 = v120[5];
    v125 = v120[6];
    v280 = v120[7];
    v281 = v124;
    v278 = v126;
    v279 = v125;
    v127 = v120[12];
    v129 = v120[9];
    v128 = v120[10];
    v284 = v120[11];
    v285 = v127;
    v282 = v129;
    v283 = v128;
    *v120 = v286;
    v130 = v287;
    v131 = v288;
    v132 = v290;
    v120[3] = v289;
    v120[4] = v132;
    v120[1] = v130;
    v120[2] = v131;
    v133 = v291;
    v134 = v292;
    v135 = v294;
    v120[7] = v293;
    v120[8] = v135;
    v120[5] = v133;
    v120[6] = v134;
    v136 = v295;
    v137 = v296;
    v138 = v298;
    v120[11] = v297;
    v120[12] = v138;
    v120[9] = v136;
    v120[10] = v137;
    sub_1D5D0B670(&v273);
LABEL_41:
    v338 = v119;
    v164 = *(v74 + 2);
    v165 = *(v74 + 3);

    if (v164 >= v165 >> 1)
    {
      v74 = sub_1D698F4BC((v165 > 1), v164 + 1, 1, v74);
    }

    v283 = v322;
    v284 = v323;
    v285 = v324;
    v279 = v318;
    v280 = v319;
    v281 = v320;
    v282 = v321;
    v275 = v314;
    v276 = v315;
    v277 = v316;
    v278 = v317;
    v273 = v312;
    v274 = v313;
    sub_1D5D0B670(&v273);
    *(v74 + 2) = v164 + 1;
    v166 = &v74[16 * v164];
    *(v166 + 4) = v89;
    *(v166 + 5) = v88;
LABEL_48:
    v73 = v256;
    if (v251 == v76)
    {
      goto LABEL_51;
    }

    ++v76;
    v77 += 208;
  }

  while (v76 < *(v256 + 16));
  __break(1u);
LABEL_51:

  *&v325 = v74;

  sub_1D6985DAC(v171);
  v172 = *(v325 + 16);
  if (v172)
  {
    v173 = 0;
    v174 = v325 + 40;
    v254 = v325 + 40;
    v257 = MEMORY[0x1E69E7CC0];
LABEL_53:
    v175 = v338;
    v176 = v174 + 16 * v173;
    v177 = v173;
    while (v177 < v172)
    {
      v173 = v177 + 1;
      if (__OFADD__(v177, 1))
      {
        goto LABEL_90;
      }

      if (v175[2])
      {

        v178 = sub_1D6D8CB60();
        if (v179)
        {
          v180 = (v175[7] + 208 * v178);
          v325 = *v180;
          v181 = v180[3];
          v182 = v180[4];
          v183 = v180[2];
          v326 = v180[1];
          v327 = v183;
          v329 = v182;
          v328 = v181;
          v184 = v180[5];
          v185 = v180[6];
          v186 = v180[7];
          v333 = v180[8];
          v332 = v186;
          v331 = v185;
          v330 = v184;
          v187 = v180[9];
          v188 = v180[10];
          v189 = v180[11];
          v337 = v180[12];
          v336 = v189;
          v335 = v188;
          v334 = v187;
          sub_1D5D0B3B8(&v325, &v312);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v257 = sub_1D698DDD8(0, *(v257 + 2) + 1, 1, v257);
          }

          v174 = v254;
          v191 = *(v257 + 2);
          v190 = *(v257 + 3);
          if (v191 >= v190 >> 1)
          {
            v257 = sub_1D698DDD8((v190 > 1), v191 + 1, 1, v257);
          }

          *(v257 + 2) = v191 + 1;
          v192 = &v257[208 * v191];
          *(v192 + 2) = v325;
          v193 = v326;
          v194 = v327;
          v195 = v329;
          *(v192 + 5) = v328;
          *(v192 + 6) = v195;
          *(v192 + 3) = v193;
          *(v192 + 4) = v194;
          v196 = v330;
          v197 = v331;
          v198 = v333;
          *(v192 + 9) = v332;
          *(v192 + 10) = v198;
          *(v192 + 7) = v196;
          *(v192 + 8) = v197;
          v199 = v334;
          v200 = v335;
          v201 = v337;
          *(v192 + 13) = v336;
          *(v192 + 14) = v201;
          *(v192 + 11) = v199;
          *(v192 + 12) = v200;
          if (v173 != v172)
          {
            goto LABEL_53;
          }

          goto LABEL_67;
        }
      }

      ++v177;
      v176 += 16;
      if (v173 == v172)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_89;
  }

  v257 = MEMORY[0x1E69E7CC0];
LABEL_67:

  v202 = v249[7];
  if (!v202)
  {
    v202 = *(v244 + 56);
  }

  v203 = v249[8];
  v243 = v203;
  if ((~v203 & 0xF000000000000007) == 0)
  {
    v203 = *(v244 + 64);
    sub_1D5D04BD4(v203);
  }

  v204 = v249[9];
  if (!v204)
  {
  }

  v237 = v204;
  v205 = v249[10];
  v206 = v249[11];
  v207 = *(v249 + 96);
  v208 = v205;
  v255 = v206;
  v252 = *(v249 + 96);
  if (v207 >= 0xFE)
  {
    v208 = *(v244 + 80);
    v255 = *(v244 + 88);
    v252 = *(v244 + 96);
    sub_1D5ED34B0(v208, v255, v252);
  }

  LOBYTE(v330) = *(v249 + 184);
  v209 = *(v249 + 19);
  v327 = *(v249 + 17);
  v328 = v209;
  v329 = *(v249 + 21);
  v210 = *(v249 + 15);
  v325 = *(v249 + 13);
  v326 = v210;
  v242 = v202;
  v241 = v205;
  v240 = v206;
  v239 = v207;
  v238 = v203;
  if (v330 == 254)
  {
    v211 = *(v244 + 152);
    v301 = *(v244 + 136);
    v302 = v211;
    v303 = *(v244 + 168);
    LOBYTE(v304) = *(v244 + 184);
    v212 = *(v244 + 120);
    v299 = *(v244 + 104);
    v300 = v212;
    sub_1D67AE85C(&v299, &v312, sub_1D615C3A4);
    v314 = v301;
    v315 = v302;
    v316 = v303;
    LOBYTE(v317) = v304;
    v213 = v299;
    v214 = v300;
  }

  else
  {
    v215 = *(v249 + 19);
    v314 = *(v249 + 17);
    v315 = v215;
    v316 = *(v249 + 21);
    LOBYTE(v317) = *(v249 + 184);
    v213 = *(v249 + 13);
    v214 = *(v249 + 15);
  }

  v312 = v213;
  v313 = v214;
  v216 = v249[24];
  v217 = v249[25];
  v218 = *(v249 + 208);
  v235 = v216;
  v236 = v208;
  v234 = v217;
  v219 = *(v249 + 208);
  if (v218 == 255)
  {
    v216 = *(v244 + 192);
    v217 = *(v244 + 200);
    v219 = *(v244 + 208);
    sub_1D6189668(v216, v217, v219);
  }

  v230 = v217;
  v231 = v216;
  v221 = v249[27];
  v220 = v249[28];
  v222 = *(v249 + 232);
  v232 = v220;
  v233 = v221;
  v223 = *(v249 + 232);
  if (v222 == 255)
  {
    v221 = *(v244 + 216);
    v220 = *(v244 + 224);
    v223 = *(v244 + 232);
    sub_1D6189668(v221, v220, v223);
  }

  v224 = *(v249 + 233);
  if (v224 == 2)
  {
    LOBYTE(v224) = *(v244 + 233);
  }

  v225 = v249[30];
  if (!v225)
  {
    v225 = *(v244 + 240);
  }

  v226 = swift_allocObject();
  swift_beginAccess();
  v227 = v315;
  *(v226 + 136) = v314;
  *(v226 + 152) = v227;
  *(v226 + 168) = v316;
  v228 = v313;
  *(v226 + 104) = v312;
  *(v226 + 16) = v248;
  *(v226 + 24) = v247;
  *(v226 + 32) = v246;
  *(v226 + 40) = v245;
  *(v226 + 72) = v237;
  *(v226 + 80) = v236;
  *(v226 + 88) = v255;
  *(v226 + 96) = v252;
  *(v226 + 184) = v317;
  *(v226 + 120) = v228;
  *(v226 + 56) = v242;
  *(v226 + 64) = v238;
  swift_beginAccess();
  *(v226 + 48) = v257;
  *(v226 + 192) = v231;
  *(v226 + 200) = v230;
  *(v226 + 208) = v219;
  *(v226 + 216) = v221;
  *(v226 + 224) = v220;
  *(v226 + 232) = v223;
  *(v226 + 233) = v224;
  *(v226 + 240) = v225;

  sub_1D5D04BD4(v243);

  sub_1D5ED34B0(v241, v240, v239);
  sub_1D67AE85C(&v325, &v299, sub_1D615C3A4);
  sub_1D6189668(v235, v234, v218);
  sub_1D6189668(v233, v232, v222);

  return v226;
}

void sub_1D67AC7DC(uint64_t a1)
{
  swift_beginAccess();
  v91 = v1;
  v3 = *(v1 + 48);
  v4 = *(v3 + 16);

  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1D698DDD8(0, v4, 0, MEMORY[0x1E69E7CC0]);
  v92 = sub_1D698DC68(0, v4, 0, v5);
  v93 = *(v3 + 16);
  if (v93)
  {
    v7 = 0;
    while (1)
    {
      v8 = (v3 + 32 + 208 * v7);
      v108 = *v8;
      v9 = v8[1];
      v10 = v8[2];
      v11 = v8[4];
      v111 = v8[3];
      v112 = v11;
      v109 = v9;
      v110 = v10;
      v12 = v8[5];
      v13 = v8[6];
      v14 = v8[8];
      v115 = v8[7];
      v116 = v14;
      v113 = v12;
      v114 = v13;
      v15 = v8[9];
      v16 = v8[10];
      v17 = v8[12];
      v119 = v8[11];
      v120 = v17;
      v117 = v15;
      v118 = v16;
      v18 = v108;
      sub_1D5D0B3B8(&v108, &v95);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      v95 = v18;

      v19 = sub_1D6844380(&v95);

      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = 0;
        v22 = 32;
        while (1)
        {
          if (v21 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          v24 = *(v19 + v22 + 16);
          v23 = *(v19 + v22 + 32);
          v25 = *(v19 + v22);
          v123 = *(v19 + v22 + 48);
          v122[1] = v24;
          v122[2] = v23;
          v122[0] = v25;
          v26 = v24;
          sub_1D5E3B610(v122, &v95);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v21;
          sub_1D5E3B66C(v122);
          v22 += 56;
          if (v20 == v21)
          {
            goto LABEL_10;
          }
        }

        sub_1D5E3B66C(v122);
        if (v26 <= 1)
        {
          v40 = *(v6 + 2);
          v39 = *(v6 + 3);
          if (v40 >= v39 >> 1)
          {
            v6 = sub_1D698DDD8((v39 > 1), v40 + 1, 1, v6);
          }

          *(v6 + 2) = v40 + 1;
          v41 = &v6[208 * v40];
          *(v41 + 2) = v108;
          v42 = v109;
          v43 = v110;
          v44 = v112;
          *(v41 + 5) = v111;
          *(v41 + 6) = v44;
          *(v41 + 3) = v42;
          *(v41 + 4) = v43;
          v45 = v113;
          v46 = v114;
          v47 = v116;
          *(v41 + 9) = v115;
          *(v41 + 10) = v47;
          *(v41 + 7) = v45;
          *(v41 + 8) = v46;
          v48 = v117;
          v49 = v118;
          v50 = v120;
          *(v41 + 13) = v119;
          *(v41 + 14) = v50;
          *(v41 + 11) = v48;
          *(v41 + 12) = v49;
        }

        else
        {
          v105 = v118;
          v106 = v119;
          v107 = v120;
          v101 = v114;
          v102 = v115;
          v103 = v116;
          v104 = v117;
          v97 = v110;
          v98 = v111;
          v99 = v112;
          v100 = v113;
          v95 = v108;
          v96 = v109;
          sub_1D5D0B3B8(&v108, v94);
          v28 = v92[2];
          v27 = v92[3];
          if (v28 >= v27 >> 1)
          {
            v92 = sub_1D698DC68((v27 > 1), v28 + 1, 1, v92);
          }

          sub_1D5D0B670(&v108);
          v92[2] = v28 + 1;
          v29 = &v92[27 * v28];
          v30 = v96;
          v31 = v97;
          v32 = v99;
          *(v29 + 5) = v98;
          *(v29 + 6) = v32;
          *(v29 + 3) = v30;
          *(v29 + 4) = v31;
          v33 = v100;
          v34 = v101;
          v35 = v103;
          *(v29 + 9) = v102;
          *(v29 + 10) = v35;
          *(v29 + 7) = v33;
          *(v29 + 8) = v34;
          v36 = v104;
          v37 = v105;
          v38 = v107;
          *(v29 + 13) = v106;
          *(v29 + 14) = v38;
          *(v29 + 11) = v36;
          *(v29 + 12) = v37;
          *(v29 + 2) = v95;
          v29[30] = v26;
        }
      }

      else
      {
LABEL_10:
        sub_1D5D0B670(&v108);
      }

      if (++v7 == v93)
      {
        break;
      }

      if (v7 >= *(v3 + 16))
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
  }

  sub_1D67AE7AC(0);
  v51 = sub_1D72626AC();

  v52 = *(v51 + 16);
  if (v52)
  {
    v53 = v52 - 1;
    for (i = 32; ; i += 216)
    {
      v55 = *(v51 + i + 16);
      v108 = *(v51 + i);
      v109 = v55;
      v56 = *(v51 + i + 32);
      v57 = *(v51 + i + 48);
      v58 = *(v51 + i + 80);
      v112 = *(v51 + i + 64);
      v113 = v58;
      v110 = v56;
      v111 = v57;
      v59 = *(v51 + i + 96);
      v60 = *(v51 + i + 112);
      v61 = *(v51 + i + 144);
      v116 = *(v51 + i + 128);
      v117 = v61;
      v114 = v59;
      v115 = v60;
      v62 = *(v51 + i + 160);
      v63 = *(v51 + i + 176);
      v64 = *(v51 + i + 192);
      v121 = *(v51 + i + 208);
      v119 = v63;
      v120 = v64;
      v118 = v62;
      sub_1D67AE85C(&v108, &v95, sub_1D67AE7AC);
      v66 = *(v6 + 2);
      v65 = *(v6 + 3);
      if (v66 >= v65 >> 1)
      {
        v6 = sub_1D698DDD8((v65 > 1), v66 + 1, 1, v6);
      }

      *(v6 + 2) = v66 + 1;
      v67 = &v6[208 * v66];
      *(v67 + 2) = v108;
      v68 = v109;
      v69 = v110;
      v70 = v112;
      *(v67 + 5) = v111;
      *(v67 + 6) = v70;
      *(v67 + 3) = v68;
      *(v67 + 4) = v69;
      v71 = v113;
      v72 = v114;
      v73 = v116;
      *(v67 + 9) = v115;
      *(v67 + 10) = v73;
      *(v67 + 7) = v71;
      *(v67 + 8) = v72;
      v74 = v117;
      v75 = v118;
      v76 = v120;
      *(v67 + 13) = v119;
      *(v67 + 14) = v76;
      *(v67 + 11) = v74;
      *(v67 + 12) = v75;
      if (!v53)
      {
        break;
      }

      --v53;
    }
  }

  v77 = *(v6 + 2);
  v78 = v91;

  if (v77)
  {
    v79 = 0;
    v80 = (v6 + 32);
    while (v79 < *(v6 + 2))
    {
      v108 = *v80;
      v81 = v80[1];
      v82 = v80[2];
      v83 = v80[4];
      v111 = v80[3];
      v112 = v83;
      v109 = v81;
      v110 = v82;
      v84 = v80[5];
      v85 = v80[6];
      v86 = v80[8];
      v115 = v80[7];
      v116 = v86;
      v113 = v84;
      v114 = v85;
      v87 = v80[9];
      v88 = v80[10];
      v89 = v80[12];
      v119 = v80[11];
      v120 = v89;
      v117 = v87;
      v118 = v88;
      ++v79;
      v105 = v88;
      v106 = v119;
      v107 = v89;
      v101 = v114;
      v102 = v115;
      v103 = v116;
      v104 = v87;
      v97 = v110;
      v98 = v111;
      v99 = v112;
      v100 = v113;
      v95 = v108;
      v96 = v109;
      swift_allocObject();
      sub_1D5D0B3B8(&v108, v94);
      v90 = sub_1D67AE8C4(v78, &v95);

      v80 += 13;
      v78 = v90;
      if (v77 == v79)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
LABEL_33:
  }
}

uint64_t sub_1D67ACDF0()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v42 = v2;
  v4 = *(v1 + 40);
  v40 = *(v1 + 32);
  swift_beginAccess();
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v43 = *(v1 + 56);
  v41 = v3;
  if ((~v6 & 0xF000000000000007) != 0)
  {
    v45[0] = *(v1 + 64);

    sub_1D5D04BD4(v6);
    sub_1D6C051DC(&v46);

    v6 = v46;
    v7 = *(v1 + 72);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {

    v7 = *(v1 + 72);
    if (v7)
    {
LABEL_3:
      v37 = sub_1D600CADC(v7);
      goto LABEL_6;
    }
  }

  v37 = 0;
LABEL_6:
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  v10 = *(v1 + 96);
  v11 = *(v1 + 152);
  v48 = *(v1 + 136);
  v49 = v11;
  v50 = *(v1 + 168);
  v51 = *(v1 + 184);
  v12 = v51;
  v13 = *(v1 + 120);
  v46 = *(v1 + 104);
  v47 = v13;
  v44 = v5;
  v38 = v6;
  v39 = v4;
  v35 = v9;
  v36 = v8;
  v34 = v10;
  if (v51 == 254)
  {
    sub_1D5ED34B0(v8, v9, v10);
    v14 = v46;
    v30 = HIDWORD(v46);
    v15 = DWORD2(v46);
    v16 = *(&v47 + 1);
    v17 = v47;
    v31 = v48;
    v32 = v49;
    v33 = v50;
  }

  else
  {
    v33 = v50;
    v18 = *(&v48 + 1);
    v16 = *(&v47 + 1);
    v17 = v47;
    v15 = DWORD2(v46);
    v14 = v46;
    v32 = v49;
    v45[11] = v48;
    sub_1D67AE85C(&v46, v45, sub_1D615C3A4);
    sub_1D67AE85C(&v46, v45, sub_1D615C3A4);
    sub_1D5ED34B0(v8, v9, v10);
    sub_1D6E0CAE0(v45);

    sub_1D615F660(&v46, sub_1D615C3A4);
    *&v19 = v45[0];
    *(&v19 + 1) = v18;
    v31 = v19;
  }

  v21 = *(v1 + 192);
  v20 = *(v1 + 200);
  v22 = *(v1 + 208);
  v23 = *(v1 + 216);
  v24 = *(v1 + 224);
  v25 = *(v1 + 232);
  v26 = *(v1 + 233);
  v27 = *(v1 + 240);
  sub_1D6189668(v21, v20, v22);
  sub_1D6189668(v23, v24, v25);
  if (v27)
  {
    v27 = sub_1D600CC40(v27);
  }

  v28 = swift_allocObject();
  swift_beginAccess();
  *(v28 + 16) = v42;
  *(v28 + 24) = v41;
  *(v28 + 32) = v40;
  *(v28 + 40) = v39;
  *(v28 + 72) = v37;
  *(v28 + 80) = v36;
  *(v28 + 88) = v35;
  *(v28 + 96) = v34;
  *(v28 + 104) = v14;
  *(v28 + 112) = v15;
  *(v28 + 116) = v30;
  *(v28 + 120) = v17;
  *(v28 + 128) = v16;
  *(v28 + 152) = v32;
  *(v28 + 136) = v31;
  *(v28 + 168) = v33;
  *(v28 + 184) = v12;
  *(v28 + 56) = v43;
  *(v28 + 64) = v38;
  swift_beginAccess();
  *(v28 + 48) = v44;
  *(v28 + 192) = v21;
  *(v28 + 200) = v20;
  *(v28 + 208) = v22;
  *(v28 + 216) = v23;
  *(v28 + 224) = v24;
  *(v28 + 232) = v25;
  *(v28 + 233) = v26;
  *(v28 + 240) = v27;
  return v28;
}

uint64_t FormatLayeredMediaNodeStyle.deinit()
{

  sub_1D5C8500C(*(v0 + 64));

  sub_1D5ED348C(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  sub_1D600ECE4(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));
  sub_1D60107F0(*(v0 + 192), *(v0 + 200), *(v0 + 208));
  sub_1D60107F0(*(v0 + 216), *(v0 + 224), *(v0 + 232));

  return v0;
}

uint64_t FormatLayeredMediaNodeStyle.__deallocating_deinit()
{
  FormatLayeredMediaNodeStyle.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatLayeredMediaNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatLayeredMediaNodeStyle.Selector.background.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return sub_1D5D04BD4(v2);
}

uint64_t FormatLayeredMediaNodeStyle.Selector.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 56);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatLayeredMediaNodeStyle.Selector.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v4 = *(v1 + 128);
  v10 = *(v1 + 112);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 144);
  v6 = *(v1 + 80);
  v9[0] = *(v1 + 64);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D67AE85C(v9, v8, sub_1D615C3A4);
}

uint64_t FormatLayeredMediaNodeStyle.Selector.video.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 168);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t FormatLayeredMediaNodeStyle.Selector.motion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 192);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t sub_1D67AD390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v57 = *(a1 + 48);
  v59 = *(a1 + 40);
  v54 = *(a1 + 56);
  v6 = *(a1 + 112);
  v76[2] = *(a1 + 96);
  v76[3] = v6;
  v76[4] = *(a1 + 128);
  v77 = *(a1 + 144);
  v7 = *(a1 + 80);
  v76[0] = *(a1 + 64);
  v76[1] = v7;
  v40 = *(a1 + 160);
  v41 = *(a1 + 152);
  v39 = *(a1 + 168);
  v43 = *(a1 + 184);
  v44 = *(a1 + 176);
  v42 = *(a1 + 192);
  v51 = *(a1 + 193);
  v50 = *v2;
  v52 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v10 = v2[5];
  v63 = v2[4];
  v65 = v2[6];
  v64 = *(v2 + 56);
  v11 = *(v2 + 5);
  v78[0] = *(v2 + 4);
  v78[1] = v11;
  v12 = *(v2 + 6);
  v13 = *(v2 + 7);
  v14 = *(v2 + 8);
  v79 = *(v2 + 144);
  v78[3] = v13;
  v78[4] = v14;
  v78[2] = v12;
  v15 = v2[19];
  v67 = v2[20];
  v66 = *(v2 + 168);
  v16 = v2[22];
  v17 = v2[23];
  v68 = *(v2 + 192);
  v49 = *(v2 + 193);
  v18 = v9;
  v19 = v2[25];
  v61 = v8;
  if (!v9)
  {

    v8 = v61;
    v18 = v20;
  }

  v48 = v18;
  v62 = v8;
  if ((~v8 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v4);
    v62 = v4;
  }

  v56 = v19;
  v21 = v63;
  if (!v63)
  {

    v21 = v5;
  }

  v47 = v21;
  v22 = v2 + 8;
  v53 = v10;
  v23 = v65;
  v24 = v64;
  if (v64 >= 0xFE)
  {
    v23 = v57;
    v10 = v59;
    v24 = v54;
    sub_1D5ED34B0(v59, v57, v54);
  }

  v45 = v24;
  if (v79 == 254)
  {
    v22 = v76;
    sub_1D67AE85C(v76, &v70, sub_1D615C3A4);
  }

  v46 = v23;
  v25 = v22[2];
  v26 = v22[4];
  v73 = v22[3];
  v74 = v26;
  v75 = *(v22 + 80);
  v27 = *v22;
  v28 = v22[1];
  v55 = v15;
  v29 = v15;
  v30 = v67;
  v31 = v66;
  v70 = v27;
  v71 = v28;
  v72 = v25;
  if (v66 == 255)
  {
    v30 = v40;
    v29 = v41;
    v31 = v39;
    sub_1D6189668(v41, v40, v39);
  }

  v58 = v17;
  v60 = v16;
  v32 = v68;
  if (v68 == 255)
  {
    v17 = v43;
    v16 = v44;
    v32 = v42;
    sub_1D6189668(v44, v43, v42);
  }

  v33 = v56;
  if (!v56)
  {
  }

  v34 = v51;
  if (v49 != 2)
  {
    v34 = v49;
  }

  *a2 = v50;
  *(a2 + 8) = v52;
  *(a2 + 16) = v48;
  *(a2 + 24) = v62;
  *(a2 + 32) = v47;
  *(a2 + 40) = v10;
  *(a2 + 48) = v46;
  *(a2 + 56) = v45;
  v35 = v73;
  v36 = v74;
  *(a2 + 96) = v72;
  *(a2 + 112) = v35;
  *(a2 + 128) = v36;
  *(a2 + 144) = v75;
  v37 = v71;
  *(a2 + 64) = v70;
  *(a2 + 80) = v37;
  *(a2 + 152) = v29;
  *(a2 + 160) = v30;
  *(a2 + 168) = v31;
  *(a2 + 176) = v16;
  *(a2 + 184) = v17;
  *(a2 + 192) = v32;
  *(a2 + 193) = v34;
  *(a2 + 200) = v33;

  sub_1D5D04BD4(v61);

  sub_1D5ED34B0(v53, v65, v64);
  sub_1D67AE85C(v78, v69, sub_1D615C3A4);
  sub_1D6189668(v55, v67, v66);
  sub_1D6189668(v60, v58, v68);
}

uint64_t FormatLayeredMediaNodeStyle.auxViewRequirements.getter()
{
  v1 = *(v0 + 64);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    v4 = &protocol witness table for FormatBackground;
    v3 = &type metadata for FormatBackground;
    v2 = *(v0 + 64);
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  v16[0] = v2;
  v16[3] = v3;
  v16[4] = v4;
  sub_1D5D04BD4(v1);
  sub_1D67AE3F4(v16, v15);
  sub_1D67AE3F4(v15, &v10);
  if (v11)
  {
    sub_1D5B63F14(&v10, v12);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = (*(v6 + 8))(v5, v6);
    v8 = sub_1D5EECE3C(v7, MEMORY[0x1E69E7CD0]);
    sub_1D5BFB774(v15, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1D5BFB774(v15, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding);
    sub_1D5BFB774(&v10, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding);
    v8 = MEMORY[0x1E69E7CD0];
  }

  sub_1D5BFB774(v16, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding);
  return v8;
}

uint64_t sub_1D67AD89C()
{
  v1 = *v0;
  sub_1D5B56218(0, &qword_1EDF195B8, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_1D7273AE0;
  v4 = *(v1 + 64);
  if ((~v4 & 0xF000000000000007) != 0)
  {
    v7 = &protocol witness table for FormatBackground;
    v6 = &type metadata for FormatBackground;
    v5 = *(v1 + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v5;
  *(inited + 56) = v6;
  *(inited + 64) = v7;
  sub_1D5D04BD4(v4);
  v8 = sub_1D6E27AC0();
  swift_setDeallocating();
  sub_1D5BFB774(v3 + 32, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding);
  return v8;
}

uint64_t _s8NewsFeed27FormatLayeredMediaNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v72 = *(a1 + 5);
  v71 = *(a1 + 56);
  v9 = *(a1 + 7);
  v109 = *(a1 + 6);
  v110 = v9;
  v111 = *(a1 + 8);
  v112 = *(a1 + 144);
  v10 = *(a1 + 5);
  v107 = *(a1 + 4);
  v108 = v10;
  v67 = *(a1 + 19);
  v66 = *(a1 + 168);
  v12 = a1[22];
  v11 = a1[23];
  v63 = *(a1 + 192);
  v59 = *(a1 + 193);
  v13 = a1[25];
  v14 = *a2;
  v15 = a2[1];
  v17 = a2[2];
  v16 = a2[3];
  v18 = a2[4];
  v69 = a2[5];
  v70 = a2[6];
  v19 = *(a2 + 56);
  v20 = *(a2 + 5);
  v113 = *(a2 + 4);
  v114 = v20;
  v21 = *(a2 + 6);
  v22 = *(a2 + 7);
  v23 = *(a2 + 8);
  v118 = *(a2 + 144);
  v116 = v22;
  v117 = v23;
  v115 = v21;
  v68 = a2[19];
  v65 = a2[20];
  v64 = *(a2 + 168);
  v61 = a2[22];
  v62 = a2[23];
  v60 = *(a2 + 192);
  v58 = *(a2 + 193);
  v57 = a2[25];
  if ((v4 != v14 || v5 != v15) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v17)
    {
      return 0;
    }

    v56 = v13;
    v24 = v11;

    sub_1D633A310(v6, v17);
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v17)
    {
      return 0;
    }

    v56 = v13;
    v24 = v11;
  }

  if ((~v8 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v8);
    sub_1D5D04BD4(v16);
    if ((~v16 & 0xF000000000000007) == 0)
    {
      sub_1D5C8500C(v8);
      v27 = v24;
      goto LABEL_19;
    }

LABEL_15:
    sub_1D5C8500C(v8);
    sub_1D5C8500C(v16);
    return 0;
  }

  *&v89 = v8;
  if ((~v16 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v8);
    sub_1D5D04BD4(v16);
    sub_1D5D04BD4(v8);

    goto LABEL_15;
  }

  v27 = v24;
  *v101 = v16;
  sub_1D5D04BD4(v8);
  sub_1D5D04BD4(v16);
  sub_1D5D04BD4(v8);
  v29 = static FormatBackground.== infix(_:_:)(&v89, v101);

  sub_1D5C8500C(v8);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  if (v7)
  {
    v30 = v56;
    if (!v18)
    {
      return 0;
    }

    v31 = v12;

    sub_1D633C9E8(v7, v18);
    v33 = v32;

    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v31 = v12;
    v30 = v56;
    if (v18)
    {
      return 0;
    }
  }

  if (v71 > 0xFD)
  {
    v34 = *(&v72 + 1);
    v35 = v72;
    sub_1D5ED34B0(v72, *(&v72 + 1), v71);
    v37 = v69;
    v36 = v70;
    sub_1D5ED34B0(v69, v70, v19);
    if (v19 > 0xFD)
    {
      sub_1D5ED348C(v72, *(&v72 + 1), v71);
      goto LABEL_31;
    }

LABEL_29:
    sub_1D5ED348C(v35, v34, v71);
    sub_1D5ED348C(v37, v36, v19);
    return 0;
  }

  v34 = *(&v72 + 1);
  v35 = v72;
  v89 = v72;
  LOBYTE(v90) = v71;
  v37 = v69;
  v36 = v70;
  if (v19 > 0xFD)
  {
    sub_1D5ED34B0(v72, *(&v72 + 1), v71);
    sub_1D5ED34B0(v69, v70, v19);
    sub_1D5ED34B0(v72, *(&v72 + 1), v71);
    sub_1D5ED34A0(v72, *(&v72 + 1), v71);
    goto LABEL_29;
  }

  *v101 = v69;
  *&v101[8] = v70;
  v101[16] = v19;
  sub_1D5ED34B0(v72, *(&v72 + 1), v71);
  sub_1D5ED34B0(v69, v70, v19);
  sub_1D5ED34B0(v72, *(&v72 + 1), v71);
  v38 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v89, v101);
  sub_1D5ED34A0(*v101, *&v101[8], v101[16]);
  sub_1D5ED34A0(v89, *(&v89 + 1), v90);
  sub_1D5ED348C(v72, *(&v72 + 1), v71);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v104 = v109;
  v105 = v110;
  v106 = v111;
  v102 = v107;
  v103 = v108;
  *&v101[23] = v114;
  *&v101[39] = v115;
  *&v101[55] = v116;
  *&v101[71] = v117;
  v39 = v112;
  *&v101[7] = v113;
  v40 = v118;
  if (v112 == 254)
  {
    if (v118 == 254)
    {
      v91 = v109;
      v92 = v110;
      v93 = v111;
      v89 = v107;
      v90 = v108;
      v94 = -2;
      sub_1D67AE85C(&v107, &v83, sub_1D615C3A4);
      sub_1D67AE85C(&v113, &v83, sub_1D615C3A4);
      sub_1D615F660(&v89, sub_1D615C3A4);
      goto LABEL_39;
    }

    sub_1D67AE85C(&v107, &v89, sub_1D615C3A4);
    sub_1D67AE85C(&v113, &v89, sub_1D615C3A4);
LABEL_37:
    v91 = v104;
    v92 = v105;
    v93 = v106;
    v89 = v102;
    v90 = v103;
    v97 = *&v101[32];
    v98 = *&v101[48];
    *v99 = *&v101[64];
    v95 = *v101;
    v94 = v39;
    *&v99[15] = *&v101[79];
    v96 = *&v101[16];
    v100 = v40;
    sub_1D615F660(&v89, sub_1D615F6C0);
    return 0;
  }

  v91 = v109;
  v92 = v110;
  v93 = v111;
  v89 = v107;
  v90 = v108;
  v94 = v112;
  v85 = v109;
  v86 = v110;
  v87 = v111;
  v88 = v112;
  v83 = v107;
  v84 = v108;
  if (v118 == 254)
  {
    v79 = v91;
    v80 = v92;
    v81 = v93;
    v82 = v94;
    v77 = v89;
    v78 = v90;
    sub_1D67AE85C(&v107, v75, sub_1D615C3A4);
    sub_1D67AE85C(&v113, v75, sub_1D615C3A4);
    sub_1D67AE85C(&v89, v75, sub_1D615C3A4);
    sub_1D601144C(&v77);
    goto LABEL_37;
  }

  v79 = v115;
  v80 = v116;
  v81 = v117;
  v77 = v113;
  v78 = v114;
  v82 = v118;
  sub_1D67AE85C(&v107, v75, sub_1D615C3A4);
  sub_1D67AE85C(&v113, v75, sub_1D615C3A4);
  sub_1D67AE85C(&v89, v75, sub_1D615C3A4);
  v41 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v83, &v77);
  v73[2] = v79;
  v73[3] = v80;
  v73[4] = v81;
  v74 = v82;
  v73[0] = v77;
  v73[1] = v78;
  sub_1D601144C(v73);
  v75[2] = v85;
  v75[3] = v86;
  v75[4] = v87;
  v76 = v88;
  v75[0] = v83;
  v75[1] = v84;
  sub_1D601144C(v75);
  v79 = v104;
  v80 = v105;
  v81 = v106;
  v77 = v102;
  v78 = v103;
  v82 = v39;
  sub_1D615F660(&v77, sub_1D615C3A4);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  if (v66 == 255)
  {
    v42 = *(&v67 + 1);
    v43 = v67;
    sub_1D6189668(v67, *(&v67 + 1), 255);
    v44 = v64;
    v45 = v65;
    if (v64 == 255)
    {
      sub_1D6189668(v68, v65, 255);
      sub_1D60107F0(v67, *(&v67 + 1), 255);
      goto LABEL_48;
    }

    v47 = v68;
    sub_1D6189668(v68, v65, v64);
LABEL_46:
    sub_1D60107F0(v43, v42, v66);
    v48 = v47;
    v49 = v45;
    v50 = v44;
LABEL_56:
    sub_1D60107F0(v48, v49, v50);
    return 0;
  }

  v42 = *(&v67 + 1);
  v43 = v67;
  v89 = v67;
  LOBYTE(v90) = v66;
  v44 = v64;
  v45 = v65;
  if (v64 == 255)
  {
    sub_1D6189668(v67, *(&v67 + 1), v66);
    v47 = v68;
    sub_1D6189668(v68, v65, 255);
    sub_1D6189668(v67, *(&v67 + 1), v66);
    sub_1D5D2F2C4(v67, *(&v67 + 1), v66 & 1);
    goto LABEL_46;
  }

  *v101 = v68;
  *&v101[8] = v65;
  v101[16] = v64 & 1;
  sub_1D6189668(v67, *(&v67 + 1), v66);
  sub_1D6189668(v68, v65, v64);
  sub_1D6189668(v67, *(&v67 + 1), v66);
  v46 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v89, v101);
  sub_1D5D2F2C4(*v101, *&v101[8], v101[16]);
  sub_1D5D2F2C4(v89, *(&v89 + 1), v90);
  sub_1D60107F0(v67, *(&v67 + 1), v66);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  if (v63 == 255)
  {
    sub_1D6189668(v31, v27, 255);
    v51 = v60;
    if (v60 == 255)
    {
      sub_1D6189668(v61, v62, 255);
      sub_1D60107F0(v31, v27, 255);
      goto LABEL_58;
    }

    v54 = v61;
    v53 = v62;
    sub_1D6189668(v61, v62, v60);
    goto LABEL_55;
  }

  *&v89 = v31;
  *(&v89 + 1) = v27;
  LOBYTE(v90) = v63;
  v51 = v60;
  if (v60 == 255)
  {
    sub_1D6189668(v31, v27, v63);
    v54 = v61;
    v53 = v62;
    sub_1D6189668(v61, v62, 255);
    sub_1D6189668(v31, v27, v63);
    sub_1D5D2F2C4(v31, v27, v63 & 1);
LABEL_55:
    sub_1D60107F0(v31, v27, v63);
    v48 = v54;
    v49 = v53;
    v50 = v51;
    goto LABEL_56;
  }

  *v101 = v61;
  *&v101[8] = v62;
  v101[16] = v60 & 1;
  sub_1D6189668(v31, v27, v63);
  sub_1D6189668(v61, v62, v60);
  sub_1D6189668(v31, v27, v63);
  v52 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v89, v101);
  sub_1D5D2F2C4(*v101, *&v101[8], v101[16]);
  sub_1D5D2F2C4(v89, *(&v89 + 1), v90);
  sub_1D60107F0(v31, v27, v63);
  if ((v52 & 1) == 0)
  {
    return 0;
  }

LABEL_58:
  if (v59 == 2)
  {
    if (v58 == 2)
    {
      goto LABEL_63;
    }

    return 0;
  }

  result = 0;
  if (v58 != 2 && ((v58 ^ v59) & 1) == 0)
  {
LABEL_63:
    if (v30)
    {
      if (v57)
      {

        v55 = sub_1D633CB78(v30, v57);

        if (v55)
        {
          return 1;
        }
      }
    }

    else if (!v57)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D67AE3F4(uint64_t a1, uint64_t a2)
{
  sub_1D5BFB8A8(0, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D67AE470(uint64_t a1)
{
  result = sub_1D67AE5A8(&qword_1EC88B830, &protocol conformance descriptor for FormatLayeredMediaNodeStyle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D67AE4B4(uint64_t a1)
{
  *(a1 + 16) = sub_1D67AE5A8(&qword_1EDF224B0, &protocol conformance descriptor for FormatLayeredMediaNodeStyle);
  result = sub_1D67AE5A8(&qword_1EDF0AFD8, &protocol conformance descriptor for FormatLayeredMediaNodeStyle);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D67AE51C(void *a1)
{
  a1[1] = sub_1D67AE5A8(&qword_1EDF224B0, &protocol conformance descriptor for FormatLayeredMediaNodeStyle);
  a1[2] = sub_1D67AE5A8(&qword_1EDF0AFD8, &protocol conformance descriptor for FormatLayeredMediaNodeStyle);
  result = sub_1D67AE5A8(&qword_1EC88B838, &protocol conformance descriptor for FormatLayeredMediaNodeStyle);
  a1[3] = result;
  return result;
}

uint64_t sub_1D67AE5A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatLayeredMediaNodeStyle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D67AE5E8(uint64_t a1)
{
  result = sub_1D67AE610();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67AE610()
{
  result = qword_1EC88B840;
  if (!qword_1EC88B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B840);
  }

  return result;
}

unint64_t sub_1D67AE664(uint64_t a1)
{
  *(a1 + 8) = sub_1D5CDB9F8();
  result = sub_1D5CDBA4C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D67AE694(void *a1)
{
  a1[1] = sub_1D5CDB9F8();
  a1[2] = sub_1D5CDBA4C();
  result = sub_1D67AE6CC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D67AE6CC()
{
  result = qword_1EC88B848;
  if (!qword_1EC88B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B848);
  }

  return result;
}

void sub_1D67AE748(uint64_t a1)
{
  if (!qword_1EDF05828)
  {
    sub_1D601014C();
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF05828);
    }
  }
}

void sub_1D67AE7AC(uint64_t a1)
{
  if (!qword_1EDF0A970)
  {
    v2 = sub_1D67AE808();
    v4 = type metadata accessor for FormatNodeStyleSelectorOrder(a1, &type metadata for FormatLayeredMediaNodeStyle.Selector, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDF0A970);
    }
  }
}

unint64_t sub_1D67AE808()
{
  result = qword_1EDF0AFE0;
  if (!qword_1EDF0AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AFE0);
  }

  return result;
}

uint64_t sub_1D67AE85C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D67AE8C4(uint64_t a1, __int128 *a2)
{
  v4 = a2[11];
  v66 = a2[10];
  v67 = v4;
  v68 = a2[12];
  v5 = a2[7];
  v62 = a2[6];
  v63 = v5;
  v6 = a2[9];
  v64 = a2[8];
  v65 = v6;
  v7 = a2[3];
  v58 = a2[2];
  v59 = v7;
  v8 = a2[5];
  v60 = a2[4];
  v61 = v8;
  v9 = a2[1];
  v56 = *a2;
  v57 = v9;
  swift_beginAccess();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  swift_beginAccess();
  *(v2 + 16) = v10;
  *(v2 + 24) = v11;
  v12 = *(a1 + 40);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 40) = v12;
  v13 = *(&v57 + 1);
  v43 = *(&v57 + 1);
  if ((~*(&v57 + 1) & 0xF000000000000007) == 0)
  {
    v13 = *(a1 + 64);
    sub_1D5D04BD4(v13);
  }

  *(v2 + 64) = v13;
  v14 = v58;
  if (!v58)
  {
  }

  *(v2 + 72) = v14;
  v15 = *(&v58 + 1);
  v16 = v59;
  v41 = v59;
  v42 = *(&v58 + 1);
  v17 = BYTE8(v59);
  v40 = BYTE8(v59);
  if (BYTE8(v59) >= 0xFEu)
  {
    v15 = *(a1 + 80);
    v16 = *(a1 + 88);
    v17 = *(a1 + 96);
    sub_1D5ED34B0(v15, v16, v17);
  }

  *(v2 + 80) = v15;
  *(v2 + 88) = v16;
  *(v2 + 96) = v17;
  if (v65 == 254)
  {
    v18 = *(a1 + 152);
    v46 = *(a1 + 136);
    v47 = v18;
    v48 = *(a1 + 168);
    v49 = *(a1 + 184);
    v19 = *(a1 + 120);
    v44 = *(a1 + 104);
    v45 = v19;
    sub_1D67AE85C(&v44, &v50, sub_1D615C3A4);
    v52 = v46;
    v53 = v47;
    v54 = v48;
    v55 = v49;
    v20 = v44;
    v21 = v45;
  }

  else
  {
    v52 = v62;
    v53 = v63;
    v54 = v64;
    v55 = v65;
    v20 = v60;
    v21 = v61;
  }

  v50 = v20;
  v51 = v21;
  v22 = v53;
  *(v2 + 136) = v52;
  *(v2 + 152) = v22;
  *(v2 + 168) = v54;
  *(v2 + 184) = v55;
  v23 = v51;
  *(v2 + 104) = v50;
  v24 = v57;
  *(v2 + 120) = v23;
  if (!v24)
  {
  }

  *(v2 + 56) = v24;
  swift_beginAccess();
  v25 = *(a1 + 48);
  swift_beginAccess();
  *(v2 + 48) = v25;
  v26 = *(&v65 + 1);
  v27 = v66;
  v28 = BYTE8(v66);
  v38 = v66;
  v39 = *(&v65 + 1);
  v29 = BYTE8(v66);
  if (BYTE8(v66) == 255)
  {
    v26 = *(a1 + 192);
    v27 = *(a1 + 200);
    v29 = *(a1 + 208);
    sub_1D6189668(v26, v27, v29);
  }

  *(v2 + 192) = v26;
  *(v2 + 200) = v27;
  *(v2 + 208) = v29;
  v30 = v67;
  v31 = v68;
  v33 = *(&v67 + 1);
  v32 = v67;
  v34 = v68;
  if (v68 == 255)
  {
    v32 = *(a1 + 216);
    v33 = *(a1 + 224);
    v34 = *(a1 + 232);
    sub_1D6189668(v32, v33, v34);
  }

  *(v2 + 216) = v32;
  *(v2 + 224) = v33;
  *(v2 + 232) = v34;
  v35 = BYTE1(v68);
  if (BYTE1(v68) == 2)
  {
    v35 = *(a1 + 233);
  }

  *(v2 + 233) = v35;
  v36 = *(&v68 + 1);

  sub_1D5D04BD4(v43);

  sub_1D5ED34B0(v42, v41, v40);
  sub_1D67AE85C(&v60, &v44, sub_1D615C3A4);

  sub_1D6189668(v39, v38, v28);
  sub_1D6189668(v30, *(&v30 + 1), v31);

  sub_1D5D0B670(&v56);
  if (!v36)
  {
    v36 = *(a1 + 240);
  }

  *(v2 + 240) = v36;
  return v2;
}

void *sub_1D67AEC44(uint64_t a1, uint64_t a2)
{
  v149 = type metadata accessor for FormatInspectionItem(0);
  v4 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149, v5);
  v146 = (&v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 112);
  v194 = *(a1 + 96);
  v195 = v7;
  v196 = *(a1 + 128);
  v197 = *(a1 + 144);
  v8 = *(a1 + 48);
  v190 = *(a1 + 32);
  v191 = v8;
  v9 = *(a1 + 80);
  v192 = *(a1 + 64);
  v193 = v9;
  v10 = *(a1 + 16);
  v188 = *a1;
  v189 = v10;
  sub_1D5B56218(0, &qword_1EC880AC0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
  v135 = v11;
  v122 = swift_allocObject();
  v134 = xmmword_1D7274590;
  *(v122 + 16) = xmmword_1D7274590;
  sub_1D679C3C4(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  v13 = v12;
  sub_1D5EA74B8(0);
  v136 = v14;
  v15 = *(*(v14 - 8) + 72);
  v16 = *(*(v14 - 8) + 80);
  v17 = (v16 + 32) & ~v16;
  v139 = v13;
  v140 = v15;
  v138 = v16;
  v18 = swift_allocObject();
  v133 = xmmword_1D7273AE0;
  *(v18 + 16) = xmmword_1D7273AE0;
  v137 = v17;
  v19 = (v18 + v17);
  v20 = sub_1D70DD9D8;
  if (a2)
  {
    v21 = *(a2 + 32);
    v22 = *(a2 + 40);

    v23 = sub_1D67ACDF0();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 64) = 0x4000000000000000;
    v20 = sub_1D601118C;
  }

  else
  {
    v24 = 0;
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  v25 = v149;
  v26 = (v19 + *(v149 + 24));
  *v26 = v20;
  v26[1] = v24;
  v27 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v141 = v27;
  v131 = v28 + 56;
  v132 = v29;
  v29(v26, 0, 1, v27);
  v30 = v137;
  *(v18 + v137) = v21;
  v19[2] = 0;
  v19[3] = 0;
  v19[1] = v22;
  v31 = v19 + *(v25 + 28);
  *v31 = 0;
  *(v31 + 1) = 0;
  v31[16] = -1;
  v33 = *(v4 + 56);
  v32 = v4 + 56;
  (v33)(v19, 0, 1, v25);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v18, v182);
  swift_setDeallocating();
  sub_1D615F660(v19, sub_1D5EA74B8);
  v34 = v33;
  swift_deallocClassInstance();
  v35 = v122;
  *(v122 + 56) = &type metadata for FormatInspectionGroup;
  *(v35 + 64) = &off_1F518B2C0;
  v36 = swift_allocObject();
  *(v35 + 32) = v36;
  v37 = v182[1];
  *(v36 + 16) = v182[0];
  *(v36 + 32) = v37;
  *(v36 + 48) = v183;
  v38 = v140;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1D727E3C0;
  v40 = v39 + v30;
  v41 = sub_1D711F844(1701869908, 0xE400000000000000, 0x4D6465726579614CLL, 0xEC00000061696465, (v39 + v30));
  v33(v39 + v30, 0, 1, v25, v41);
  if (a2)
  {
    v42 = *(a2 + 56);

    v43 = sub_1D711B070(0x6168706C41, 0xE500000000000000, v42, (v40 + v38));
    v34(v40 + v38, 0, 1, v25, v43);
    v44 = *(a2 + 64);
    sub_1D5D04BD4(v44);
  }

  else
  {
    v45 = sub_1D711B070(0x6168706C41, 0xE500000000000000, 0, (v40 + v38));
    v34(v40 + v38, 0, 1, v25, v45);
    v44 = 0xF000000000000007;
  }

  sub_1D7125A4C(0x756F72676B636142, 0xEA0000000000646ELL, v44, v40 + 2 * v38);
  v121 = v39 + v30;
  v130 = 2 * v38;
  v148 = v34;
  (v34)(v40 + 2 * v38, 0, 1, v25);
  if (a2)
  {
    v46 = *(a2 + 192);
    v47 = *(a2 + 200);
    v48 = *(a2 + 208);
    sub_1D6189668(v46, v47, v48);
  }

  else
  {
    v46 = 0;
    v47 = 0;
    v48 = -1;
  }

  v49 = 3 * v38;
  v50 = v121;
  sub_1D71237B4(0x6F65646956, 0xE500000000000000, v46, v47, v48, (v121 + v49));
  v129 = v49;
  v147 = v32;
  v148(v50 + v49, 0, 1, v149);
  v119 = v39;
  if (a2)
  {
    v51 = *(a2 + 216);
    v52 = *(a2 + 224);
    v53 = a2;
    v54 = *(a2 + 232);
    sub_1D6189668(v51, v52, v54);
  }

  else
  {
    v51 = 0;
    v53 = 0;
    v52 = 0;
    v54 = -1;
  }

  v55 = v140;
  sub_1D71237B4(0x6E6F69746F4DLL, 0xE600000000000000, v51, v52, v54, (v50 + 4 * v140));
  v128 = 4 * v55;
  v56 = v50 + 4 * v55;
  v57 = v149;
  v58 = v50;
  v59 = v148;
  v148(v56, 0, 1, v149);
  v120 = v53;
  if (!v53)
  {
    sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, 2u, (v58 + 5 * v55));
    v59(v58 + 5 * v55, 0, 1, v57);
    v62 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v96 = sub_1D5F62BFC(v62);

    v97 = sub_1D7073500(v96);

    sub_1D711AD20(0x737265746C6946, 0xE700000000000000, v97, 0, 0, (v58 + 6 * v55));
    v59(v58 + 6 * v55, 0, 1, v57);
    sub_1D6795150(0x4D6465726579614CLL, 0xEC00000061696465, 0, 0, v119, v186);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v98 = v122;
    *(v122 + 96) = &type metadata for FormatInspectionGroup;
    *(v98 + 104) = &off_1F518B2C0;
    v99 = swift_allocObject();
    *(v98 + 72) = v99;
    v100 = v186[1];
    *(v99 + 16) = v186[0];
    *(v99 + 32) = v100;
    *(v99 + 48) = v187;
    v178 = v194;
    v179 = v195;
    v180 = v196;
    v181 = v197;
    v174 = v190;
    v175 = v191;
    v176 = v192;
    v177 = v193;
    v172 = v188;
    v173 = v189;
    v101 = v120;
    if (v120)
    {
      v102 = *(v120 + 80);
      v103 = *(v120 + 88);
      v104 = *(v120 + 96);
      sub_1D5ED34B0(v102, v103, v104);
    }

    else
    {
      v102 = 0;
      v103 = 0;
      v104 = -2;
    }

    *&v162 = v102;
    *(&v162 + 1) = v103;
    LOBYTE(v163) = v104;
    v105 = sub_1D6D9893C(&v172, &v162);
    sub_1D5ED348C(v162, *(&v162 + 1), v163);
    v106 = v122;
    *(v122 + 136) = &type metadata for FormatInspection;
    *(v106 + 144) = &off_1F51E3FD0;
    *(v106 + 112) = v105;
    v168 = v194;
    v169 = v195;
    v170 = v196;
    v171 = v197;
    v164 = v190;
    v165 = v191;
    v166 = v192;
    v167 = v193;
    v162 = v188;
    v163 = v189;
    if (v101)
    {
      v107 = *(v101 + 152);
      v158 = *(v101 + 136);
      v159 = v107;
      v160 = *(v101 + 168);
      v161 = *(v101 + 184);
      v108 = *(v101 + 120);
      v156 = *(v101 + 104);
      v157 = v108;
      sub_1D67AE85C(&v156, &v150, sub_1D615C3A4);
      v109 = v156;
      v110 = v157;
      v111 = v158;
      v112 = v159;
      v113 = v160;
      v114 = v161;
    }

    else
    {
      v109 = 0uLL;
      v114 = -2;
      v110 = 0uLL;
      v111 = 0uLL;
      v112 = 0uLL;
      v113 = 0uLL;
    }

    v150 = v109;
    v151 = v110;
    v152 = v111;
    v153 = v112;
    v154 = v113;
    v155 = v114;
    v115 = sub_1D686F740(&v162, &v150);
    v158 = v152;
    v159 = v153;
    v160 = v154;
    v161 = v155;
    v156 = v150;
    v157 = v151;
    sub_1D615F660(&v156, sub_1D615C3A4);
    v116 = v122;
    *(v122 + 176) = &type metadata for FormatInspection;
    *(v116 + 184) = &off_1F51E3FD0;
    *(v116 + 152) = v115;
    v117 = sub_1D7073500(v116);
    swift_setDeallocating();
    sub_1D5BFB8A8(0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v117;
  }

  sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, *(v53 + 233), (v58 + 5 * v55));
  v59(v58 + 5 * v55, 0, 1, v57);
  v60 = *(v53 + 240);
  if (!v60)
  {
    v62 = MEMORY[0x1E69E7CC0];
    v59 = v148;
    v55 = v140;
    goto LABEL_26;
  }

  v61 = *(v60 + 16);
  v62 = MEMORY[0x1E69E7CC0];
  if (!v61)
  {
LABEL_23:
    v55 = v140;
    v59 = v148;
LABEL_26:
    v58 = v121;
    goto LABEL_27;
  }

  *&v162 = MEMORY[0x1E69E7CC0];
  result = sub_1D6997EC0(0, v61, 0);
  v64 = 0;
  v62 = v162;
  v125 = "aNodeStyle";
  v65 = (v60 + 48);
  v124 = xmmword_1D72EBCC0;
  v123 = 0xD000000000000017;
  v126 = v61;
  v127 = v60;
  while (v64 < *(v60 + 16))
  {
    v144 = v64;
    v145 = v62;
    v67 = *(v65 - 2);
    v66 = *(v65 - 1);
    v143 = v65;
    v68 = *v65;
    v69 = swift_allocObject();
    *(v69 + 16) = v133;
    v70 = v137;
    v71 = swift_allocObject();
    *(v71 + 16) = v134;
    v72 = (v71 + v70);
    sub_1D5CFCFAC(v67);
    sub_1D5D04BD4(v66);
    sub_1D5D04BD4(v68);
    sub_1D5CFCFAC(v67);
    v73 = v66;
    sub_1D5D04BD4(v66);
    v74 = v68;
    v75 = v68;
    v76 = v67;
    sub_1D5D04BD4(v75);
    v77 = sub_1D711F844(1701869908, 0xE400000000000000, 0x6F7268636F6E6F4DLL, 0xEA0000000000656DLL, v72);
    v78 = 1;
    (v148)(v72, 0, 1, v57, v77);
    v79 = (v146 + *(v57 + 24));
    if ((~v76 & 0xF000000000000007) != 0)
    {
      *v79 = v76;
      swift_storeEnumTagMultiPayload();
      v78 = 0;
    }

    v132(v79, v78, 1, v141);
    v80 = v146;
    *v146 = v124;
    *(v80 + 16) = 0;
    *(v80 + 24) = 0;
    v81 = v149;
    v82 = v80 + *(v149 + 28);
    *v82 = 0;
    *(v82 + 8) = 0;
    *(v82 + 16) = -1;
    v83 = v140;
    sub_1D613ADAC(v80, &v72[v140]);
    v84 = &v72[v83];
    v85 = v148;
    v148(v84, 0, 1, v81);
    sub_1D5CFCFAC(v76);
    sub_1D5D04BD4(v73);
    v142 = v76;
    v86 = v130;
    v87 = sub_1D7123FB0(0x746E756F6D41, 0xE600000000000000, v73, &v72[v130]);
    v85(&v72[v86], 0, 1, v81, v87);
    sub_1D5D04BD4(v74);
    v88 = v129;
    v89 = sub_1D7123FB0(v123, v125 | 0x8000000000000000, v74, &v72[v129]);
    v85(&v72[v88], 0, 1, v81, v89);
    sub_1D6795150(0x7265746C6946, 0xE600000000000000, 0, 0, v71, v184);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v69 + 56) = &type metadata for FormatInspectionGroup;
    *(v69 + 64) = &off_1F518B2C0;
    v90 = swift_allocObject();
    *(v69 + 32) = v90;
    v91 = v184[1];
    *(v90 + 16) = v184[0];
    *(v90 + 32) = v91;
    *(v90 + 48) = v185;
    v92 = sub_1D7073500(v69);
    swift_setDeallocating();
    sub_1D5BFB774(v69 + 32, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
    swift_deallocClassInstance();
    v93 = v142;
    sub_1D5C84FF4(v142);
    sub_1D5C8500C(v73);
    sub_1D5C8500C(v74);
    sub_1D5C84FF4(v93);
    sub_1D5C8500C(v73);
    sub_1D5C8500C(v74);
    v62 = v145;
    *&v162 = v145;
    v95 = *(v145 + 16);
    v94 = *(v145 + 24);
    if (v95 >= v94 >> 1)
    {
      sub_1D6997EC0((v94 > 1), v95 + 1, 1);
      v62 = v162;
    }

    v64 = v144 + 1;
    *&v174 = &off_1F51E3FD0;
    *(&v173 + 1) = &type metadata for FormatInspection;
    *&v172 = v92;
    *(v62 + 16) = v95 + 1;
    result = sub_1D5B63F14(&v172, v62 + 40 * v95 + 32);
    v65 = v143 + 3;
    v60 = v127;
    v57 = v149;
    if (v126 == v64)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D67AFAA8(void **a1)
{
  v3 = v1;
  v5 = sub_1D67AFD58(*a1);
  v7 = v6;
  sub_1D67B0CC4(a1);
  if (v2)
  {

    sub_1D67B2FF8(a1, type metadata accessor for PuzzleDatastoreInfo);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x1E69CE158]);
    v9 = sub_1D726203C();

    v10 = [v8 initWithJSONString_];

    *(v3 + 16) = v10;
    *&v18[0] = 0;
    *(&v18[0] + 1) = 0xE000000000000000;
    sub_1D7263D4C();

    *&v22 = 0x7250656C7A7A7570;
    *(&v22 + 1) = 0xEF3D73736572676FLL;
    v11 = a1 + *(type metadata accessor for PuzzleDatastoreInfo(0) + 28);
    v12 = *(v11 + 8);
    v13 = 7104878;
    v14 = 0xE300000000000000;
    if (v12 != 1)
    {
      v18[0] = *v11;
      v18[1] = *(v11 + 1);
      v18[2] = *(v11 + 2);
      v18[3] = *(v11 + 3);
      v19 = v12;
      v20 = *(v11 + 72);
      v21 = *(v11 + 11);
      v13 = PuzzleProgress.debugDescription.getter();
      v14 = v15;
    }

    MEMORY[0x1DA6F9910](v13, v14);

    MEMORY[0x1DA6F9910](10, 0xE100000000000000);
    sub_1D7263D4C();

    strcpy(v18, "puzzleConfig= ");
    HIBYTE(v18[0]) = -18;
    if (v7)
    {
      v16 = v5;
    }

    else
    {
      v16 = 7104878;
    }

    if (!v7)
    {
      v7 = 0xE300000000000000;
    }

    MEMORY[0x1DA6F9910](v16, v7);

    MEMORY[0x1DA6F9910](*&v18[0], *(&v18[0] + 1));

    sub_1D67B2FF8(a1, type metadata accessor for PuzzleDatastoreInfo);
    *(v3 + 24) = v22;
  }

  return v3;
}

uint64_t sub_1D67AFD58(void *a1)
{
  v148 = *MEMORY[0x1E69E9840];
  v2 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v142[1] = v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67B30C0(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v9, v10).n128_u64[0];
  v13 = v142 - v12;
  v14 = [a1 identifier];
  v15 = sub_1D726207C();
  v17 = v16;

  v18 = MEMORY[0x1E69E6158];
  v147 = MEMORY[0x1E69E6158];
  *&v146 = v15;
  *(&v146 + 1) = v17;
  sub_1D5B7C390(&v146, v145);
  v19 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v144 = v19;
  sub_1D5BAFB24(v145, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  v21 = v144;
  v22 = [objc_msgSend(a1 puzzleType)];
  swift_unknownObjectRelease();
  v23 = sub_1D726207C();
  v25 = v24;

  v147 = v18;
  *&v146 = v23;
  *(&v146 + 1) = v25;
  sub_1D5B7C390(&v146, v145);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v21;
  sub_1D5BAFB24(v145, 0xD000000000000014, 0x80000001D73D4B70, v26);
  v27 = v143;
  v144 = v143;
  v28 = [a1 title];
  v29 = MEMORY[0x1E69E7CA0];
  if (v28)
  {
    v30 = v28;
    v31 = sub_1D726207C();
    v33 = v32;

    v147 = v18;
    *&v146 = v31;
    *(&v146 + 1) = v33;
    sub_1D5B7C390(&v146, v145);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v27;
    sub_1D5BAFB24(v145, 0x656C746974, 0xE500000000000000, v34);
    v144 = v143;
  }

  else
  {
    sub_1D607E0F0(0x656C746974, 0xE500000000000000, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
  }

  v35 = [a1 subtitle];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1D726207C();
    v39 = v38;

    v147 = v18;
    *&v146 = v37;
    *(&v146 + 1) = v39;
    sub_1D5B7C390(&v146, v145);
    v40 = v144;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v40;
    sub_1D5BAFB24(v145, 0x656C746974627573, 0xE800000000000000, v41);
    v144 = v143;
  }

  else
  {
    sub_1D607E0F0(0x656C746974627573, 0xE800000000000000, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
  }

  v42 = [a1 puzzleDescription];
  if (v42)
  {
    v43 = v42;
    v44 = sub_1D726207C();
    v46 = v45;

    v147 = v18;
    *&v146 = v44;
    *(&v146 + 1) = v46;
    sub_1D5B7C390(&v146, v145);
    v47 = v144;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v47;
    sub_1D5BAFB24(v145, 0x7470697263736564, 0xEB000000006E6F69, v48);
    v144 = v143;
  }

  else
  {
    sub_1D607E0F0(0x7470697263736564, 0xEB000000006E6F69, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
  }

  v49 = [a1 authors];
  if (v49)
  {
    v50 = MEMORY[0x1E69E6158];
    v51 = v49;
    v52 = sub_1D726267C();

    sub_1D67B3544(0, &qword_1EDF43BA0, v50, MEMORY[0x1E69E62F8]);
    v147 = v53;
    *&v146 = v52;
    sub_1D5B7C390(&v146, v145);
    v54 = v144;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v54;
    sub_1D5BAFB24(v145, 0x726F68747561, 0xE600000000000000, v55);
    v144 = v143;
  }

  else
  {
    sub_1D607E0F0(0x726F68747561, 0xE600000000000000, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
  }

  v56 = [a1 publishDate];
  if (v56)
  {
    v57 = v56;
    sub_1D72588BC();

    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  v59 = sub_1D725891C();
  v60 = *(v59 - 8);
  (*(v60 + 56))(v8, v58, 1, v59);
  sub_1D5DF42F8(v8, v13);
  if ((*(v60 + 48))(v13, 1, v59) == 1)
  {
    sub_1D67B323C(v13, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    sub_1D607E0F0(0x656873696C627570, 0xED00006574614464, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
    v61 = v144;
  }

  else
  {
    sub_1D725889C();
    v147 = MEMORY[0x1E69E63B0];
    *&v146 = v62;
    (*(v60 + 8))(v13, v59);
    sub_1D5B7C390(&v146, v145);
    v63 = v144;
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v63;
    sub_1D5BAFB24(v145, 0x656873696C627570, 0xED00006574614464, v64);
    v61 = v143;
  }

  v65 = [a1 isPaid];
  v66 = MEMORY[0x1E69E6370];
  v147 = MEMORY[0x1E69E6370];
  LOBYTE(v146) = v65;
  sub_1D5B7C390(&v146, v145);
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v61;
  sub_1D5BAFB24(v145, 0x646961507369, 0xE600000000000000, v67);
  v68 = v143;
  v144 = v143;
  v69 = [a1 teaserClue];
  if (v69)
  {
    v70 = v69;
    v71 = sub_1D726207C();
    v73 = v72;

    v147 = v18;
    *&v146 = v71;
    *(&v146 + 1) = v73;
    sub_1D5B7C390(&v146, v145);
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v68;
    sub_1D5BAFB24(v145, 0x6C43726573616574, 0xEA00000000006575, v74);
    v144 = v143;
  }

  else
  {
    sub_1D607E0F0(0x6C43726573616574, 0xEA00000000006575, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
  }

  v75 = [a1 teaserInfo];
  if (v75)
  {
    v76 = v75;
    v77 = sub_1D726207C();
    v79 = v78;

    v147 = v18;
    *&v146 = v77;
    *(&v146 + 1) = v79;
    sub_1D5B7C390(&v146, v145);
    v80 = v144;
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v80;
    sub_1D5BAFB24(v145, 0x6948726573616574, 0xEA0000000000746ELL, v81);
    v144 = v143;
  }

  else
  {
    sub_1D607E0F0(0x6948726573616574, 0xEA0000000000746ELL, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
  }

  v82 = [a1 teaserAnswer];
  if (v82)
  {
    v83 = v82;
    v84 = sub_1D726207C();
    v86 = v85;

    v147 = v18;
    *&v146 = v84;
    *(&v146 + 1) = v86;
    sub_1D5B7C390(&v146, v145);
    v87 = v144;
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v87;
    sub_1D5BAFB24(v145, 0x6E41726573616574, 0xEC00000072657773, v88);
    v144 = v143;
  }

  else
  {
    sub_1D607E0F0(0x6E41726573616574, 0xEC00000072657773, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
  }

  v89 = [a1 teaserNumber];
  if (v89)
  {
    v90 = v89;
    v91 = sub_1D726207C();
    v93 = v92;

    v147 = v18;
    *&v146 = v91;
    *(&v146 + 1) = v93;
    sub_1D5B7C390(&v146, v145);
    v94 = v144;
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v94;
    sub_1D5BAFB24(v145, 0x754E726573616574, 0xEC0000007265626DLL, v95);
    v144 = v143;
  }

  else
  {
    sub_1D607E0F0(0x754E726573616574, 0xEC0000007265626DLL, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
  }

  v96 = [a1 teaserDirection];
  if (v96)
  {
    v97 = v96;
    v98 = sub_1D726207C();
    v100 = v99;

    v147 = v18;
    *&v146 = v98;
    *(&v146 + 1) = v100;
    sub_1D5B7C390(&v146, v145);
    v101 = v144;
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v101;
    sub_1D5BAFB24(v145, 0x6944726573616574, 0xEF6E6F6974636572, v102);
    v103 = v143;
  }

  else
  {
    sub_1D607E0F0(0x6944726573616574, 0xEF6E6F6974636572, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
    v103 = v144;
  }

  v104 = [a1 difficulty];
  v147 = MEMORY[0x1E69E7360];
  *&v146 = v104;
  sub_1D5B7C390(&v146, v145);
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v103;
  sub_1D5BAFB24(v145, 0x6C75636966666964, 0xEA00000000007974, v105);
  v106 = v143;
  v144 = v143;
  v107 = [a1 difficultyDescription];
  if (v107)
  {
    v108 = v107;
    v109 = sub_1D726207C();
    v111 = v110;

    v147 = v18;
    *&v146 = v109;
    *(&v146 + 1) = v111;
    sub_1D5B7C390(&v146, v145);
    v112 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v106;
    sub_1D5BAFB24(v145, 0xD000000000000015, 0x80000001D73D4B90, v112);
    v144 = v143;
  }

  else
  {
    sub_1D607E0F0(0xD000000000000015, 0x80000001D73D4B90, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
  }

  *&v146 = 0;
  *(&v146 + 1) = 0xE000000000000000;
  sub_1D7263D4C();

  *&v146 = 0xD000000000000013;
  *(&v146 + 1) = 0x80000001D73D2FC0;
  v113 = [a1 identifier];
  v114 = sub_1D726207C();
  v116 = v115;

  MEMORY[0x1DA6F9910](v114, v116);

  v147 = v18;
  sub_1D5B7C390(&v146, v145);
  v117 = v144;
  v118 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v117;
  sub_1D5BAFB24(v145, 7107189, 0xE300000000000000, v118);
  v119 = v143;
  v120 = sub_1D67B2E5C(a1);
  v147 = v66;
  LOBYTE(v146) = v120 & 1;
  sub_1D5B7C390(&v146, v145);
  v121 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v119;
  sub_1D5BAFB24(v145, 0xD000000000000018, 0x80000001D73D4BB0, v121);
  v122 = v143;
  v123 = [a1 ignoreFromStatsAndStreaks];
  v147 = v66;
  LOBYTE(v146) = v123;
  sub_1D5B7C390(&v146, v145);
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v122;
  sub_1D5BAFB24(v145, 0xD000000000000019, 0x80000001D73BA670, v124);
  v125 = v143;
  v126 = [a1 isDeprecated];
  v147 = v66;
  LOBYTE(v146) = v126;
  sub_1D5B7C390(&v146, v145);
  v127 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v125;
  sub_1D5BAFB24(v145, 0x6365727065447369, 0xEC00000064657461, v127);
  v128 = v143;
  v129 = [a1 isDraft];
  v147 = v66;
  LOBYTE(v146) = v129;
  sub_1D5B7C390(&v146, v145);
  v130 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v128;
  sub_1D5BAFB24(v145, 0x74666172447369, 0xE700000000000000, v130);
  v131 = objc_opt_self();
  v132 = sub_1D7261D2C();

  *&v146 = 0;
  v133 = [v131 dataWithJSONObject:v132 options:2 error:&v146];

  v134 = v146;
  if (v133)
  {
    v135 = sub_1D725867C();
    v137 = v136;

    sub_1D72620CC();
    v138 = sub_1D726209C();
    sub_1D5B952F8(v135, v137);
  }

  else
  {
    v139 = v134;
    v140 = sub_1D725829C();

    swift_willThrow();
    return 0;
  }

  return v138;
}

id sub_1D67B0CC4(void **a1)
{
  v2 = v1;
  v145 = *MEMORY[0x1E69E9840];
  sub_1D67B30C0(0, &unk_1EC882110, type metadata accessor for PuzzleHistoryInfo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v125 = &v118 - v6;
  v7 = type metadata accessor for PuzzleHistoryInfo(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PuzzleResource(0);
  v16 = sub_1D67B1B88();
  if (!v17)
  {
    sub_1D67B1E74();
    swift_allocError();
    *v63 = 0;
LABEL_39:
    swift_willThrow();
    return v2;
  }

  v18 = v16;
  v19 = v17;
  v120 = v8;
  v121 = v7;
  v118 = v11;
  v123 = v15;
  v124 = v1;
  v122 = *a1;
  *&v119 = sub_1D67AFD58(v122);
  *(&v119 + 1) = v20;
  *(&v140 + 1) = MEMORY[0x1E69E6158];
  *&v139 = v18;
  *(&v139 + 1) = v19;
  sub_1D5B7C390(&v139, v134);
  v21 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v128 = v21;
  sub_1D5BAFB24(v134, 0x6144656C7A7A7570, 0xEA00000000006174, isUniquelyReferenced_nonNull_native);
  v23 = v128;
  v24 = [objc_opt_self() currentDevice];
  v25 = [v24 userInterfaceIdiom];

  v26 = v25 == 0;
  v27 = MEMORY[0x1E69E6370];
  v28 = v26;
  *(&v140 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v139) = v28;
  sub_1D5B7C390(&v139, v134);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *&v128 = v23;
  sub_1D5BAFB24(v134, 0x4F676E696E6E7572, 0xEF656C69626F4D6ELL, v29);
  v30 = v128;
  v31 = type metadata accessor for PuzzleDatastoreInfo(0);
  v32 = *(a1 + v31[5]);
  *(&v140 + 1) = v27;
  LOBYTE(v139) = v32;
  sub_1D5B7C390(&v139, v134);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *&v128 = v30;
  sub_1D5BAFB24(v134, 0x6269726373627573, 0xEA00000000006465, v33);
  v34 = v128;
  v35 = *(a1 + v31[6]);
  *(&v140 + 1) = v27;
  LOBYTE(v139) = v35;
  sub_1D5B7C390(&v139, v134);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  *&v128 = v34;
  sub_1D5BAFB24(v134, 0x7365636341736168, 0xE900000000000073, v36);
  v37 = v128;
  v38 = *(a1 + v31[15]);
  *(&v140 + 1) = v27;
  LOBYTE(v139) = v38;
  sub_1D5B7C390(&v139, v134);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  *&v128 = v37;
  sub_1D5BAFB24(v134, 0xD000000000000018, 0x80000001D73D49E0, v39);
  v40 = v128;
  v41 = a1 + v31[8];
  v42 = *(v41 + 4);
  if (BYTE3(v42) != 255)
  {
    v44 = *(v41 + 1);
    *&v139 = *v41;
    v43 = v139;
    *(&v139 + 1) = v44;
    BYTE2(v140) = BYTE2(v42);
    LOWORD(v140) = v42;
    BYTE3(v140) = BYTE3(v42);
    sub_1D5FE3E0C(v139, v44, v42, SBYTE3(v42));
    v45 = sub_1D67B1EC8(&v139);
    sub_1D5BB0DB0();
    *(&v140 + 1) = v46;
    *&v139 = v45;
    sub_1D5B7C390(&v139, v134);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    *&v128 = v40;
    sub_1D5BAFB24(v134, 0x634168636E75616CLL, 0xEC0000006E6F6974, v47);
    sub_1D5FE3E2C(v43, v44, v42);
    v40 = v128;
    v42 = *(v41 + 4);
  }

  v48 = *(v41 + 1);
  *&v139 = *v41;
  *(&v139 + 1) = v48;
  LODWORD(v140) = v42;
  sub_1D5FE3DF8(v139, v48, v42);
  v49 = sub_1D67B1FF0(&v139);
  sub_1D5FE3E2C(v139, *(&v139 + 1), v140);
  if ((v49 & 1) == 0)
  {
    v50 = (a1 + v31[7]);
    v51 = v50[3];
    v52 = v50[1];
    v135 = v50[2];
    v136 = v51;
    v53 = v50[3];
    v54 = v50[5];
    v137 = v50[4];
    v138 = v54;
    v55 = v50[1];
    v134[0] = *v50;
    v134[1] = v55;
    v130 = v135;
    v131 = v53;
    v56 = v50[5];
    v132 = v137;
    v133 = v56;
    v128 = v134[0];
    v129 = v52;
    sub_1D67B2F20(v134, v127, &qword_1EC880F08, &type metadata for PuzzleProgress, MEMORY[0x1E69E6720], sub_1D67B3544);
    v57 = sub_1D67B2100(&v128, 0);
    v59 = v58;
    v141 = v130;
    v142 = v131;
    v143 = v132;
    v144 = v133;
    v139 = v128;
    v140 = v129;
    sub_1D5B88BD0(&v139, &qword_1EC880F08, &type metadata for PuzzleProgress);
    if (v59)
    {
      *(&v129 + 1) = MEMORY[0x1E69E6158];
      *&v128 = v57;
      *(&v128 + 1) = v59;
      sub_1D5B7C390(&v128, v127);
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v126 = v40;
      sub_1D5BAFB24(v127, 0xD000000000000011, 0x80000001D73D4B20, v60);
      v40 = v126;
    }
  }

  v61 = MEMORY[0x1E69E6158];
  if (*(&v119 + 1))
  {
    *(&v140 + 1) = MEMORY[0x1E69E6158];
    v139 = v119;
    sub_1D5B7C390(&v139, v134);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    *&v128 = v40;
    sub_1D5BAFB24(v134, 0x6F43656C7A7A7570, 0xEC0000006769666ELL, v62);
    v40 = v128;
  }

  v64 = a1 + v31[9];
  v65 = *(v64 + 1);
  if (v65 >> 60 != 15)
  {
    v66 = *v64;
    sub_1D5E3E824(*v64, *(v64 + 1));
    sub_1D72620CC();
    v67 = sub_1D726209C();
    if (v68)
    {
      *(&v140 + 1) = v61;
      *&v139 = v67;
      *(&v139 + 1) = v68;
      sub_1D5B7C390(&v139, v134);
      v69 = swift_isUniquelyReferenced_nonNull_native();
      *&v128 = v40;
      sub_1D5BAFB24(v134, 0x6553656C7A7A7570, 0xEE0073676E697474, v69);
      sub_1D5B952E4(v66, v65);
      v40 = v128;
    }

    else
    {
      sub_1D5B952E4(v66, v65);
    }
  }

  v70 = (a1 + v31[10]);
  v71 = v70[1];
  if (v71)
  {
    v72 = *v70;
    *(&v140 + 1) = v61;
    *&v139 = v72;
    *(&v139 + 1) = v71;
    sub_1D5B7C390(&v139, v134);

    v73 = swift_isUniquelyReferenced_nonNull_native();
    *&v128 = v40;
    sub_1D5BAFB24(v134, 0xD000000000000012, 0x80000001D73D4B00, v73);
    v40 = v128;
  }

  v74 = (a1 + v31[17]);
  v75 = v74[1];
  if (v75)
  {
    v76 = *v74;
    *(&v140 + 1) = v61;
    *&v139 = v76;
    *(&v139 + 1) = v75;
    sub_1D5B7C390(&v139, v134);

    v77 = swift_isUniquelyReferenced_nonNull_native();
    *&v128 = v40;
    sub_1D5BAFB24(v134, 0xD000000000000011, 0x80000001D73D4AE0, v77);
    v40 = v128;
  }

  if (*(a1 + v31[11]))
  {

    v78 = sub_1D6F65200();
    sub_1D5BB0DB0();
    *(&v140 + 1) = v79;
    *&v139 = v78;
    sub_1D5B7C390(&v139, v134);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    *&v128 = v40;
    sub_1D5BAFB24(v134, 0x7453656C7A7A7570, 0xEF6F666E49737461, v80);

    v40 = v128;
  }

  v81 = (a1 + v31[16]);
  v82 = v81[1];
  if (v82)
  {
    v83 = *v81;
    *(&v140 + 1) = v61;
    *&v139 = v83;
    *(&v139 + 1) = v82;
    sub_1D5B7C390(&v139, v134);

    v84 = swift_isUniquelyReferenced_nonNull_native();
    *&v128 = v40;
    sub_1D5BAFB24(v134, 0xD000000000000011, 0x80000001D73D4AC0, v84);
    v40 = v128;
  }

  v85 = *(a1 + v31[13]);
  *(&v140 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v139) = v85;
  sub_1D5B7C390(&v139, v134);
  v86 = swift_isUniquelyReferenced_nonNull_native();
  *&v128 = v40;
  sub_1D5BAFB24(v134, 0xD00000000000001ALL, 0x80000001D73D4A00, v86);
  v87 = v128;
  v88 = v125;
  sub_1D67B2F20(a1 + v31[12], v125, &unk_1EC882110, type metadata accessor for PuzzleHistoryInfo, MEMORY[0x1E69E6720], sub_1D67B30C0);
  if ((*(v120 + 48))(v88, 1, v121) == 1)
  {
    sub_1D67B323C(v88, &unk_1EC882110, type metadata accessor for PuzzleHistoryInfo);
  }

  else
  {
    v89 = v118;
    sub_1D67B2F94(v88, v118);
    PuzzleHistoryInfo.asDictionary.getter();
    v91 = v90;
    sub_1D5BB0DB0();
    *(&v140 + 1) = v92;
    *&v139 = v91;
    sub_1D5B7C390(&v139, v134);
    v93 = swift_isUniquelyReferenced_nonNull_native();
    *&v128 = v87;
    sub_1D5BAFB24(v134, 0xD000000000000011, 0x80000001D73D4AA0, v93);
    sub_1D67B2FF8(v89, type metadata accessor for PuzzleHistoryInfo);
    v87 = v128;
  }

  v94 = sub_1D67B277C(v122);
  if (v94)
  {
    v95 = v94;
    sub_1D5BB0DB0();
    *(&v140 + 1) = v96;
    *&v139 = v95;
    sub_1D5B7C390(&v139, v134);
    v97 = swift_isUniquelyReferenced_nonNull_native();
    *&v128 = v87;
    sub_1D5BAFB24(v134, 0xD000000000000013, 0x80000001D73D4A80, v97);
    v87 = v128;
  }

  v98 = sub_1D67B2B08(*(a1 + v31[18]));
  if (v98)
  {
    v99 = v98;
    sub_1D67B3544(0, &unk_1EDF1ADF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
    *(&v140 + 1) = v100;
    *&v139 = v99;
    sub_1D5B7C390(&v139, v134);
    v101 = swift_isUniquelyReferenced_nonNull_native();
    *&v128 = v87;
    sub_1D5BAFB24(v134, 0xD000000000000012, 0x80000001D73D4A60, v101);
    v87 = v128;
  }

  v102 = (a1 + v31[14]);
  v103 = v102[1];
  if (v103)
  {
    v104 = *v102;
    *(&v140 + 1) = MEMORY[0x1E69E6158];
    *&v139 = v104;
    *(&v139 + 1) = v103;
    sub_1D5B7C390(&v139, v134);

    v105 = swift_isUniquelyReferenced_nonNull_native();
    *&v128 = v87;
    sub_1D5BAFB24(v134, 0xD000000000000018, 0x80000001D73D4A40, v105);
    v87 = v128;
  }

  *(&v140 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v139) = 1;
  sub_1D5B7C390(&v139, v134);
  v106 = swift_isUniquelyReferenced_nonNull_native();
  *&v128 = v87;
  sub_1D5BAFB24(v134, 0xD00000000000001BLL, 0x80000001D73D4A20, v106);
  v107 = objc_opt_self();
  v108 = sub_1D7261D2C();

  *&v139 = 0;
  v2 = [v107 dataWithJSONObject:v108 options:2 error:&v139];

  v109 = v139;
  if (!v2)
  {
    v115 = v109;
    sub_1D725829C();

    goto LABEL_39;
  }

  v110 = sub_1D725867C();
  v112 = v111;

  sub_1D72620CC();
  v113 = sub_1D726209C();
  if (v114)
  {
    v2 = v113;
  }

  else
  {
    sub_1D67B1E74();
    swift_allocError();
    *v117 = 1;
    swift_willThrow();
  }

  sub_1D5B952F8(v110, v112);
  return v2;
}

uint64_t sub_1D67B1A30()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D67B1A70(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + 16) JSONString];
  v4 = sub_1D726207C();
  v6 = v5;

  v7 = [*(v2 + 16) JSONString];
  v8 = sub_1D726207C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D72646CC();
  }

  return v12 & 1;
}

uint64_t type metadata accessor for PuzzleDatastoreInfo(uint64_t a1)
{
  result = qword_1EC88B878;
  if (!qword_1EC88B878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D67B1B88()
{
  v0 = sub_1D7257A4C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  sub_1D725852C();
  sub_1D72620CC();
  v7 = sub_1D7261FCC();
  v9 = v8;

  v12[1] = v7;
  v12[2] = v9;
  sub_1D72579DC();
  sub_1D5BF4D9C();
  v10 = sub_1D7263A4C();
  (*(v1 + 8))(v4, v0);

  return v10;
}

unint64_t sub_1D67B1E74()
{
  result = qword_1EC88B850;
  if (!qword_1EC88B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B850);
  }

  return result;
}

uint64_t sub_1D67B1EC8(uint64_t *a1)
{
  v1 = 0xD000000000000011;
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 19);
  v5 = "showFullscreenModal";
  if (v4 == 1)
  {
    v1 = 0xD000000000000017;
    v5 = "puzzleGameCenterService";
  }

  if (!*(a1 + 19))
  {
    v1 = 0xD000000000000013;
    v5 = "showGameCenterChallenge";
  }

  v6 = MEMORY[0x1E69E6158];
  v13 = MEMORY[0x1E69E6158];
  *&v12 = v1;
  *(&v12 + 1) = v5 | 0x8000000000000000;
  sub_1D5B7C390(&v12, v11);
  v7 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D5BAFB24(v11, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  if (!v4)
  {
    v13 = v6;
    *&v12 = v3;
    *(&v12 + 1) = v2;
    sub_1D5B7C390(&v12, v11);

    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v11, 25705, 0xE200000000000000, v9);
  }

  return v7;
}

uint64_t sub_1D67B1FF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = NFInternalBuild();
  if (result)
  {
    v3 = objc_opt_self();
    v4 = [v3 standardUserDefaults];
    v5 = sub_1D726203C();
    v6 = [v4 BOOLForKey_];

    if (v6)
    {
      v7 = HIBYTE(v1) == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }

    else
    {
      v8 = [v3 standardUserDefaults];
      v9 = sub_1D726203C();
      [v8 setBool:0 forKey:v9];

      return 1;
    }
  }

  return result;
}

uint64_t sub_1D67B2100(__int128 *a1, int a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  v9 = a1[3];
  v66 = a1[2];
  v67 = v9;
  v10 = a1[5];
  v68 = a1[4];
  v69 = v10;
  v11 = a1[1];
  v64 = *a1;
  v65 = v11;
  v12 = v68;
  if (v68 != 1)
  {
    v56 = v7;
    v57 = a2;
    v13 = *(&v65 + 1);
    v52 = *(&v66 + 1);
    v14 = v66;
    v55 = BYTE1(v67);
    v54 = *(&v67 + 1);
    v15 = *(&v69 + 1);
    v53 = v69;
    v16 = BYTE8(v68);
    v17 = v67;
    v18 = v65;
    v19 = *(&v64 + 1);
    v20 = MEMORY[0x1E69E6530];
    v63 = MEMORY[0x1E69E6530];
    *&v62 = v64;
    sub_1D5B7C390(&v62, v61);
    v59 = v13;
    v58 = v14;
    sub_1D5F13DE4(v13, v14);

    v21 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v21;
    sub_1D5BAFB24(v61, 0x73736572676F7270, 0xED00006C6576654CLL, isUniquelyReferenced_nonNull_native);
    v23 = v60;
    v63 = v20;
    *&v62 = v19;
    sub_1D5B7C390(&v62, v61);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v23;
    sub_1D5BAFB24(v61, 0x6172754479616C70, 0xEC0000006E6F6974, v24);
    v25 = v60;
    v26 = MEMORY[0x1E69E6370];
    v63 = MEMORY[0x1E69E6370];
    LOBYTE(v62) = v18 & 1;
    sub_1D5B7C390(&v62, v61);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v25;
    sub_1D5BAFB24(v61, 0x6465766C6F537369, 0xE800000000000000, v27);
    v28 = v60;
    v63 = v26;
    LOBYTE(v62) = v16 & 1;
    sub_1D5B7C390(&v62, v61);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v28;
    sub_1D5BAFB24(v61, 0x6576655264657375, 0xEA00000000006C61, v29);
    v30 = v60;
    if ((v17 & 1) == 0)
    {
      v63 = v20;
      *&v62 = v52;
      sub_1D5B7C390(&v62, v61);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v60 = v30;
      sub_1D5BAFB24(v61, 0x65726F6373, 0xE500000000000000, v31);
      v30 = v60;
    }

    v32 = MEMORY[0x1E69E6158];
    v33 = v58;
    if (v55 != 2)
    {
      v34 = 0x746C7561666564;
      if (v55)
      {
        v34 = 0x74636566726570;
      }

      v63 = MEMORY[0x1E69E6158];
      *&v62 = v34;
      *(&v62 + 1) = 0xE700000000000000;
      sub_1D5B7C390(&v62, v61);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v60 = v30;
      sub_1D5BAFB24(v61, 0x70795465726F6373, 0xE900000000000065, v35);
      v30 = v60;
    }

    if (v15)
    {
      v63 = v32;
      *&v62 = v53;
      *(&v62 + 1) = v15;
      sub_1D5B7C390(&v62, v61);

      v36 = swift_isUniquelyReferenced_nonNull_native();
      v60 = v30;
      sub_1D5BAFB24(v61, 0xD000000000000018, 0x80000001D73B7720, v36);
      v30 = v60;
    }

    v37 = v59;
    if (v12)
    {
      v63 = v32;
      *&v62 = v54;
      *(&v62 + 1) = v12;
      sub_1D5B7C390(&v62, v61);

      v38 = swift_isUniquelyReferenced_nonNull_native();
      v60 = v30;
      sub_1D5BAFB24(v61, 0x44496B6E6172, 0xE600000000000000, v38);
      v30 = v60;
    }

    if ((v57 & 1) == 0 && v33 >> 60 != 15)
    {
      sub_1D5E3E824(v37, v33);
      sub_1D72620CC();
      v39 = sub_1D726209C();
      if (v40)
      {
        v63 = v32;
        *&v62 = v39;
        *(&v62 + 1) = v40;
        sub_1D5B7C390(&v62, v61);
        v41 = swift_isUniquelyReferenced_nonNull_native();
        v60 = v30;
        sub_1D5BAFB24(v61, 0x73736572676F7270, 0xEC00000061746144, v41);
      }

      sub_1D5B952E4(v37, v33);
    }

    v42 = objc_opt_self();
    v43 = sub_1D7261D2C();

    *&v62 = 0;
    v44 = [v42 dataWithJSONObject:v43 options:2 error:&v62];

    v45 = v62;
    if (v44)
    {
      v46 = sub_1D725867C();
      v48 = v47;

      sub_1D72620CC();
      v49 = sub_1D726209C();
      sub_1D5B952F8(v46, v48);
      sub_1D5B88BD0(&v64, &qword_1EC880F08, &type metadata for PuzzleProgress);
      return v49;
    }

    else
    {
      v50 = v45;
      v51 = sub_1D725829C();

      swift_willThrow();
      sub_1D5B88BD0(&v64, &qword_1EC880F08, &type metadata for PuzzleProgress);

      return 0;
    }
  }

  return result;
}

void *sub_1D67B277C(void *a1)
{
  sub_1D67B30C0(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v34 - v4;
  swift_getObjectType();
  v6 = [a1 publishDate];
  if (!v6)
  {
    v32 = sub_1D725891C();
    (*(*(v32 - 8) + 56))(v5, 1, 1, v32);
    sub_1D67B323C(v5, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    return 0;
  }

  v7 = v6;
  sub_1D72588BC();

  v8 = sub_1D725891C();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  sub_1D67B323C(v5, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v13 = byte_1F50FC130[v9 + 32];
    LOBYTE(v37.value._countAndFlagsBits) = byte_1F50FC130[v9 + 32];
    v14 = FCPuzzleProviding.publishDateString(format:)(&v37);
    if (!v14.value._object)
    {
      goto LABEL_4;
    }

    v15 = 0x6D756964656DLL;
    if (v13 != 1)
    {
      v15 = 1735290732;
    }

    v16 = 0xE600000000000000;
    if (v13 != 1)
    {
      v16 = 0xE400000000000000;
    }

    v17 = v13 ? v15 : 0x74726F6873;
    v18 = v13 ? v16 : 0xE500000000000000;
    v38 = MEMORY[0x1E69E6158];
    v37 = v14;
    sub_1D5B7C390(&v37, v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v10;
    v20 = sub_1D5B69D90(v17, v18);
    v22 = v10[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (v10[3] < v25)
    {
      sub_1D5BAFF10(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_1D5B69D90(v17, v18);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_30;
      }

LABEL_21:
      if (v26)
      {
        goto LABEL_3;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v31 = v20;
    sub_1D5C06BE0();
    v20 = v31;
    if (v26)
    {
LABEL_3:
      v11 = v20;

      v10 = v35;
      v12 = (v35[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
      sub_1D5B7C390(v36, v12);
      goto LABEL_4;
    }

LABEL_22:
    v10 = v35;
    v35[(v20 >> 6) + 8] |= 1 << v20;
    v28 = (v10[6] + 16 * v20);
    *v28 = v17;
    v28[1] = v18;
    sub_1D5B7C390(v36, (v10[7] + 32 * v20));
    v29 = v10[2];
    v24 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v24)
    {
      goto LABEL_29;
    }

    v10[2] = v30;
LABEL_4:
    if (++v9 == 3)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

char *sub_1D67B2B08(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = *v2;
    v5 = v2[2];
    *&v36[16] = v2[1];
    *&v36[32] = v5;
    *v36 = v4;
    v6 = v2[3];
    v7 = v2[4];
    v8 = v2[5];
    *&v36[96] = *(v2 + 12);
    *&v36[64] = v7;
    *&v36[80] = v8;
    *&v36[48] = v6;
    v9 = *v36;
    sub_1D67B3058(v36, v33);
    v10 = sub_1D67AFD58(v9);
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      sub_1D67B30C0(0, &qword_1EC88B858, sub_1D67B3124, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7279970;
      *(inited + 32) = 0x696669746E656469;
      *(inited + 40) = 0xEA00000000007265;
      v15 = [v9 identifier];
      v16 = sub_1D726207C();
      v18 = v17;

      *(inited + 48) = v16;
      *(inited + 56) = v18;
      *(inited + 64) = 0x656C7A7A7570;
      *(inited + 72) = 0xE600000000000000;
      *(inited + 80) = v12;
      *(inited + 88) = v13;
      *(inited + 96) = 0x73736572676F7270;
      *(inited + 104) = 0xE800000000000000;
      v29 = *&v36[40];
      v30 = *&v36[56];
      v31 = *&v36[72];
      v32 = *&v36[88];
      v27 = *&v36[8];
      v28 = *&v36[24];
      sub_1D67B2F20(&v36[8], v33, &qword_1EC880F08, &type metadata for PuzzleProgress, MEMORY[0x1E69E6720], sub_1D67B3544);
      v19 = sub_1D67B2100(&v27, 1);
      v21 = v20;
      v33[2] = v29;
      v33[3] = v30;
      v33[4] = v31;
      v33[5] = v32;
      v33[0] = v27;
      v33[1] = v28;
      sub_1D5B88BD0(v33, &qword_1EC880F08, &type metadata for PuzzleProgress);
      *(inited + 112) = v19;
      *(inited + 120) = v21;
      v22 = sub_1D605BCD8(inited);
      swift_setDeallocating();
      sub_1D67B3124(0);
      swift_arrayDestroy();
      sub_1D67B31B0(0);
      *(&v35 + 1) = v23;
      *&v34 = v22;
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    sub_1D67B3090(v36);
    if (*(&v35 + 1))
    {
      sub_1D5B7C390(&v34, v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1D69917E4(0, *(v3 + 2) + 1, 1, v3);
      }

      v25 = *(v3 + 2);
      v24 = *(v3 + 3);
      if (v25 >= v24 >> 1)
      {
        v3 = sub_1D69917E4((v24 > 1), v25 + 1, 1, v3);
      }

      *(v3 + 2) = v25 + 1;
      sub_1D5B7C390(v33, &v3[32 * v25 + 32]);
    }

    else
    {
      sub_1D5B88BD0(&v34, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
    }

    v2 = (v2 + 104);
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1D67B2E5C(void *a1)
{
  if (!NFInternalBuild())
  {
    return [a1 showInfoModalOnFirstPlay];
  }

  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1D726203C();
  v4 = [v2 integerForKey_];

  if (v4 == 2)
  {
    return 0;
  }

  if (v4 != 1)
  {
    return [a1 showInfoModalOnFirstPlay];
  }

  return 1;
}

uint64_t sub_1D67B2F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D67B2F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleHistoryInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D67B2FF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D67B30C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D67B3124(uint64_t a1)
{
  if (!qword_1EC88B860)
  {
    sub_1D67B3544(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88B860);
    }
  }
}

void sub_1D67B31B0(uint64_t a1)
{
  if (!qword_1EC88B870)
  {
    sub_1D67B3544(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88B870);
    }
  }
}

uint64_t sub_1D67B323C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D67B30C0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed14PuzzleProgressVSg(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_1D67B3318(uint64_t a1)
{
  type metadata accessor for PuzzleResource(319);
  if (v1 <= 0x3F)
  {
    sub_1D67B3544(319, &qword_1EC880F08, &type metadata for PuzzleProgress, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D67B3544(319, &unk_1EC88B888, &type metadata for PuzzleLaunchAction, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1D67B3544(319, &qword_1EDF18A90, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1D67B3544(319, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1D67B30C0(319, &qword_1EC88B898, type metadata accessor for PuzzleStatsInfo, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1D67B30C0(319, &unk_1EC882110, type metadata accessor for PuzzleHistoryInfo, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1D5FE4258(319);
                if (v8 <= 0x3F)
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
}

void sub_1D67B3544(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D67B3598()
{
  result = qword_1EC88B8A0;
  if (!qword_1EC88B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B8A0);
  }

  return result;
}

void static FormatSourceItemTipTraitsDefaultStrategy.defaultValue.getter(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

BOOL static FormatSourceItemTipTraitsDefaultStrategy.shouldEncode(wrappedValue:)(__int128 *a1)
{
  v1 = *(a1 + 16);
  v7 = *a1;
  v8 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 0;
  v6 = 0;
  v2 = _s8NewsFeed25FormatSourceItemTipTraitsO2eeoiySbAC_ACtFZ_0(&v7, &v4);
  sub_1D5F5870C(v4, v5, v6);
  return (v2 & 1) == 0;
}

void sub_1D67B3668(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

BOOL sub_1D67B367C(__int128 *a1)
{
  v1 = *(a1 + 16);
  v7 = *a1;
  v8 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 0;
  v6 = 0;
  v2 = _s8NewsFeed25FormatSourceItemTipTraitsO2eeoiySbAC_ACtFZ_0(&v7, &v4);
  sub_1D5F5870C(v4, v5, v6);
  return (v2 & 1) == 0;
}

unint64_t sub_1D67B36E4(uint64_t a1)
{
  result = sub_1D67B370C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67B370C()
{
  result = qword_1EC88B8B0;
  if (!qword_1EC88B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B8B0);
  }

  return result;
}

id SharingIssueImageActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed35SharingIssueImageActivityItemSource_issueImage))
  {
    v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingIssueImageActivityItemSource_issueImage);
    v8 = sub_1D62B7E2C();
    *&v7 = v6;
    sub_1D5B7C390(&v7, a1);
    v3 = v6;
  }

  else
  {
    v4 = sub_1D67B380C();
    v3 = 0;
    *(a1 + 24) = v4;
    *a1 = MEMORY[0x1E69E7CA0] + 8;
  }

  return v3;
}

unint64_t sub_1D67B380C()
{
  result = qword_1EC88B8C8;
  if (!qword_1EC88B8C8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC88B8C8);
  }

  return result;
}

void SharingIssueImageActivityItemSource.activityViewController(_:itemForActivityType:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_1D726203C();
  v6 = v5;
  if (!a1)
  {

    goto LABEL_9;
  }

  v7 = sub_1D726207C();
  v9 = v8;
  if (v7 != sub_1D726207C() || v9 != v10)
  {
    v12 = sub_1D72646CC();

    if (v12)
    {
      goto LABEL_11;
    }

LABEL_9:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

LABEL_11:
  if (*(v2 + OBJC_IVAR____TtC8NewsFeed35SharingIssueImageActivityItemSource_issueImage))
  {
    v18 = *(v2 + OBJC_IVAR____TtC8NewsFeed35SharingIssueImageActivityItemSource_issueImage);
    v20 = sub_1D62B7E2C();
    *&v19 = v18;
    sub_1D5B7C390(&v19, a2);
    v13 = v18;
  }

  else
  {
    sub_1D5BE1404();
    v15 = v14;
    v16 = sub_1D67B3C60();
    v13 = 0;
    *(a2 + 24) = v16;
    *a2 = v15;
  }

  v17 = v13;
}

id SharingIssueImageActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingIssueImageActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D67B3C60()
{
  result = qword_1EC88B8D0;
  if (!qword_1EC88B8D0)
  {
    sub_1D5BE1404();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC88B8D0);
  }

  return result;
}

uint64_t FormatPuzzleStatisticBinding.Text.text(from:)(uint64_t a1)
{
  v157 = a1;
  v153 = type metadata accessor for PuzzleLeaderboardEntry(0);
  v146 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153, v2);
  v140 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69E6720];
  sub_1D5C42C60(0, qword_1EDF0D8F0, type metadata accessor for PuzzleLeaderboardEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v142 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v143 = &v139 - v10;
  sub_1D5C42C60(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult, v4);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v151 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v152 = &v139 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v150 = &v139 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v149 = &v139 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v148 = &v139 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v147 = &v139 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v139 - v31;
  v33 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
  v154 = *(v33 - 8);
  v155 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v145 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v141 = &v139 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v139 - v41;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v139 - v45;
  MEMORY[0x1EEE9AC00](v47, v48);
  v144 = &v139 - v49;
  v50 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v139 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v54 - 8, v55);
  v57 = &v139 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = &v139 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62, v63);
  v65 = &v139 - v64;
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = &v139 - v68;
  v70 = *v156;
  if (v70 > 4)
  {
    if (*v156 <= 7u)
    {
      if (v70 != 5)
      {
        if (v70 != 6)
        {
          LOBYTE(v158) = 7;
          v93 = v148;
          sub_1D67B50E8(v157, v148);
          v94 = v155;
          if ((*(v154 + 48))(v93, 1, v155) != 1)
          {
            sub_1D67B6C74(v93, v42, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
            v158 = *&v42[*(v94 + 24)];
            v71 = sub_1D72644BC();
            v72 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult;
            v73 = v42;
            goto LABEL_65;
          }

          sub_1D67B6C04(v93, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
          return 0;
        }

        LOBYTE(v158) = 6;
        v32 = v147;
        sub_1D67B50E8(v157, v147);
        if ((*(v154 + 48))(v32, 1, v155) != 1)
        {
          sub_1D67B6C74(v32, v46, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
          v158 = *&v46[*(v153 + 28)];
          v71 = sub_1D72644BC();
          v72 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult;
          v73 = v46;
LABEL_65:
          sub_1D5BDDB88(v73, v72);
          return v71;
        }

LABEL_29:
        sub_1D67B6C04(v32, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
        return 0;
      }

      LOBYTE(v158) = 5;
      sub_1D67B50E8(v157, v32);
      if ((*(v154 + 48))(v32, 1, v155) == 1)
      {
        goto LABEL_29;
      }

      v61 = v144;
      sub_1D67B6C74(v32, v144, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      v87 = *&v61[*(v153 + 32)];
      type metadata accessor for FeedPuzzleStatistic(0);
      swift_getObjectType();
      v88 = FCPuzzleTypeProviding.puzzleTypeTraits.getter();
      if ((v88 & 0x4000) != 0)
      {
LABEL_27:
        v158 = v87;
        v71 = sub_1D72644BC();
        v72 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult;
        v73 = v61;
        goto LABEL_65;
      }

      if ((v88 & 0x200) == 0)
      {
        if ((v88 & 0x100400) != 0)
        {
          goto LABEL_27;
        }

        v92 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult;
        goto LABEL_33;
      }

      v1 = v87;
      if (qword_1EDF0AEE8 == -1)
      {
        goto LABEL_77;
      }

      goto LABEL_102;
    }

    if (v70 != 8)
    {
      if (v70 != 9)
      {
        LOBYTE(v158) = 10;
        v95 = v152;
        sub_1D67B50E8(v157, v152);
        v96 = v151;
        sub_1D67B6B70(v95, v151);
        v97 = v155;
        if ((*(v154 + 48))(v96, 1, v155) == 1)
        {
          sub_1D67B6C04(v96, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
        }

        else
        {
          v101 = (v96 + *(v97 + 28));
          v103 = *v101;
          v102 = v101[1];

          sub_1D5BDDB88(v96, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
          if (v102)
          {
            sub_1D67B6C04(v95, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
            return v103;
          }
        }

        sub_1D67B6C04(v95, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);

        return 0;
      }

      LOBYTE(v158) = 9;
      v32 = v150;
      sub_1D67B50E8(v157, v150);
      if ((*(v154 + 48))(v32, 1, v155) == 1)
      {
        goto LABEL_29;
      }

      v69 = v145;
      sub_1D67B6C74(v32, v145, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      v80 = v142;
      sub_1D6E99958(v142);
      v81 = v153;
      if ((*(v146 + 48))(v80, 1, v153) == 1)
      {
        sub_1D67B6C04(v80, qword_1EDF0D8F0, type metadata accessor for PuzzleLeaderboardEntry);
        v82 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult;
LABEL_22:
        v78 = v82;
        v79 = v69;
        goto LABEL_47;
      }

      v61 = v140;
      sub_1D67B6C74(v80, v140, type metadata accessor for PuzzleLeaderboardEntry);
      v108 = *(v81 + 32);
      v109 = *&v61[v108];
      v110 = *&v69[v108];
      v111 = v109 - v110;
      if (__OFSUB__(v109, v110))
      {
        __break(1u);
LABEL_102:
        swift_once();
LABEL_77:
        v114 = qword_1EDF0AEF0;
        v115 = [v114 stringFromTimeInterval_];
        if (v115)
        {
          v116 = v115;
          v117 = sub_1D726207C();
          v119 = v118;
        }

        else
        {
          v117 = 0;
          v119 = 0xE000000000000000;
        }

        v158 = v117;
        v159 = v119;
        v164 = 44;
        v165 = 0xE100000000000000;
        v162 = 0;
        v163 = 0xE000000000000000;
        sub_1D5BF4D9C();
        v126 = MEMORY[0x1E69E6158];
        v127 = sub_1D7263A6C();
        v129 = v128;

        v158 = v127;
        v159 = v129;
        v164 = 32;
        v165 = 0xE100000000000000;
        v130 = sub_1D72639FC();
        v131 = *(v130 + 16);
        if (v131 >= 2)
        {
          v131 = 2;
        }

        v158 = v130;
        v159 = v130 + 32;
        v160 = 0;
        v161 = (2 * v131) | 1;
        sub_1D67B6E98(0, &unk_1EDF1A5F0, v126, MEMORY[0x1E69E6948]);
        sub_1D67B6CDC();
        v103 = sub_1D7261F3C();

        v132 = v61;
LABEL_99:
        sub_1D5BDDB88(v132, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
        return v103;
      }

      if (v111 < 0 && (v112 = __OFSUB__(0, v111), v111 = v110 - v109, v112))
      {
        __break(1u);
      }

      else
      {
        type metadata accessor for FeedPuzzleStatistic(0);
        swift_getObjectType();
        v113 = FCPuzzleTypeProviding.puzzleTypeTraits.getter();
        if ((v113 & 0x4000) != 0)
        {
          goto LABEL_73;
        }

        if ((v113 & 0x200) == 0)
        {
          if ((v113 & 0x100400) == 0)
          {
            sub_1D5BDDB88(v61, type metadata accessor for PuzzleLeaderboardEntry);
            v82 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult;
            goto LABEL_22;
          }

LABEL_73:
          v158 = v111;
          v71 = sub_1D72644BC();
          sub_1D5BDDB88(v61, type metadata accessor for PuzzleLeaderboardEntry);
          v72 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult;
          v73 = v69;
          goto LABEL_65;
        }

        v1 = v111;
        if (qword_1EDF0AEE8 == -1)
        {
LABEL_87:
          v120 = qword_1EDF0AEF0;
          v121 = [v120 stringFromTimeInterval_];
          if (v121)
          {
            v122 = v121;
            v123 = sub_1D726207C();
            v125 = v124;
          }

          else
          {
            v123 = 0;
            v125 = 0xE000000000000000;
          }

          v158 = v123;
          v159 = v125;
          v164 = 44;
          v165 = 0xE100000000000000;
          v162 = 0;
          v163 = 0xE000000000000000;
          sub_1D5BF4D9C();
          v133 = MEMORY[0x1E69E6158];
          v134 = sub_1D7263A6C();
          v136 = v135;

          v158 = v134;
          v159 = v136;
          v164 = 32;
          v165 = 0xE100000000000000;
          v137 = sub_1D72639FC();
          v138 = *(v137 + 16);
          if (v138 >= 2)
          {
            v138 = 2;
          }

          v158 = v137;
          v159 = v137 + 32;
          v160 = 0;
          v161 = (2 * v138) | 1;
          sub_1D67B6E98(0, &unk_1EDF1A5F0, v133, MEMORY[0x1E69E6948]);
          sub_1D67B6CDC();
          v103 = sub_1D7261F3C();

          sub_1D5BDDB88(v61, type metadata accessor for PuzzleLeaderboardEntry);
          v132 = v69;
          goto LABEL_99;
        }
      }

      swift_once();
      goto LABEL_87;
    }

    LOBYTE(v158) = 8;
    v32 = v149;
    sub_1D67B50E8(v157, v149);
    if ((*(v154 + 48))(v32, 1, v155) == 1)
    {
      goto LABEL_29;
    }

    v98 = v141;
    sub_1D67B6C74(v32, v141, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    v99 = v143;
    sub_1D6E99958(v143);
    v100 = v153;
    if ((*(v146 + 48))(v99, 1, v153) != 1)
    {
      sub_1D5BDDB88(v98, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      v104 = (v99 + *(v100 + 24));
      v105 = *v104;
      v106 = v104[4];
      v107 = v104[5];

      sub_1D5F13DE4(v106, v107);
      sub_1D5BDDB88(v99, type metadata accessor for PuzzleLeaderboardEntry);

      sub_1D5B952E4(v106, v107);
      return v105;
    }

    sub_1D67B6C04(v99, qword_1EDF0D8F0, type metadata accessor for PuzzleLeaderboardEntry);
    v78 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult;
    v79 = v98;
LABEL_47:
    sub_1D5BDDB88(v79, v78);
    return 0;
  }

  if (*v156 > 1u)
  {
    v74 = v157;
    if (v70 == 2)
    {
      v84 = v74 + *(type metadata accessor for FeedPuzzleStatistic(0) + 32);
      v85 = type metadata accessor for PuzzleStatistic(0);
      sub_1D67B6D58(v84 + *(v85 + 20), v69, type metadata accessor for PuzzleStatisticCategory);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 2) < 2)
      {
        v82 = type metadata accessor for PuzzleStatisticCategory;
        goto LABEL_22;
      }

      if (!EnumCaseMultiPayload)
      {
        sub_1D67B6C74(v69, v57, type metadata accessor for PuzzleStatisticValue);
        v71 = PuzzleStatisticValue.primaryDisplayValue.getter();
        sub_1D5BDDB88(v57, type metadata accessor for PuzzleStatisticValue);
        return v71;
      }

      sub_1D67B6C74(v69, v53, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    }

    else if (v70 == 3)
    {
      v75 = v74 + *(type metadata accessor for FeedPuzzleStatistic(0) + 32);
      v76 = type metadata accessor for PuzzleStatistic(0);
      sub_1D67B6D58(v75 + *(v76 + 20), v65, type metadata accessor for PuzzleStatisticCategory);
      v77 = swift_getEnumCaseMultiPayload();
      if ((v77 - 2) < 2 || !v77)
      {
        v78 = type metadata accessor for PuzzleStatisticCategory;
        v79 = v65;
        goto LABEL_47;
      }

      sub_1D67B6C74(v65, v53, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    }

    else
    {
      v89 = v74 + *(type metadata accessor for FeedPuzzleStatistic(0) + 32);
      v90 = type metadata accessor for PuzzleStatistic(0);
      sub_1D67B6D58(v89 + *(v90 + 20), v61, type metadata accessor for PuzzleStatisticCategory);
      v91 = swift_getEnumCaseMultiPayload();
      if ((v91 - 2) < 2 || !v91)
      {
        v92 = type metadata accessor for PuzzleStatisticCategory;
LABEL_33:
        v78 = v92;
        v79 = v61;
        goto LABEL_47;
      }

      sub_1D67B6C74(v61, v53, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    }

    v71 = PuzzleStatisticValue.primaryDisplayValue.getter();
    v72 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
    v73 = v53;
    goto LABEL_65;
  }

  if (!*v156)
  {
    type metadata accessor for FeedPuzzleStatistic(0);
    return PuzzleStatistic.identifier.getter();
  }

  type metadata accessor for FeedPuzzleStatistic(0);
  type metadata accessor for PuzzleStatistic(0);
  PuzzleStatisticCategory.statisticType.getter(&v158);
  if (v158 <= 4u)
  {
    if (v158 <= 1u)
    {
      if (v158)
      {
        return 0x53746E6572727563;
      }

      else
      {
        return 0x53747365676E6F6CLL;
      }
    }

    else if (v158 == 2)
    {
      return 0x5373656C7A7A7570;
    }

    else if (v158 == 3)
    {
      return 0x5374636566726570;
    }

    else
    {
      return 0x74615265766C6F73;
    }
  }

  else
  {
    if (v158 <= 7u)
    {
      if (v158 == 5)
      {
        return 0xD00000000000001CLL;
      }

      if (v158 == 6)
      {
        return 0xD00000000000001CLL;
      }

      return 0xD00000000000001DLL;
    }

    if (v158 == 8)
    {
      return 0xD00000000000001DLL;
    }

    if (v158 == 9)
    {
      return 0x53646570756F7267;
    }

    else
    {
      return 0xD000000000000015;
    }
  }
}

uint64_t sub_1D67B50E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C42C60(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v22 - v14;
  v16 = a1 + *(type metadata accessor for FeedPuzzleStatistic(0) + 32);
  v17 = type metadata accessor for PuzzleStatistic(0);
  sub_1D67B6D58(v16 + *(v17 + 20), v7, type metadata accessor for PuzzleStatisticCategory);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D5BDDB88(v7, type metadata accessor for PuzzleStatisticCategory);
    goto LABEL_5;
  }

  sub_1D67B7068(v7, v15);
  sub_1D67B7068(v15, v11);
  v18 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    sub_1D67B6C04(v11, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
LABEL_5:
    v20 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }

  sub_1D67B6C74(v11, a2, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  return (*(v19 + 56))(a2, 0, 1, v18);
}

void FormatPuzzleStatisticBinding.Text.CodingType.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_1D72641CC();

  v5 = 11;
  if (v4 < 0xB)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t FormatPuzzleStatisticBinding.Text.CodingType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v6 = 0x696669746E656469;
    v7 = 0xD000000000000014;
    if (v1 == 3)
    {
      v7 = 0xD000000000000015;
    }

    if (v1 == 2)
    {
      v7 = 0xD000000000000013;
    }

    if (*v0)
    {
      v6 = 0x6974736974617473;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD000000000000020;
    v3 = 0xD000000000000037;
    if (v1 != 9)
    {
      v3 = 0x6F6272656461656CLL;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    if (v1 == 5)
    {
      v4 = 0xD000000000000022;
    }

    else
    {
      v4 = 0xD000000000000021;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D67B5590()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D694DCFC(v3, v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D67B55E0(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D694DCFC(v4, v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D67B5630@<X0>(uint64_t *a1@<X8>)
{
  result = FormatPuzzleStatisticBinding.Text.CodingType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FormatPuzzleStatisticBinding.Text.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D67B57BC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v195 = a3;
  v202 = a2;
  sub_1D5C42C60(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v186 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v187 = &v174 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v185 = &v174 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v184 = &v174 - v15;
  v16 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
  v188 = *(v16 - 8);
  v189 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v176 = &v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v175 = &v174 - v21;
  v194 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v194, v22);
  v193 = &v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v192 = &v174 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v191, v27);
  v190 = &v174 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v180 = &v174 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v174 - v34;
  v36 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v183 = &v174 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v179 = &v174 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v178 = &v174 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v182 = &v174 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v181 = &v174 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v177 = &v174 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v174 - v56;
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = (&v174 - v60);
  MEMORY[0x1EEE9AC00](v62, v63);
  v65 = &v174 - v64;
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = &v174 - v68;
  MEMORY[0x1EEE9AC00](v70, v71);
  v73 = &v174 - v72;
  v74 = *a1;
  sub_1D5C42C60(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
  v75 = *(type metadata accessor for FormatInspectionItem(0) - 8);
  v197 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v196 = swift_allocObject();
  *(v196 + 16) = xmmword_1D7273AE0;
  if (v74 > 4)
  {
    if (v74 <= 7)
    {
      v76 = v196;
      if (v74 != 5)
      {
        if (v74 == 6)
        {
          v77 = "Leaderboard Player Rank Display Value";
          v78 = v181;
          sub_1D67B6D58(v202, v181, type metadata accessor for FeedPuzzleStatistic);
          LOBYTE(v198) = 6;
          v79 = v184;
          sub_1D67B50E8(v78, v184);
          if (v188[6](v79, 1, v189) == 1)
          {
            v80 = v79;
LABEL_43:
            sub_1D67B6C04(v80, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
            v130 = 0;
            v131 = 0xE000000000000000;
LABEL_53:
            v91 = v195;
            v144 = (v77 - 32);
            v145 = HIBYTE(v131) & 0xF;
            if ((v131 & 0x2000000000000000) == 0)
            {
              v145 = v130 & 0xFFFFFFFFFFFFLL;
            }

            if (v145)
            {
              v146 = MEMORY[0x1E69E6158];
            }

            else
            {

              v130 = 0;
              v131 = 0;
              v146 = 0;
              v200 = 0;
            }

            v198 = v130;
            v199 = v131;
            v201 = v146;
            v147 = (v76 + v197);
            v148 = 0xD000000000000025;
            goto LABEL_106;
          }

          v140 = v175;
          sub_1D67B6C74(v79, v175, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
          v141 = *(type metadata accessor for PuzzleLeaderboardEntry(0) + 28);
        }

        else
        {
          v77 = "Leaderboard Num Entries Display Value";
          v78 = v182;
          sub_1D67B6D58(v202, v182, type metadata accessor for FeedPuzzleStatistic);
          LOBYTE(v198) = 7;
          v128 = v185;
          sub_1D67B50E8(v78, v185);
          v129 = v189;
          if (v188[6](v128, 1, v189) == 1)
          {
            v80 = v128;
            goto LABEL_43;
          }

          v142 = v128;
          v140 = v176;
          sub_1D67B6C74(v142, v176, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
          v141 = *(v129 + 24);
        }

        v198 = *(v140 + v141);
        v130 = sub_1D72644BC();
        v131 = v143;
        sub_1D5BDDB88(v140, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
        goto LABEL_53;
      }

      v94 = "er Rank Display Value";
      v73 = v177;
      sub_1D67B6D58(v202, v177, type metadata accessor for FeedPuzzleStatistic);
      LOBYTE(v198) = 5;
      v110 = FormatPuzzleStatisticBinding.Text.text(from:)(v73);
      v112 = HIBYTE(v111) & 0xF;
      if ((v111 & 0x2000000000000000) == 0)
      {
        v112 = v110 & 0xFFFFFFFFFFFFLL;
      }

      v113 = v197;
      if (v112)
      {
        v114 = MEMORY[0x1E69E6158];
      }

      else
      {

        v110 = 0;
        v111 = 0;
        v114 = 0;
        v200 = 0;
      }

      v91 = v195;
      v198 = v110;
      v199 = v111;
      v201 = v114;
      v155 = (v76 + v113);
      v156 = 0xD000000000000026;
      goto LABEL_78;
    }

    v76 = v196;
    if (v74 == 8)
    {
      v94 = "core Difference Display Value";
      v73 = v178;
      sub_1D67B6D58(v202, v178, type metadata accessor for FeedPuzzleStatistic);
      LOBYTE(v198) = 8;
      v115 = FormatPuzzleStatisticBinding.Text.text(from:)(v73);
      v117 = HIBYTE(v116) & 0xF;
      if ((v116 & 0x2000000000000000) == 0)
      {
        v117 = v115 & 0xFFFFFFFFFFFFLL;
      }

      v118 = v197;
      if (v117)
      {
        v119 = MEMORY[0x1E69E6158];
      }

      else
      {

        v115 = 0;
        v116 = 0;
        v119 = 0;
        v200 = 0;
      }

      v91 = v195;
      v198 = v115;
      v199 = v116;
      v201 = v119;
      v155 = (v76 + v118);
      v156 = 0xD000000000000023;
      goto LABEL_78;
    }

    if (v74 == 9)
    {
      v94 = "Leaderboard Name";
      v73 = v179;
      sub_1D67B6D58(v202, v179, type metadata accessor for FeedPuzzleStatistic);
      LOBYTE(v198) = 9;
      v95 = FormatPuzzleStatisticBinding.Text.text(from:)(v73);
      v97 = HIBYTE(v96) & 0xF;
      if ((v96 & 0x2000000000000000) == 0)
      {
        v97 = v95 & 0xFFFFFFFFFFFFLL;
      }

      v91 = v195;
      v98 = v197;
      if (v97)
      {
        v99 = MEMORY[0x1E69E6158];
      }

      else
      {

        v95 = 0;
        v96 = 0;
        v99 = 0;
        v200 = 0;
      }

      v198 = v95;
      v199 = v96;
      v201 = v99;
      v155 = (v76 + v98);
      v156 = 0xD00000000000003DLL;
LABEL_78:
      v157 = v94 | 0x8000000000000000;
LABEL_127:
      sub_1D711B30C(v156, v157, &v198, v155);
      result = sub_1D5BDDB88(v73, type metadata accessor for FeedPuzzleStatistic);
      goto LABEL_128;
    }

    v132 = v183;
    sub_1D67B6D58(v202, v183, type metadata accessor for FeedPuzzleStatistic);
    LOBYTE(v198) = 10;
    v133 = v187;
    sub_1D67B50E8(v132, v187);
    v134 = v186;
    sub_1D67B6B70(v133, v186);
    v135 = v189;
    v136 = v188[6](v134, 1, v189);
    v91 = v195;
    if (v136 == 1)
    {
      sub_1D67B6C04(v134, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    }

    else
    {
      v149 = (v134 + *(v135 + 28));
      v151 = *v149;
      v150 = v149[1];

      sub_1D5BDDB88(v134, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      if (v150)
      {
        sub_1D67B6C04(v133, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
LABEL_62:
        v152 = HIBYTE(v150) & 0xF;
        if ((v150 & 0x2000000000000000) == 0)
        {
          v152 = v151 & 0xFFFFFFFFFFFFLL;
        }

        if (v152)
        {
          v153 = MEMORY[0x1E69E6158];
        }

        else
        {

          v151 = 0;
          v150 = 0;
          v153 = 0;
          v200 = 0;
        }

        v198 = v151;
        v199 = v150;
        v201 = v153;
        sub_1D711B30C(0xD000000000000010, 0x80000001D73D4C80, &v198, (v76 + v197));
        v158 = v132;
        goto LABEL_108;
      }
    }

    sub_1D67B6C04(v133, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);

    v151 = 0;
    v150 = 0xE000000000000000;
    goto LABEL_62;
  }

  v81 = v65;
  v188 = v61;
  v189 = v57;
  v82 = v190;
  v83 = v69;
  v84 = v192;
  v85 = v193;
  if (v74 <= 1)
  {
    if (!v74)
    {
      sub_1D67B6D58(v202, v73, type metadata accessor for FeedPuzzleStatistic);
      v100 = PuzzleStatistic.identifier.getter();
      v102 = HIBYTE(v101) & 0xF;
      if ((v101 & 0x2000000000000000) == 0)
      {
        v102 = v100 & 0xFFFFFFFFFFFFLL;
      }

      v76 = v196;
      if (v102)
      {
        v103 = MEMORY[0x1E69E6158];
      }

      else
      {

        v100 = 0;
        v101 = 0;
        v103 = 0;
        v200 = 0;
      }

      v91 = v195;
      v198 = v100;
      v199 = v101;
      v201 = v103;
      v156 = 0x696669746E656449;
      v155 = (v76 + v197);
      v157 = 0xEA00000000007265;
      goto LABEL_127;
    }

    v73 = v83;
    sub_1D67B6D58(v202, v83, type metadata accessor for FeedPuzzleStatistic);
    type metadata accessor for PuzzleStatistic(0);
    PuzzleStatisticCategory.statisticType.getter(&v198);
    v76 = v196;
    if (v198 <= 4u)
    {
      v126 = v197;
      if (v198 <= 1u)
      {
        v159 = 0xED00006B61657274;
        v91 = v195;
        if (v198)
        {
          v154 = 0x53746E6572727563;
        }

        else
        {
          v154 = 0x53747365676E6F6CLL;
        }

        goto LABEL_121;
      }

      v91 = v195;
      if (v198 == 2)
      {
        v154 = 0x5373656C7A7A7570;
      }

      else
      {
        if (v198 != 3)
        {
          v159 = 0xE900000000000065;
          v154 = 0x74615265766C6F73;
          goto LABEL_121;
        }

        v154 = 0x5374636566726570;
      }

      v159 = 0xED00006465766C6FLL;
LABEL_121:
      v172 = HIBYTE(v159) & 0xF;
      if ((v159 & 0x2000000000000000) == 0)
      {
        v172 = v154 & 0x7F7D7F7F7F7FLL;
      }

      if (v172)
      {
        v173 = MEMORY[0x1E69E6158];
      }

      else
      {

        v154 = 0;
        v159 = 0;
        v173 = 0;
        v200 = 0;
      }

      v198 = v154;
      v199 = v159;
      v201 = v173;
      v156 = 0x6974736974617453;
      v157 = 0xEE00657079542063;
      v155 = (v76 + v126);
      goto LABEL_127;
    }

    v126 = v197;
    if (v198 > 7u)
    {
      v91 = v195;
      if (v198 != 8)
      {
        if (v198 == 9)
        {
          v159 = 0xEC00000073746174;
          v154 = 0x53646570756F7267;
        }

        else
        {
          v154 = 0xD000000000000015;
          v159 = 0x80000001D73B7480;
        }

        goto LABEL_121;
      }

      v171 = "averageScoreByDifficultyLevel";
    }

    else
    {
      v91 = v195;
      if (v198 == 5)
      {
        v127 = "fastestTimeByDifficultyLevel";
        goto LABEL_114;
      }

      if (v198 == 6)
      {
        v127 = "averageTimeByDifficultyLevel";
LABEL_114:
        v159 = (v127 - 32) | 0x8000000000000000;
        v154 = 0xD00000000000001CLL;
        goto LABEL_121;
      }

      v171 = "highestScoreByDifficultyLevel";
    }

    v159 = (v171 - 32) | 0x8000000000000000;
    v154 = 0xD00000000000001DLL;
    goto LABEL_121;
  }

  if (v74 == 2)
  {
    v104 = v81;
    sub_1D67B6D58(v202, v81, type metadata accessor for FeedPuzzleStatistic);
    v105 = *(v36 + 32);
    v106 = type metadata accessor for PuzzleStatistic(0);
    sub_1D67B6D58(v104 + v105 + *(v106 + 20), v35, type metadata accessor for PuzzleStatisticCategory);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v76 = v196;
    if ((EnumCaseMultiPayload - 2) >= 2)
    {
      v91 = v195;
      if (EnumCaseMultiPayload)
      {
        sub_1D67B6C74(v35, v85, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
        v108 = PuzzleStatisticValue.primaryDisplayValue.getter();
        v109 = v160;
        v138 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
        v139 = v85;
      }

      else
      {
        sub_1D67B6C74(v35, v84, type metadata accessor for PuzzleStatisticValue);
        v108 = PuzzleStatisticValue.primaryDisplayValue.getter();
        v109 = v137;
        v138 = type metadata accessor for PuzzleStatisticValue;
        v139 = v84;
      }

      sub_1D5BDDB88(v139, v138);
    }

    else
    {
      sub_1D5BDDB88(v35, type metadata accessor for PuzzleStatisticCategory);
      v108 = 0;
      v109 = 0xE000000000000000;
      v91 = v195;
    }

    v161 = HIBYTE(v109) & 0xF;
    if ((v109 & 0x2000000000000000) == 0)
    {
      v161 = v108 & 0xFFFFFFFFFFFFLL;
    }

    if (v161)
    {
      v162 = MEMORY[0x1E69E6158];
    }

    else
    {

      v108 = 0;
      v109 = 0;
      v162 = 0;
      v200 = 0;
    }

    v198 = v108;
    v199 = v109;
    v201 = v162;
    sub_1D711B30C(0xD000000000000015, 0x80000001D73D4DE0, &v198, (v76 + v197));
    v158 = v104;
    goto LABEL_108;
  }

  if (v74 == 3)
  {
    v86 = v188;
    sub_1D67B6D58(v202, v188, type metadata accessor for FeedPuzzleStatistic);
    v87 = *(v36 + 32);
    v88 = v86 + v87 + *(type metadata accessor for PuzzleStatistic(0) + 20);
    v89 = v180;
    sub_1D67B6D58(v88, v180, type metadata accessor for PuzzleStatisticCategory);
    v90 = swift_getEnumCaseMultiPayload();
    v91 = v195;
    if ((v90 - 2) >= 2 && v90)
    {
      sub_1D67B6C74(v89, v85, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      v92 = PuzzleStatisticValue.primaryDisplayValue.getter();
      v93 = v163;
      sub_1D5BDDB88(v85, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    }

    else
    {
      sub_1D5BDDB88(v89, type metadata accessor for PuzzleStatisticCategory);
      v92 = 0;
      v93 = 0xE000000000000000;
    }

    v78 = v188;
    v164 = HIBYTE(v93) & 0xF;
    if ((v93 & 0x2000000000000000) == 0)
    {
      v164 = v92 & 0xFFFFFFFFFFFFLL;
    }

    v76 = v196;
    if (v164)
    {
      v165 = MEMORY[0x1E69E6158];
    }

    else
    {

      v92 = 0;
      v93 = 0;
      v165 = 0;
      v200 = 0;
    }

    v198 = v92;
    v199 = v93;
    v201 = v165;
    v147 = (v76 + v197);
    v148 = 0xD000000000000017;
    v166 = 0x80000001D73D4DC0;
    goto LABEL_107;
  }

  v120 = v189;
  sub_1D67B6D58(v202, v189, type metadata accessor for FeedPuzzleStatistic);
  v121 = *(v36 + 32);
  v122 = type metadata accessor for PuzzleStatistic(0);
  sub_1D67B6D58(v120 + v121 + *(v122 + 20), v82, type metadata accessor for PuzzleStatisticCategory);
  v123 = swift_getEnumCaseMultiPayload();
  v91 = v195;
  if ((v123 - 2) >= 2)
  {
    v76 = v196;
    if (v123)
    {
      sub_1D67B6C74(v82, v85, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      v124 = PuzzleStatisticValue.primaryDisplayValue.getter();
      v125 = v167;
      sub_1D5BDDB88(v85, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    }

    else
    {
      sub_1D5BDDB88(v82, type metadata accessor for PuzzleStatisticCategory);
      v124 = 0;
      v125 = 0xE000000000000000;
    }
  }

  else
  {
    sub_1D5BDDB88(v82, type metadata accessor for PuzzleStatisticCategory);
    v124 = 0;
    v125 = 0xE000000000000000;
    v76 = v196;
  }

  v78 = v189;
  v144 = "er Score Display Value";
  v168 = HIBYTE(v125) & 0xF;
  if ((v125 & 0x2000000000000000) == 0)
  {
    v168 = v124 & 0xFFFFFFFFFFFFLL;
  }

  if (v168)
  {
    v169 = MEMORY[0x1E69E6158];
  }

  else
  {

    v124 = 0;
    v125 = 0;
    v169 = 0;
    v200 = 0;
  }

  v198 = v124;
  v199 = v125;
  v201 = v169;
  v147 = (v76 + v197);
  v148 = 0xD000000000000016;
LABEL_106:
  v166 = v144 | 0x8000000000000000;
LABEL_107:
  sub_1D711B30C(v148, v166, &v198, v147);
  v158 = v78;
LABEL_108:
  result = sub_1D5BDDB88(v158, type metadata accessor for FeedPuzzleStatistic);
LABEL_128:
  *v91 = v76;
  return result;
}

uint64_t sub_1D67B6B70(uint64_t a1, uint64_t a2)
{
  sub_1D5C42C60(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D67B6C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5C42C60(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D67B6C74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D67B6CDC()
{
  result = qword_1EDF1A600;
  if (!qword_1EDF1A600)
  {
    sub_1D67B6E98(255, &unk_1EDF1A5F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1A600);
  }

  return result;
}

uint64_t sub_1D67B6D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D67B6DC4()
{
  result = qword_1EC88B8D8;
  if (!qword_1EC88B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B8D8);
  }

  return result;
}

unint64_t sub_1D67B6E1C()
{
  result = qword_1EC88B8E0;
  if (!qword_1EC88B8E0)
  {
    sub_1D67B6E98(255, &qword_1EC88B8E8, &type metadata for FormatPuzzleStatisticBinding.Text.CodingType, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B8E0);
  }

  return result;
}

void sub_1D67B6E98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D67B6EEC()
{
  result = qword_1EC88B8F0;
  if (!qword_1EC88B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B8F0);
  }

  return result;
}

unint64_t sub_1D67B6F40(uint64_t a1)
{
  result = sub_1D67B6F68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67B6F68()
{
  result = qword_1EC88B8F8;
  if (!qword_1EC88B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B8F8);
  }

  return result;
}

unint64_t sub_1D67B6FBC(void *a1)
{
  a1[1] = sub_1D665FDD4();
  a1[2] = sub_1D67050C4();
  result = sub_1D67B6EEC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D67B7014()
{
  result = qword_1EDF0A8C0;
  if (!qword_1EDF0A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A8C0);
  }

  return result;
}

uint64_t sub_1D67B7068(uint64_t a1, uint64_t a2)
{
  sub_1D5C42C60(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1D67B70FC()
{
  v1 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController____lazy_storage___nextBarButtonItem;
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController____lazy_storage___nextBarButtonItem];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController____lazy_storage___nextBarButtonItem];
  }

  else
  {
    ObjectType = swift_getObjectType();
    v18[3] = ObjectType;
    v18[0] = v0;
    v5 = v0;
    v6 = sub_1D726203C();
    if (ObjectType)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v18, ObjectType);
      v8 = *(ObjectType - 8);
      v9 = MEMORY[0x1EEE9AC00](v7, v7);
      v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      v12 = sub_1D72646AC();
      (*(v8 + 8))(v11, ObjectType);
      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    else
    {
      v12 = 0;
    }

    type metadata accessor for DebugFormatBarButtonItem();
    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v14 = [v13 initWithTitle:v6 style:0 target:v12 action:{sel_doNext, v18[0]}];

    swift_unknownObjectRelease();
    v15 = *&v0[v1];
    *&v0[v1] = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

void sub_1D67B72BC()
{
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter];
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter + 8];
  v3 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections;
  v4 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections];

  sub_1D67BDC74(v1, v2, v4);
  v6 = v5;

  v7 = [v0 navigationItem];
  v8 = [v7 searchController];

  if (v8)
  {
    v9 = [v8 searchBar];

    [v9 setEnabled_];
  }
}

double sub_1D67B7400(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections;
  *(v2 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections) = a1;

  [*(v2 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView) reloadData];
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections);
  v5 = *(v2 + v3);
  swift_beginAccess();

  sub_1D6A562C0(v4, v5);
  swift_endAccess();

  return sub_1D67B74CC();
}

double sub_1D67B74CC()
{
  v1 = sub_1D67B70FC();
  v2 = (v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_selection);
  swift_beginAccess();
  [v1 setEnabled_];

  if (*(*v2 + 16))
  {
    sub_1D7263D4C();

    v4 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v4);

    MEMORY[0x1DA6F9910](0xD000000000000014, 0x80000001D73D4EA0);

    sub_1D725B32C();
  }

  return result;
}

id sub_1D67B7618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_coverViewManager;
  sub_1D725D7AC();
  swift_allocObject();
  *&v4[v10] = sub_1D725D79C();
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController____lazy_storage___nextBarButtonItem] = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections] = MEMORY[0x1E69E7CC0];
  v12 = &v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter];
  sub_1D614F964(0, 0xE000000000000000);
  v13 = MEMORY[0x1E69E7CD0];
  *v12 = v14;
  *(v12 + 1) = v13;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections] = v11;
  v15 = &v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_selection];
  *v15 = v13;
  *(v15 + 1) = v13;
  *(v15 + 2) = v13;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_editor] = a1;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_request] = a2;
  type metadata accessor for DebugNewsroomService();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  type metadata accessor for DebugFormatUploadDataSource();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v16;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_dataSource] = v17;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_diffViewController] = a3;
  v19.receiver = v4;
  v19.super_class = ObjectType;

  return objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
}

id sub_1D67B77E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D725FB0C();
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v71 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1D725FB1C();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v6);
  v69 = (v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for FormatVersioningModeSelection(0);
  *&v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9).n128_u64[0];
  v12 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75.receiver = v0;
  v75.super_class = ObjectType;
  v68[3] = ObjectType;
  objc_msgSendSuper2(&v75, sel_viewDidLoad, v10);
  v13 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView];
  v14 = objc_opt_self();
  v15 = [v14 systemBackgroundColor];
  [v13 setBackgroundColor_];

  [v13 setDelegate_];
  [v13 setDataSource_];
  [v13 setAlwaysBounceVertical_];
  [v13 setAllowsMultipleSelectionDuringEditing_];
  v16 = [v14 secondaryLabelColor];
  [v13 setTintColor_];

  v17 = [v13 topEdgeEffect];
  v18 = objc_opt_self();
  v19 = [v18 hardStyle];
  [v17 setStyle_];

  v20 = [v13 bottomEdgeEffect];
  v21 = [v18 hardStyle];
  [v20 setStyle_];

  v22 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v13 setTableFooterView_];

  type metadata accessor for SubtitleTableViewCell();
  sub_1D7262DAC();
  type metadata accessor for DebugFormatUploadEntryTableViewCell();
  sub_1D7262DAC();
  type metadata accessor for DebugFormatUploadHiddenTableViewCell();
  sub_1D7262DAC();
  type metadata accessor for DebugJournalHeaderView();
  sub_1D7262D9C();
  [v13 setEditing:1 animated:0];
  [v13 setAllowsFocusDuringEditing_];
  result = [v1 view];
  if (result)
  {
    v24 = result;
    [result addSubview_];

    v25 = [v1 navigationItem];
    v26 = sub_1D726203C();
    [v25 setTitle_];

    v27 = [v1 navigationItem];
    sub_1D5B66F44(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v68[1] = v28;
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1D72816C0;
    *(v29 + 32) = sub_1D67B84C8();
    v68[2] = sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
    v30 = sub_1D726265C();

    [v27 setLeftBarButtonItems_];

    v31 = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
    [v31 setSearchResultsUpdater_];
    [v31 setObscuresBackgroundDuringPresentation_];
    [v31 setHidesNavigationBarDuringPresentation_];
    v32 = [v31 searchBar];
    v33 = [v14 systemBlueColor];
    [v32 setTintColor_];

    v34 = [v31 searchBar];
    v35 = sub_1D726203C();
    [v34 setPlaceholder_];

    v36 = [v31 searchBar];
    v37 = [v36 searchTextField];

    [v37 setAutocorrectionType_];
    v38 = [v31 searchBar];
    v39 = [v38 searchTextField];

    [v39 setAutocapitalizationType_];
    v40 = [v31 searchBar];
    v41 = sub_1D726203C();
    v42 = objc_opt_self();
    v43 = [v42 systemImageNamed_];

    [v40 setImage:v43 forSearchBarIcon:0 state:0];
    v44 = [v31 searchBar];
    [v44 setShowsCancelButton_];

    v45 = [v1 navigationItem];
    [v45 setSearchController_];

    v46 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];

    sub_1D725972C();

    v47 = sub_1D67BE97C(v12);
    v68[0] = v47;
    v49 = v48;
    sub_1D67BF78C(v12, type metadata accessor for FormatVersioningModeSelection);
    [v46 setAttributedText_];
    [v46 setNumberOfLines_];
    type metadata accessor for DebugFormatBarButtonItem();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v51 = [objc_allocWithZone(ObjCClassFromMetadata) initWithCustomView_];
    [v51 _setPrefersNoPlatter_];
    v52 = sub_1D67B70FC();
    [v52 setEnabled_];

    v53 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController____lazy_storage___nextBarButtonItem;
    v54 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController____lazy_storage___nextBarButtonItem];
    v55 = [v14 systemBlueColor];
    [v54 setTintColor_];

    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1D72EC970;
    v57 = sub_1D726203C();
    v58 = [v42 systemImageNamed_];

    v59 = [objc_allocWithZone(ObjCClassFromMetadata) initWithImage:v58 style:0 target:v1 action:sel_doTocWithSender_];
    *(v56 + 32) = v59;
    *(v56 + 40) = [objc_allocWithZone(ObjCClassFromMetadata) initWithBarButtonSystemItem:5 target:0 action:0];
    *(v56 + 48) = v51;
    v60 = [objc_allocWithZone(ObjCClassFromMetadata) initWithBarButtonSystemItem:5 target:0 action:0];
    v61 = *&v1[v53];
    *(v56 + 56) = v60;
    *(v56 + 64) = v61;
    v62 = v61;
    v63 = sub_1D726265C();

    [v1 setToolbarItems_];

    sub_1D725974C();

    sub_1D725975C();

    sub_1D725974C();

    sub_1D725975C();

    sub_1D725974C();

    sub_1D725975C();

    sub_1D725974C();

    sub_1D725975C();

    sub_1D725974C();

    sub_1D725975C();

    sub_1D725B33C();

    sub_1D725B2EC();

    sub_1D725D78C();
    v64 = v69;
    static CoverView.loading.getter(v69);
    v66 = v73;
    v65 = v74;
    v67 = v71;
    (*(v73 + 104))(v71, *MEMORY[0x1E69D8850], v74);
    sub_1D725D77C();

    (*(v66 + 8))(v67, v65);
    return (*(v70 + 8))(v64, v72);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D67B84C8()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(sub_1D725E86C());
  v3 = sub_1D725E85C();
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 secondaryLabelColor];
  [v5 setTintColor_];

  return v5;
}

void sub_1D67B85E0()
{
  swift_getObjectType();
  [*(*(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_editor) + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_uploaderOperationQueue) cancelAllOperations];
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_diffViewController);
  *(v1 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_diff) = 0;

  sub_1D724540C();
  sub_1D724540C();
  sub_1D6BBC3F8();
  sub_1D6BBC3F8();
  [*(v1 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_changeSetLabel) setAttributedText_];
  sub_1D67BC630(MEMORY[0x1E69E7CC0]);

  sub_1D725B31C();

  if ((v7 & 1) == 0)
  {
    v2 = sub_1D67BC9A8(v0);
    MEMORY[0x1EEE9AC00](v2, v3);
    sub_1D725BDCC();

    v4 = sub_1D725B92C();
    sub_1D5B66F44(0, &unk_1EC88B970, &type metadata for DebugFormatUploadSection, MEMORY[0x1E69E62F8]);
    sub_1D725BA8C();

    sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
    v5 = sub_1D726308C();
    sub_1D725BAAC();

    v6 = sub_1D726308C();
    sub_1D725BADC();
  }
}

uint64_t sub_1D67B8A58(uint64_t a1)
{
  sub_1D5B5A498(0, &qword_1EC885090, 0x1E69DCC60);
  sub_1D5B66F44(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D728AF30;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D72816D0;
  sub_1D5B5A498(0, &qword_1EDF04350, 0x1E69DC628);

  *(v2 + 32) = sub_1D726375C();

  *(v2 + 40) = sub_1D726375C();
  *(v1 + 32) = sub_1D726340C(0, 0xE000000000000000, 0, 0, 0, 0, 1, -1, v3, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D72816D0;

  *(v4 + 32) = sub_1D726375C();

  *(v4 + 40) = sub_1D726375C();
  *(v1 + 40) = sub_1D726340C(0, 0xE000000000000000, 0, 0, 0, 0, 1, -1, v5, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D72816D0;

  *(v6 + 32) = sub_1D726375C();

  *(v6 + 40) = sub_1D726375C();
  *(v1 + 48) = sub_1D726340C(0, 0xE000000000000000, 0, 0, 0, 0, 1, -1, v7, v6);
  return sub_1D72633FC();
}

void sub_1D67B8E58(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();

    sub_1D5B886D0(v4);
    swift_endAccess();
    [*&v3[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView] reloadData];
    sub_1D67B74CC();
  }
}

void sub_1D67B8EFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = (Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_selection);
    v4 = Strong;
    swift_beginAccess();
    sub_1D6836478(*v3);
    swift_endAccess();
    [*&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView] reloadData];
    sub_1D67B74CC();
  }
}

void sub_1D67B8F9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();

    sub_1D5B886D0(v4);
    swift_endAccess();
    [*&v3[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView] reloadData];
    sub_1D67B74CC();
  }
}

void sub_1D67B904C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_selection;
    v4 = Strong;
    swift_beginAccess();
    sub_1D6836478(*(v3 + 8));
    swift_endAccess();
    [*&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView] reloadData];
    sub_1D67B74CC();
  }
}

void sub_1D67B90F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter);
    v5 = *(Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter);
    v6 = *(Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter + 8);
    v13 = v6;
    v7 = *(v6 + 16);

    if (v7)
    {
      sub_1D62D05C8(byte_1F50F8E28, &v12);
      sub_1D62D05C8(byte_1F50F8E29, &v12);
      sub_1D62D05C8(byte_1F50F8E2A, &v12);
      sub_1D62D05C8(byte_1F50F8E2B, &v12);
      sub_1D62D05C8(byte_1F50F8E2C, &v12);
      sub_1D62D05C8(byte_1F50F8E2D, &v12);
      sub_1D62D05C8(byte_1F50F8E2E, &v12);
      v8 = v13;
    }

    else
    {
      v8 = v6;
    }

    *v4 = v5;
    v4[1] = v8;

    v9 = *&v3[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections];

    sub_1D67BDC74(v5, v8, v9);
    v11 = v10;

    sub_1D67B7400(v11);
  }
}

void sub_1D67B9280(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = (Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter);
    v4 = *(Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter);
    v11 = *(Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter + 8);
    v5 = Strong;

    sub_1D5FEFBD0(&v10, byte_1F50F8E28);
    sub_1D5FEFBD0(&v10, byte_1F50F8E29);
    sub_1D5FEFBD0(&v10, byte_1F50F8E2A);
    sub_1D5FEFBD0(&v10, byte_1F50F8E2B);
    sub_1D5FEFBD0(&v10, byte_1F50F8E2C);
    sub_1D5FEFBD0(&v10, byte_1F50F8E2D);
    sub_1D5FEFBD0(&v10, byte_1F50F8E2E);
    v6 = v11;
    *v3 = v4;
    v3[1] = v6;

    v7 = *&v5[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections];

    sub_1D67BDC74(v4, v6, v7);
    v9 = v8;

    sub_1D67B7400(v9);
  }
}

void sub_1D67B9544()
{
  v1 = v0;

  sub_1D67BD940(v2, v1);
  v4 = v3;

  v5 = objc_allocWithZone(type metadata accessor for DebugFormatUploadConfirmViewController());

  v7 = sub_1D5F17A2C(v6, v4);

  *&v7[OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_delegate + 8] = &off_1F518C728;
  swift_unknownObjectWeakAssign();
  v8 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
  [v8 setModalPresentationStyle_];
  [v8 setModalInPresentation_];
  [v1 presentViewController:v8 animated:1 completion:0];
}

void sub_1D67B9680(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 24);
  v32 = MEMORY[0x1E69E7CC0];
  v5 = *(v4 + 16);
  v31 = a2 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_selection;
  swift_beginAccess();
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    v27 = MEMORY[0x1E69E7CC0];
    v28 = v4 + 32;
    v29 = v5;
    v30 = v4;
    while (1)
    {
      while (1)
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
          return;
        }

        v8 = (v7 + 16 * v6++);
        if (!v8[8])
        {
          break;
        }

LABEL_4:
        if (v6 == v5)
        {
          goto LABEL_40;
        }
      }

      v9 = *v8;
      v10 = *(v31 + 16);
      v11 = *(*v8 + 16);
      v12 = *(v11 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
      v13 = 0x7972617262694CLL;
      if (v12 != 5)
      {
        v13 = 0x756F72676B636142;
      }

      v14 = 0xE700000000000000;
      v15 = 0xEA0000000000646ELL;
      if (v12 == 5)
      {
        v15 = 0xE700000000000000;
      }

      v16 = 0x6C6C6177796150;
      if (v12 != 3)
      {
        v16 = 0x656D656854;
        v14 = 0xE500000000000000;
      }

      if (*(v11 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) <= 4u)
      {
        v13 = v16;
        v15 = v14;
      }

      v17 = 0x726564616548;
      if (v12 != 1)
      {
        v17 = 0x7265746F6F46;
      }

      if (!*(v11 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
      {
        v17 = 0x74756F79614CLL;
      }

      if (*(v11 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) <= 2u)
      {
        v18 = v17;
      }

      else
      {
        v18 = v13;
      }

      if (*(v11 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) <= 2u)
      {
        v19 = 0xE600000000000000;
      }

      else
      {
        v19 = v15;
      }

      sub_1D67BF4AC(v9, 0);
      sub_1D67BF4AC(v9, 0);

      MEMORY[0x1DA6F9910](v18, v19);

      MEMORY[0x1DA6F9910](24415, 0xE200000000000000);
      MEMORY[0x1DA6F9910](*(v11 + 16), *(v11 + 24));
      if (!*(v10 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v20 = sub_1D7264A5C(), v21 = -1 << *(v10 + 32), v22 = v20 & ~v21, ((*(v10 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0))
      {
LABEL_3:
        sub_1D67BE408(v9, 0);

        sub_1D67BE408(v9, 0);
        v5 = v29;
        v4 = v30;
        v7 = v28;
        goto LABEL_4;
      }

      v23 = ~v21;
      while (1)
      {
        v24 = (*(v10 + 48) + 16 * v22);
        v25 = !*v24 && v24[1] == 0xE000000000000000;
        if (v25 || (sub_1D72646CC() & 1) != 0)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v10 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      sub_1D67BE408(v9, 0);
      MEMORY[0x1DA6F9CE0]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v27 = v32;
      v5 = v29;
      v4 = v30;
      v7 = v28;
      if (v6 == v29)
      {
        goto LABEL_40;
      }
    }
  }

  v27 = v3;
LABEL_40:
  *a3 = v27;
}

void sub_1D67B9A68(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1D67BF4D4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D67BF4D4(0, &qword_1EC880490, sub_1D5EA74B8, v2);
  sub_1D5EA74B8(0);
  v5 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 72);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7279960;
  v8 = sub_1D726203C();
  v76 = objc_opt_self();
  v9 = [v76 systemImageNamed_];

  if (!v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  v70 = v7;
  v71 = inited;
  v69 = a1;
  v10 = v7 + v5;
  v75 = objc_opt_self();
  v11 = [v75 configurationWithPointSize_];
  v12 = [v9 imageWithConfiguration_];

  v74 = objc_opt_self();
  v13 = [v74 systemPinkColor];
  v14 = type metadata accessor for FormatInspectionItem(0);
  v15 = (v10 + *(v14 + 24));
  *v15 = v12;
  v15[1] = v13;
  v16 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  v73 = *(*(v16 - 8) + 56);
  v73(v15, 0, 1, v16);
  *v10 = xmmword_1D72EC980;
  *(v10 + 16) = 0xD000000000000063;
  *(v10 + 24) = 0x80000001D73D4EE0;
  v17 = v10 + *(v14 + 28);
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = -1;
  v18 = *(*(v14 - 8) + 56);
  v18(v10, 0, 1, v14);
  v19 = sub_1D726203C();
  v20 = [v76 systemImageNamed_];

  if (!v20)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = v10 + v6;
  v22 = [v75 configurationWithPointSize_];
  v23 = [v20 imageWithConfiguration_];

  v24 = [v74 systemGreenColor];
  v25 = (v10 + v6 + *(v14 + 24));
  *v25 = v23;
  v25[1] = v24;
  swift_storeEnumTagMultiPayload();
  v73(v25, 0, 1, v16);
  *v21 = xmmword_1D72EC990;
  *(v21 + 16) = 0xD00000000000005BLL;
  *(v21 + 24) = 0x80000001D73D4F50;
  v26 = v10 + v6 + *(v14 + 28);
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = -1;
  v18(v10 + v6, 0, 1, v14);
  v27 = sub_1D726203C();
  v28 = [v76 systemImageNamed_];

  if (!v28)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v29 = v10 + 2 * v6;
  v30 = [v75 configurationWithPointSize_];
  v31 = [v28 imageWithConfiguration_];

  v32 = [v74 systemBlueColor];
  v33 = (v29 + *(v14 + 24));
  *v33 = v31;
  v33[1] = v32;
  swift_storeEnumTagMultiPayload();
  v73(v33, 0, 1, v16);
  *v29 = xmmword_1D72B7890;
  *(v29 + 16) = 0xD00000000000003CLL;
  *(v29 + 24) = 0x80000001D73D4FB0;
  v34 = v29 + *(v14 + 28);
  *v34 = 0;
  *(v34 + 8) = 0;
  *(v34 + 16) = -1;
  v18(v29, 0, 1, v14);
  v35 = sub_1D726203C();
  v36 = [v76 systemImageNamed_];

  if (!v36)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v37 = v10 + 3 * v6;
  v38 = [v75 configurationWithPointSize_];
  v39 = [v36 imageWithConfiguration_];

  v40 = [v74 systemPurpleColor];
  v41 = (v37 + *(v14 + 24));
  *v41 = v39;
  v41[1] = v40;
  swift_storeEnumTagMultiPayload();
  v73(v41, 0, 1, v16);
  *v37 = xmmword_1D72EC9A0;
  *(v37 + 16) = 0xD000000000000052;
  *(v37 + 24) = 0x80000001D73D4FF0;
  v42 = v37 + *(v14 + 28);
  *v42 = 0;
  *(v42 + 8) = 0;
  *(v42 + 16) = -1;
  v18(v37, 0, 1, v14);
  v43 = sub_1D726203C();
  v44 = [v76 systemImageNamed_];

  if (!v44)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v45 = v10 + 4 * v6;
  v46 = [v75 configurationWithPointSize_];
  v47 = [v44 imageWithConfiguration_];

  v48 = [v74 systemRedColor];
  v49 = (v45 + *(v14 + 24));
  *v49 = v47;
  v49[1] = v48;
  swift_storeEnumTagMultiPayload();
  v73(v49, 0, 1, v16);
  *v45 = xmmword_1D72EC9B0;
  *(v45 + 16) = 0xD000000000000062;
  *(v45 + 24) = 0x80000001D73D5050;
  v50 = v45 + *(v14 + 28);
  *v50 = 0;
  *(v50 + 8) = 0;
  *(v50 + 16) = -1;
  v18(v45, 0, 1, v14);
  sub_1D6795150(0, 0xE000000000000000, 0, 0, v70, v78);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v71[7] = &type metadata for FormatInspectionGroup;
  v71[8] = &off_1F518B2C0;
  v51 = swift_allocObject();
  v71[4] = v51;
  *(v51 + 48) = v79;
  v52 = v78[1];
  *(v51 + 16) = v78[0];
  *(v51 + 32) = v52;
  v53 = sub_1D7073500(v71);
  swift_setDeallocating();
  sub_1D67BF78C((v71 + 4), sub_1D5E4F358);
  v54 = *&v72[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_editor];
  sub_1D70732C4(v53);
  v56 = v55;

  v57 = type metadata accessor for DebugFormatInspectorPaneViewController();
  v58 = objc_allocWithZone(v57);
  v58[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoPreferredContentSize] = 1;
  v58[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoDismissOnLayoutChange] = 1;
  *&v58[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_preferredArrowDirections] = 4;
  *&v58[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_preferredSize] = xmmword_1D72EC9C0;
  v59 = &v58[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filterTerm];
  *v59 = 0;
  v59[1] = 0xE000000000000000;
  v60 = OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_tableView;
  *&v58[v60] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v58[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_contentSizeObserver] = 0;
  *&v58[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_editor] = v54;
  *&v58[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_groups] = v56;
  *&v58[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filteredGroups] = v56;
  *&v58[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_image] = 0;
  v77.receiver = v58;
  v77.super_class = v57;

  v61 = objc_msgSendSuper2(&v77, sel_initWithNibName_bundle_, 0, 0);
  [v61 setTitle_];
  v62 = [v61 navigationItem];
  v63 = sub_1D726203C();
  [v62 setTitle_];

  v64 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
  v65 = v64;
  [v65 setModalPresentationStyle_];
  v66 = [v65 popoverPresentationController];
  if (v66)
  {
    v67 = v66;
    [v66 setBarButtonItem_];
  }

  v68 = [v65 popoverPresentationController];

  if (v68)
  {
    [v68 setPermittedArrowDirections_];
  }

  [v72 presentViewController:v65 animated:1 completion:0];
}

unint64_t sub_1D67BA6B8(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v6 = *(v3 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections);
  if (result >= *(v6 + 16))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v7 = *(v6 + 32 * result + 56);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (result < *(v7 + 16))
  {
    v8 = v7 + 16 * result;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    sub_1D67BF4AC(v9, *(v8 + 40));

    if (v10)
    {
      if (v10 != 1)
      {
        type metadata accessor for SubtitleTableViewCell();
        v11 = sub_1D7262D8C();
        v49 = [v11 textLabel];
        if (v49)
        {
          v50 = v49;
          sub_1D5EE763C(v9);
          v51 = sub_1D726203C();

          [v50 setText_];
        }

        v52 = [v11 textLabel];
        if (v52)
        {
          v53 = v52;
          v54 = [objc_opt_self() systemFontOfSize_];
          [v53 setFont_];
        }

        v55 = [v11 textLabel];
        if (v55)
        {
          v56 = v55;
          v57 = [objc_opt_self() labelColor];
          [v56 setTextColor_];
        }

        v58 = [v11 textLabel];
        if (v58)
        {
          v59 = v58;
          [v58 setNumberOfLines_];
        }

        v60 = [v11 detailTextLabel];
        if (v60)
        {
          v61 = v60;
          [v60 setText_];
        }

        [v11 setSelectionStyle_];
        sub_1D67BE408(v9, 2);

        return v11;
      }

      type metadata accessor for DebugFormatUploadHiddenTableViewCell();

      v11 = sub_1D7262D8C();
      v12 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
      [v12 setAlignment_];
      sub_1D67BF4D4(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7279970;
      v14 = *MEMORY[0x1E69DB648];
      *(inited + 32) = *MEMORY[0x1E69DB648];
      v15 = objc_opt_self();
      v16 = *MEMORY[0x1E69DB970];
      v17 = v14;
      v18 = [v15 systemFontOfSize:17.0 weight:v16];
      v19 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
      *(inited + 40) = v18;
      v20 = *MEMORY[0x1E69DB650];
      *(inited + 64) = v19;
      *(inited + 72) = v20;
      v21 = objc_opt_self();
      v22 = v20;
      v23 = [v21 systemBlueColor];
      v24 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
      *(inited + 80) = v23;
      v25 = *MEMORY[0x1E69DB688];
      *(inited + 104) = v24;
      *(inited + 112) = v25;
      *(inited + 144) = sub_1D5B5A498(0, &qword_1EDF1A840, 0x1E69DB7C8);
      *(inited + 120) = v12;
      v26 = v25;
      v27 = v12;
      sub_1D5C09CEC(inited);
      swift_setDeallocating();
      sub_1D5C09DD4(0);
      swift_arrayDestroy();
      v28 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      v29 = sub_1D726203C();
      type metadata accessor for Key(0);
      sub_1D5C09E68();
      v30 = sub_1D7261D2C();

      v31 = [v28 initWithString:v29 attributes:v30];

      [*&v11[OBJC_IVAR____TtC8NewsFeed36DebugFormatUploadHiddenTableViewCell_button] setAttributedTitle:v31 forState:0];
      v32 = *&v11[OBJC_IVAR____TtC8NewsFeed36DebugFormatUploadHiddenTableViewCell_onTap];
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      *(v34 + 24) = v9;
      v35 = v32;
      v36 = sub_1D725F63C();

      sub_1D67BE408(v9, 1);
    }

    else
    {
      type metadata accessor for DebugFormatUploadEntryTableViewCell();
      v11 = sub_1D7262D8C();
      v37 = [v11 textLabel];
      if (v37)
      {
        v38 = v37;
        v39 = sub_1D5DF5E68();
        [v38 setAttributedText_];
      }

      v40 = [v11 textLabel];
      if (v40)
      {
        v41 = v40;
        [v40 setNumberOfLines_];
      }

      v42 = [v11 detailTextLabel];
      if (v42)
      {
        v43 = v42;
        [v42 setNumberOfLines_];
      }

      v44 = [v11 detailTextLabel];
      if (v44)
      {
        v45 = v44;
        v46 = sub_1D5DF6328();
        [v45 setAttributedText_];
      }

      v47 = *&v9[OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_diff];
      v11[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_showDiff] = v47 != 0;
      if (v47)
      {
        v48 = *&v11[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_diffButton];
      }

      else
      {
        v48 = 0;
      }

      [v11 setEditingAccessoryView_];

      v11[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_isDiffSelected] = sub_1D67BAEC8(v4, v9) & 1;
      sub_1D6716D88();
      v62 = *&v11[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_onDiffTap];
      v63 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v64 = swift_allocObject();
      *(v64 + 16) = v63;
      *(v64 + 24) = v9;
      sub_1D67BF4AC(v9, 0);
      v35 = v62;
      v65 = sub_1D725F63C();
      sub_1D67BE408(v9, 0);
    }

    return v11;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1D67BAEC8(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_diffViewController) + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_diff))
  {

    v3 = sub_1D5E2FD70();
    v5 = v4;
    if (*(a2 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_diff))
    {
      if (v3 == sub_1D5E2FD70() && v5 == v6)
      {
        v8 = 1;
      }

      else
      {
        v8 = sub_1D72646CC();
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

double sub_1D67BAFAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D7258DBC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(a2 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_diff);
    if (v11)
    {
      v12 = *&Strong[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_diffViewController];
      *&v12[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_diff] = v11;
      swift_retain_n();
      v13 = v12;

      sub_1D5F5A858(v11);

      v14 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView;
      v15 = [*&v10[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView] indexPathsForSelectedRows];
      if (v15)
      {
        v16 = v15;
        v17 = sub_1D726267C();
      }

      else
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      [*&v10[v14] reloadData];
      v18 = *(v17 + 16);
      if (v18)
      {
        v31[2] = v11;
        v32 = v14;
        v20 = *(v4 + 16);
        v19 = v4 + 16;
        v33 = v20;
        v21 = *(v19 + 64);
        v22 = v3;
        v31[1] = v17;
        v23 = v17 + ((v21 + 32) & ~v21);
        v24 = *(v19 + 56);
        v25 = (v19 - 8);
        do
        {
          v33(v7, v23, v22);
          v26 = *&v10[v32];
          v27 = v10;
          v28 = v19;
          v29 = v26;
          v30 = sub_1D7258D4C();
          (*v25)(v7, v22);
          [v29 selectRowAtIndexPath:v30 animated:0 scrollPosition:0];

          v19 = v28;
          v10 = v27;

          v23 += v24;
          --v18;
        }

        while (v18);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1D67BB244(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_editor);
    v5 = Strong;
    objc_allocWithZone(type metadata accessor for DebugFormatUploadHiddenContainerController());

    v6 = sub_1D6EFB958(v4, a2);

    v7 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];

    [v7 setModalPresentationStyle_];
    [v5 presentViewController:v7 animated:1 completion:0];
  }
}

void sub_1D67BB454(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  type metadata accessor for DebugJournalHeaderView();
  v5 = sub_1D7262D7C();
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemBlueColor];
  [v7 setTintColor_];

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = *(v3 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections);
  if (*(v9 + 16) <= a2)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v10 = *(v9 + 32 * a2 + 32);

  v11 = [v7 textLabel];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D726203C();

    [v12 setText_];
  }

  if ((v10 - 7) > 1u)
  {
    v14 = OBJC_IVAR____TtC8NewsFeed22DebugJournalHeaderView_showHideLabel;
    v15 = *(v3 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter + 8);
    v16 = *&v7[OBJC_IVAR____TtC8NewsFeed22DebugJournalHeaderView_showHideLabel];

    sub_1D6184F28(v10, v15);

    v17 = sub_1D726203C();

    [v16 setText_];

    [*&v7[v14] setHidden_];
    v18 = sub_1D725D03C();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v10;
    v21 = sub_1D725F63C();
  }

  else
  {

    [*&v7[OBJC_IVAR____TtC8NewsFeed22DebugJournalHeaderView_showHideLabel] setHidden_];
  }
}

void sub_1D67BB804(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter);
    v6 = *(Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter);
    v12 = *(Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter + 8);

    if (sub_1D6184F28(a2, v12))
    {
      sub_1D62D05C8(a2, &v11);
    }

    else
    {
      sub_1D5FEFBD0(&v11, a2);
    }

    v7 = v12;
    *v5 = v6;
    v5[1] = v7;

    v8 = *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections];

    sub_1D67BDC74(v6, v7, v8);
    v10 = v9;

    sub_1D67B7400(v10);
  }
}

unint64_t sub_1D67BBB3C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = v3;
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = *(v4 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections);
  if (result >= *(v8 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = *(v8 + 32 * result + 56);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result >= *(v9 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v10 = v9 + 16 * result;
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  sub_1D67BF4AC(v11, *(v10 + 40));

  if (v12)
  {
    sub_1D67BE408(v11, v12);
    v13 = sub_1D7258DBC();
    v14 = *(*(v13 - 8) + 56);
    v15 = v13;
    v16 = a2;
    v17 = 1;
  }

  else
  {
    sub_1D67BE408(v11, 0);
    v18 = sub_1D7258DBC();
    v19 = *(v18 - 8);
    (*(v19 + 16))(a2, a1, v18);
    v14 = *(v19 + 56);
    v16 = a2;
    v17 = 0;
    v15 = v18;
  }

  return v14(v16, v17, 1, v15);
}

void sub_1D67BBED0(void *a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v7 = sub_1D7258DAC();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(v3 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections);
  if (v7 >= *(v8 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = *(v8 + 32 * v7 + 56);

  v10 = sub_1D7258D9C();
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v10 >= *(v9 + 16))
  {
LABEL_19:
    __break(1u);
    return;
  }

  v11 = v9 + 16 * v10;
  v12 = *(v11 + 32);
  v13 = *(v11 + 40);
  sub_1D67BF4AC(v12, *(v11 + 40));

  if (v13)
  {
    if (v13 == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    sub_1D67BE408(v12, v14);
  }

  else
  {
    v15 = v4 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_selection;
    swift_beginAccess();
    v16 = *(v15 + 16);

    v17 = sub_1D6E74418();
    v19 = sub_1D5BE240C(v17, v18, v16);

    v20 = sub_1D6E74418();
    if (v19)
    {
      sub_1D62CFA6C(v20, v21);
    }

    else
    {
      sub_1D5B860D0(&v27, v20, v21);
    }

    swift_endAccess();
    sub_1D67BF4D4(0, &qword_1EC88B958, MEMORY[0x1E6969C28], MEMORY[0x1E69E6F90]);
    v22 = sub_1D7258DBC();
    v23 = *(v22 - 8);
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D7273AE0;
    (*(v23 + 16))(v25 + v24, a2, v22);
    v26 = sub_1D726265C();

    [a1 reloadRowsAtIndexPaths:v26 withRowAnimation:5];

    sub_1D67B74CC();
    sub_1D67BE408(v12, 0);
    sub_1D67BE408(v12, 0);
  }
}

uint64_t sub_1D67BC1C0(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = sub_1D7258DBC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v13 = a3;
  v14 = a1;
  a5(v13, v12);

  return (*(v9 + 8))(v12, v8);
}

double sub_1D67BC3CC(void *a1)
{
  v3 = sub_1D7257A4C();
  v4 = *(v3 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v3, v5).n128_u64[0];
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 searchBar];
  v10 = [v9 text];

  if (v10)
  {
    v11 = sub_1D726207C();
    v13 = v12;

    v24[0] = v11;
    v24[1] = v13;
    sub_1D725795C();
    sub_1D5BF4D9C();
    v10 = sub_1D7263A4C();
    v15 = v14;
    (*(v4 + 8))(v8, v3);
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v16 = (v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter);
  v17 = *(v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter + 8);

  sub_1D614F964(v10, v15);
  v19 = v18;
  *v16 = v18;
  v16[1] = v17;

  v20 = *(v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections);

  sub_1D67BDC74(v19, v17, v20);
  v22 = v21;

  return sub_1D67B7400(v22);
}

void sub_1D67BC630(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D725FB0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D725FB1C();
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v32 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = 0;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v15 = (a1 + 32 * v12);
  while (v13 != v12)
  {
    if (v12 >= v13)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_19;
    }

    v17 = v15[7];
    ++v12;
    v15 += 4;
    if (*(v17 + 16))
    {
      v29 = v9;
      v30 = v8;
      v28 = *v15;
      v18 = v15[2];
      v27 = v15[1];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v14;
      v31 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D6997FE4(0, *(v14 + 16) + 1, 1);
        v14 = v35;
      }

      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1D6997FE4((v20 > 1), v21 + 1, 1);
        v14 = v35;
      }

      *(v14 + 16) = v21 + 1;
      v22 = v14 + 32 * v21;
      *(v22 + 32) = v28;
      *(v22 + 40) = v27;
      *(v22 + 48) = v18;
      *(v22 + 56) = v17;
      v12 = v16;
      v8 = v30;
      v5 = v31;
      v9 = v29;
      goto LABEL_2;
    }
  }

  sub_1D725B31C();

  if (v34)
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  *(v2 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections) = v14;

  sub_1D67B72BC();
  if (v13)
  {
    v24 = v32;
    v23 = v33;
    (*(v33 + 104))(v32, *MEMORY[0x1E69D8828], v9);
    v25 = MEMORY[0x1E69D8848];
  }

  else
  {
    v24 = v32;
    static CoverView.loading.getter(v32);
    v25 = MEMORY[0x1E69D8850];
    v23 = v33;
  }

  (*(v5 + 104))(v8, *v25, v4);
  sub_1D725D77C();
  (*(v5 + 8))(v8, v4);
  (*(v23 + 8))(v24, v9);
}

char *sub_1D67BC9A8(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatCacheFile(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DebugFormatCompilerResultEntry(0);
  v73 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v7);
  v69 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v68 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v70 = &v68 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v72 = &v68 - v18;
  v19 = *(a1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_request);
  if (!v19)
  {

    sub_1D725B31C();

    v22 = v74;
LABEL_77:

    return v22;
  }

  if (v19 != 1)
  {
    if (v19 >> 62)
    {
      goto LABEL_84;
    }

    v32 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_20;
  }

  sub_1D725B31C();

  v20 = v74;

  v69 = *(v20 + 16);
  if (!v69)
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_77;
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v68 = v20;
LABEL_7:
  if (v21 >= *(v20 + 16))
  {
    goto LABEL_83;
  }

  v23 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  a1 = *(v73 + 72);
  v24 = v21 + 1;
  v25 = v20 + v23 + a1 * v21;
  v26 = v72;
  sub_1D67BF64C(v25, v72, type metadata accessor for DebugFormatCompilerResultEntry);
  v27 = 0;
  v19 = *(v26 + *(v71 + 24));
  v28 = *(v19 + 16);
  while (1)
  {
    if (v28 == v27)
    {
      sub_1D67BF78C(v72, type metadata accessor for DebugFormatCompilerResultEntry);
      goto LABEL_6;
    }

    if (v27 >= *(v19 + 16))
    {
      break;
    }

    sub_1D67BF64C(v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v27++, v6, type metadata accessor for DebugFormatCacheFile);
    v12 = v6[24];
    sub_1D67BF78C(v6, type metadata accessor for DebugFormatCacheFile);
    if (v12)
    {
      sub_1D67BF724(v72, v70, type metadata accessor for DebugFormatCompilerResultEntry);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D6998024(0, *(v22 + 16) + 1, 1);
        v22 = v74;
      }

      v31 = *(v22 + 16);
      v30 = *(v22 + 24);
      v19 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        sub_1D6998024((v30 > 1), v31 + 1, 1);
        v22 = v74;
      }

      *(v22 + 16) = v19;
      sub_1D67BF724(v70, v22 + v23 + v31 * a1, type metadata accessor for DebugFormatCompilerResultEntry);
LABEL_6:
      v20 = v68;
      v21 = v24;
      if (v24 == v69)
      {
        goto LABEL_77;
      }

      goto LABEL_7;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    v32 = sub_1D7263BFC();
LABEL_20:
    v33 = MEMORY[0x1E69E7CC0];
    if (v32)
    {
      v71 = a1;
      v76 = MEMORY[0x1E69E7CC0];
      result = sub_1D5BFC364(0, v32 & ~(v32 >> 63), 0);
      if (v32 < 0)
      {
        __break(1u);
        return result;
      }

      v35 = 0;
      v33 = v76;
      v72 = v19 & 0xC000000000000001;
      v36 = v12;
      v37 = v32;
      do
      {
        if (v72)
        {
          v38 = MEMORY[0x1DA6FB460](v35, v19);
        }

        else
        {
          v38 = *(v19 + 8 * v35 + 32);
        }

        v39 = *(v38 + 16);
        v74 = 0;
        v75 = 0xE000000000000000;
        v40 = *(v39 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
        if (v40 <= 2)
        {
          v41 = 0xE600000000000000;
          if (*(v39 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
          {
            if (v40 == 1)
            {
              v42 = 0x726564616548;
            }

            else
            {
              v42 = 0x7265746F6F46;
            }
          }

          else
          {
            v42 = 0x74756F79614CLL;
          }
        }

        else if (*(v39 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
        {
          if (v40 == 5)
          {
            v41 = 0xE700000000000000;
            v42 = 0x7972617262694CLL;
          }

          else
          {
            v42 = 0x756F72676B636142;
            v41 = 0xEA0000000000646ELL;
          }
        }

        else if (v40 == 3)
        {
          v41 = 0xE700000000000000;
          v42 = 0x6C6C6177796150;
        }

        else
        {
          v41 = 0xE500000000000000;
          v42 = 0x656D656854;
        }

        MEMORY[0x1DA6F9910](v42, v41);

        MEMORY[0x1DA6F9910](24415, 0xE200000000000000);
        MEMORY[0x1DA6F9910](*(v39 + 16), *(v39 + 24));

        v43 = v74;
        v44 = v75;
        v76 = v33;
        v46 = *(v33 + 16);
        v45 = *(v33 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1D5BFC364((v45 > 1), v46 + 1, 1);
          v33 = v76;
        }

        ++v35;
        *(v33 + 16) = v46 + 1;
        v47 = v33 + 16 * v46;
        *(v47 + 32) = v43;
        *(v47 + 40) = v44;
      }

      while (v37 != v35);
      v12 = v36;
      a1 = v71;
    }

    v48 = sub_1D5B86020(v33);

    sub_1D725B31C();

    v49 = v74;

    v72 = *(v49 + 16);
    if (!v72)
    {
      break;
    }

    v50 = 0;
    v19 = v48 + 56;
    v70 = MEMORY[0x1E69E7CC0];
    v71 = v49;
    while (v50 < *(v49 + 16))
    {
      a1 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v51 = *(v73 + 72);
      sub_1D67BF64C(v49 + a1 + v51 * v50, v12, type metadata accessor for DebugFormatCompilerResultEntry);
      v52 = *v12;
      v74 = 0;
      v75 = 0xE000000000000000;
      v53 = *(v52 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
      if (v53 <= 2)
      {
        v54 = 0xE600000000000000;
        if (*(v52 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
        {
          if (v53 == 1)
          {
            v55 = 0x726564616548;
          }

          else
          {
            v55 = 0x7265746F6F46;
          }
        }

        else
        {
          v55 = 0x74756F79614CLL;
        }
      }

      else if (*(v52 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
      {
        if (v53 == 5)
        {
          v54 = 0xE700000000000000;
          v55 = 0x7972617262694CLL;
        }

        else
        {
          v55 = 0x756F72676B636142;
          v54 = 0xEA0000000000646ELL;
        }
      }

      else if (v53 == 3)
      {
        v54 = 0xE700000000000000;
        v55 = 0x6C6C6177796150;
      }

      else
      {
        v54 = 0xE500000000000000;
        v55 = 0x656D656854;
      }

      MEMORY[0x1DA6F9910](v55, v54);

      MEMORY[0x1DA6F9910](24415, 0xE200000000000000);
      MEMORY[0x1DA6F9910](*(v52 + 16), *(v52 + 24));
      v56 = v75;
      if (*(v48 + 16) && (v57 = v74, sub_1D7264A0C(), sub_1D72621EC(), v58 = sub_1D7264A5C(), v59 = -1 << *(v48 + 32), v60 = v58 & ~v59, ((*(v19 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) != 0))
      {
        v61 = ~v59;
        while (1)
        {
          v62 = (*(v48 + 48) + 16 * v60);
          v63 = *v62 == v57 && v62[1] == v56;
          if (v63 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v60 = (v60 + 1) & v61;
          if (((*(v19 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        sub_1D67BF724(v12, v69, type metadata accessor for DebugFormatCompilerResultEntry);
        v64 = v70;
        v65 = swift_isUniquelyReferenced_nonNull_native();
        v76 = v64;
        if ((v65 & 1) == 0)
        {
          sub_1D6998024(0, *(v64 + 16) + 1, 1);
          v64 = v76;
        }

        v67 = *(v64 + 16);
        v66 = *(v64 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_1D6998024((v66 > 1), v67 + 1, 1);
          v64 = v76;
        }

        *(v64 + 16) = v67 + 1;
        v70 = v64;
        sub_1D67BF724(v69, v64 + a1 + v67 * v51, type metadata accessor for DebugFormatCompilerResultEntry);
      }

      else
      {
LABEL_45:

        sub_1D67BF78C(v12, type metadata accessor for DebugFormatCompilerResultEntry);
      }

      ++v50;
      v49 = v71;
      if (v50 == v72)
      {
        goto LABEL_79;
      }
    }
  }

  v70 = MEMORY[0x1E69E7CC0];
LABEL_79:

  return v70;
}

uint64_t sub_1D67BD314(uint64_t a1, uint64_t a2)
{

  sub_1D725972C();

  v3 = sub_1D6DF2510(a2);
  v6 = sub_1D6DE8450(v3, v5, v4 & 1, v8);

  return v6;
}

void sub_1D67BD3C4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  v18 = MEMORY[0x1E69E7CC0];
  if (*(v3 + 16))
  {
    v17[0] = 0;
    v17[1] = 0xE000000000000000;

    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0x7261206572656854, 0xEA00000000002065);
    v4 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v4);

    MEMORY[0x1DA6F9910](0xD00000000000002BLL, 0x80000001D73D50F0);
    sub_1D5B66F44(0, &qword_1EC88F1D0, &type metadata for DebugFormatUploadItem, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D7273AE0;
    *(v5 + 32) = v3;
    *(v5 + 40) = 1;
    v6 = sub_1D6994C7C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_1D6994C7C((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[32 * v8];
    v9[32] = 8;
    *(v9 + 5) = 0;
    *(v9 + 6) = 0xE000000000000000;
    *(v9 + 7) = v5;
    v18 = v6;
  }

  sub_1D5B66F44(0, &qword_1EC88B990, &type metadata for DebugFormatUploadSection, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7284F00;
  LOBYTE(v17[0]) = 0;

  sub_1D6A56C48(v11, v17, inited + 32);
  LOBYTE(v17[0]) = 1;

  sub_1D6A56C48(v12, v17, inited + 64);
  LOBYTE(v17[0]) = 2;

  sub_1D6A56C48(v13, v17, inited + 96);
  LOBYTE(v17[0]) = 3;

  sub_1D6A56C48(v14, v17, inited + 128);
  LOBYTE(v17[0]) = 6;

  sub_1D6A56C48(v15, v17, inited + 160);
  LOBYTE(v17[0]) = 4;

  sub_1D6A56C48(v16, v17, inited + 192);
  sub_1D69882C8(inited);
  *a2 = v18;
}

uint64_t sub_1D67BD6A4(void *a1)
{
  sub_1D67BF4D4(0, &unk_1EC88B980, MEMORY[0x1E69D6788], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v18 - v4;
  v19 = a1;
  v6 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  v7 = sub_1D725B3BC();
  v8 = swift_dynamicCast();
  v9 = *(*(v7 - 8) + 56);
  if (!v8)
  {
    v9(v5, 1, 1, v7);
    sub_1D67BF6B4(v5, &unk_1EC88B980, MEMORY[0x1E69D6788]);
    goto LABEL_5;
  }

  v10 = *(v7 - 8);
  v9(v5, 0, 1, v7);
  v11 = (*(v10 + 88))(v5, v7);
  v12 = *MEMORY[0x1E69D6780];
  result = (*(v10 + 8))(v5, v7);
  if (v11 != v12)
  {
LABEL_5:
    v14 = MEMORY[0x1E69E6F90];
    sub_1D5B66F44(0, &qword_1EC88B990, &type metadata for DebugFormatUploadSection, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v18 = xmmword_1D7273AE0;
    *(inited + 16) = xmmword_1D7273AE0;
    *(inited + 32) = 7;
    sub_1D5B66F44(0, &qword_1EC88F1D0, &type metadata for DebugFormatUploadItem, v14);
    *(inited + 40) = 0;
    *(inited + 48) = 0;
    v16 = swift_allocObject();
    *(v16 + 16) = v18;
    *(v16 + 32) = a1;
    *(v16 + 40) = 2;
    *(inited + 56) = v16;
    v17 = a1;
    sub_1D67BC630(inited);
    swift_setDeallocating();
    return sub_1D67BF5F8(inited + 32);
  }

  return result;
}

void sub_1D67BD940(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = *(a1 + 16);
  if (!v30)
  {
    return;
  }

  v4 = 0;
  v29 = a1 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v6 = v29 + 32 * v4;
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 8);
    v34[0] = *v6;
    v35 = v9;
    v36 = v7;
    v37 = v8;

    sub_1D67B9680(v34, a2, &v38);
    if (v3)
    {

      return;
    }

    v10 = v38;
    v11 = v38 >> 62;
    if (v38 >> 62)
    {
      v12 = sub_1D7263BFC();
    }

    else
    {
      v12 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v5 >> 62;
    if (v5 >> 62)
    {
      v28 = sub_1D7263BFC();
      v15 = v28 + v12;
      if (__OFADD__(v28, v12))
      {
LABEL_33:
        __break(1u);
        return;
      }
    }

    else
    {
      v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v14 + v12;
      if (__OFADD__(v14, v12))
      {
        goto LABEL_33;
      }
    }

    v32 = v12;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v13)
      {
        v16 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v15 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_1D7263BFC();
      goto LABEL_16;
    }

    if (v13)
    {
      goto LABEL_15;
    }

LABEL_16:
    v5 = sub_1D7263DDC();
    v16 = v5 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v11)
    {
      break;
    }

    v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v18 >> 1) - v17) < v32)
    {
      goto LABEL_38;
    }

    v20 = v16 + 8 * v17 + 32;
    if (v11)
    {
      if (v19 < 1)
      {
        goto LABEL_40;
      }

      sub_1D67BF4D4(0, &qword_1EC88B960, type metadata accessor for DebugFormatUploadEntry, MEMORY[0x1E69E62F8]);
      sub_1D67BF554();
      for (i = 0; i != v19; ++i)
      {
        v22 = sub_1D6D876E0(v33, i, v10);
        v24 = *v23;

        (v22)(v33, 0);
        *(v20 + 8 * i) = v24;
      }
    }

    else
    {
      type metadata accessor for DebugFormatUploadEntry(0);
      swift_arrayInitWithCopy();
    }

    v3 = 0;
    if (v32 >= 1)
    {
      v25 = *(v16 + 16);
      v26 = __OFADD__(v25, v32);
      v27 = v25 + v32;
      if (v26)
      {
        goto LABEL_39;
      }

      *(v16 + 16) = v27;
    }

LABEL_4:
    if (++v4 == v30)
    {
      return;
    }
  }

  v19 = sub_1D7263BFC();
  if (v19)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_1D67BDC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return;
  }

  v69 = MEMORY[0x1E69E7CC0];
  v50 = *(a3 + 16);
  sub_1D6997FE4(0, v4, 0);
  v7 = 0;
  v51 = a3 + 32;
  v68 = a2 + 56;
  v56 = a1;
  v63 = a2;
  v64 = (a1 + 32);
  v8 = v69;
  do
  {
    v54 = v8;
    v55 = v7;
    v9 = (v51 + 32 * v7);
    v52 = *v9;
    v10 = *(v9 + 2);
    v53 = *(v9 + 1);
    v11 = *(v9 + 3);
    v12 = *(v11 + 16);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v60 = v12;
    if (!v12)
    {
      v14 = MEMORY[0x1E69E7CC0];
      goto LABEL_90;
    }

    v13 = 0;
    v59 = v11 + 32;
    v14 = MEMORY[0x1E69E7CC0];
    v57 = v11;
    v58 = v10;
    do
    {
      v62 = v14;
      while (1)
      {
        if (v13 >= *(v11 + 16))
        {
          __break(1u);
          return;
        }

        v15 = v59 + 16 * v13;
        v16 = *v15;
        v17 = *(v15 + 8);
        v66 = v13 + 1;
        v61 = v17;
        if (v17)
        {
          if (v17 == 1)
          {
          }

          else
          {
            v46 = v16;
          }

          goto LABEL_80;
        }

        if (!*(a2 + 16))
        {
          break;
        }

        v18 = *(v16[2] + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
        sub_1D7264A0C();

        sub_1D72621EC();

        v19 = sub_1D7264A5C();
        v20 = -1 << *(a2 + 32);
        v21 = v19 & ~v20;
        if (((*(v68 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_58;
        }

        v22 = ~v20;
        while (1)
        {
          v23 = *(*(a2 + 48) + v21);
          if (v23 <= 2)
          {
            break;
          }

          if (*(*(a2 + 48) + v21) > 4u)
          {
            if (v23 == 5)
            {
              v24 = 0xE700000000000000;
              v25 = 0x7972617262696CLL;
              if (v18 <= 2)
              {
                goto LABEL_42;
              }
            }

            else
            {
              v25 = 0x756F72676B636162;
              v24 = 0xEA0000000000646ELL;
              if (v18 <= 2)
              {
                goto LABEL_42;
              }
            }
          }

          else if (v23 == 3)
          {
            v24 = 0xE700000000000000;
            v25 = 0x6C6C6177796170;
            if (v18 <= 2)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v24 = 0xE500000000000000;
            v25 = 0x656D656874;
            if (v18 <= 2)
            {
              goto LABEL_42;
            }
          }

LABEL_21:
          if (v18 == 5)
          {
            v26 = 0x7972617262696CLL;
          }

          else
          {
            v26 = 0x756F72676B636162;
          }

          v27 = 0xEA0000000000646ELL;
          if (v18 == 5)
          {
            v27 = 0xE700000000000000;
          }

          v28 = 0x6C6C6177796170;
          if (v18 != 3)
          {
            v28 = 0x656D656874;
          }

          v29 = 0xE500000000000000;
          if (v18 == 3)
          {
            v29 = 0xE700000000000000;
          }

          if (v18 <= 4)
          {
            v30 = v28;
          }

          else
          {
            v30 = v26;
          }

          if (v18 <= 4)
          {
            v31 = v29;
          }

          else
          {
            v31 = v27;
          }

          if (v25 == v30)
          {
            goto LABEL_49;
          }

LABEL_50:
          v33 = sub_1D72646CC();

          if (v33)
          {
            goto LABEL_77;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v68 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        if (!*(*(a2 + 48) + v21))
        {
          v24 = 0xE600000000000000;
          v25 = 0x74756F79616CLL;
          if (v18 <= 2)
          {
            goto LABEL_42;
          }

          goto LABEL_21;
        }

        if (v23 == 1)
        {
          v25 = 0x726564616568;
        }

        else
        {
          v25 = 0x7265746F6F66;
        }

        v24 = 0xE600000000000000;
        if (v18 > 2)
        {
          goto LABEL_21;
        }

LABEL_42:
        if (v18)
        {
          if (v18 == 1)
          {
            v32 = 0x726564616568;
          }

          else
          {
            v32 = 0x7265746F6F66;
          }

          v31 = 0xE600000000000000;
          if (v25 == v32)
          {
            goto LABEL_49;
          }

          goto LABEL_50;
        }

        v31 = 0xE600000000000000;
        if (v25 != 0x74756F79616CLL)
        {
          goto LABEL_50;
        }

LABEL_49:
        if (v24 != v31)
        {
          goto LABEL_50;
        }

LABEL_77:
        sub_1D67BE408(v16, 0);
        v13 = v66;
        v11 = v57;
        v10 = v58;
        v14 = v62;
        if (v66 == v60)
        {
          goto LABEL_90;
        }
      }

LABEL_58:
      v65 = *(v56 + 16);
      if (!v65)
      {
        goto LABEL_80;
      }

      v34 = *v64;
      v35 = *(*v64 + 16);
      if (!v35)
      {
        goto LABEL_80;
      }

      v36 = 1;
      while (2)
      {
        v67 = v36;

        v37 = 0;
        v38 = v34 + 40;
        v39 = v35 - 1;
        v40 = 1;
        while (2)
        {
          if (v40)
          {
            sub_1D5BF4D9C();

            if (sub_1D7263ABC())
            {

              goto LABEL_68;
            }

            v41 = v16[2] + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name;
            swift_beginAccess();
            if (*(v41 + 8))
            {
              sub_1D726210C();
              v42 = sub_1D7263ABC();

              if (v42)
              {
LABEL_68:
                if (v39 == v37)
                {

                  a2 = v63;
                  goto LABEL_80;
                }

                v40 = 1;
LABEL_62:
                ++v37;
                v38 += 16;
                if (v37 >= *(v34 + 16))
                {
                  __break(1u);
                  return;
                }

                continue;
              }
            }

            else
            {
            }
          }

          break;
        }

        if (v39 != v37)
        {
          v40 = 0;
          goto LABEL_62;
        }

        a2 = v63;
        if (v67 == v65)
        {
          goto LABEL_77;
        }

        v34 = v64[v67];
        v36 = v67 + 1;
        v35 = *(v34 + 16);
        if (v35)
        {
          continue;
        }

        break;
      }

LABEL_80:
      v14 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D6998004(0, *(v62 + 16) + 1, 1);
        v14 = v62;
      }

      v13 = v66;
      v44 = *(v14 + 16);
      v43 = *(v14 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1D6998004((v43 > 1), v44 + 1, 1);
        v14 = v62;
      }

      *(v14 + 16) = v44 + 1;
      v45 = v14 + 16 * v44;
      *(v45 + 32) = v16;
      *(v45 + 40) = v61;
      v11 = v57;
      v10 = v58;
    }

    while (v66 != v60);
LABEL_90:
    swift_bridgeObjectRelease_n();

    v8 = v54;
    v48 = *(v54 + 16);
    v47 = *(v54 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_1D6997FE4((v47 > 1), v48 + 1, 1);
      v8 = v54;
    }

    *(v8 + 16) = v48 + 1;
    v49 = v8 + 32 * v48;
    *(v49 + 32) = v52;
    v7 = v55 + 1;
    *(v49 + 40) = v53;
    *(v49 + 48) = v10;
    *(v49 + 56) = v14;
  }

  while (v55 + 1 != v50);
}

void sub_1D67BE408(void *a1, char a2)
{
  switch(a2)
  {
    case 2:

      break;
    case 1:

      break;
    case 0:

      break;
  }
}

void sub_1D67BE430()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_coverViewManager;
  sub_1D725D7AC();
  swift_allocObject();
  *(v1 + v3) = sub_1D725D79C();
  *(v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController____lazy_storage___nextBarButtonItem) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections) = MEMORY[0x1E69E7CC0];
  v5 = (v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter);
  sub_1D614F964(0, 0xE000000000000000);
  v6 = MEMORY[0x1E69E7CD0];
  *v5 = v7;
  v5[1] = v6;
  *(v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections) = v4;
  v8 = (v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_selection);
  *v8 = v6;
  v8[1] = v6;
  v8[2] = v6;
  sub_1D726402C();
  __break(1u);
}

id sub_1D67BE55C(uint64_t a1, uint64_t a2, char a3)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v3 setAlignment_];
  sub_1D67BF4D4(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279970;
  v5 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v6 = objc_opt_self();
  v36 = v5;
  v37 = v6;
  v7 = [v6 systemFontOfSize_];
  v8 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  *(inited + 40) = v7;
  v9 = *MEMORY[0x1E69DB650];
  v35 = v8;
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = objc_opt_self();
  v33 = v9;
  v34 = v10;
  v11 = [v10 secondaryLabelColor];
  v12 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 80) = v11;
  v13 = *MEMORY[0x1E69DB688];
  v32 = v12;
  *(inited + 104) = v12;
  *(inited + 112) = v13;
  v14 = sub_1D5B5A498(0, &qword_1EDF1A840, 0x1E69DB7C8);
  *(inited + 144) = v14;
  *(inited + 120) = v3;
  v31 = v13;
  v15 = v3;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  v16 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v17 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v18 = sub_1D7261D2C();

  v19 = [v16 initWithString:v17 attributes:v18];

  if (a3)
  {
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_1D7279970;
    *(v20 + 32) = v36;
    v21 = *MEMORY[0x1E69DB958];
    v22 = v36;
    *(v20 + 40) = [v37 systemFontOfSize:10.0 weight:v21];
    *(v20 + 64) = v35;
    *(v20 + 72) = v33;
    v23 = v33;
    *(v20 + 80) = [v34 systemBlueColor];
    *(v20 + 104) = v32;
    *(v20 + 112) = v31;
    *(v20 + 144) = v14;
    *(v20 + 120) = v15;
    v24 = v31;
    v25 = v15;
    sub_1D5C09CEC(v20);
    swift_setDeallocating();
    swift_arrayDestroy();
    v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v27 = sub_1D726203C();
    v28 = sub_1D7261D2C();

    v29 = [v26 initWithString:v27 attributes:v28];

    [v19 appendAttributedString_];
  }

  return v19;
}

id sub_1D67BE97C(uint64_t a1)
{
  v77 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v77, v2);
  v76 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v75 = &v75 - v6;
  v7 = sub_1D725ACBC();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v78 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D725BD1C();
  v79 = *(v10 - 8);
  v80 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v75 - v16;
  sub_1D67BF4D4(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v75 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v75 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v75 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v75 - v36;
  v38 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v75 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67BF64C(a1, v41, type metadata accessor for FormatVersioningModeSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (qword_1EDF3CA50 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v80, qword_1EDF3CA58);
      sub_1D725BD0C();
      v60 = sub_1D725B17C();
      v61 = (*(*(v60 - 8) + 48))(v37, 1, v60) == 1;
      sub_1D67BF6B4(v37, &unk_1EDF43AB0, MEMORY[0x1E69D6638]);
      return sub_1D67BE55C(0xD000000000000010, 0x80000001D73D5120, v61);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        if (qword_1EDF3CA50 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v80, qword_1EDF3CA58);
        v49 = sub_1D725BC9C();
        v51 = v50;
        sub_1D725BD0C();
        v52 = sub_1D725B17C();
        v53 = (*(*(v52 - 8) + 48))(v33, 1, v52) == 1;
        sub_1D67BF6B4(v33, &unk_1EDF43AB0, MEMORY[0x1E69D6638]);
        v48 = sub_1D67BE55C(v49, v51, v53);
      }

      else
      {
        if (qword_1EDF3CA50 != -1)
        {
          swift_once();
        }

        v69 = v80;
        __swift_project_value_buffer(v80, qword_1EDF3CA58);
        sub_1D725BCFC();
        v70 = sub_1D725B17C();
        (*(*(v70 - 8) + 56))(v29, 1, 1, v70);
        sub_1D725BCEC();
        v71 = sub_1D725BC9C();
        v73 = v72;
        (*(v79 + 8))(v17, v69);
        v48 = sub_1D67BE55C(v71, v73, 1);
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v43 = v76;
      sub_1D67BF724(v41, v76, type metadata accessor for FormatVersioningModeRelease);
      sub_1D725BCFC();
      v44 = sub_1D725B17C();
      (*(*(v44 - 8) + 56))(v29, 1, 1, v44);
      sub_1D725BCEC();
      v45 = sub_1D725BC9C();
      v47 = v46;
      (*(v79 + 8))(v17, v80);
      v48 = sub_1D67BE55C(v45, v47, 1);

      sub_1D67BF78C(v43, type metadata accessor for FormatVersioningModeRelease);
    }

    else
    {
      v63 = v79;
      v62 = v80;
      (*(v79 + 32))(v13, v41, v80);
      v64 = sub_1D725BC9C();
      v66 = v65;
      sub_1D725BD0C();
      v67 = sub_1D725B17C();
      v68 = (*(*(v67 - 8) + 48))(v21, 1, v67) == 1;
      sub_1D67BF6B4(v21, &unk_1EDF43AB0, MEMORY[0x1E69D6638]);
      v48 = sub_1D67BE55C(v64, v66, v68);

      (*(v63 + 8))(v13, v62);
    }
  }

  else
  {
    v54 = v75;
    sub_1D67BF724(v41, v75, type metadata accessor for FormatVersioningModeRelease);
    v55 = sub_1D725BC9C();
    v57 = v56;
    sub_1D725BD0C();
    v58 = sub_1D725B17C();
    v59 = (*(*(v58 - 8) + 48))(v25, 1, v58) == 1;
    sub_1D67BF6B4(v25, &unk_1EDF43AB0, MEMORY[0x1E69D6638]);
    v48 = sub_1D67BE55C(v55, v57, v59);

    sub_1D67BF78C(v54, type metadata accessor for FormatVersioningModeRelease);
  }

  return v48;
}

void sub_1D67BF214(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_1D7258DAC();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = *(v2 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections);
  if (v5 >= *(v6 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *(v6 + 32 * v5 + 56);

  v8 = sub_1D7258D9C();
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8 >= *(v7 + 16))
  {
LABEL_19:
    __break(1u);
    return;
  }

  v9 = v7 + 16 * v8;
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);
  sub_1D67BF4AC(v10, *(v9 + 40));

  if (v11)
  {
    if (v11 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    sub_1D67BE408(v10, v12);
  }

  else
  {
    v13 = v3 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_selection;
    swift_beginAccess();
    v14 = *(v13 + 16);

    v15 = sub_1D6E74418();
    v17 = sub_1D5BE240C(v15, v16, v14);

    v18 = sub_1D7258D4C();
    if (v17)
    {
      [a1 selectRowAtIndexPath:v18 animated:0 scrollPosition:0];
    }

    else
    {
      [a1 deselectRowAtIndexPath:v18 animated:0];
    }

    sub_1D67BE408(v10, 0);
  }
}

unint64_t sub_1D67BF3F0(__n128 a1)
{
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections);
  if (result >= *(v3 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(v3 + 32 * result + 56);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < *(v4 + 16))
  {
    v5 = v4 + 16 * result;
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    sub_1D67BF4AC(v6, v7);

    sub_1D67BE408(v6, v7);
    return 1u >> (v7 & 7);
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1D67BF4AC(void *a1, char a2)
{
  switch(a2)
  {
    case 2:
      v2 = a1;
      break;
    case 1:

      break;
    case 0:

      break;
  }
}

void sub_1D67BF4D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D67BF554()
{
  result = qword_1EC88B968;
  if (!qword_1EC88B968)
  {
    sub_1D67BF4D4(255, &qword_1EC88B960, type metadata accessor for DebugFormatUploadEntry, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B968);
  }

  return result;
}

uint64_t sub_1D67BF64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D67BF6B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D67BF4D4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D67BF724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D67BF78C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D67BF83C(void *a1)
{
  v3 = v1;
  sub_1D67C4560(0, &qword_1EC88BA48, sub_1D67C450C, &type metadata for A12_V12.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67C450C();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D67C45C8(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D67BFA84(uint64_t a1)
{
  v2 = sub_1D67C450C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D67BFAC0(uint64_t a1)
{
  v2 = sub_1D67C450C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D67BFAFC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D67C426C(a2, v6);
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

uint64_t sub_1D67BFB5C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D67C3E70();

  return sub_1D725A24C();
}

uint64_t sub_1D67BFBD8@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D67C4560(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D67BFC94(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v91 = a2;
  v81 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v88 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v75 - v12;
  v14 = sub_1D725895C();
  v83 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for GroupLayoutContext(0);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v18);
  v89 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v75 - v22;
  v101 = type metadata accessor for GroupLayoutBindingContext(0);
  v85 = *(v101 - 1);
  MEMORY[0x1EEE9AC00](v101, v24);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v90) = *v3;
  v27 = *(v3 + 1);
  v84 = v3[16];
  *&v97 = 4;
  if (GroupLayoutBindingContext.count(for:)(&v97))
  {
    sub_1D5C17350();
    swift_allocError();
    *v28 = 0u;
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0;
    *(v28 + 40) = 13;
    swift_willThrow();
  }

  else
  {
    v78 = v13;
    v80 = v9;
    v79 = a1;
    sub_1D5BE3ED8(a1, v26, type metadata accessor for GroupLayoutBindingContext);
    v77 = type metadata accessor for GroupLayoutContext;
    v76 = v23;
    sub_1D5BE3ED8(v91, v23, type metadata accessor for GroupLayoutContext);
    sub_1D725894C();
    v29 = sub_1D725893C();
    v75 = v30;
    (*(v83 + 8))(v17, v14);
    v99 = &type metadata for A12_V12;
    v83 = sub_1D5ECEB68();
    v100 = v83;
    LOBYTE(v97) = v90;
    v31 = v27;
    *(&v97 + 1) = v27;
    v32 = v84;
    v98 = v84;
    type metadata accessor for GroupLayoutKey(0);
    v33 = swift_allocObject();
    sub_1D5BEE8A0(v31, v32);
    v92[0] = sub_1D7264C5C();
    v92[1] = v34;
    v95 = 95;
    v96 = 0xE100000000000000;
    v93 = 45;
    v94 = 0xE100000000000000;
    sub_1D5BF4D9C();
    v35 = sub_1D7263A6C();
    v37 = v36;

    *(v33 + 16) = v35;
    *(v33 + 24) = v37;
    v38 = (v33 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
    v39 = v75;
    *v38 = v29;
    v38[1] = v39;
    sub_1D5B68374(&v97, v33 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
    v40 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
    v41 = v33;
    sub_1D5BDA904(v26, v33 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
    (*(v85 + 56))(v33 + v40, 0, 1, v101);
    v42 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
    sub_1D5BDA904(v76, v33 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
    (*(v86 + 56))(v33 + v42, 0, 1, v87);
    __swift_destroy_boxed_opaque_existential_1(&v97);
    v99 = &type metadata for A12_V12;
    v100 = v83;
    LOBYTE(v97) = v90;
    *(&v97 + 1) = v31;
    v98 = v32;
    v43 = v89;
    sub_1D5BE3ED8(v91, v89, v77);
    sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
    inited = swift_initStackObject();
    v45 = MEMORY[0x1E69E7CC0];
    v90 = inited;
    *(inited + 16) = MEMORY[0x1E69E7CC0];
    v46 = inited + 16;
    swift_beginAccess();
    sub_1D5BEE8A0(v31, v32);
    v47 = sub_1D5C0F8FC(0, 1, 1, v45);
    v49 = v47[2];
    v48 = v47[3];
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v51 = v78;
      v47[2] = v50;
      v52 = &v47[2 * v49];
      v52[4] = sub_1D63106DC;
      v52[5] = 0;
      *v46 = v47;
      swift_endAccess();
      if (!*(*&v79[v101[14]] + 16))
      {
        break;
      }

      sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
      if ((v53 & 1) == 0)
      {
        break;
      }

      v50 = sub_1D5C14D80(v54);

      if (!v50)
      {
        break;
      }

      v87 = v41;
      v43 = *(v50 + 16);
      if (v43)
      {
        v41 = 0;
        v49 = MEMORY[0x1E69E7CC0];
        v46 = v88;
        v47 = v80;
        v91 = *(v50 + 16);
        while (1)
        {
          v48 = *(v50 + 16);
          if (v41 >= v48)
          {
            break;
          }

          v55 = (*(v46 + 80) + 32) & ~*(v46 + 80);
          v56 = *(v46 + 72);
          sub_1D5BE3ED8(v50 + v55 + v56 * v41, v51, type metadata accessor for FeedHeadline);
          if ((*(v51 + 32) & 4) != 0)
          {
            sub_1D5BDA904(v51, v47, type metadata accessor for FeedHeadline);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v92[0] = v49;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5C0F91C(0, *(v49 + 16) + 1, 1);
              v46 = v88;
              v49 = v92[0];
            }

            v59 = *(v49 + 16);
            v58 = *(v49 + 24);
            if (v59 >= v58 >> 1)
            {
              sub_1D5C0F91C((v58 > 1), v59 + 1, 1);
              v46 = v88;
              v49 = v92[0];
            }

            *(v49 + 16) = v59 + 1;
            v47 = v80;
            sub_1D5BDA904(v80, v49 + v55 + v59 * v56, type metadata accessor for FeedHeadline);
            v43 = v91;
          }

          else
          {
            sub_1D5BE780C(v51, type metadata accessor for FeedHeadline);
          }

          if (v43 == ++v41)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        v49 = MEMORY[0x1E69E7CC0];
LABEL_24:
        v65 = v79;
        if ((*v79 & 1) == 0)
        {

          sub_1D62F071C(v49);
          v67 = v66;

          v49 = v67;
        }

        v64 = v81;
        v68 = *&v65[v101[18]];
        v69 = *&v65[v101[19]];
        if (__OFSUB__(v68, v69))
        {
          goto LABEL_38;
        }

        v46 = v65;
        v70 = sub_1D5C0FAD4(v49, v68 - v69);
        v47 = sub_1D5C11E10(&unk_1F5113C20, v70, v50);

        if (v47)
        {

LABEL_30:
          strcpy(v92, "FeedHeadline");
          BYTE5(v92[1]) = 0;
          HIWORD(v92[1]) = -5120;
          v92[2] = 0;
          v92[3] = 0;

          v72 = sub_1D5C107C4(v71);

          sub_1D5BDACA8(v92, v72);
          swift_setDeallocating();

          v43 = v89;
          v41 = v87;
          goto LABEL_31;
        }

        v41 = &unk_1F5113C20;
        v47 = sub_1D5C11E10(&unk_1F5113C20, v49, v50);

        if (v47)
        {
          goto LABEL_30;
        }

        v92[0] = &unk_1F5113C20;
        v4 = v82;
        sub_1D5E239F4(v92);
        if (v4)
        {
          goto LABEL_39;
        }

        v61 = v92[0];
        v48 = *(v92[0] + 2);
        v43 = v89;
        if (v48)
        {
          goto LABEL_21;
        }

        __break(1u);
      }

      __break(1u);
LABEL_36:
      v47 = sub_1D5C0F8FC((v48 > 1), v50, 1, v47);
    }

    v60 = v82;
    if (!qword_1F5113C40)
    {

      v47 = MEMORY[0x1E69E7CC0];
      v64 = v81;
LABEL_31:
      v73 = type metadata accessor for A12_V12.Bound(0);
      v64[3] = v73;
      v64[4] = sub_1D67C45C8(&qword_1EC88B9A8, type metadata accessor for A12_V12.Bound, &unk_1D72ECB88);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
      *boxed_opaque_existential_1 = v41;
      sub_1D5B63F14(&v97, (boxed_opaque_existential_1 + 1));
      sub_1D5BDA904(v43, boxed_opaque_existential_1 + *(v73 + 24), type metadata accessor for GroupLayoutContext);
      *(boxed_opaque_existential_1 + *(v73 + 28)) = v47;
      return;
    }

    v92[0] = &unk_1F5113C20;
    v4 = v82;
    sub_1D5E239F4(v92);
    if (!v60)
    {

      v61 = v92[0];
      if (*(v92[0] + 2))
      {
LABEL_21:
        v62 = *(v61 + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v63, "FeedHeadline");
        v63[13] = 0;
        *(v63 + 7) = -5120;
        *(v63 + 2) = 0;
        *(v63 + 3) = 0;
        *(v63 + 4) = 4;
        *(v63 + 5) = v62;
        *(v63 + 6) = 0;
        *(v63 + 7) = 0;
        v63[64] = 0;
        swift_willThrow();
        swift_setDeallocating();

        sub_1D5BE780C(v43, type metadata accessor for GroupLayoutContext);
        __swift_destroy_boxed_opaque_existential_1(&v97);
        return;
      }

      __break(1u);
LABEL_38:
      __break(1u);
    }

LABEL_39:

    __break(1u);
  }
}