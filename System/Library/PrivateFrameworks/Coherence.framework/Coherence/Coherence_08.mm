uint64_t Optional<A>.visitReferences(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v10, v4, v7);
  v11 = *(v4 + 16);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    (*(*(a3 + 8) + 48))(a1, v11);
    v6 = v12;
    v4 = v11;
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t Optional<A>.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v20 = a3;
  v21 = a1;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v8 + 16);
  v18(v10, v5, a2, v15);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    (*(v8 + 8))(v10, a2);
    return (v18)(a4, v5, a2);
  }

  else
  {
    (*(v13 + 32))(v17, v10, v12);
    (*(*(v20 + 8) + 24))(v21, v12);
    (*(v13 + 8))(v17, v12);
    return (*(v13 + 56))(a4, 0, 1, v12);
  }
}

uint64_t Optional<A>.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = v7;

  Optional<A>.copy(renamingReferences:)(&v9, a2, a3, a4);
}

uint64_t Optional<A>.needToFinalizeTimestamps()(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v8, v3, v5);
  v9 = *(v3 + 16);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(*(a2 + 8) + 56))(v9);
    v4 = v10;
    v3 = v9;
  }

  (*(v4 + 8))(v7, v3);
  return v11 & 1;
}

uint64_t Optional<A>.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  result = (*(*(v6 - 8) + 48))(v3, 1, v6);
  if (!result)
  {
    v8 = *(*(a3 + 8) + 64);

    return v8(a1, v6);
  }

  return result;
}

uint64_t Optional<A>.minEncodingVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v10, a1, v7);
  v11 = *(a1 + 16);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    result = (*(v6 + 8))(v9, a1);
    v14 = 0;
  }

  else
  {
    (*(*(*(a2 + 8) + 8) + 24))(&v16, v11);
    v14 = v16;
    result = (*(v12 + 8))(v9, v11);
  }

  *a3 = v14;
  return result;
}

double Optional<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {
    v8 = *(a2 + 16);

    sub_1ADE6D740(v3, v8, a3);
  }

  return result;
}

uint64_t Optional<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = a3;
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_1AE23E3BC();
  (*(v4 + 16))(v6, v15[2], a2);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    (*(v4 + 8))(v6, a2);
    __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    sub_1AE23E07C();
  }

  else
  {
    (*(v9 + 32))(v12, v6, v8);
    __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    sub_1AE23E06C();
    (*(v9 + 8))(v12, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_1ADE75D24()
{
  v0 = sub_1AE23C78C();
  __swift_allocate_value_buffer(v0, qword_1EB5D7548);
  __swift_project_value_buffer(v0, qword_1EB5D7548);
  return sub_1AE23C77C();
}

void sub_1ADE75D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v338 = a7;
  v344 = a6;
  v382 = a5;
  v381 = a4;
  v400 = type metadata accessor for RetainedMapRun(0);
  v8 = *(v400 - 8);
  MEMORY[0x1EEE9AC00](v400);
  v388 = &v329 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v379 = &v329 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v374 = &v329 - v13;
  v368 = sub_1AE23C0EC();
  v340 = *(v368 - 8);
  MEMORY[0x1EEE9AC00](v368);
  v342 = &v329 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  MEMORY[0x1EEE9AC00](v341);
  v365 = &v329 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v351 = &v329 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v350 = &v329 - v19;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA448, &qword_1AE242528);
  MEMORY[0x1EEE9AC00](v349);
  v337 = &v329 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v343 = &v329 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v332 = &v329 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v336 = &v329 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v334 = &v329 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v329 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v390 = &v329 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v395 = &v329 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v380 = &v329 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v389 = &v329 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v377 = &v329 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v386 = &v329 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v347 = (&v329 - v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v398 = *(v46 - 8);
  v399 = v46;
  MEMORY[0x1EEE9AC00](v46);
  v391 = &v329 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v387 = &v329 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v385 = &v329 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v346 = (&v329 - v53);
  v54 = sub_1AE23C12C();
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v335 = &v329 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v359 = &v329 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v366 = &v329 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v352 = (&v329 - v62);
  MEMORY[0x1EEE9AC00](v63);
  v355 = &v329 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v354 = &v329 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v361 = &v329 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v364 = &v329 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v396 = (&v329 - v72);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v329 - v74;
  v348 = type metadata accessor for Replica(0);
  v372 = *(v348 - 8);
  MEMORY[0x1EEE9AC00](v348);
  v330 = &v329 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77);
  v333 = &v329 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v331 = &v329 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v362 = &v329 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v363 = &v329 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v367 = &v329 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v329 - v88;
  MEMORY[0x1EEE9AC00](v90);
  v370 = &v329 - v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v92 - 8);
  v360 = &v329 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v94);
  v353 = &v329 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v394 = &v329 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v393 = &v329 - v99;
  v100 = (a2 + 64);
  v101 = 1 << *(a2 + 32);
  v102 = -1;
  if (v101 < 64)
  {
    v102 = ~(-1 << v101);
  }

  v103 = v102 & *(a2 + 64);
  v358 = (v101 + 63) >> 6;
  v376 = (v55 + 16);
  v383 = (v55 + 32);
  v373 = v55;
  v378 = (v55 + 8);
  v345 = v8;
  v397 = (v8 + 48);
  v371 = a2;

  v104 = 0;
  v356 = v31;
  v384 = v54;
  v375 = v75;
  v392 = v89;
  v369 = (a2 + 64);
LABEL_8:
  if (v103)
  {
    v105 = v104;
    goto LABEL_18;
  }

  if (v358 <= v104 + 1)
  {
    v106 = v104 + 1;
  }

  else
  {
    v106 = v358;
  }

  v107 = v106 - 1;
  v109 = v393;
  v108 = v394;
  while (1)
  {
    v105 = v104 + 1;
    if (__OFADD__(v104, 1))
    {
      break;
    }

    if (v105 >= v358)
    {
      v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      (*(*(v147 - 8) + 56))(v108, 1, 1, v147);
      v103 = 0;
      v104 = v107;
      goto LABEL_19;
    }

    v103 = *(v100 + v105);
    ++v104;
    if (v103)
    {
      v104 = v105;
LABEL_18:
      v110 = __clz(__rbit64(v103));
      v103 &= v103 - 1;
      v111 = v110 | (v105 << 6);
      v112 = v371;
      v113 = v370;
      sub_1ADDDE338(*(v371 + 48) + v372[9] * v111, v370, type metadata accessor for Replica);
      v114 = v373;
      v115 = v375;
      v116 = v384;
      (*(v373 + 16))(v375, *(v112 + 56) + *(v373 + 72) * v111, v384);
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v118 = *(v117 + 48);
      v119 = v113;
      v108 = v394;
      sub_1ADDDE4D8(v119, v394, type metadata accessor for Replica);
      v120 = &v108[v118];
      v54 = v116;
      (*(v114 + 32))(v120, v115, v116);
      (*(*(v117 - 8) + 56))(v108, 0, 1, v117);
      v89 = v392;
      v109 = v393;
LABEL_19:
      sub_1ADDD2198(v108, v109, &qword_1EB5BA458, &qword_1AE251E00);
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v122 = *(v121 - 8);
      v123 = *(v122 + 48);
      if ((v123)(v109, 1, v121) == 1)
      {
        v357 = v123;
        v358 = v122 + 48;

        v154 = *(v381 + 64);
        v363 = v381 + 64;
        v155 = 1 << *(v381 + 32);
        v156 = -1;
        if (v155 < 64)
        {
          v156 = ~(-1 << v155);
        }

        v157 = v156 & v154;
        v339 = (v155 + 63) >> 6;
        v352 = (v122 + 56);
        v347 = (v372 + 7);
        v346 = (v372 + 6);
        ++v340;
        v396 = (v345 + 56);

        v158 = 0;
        v159 = v389;
        v160 = v377;
        v161 = v386;
        v162 = v362;
        v345 = v121;
LABEL_52:
        v166 = v360;
        if (!v157)
        {
          if (v339 <= (v158 + 1))
          {
            v169 = (v158 + 1);
          }

          else
          {
            v169 = v339;
          }

          v170 = (v169 - 1);
          while (1)
          {
            v168 = (v158 + 1);
            if (__OFADD__(v158, 1))
            {
              goto LABEL_183;
            }

            if (v168 >= v339)
            {
              v367 = 0;
              v181 = 1;
              v364 = v170;
              goto LABEL_63;
            }

            v157 = *(v363 + 8 * v168);
            ++v158;
            if (v157)
            {
              v167 = v162;
              v364 = v168;
              goto LABEL_62;
            }
          }
        }

        v167 = v162;
        v364 = v158;
        v168 = v158;
LABEL_62:
        v367 = (v157 - 1) & v157;
        v171 = __clz(__rbit64(v157)) | (v168 << 6);
        v172 = v381;
        v173 = v370;
        sub_1ADDDE338(*(v381 + 48) + v372[9] * v171, v370, type metadata accessor for Replica);
        v174 = *(v172 + 56);
        v175 = v373;
        v176 = v375;
        (*(v373 + 16))(v375, v174 + *(v373 + 72) * v171, v54);
        v177 = *(v121 + 48);
        v178 = v173;
        v179 = v360;
        sub_1ADDDE4D8(v178, v360, type metadata accessor for Replica);
        v180 = v179 + v177;
        v166 = v179;
        (*(v175 + 32))(v180, v176, v54);
        v181 = 0;
        v162 = v167;
LABEL_63:
        (*v352)(v166, v181, 1, v121);
        v182 = v353;
        sub_1ADDD2198(v166, v353, &qword_1EB5BA458, &qword_1AE251E00);
        if ((v357)(v182, 1, v121) == 1)
        {

          return;
        }

        v183 = *(v121 + 48);
        sub_1ADDDE4D8(v182, v162, type metadata accessor for Replica);
        (*v383)(v366, v182 + v183, v54);
        v184 = v371;
        if (*(v371 + 16))
        {
          v185 = sub_1ADDD8A6C(v162);
          v186 = *v376;
          if (v187)
          {
            v188 = v373;
            v189 = v335;
            v190 = v384;
            v186(v335, *(v184 + 56) + *(v373 + 72) * v185, v384);
            v191 = v366;
            v186(v375, v366, v190);
            v186(v354, v191, v190);
            v186(v355, v189, v190);
            sub_1ADE89268(&qword_1ED96A278, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
            v192 = v361;
            sub_1AE23D8AC();
            v193 = v359;
            sub_1AE23D88C();
            v163 = v193;
            v194 = *(v188 + 8);
            v194(v192, v190);
            v162 = v362;
            v194(v189, v190);
            v121 = v345;
            v195 = v356;
            if (sub_1AE23C0AC())
            {
              goto LABEL_51;
            }

LABEL_71:
            sub_1ADDDE338(v162, v195, type metadata accessor for Replica);
            v197 = v348;
            v393 = *v347;
            (v393)(v195, 0, 1, v348);
            v198 = *(v349 + 48);
            v199 = v195;
            v200 = v343;
            sub_1ADDCEE40(v344, v343, &unk_1EB5B9E70, &unk_1AE240EC0);
            sub_1ADDCEE40(v199, v200 + v198, &unk_1EB5B9E70, &unk_1AE240EC0);
            v201 = *v346;
            v202 = (*v346)(v200, 1, v197);
            v394 = v201;
            if (v202 == 1)
            {
              sub_1ADDCEDE0(v199, &unk_1EB5B9E70, &unk_1AE240EC0);
              if ((v201)(v200 + v198, 1, v197) == 1)
              {
                sub_1ADDCEDE0(v200, &unk_1EB5B9E70, &unk_1AE240EC0);
                goto LABEL_74;
              }

LABEL_79:
              v213 = v200;
              v214 = &qword_1EB5BA448;
              v215 = &qword_1AE242528;
LABEL_80:
              sub_1ADDCEDE0(v213, v214, v215);
              goto LABEL_81;
            }

            v212 = v334;
            sub_1ADDCEE40(v200, v334, &unk_1EB5B9E70, &unk_1AE240EC0);
            if ((v201)(v200 + v198, 1, v197) == 1)
            {
              sub_1ADDCEDE0(v356, &unk_1EB5B9E70, &unk_1AE240EC0);
              sub_1ADE0DC8C(v212, type metadata accessor for Replica);
              goto LABEL_79;
            }

            v249 = v200 + v198;
            v250 = v331;
            sub_1ADDDE4D8(v249, v331, type metadata accessor for Replica);
            if (*(v212 + *(v197 + 20)) != *(v250 + *(v197 + 20)))
            {
              sub_1ADE0DC8C(v250, type metadata accessor for Replica);
              sub_1ADDCEDE0(v356, &unk_1EB5B9E70, &unk_1AE240EC0);
              sub_1ADE0DC8C(v212, type metadata accessor for Replica);
              v213 = v200;
              v214 = &unk_1EB5B9E70;
              v215 = &unk_1AE240EC0;
              goto LABEL_80;
            }

            v251 = sub_1AE23BF8C();
            v252 = v250;
            v253 = v251;
            sub_1ADE0DC8C(v252, type metadata accessor for Replica);
            sub_1ADDCEDE0(v356, &unk_1EB5B9E70, &unk_1AE240EC0);
            sub_1ADE0DC8C(v212, type metadata accessor for Replica);
            sub_1ADDCEDE0(v200, &unk_1EB5B9E70, &unk_1AE240EC0);
            if (v253)
            {
LABEL_74:
              v203 = v333;
              sub_1ADDDE338(v362, v333, type metadata accessor for Replica);
              swift_beginAccess();
              v204 = sub_1ADDE3EF8(v403, v203);
              if (*v205)
              {
                v206 = v205;
                v369 = v204;
                v207 = v342;
                sub_1AE23C10C();
                v208 = v350;
                sub_1AE23C0DC();
                (*v340)(v207, v368);
                v209 = *(v341 + 36);
                v210 = sub_1ADE89268(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
                sub_1AE23D46C();
                if (*&v209[v208] != v401[0])
                {
                  v392 = v209;
                  while (1)
                  {
                    v312 = sub_1AE23D51C();
                    v314 = *v313;
                    v315 = *(v313 + 8);
                    v312(v401, 0);
                    sub_1AE23D47C();
                    v316 = sub_1ADDE22AC(v314, v315);
                    if (v316 != v317)
                    {
                      break;
                    }

LABEL_150:
                    sub_1ADDE2B98(v316, v317);
                    v208 = v350;
                    sub_1AE23D46C();
                    if (*&v392[v208] == v401[0])
                    {
                      goto LABEL_76;
                    }
                  }

                  if (v317 < v316)
                  {
                    goto LABEL_188;
                  }

                  v318 = v316;
                  v393 = v317;
                  v394 = v316;
                  if (v316 >= v317)
                  {
                    goto LABEL_189;
                  }

                  while ((v316 & 0x8000000000000000) == 0)
                  {
                    if (v318 >= *(*v206 + 16))
                    {
                      goto LABEL_179;
                    }

                    v319 = v210;
                    v320 = (*(v398 + 80) + 32) & ~*(v398 + 80);
                    v321 = *(v398 + 72) * v318;
                    v322 = v385;
                    sub_1ADDCEE40(*v206 + v320 + v321, v385, &qword_1EB5BA148, &qword_1AE241B60);
                    sub_1ADDD2198(v322 + *(v399 + 36), v160, &qword_1EB5BA450, &unk_1AE25B3B0);
                    if ((*v397)(v160, 1, v400) == 1)
                    {
                      sub_1ADDCEDE0(v160, &qword_1EB5BA450, &unk_1AE25B3B0);
                      (*v396)(v161, 1, 1, v400);
                    }

                    else
                    {
                      v323 = v160;
                      v324 = v374;
                      sub_1ADDDE4D8(v323, v374, type metadata accessor for RetainedMapRun);
                      sub_1ADDCEE40(v324, v161, &qword_1EB5BA460, &qword_1AE251020);
                      v325 = *(v324 + *(v400 + 20));
                      sub_1ADE0DC8C(v324, type metadata accessor for RetainedMapRun);
                      if (__OFADD__(v325, 1))
                      {
                        goto LABEL_182;
                      }

                      *(v161 + *(v400 + 20)) = v325 + 1;
                      (*v396)(v161, 0, 1);
                      v160 = v377;
                    }

                    v326 = *v206;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *v206 = v326;
                    v210 = v319;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v326 = sub_1ADF799F0(v326);
                      *v206 = v326;
                    }

                    if (v318 >= v326[2])
                    {
                      goto LABEL_180;
                    }

                    ++v318;
                    v328 = v326 + v320 + *(v399 + 36) + v321;
                    v161 = v386;
                    sub_1ADDE4820(v386, v328);
                    v317 = v393;
                    v316 = v394;
                    if (v393 == v318)
                    {
                      goto LABEL_150;
                    }
                  }

                  goto LABEL_178;
                }

LABEL_76:
                sub_1ADDCEDE0(v208, &qword_1EB5BA440, &unk_1AE24CCB0);
                (v369)(v403, 0);
                swift_endAccess();
                v211 = v333;
              }

              else
              {
                (v204)(v403, 0);
                swift_endAccess();
                v211 = v203;
              }

              sub_1ADE0DC8C(v211, type metadata accessor for Replica);
              goto LABEL_50;
            }

LABEL_81:
            v216 = v336;
            sub_1ADDDE338(v362, v336, type metadata accessor for Replica);
            v217 = v348;
            (v393)(v216, 0, 1, v348);
            v218 = *(v349 + 48);
            v219 = v337;
            sub_1ADDCEE40(v338, v337, &unk_1EB5B9E70, &unk_1AE240EC0);
            sub_1ADDCEE40(v216, v219 + v218, &unk_1EB5B9E70, &unk_1AE240EC0);
            v220 = v394;
            if ((v394)(v219, 1, v217) == 1)
            {
              sub_1ADDCEDE0(v216, &unk_1EB5B9E70, &unk_1AE240EC0);
              v221 = (v220)(v219 + v218, 1, v217);
              v222 = v382;
              v223 = v368;
              if (v221 == 1)
              {
                sub_1ADDCEDE0(v219, &unk_1EB5B9E70, &unk_1AE240EC0);
                v224 = v362;
                goto LABEL_84;
              }

LABEL_92:
              v236 = v219;
              v237 = &qword_1EB5BA448;
              v238 = &qword_1AE242528;
LABEL_93:
              sub_1ADDCEDE0(v236, v237, v238);
              v224 = v362;
              goto LABEL_94;
            }

            v235 = v332;
            sub_1ADDCEE40(v219, v332, &unk_1EB5B9E70, &unk_1AE240EC0);
            if ((v220)(v219 + v218, 1, v217) == 1)
            {
              sub_1ADDCEDE0(v216, &unk_1EB5B9E70, &unk_1AE240EC0);
              sub_1ADE0DC8C(v235, type metadata accessor for Replica);
              v222 = v382;
              v223 = v368;
              goto LABEL_92;
            }

            v284 = v330;
            sub_1ADDDE4D8(v219 + v218, v330, type metadata accessor for Replica);
            v222 = v382;
            v223 = v368;
            if (*(v235 + *(v217 + 20)) != *(v284 + *(v217 + 20)))
            {
              sub_1ADE0DC8C(v284, type metadata accessor for Replica);
              sub_1ADDCEDE0(v216, &unk_1EB5B9E70, &unk_1AE240EC0);
              sub_1ADE0DC8C(v235, type metadata accessor for Replica);
              v236 = v219;
              v237 = &unk_1EB5B9E70;
              v238 = &unk_1AE240EC0;
              goto LABEL_93;
            }

            v285 = sub_1AE23BF8C();
            sub_1ADE0DC8C(v284, type metadata accessor for Replica);
            sub_1ADDCEDE0(v216, &unk_1EB5B9E70, &unk_1AE240EC0);
            sub_1ADE0DC8C(v235, type metadata accessor for Replica);
            sub_1ADDCEDE0(v219, &unk_1EB5B9E70, &unk_1AE240EC0);
            v224 = v362;
            if ((v285 & 1) == 0)
            {
LABEL_94:
              swift_beginAccess();
              v239 = swift_isUniquelyReferenced_nonNull_native();
              v403[0] = *(v222 + 32);
              v240 = v403[0];
              *(v222 + 32) = 0x8000000000000000;
              v242 = sub_1ADDD8A6C(v224);
              v243 = v240[2];
              v244 = (v241 & 1) == 0;
              v245 = v243 + v244;
              if (__OFADD__(v243, v244))
              {
                goto LABEL_190;
              }

              v246 = v241;
              if (v240[3] >= v245)
              {
                if (v239)
                {
                  *(v222 + 32) = v240;
                  if ((v241 & 1) == 0)
                  {
                    goto LABEL_104;
                  }
                }

                else
                {
                  sub_1ADF6E86C();
                  v240 = v403[0];
                  *(v222 + 32) = v403[0];
                  if ((v246 & 1) == 0)
                  {
                    goto LABEL_104;
                  }
                }
              }

              else
              {
                sub_1ADDE4890(v245, v239);
                v240 = v403[0];
                v247 = sub_1ADDD8A6C(v362);
                if ((v246 & 1) != (v248 & 1))
                {
                  goto LABEL_192;
                }

                v242 = v247;
                *(v222 + 32) = v240;
                if (v246)
                {
                  goto LABEL_105;
                }

LABEL_104:
                v403[0] = MEMORY[0x1E69E7CC0];
                v404 = 0;
                swift_unknownObjectWeakInit();
                v404 = 0;
                swift_unknownObjectWeakAssign();
                v254 = v370;
                sub_1ADDDE338(v362, v370, type metadata accessor for Replica);
                sub_1ADDE21EC(v242, v254, v403, v240);
              }

LABEL_105:
              v255 = v240[7];
              v256 = v342;
              sub_1AE23C10C();
              v257 = v365;
              sub_1AE23C0DC();
              (*v340)(v256, v223);
              v258 = *(v341 + 36);
              sub_1ADE89268(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
              v259 = v257;
              sub_1AE23D46C();
              v260 = *(v258 + v257) == v403[0];
              v261 = v390;
              if (!v260)
              {
                v369 = v258;
                v394 = (v255 + 24 * v242);
                while (1)
                {
                  v262 = sub_1AE23D51C();
                  v264 = *v263;
                  v265 = v263[1];
                  v262(v403, 0);
                  sub_1AE23D47C();
                  v266 = v264;
                  v267 = v394;
                  v268 = sub_1ADDE22AC(v266, v265);
                  v270 = v395;
                  if (v268 != v269)
                  {
                    break;
                  }

LABEL_107:
                  sub_1ADDE2B98(v268, v269);
                  v259 = v365;
                  sub_1AE23D46C();
                  if (*(v369 + v259) == v403[0])
                  {
                    goto LABEL_49;
                  }
                }

                if (v269 < v268)
                {
                  goto LABEL_184;
                }

                v271 = v268;
                v392 = v269;
                v393 = v268;
                if (v268 >= v269)
                {
                  goto LABEL_185;
                }

                while ((v268 & 0x8000000000000000) == 0)
                {
                  if (v271 >= *(*v267 + 16))
                  {
                    goto LABEL_171;
                  }

                  v272 = v159;
                  v273 = (*(v398 + 80) + 32) & ~*(v398 + 80);
                  v274 = *(v398 + 72) * v271;
                  v275 = v391;
                  sub_1ADDCEE40(*v267 + v273 + v274, v391, &qword_1EB5BA148, &qword_1AE241B60);
                  v276 = v400;
                  sub_1ADDD2198(v275 + *(v399 + 36), v261, &qword_1EB5BA450, &unk_1AE25B3B0);
                  if ((*v397)(v261, 1, v276) == 1)
                  {
                    sub_1ADDCEDE0(v261, &qword_1EB5BA450, &unk_1AE25B3B0);
                    v277 = type metadata accessor for FinalizedTimestamp(0);
                    (*(*(v277 - 8) + 56))(v270, 1, 1, v277);
                    *(v270 + *(v400 + 20)) = 1;
                    (*v396)(v270, 0, 1);
                    v159 = v272;
                  }

                  else
                  {
                    v278 = v261;
                    v279 = v388;
                    sub_1ADDDE4D8(v278, v388, type metadata accessor for RetainedMapRun);
                    sub_1ADDCEE40(v279, v270, &qword_1EB5BA460, &qword_1AE251020);
                    v280 = *(v279 + *(v400 + 20));
                    sub_1ADE0DC8C(v279, type metadata accessor for RetainedMapRun);
                    if (__OFADD__(v280, 1))
                    {
                      goto LABEL_174;
                    }

                    *(v270 + *(v400 + 20)) = v280 + 1;
                    (*v396)(v270, 0, 1);
                    v261 = v390;
                    v159 = v389;
                  }

                  v267 = v394;
                  v281 = *v394;
                  v282 = swift_isUniquelyReferenced_nonNull_native();
                  *v267 = v281;
                  if ((v282 & 1) == 0)
                  {
                    v281 = sub_1ADF799F0(v281);
                    *v267 = v281;
                  }

                  if (v271 >= v281[2])
                  {
                    goto LABEL_172;
                  }

                  ++v271;
                  v283 = v281 + v273 + *(v399 + 36) + v274;
                  v270 = v395;
                  sub_1ADDE4820(v395, v283);
                  v269 = v392;
                  v268 = v393;
                  if (v392 == v271)
                  {
                    goto LABEL_107;
                  }
                }

                __break(1u);
LABEL_171:
                __break(1u);
LABEL_172:
                __break(1u);
                break;
              }

LABEL_49:
              sub_1ADDCEDE0(v259, &qword_1EB5BA440, &unk_1AE24CCB0);
              swift_endAccess();
              v160 = v377;
              v161 = v386;
LABEL_50:
              v163 = v359;
              v162 = v362;
              v121 = v345;
LABEL_51:
              v164 = *v378;
              v165 = v163;
              v54 = v384;
              (*v378)(v165, v384);
              v164(v366, v54);
              sub_1ADE0DC8C(v162, type metadata accessor for Replica);
              v157 = v367;
              v158 = v364;
              goto LABEL_52;
            }

LABEL_84:
            swift_beginAccess();
            v225 = swift_isUniquelyReferenced_nonNull_native();
            v403[0] = *(v222 + 32);
            v226 = v403[0];
            *(v222 + 32) = 0x8000000000000000;
            v228 = sub_1ADDD8A6C(v224);
            v229 = v226[2];
            v230 = (v227 & 1) == 0;
            v231 = v229 + v230;
            if (__OFADD__(v229, v230))
            {
              goto LABEL_191;
            }

            v232 = v227;
            if (v226[3] >= v231)
            {
              if (v225)
              {
                *(v222 + 32) = v226;
                if (v227)
                {
                  goto LABEL_132;
                }
              }

              else
              {
                sub_1ADF6E86C();
                v226 = v403[0];
                *(v222 + 32) = v403[0];
                if (v232)
                {
                  goto LABEL_132;
                }
              }
            }

            else
            {
              sub_1ADDE4890(v231, v225);
              v226 = v403[0];
              v233 = sub_1ADDD8A6C(v362);
              if ((v232 & 1) != (v234 & 1))
              {
                goto LABEL_192;
              }

              v228 = v233;
              *(v222 + 32) = v226;
              if (v232)
              {
LABEL_132:
                v287 = v226[7];
                v288 = v342;
                sub_1AE23C10C();
                v289 = v351;
                sub_1AE23C0DC();
                (*v340)(v288, v223);
                v290 = *(v341 + 36);
                v291 = sub_1ADE89268(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
                v259 = v289;
                sub_1AE23D46C();
                v260 = *&v290[v289] == v403[0];
                v292 = v380;
                if (!v260)
                {
                  v293 = v287 + 24 * v228;
                  v393 = v290;
                  v394 = v291;
                  while (1)
                  {
                    v294 = sub_1AE23D51C();
                    v296 = *v295;
                    v297 = *(v295 + 8);
                    v294(v403, 0);
                    sub_1AE23D47C();
                    v298 = sub_1ADDE22AC(v296, v297);
                    v300 = v298;
                    v301 = v299;
                    if (v298 != v299)
                    {
                      break;
                    }

LABEL_134:
                    sub_1ADDE2B98(v300, v301);
                    v259 = v351;
                    sub_1AE23D46C();
                    if (*&v393[v259] == v403[0])
                    {
                      goto LABEL_49;
                    }
                  }

                  if (v299 < v298)
                  {
                    goto LABEL_186;
                  }

                  v302 = v298;
                  if (v298 >= v299)
                  {
                    goto LABEL_187;
                  }

                  while ((v300 & 0x8000000000000000) == 0)
                  {
                    if (v302 >= *(*v293 + 16))
                    {
                      goto LABEL_176;
                    }

                    v303 = (*(v398 + 80) + 32) & ~*(v398 + 80);
                    v304 = *(v398 + 72) * v302;
                    v305 = v387;
                    sub_1ADDCEE40(*v293 + v303 + v304, v387, &qword_1EB5BA148, &qword_1AE241B60);
                    sub_1ADDD2198(v305 + *(v399 + 36), v292, &qword_1EB5BA450, &unk_1AE25B3B0);
                    if ((*v397)(v292, 1, v400) == 1)
                    {
                      sub_1ADDCEDE0(v292, &qword_1EB5BA450, &unk_1AE25B3B0);
                      v306 = type metadata accessor for FinalizedTimestamp(0);
                      (*(*(v306 - 8) + 56))(v159, 1, 1, v306);
                      *(v159 + *(v400 + 20)) = 2;
                      (*v396)(v159, 0, 1);
                    }

                    else
                    {
                      v307 = v292;
                      v308 = v379;
                      sub_1ADDDE4D8(v307, v379, type metadata accessor for RetainedMapRun);
                      sub_1ADDCEE40(v308, v159, &qword_1EB5BA460, &qword_1AE251020);
                      v309 = *(v308 + *(v400 + 20));
                      sub_1ADE0DC8C(v308, type metadata accessor for RetainedMapRun);
                      if (__OFADD__(v309, 1))
                      {
                        goto LABEL_181;
                      }

                      *(v159 + *(v400 + 20)) = v309 + 1;
                      (*v396)(v159, 0, 1);
                      v292 = v380;
                    }

                    v310 = *v293;
                    v311 = swift_isUniquelyReferenced_nonNull_native();
                    *v293 = v310;
                    if ((v311 & 1) == 0)
                    {
                      v310 = sub_1ADF799F0(v310);
                      *v293 = v310;
                    }

                    if (v302 >= v310[2])
                    {
                      goto LABEL_177;
                    }

                    ++v302;
                    sub_1ADDE4820(v159, v310 + v303 + *(v399 + 36) + v304);
                    if (v301 == v302)
                    {
                      goto LABEL_134;
                    }
                  }

                  goto LABEL_175;
                }

                goto LABEL_49;
              }
            }

            v403[0] = MEMORY[0x1E69E7CC0];
            v404 = 0;
            swift_unknownObjectWeakInit();
            v404 = 0;
            swift_unknownObjectWeakAssign();
            v286 = v370;
            sub_1ADDDE338(v362, v370, type metadata accessor for Replica);
            sub_1ADDE21EC(v228, v286, v403, v226);
            goto LABEL_132;
          }

          v195 = v356;
          v196 = v384;
        }

        else
        {
          v186 = *v376;
          v196 = v384;
          v195 = v356;
        }

        v163 = v359;
        v186(v359, v366, v196);
        if ((sub_1AE23C0AC() & 1) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_51;
      }

      v124 = *(v121 + 48);
      sub_1ADDDE4D8(v109, v89, type metadata accessor for Replica);
      (*v383)(v396, v109 + v124, v54);
      if (*(v381 + 16) && (v125 = sub_1ADDD8A6C(v89), (v126 & 1) != 0))
      {
        v127 = *(v373 + 16);
        v128 = v364;
        v129 = v384;
        v127(v364, *(v381 + 56) + *(v373 + 72) * v125, v384);
        v130 = v363;
        sub_1ADDDE338(v89, v363, type metadata accessor for Replica);
        swift_beginAccess();
        v131 = sub_1ADDE3EF8(v403, v130);
        v100 = v369;
        if (*v132)
        {
          v133 = v396;
          v357 = v131;
          v127(v361, v396, v129);
          v127(v355, v133, v129);
          v127(v352, v128, v129);
          sub_1ADE89268(&qword_1ED96A278, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
          v134 = v354;
          sub_1AE23D8AC();
          v135 = v375;
          sub_1AE23D88C();
          v136 = *v378;
          (*v378)(v134, v129);
          sub_1AE220F80();
          (v357)(v403, 0);
          swift_endAccess();
          v136(v135, v129);
          sub_1ADE0DC8C(v363, type metadata accessor for Replica);
          v136(v364, v129);
        }

        else
        {
          (v131)(v403, 0);
          swift_endAccess();
          sub_1ADE0DC8C(v130, type metadata accessor for Replica);
          (*v378)(v128, v129);
        }

        v89 = v392;
      }

      else
      {
        v137 = v367;
        sub_1ADDDE338(v89, v367, type metadata accessor for Replica);
        swift_beginAccess();
        v138 = sub_1ADDE3EF8(v403, v137);
        v100 = v369;
        if (*v139)
        {
          sub_1AE220F80();
        }

        (v138)(v403, 0);
        swift_endAccess();
        sub_1ADE0DC8C(v137, type metadata accessor for Replica);
      }

      v140 = v382;
      swift_beginAccess();
      v141 = *(v140 + 32);
      if (!*(v141 + 16) || (v142 = sub_1ADDD8A6C(v89), (v143 & 1) == 0))
      {
        memset(v401, 0, sizeof(v401));
LABEL_5:
        sub_1ADDCEDE0(v401, &qword_1EB5BA468, &unk_1AE259210);
        swift_endAccess();
        goto LABEL_6;
      }

      sub_1ADDE56CC(*(v141 + 56) + 24 * v142, v401);
      if (!v401[0])
      {
        goto LABEL_5;
      }

      sub_1ADDE56CC(v401, &v402);
      sub_1ADDCEDE0(v401, &qword_1EB5BA468, &unk_1AE259210);
      swift_endAccess();
      v144 = *(v402 + 16);
      v54 = v384;
      if (!v144)
      {
        sub_1ADDE5C20(&v402);
LABEL_38:
        v148 = v382;
        swift_beginAccess();
        v149 = sub_1ADDD8A6C(v89);
        if (v150)
        {
          v151 = v149;
          v152 = swift_isUniquelyReferenced_nonNull_native();
          v153 = *(v148 + 32);
          v402 = v153;
          *(v148 + 32) = 0x8000000000000000;
          if (!v152)
          {
            sub_1ADF6E86C();
            v153 = v402;
          }

          sub_1ADE0DC8C(*(v153 + 48) + v372[9] * v151, type metadata accessor for Replica);
          sub_1ADDE5634(*(v153 + 56) + 24 * v151, v403);
          sub_1ADF6CF18(v151, v153);
          *(v148 + 32) = v153;
        }

        else
        {
          v403[0] = 0;
          v403[1] = 0;
          v404 = 0;
        }

        swift_endAccess();
        sub_1ADDCEDE0(v403, &qword_1EB5BA468, &unk_1AE259210);
LABEL_6:
        v54 = v384;
        (*v378)(v396, v384);
        goto LABEL_7;
      }

      if (v144 != 1)
      {
        sub_1ADDE5C20(&v402);
        goto LABEL_43;
      }

      v145 = v346;
      sub_1ADDCEE40(v402 + ((*(v398 + 80) + 32) & ~*(v398 + 80)), v346, &qword_1EB5BA148, &qword_1AE241B60);
      v146 = v347;
      sub_1ADDD2198(v145 + *(v399 + 36), v347, &qword_1EB5BA450, &unk_1AE25B3B0);
      LODWORD(v145) = (*v397)(v146, 1, v400);
      sub_1ADDCEDE0(v146, &qword_1EB5BA450, &unk_1AE25B3B0);
      sub_1ADDE5C20(&v402);
      if (v145 == 1)
      {
        goto LABEL_38;
      }

LABEL_43:
      (*v378)(v396, v54);
LABEL_7:
      sub_1ADE0DC8C(v89, type metadata accessor for Replica);
      goto LABEL_8;
    }
  }

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
  sub_1AE23E27C();
  __break(1u);
}

void sub_1ADE78C04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  *&v47 = a1;
  *(&v47 + 1) = a2;
  swift_beginAccess();
  v12 = *(a3 + 16);
  v13 = *(a3 + 24);
  v14 = *(a3 + 32);

  sub_1ADDF8898(v12, v13, v14);

  v15 = *(&v47 + 1);
  if (!*(*(&v47 + 1) + 16))
  {
    v28 = *(a3 + 24);
    v29 = *(a3 + 32);
    *a5 = *(a3 + 16);
    *(a5 + 8) = v28;
    v30 = v47;
    *(a5 + 16) = v29;
    *(a5 + 24) = v30;
    *(a5 + 32) = v15;

    return;
  }

  v43 = a5;
  v48 = v6;
  v16 = a4 + OBJC_IVAR___CRContext_crdtDatabase;
  v17 = *(a4 + OBJC_IVAR___CRContext_crdtDatabase + 8);
  ObjectType = swift_getObjectType();
  v19 = a4;
  v20 = *(v17 + 8);
  swift_unknownObjectRetain();
  v21 = v20(ObjectType, v17);
  swift_unknownObjectRelease();
  if ((v21 & 1) == 0)
  {
    v31 = *(v16 + 8);
    v32 = swift_getObjectType();
    MEMORY[0x1EEE9AC00](v32);
    v39 = a3;
    v40 = a1;
    v41 = a2;
    v42 = v19;
    v33 = *(v31 + 24);
    swift_unknownObjectRetain();
    v33(&v44, sub_1ADE89240, v38, &type metadata for Renames, v32, v31);
    swift_unknownObjectRelease();
    v34 = v44;
    LOBYTE(v33) = v45;
    v35 = v46;
    sub_1ADDF8898(v44, v45, v46);
    v36 = v43;
    *v43 = v34;
    *(v36 + 8) = v33;
    v36[2] = v35;
    *(v36 + 3) = v47;
    return;
  }

  sub_1AE23BF2C();
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v22 > -9.22337204e18)
  {
    if (v22 < 9.22337204e18)
    {
      v23 = v22;
      v44 = *(a3 + 32);
      v24 = *(v16 + 8);
      v25 = swift_getObjectType();
      MEMORY[0x1EEE9AC00](v25);
      v38[0] = v19;
      v38[1] = &v47;
      v39 = &v44;
      v40 = a3;
      v41 = v23;
      v26 = *(v24 + 24);

      swift_unknownObjectRetain();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
      v26(sub_1ADE8924C, &v37, v27, v25, v24);
      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

unint64_t sub_1ADE78F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v63 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v74 = &v63 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
  v72 = *(v19 - 8);
  v73 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v63 - v20;
  v21 = *(a3 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v63 = a2;
    v64 = a4;
    v65 = a1;
    v66 = a5;
    v91 = MEMORY[0x1E69E7CC0];
    sub_1ADE6F3DC(0, v21, 0);
    v22 = v91;
    v23 = a3 + 64;
    result = sub_1AE23D8EC();
    v25 = result;
    v26 = 0;
    v27 = *(a3 + 36);
    v67 = a3 + 72;
    v68 = v21;
    v70 = a3 + 64;
    v69 = v27;
    v71 = a3;
    while ((v25 & 0x8000000000000000) == 0 && v25 < 1 << *(a3 + 32))
    {
      if ((*(v23 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
      {
        goto LABEL_23;
      }

      if (v27 != *(a3 + 36))
      {
        goto LABEL_24;
      }

      v81 = 1 << v25;
      v82 = v25 >> 6;
      v80 = v26;
      v30 = v79;
      v31 = *(v79 + 48);
      v32 = *(a3 + 48);
      v33 = v32 + *(*(type metadata accessor for Replica(0) - 8) + 72) * v25;
      v84 = type metadata accessor for Replica;
      v34 = v74;
      sub_1ADDDE338(v33, v74, type metadata accessor for Replica);
      v35 = *(a3 + 56);
      v36 = sub_1AE23C12C();
      v37 = *(v36 - 8);
      v89 = v22;
      v38 = v37;
      v39 = v35 + *(v37 + 72) * v25;
      v88 = v25;
      v40 = *(v37 + 16);
      v40(v34 + v31, v39, v36);
      v86 = type metadata accessor for Replica;
      v41 = v75;
      sub_1ADDDE4D8(v34, v75, type metadata accessor for Replica);
      v42 = *(v30 + 48);
      v87 = *(v38 + 32);
      v87(v41 + v42, v34 + v31, v36);
      v83 = *(v73 + 48);
      v85 = *(v73 + 64);
      v43 = v76;
      v44 = v90;
      sub_1ADDDE338(v41, v76, v84);
      v40(v43 + *(v30 + 48), v41 + v42, v36);
      v45 = type metadata accessor for Timestamp(0);
      (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
      v46 = v77;
      sub_1ADDCEE40(v43, v77, &qword_1EB5BA2A0, &unk_1AE242200);
      v84 = *(v30 + 48);
      sub_1ADDDE4D8(v46, v44 + v83, v86);
      v47 = v78;
      sub_1ADDD2198(v43, v78, &qword_1EB5BA2A0, &unk_1AE242200);
      v87(v44 + v85, v47 + *(v30 + 48), v36);
      sub_1ADE0DC8C(v47, type metadata accessor for Replica);
      (*(v38 + 8))(v84 + v46, v36);
      v22 = v89;
      sub_1ADDCEDE0(v41, &qword_1EB5BA2A0, &unk_1AE242200);
      v91 = v22;
      v49 = *(v22 + 16);
      v48 = *(v22 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1ADE6F3DC((v48 > 1), v49 + 1, 1);
        v22 = v91;
      }

      *(v22 + 16) = v49 + 1;
      sub_1ADDD2198(v90, v22 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v49, &qword_1EB5BA168, &unk_1AE25B3D0);
      a3 = v71;
      v28 = 1 << *(v71 + 32);
      result = v88;
      if (v88 >= v28)
      {
        goto LABEL_25;
      }

      v23 = v70;
      v50 = *(v70 + 8 * v82);
      if ((v50 & v81) == 0)
      {
        goto LABEL_26;
      }

      LODWORD(v27) = v69;
      if (v69 != *(v71 + 36))
      {
        goto LABEL_27;
      }

      v51 = v50 & (-2 << (v88 & 0x3F));
      if (v51)
      {
        v28 = __clz(__rbit64(v51)) | v88 & 0x7FFFFFFFFFFFFFC0;
        v29 = v68;
      }

      else
      {
        v52 = v82 << 6;
        v53 = v82 + 1;
        v54 = (v67 + 8 * v82);
        v29 = v68;
        while (v53 < (v28 + 63) >> 6)
        {
          v56 = *v54++;
          v55 = v56;
          v52 += 64;
          ++v53;
          if (v56)
          {
            result = sub_1ADDFFBC8(v88, v69, 0);
            v28 = __clz(__rbit64(v55)) + v52;
            goto LABEL_4;
          }
        }

        result = sub_1ADDFFBC8(v88, v69, 0);
      }

LABEL_4:
      v26 = v80 + 1;
      v25 = v28;
      if (v80 + 1 == v29)
      {
        a5 = v66;
        a4 = v64;
        a2 = v63;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    sub_1ADE79634(v22, 0, 1, a4, a2, a3);
    v58 = v57;
    v60 = v59;
    v62 = v61;

    *a5 = v58;
    *(a5 + 8) = v60 & 1;
    *(a5 + 16) = v62;
  }

  return result;
}

void sub_1ADE79634(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v197 = a4;
  v230 = a3;
  v227 = a2;
  v217 = a1;
  v226 = type metadata accessor for Timestamp(0);
  v198 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226);
  v214 = &v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v229 = &v190 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA480, &qword_1AE25AAE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v219 = &v190 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v225 = &v190 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v234 = &v190 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v231 = &v190 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v208 = &v190 - v21;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v204 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v23 = &v190 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA488, &unk_1AE25B3C0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v240 = &v190 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v210 = &v190 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v213 = &v190 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v199 = &v190 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v224 = &v190 - v33;
  v218 = type metadata accessor for FinalizedTimestamp(0);
  v202 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v195 = &v190 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v193 = &v190 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v192 = &v190 - v38;
  v239 = sub_1AE23BFFC();
  v223 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v233 = (&v190 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA490, &qword_1AE2514C0);
  MEMORY[0x1EEE9AC00](v194);
  v41 = &v190 - v40;
  v42 = sub_1AE23C12C();
  v201 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v241 = (&v190 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v190 - v45;
  v236 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v236);
  v238 = &v190 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v237 = &v190 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v212 = &v190 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v211 = &v190 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v56 = (&v190 - v55);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA498, &qword_1AE242538);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v232 = &v190 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v228 = &v190 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v200 = &v190 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v190 - v64;
  v252 = a5;
  v253 = a6;
  v66 = a6;
  v235 = v6;
  if (a5)
  {
    swift_beginAccess();
    v222 = *(v6 + 16);
    LODWORD(v221) = *(v6 + 24);
    v67 = *(v6 + 32);
    sub_1ADE42C78(a5, v66);

    sub_1ADDF8898(v222, v221, v67);
  }

  else
  {
    sub_1ADE42C78(0, a6);
  }

  v251 = 0;
  v250 = MEMORY[0x1E69E7CC8];
  sub_1AE23BF2C();
  v69 = v68;
  v70 = v231;
  v71 = v232;
  v72 = v200;
  if ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  if (v68 <= -9.22337204e18)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (v68 >= 9.22337204e18)
  {
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
    return;
  }

  v242 = v42;
  if (v230)
  {
    goto LABEL_51;
  }

  v221 = v56;
  v196 = v23;
  v73 = 0;
  v222 = (v201 + 32);
  v74 = *(v217 + 16);
  v216 = (v201 + 8);
  v215 = (v223 + 1);
  v206 = (v204 + 56);
  v205 = (v204 + 48);
  v209 = (v202 + 48);
  v223 = (v202 + 56);
  v220 = v74;
  v75 = v74 == 0;
  if (!v74)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v75)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
  v78 = v72;
  v79 = *(v77 - 8);
  sub_1ADDCEE40(v217 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v73, v78, &qword_1EB5BA168, &unk_1AE25B3D0);
  v80 = __OFADD__(v73++, 1);
  if (v80)
  {
    goto LABEL_101;
  }

  (*(v79 + 56))(v78, 0, 1, v77);
  v72 = v78;
  v42 = v242;
LABEL_13:
  sub_1ADDD2198(v72, v65, &qword_1EB5BA498, &qword_1AE242538);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
  if ((*(*(v81 - 8) + 48))(v65, 1, v81) != 1)
  {
    v82 = *(v81 + 48);
    v83 = *(v81 + 64);
    v84 = v221;
    sub_1ADDDE4D8(&v65[v82], v221, type metadata accessor for Replica);
    (*v222)(v46, &v65[v83], v42);
    if (!*(v84 + *(v236 + 20)))
    {
      (*v216)(v46, v42);
      sub_1ADE0DC8C(v84, type metadata accessor for Replica);
      sub_1ADDCEDE0(v65, &qword_1EB5BA480, &qword_1AE25AAE0);
      goto LABEL_16;
    }

    v191 = v46;
    sub_1AE23C01C();
    sub_1ADE89268(&qword_1ED967148, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
    while (1)
    {
      v87 = v233;
      v42 = v242;
      sub_1AE23D46C();
      sub_1ADE89268(&qword_1ED967158, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
      v88 = v239;
      v89 = sub_1AE23CCBC();
      (*v215)(v87, v88);
      v90 = v240;
      if (v89)
      {
        sub_1ADDCEDE0(v41, &qword_1EB5BA490, &qword_1AE2514C0);
        v46 = v191;
        (*v216)(v191, v42);
        sub_1ADE0DC8C(v84, type metadata accessor for Replica);
        sub_1ADDCEDE0(v65, &qword_1EB5BA480, &qword_1AE25AAE0);
        v70 = v231;
        v72 = v200;
LABEL_16:
        v74 = v220;
        v75 = v73 >= v220;
        if (v73 == v220)
        {
LABEL_9:
          v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
          (*(*(v76 - 8) + 56))(v72, 1, 1, v76);
          v73 = v74;
          goto LABEL_13;
        }

        goto LABEL_10;
      }

      v91 = sub_1AE23D51C();
      v93 = *v92;
      v91(&v243, 0);
      sub_1AE23D47C();
      v94 = v235;
      swift_beginAccess();
      v95 = *(v94 + 32);
      if (!*(v95 + 16) || (v96 = sub_1ADDD8A6C(v84), (v97 & 1) == 0))
      {
        memset(v249, 0, sizeof(v249));
        v85 = v218;
LABEL_20:
        sub_1ADDCEDE0(v249, &qword_1EB5BA468, &unk_1AE259210);
        swift_endAccess();
        v86 = v224;
        (*v223)(v224, 1, 1, v85);
        goto LABEL_21;
      }

      sub_1ADDE56CC(*(v95 + 56) + 24 * v96, v249);
      v85 = v218;
      if (!v249[0])
      {
        goto LABEL_20;
      }

      sub_1ADDE56CC(v249, &v246);
      sub_1ADDCEDE0(v249, &qword_1EB5BA468, &unk_1AE259210);
      swift_endAccess();
      v98 = *(v246 + 16);
      v203 = v93;
      if (v98)
      {
        v99 = v246 + ((*(v204 + 80) + 32) & ~*(v204 + 80));
        v100 = *(v204 + 72);
        if (v93 >= *(v99 + v100 * (v98 - 1) + 8))
        {
          v102 = 1;
        }

        else
        {
          v101 = sub_1ADDE2A80(v93, 0, v246);
          if (v101 >= v98)
          {
            goto LABEL_105;
          }

          sub_1ADDCEE40(v99 + v101 * v100, v210, &qword_1EB5BA148, &qword_1AE241B60);
          v102 = 0;
        }

        v103 = v207;
        v90 = v240;
      }

      else
      {
        v102 = 1;
        v103 = v207;
      }

      v104 = v210;
      (*v206)(v210, v102, 1, v103);
      sub_1ADDD2198(v104, v90, &qword_1EB5BA488, &unk_1AE25B3C0);
      v105 = (*v205)(v90, 1, v103) == 1;
      v106 = v208;
      v107 = v90;
      if (v105)
      {
        sub_1ADDCEDE0(v90, &qword_1EB5BA488, &unk_1AE25B3C0);
        v108 = v218;
      }

      else
      {
        v109 = v196;
        sub_1ADDD2198(v107, v196, &qword_1EB5BA148, &qword_1AE241B60);
        sub_1ADDCEE40(v109 + *(v103 + 36), v106, &qword_1EB5BA450, &unk_1AE25B3B0);
        v110 = type metadata accessor for RetainedMapRun(0);
        v111 = (*(*(v110 - 8) + 48))(v106, 1, v110);
        if (v111 == 1)
        {
          sub_1ADDCEDE0(v109, &qword_1EB5BA148, &qword_1AE241B60);
          sub_1ADDCEDE0(v106, &qword_1EB5BA450, &unk_1AE25B3B0);
          v112 = v199;
          v108 = v218;
          (*v223)(v199, 1, 1, v218);
        }

        else
        {
          v113 = v199;
          sub_1ADDCEE40(v106, v199, &qword_1EB5BA460, &qword_1AE251020);
          v114 = v106;
          v112 = v113;
          sub_1ADE0DC8C(v114, type metadata accessor for RetainedMapRun);
          v115 = v113;
          v108 = v218;
          if ((*v209)(v115, 1, v218) != 1)
          {
            v119 = v112;
            v120 = v108;
            v121 = v193;
            sub_1ADDDE4D8(v119, v193, type metadata accessor for FinalizedTimestamp);
            v122 = sub_1AE23BFEC();
            (*(*(v122 - 8) + 16))(v224, v121, v122);
            v123 = *(v121 + *(v120 + 20));
            sub_1ADE0DC8C(v121, type metadata accessor for FinalizedTimestamp);
            v80 = __OFADD__(v123, v203);
            v124 = v123 + v203;
            if (v80)
            {
              goto LABEL_107;
            }

            v125 = *v109;
            sub_1ADDCEDE0(v109, &qword_1EB5BA148, &qword_1AE241B60);
            v126 = v124 - v125;
            if (__OFSUB__(v124, v125))
            {
              goto LABEL_108;
            }

            v108 = v218;
            v86 = v224;
            *(v224 + *(v218 + 20)) = v126;
            (*v223)(v86, 0, 1, v108);
            goto LABEL_42;
          }

          sub_1ADDCEDE0(v109, &qword_1EB5BA148, &qword_1AE241B60);
        }

        sub_1ADDCEDE0(v112, &qword_1EB5BA460, &qword_1AE251020);
      }

      v86 = v224;
      (*v223)(v224, 1, 1, v108);
LABEL_42:
      sub_1ADDE5C20(&v246);
      if ((*v209)(v86, 1, v108) == 1)
      {
LABEL_21:
        sub_1ADDCEDE0(v86, &qword_1EB5BA460, &qword_1AE251020);
      }

      else
      {
        v116 = v192;
        sub_1ADDDE4D8(v86, v192, type metadata accessor for FinalizedTimestamp);
        v117 = *(v116 + *(v218 + 20));
        sub_1ADE0DC8C(v116, type metadata accessor for FinalizedTimestamp);
        v118 = v227;
        if (v117 > v227)
        {
          v118 = v117;
        }

        v227 = v118;
      }
    }
  }

  v71 = v232;
LABEL_51:
  v224 = v69;
  v127 = *(v217 + 16);
  v233 = (v197 + OBJC_IVAR___CRContext_crdtDatabase);
  swift_beginAccess();
  v128 = 0;
  v222 = (v201 + 32);
  v240 = (v198 + 48);
  v215 = (v202 + 48);
  v220 = (v198 + 56);
  v216 = (v202 + 56);
  v221 = (v201 + 8);
  v129 = v235;
  v130 = v229;
  v131 = v234;
  v132 = v211;
  v223 = v127;
  while (1)
  {
    if (v128 == v127)
    {
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
      (*(*(v140 - 8) + 56))(v71, 1, 1, v140);
      v141 = v127;
    }

    else
    {
      if (v128 >= v127)
      {
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
      v143 = *(v142 - 8);
      sub_1ADDCEE40(v217 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v128, v71, &qword_1EB5BA168, &unk_1AE25B3D0);
      v80 = __OFADD__(v128, 1);
      v141 = v128 + 1;
      if (v80)
      {
        goto LABEL_99;
      }

      (*(v143 + 56))(v71, 0, 1, v142);
    }

    v144 = v71;
    v145 = v228;
    sub_1ADDD2198(v144, v228, &qword_1EB5BA498, &qword_1AE242538);
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
    if ((*(*(v146 - 8) + 48))(v145, 1, v146) == 1)
    {
      break;
    }

    v239 = v141;
    v147 = *(v146 + 48);
    v148 = *(v146 + 64);
    sub_1ADDD2198(v145, v70, &qword_1EB5BA480, &qword_1AE25AAE0);
    sub_1ADDDE4D8(v145 + v147, v132, type metadata accessor for Replica);
    (*v222)(v241, (v145 + v148), v242);
    v149 = v225;
    sub_1ADDCEE40(v70, v225, &qword_1EB5BA480, &qword_1AE25AAE0);
    v150 = *v240;
    v151 = v226;
    if ((*v240)(v149, 1, v226) == 1)
    {
      sub_1ADDCEDE0(v149, &qword_1EB5BA480, &qword_1AE25AAE0);
      goto LABEL_72;
    }

    sub_1ADDDE4D8(v149, v130, type metadata accessor for Timestamp);
    if (*(v130 + *(v236 + 20)) > 0)
    {
      swift_beginAccess();
      v152 = v250;
      if (*(v250 + 16) && (v153 = sub_1ADDD8A6C(v130), (v154 & 1) != 0))
      {
        sub_1ADDE56CC(*(v152 + 56) + 24 * v153, &v246);
        if (v246)
        {
          sub_1ADDE56CC(&v246, v245);
          sub_1ADDCEDE0(&v246, &qword_1EB5BA468, &unk_1AE259210);
          swift_endAccess();
          v155 = v213;
          sub_1AE221574(*(v130 + *(v151 + 20)), v213);
          v156 = v155;
          sub_1ADDE5C20(v245);
          sub_1ADE0DC8C(v130, type metadata accessor for Timestamp);
          if ((*v215)(v155, 1, v218) != 1)
          {
            v157 = v195;
            sub_1ADDDE4D8(v155, v195, type metadata accessor for FinalizedTimestamp);
            v158 = sub_1AE23BFEC();
            (*(*(v158 - 8) + 16))(v131, v157, v158);
            *(v131 + *(v236 + 20)) = 0;
            v159 = *(v157 + *(v218 + 20));
            sub_1ADE0DC8C(v157, type metadata accessor for FinalizedTimestamp);
            *(v131 + *(v151 + 20)) = v159;
LABEL_78:
            (*v220)(v131, 0, 1, v151);
            goto LABEL_79;
          }

          goto LABEL_70;
        }
      }

      else
      {
        v246 = 0;
        v247 = 0;
        v248 = 0;
      }

      sub_1ADDCEDE0(&v246, &qword_1EB5BA468, &unk_1AE259210);
      swift_endAccess();
      sub_1ADE0DC8C(v130, type metadata accessor for Timestamp);
      v156 = v213;
      (*v216)(v213, 1, 1, v218);
LABEL_70:
      sub_1ADDCEDE0(v156, &qword_1EB5BA460, &qword_1AE251020);
      goto LABEL_72;
    }

    sub_1ADE0DC8C(v130, type metadata accessor for Timestamp);
LABEL_72:
    v160 = v219;
    sub_1ADDCEE40(v70, v219, &qword_1EB5BA480, &qword_1AE25AAE0);
    if (v150(v160, 1, v151) == 1)
    {
      sub_1ADDCEDE0(v160, &qword_1EB5BA480, &qword_1AE25AAE0);
    }

    else
    {
      v161 = v160;
      v162 = v214;
      sub_1ADDDE4D8(v161, v214, type metadata accessor for Timestamp);
      if (*(v162 + *(v236 + 20)) <= 0)
      {
        sub_1ADDDE4D8(v162, v131, type metadata accessor for Timestamp);
        goto LABEL_78;
      }

      sub_1ADE0DC8C(v162, type metadata accessor for Timestamp);
    }

    (*v220)(v131, 1, 1, v151);
LABEL_79:
    swift_beginAccess();
    v163 = *(v129 + 32);
    v164 = v233;
    if (!*(v163 + 16) || (v165 = sub_1ADDD8A6C(v132), (v166 & 1) == 0))
    {
      v246 = 0;
      v247 = 0;
      v248 = 0;
LABEL_90:
      sub_1ADDCEDE0(&v246, &qword_1EB5BA468, &unk_1AE259210);
      swift_endAccess();
      goto LABEL_91;
    }

    sub_1ADDE56CC(*(v163 + 56) + 24 * v165, &v246);
    if (!v246)
    {
      goto LABEL_90;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v168 = v248;
    sub_1ADDCEDE0(&v246, &qword_1EB5BA468, &unk_1AE259210);
    swift_endAccess();
    if (Strong)
    {
      ObjectType = swift_getObjectType();
      v243 = v252;
      v244 = v253;
      v170 = *(v168 + 32);
      v171 = sub_1ADE42C78(v252, v253);
      v172 = v132;
      v173 = v212;
      v170(v172, v234, &v243, ObjectType, v168, v171);
      v174 = v173;
      sub_1ADE42CB8(v243, v244);
      v137 = v241;
      sub_1ADE80CE8(v172, v241, v174, Strong, v168, &v250, v227, v230 & 1, v129, &v251, &v252, &v251 + 1, v224);
      if (Strong == *v233)
      {
        swift_unknownObjectRelease();
        v139 = v174;
        v130 = v229;
        v131 = v234;
        v70 = v231;
        v136 = v211;
      }

      else
      {
        (*(v168 + 40))(ObjectType, v168);
        if (qword_1EB5B9950 != -1)
        {
          swift_once();
        }

        v175 = sub_1AE23C78C();
        __swift_project_value_buffer(v175, qword_1EB5D7548);
        v176 = sub_1AE23C76C();
        v177 = sub_1AE23D63C();
        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          *v178 = 0;
          _os_log_impl(&dword_1ADDCA000, v176, v177, "Using multiple contexts with the same CRDT. This will be inefficient.", v178, 2u);
          MEMORY[0x1B26FDA50](v178, -1, -1);
        }

        swift_unknownObjectRelease();

        v139 = v212;
        v130 = v229;
        v131 = v234;
        v70 = v231;
        v137 = v241;
        v136 = v211;
      }

      goto LABEL_53;
    }

LABEL_91:
    v179 = v164[1];
    v180 = swift_getObjectType();
    v182 = v252;
    v181 = v253;
    v243 = v252;
    v244 = v253;
    v183 = *(v179 + 32);
    swift_unknownObjectRetain();
    v184 = sub_1ADE42C78(v182, v181);
    v131 = v234;
    v183(v132, v234, &v243, v180, v179, v184);
    v129 = v235;
    swift_unknownObjectRelease();
    sub_1ADE42CB8(v243, v244);
    v185 = v238;
    sub_1ADDDE338(v132, v238, type metadata accessor for Replica);
    swift_beginAccess();
    v187 = sub_1ADDE3EF8(&v243, v185);
    if (*v186)
    {
      v186[2] = v164[1];
      swift_unknownObjectWeakAssign();
    }

    (v187)(&v243, 0);
    v70 = v231;
    swift_endAccess();
    sub_1ADE0DC8C(v238, type metadata accessor for Replica);
    v133 = *v164;
    v134 = v164[1];
    swift_unknownObjectRetain();
    v135 = v132;
    v136 = v132;
    v137 = v241;
    v138 = v237;
    sub_1ADE80CE8(v135, v241, v237, v133, v134, &v250, v227, v230 & 1, v129, &v251, &v252, &v251 + 1, v224);
    swift_unknownObjectRelease();
    v139 = v138;
    v130 = v229;
LABEL_53:
    sub_1ADE0DC8C(v139, type metadata accessor for Replica);
    sub_1ADDCEDE0(v131, &qword_1EB5BA480, &qword_1AE25AAE0);
    (*v221)(v137, v242);
    sub_1ADE0DC8C(v136, type metadata accessor for Replica);
    sub_1ADDCEDE0(v70, &qword_1EB5BA480, &qword_1AE25AAE0);
    v132 = v136;
    v71 = v232;
    v127 = v223;
    v128 = v239;
  }

  swift_beginAccess();
  if (v251)
  {
    swift_beginAccess();
    v188 = *(v129 + 16);
    v80 = __OFADD__(v188, 1);
    v189 = v188 + 1;
    if (v80)
    {
      goto LABEL_106;
    }

    *(v129 + 16) = v189;
  }

  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  sub_1ADE42CB8(v252, v253);
}

void sub_1ADE7B700(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v497 = a5;
  v549 = a4;
  v527 = a3;
  v498 = a6;
  v597 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A0, &unk_1AE253DA0);
  MEMORY[0x1EEE9AC00](v597);
  v584 = &v494 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v568 = &v494 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v571 = &v494 - v12;
  v566 = sub_1AE23C12C();
  v525 = *(v566 - 8);
  MEMORY[0x1EEE9AC00](v566);
  v536 = &v494 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v619 = type metadata accessor for FinalizedTimestampRange(0);
  v617 = *(v619 - 8);
  MEMORY[0x1EEE9AC00](v619);
  v602 = &v494 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v596 = &v494 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v618 = &v494 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v589 = &v494 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v585 = &v494 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v601 = &v494 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v590 = &v494 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v587 = &v494 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v611 = &v494 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v505 = &v494 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v518 = &v494 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v598 = &v494 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v567 = &v494 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v586 = &v494 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v593 = &v494 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v551 = &v494 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v570 = &v494 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v580 = &v494 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v553 = &v494 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v572 = &v494 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v581 = &v494 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v599 = &v494 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v530 = &v494 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v504 = &v494 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v557 = &v494 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v510 = &v494 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v528 = &v494 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v523 = &v494 - v68;
  v629 = type metadata accessor for FinalizedTimestamp(0);
  v627 = *(v629 - 8);
  MEMORY[0x1EEE9AC00](v629);
  v550 = &v494 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v569 = &v494 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v603 = &v494 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v534 = &v494 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v552 = &v494 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v594 = &v494 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v535 = &v494 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v554 = &v494 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v595 = &v494 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v522 = &v494 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v537 = &v494 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v509 = &v494 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v529 = &v494 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v574 = &v494 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v500 = &v494 - v97;
  v616 = type metadata accessor for RetainedMapRun(0);
  v624 = *(v616 - 8);
  MEMORY[0x1EEE9AC00](v616 - 8);
  v608 = &v494 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v99);
  v544 = &v494 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v577 = &v494 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v532 = &v494 - v104;
  v625 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v614 = *(v625 - 8);
  MEMORY[0x1EEE9AC00](v625);
  v628 = (&v494 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v106);
  v565 = (&v494 - v107);
  MEMORY[0x1EEE9AC00](v108);
  v588 = (&v494 - v109);
  MEMORY[0x1EEE9AC00](v110);
  v540 = (&v494 - v111);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  MEMORY[0x1EEE9AC00](v112 - 8);
  v600 = &v494 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v114);
  v607 = &v494 - v115;
  MEMORY[0x1EEE9AC00](v116);
  v545 = &v494 - v117;
  MEMORY[0x1EEE9AC00](v118);
  v543 = &v494 - v119;
  MEMORY[0x1EEE9AC00](v120);
  v578 = &v494 - v121;
  MEMORY[0x1EEE9AC00](v122);
  v576 = &v494 - v123;
  MEMORY[0x1EEE9AC00](v124);
  v533 = &v494 - v125;
  MEMORY[0x1EEE9AC00](v126);
  v531 = &v494 - v127;
  v494 = type metadata accessor for Replica(0);
  v516 = *(v494 - 8);
  MEMORY[0x1EEE9AC00](v494);
  v496 = &v494 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v129);
  v605 = &v494 - v130;
  MEMORY[0x1EEE9AC00](v131);
  v542 = &v494 - v132;
  MEMORY[0x1EEE9AC00](v133);
  v573 = &v494 - v134;
  MEMORY[0x1EEE9AC00](v135);
  v517 = &v494 - v136;
  v137 = sub_1AE23C0EC();
  v626 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v515 = &v494 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  v514 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  MEMORY[0x1EEE9AC00](v514);
  v559 = &v494 - v139;
  v561 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  MEMORY[0x1EEE9AC00](v561);
  v547 = &v494 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v141);
  v526 = &v494 - v142;
  MEMORY[0x1EEE9AC00](v143);
  v521 = &v494 - v144;
  MEMORY[0x1EEE9AC00](v145);
  v560 = &v494 - v146;
  MEMORY[0x1EEE9AC00](v147);
  v513 = &v494 - v148;
  v548 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v548);
  v150 = &v494 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = *(a1 + OBJC_IVAR___CRContext_crdtDatabase + 8);
  v495 = a1 + OBJC_IVAR___CRContext_crdtDatabase;
  ObjectType = swift_getObjectType();
  v153 = a2[1];
  v631 = *a2;
  v632 = v153;
  v154 = *(v151 + 72);
  swift_unknownObjectRetain();

  v583 = v150;
  v154(&v631, ObjectType, v151);
  swift_unknownObjectRelease();

  v575 = a2;
  v155 = a2[1];
  v156 = v155 + 64;
  v157 = 1 << *(v155 + 32);
  v158 = -1;
  if (v157 < 64)
  {
    v158 = ~(-1 << v157);
  }

  v159 = v158 & *(v155 + 64);
  v160 = (v157 + 63) >> 6;
  v512 = v525 + 16;
  v541 = v525 + 32;
  v558 = (v525 + 8);
  v161 = v611;
  v511 = (v626 + 1);
  v613 = (v624 + 48);
  v620 = (v627 + 48);
  v626 = (v627 + 56);
  v612 = (v624 + 56);

  v499 = 0;
  v162 = 0;
  v562 = v137;
  v502 = v155 + 64;
  v501 = v160;
  v503 = v155;
  if (!v159)
  {
    goto LABEL_5;
  }

LABEL_4:
  v163 = v521;
LABEL_10:
  v520 = v159;
  v519 = v162;
  v165 = __clz(__rbit64(v159)) | (v162 << 6);
  v166 = *(v155 + 48);
  v539 = *(v516 + 72);
  v167 = v513;
  sub_1ADDDE338(v166 + v539 * v165, v513, type metadata accessor for Replica);
  v168 = *(v155 + 56);
  v169 = v525;
  v556 = *(v525 + 72);
  v170 = v168 + v556 * v165;
  v171 = v561;
  v172 = *(v561 + 48);
  v173 = v566;
  (*(v525 + 16))(v167 + v172, v170, v566);
  v174 = *(v171 + 48);
  v175 = v560;
  sub_1ADDDE4D8(v167, v560, type metadata accessor for Replica);
  v538 = *(v169 + 32);
  v538(v175 + v174, v167 + v172, v173);
  sub_1ADDCEE40(v175, v163, &qword_1EB5BA2A0, &unk_1AE242200);
  v176 = *v527;
  v177 = v163;
  if (*(*v527 + 16) && (v178 = sub_1ADDD8A6C(v163), (v179 & 1) != 0))
  {
    sub_1ADDE56CC(*(v176 + 56) + 24 * v178, &v631);
  }

  else
  {
    v631 = 0;
    v632 = 0;
    v633 = 0;
  }

  sub_1ADDD2198(&v631, &v634, &qword_1EB5BA468, &unk_1AE259210);
  if (v634)
  {
    sub_1ADDE5634(&v634, &v635);
  }

  else
  {
    v635 = MEMORY[0x1E69E7CC0];
    v636 = 0;
    swift_unknownObjectWeakInit();
    v636 = 0;
    swift_unknownObjectWeakAssign();
    sub_1ADDCEDE0(&v634, &qword_1EB5BA468, &unk_1AE259210);
  }

  v180 = v561;
  v181 = *v558;
  v182 = v566;
  (*v558)(v177 + *(v561 + 48), v566);
  sub_1ADE0DC8C(v177, type metadata accessor for Replica);
  v183 = v526;
  sub_1ADDCEE40(v560, v526, &qword_1EB5BA2A0, &unk_1AE242200);
  v184 = *(v180 + 48);
  v185 = v515;
  sub_1AE23C10C();
  v555 = v181;
  v181(v183 + v184, v182);
  v186 = v559;
  sub_1AE23C0DC();
  (*v511)(v185, v562);
  sub_1ADE0DC8C(v183, type metadata accessor for Replica);
  v187 = *(v514 + 36);
  v188 = sub_1ADE89268(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
  sub_1AE23D46C();
  if (*(v186 + v187) == v631)
  {
    v189 = v161;
    goto LABEL_19;
  }

  v194 = v616;
  v563 = v188;
  v195 = v599;
  v546 = v187;
  while (1)
  {
    while (1)
    {
      v198 = sub_1AE23D51C();
      v201 = *v199;
      v200 = *(v199 + 8);
      v198(&v631, 0);
      sub_1AE23D47C();
      v202 = v547;
      sub_1ADDCEE40(v560, v547, &qword_1EB5BA2A0, &unk_1AE242200);
      v160 = *(v561 + 48);
      swift_beginAccess();
      v203 = sub_1ADDE3EF8(&v631, v202);
      if (*v204)
      {
        break;
      }

      (v203)(&v631, 0);
      swift_endAccess();
      v555(v202 + v160, v566);
      sub_1ADE0DC8C(v202, type metadata accessor for Replica);
      v205 = v200 - v201;
      if (__OFSUB__(v200, v201))
      {
        goto LABEL_289;
      }

      v206 = *(v548 + 20);
      v160 = v583;
      v207 = *(v206 + v583);
      v208 = &v207[v205];
      if (__OFADD__(v207, v205))
      {
        goto LABEL_290;
      }

      if (v208 < v207)
      {
        goto LABEL_291;
      }

      v604 = *(v206 + v583);
      v564 = v206;
      v209 = v575;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v631 = *v209;
      v211 = v631;
      *v209 = 0x8000000000000000;
      v160 = sub_1ADDD8A6C(v160);
      v213 = *(v211 + 16);
      v214 = (v212 & 1) == 0;
      v215 = v213 + v214;
      if (__OFADD__(v213, v214))
      {
        goto LABEL_292;
      }

      v216 = v212;
      if (*(v211 + 24) >= v215)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ADDFB81C();
          v211 = v631;
        }
      }

      else
      {
        sub_1ADDDDED0(v215, isUniquelyReferenced_nonNull_native);
        v211 = v631;
        v217 = sub_1ADDD8A6C(v583);
        if ((v216 & 1) != (v218 & 1))
        {
          goto LABEL_348;
        }

        v160 = v217;
      }

      v579 = v208;
      v219 = v575;
      *v575 = v211;

      v220 = *v219;
      if (v216)
      {
        v221 = v583;
      }

      else
      {
        v222 = v536;
        sub_1AE23C11C();
        v220[(v160 >> 6) + 8] |= 1 << v160;
        v221 = v583;
        sub_1ADDDE338(v583, v220[6] + v160 * v539, type metadata accessor for Replica);
        v538(v220[7] + v160 * v556, v222, v566);
        v223 = v220[2];
        v224 = __OFADD__(v223, 1);
        v225 = v223 + 1;
        if (v224)
        {
          goto LABEL_306;
        }

        v220[2] = v225;
        v194 = v616;
      }

      sub_1AE23C07C();
      sub_1ADDDE338(v221, v605, type metadata accessor for Replica);
      v226 = sub_1ADDE22AC(v201, v200);
      v228 = v226;
      v627 = MEMORY[0x1E69E7CC0];
      v229 = v600;
      v189 = v611;
      if (v226 != v227)
      {
        if (v227 >= v226)
        {
          if (v226 < v227)
          {
            v624 = 0;
            v230 = v635;
            v231 = v226;
            v627 = MEMORY[0x1E69E7CC0];
            v606 = v226;
            v609 = v227;
            while (2)
            {
              if (v228 < 0)
              {
                __break(1u);
LABEL_267:
                __break(1u);
LABEL_268:
                __break(1u);
LABEL_269:
                __break(1u);
LABEL_270:
                __break(1u);
LABEL_271:
                __break(1u);
LABEL_272:
                __break(1u);
LABEL_273:
                __break(1u);
LABEL_274:
                __break(1u);
LABEL_275:
                __break(1u);
LABEL_276:
                __break(1u);
                goto LABEL_277;
              }

              if (v231 >= v230[2])
              {
                goto LABEL_267;
              }

              v621 = ((*(v614 + 80) + 32) & ~*(v614 + 80));
              v622 = *(v614 + 72) * v231;
              v623 = v230;
              v232 = v621 + v230 + v622;
              v233 = v628;
              sub_1ADDCEE40(v232, v628, &qword_1EB5BA148, &qword_1AE241B60);
              sub_1ADDCEE40(v233 + *(v625 + 36), v229, &qword_1EB5BA450, &unk_1AE25B3B0);
              if ((*v613)(v229, 1, v194) != 1)
              {
                v249 = v608;
                sub_1ADDDE4D8(v229, v608, type metadata accessor for RetainedMapRun);
                sub_1ADDCEE40(v249, v195, &qword_1EB5BA460, &qword_1AE251020);
                v250 = *v620;
                v160 = v629;
                if ((*v620)(v195, 1, v629) == 1)
                {
                  sub_1ADDCEDE0(v195, &qword_1EB5BA460, &qword_1AE251020);
                  v160 = sub_1AE23BFEC();
                  v251 = *(*(v160 - 8) + 16);
                  v252 = v594;
                  v251(v594, v605, v160);
                  if (__OFADD__(v604, v624))
                  {
                    goto LABEL_273;
                  }

                  v253 = v252;
                  v254 = v629;
                  *(v253 + *(v629 + 20)) = v604 + v624;
                  v255 = v601;
                  sub_1ADDDE338(v253, v601, type metadata accessor for FinalizedTimestamp);
                  v615 = *v626;
                  v615(v255, 0, 1, v254);
                  v256 = v628[1];
                  v257 = (v256 - *v628);
                  if (__OFSUB__(v256, *v628))
                  {
                    goto LABEL_274;
                  }

                  *(v255 + *(v619 + 20)) = v257;
                  v258 = v627;
                  v259 = *(v627 + 16);
                  if (v259)
                  {
                    v610 = v257;
                    v592 = (*(v617 + 80) + 32) & ~*(v617 + 80);
                    v591 = *(v617 + 72);
                    v260 = v585;
                    sub_1ADDDE338(v627 + v592 + v591 * (v259 - 1), v585, type metadata accessor for FinalizedTimestampRange);
                    v261 = v570;
                    sub_1ADDCEE40(v260, v570, &qword_1EB5BA460, &qword_1AE251020);
                    v262 = v629;
                    if (v250(v261, 1, v629) == 1)
                    {
                      sub_1ADDCEDE0(v261, &qword_1EB5BA460, &qword_1AE251020);
                      v263 = 1;
                      v264 = v580;
                    }

                    else
                    {
                      v311 = v552;
                      sub_1ADDDE4D8(v261, v552, type metadata accessor for FinalizedTimestamp);
                      v264 = v580;
                      v251(v580, v311, v160);
                      v160 = *(v311 + *(v262 + 20));
                      sub_1ADE0DC8C(v311, type metadata accessor for FinalizedTimestamp);
                      v312 = *(v260 + *(v619 + 20));
                      v224 = __OFADD__(v160, v312);
                      v313 = v160 + v312;
                      if (v224)
                      {
                        goto LABEL_288;
                      }

                      v263 = 0;
                      *(v264 + *(v262 + 20)) = v313;
                    }

                    v615(v264, v263, 1, v262);
                    v314 = *(v597 + 48);
                    v315 = v568;
                    sub_1ADDCEE40(v264, v568, &qword_1EB5BA460, &qword_1AE251020);
                    sub_1ADDCEE40(v601, v315 + v314, &qword_1EB5BA460, &qword_1AE251020);
                    if (v250(v315, 1, v262) == 1)
                    {
                      sub_1ADDCEDE0(v264, &qword_1EB5BA460, &qword_1AE251020);
                      v316 = v250(v315 + v314, 1, v262);
                      v195 = v599;
                      v258 = v627;
                      if (v316 == 1)
                      {
                        sub_1ADDCEDE0(v315, &qword_1EB5BA460, &qword_1AE251020);
                        v229 = v600;
                        v257 = v610;
                        goto LABEL_110;
                      }

LABEL_122:
                      v327 = v315;
                      v328 = &qword_1EB5BA4A0;
                      v329 = &unk_1AE253DA0;
LABEL_123:
                      sub_1ADDCEDE0(v327, v328, v329);
                      v229 = v600;
                      v257 = v610;
                      goto LABEL_124;
                    }

                    v325 = v551;
                    sub_1ADDCEE40(v315, v551, &qword_1EB5BA460, &qword_1AE251020);
                    v326 = v250(v315 + v314, 1, v262);
                    v258 = v627;
                    if (v326 == 1)
                    {
                      sub_1ADDCEDE0(v580, &qword_1EB5BA460, &qword_1AE251020);
                      sub_1ADE0DC8C(v325, type metadata accessor for FinalizedTimestamp);
                      v195 = v599;
                      goto LABEL_122;
                    }

                    v335 = v315 + v314;
                    v336 = v534;
                    sub_1ADDDE4D8(v335, v534, type metadata accessor for FinalizedTimestamp);
                    v195 = v599;
                    if (*(v325 + *(v262 + 20)) != *(v336 + *(v262 + 20)))
                    {
                      sub_1ADE0DC8C(v336, type metadata accessor for FinalizedTimestamp);
                      sub_1ADDCEDE0(v580, &qword_1EB5BA460, &qword_1AE251020);
                      sub_1ADE0DC8C(v325, type metadata accessor for FinalizedTimestamp);
                      v327 = v315;
                      v328 = &qword_1EB5BA460;
                      v329 = &qword_1AE251020;
                      goto LABEL_123;
                    }

                    v337 = sub_1AE23BF8C();
                    sub_1ADE0DC8C(v336, type metadata accessor for FinalizedTimestamp);
                    sub_1ADDCEDE0(v580, &qword_1EB5BA460, &qword_1AE251020);
                    sub_1ADE0DC8C(v325, type metadata accessor for FinalizedTimestamp);
                    sub_1ADDCEDE0(v315, &qword_1EB5BA460, &qword_1AE251020);
                    v229 = v600;
                    v257 = v610;
                    if ((v337 & 1) == 0)
                    {
LABEL_124:
                      sub_1ADE0DC8C(v585, type metadata accessor for FinalizedTimestampRange);
                      v255 = v601;
                      goto LABEL_125;
                    }

LABEL_110:
                    v160 = v258[2];
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v258 = sub_1ADF79A40(v258);
                    }

                    v317 = v594;
                    v228 = v606;
                    sub_1ADE0DC8C(v585, type metadata accessor for FinalizedTimestampRange);
                    sub_1ADE0DC8C(v601, type metadata accessor for FinalizedTimestampRange);
                    if (!v160)
                    {
                      goto LABEL_297;
                    }

                    if (v160 > v258[2])
                    {
                      goto LABEL_299;
                    }

                    v318 = v258 + v592 + (v160 - 1) * v591;
                    v319 = *(v619 + 20);
                    v320 = *(v318 + v319);
                    v224 = __OFADD__(v320, v257);
                    v321 = v257 + v320;
                    if (v224)
                    {
                      goto LABEL_301;
                    }

                    *(v318 + v319) = v321;
                  }

                  else
                  {
LABEL_125:
                    sub_1ADDDE338(v255, v589, type metadata accessor for FinalizedTimestampRange);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v258 = sub_1ADDE47F8(0, v258[2] + 1, 1, v258);
                    }

                    v317 = v594;
                    v331 = v258[2];
                    v330 = v258[3];
                    v228 = v606;
                    if (v331 >= v330 >> 1)
                    {
                      v258 = sub_1ADDE47F8((v330 > 1), v331 + 1, 1, v258);
                    }

                    sub_1ADE0DC8C(v601, type metadata accessor for FinalizedTimestampRange);
                    v258[2] = v331 + 1;
                    sub_1ADDDE4D8(v589, v258 + ((*(v617 + 80) + 32) & ~*(v617 + 80)) + *(v617 + 72) * v331, type metadata accessor for FinalizedTimestampRange);
                  }

                  sub_1ADDCEDE0(v628, &qword_1EB5BA148, &qword_1AE241B60);
                  v224 = __OFADD__(v624, v257);
                  v624 += v257;
                  v160 = v607;
                  if (v224)
                  {
                    goto LABEL_275;
                  }

                  v627 = v258;
                  sub_1ADDDE4D8(v317, v607, type metadata accessor for FinalizedTimestamp);
                  v615(v160, 0, 1, v629);
                  v194 = v616;
                  v332 = *(v608 + *(v616 + 20));
                  sub_1ADE0DC8C(v608, type metadata accessor for RetainedMapRun);
                  *(v160 + *(v194 + 20)) = v332;
                  v189 = v611;
LABEL_132:
                  v230 = v623;
                  goto LABEL_133;
                }

                v265 = v595;
                sub_1ADDDE4D8(v195, v595, type metadata accessor for FinalizedTimestamp);
                sub_1ADDDE338(v265, v189, type metadata accessor for FinalizedTimestamp);
                v266 = *v626;
                (*v626)(v189, 0, 1, v160);
                v267 = v628[1];
                v268 = v267 - *v628;
                if (__OFSUB__(v267, *v628))
                {
                  goto LABEL_272;
                }

                *(v189 + *(v619 + 20)) = v268;
                v269 = *(v627 + 16);
                if (v269)
                {
                  v615 = ((*(v617 + 80) + 32) & ~*(v617 + 80));
                  v610 = *(v617 + 72);
                  v270 = v587;
                  sub_1ADDDE338(v615 + v627 + v610 * (v269 - 1), v587, type metadata accessor for FinalizedTimestampRange);
                  v271 = v572;
                  sub_1ADDCEE40(v270, v572, &qword_1EB5BA460, &qword_1AE251020);
                  v160 = v629;
                  if (v250(v271, 1, v629) == 1)
                  {
                    sub_1ADDCEDE0(v271, &qword_1EB5BA460, &qword_1AE251020);
                    v272 = v581;
                    v266(v581, 1, 1, v160);
                  }

                  else
                  {
                    v292 = v271;
                    v293 = v554;
                    sub_1ADDDE4D8(v292, v554, type metadata accessor for FinalizedTimestamp);
                    v294 = sub_1AE23BFEC();
                    v272 = v581;
                    (*(*(v294 - 8) + 16))(v581, v293, v294);
                    v295 = *(v293 + *(v160 + 20));
                    sub_1ADE0DC8C(v293, type metadata accessor for FinalizedTimestamp);
                    v296 = *(v270 + *(v619 + 20));
                    v224 = __OFADD__(v295, v296);
                    v297 = v295 + v296;
                    if (v224)
                    {
                      goto LABEL_287;
                    }

                    *(v272 + *(v160 + 20)) = v297;
                    v266(v272, 0, 1, v160);
                  }

                  v298 = *(v597 + 48);
                  v299 = v571;
                  sub_1ADDCEE40(v272, v571, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADDCEE40(v611, v299 + v298, &qword_1EB5BA460, &qword_1AE251020);
                  if (v250(v299, 1, v160) == 1)
                  {
                    sub_1ADDCEDE0(v272, &qword_1EB5BA460, &qword_1AE251020);
                    v300 = v250(v299 + v298, 1, v160);
                    v189 = v611;
                    if (v300 == 1)
                    {
                      sub_1ADDCEDE0(v299, &qword_1EB5BA460, &qword_1AE251020);
                      v195 = v599;
                      v229 = v600;
                      goto LABEL_88;
                    }

LABEL_96:
                    sub_1ADDCEDE0(v299, &qword_1EB5BA4A0, &unk_1AE253DA0);
                    v195 = v599;
LABEL_97:
                    v229 = v600;
                    goto LABEL_98;
                  }

                  v307 = v553;
                  sub_1ADDCEE40(v299, v553, &qword_1EB5BA460, &qword_1AE251020);
                  if (v250(v299 + v298, 1, v160) == 1)
                  {
                    sub_1ADDCEDE0(v581, &qword_1EB5BA460, &qword_1AE251020);
                    sub_1ADE0DC8C(v307, type metadata accessor for FinalizedTimestamp);
                    v189 = v611;
                    goto LABEL_96;
                  }

                  v333 = v535;
                  sub_1ADDDE4D8(v299 + v298, v535, type metadata accessor for FinalizedTimestamp);
                  v195 = v599;
                  v189 = v611;
                  if (*(v307 + *(v160 + 20)) != *(v333 + *(v160 + 20)))
                  {
                    sub_1ADE0DC8C(v333, type metadata accessor for FinalizedTimestamp);
                    sub_1ADDCEDE0(v581, &qword_1EB5BA460, &qword_1AE251020);
                    sub_1ADE0DC8C(v307, type metadata accessor for FinalizedTimestamp);
                    sub_1ADDCEDE0(v299, &qword_1EB5BA460, &qword_1AE251020);
                    goto LABEL_97;
                  }

                  v334 = sub_1AE23BF8C();
                  sub_1ADE0DC8C(v333, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v581, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADE0DC8C(v307, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v299, &qword_1EB5BA460, &qword_1AE251020);
                  v229 = v600;
                  if ((v334 & 1) == 0)
                  {
LABEL_98:
                    sub_1ADE0DC8C(v587, type metadata accessor for FinalizedTimestampRange);
                    v228 = v606;
                    goto LABEL_99;
                  }

LABEL_88:
                  v301 = *(v627 + 16);
                  v302 = swift_isUniquelyReferenced_nonNull_native();
                  v228 = v606;
                  if ((v302 & 1) == 0)
                  {
                    v627 = sub_1ADF79A40(v627);
                  }

                  v160 = v607;
                  sub_1ADE0DC8C(v587, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DC8C(v189, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DC8C(v595, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v628, &qword_1EB5BA148, &qword_1AE241B60);
                  if (!v301)
                  {
                    goto LABEL_296;
                  }

                  if (v301 > *(v627 + 16))
                  {
                    goto LABEL_298;
                  }

                  v303 = v615 + v627 + (v301 - 1) * v610;
                  v304 = *(v619 + 20);
                  v305 = *&v303[v304];
                  v224 = __OFADD__(v305, v268);
                  v306 = v305 + v268;
                  if (v224)
                  {
                    goto LABEL_300;
                  }

                  *&v303[v304] = v306;
                  v194 = v616;
                }

                else
                {
LABEL_99:
                  sub_1ADDDE338(v189, v590, type metadata accessor for FinalizedTimestampRange);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v627 = sub_1ADDE47F8(0, *(v627 + 16) + 1, 1, v627);
                  }

                  v194 = v616;
                  v309 = *(v627 + 16);
                  v308 = *(v627 + 24);
                  if (v309 >= v308 >> 1)
                  {
                    v627 = sub_1ADDE47F8((v308 > 1), v309 + 1, 1, v627);
                  }

                  sub_1ADE0DC8C(v189, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DC8C(v595, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v628, &qword_1EB5BA148, &qword_1AE241B60);
                  v310 = v627;
                  *(v627 + 16) = v309 + 1;
                  sub_1ADDDE4D8(v590, v310 + ((*(v617 + 80) + 32) & ~*(v617 + 80)) + *(v617 + 72) * v309, type metadata accessor for FinalizedTimestampRange);
                  v160 = v607;
                }

                sub_1ADDDE4D8(v608, v160, type metadata accessor for RetainedMapRun);
                goto LABEL_132;
              }

              sub_1ADDCEDE0(v229, &qword_1EB5BA450, &unk_1AE25B3B0);
              v160 = sub_1AE23BFEC();
              v234 = *(*(v160 - 8) + 16);
              v235 = v603;
              v234(v603, v605, v160);
              if (__OFADD__(v604, v624))
              {
                goto LABEL_269;
              }

              v236 = v629;
              *(v235 + *(v629 + 20)) = v604 + v624;
              v237 = v618;
              sub_1ADDDE338(v235, v618, type metadata accessor for FinalizedTimestamp);
              v615 = *v626;
              v615(v237, 0, 1, v236);
              v238 = v628[1];
              v224 = __OFSUB__(v238, *v628);
              v239 = (v238 - *v628);
              if (v224)
              {
                goto LABEL_270;
              }

              v240 = *(v619 + 20);
              v610 = v239;
              *(v237 + v240) = v239;
              v241 = v627;
              v242 = *(v627 + 16);
              if (!v242)
              {
                goto LABEL_76;
              }

              v592 = (*(v617 + 80) + 32) & ~*(v617 + 80);
              v591 = *(v617 + 72);
              v243 = v596;
              sub_1ADDDE338(v627 + v592 + v591 * (v242 - 1), v596, type metadata accessor for FinalizedTimestampRange);
              v244 = v586;
              sub_1ADDCEE40(v243, v586, &qword_1EB5BA460, &qword_1AE251020);
              v245 = *v620;
              v246 = v629;
              if ((*v620)(v244, 1, v629) == 1)
              {
                sub_1ADDCEDE0(v244, &qword_1EB5BA460, &qword_1AE251020);
                v247 = 1;
                v248 = v593;
              }

              else
              {
                v273 = v569;
                sub_1ADDDE4D8(v244, v569, type metadata accessor for FinalizedTimestamp);
                v248 = v593;
                v234(v593, v273, v160);
                v160 = *(v273 + *(v246 + 20));
                sub_1ADE0DC8C(v273, type metadata accessor for FinalizedTimestamp);
                v274 = *(v243 + *(v619 + 20));
                v224 = __OFADD__(v160, v274);
                v275 = v160 + v274;
                if (v224)
                {
                  goto LABEL_279;
                }

                v247 = 0;
                *(v248 + *(v246 + 20)) = v275;
              }

              v615(v248, v247, 1, v246);
              v276 = *(v597 + 48);
              v277 = v584;
              sub_1ADDCEE40(v248, v584, &qword_1EB5BA460, &qword_1AE251020);
              sub_1ADDCEE40(v618, v277 + v276, &qword_1EB5BA460, &qword_1AE251020);
              v278 = v245(v277, 1, v246);
              v279 = v599;
              if (v278 == 1)
              {
                sub_1ADDCEDE0(v248, &qword_1EB5BA460, &qword_1AE251020);
                v280 = v245(v277 + v276, 1, v246);
                v195 = v279;
                v241 = v627;
                if (v280 == 1)
                {
                  sub_1ADDCEDE0(v277, &qword_1EB5BA460, &qword_1AE251020);
                  v235 = v603;
                  v229 = v600;
LABEL_65:
                  v160 = v241[2];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v241 = sub_1ADF79A40(v241);
                  }

                  v194 = v616;
                  v228 = v606;
                  sub_1ADE0DC8C(v596, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DC8C(v618, type metadata accessor for FinalizedTimestampRange);
                  if (!v160)
                  {
                    goto LABEL_280;
                  }

                  if (v160 > v241[2])
                  {
                    goto LABEL_281;
                  }

                  v281 = v241 + v592 + (v160 - 1) * v591;
                  v282 = *(v619 + 20);
                  v283 = *(v281 + v282);
                  v224 = __OFADD__(v283, v610);
                  v284 = v610 + v283;
                  if (v224)
                  {
                    goto LABEL_282;
                  }

                  *(v281 + v282) = v284;
                  goto LABEL_81;
                }

LABEL_73:
                v287 = v277;
                v288 = &qword_1EB5BA4A0;
                v289 = &unk_1AE253DA0;
LABEL_74:
                sub_1ADDCEDE0(v287, v288, v289);
                v235 = v603;
                v229 = v600;
              }

              else
              {
                v582 = v231;
                v285 = v567;
                sub_1ADDCEE40(v277, v567, &qword_1EB5BA460, &qword_1AE251020);
                v286 = v245(v277 + v276, 1, v246);
                v241 = v627;
                if (v286 == 1)
                {
                  sub_1ADDCEDE0(v593, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADE0DC8C(v285, type metadata accessor for FinalizedTimestamp);
                  v195 = v279;
                  v231 = v582;
                  goto LABEL_73;
                }

                v322 = v277 + v276;
                v323 = v550;
                sub_1ADDDE4D8(v322, v550, type metadata accessor for FinalizedTimestamp);
                v195 = v279;
                v231 = v582;
                if (*(v285 + *(v246 + 20)) != *(v323 + *(v246 + 20)))
                {
                  sub_1ADE0DC8C(v323, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v593, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADE0DC8C(v285, type metadata accessor for FinalizedTimestamp);
                  v287 = v277;
                  v288 = &qword_1EB5BA460;
                  v289 = &qword_1AE251020;
                  goto LABEL_74;
                }

                v324 = sub_1AE23BF8C();
                sub_1ADE0DC8C(v323, type metadata accessor for FinalizedTimestamp);
                sub_1ADDCEDE0(v593, &qword_1EB5BA460, &qword_1AE251020);
                sub_1ADE0DC8C(v285, type metadata accessor for FinalizedTimestamp);
                sub_1ADDCEDE0(v277, &qword_1EB5BA460, &qword_1AE251020);
                v235 = v603;
                v229 = v600;
                if (v324)
                {
                  goto LABEL_65;
                }
              }

              sub_1ADE0DC8C(v596, type metadata accessor for FinalizedTimestampRange);
              v237 = v618;
LABEL_76:
              sub_1ADDDE338(v237, v602, type metadata accessor for FinalizedTimestampRange);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v241 = sub_1ADDE47F8(0, v241[2] + 1, 1, v241);
              }

              v194 = v616;
              v291 = v241[2];
              v290 = v241[3];
              v228 = v606;
              if (v291 >= v290 >> 1)
              {
                v241 = sub_1ADDE47F8((v290 > 1), v291 + 1, 1, v241);
              }

              sub_1ADE0DC8C(v618, type metadata accessor for FinalizedTimestampRange);
              v241[2] = v291 + 1;
              sub_1ADDDE4D8(v602, v241 + ((*(v617 + 80) + 32) & ~*(v617 + 80)) + *(v617 + 72) * v291, type metadata accessor for FinalizedTimestampRange);
LABEL_81:
              sub_1ADDCEDE0(v628, &qword_1EB5BA148, &qword_1AE241B60);
              v230 = v623;
              v224 = __OFADD__(v624, v610);
              v624 += v610;
              v160 = v607;
              if (v224)
              {
                goto LABEL_271;
              }

              v627 = v241;
              sub_1ADDDE4D8(v235, v607, type metadata accessor for FinalizedTimestamp);
              v615(v160, 0, 1, v629);
              *(v160 + *(v194 + 20)) = 1;
              v189 = v611;
LABEL_133:
              (*v612)(v160, 0, 1, v194);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v230 = sub_1ADF799F0(v230);
              }

              if (v231 >= v230[2])
              {
                goto LABEL_268;
              }

              ++v231;
              sub_1ADDE4820(v160, v621 + v230 + *(v625 + 36) + v622);
              v635 = v230;
              v227 = v609;
              if (v609 == v231)
              {
                goto LABEL_23;
              }

              continue;
            }
          }

LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
LABEL_314:
          __break(1u);
LABEL_315:
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          __break(1u);
          goto LABEL_328;
        }

LABEL_307:
        __break(1u);
        goto LABEL_308;
      }

LABEL_23:
      sub_1ADDE2B98(v228, v227);

      v196 = sub_1AE23BFEC();
      (*(*(v196 - 8) + 8))(v605, v196);
      *(v564 + v583) = v579;
      v197 = v559;
      sub_1AE23D46C();
      if (*(v197 + v546) == v631)
      {
        goto LABEL_19;
      }
    }

    v610 = v203;
    v615 = v160;
    v508 = *(v548 + 20);
    v609 = *&v583[v508];
    v338 = v204;
    sub_1ADDDE338(v583, v517, type metadata accessor for Replica);
    v630 = MEMORY[0x1E69E7CC0];
    v524 = v201;
    v621 = v338;
    v339 = sub_1ADDE22AC(v201, v200);
    if (v339 != v340)
    {
      break;
    }

    v189 = v611;
    v341 = v615;
LABEL_168:
    sub_1ADDE2B98(v339, v340);
    v368 = v630;
    v369 = sub_1AE23BFEC();
    v370 = *(v369 - 8);
    v371 = *(v370 + 8);
    v624 = v369;
    v507 = v370 + 8;
    v506 = v371;
    (v371)(v517);
    (v610)(&v631, 0);
    swift_endAccess();
    v160 = v547;
    v555(v341 + v547, v566);
    sub_1ADE0DC8C(v160, type metadata accessor for Replica);
    v564 = *(v368 + 16);
    if (!v564)
    {
      goto LABEL_258;
    }

    v591 = v368 + ((*(v617 + 80) + 32) & ~*(v617 + 80));
    v621 = (v370 + 16);

    v372 = 0;
    v373 = v524;
    v374 = v518;
    v582 = v368;
    do
    {
      if (v372 >= *(v368 + 16))
      {
        goto LABEL_315;
      }

      v606 = v373;
      v579 = *(v617 + 72);
      v604 = v372;
      sub_1ADDDE338(v591 + v579 * v372, v374, type metadata accessor for FinalizedTimestampRange);
      v160 = v528;
      sub_1ADDCEE40(v374, v528, &qword_1EB5BA460, &qword_1AE251020);
      v375 = *v620;
      v376 = v629;
      v377 = (*v620)(v160, 1, v629);
      v615 = v375;
      if (v377 == 1)
      {
        sub_1ADDCEDE0(v160, &qword_1EB5BA460, &qword_1AE251020);
        v194 = v616;
        goto LABEL_212;
      }

      sub_1ADDDE4D8(v160, v529, type metadata accessor for FinalizedTimestamp);
      v160 = v510;
      sub_1ADDCEE40(v374, v510, &qword_1EB5BA460, &qword_1AE251020);
      if (v375(v160, 1, v376) == 1)
      {
        goto LABEL_349;
      }

      v378 = v509;
      sub_1ADDDE4D8(v160, v509, type metadata accessor for FinalizedTimestamp);
      v160 = *(v378 + *(v376 + 20));
      sub_1ADE0DC8C(v378, type metadata accessor for FinalizedTimestamp);
      v592 = *(v374 + *(v619 + 20));
      v379 = v583;
      if (__OFADD__(v160, v592))
      {
        goto LABEL_322;
      }

      if ((v160 + v592) < v160)
      {
        goto LABEL_323;
      }

      v380 = v575;
      v381 = swift_isUniquelyReferenced_nonNull_native();
      v631 = *v380;
      v382 = v631;
      *v380 = 0x8000000000000000;
      v384 = sub_1ADDD8A6C(v379);
      v385 = *(v382 + 16);
      v386 = (v383 & 1) == 0;
      v387 = v385 + v386;
      if (__OFADD__(v385, v386))
      {
        goto LABEL_324;
      }

      v388 = v383;
      if (*(v382 + 24) >= v387)
      {
        v194 = v616;
        if ((v381 & 1) == 0)
        {
          sub_1ADDFB81C();
          v382 = v631;
        }
      }

      else
      {
        sub_1ADDDDED0(v387, v381);
        v382 = v631;
        v389 = sub_1ADDD8A6C(v583);
        v194 = v616;
        if ((v388 & 1) != (v390 & 1))
        {
          goto LABEL_348;
        }

        v384 = v389;
      }

      v391 = v575;
      *v575 = v382;

      v392 = *v391;
      if ((v388 & 1) == 0)
      {
        v393 = v536;
        sub_1AE23C11C();
        v392[(v384 >> 6) + 8] |= 1 << v384;
        sub_1ADDDE338(v583, v392[6] + v384 * v539, type metadata accessor for Replica);
        v538(v392[7] + v384 * v556, v393, v566);
        v394 = v392[2];
        v224 = __OFADD__(v394, 1);
        v395 = v394 + 1;
        if (v224)
        {
          goto LABEL_334;
        }

        v392[2] = v395;
        v194 = v616;
      }

      sub_1AE23C07C();
      v396 = v606;
      v160 = v606 + v592;
      v397 = v574;
      if (__OFADD__(v606, v592))
      {
        goto LABEL_325;
      }

      if (v160 < v606)
      {
        goto LABEL_326;
      }

      v398 = v529;
      v610 = *(v529 + *(v629 + 20));
      v399 = v573;
      sub_1ADDDE338(v583, v573, type metadata accessor for Replica);
      v631 = MEMORY[0x1E69E7CC0];
      v400 = sub_1ADDE22AC(v396, v160);
      if (v400 == v401)
      {
        goto LABEL_210;
      }

      if (v401 < v400)
      {
        goto LABEL_335;
      }

      if (v400 >= v401)
      {
        goto LABEL_336;
      }

      v402 = 0;
      v403 = v635;
      v404 = v400;
      v405 = v598;
      v622 = v401;
      v623 = v400;
      do
      {
        if (v400 < 0)
        {
          goto LABEL_276;
        }

        if (v404 >= v403[2])
        {
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
          goto LABEL_283;
        }

        v406 = (*(v614 + 80) + 32) & ~*(v614 + 80);
        v627 = *(v614 + 72) * v404;
        v407 = v588;
        sub_1ADDCEE40(v403 + v406 + v627, v588, &qword_1EB5BA148, &qword_1AE241B60);
        v408 = v407 + *(v625 + 36);
        v409 = v578;
        v160 = &qword_1EB5BA450;
        sub_1ADDCEE40(v408, v578, &qword_1EB5BA450, &unk_1AE25B3B0);
        if ((*v613)(v409, 1, v194) == 1)
        {
          sub_1ADDCEDE0(v409, &qword_1EB5BA450, &unk_1AE25B3B0);
          (*v621)(v397, v573, v624);
          if (__OFADD__(v610, v402))
          {
            goto LABEL_284;
          }

          v410 = v629;
          *(v397 + *(v629 + 20)) = v610 + v402;
          sub_1ADDDE338(v397, v405, type metadata accessor for FinalizedTimestamp);
          v411 = *v626;
          (*v626)(v405, 0, 1, v410);
          v160 = v588;
          v412 = v588[1];
          v413 = v412 - *v588;
          if (__OFSUB__(v412, *v588))
          {
            goto LABEL_285;
          }

          *(v405 + *(v619 + 20)) = v413;
          sub_1ADDE4044(v598);
          v405 = v598;
          sub_1ADE0DC8C(v598, type metadata accessor for FinalizedTimestampRange);
          sub_1ADDCEDE0(v160, &qword_1EB5BA148, &qword_1AE241B60);
          v224 = __OFADD__(v402, v413);
          v402 += v413;
          if (v224)
          {
            goto LABEL_286;
          }

          v414 = v576;
          sub_1ADDDE4D8(v397, v576, type metadata accessor for FinalizedTimestamp);
          v411(v414, 0, 1, v629);
          v194 = v616;
          *(v414 + *(v616 + 20)) = 1;
        }

        else
        {
          v160 = v577;
          sub_1ADDDE4D8(v409, v577, type metadata accessor for RetainedMapRun);
          v415 = v557;
          sub_1ADDCEE40(v160, v557, &qword_1EB5BA460, &qword_1AE251020);
          v416 = v629;
          if ((v615)(v415, 1, v629) == 1)
          {
            sub_1ADDCEDE0(v415, &qword_1EB5BA460, &qword_1AE251020);
            v397 = v574;
            (*v621)(v574, v573, v624);
            v414 = v576;
            if (__OFADD__(v610, v402))
            {
              goto LABEL_303;
            }

            v417 = v629;
            *(v397 + *(v629 + 20)) = v610 + v402;
            sub_1ADDDE338(v397, v405, type metadata accessor for FinalizedTimestamp);
            v418 = *v626;
            (*v626)(v405, 0, 1, v417);
            v160 = v588;
            v419 = v588[1];
            v420 = v419 - *v588;
            if (__OFSUB__(v419, *v588))
            {
              goto LABEL_304;
            }

            *(v405 + *(v619 + 20)) = v420;
            sub_1ADDE4044(v598);
            sub_1ADE0DC8C(v598, type metadata accessor for FinalizedTimestampRange);
            sub_1ADDCEDE0(v160, &qword_1EB5BA148, &qword_1AE241B60);
            v224 = __OFADD__(v402, v420);
            v402 += v420;
            if (v224)
            {
              goto LABEL_305;
            }

            sub_1ADDDE4D8(v397, v414, type metadata accessor for FinalizedTimestamp);
            v418(v414, 0, 1, v629);
            v194 = v616;
            v421 = *(v577 + *(v616 + 20));
            sub_1ADE0DC8C(v577, type metadata accessor for RetainedMapRun);
            *(v414 + *(v194 + 20)) = v421;
            v405 = v598;
          }

          else
          {
            v422 = v537;
            sub_1ADDDE4D8(v415, v537, type metadata accessor for FinalizedTimestamp);
            sub_1ADDDE338(v422, v405, type metadata accessor for FinalizedTimestamp);
            (*v626)(v405, 0, 1, v416);
            v423 = v588;
            v424 = v588[1];
            v414 = v576;
            if (__OFSUB__(v424, *v588))
            {
              goto LABEL_302;
            }

            *(v405 + *(v619 + 20)) = v424 - *v588;
            sub_1ADDE4044(v598);
            v405 = v598;
            sub_1ADE0DC8C(v598, type metadata accessor for FinalizedTimestampRange);
            sub_1ADE0DC8C(v422, type metadata accessor for FinalizedTimestamp);
            sub_1ADDCEDE0(v423, &qword_1EB5BA148, &qword_1AE241B60);
            sub_1ADDDE4D8(v577, v414, type metadata accessor for RetainedMapRun);
            v397 = v574;
            v194 = v616;
          }
        }

        (*v612)(v414, 0, 1, v194);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v403 = sub_1ADF799F0(v403);
        }

        if (v404 >= v403[2])
        {
          goto LABEL_278;
        }

        ++v404;
        sub_1ADDE4820(v414, v403 + v406 + *(v625 + 36) + v627);
        v635 = v403;
        v401 = v622;
        v400 = v623;
      }

      while (v622 != v404);
      v195 = v599;
      v398 = v529;
      v399 = v573;
LABEL_210:
      sub_1ADDE2B98(v400, v401);

      sub_1ADE0DC8C(v398, type metadata accessor for FinalizedTimestamp);
      v506(v399, v624);
      v425 = v609 + v592;
      if (__OFADD__(v609, v592))
      {
        goto LABEL_327;
      }

      v609 = (v609 + v592);
      *&v583[v508] = v425;
      v374 = v518;
LABEL_212:
      v426 = *(v374 + *(v619 + 20));
      sub_1ADE0DC8C(v374, type metadata accessor for FinalizedTimestampRange);
      v373 = (v606 + v426);
      v189 = v611;
      if (__OFADD__(v606, v426))
      {
        goto LABEL_316;
      }

      v372 = (v604 + 1);
      v368 = v582;
    }

    while ((v604 + 1) != v564);

    v604 = *(v368 + 16);
    if (v604)
    {
      v427 = 0;
      v428 = v505;
      while (v427 < *(v368 + 16))
      {
        v606 = v427;
        sub_1ADDDE338(v591 + v579 * v427, v428, type metadata accessor for FinalizedTimestampRange);
        v429 = v504;
        v160 = &qword_1AE251020;
        sub_1ADDCEE40(v428, v504, &qword_1EB5BA460, &qword_1AE251020);
        v430 = v428;
        v431 = (v615)(v429, 1, v629);
        sub_1ADDCEDE0(v429, &qword_1EB5BA460, &qword_1AE251020);
        if (v431 == 1)
        {
          v432 = *(v430 + *(v619 + 20));
          v433 = (v609 + v432);
          if (__OFADD__(v609, v432))
          {
            goto LABEL_337;
          }

          if (v433 < v609)
          {
            goto LABEL_338;
          }

          v434 = v575;
          v435 = swift_isUniquelyReferenced_nonNull_native();
          v631 = *v434;
          v436 = v631;
          *v434 = 0x8000000000000000;
          v160 = sub_1ADDD8A6C(v583);
          v438 = *(v436 + 16);
          v439 = (v437 & 1) == 0;
          v440 = v438 + v439;
          if (__OFADD__(v438, v439))
          {
            goto LABEL_339;
          }

          v441 = v437;
          if (*(v436 + 24) >= v440)
          {
            if ((v435 & 1) == 0)
            {
              sub_1ADDFB81C();
              v436 = v631;
            }
          }

          else
          {
            sub_1ADDDDED0(v440, v435);
            v436 = v631;
            v442 = sub_1ADDD8A6C(v583);
            if ((v441 & 1) != (v443 & 1))
            {
              goto LABEL_348;
            }

            v160 = v442;
          }

          v444 = v574;
          v445 = v575;
          *v575 = v436;

          v446 = *v445;
          if ((v441 & 1) == 0)
          {
            v447 = v536;
            sub_1AE23C11C();
            v446[(v160 >> 6) + 8] |= 1 << v160;
            sub_1ADDDE338(v583, v446[6] + v160 * v539, type metadata accessor for Replica);
            v160 *= v556;
            v538(v446[7] + v160, v447, v566);
            v448 = v446[2];
            v224 = __OFADD__(v448, 1);
            v449 = v448 + 1;
            if (v224)
            {
              goto LABEL_342;
            }

            v446[2] = v449;
          }

          sub_1AE23C07C();
          v450 = v524;
          v160 = v524 + v432;
          v194 = v616;
          if (__OFADD__(v524, v432))
          {
            goto LABEL_340;
          }

          if (v160 < v524)
          {
            goto LABEL_341;
          }

          v610 = v433;
          v451 = v583;
          v452 = v542;
          sub_1ADDDE338(v583, v542, type metadata accessor for Replica);
          v631 = MEMORY[0x1E69E7CC0];
          v453 = sub_1ADDE22AC(v450, v160);
          if (v453 != v454)
          {
            if (v454 < v453)
            {
              goto LABEL_343;
            }

            if (v453 >= v454)
            {
              goto LABEL_344;
            }

            v455 = 0;
            v456 = v635;
            v457 = v453;
            v458 = v598;
            v622 = v454;
            v623 = v453;
            do
            {
              if (v453 < 0)
              {
                goto LABEL_293;
              }

              if (v457 >= v456[2])
              {
                goto LABEL_294;
              }

              v459 = (*(v614 + 80) + 32) & ~*(v614 + 80);
              v627 = *(v614 + 72) * v457;
              v460 = v565;
              sub_1ADDCEE40(v456 + v459 + v627, v565, &qword_1EB5BA148, &qword_1AE241B60);
              v461 = v460 + *(v625 + 36);
              v462 = v545;
              v160 = &qword_1EB5BA450;
              sub_1ADDCEE40(v461, v545, &qword_1EB5BA450, &unk_1AE25B3B0);
              if ((*v613)(v462, 1, v194) == 1)
              {
                sub_1ADDCEDE0(v462, &qword_1EB5BA450, &unk_1AE25B3B0);
                (*v621)(v444, v542, v624);
                if (__OFADD__(v609, v455))
                {
                  goto LABEL_312;
                }

                v463 = v629;
                *(v444 + *(v629 + 20)) = v609 + v455;
                sub_1ADDDE338(v444, v458, type metadata accessor for FinalizedTimestamp);
                v464 = *v626;
                (*v626)(v458, 0, 1, v463);
                v160 = v565;
                v465 = v565[1];
                v466 = v465 - *v565;
                if (__OFSUB__(v465, *v565))
                {
                  goto LABEL_313;
                }

                *(v458 + *(v619 + 20)) = v466;
                sub_1ADDE4044(v598);
                v458 = v598;
                sub_1ADE0DC8C(v598, type metadata accessor for FinalizedTimestampRange);
                sub_1ADDCEDE0(v160, &qword_1EB5BA148, &qword_1AE241B60);
                v224 = __OFADD__(v455, v466);
                v455 += v466;
                if (v224)
                {
                  goto LABEL_314;
                }

                v467 = v543;
                sub_1ADDDE4D8(v444, v543, type metadata accessor for FinalizedTimestamp);
                v464(v467, 0, 1, v629);
                v194 = v616;
                *(v467 + *(v616 + 20)) = 1;
              }

              else
              {
                v160 = v544;
                sub_1ADDDE4D8(v462, v544, type metadata accessor for RetainedMapRun);
                v468 = v530;
                sub_1ADDCEE40(v160, v530, &qword_1EB5BA460, &qword_1AE251020);
                v469 = v629;
                if ((v615)(v468, 1, v629) == 1)
                {
                  sub_1ADDCEDE0(v468, &qword_1EB5BA460, &qword_1AE251020);
                  v444 = v574;
                  (*v621)(v574, v542, v624);
                  if (__OFADD__(v609, v455))
                  {
                    goto LABEL_319;
                  }

                  v470 = v629;
                  *(v444 + *(v629 + 20)) = v609 + v455;
                  sub_1ADDDE338(v444, v458, type metadata accessor for FinalizedTimestamp);
                  v471 = *v626;
                  (*v626)(v458, 0, 1, v470);
                  v160 = v565;
                  v472 = v565[1];
                  v473 = v472 - *v565;
                  v467 = v543;
                  if (__OFSUB__(v472, *v565))
                  {
                    goto LABEL_320;
                  }

                  *(v458 + *(v619 + 20)) = v473;
                  sub_1ADDE4044(v598);
                  sub_1ADE0DC8C(v598, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADDCEDE0(v160, &qword_1EB5BA148, &qword_1AE241B60);
                  v224 = __OFADD__(v455, v473);
                  v455 += v473;
                  if (v224)
                  {
                    goto LABEL_321;
                  }

                  sub_1ADDDE4D8(v444, v467, type metadata accessor for FinalizedTimestamp);
                  v471(v467, 0, 1, v629);
                  v194 = v616;
                  v474 = *(v544 + *(v616 + 20));
                  sub_1ADE0DC8C(v544, type metadata accessor for RetainedMapRun);
                  *(v467 + *(v194 + 20)) = v474;
                  v458 = v598;
                }

                else
                {
                  v475 = v522;
                  sub_1ADDDE4D8(v468, v522, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDDE338(v475, v458, type metadata accessor for FinalizedTimestamp);
                  (*v626)(v458, 0, 1, v469);
                  v476 = v565;
                  v477 = v565[1];
                  if (__OFSUB__(v477, *v565))
                  {
                    goto LABEL_318;
                  }

                  *(v458 + *(v619 + 20)) = v477 - *v565;
                  sub_1ADDE4044(v598);
                  v458 = v598;
                  sub_1ADE0DC8C(v598, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DC8C(v475, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v476, &qword_1EB5BA148, &qword_1AE241B60);
                  v467 = v543;
                  sub_1ADDDE4D8(v544, v543, type metadata accessor for RetainedMapRun);
                  v444 = v574;
                  v194 = v616;
                }
              }

              (*v612)(v467, 0, 1, v194);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v456 = sub_1ADF799F0(v456);
              }

              if (v457 >= v456[2])
              {
                goto LABEL_295;
              }

              ++v457;
              sub_1ADDE4820(v467, v456 + v459 + *(v625 + 36) + v627);
              v635 = v456;
              v454 = v622;
              v453 = v623;
            }

            while (v622 != v457);
            v195 = v599;
            v452 = v542;
            v451 = v583;
          }

          sub_1ADDE2B98(v453, v454);

          v506(v452, v624);
          *(v451 + v508) = v610;
          v189 = v611;
        }

        else
        {
          v610 = v609;
          v194 = v616;
        }

        v428 = v505;
        v478 = *(v505 + *(v619 + 20));
        sub_1ADE0DC8C(v505, type metadata accessor for FinalizedTimestampRange);
        v224 = __OFADD__(v524, v478);
        v524 = (v524 + v478);
        if (v224)
        {
          goto LABEL_329;
        }

        v427 = (v606 + 1);
        v609 = v610;
        v368 = v582;
        if ((v606 + 1) == v604)
        {
          goto LABEL_258;
        }
      }

LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
      goto LABEL_333;
    }

LABEL_258:

    v479 = v559;
    sub_1AE23D46C();
    if (*(v479 + v546) == v631)
    {
LABEL_19:
      v190 = (v520 - 1) & v520;
      sub_1ADDCEDE0(v559, &qword_1EB5BA440, &unk_1AE24CCB0);
      v191 = v560;
      v161 = v189;
      v192 = v526;
      sub_1ADDCEE40(v560, v526, &qword_1EB5BA2A0, &unk_1AE242200);
      v193 = *(v561 + 48);
      sub_1ADDE56CC(&v635, &v631);
      sub_1ADDE5800(&v631, v192);
      v159 = v190;
      sub_1ADDCEDE0(v191, &qword_1EB5BA2A0, &unk_1AE242200);
      sub_1ADDE5C20(&v635);
      v555(v192 + v193, v566);
      v155 = v503;
      v156 = v502;
      v160 = v501;
      v162 = v519;
      if (!v190)
      {
LABEL_5:
        v163 = v521;
        while (1)
        {
          v164 = v162 + 1;
          if (__OFADD__(v162, 1))
          {
            break;
          }

          if (v164 >= v160)
          {

            v480 = v583;
            v481 = *&v583[*(v548 + 20)];
            if (v481 > 0)
            {
              v160 = *(v495 + 8);
              v482 = swift_getObjectType();
              v483 = v496;
              sub_1ADDDE338(v480, v496, type metadata accessor for Replica);
              v484 = *(v160 + 64);
              swift_unknownObjectRetain();
              v484(v483, v481, v497, v482, v160);
              swift_unknownObjectRelease();
              v485 = sub_1AE23BFEC();
              v480 = v583;
              (*(*(v485 - 8) + 8))(v483, v485);
            }

            v486 = sub_1ADE51518(MEMORY[0x1E69E7CC0]);
            sub_1ADE0DC8C(v480, type metadata accessor for Timestamp);
            v575[1] = v486;

            v487 = v549;
            if (v499)
            {
              swift_beginAccess();
              v488 = *(v487 + 16);
              v224 = __OFADD__(v488, 1);
              v489 = v488 + 1;
              if (v224)
              {
                goto LABEL_345;
              }

              *(v487 + 16) = v489;
            }

            swift_beginAccess();
            v490 = *v527;
            v491 = v498;
            *v498 = *(v487 + 16);
            *(v491 + 8) = 0;
            v492 = *v575;
            v493 = v575[1];
            v491[2] = v490;
            v491[3] = v492;
            v491[4] = v493;

            return;
          }

          v159 = *(v156 + 8 * v164);
          ++v162;
          if (v159)
          {
            v162 = v164;
            goto LABEL_10;
          }
        }

LABEL_283:
        __break(1u);
LABEL_284:
        __break(1u);
LABEL_285:
        __break(1u);
LABEL_286:
        __break(1u);
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
LABEL_289:
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
LABEL_297:
        __break(1u);
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
        goto LABEL_307;
      }

      goto LABEL_4;
    }
  }

  v342 = v598;
  if (v340 < v339)
  {
    goto LABEL_346;
  }

  if (v339 < v340)
  {
    v622 = 0;
    v623 = v340;
    v160 = *v621;
    v343 = v339;
    v624 = v339;
    while (1)
    {
      if (v339 < 0)
      {
        goto LABEL_309;
      }

      if (v343 >= *(v160 + 16))
      {
        goto LABEL_310;
      }

      v344 = (*(v614 + 80) + 32) & ~*(v614 + 80);
      v627 = *(v614 + 72) * v343;
      v345 = v540;
      sub_1ADDCEE40(v160 + v344 + v627, v540, &qword_1EB5BA148, &qword_1AE241B60);
      v346 = v533;
      sub_1ADDCEE40(v345 + *(v625 + 36), v533, &qword_1EB5BA450, &unk_1AE25B3B0);
      if ((*v613)(v346, 1, v194) == 1)
      {
        sub_1ADDCEDE0(v346, &qword_1EB5BA450, &unk_1AE25B3B0);
        (*v626)(v342, 1, 1, v629);
        v347 = v345[1];
        if (__OFSUB__(v347, *v345))
        {
          goto LABEL_317;
        }

        *(v342 + *(v619 + 20)) = v347 - *v345;
        sub_1ADDE4044(v598);
        v342 = v598;
        sub_1ADE0DC8C(v598, type metadata accessor for FinalizedTimestampRange);
        v348 = 1;
        v349 = v531;
      }

      else
      {
        v350 = v532;
        sub_1ADDDE4D8(v346, v532, type metadata accessor for RetainedMapRun);
        v351 = v523;
        sub_1ADDCEE40(v350, v523, &qword_1EB5BA460, &qword_1AE251020);
        v352 = v629;
        if ((*v620)(v351, 1, v629) == 1)
        {
          sub_1ADDCEDE0(v351, &qword_1EB5BA460, &qword_1AE251020);
          v353 = sub_1AE23BFEC();
          v354 = v574;
          (*(*(v353 - 8) + 16))(v574, v517, v353);
          v355 = v622;
          if (__OFADD__(v609, v622))
          {
            goto LABEL_330;
          }

          v356 = v629;
          *(v354 + *(v629 + 20)) = v609 + v622;
          sub_1ADDDE338(v354, v342, type metadata accessor for FinalizedTimestamp);
          v357 = *v626;
          (*v626)(v342, 0, 1, v356);
          v345 = v540;
          v358 = v540[1];
          v359 = v358 - *v540;
          if (__OFSUB__(v358, *v540))
          {
            goto LABEL_332;
          }

          *(v342 + *(v619 + 20)) = v359;
          sub_1ADDE4044(v598);
          sub_1ADE0DC8C(v598, type metadata accessor for FinalizedTimestampRange);
          v224 = __OFADD__(v355, v359);
          v360 = v355 + v359;
          if (v224)
          {
LABEL_333:
            __break(1u);
LABEL_334:
            __break(1u);
LABEL_335:
            __break(1u);
LABEL_336:
            __break(1u);
LABEL_337:
            __break(1u);
LABEL_338:
            __break(1u);
LABEL_339:
            __break(1u);
LABEL_340:
            __break(1u);
LABEL_341:
            __break(1u);
LABEL_342:
            __break(1u);
LABEL_343:
            __break(1u);
LABEL_344:
            __break(1u);
LABEL_345:
            __break(1u);
LABEL_346:
            __break(1u);
            break;
          }

          v622 = v360;
          v361 = v531;
          sub_1ADDDE4D8(v574, v531, type metadata accessor for FinalizedTimestamp);
          v362 = v356;
          v349 = v361;
          v357(v361, 0, 1, v362);
          v194 = v616;
          v363 = *(v532 + *(v616 + 20));
          sub_1ADE0DC8C(v532, type metadata accessor for RetainedMapRun);
          v348 = 0;
          *(v349 + *(v194 + 20)) = v363;
          v342 = v598;
        }

        else
        {
          v364 = v500;
          sub_1ADDDE4D8(v351, v500, type metadata accessor for FinalizedTimestamp);
          sub_1ADDDE338(v364, v342, type metadata accessor for FinalizedTimestamp);
          (*v626)(v342, 0, 1, v352);
          v345 = v540;
          v365 = v540[1];
          if (__OFSUB__(v365, *v540))
          {
            goto LABEL_331;
          }

          *(v342 + *(v619 + 20)) = v365 - *v540;
          sub_1ADDE4044(v598);
          v342 = v598;
          sub_1ADE0DC8C(v598, type metadata accessor for FinalizedTimestampRange);
          sub_1ADE0DC8C(v364, type metadata accessor for FinalizedTimestamp);
          v349 = v531;
          sub_1ADDDE4D8(v532, v531, type metadata accessor for RetainedMapRun);
          v348 = 0;
          v194 = v616;
        }
      }

      (*v612)(v349, v348, 1, v194);
      sub_1ADDCEDE0(v345, &qword_1EB5BA148, &qword_1AE241B60);
      v366 = v160;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v366 = sub_1ADF799F0(v160);
      }

      if (v343 >= v366[2])
      {
        goto LABEL_311;
      }

      ++v343;
      v160 = v366;
      sub_1ADDE4820(v349, v366 + v344 + *(v625 + 36) + v627);
      v340 = v623;
      v339 = v624;
      v189 = v611;
      v195 = v599;
      if (v623 == v343)
      {
        v367 = v622;
        *v621 = v366;
        v499 |= v367 > 0;
        v341 = v615;
        goto LABEL_168;
      }
    }
  }

  __break(1u);
LABEL_348:
  sub_1AE23E27C();
  __break(1u);
LABEL_349:
  sub_1ADDCEDE0(v160, &qword_1EB5BA460, &qword_1AE251020);
  sub_1AE23DC5C();
  __break(1u);
}

uint64_t sub_1ADE80AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *(a1 + OBJC_IVAR___CRContext_crdtDatabase + 8);
  ObjectType = swift_getObjectType();
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a1;
  v28 = a7;
  v29 = a8;
  v30 = a9;
  v17 = *(v15 + 24);
  swift_unknownObjectRetain();
  v17(sub_1ADE88C9C, v21, &type metadata for Renames, ObjectType, v15);
  return swift_unknownObjectRelease();
}

uint64_t sub_1ADE80BF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v11 = a5;
  sub_1ADE79634(a1, a4, 0, a5, a2, a3);
  v14 = v13;
  v16 = v15;
  sub_1ADE79634(a6, 0, 1, v11, a7, a9);
  v18 = v17;
  v20 = v19;
  LOBYTE(v11) = v14 | v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v16;
  sub_1ADE88D68(v20, sub_1ADE88CD4, 0, isUniquelyReferenced_nonNull_native, &v25);

  v24 = v25;
  *a8 = v18;
  *(a8 + 8) = v11 & 1;
  *(a8 + 16) = v24;
  return result;
}

void sub_1ADE80CE8(uint64_t a1, void (**a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, char *a7, char a8, uint64_t a9, _BYTE *a10, void *a11, _BYTE *a12, uint64_t a13)
{
  v935 = a7;
  v774 = a5;
  v773 = a4;
  v893 = a3;
  v938 = a2;
  v908 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A0, &unk_1AE253DA0);
  MEMORY[0x1EEE9AC00](v908);
  v801 = v758 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v779 = v758 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v782 = v758 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v840 = v758 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v816 = v758 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v819 = v758 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v882 = v758 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v855 = v758 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v859 = v758 - v32;
  v799 = sub_1AE23C12C();
  v824 = *(v799 - 8);
  MEMORY[0x1EEE9AC00](v799);
  v798 = v758 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v932 = type metadata accessor for FinalizedTimestampRange(0);
  v881 = *(v932 - 8);
  MEMORY[0x1EEE9AC00](v932);
  v835 = v758 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v825 = v758 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v864 = v758 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v810 = v758 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v802 = v758 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v833 = v758 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v811 = v758 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v803 = v758 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v834 = v758 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v879 = v758 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v871 = v758 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v899 = v758 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v848 = v758 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v841 = v758 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v876 = v758 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v849 = v758 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v843 = v758 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v877 = v758 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v785 = v758 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v906 = v758 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v901 = v758 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v917 = v758 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v891 = v758 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v883 = v758 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v904 = v758 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v892 = v758 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v885 = v758 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v905 = v758 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v846 = v758 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v894 = v758 - v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v93 - 8);
  v778 = v758 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v95);
  v823 = v758 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v814 = v758 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v768 = v758 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v781 = v758 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v786 = v758 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v770 = v758 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v794 = v758 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v787 = v758 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v822 = v758 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v815 = v758 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v842 = v758 - v116;
  MEMORY[0x1EEE9AC00](v117);
  v861 = v758 - v118;
  MEMORY[0x1EEE9AC00](v119);
  v789 = v758 - v120;
  MEMORY[0x1EEE9AC00](v121);
  v818 = v758 - v122;
  MEMORY[0x1EEE9AC00](v123);
  v830 = v758 - v124;
  MEMORY[0x1EEE9AC00](v125);
  v791 = v758 - v126;
  MEMORY[0x1EEE9AC00](v127);
  v832 = v758 - v128;
  MEMORY[0x1EEE9AC00](v129);
  v831 = v758 - v130;
  MEMORY[0x1EEE9AC00](v131);
  v889 = v758 - v132;
  MEMORY[0x1EEE9AC00](v133);
  v812 = v758 - v134;
  MEMORY[0x1EEE9AC00](v135);
  v854 = v758 - v136;
  MEMORY[0x1EEE9AC00](v137);
  v884 = v758 - v138;
  MEMORY[0x1EEE9AC00](v139);
  v896 = v758 - v140;
  MEMORY[0x1EEE9AC00](v141);
  v827 = v758 - v142;
  MEMORY[0x1EEE9AC00](v143);
  v857 = v758 - v144;
  MEMORY[0x1EEE9AC00](v145);
  v874 = v758 - v146;
  MEMORY[0x1EEE9AC00](v147);
  v858 = v758 - v148;
  MEMORY[0x1EEE9AC00](v149);
  v860 = v758 - v150;
  MEMORY[0x1EEE9AC00](v151);
  v875 = v758 - v152;
  MEMORY[0x1EEE9AC00](v153);
  v155 = v758 - v154;
  MEMORY[0x1EEE9AC00](v156);
  v808 = v758 - v157;
  MEMORY[0x1EEE9AC00](v158);
  v853 = v758 - v159;
  MEMORY[0x1EEE9AC00](v160);
  v837 = v758 - v161;
  v929 = type metadata accessor for FinalizedTimestamp(0);
  v162 = *(v929 - 8);
  MEMORY[0x1EEE9AC00](v929);
  v767 = v758 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v164);
  v780 = v758 - v165;
  MEMORY[0x1EEE9AC00](v166);
  v839 = v758 - v167;
  MEMORY[0x1EEE9AC00](v168);
  v763 = v758 - v169;
  MEMORY[0x1EEE9AC00](v170);
  v769 = v758 - v171;
  MEMORY[0x1EEE9AC00](v172);
  v820 = v758 - v173;
  MEMORY[0x1EEE9AC00](v174);
  v764 = v758 - v175;
  MEMORY[0x1EEE9AC00](v176);
  v771 = v758 - v177;
  MEMORY[0x1EEE9AC00](v178);
  v821 = v758 - v179;
  MEMORY[0x1EEE9AC00](v180);
  v788 = v758 - v181;
  MEMORY[0x1EEE9AC00](v182);
  v817 = v758 - v183;
  MEMORY[0x1EEE9AC00](v184);
  v880 = v758 - v185;
  MEMORY[0x1EEE9AC00](v186);
  v775 = v758 - v187;
  MEMORY[0x1EEE9AC00](v188);
  v790 = v758 - v189;
  MEMORY[0x1EEE9AC00](v190);
  v851 = v758 - v191;
  MEMORY[0x1EEE9AC00](v192);
  v776 = v758 - v193;
  MEMORY[0x1EEE9AC00](v194);
  v792 = v758 - v195;
  MEMORY[0x1EEE9AC00](v196);
  v863 = v758 - v197;
  MEMORY[0x1EEE9AC00](v198);
  v826 = v758 - v199;
  MEMORY[0x1EEE9AC00](v200);
  v856 = v758 - v201;
  MEMORY[0x1EEE9AC00](v202);
  v903 = v758 - v203;
  MEMORY[0x1EEE9AC00](v204);
  v804 = v758 - v205;
  MEMORY[0x1EEE9AC00](v206);
  v828 = v758 - v207;
  MEMORY[0x1EEE9AC00](v208);
  v897 = v758 - v209;
  MEMORY[0x1EEE9AC00](v210);
  v805 = v758 - v211;
  MEMORY[0x1EEE9AC00](v212);
  v829 = v758 - v213;
  MEMORY[0x1EEE9AC00](v214);
  v898 = v758 - v215;
  MEMORY[0x1EEE9AC00](v216);
  v807 = v758 - v217;
  MEMORY[0x1EEE9AC00](v218);
  v909 = v758 - v219;
  MEMORY[0x1EEE9AC00](v220);
  v836 = v758 - v221;
  MEMORY[0x1EEE9AC00](v222);
  v813 = v758 - v223;
  v924 = type metadata accessor for RetainedMapRun(0);
  v224 = *(v924 - 8);
  MEMORY[0x1EEE9AC00](v924);
  v844 = v758 - ((v225 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v226);
  v887 = v758 - v227;
  MEMORY[0x1EEE9AC00](v228);
  v910 = v758 - v229;
  MEMORY[0x1EEE9AC00](v230);
  v868 = v758 - v231;
  v937 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v923 = *(v937 - 8);
  MEMORY[0x1EEE9AC00](v937);
  v847 = (v758 - ((v232 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v233);
  v912 = (v758 - v234);
  MEMORY[0x1EEE9AC00](v235);
  v936 = (v758 - v236);
  MEMORY[0x1EEE9AC00](v237);
  v870 = (v758 - v238);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  MEMORY[0x1EEE9AC00](v239 - 8);
  v845 = v758 - ((v240 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v241);
  v873 = v758 - v242;
  MEMORY[0x1EEE9AC00](v243);
  v888 = v758 - v244;
  MEMORY[0x1EEE9AC00](v245);
  v902 = v758 - v246;
  MEMORY[0x1EEE9AC00](v247);
  v911 = v758 - v248;
  MEMORY[0x1EEE9AC00](v249);
  v916 = v758 - v250;
  MEMORY[0x1EEE9AC00](v251);
  v869 = v758 - v252;
  MEMORY[0x1EEE9AC00](v253);
  v890 = v758 - v254;
  v255 = type metadata accessor for Replica(0);
  v797 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255);
  v865 = v758 - ((v256 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v257);
  v760 = v758 - v258;
  MEMORY[0x1EEE9AC00](v259);
  v800 = v758 - v260;
  v784 = sub_1AE23C0EC();
  v261 = *(v784 - 8);
  MEMORY[0x1EEE9AC00](v784);
  v263 = v758 - ((v262 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  MEMORY[0x1EEE9AC00](v264);
  v809 = v758 - v265;
  v922 = sub_1AE23BFEC();
  v765 = *(v922 - 8);
  MEMORY[0x1EEE9AC00](v922);
  v766 = v758 - ((v266 + 15) & 0xFFFFFFFFFFFFFFF0);
  v806 = v255;
  v267 = *(v255 + 20);
  v795 = a1;
  if (!*(a1 + v267))
  {
    return;
  }

  swift_beginAccess();
  v758[1] = a6;
  v268 = *a6;
  if (*(v268 + 16) && (v269 = sub_1ADDD8A6C(v795), (v270 & 1) != 0))
  {
    sub_1ADDE56CC(*(v268 + 56) + 24 * v269, v943);
  }

  else
  {
    memset(v943, 0, sizeof(v943));
  }

  sub_1ADDD2198(v943, &v942, &qword_1EB5BA468, &unk_1AE259210);
  if (v942)
  {
    sub_1ADDE5634(&v942, &v944);
  }

  else
  {
    v944 = MEMORY[0x1E69E7CC0];
    v945 = 0;
    swift_unknownObjectWeakInit();
    v945 = 0;
    swift_unknownObjectWeakAssign();
    sub_1ADDCEDE0(&v942, &qword_1EB5BA468, &unk_1AE259210);
  }

  swift_endAccess();
  ObjectType = swift_getObjectType();
  v272 = *(v774 + 8);
  v761 = ObjectType;
  v273 = v272();
  v274 = *(v765 + 16);
  v919 = v765 + 16;
  v918 = v274;
  v275 = v766;
  if (v273)
  {
    v276 = v766;
    v277 = &v925;
  }

  else
  {
    v276 = v766;
    v277 = &v827;
  }

  v274(v276, *(v277 - 32), v922);
  v278 = (*(v774 + 56))(v275, v761);
  if ((a8 & 1) == 0 && v278 <= v935)
  {
    v278 = v935 + 1;
    if (__OFADD__(v935, 1))
    {
      goto LABEL_549;
    }
  }

  v862 = v278;
  v758[0] = a13;
  v872 = a11;
  v777 = a9;
  sub_1AE23C10C();
  v279 = v809;
  sub_1AE23C0DC();
  (*(v261 + 8))(v263, v784);
  v783 = *(v264 + 36);
  v762 = a10;
  swift_beginAccess();
  v838 = a12;
  swift_beginAccess();
  v280 = sub_1ADE89268(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
  v759 = 0;
  v921 = (v224 + 48);
  v933 = (v162 + 48);
  v938 = (v162 + 56);
  v920 = (v224 + 56);
  v281 = v279;
  v793 = v824 + 32;
  v282 = &unk_1AE25B3B0;
  v915 = v155;
  v283 = v929;
  v284 = v924;
  v772 = v280;
  while (1)
  {
    sub_1AE23D46C();
    if (*(v281 + v783) == v941)
    {
      sub_1ADDCEDE0(v281, &qword_1EB5BA440, &unk_1AE24CCB0);
      v757 = v760;
      sub_1ADDDE338(v795, v760, type metadata accessor for Replica);
      sub_1ADDE56CC(&v944, &v941);
      swift_beginAccess();
      sub_1ADDE5800(&v941, v757);
      swift_endAccess();
      if (v759)
      {
        (*(v774 + 64))(v766, v862, v758[0], v761);
      }

      (*(v765 + 8))(v766, v922);
      sub_1ADDE5C20(&v944);
      return;
    }

    v285 = sub_1AE23D51C();
    v287 = *v286;
    v263 = *(v286 + 8);
    v285(&v941, 0);
    sub_1AE23D47C();
    v288 = v800;
    sub_1ADDDE338(v795, v800, type metadata accessor for Replica);
    swift_beginAccess();
    v290 = sub_1ADDE3EF8(&v941, v288);
    v291 = *v289;
    v852 = v287;
    if (!v291)
    {
      break;
    }

    v939 = MEMORY[0x1E69E7CC0];
    v928 = v289;
    v292 = sub_1ADDE22AC(v287, v263);
    v294 = &qword_1EB5BA450;
    v927 = v290;
    if (v292 == v293)
    {
      v295 = 0;
      v296 = v915;
      goto LABEL_48;
    }

    v311 = v894;
    v263 = v870;
    v296 = v915;
    if (v293 < v292)
    {
      goto LABEL_535;
    }

    if (v292 >= v293)
    {
      goto LABEL_536;
    }

    v895 = 0;
    v312 = *v928;
    v313 = v292;
    v931 = v292;
    v930 = v293;
    do
    {
      if (v292 < 0)
      {
        goto LABEL_458;
      }

      if (v313 >= v312[2])
      {
LABEL_459:
        __break(1u);
LABEL_460:
        __break(1u);
LABEL_461:
        __break(1u);
LABEL_462:
        __break(1u);
LABEL_463:
        __break(1u);
LABEL_464:
        __break(1u);
LABEL_465:
        __break(1u);
LABEL_466:
        __break(1u);
LABEL_467:
        __break(1u);
LABEL_468:
        __break(1u);
LABEL_469:
        __break(1u);
LABEL_470:
        __break(1u);
LABEL_471:
        __break(1u);
LABEL_472:
        __break(1u);
LABEL_473:
        __break(1u);
LABEL_474:
        __break(1u);
LABEL_475:
        __break(1u);
LABEL_476:
        __break(1u);
LABEL_477:
        __break(1u);
LABEL_478:
        __break(1u);
LABEL_479:
        __break(1u);
LABEL_480:
        __break(1u);
LABEL_481:
        __break(1u);
LABEL_482:
        __break(1u);
LABEL_483:
        __break(1u);
LABEL_484:
        __break(1u);
LABEL_485:
        __break(1u);
LABEL_486:
        __break(1u);
LABEL_487:
        __break(1u);
LABEL_488:
        __break(1u);
LABEL_489:
        __break(1u);
LABEL_490:
        __break(1u);
LABEL_491:
        __break(1u);
LABEL_492:
        __break(1u);
LABEL_493:
        __break(1u);
LABEL_494:
        __break(1u);
LABEL_495:
        __break(1u);
LABEL_496:
        __break(1u);
LABEL_497:
        __break(1u);
LABEL_498:
        __break(1u);
LABEL_499:
        __break(1u);
LABEL_500:
        __break(1u);
        goto LABEL_501;
      }

      v934 = (*(v923 + 80) + 32) & ~*(v923 + 80);
      v314 = (*(v923 + 72) * v313);
      sub_1ADDCEE40(&v314[v312 + v934], v263, &qword_1EB5BA148, &qword_1AE241B60);
      v315 = v294;
      v316 = v869;
      sub_1ADDCEE40(v263 + *(v937 + 36), v869, v315, v282);
      v317 = (*v921)(v316, 1, v924);
      v935 = v314;
      if (v317 == 1)
      {
        sub_1ADDCEDE0(v316, v315, v282);
        (*v938)(v311, 1, 1, v283);
        v318 = *(v263 + 8);
        if (__OFSUB__(v318, *v263))
        {
          goto LABEL_473;
        }

        v294 = v315;
        *(v311 + *(v932 + 20)) = v318 - *v263;
        sub_1ADDE4044(v894);
        v311 = v894;
        sub_1ADE0DC8C(v894, type metadata accessor for FinalizedTimestampRange);
        v319 = 1;
        v320 = v890;
      }

      else
      {
        v321 = v868;
        sub_1ADDDE4D8(v316, v868, type metadata accessor for RetainedMapRun);
        v322 = v837;
        sub_1ADDCEE40(v321, v837, &qword_1EB5BA460, &qword_1AE251020);
        if ((*v933)(v322, 1, v283) == 1)
        {
          sub_1ADDCEDE0(v322, &qword_1EB5BA460, &qword_1AE251020);
          v323 = v836;
          v918(v836, v893, v922);
          v263 = v895;
          if (__OFADD__(v862, v895))
          {
            goto LABEL_493;
          }

          *(v323 + *(v283 + 20)) = &v862[v895];
          sub_1ADDDE338(v323, v311, type metadata accessor for FinalizedTimestamp);
          v324 = *v938;
          (*v938)(v311, 0, 1, v283);
          v325 = v870[1];
          v326 = v325 - *v870;
          if (__OFSUB__(v325, *v870))
          {
            goto LABEL_494;
          }

          *(v311 + *(v932 + 20)) = v326;
          sub_1ADDE4044(v894);
          sub_1ADE0DC8C(v894, type metadata accessor for FinalizedTimestampRange);
          v307 = __OFADD__(v263, v326);
          v263 += v326;
          if (v307)
          {
            goto LABEL_495;
          }

          v895 = v263;
          v327 = v890;
          sub_1ADDDE4D8(v836, v890, type metadata accessor for FinalizedTimestamp);
          v283 = v929;
          v324(v327, 0, 1, v929);
          v328 = v924;
          v329 = *(v868 + *(v924 + 20));
          sub_1ADE0DC8C(v868, type metadata accessor for RetainedMapRun);
          v320 = v327;
          v319 = 0;
          v330 = *(v328 + 20);
          v263 = v870;
          *(v327 + v330) = v329;
          v311 = v894;
          v294 = &qword_1EB5BA450;
          v296 = v915;
        }

        else
        {
          v263 = v813;
          sub_1ADDDE4D8(v322, v813, type metadata accessor for FinalizedTimestamp);
          sub_1ADDDE338(v263, v311, type metadata accessor for FinalizedTimestamp);
          (*v938)(v311, 0, 1, v283);
          v331 = v870[1];
          v294 = &qword_1EB5BA450;
          if (__OFSUB__(v331, *v870))
          {
            goto LABEL_492;
          }

          *(v311 + *(v932 + 20)) = v331 - *v870;
          sub_1ADDE4044(v894);
          v311 = v894;
          sub_1ADE0DC8C(v894, type metadata accessor for FinalizedTimestampRange);
          sub_1ADE0DC8C(v263, type metadata accessor for FinalizedTimestamp);
          v332 = v890;
          sub_1ADDDE4D8(v868, v890, type metadata accessor for RetainedMapRun);
          v320 = v332;
          v319 = 0;
          v263 = v870;
        }
      }

      (*v920)(v320, v319, 1, v924);
      sub_1ADDCEDE0(v263, &qword_1EB5BA148, &qword_1AE241B60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v312 = sub_1ADF799F0(v312);
      }

      if (v313 >= v312[2])
      {
        goto LABEL_460;
      }

      ++v313;
      sub_1ADDE4820(v890, &v935[v312 + v934 + *(v937 + 36)]);
      v293 = v930;
      v282 = &unk_1AE25B3B0;
      v292 = v931;
    }

    while (v930 != v313);
    *v928 = v312;
    v284 = v924;
    v295 = v895;
LABEL_48:
    sub_1ADDE2B98(v292, v293);
    v333 = v939;
    (v927)(&v941, 0);
    swift_endAccess();
    sub_1ADE0DC8C(v800, type metadata accessor for Replica);
    v895 = v295;
    if (v295 > 0)
    {
      *v762 = 1;
    }

    v334 = *(v333 + 16);
    v335 = v333;
    v336 = v846;
    v263 = v853;
    v850 = v334;
    if (v334)
    {
      v927 = (*(v881 + 80) + 32) & ~*(v881 + 80);
      v866 = v335 + v927;
      v867 = v335;

      swift_beginAccess();
      v337 = 0;
      v338 = v852;
      while (1)
      {
        if (v337 >= *(v867 + 16))
        {
          goto LABEL_465;
        }

        v886 = v338;
        v930 = *(v881 + 72);
        v878 = v337;
        sub_1ADDDE338(v866 + v930 * v337, v336, type metadata accessor for FinalizedTimestampRange);
        sub_1ADDCEE40(v336, v263, &qword_1EB5BA460, &qword_1AE251020);
        v931 = *v933;
        if (v931(v263, 1, v283) != 1)
        {
          break;
        }

        sub_1ADDCEDE0(v263, &qword_1EB5BA460, &qword_1AE251020);
LABEL_74:
        v263 = *(v336 + *(v932 + 20));
        sub_1ADE0DC8C(v336, type metadata accessor for FinalizedTimestampRange);
        v338 = (v886 + v263);
        if (__OFADD__(v886, v263))
        {
          goto LABEL_466;
        }

        v337 = (v878 + 1);
        v263 = v853;
        if ((v878 + 1) == v850)
        {
          v263 = v867;

          v878 = *(v263 + 16);
          if (v878)
          {
            swift_beginAccess();
            v477 = 0;
            v478 = v785;
            v281 = v809;
            while (1)
            {
              if (v477 >= *(v867 + 16))
              {
                goto LABEL_496;
              }

              v886 = v477;
              sub_1ADDDE338(v866 + v930 * v477, v478, type metadata accessor for FinalizedTimestampRange);
              v479 = v812;
              sub_1ADDCEE40(v478, v812, &qword_1EB5BA460, &qword_1AE251020);
              v263 = (v931)(v479, 1, v283);
              sub_1ADDCEDE0(v479, &qword_1EB5BA460, &qword_1AE251020);
              if (v263 != 1)
              {
                goto LABEL_209;
              }

              v480 = &v862[v895];
              if (__OFADD__(v862, v895))
              {
                goto LABEL_512;
              }

              v263 = v872;
              swift_beginAccess();
              if (*v263)
              {
                v481 = *(v478 + *(v932 + 20));
                v263 = v480 + v481;
                if (__OFADD__(v480, v481))
                {
                  goto LABEL_524;
                }

                if (v263 < v480)
                {
                  goto LABEL_525;
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v940 = *v872;
                v483 = v940;
                *v872 = 0x8000000000000000;
                v484 = sub_1ADDD8A6C(v893);
                v486 = v483[2];
                v487 = (v485 & 1) == 0;
                v307 = __OFADD__(v486, v487);
                v488 = v486 + v487;
                if (v307)
                {
                  goto LABEL_526;
                }

                v489 = v485;
                if (v483[3] >= v488)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v620 = v484;
                    sub_1ADDFB81C();
                    v484 = v620;
                    v483 = v940;
                  }
                }

                else
                {
                  sub_1ADDDDED0(v488, isUniquelyReferenced_nonNull_native);
                  v483 = v940;
                  v484 = sub_1ADDD8A6C(v893);
                  if ((v489 & 1) != (v490 & 1))
                  {
                    goto LABEL_553;
                  }
                }

                *v872 = v483;
                if ((v489 & 1) == 0)
                {
                  v491 = v798;
                  v492 = v484;
                  sub_1AE23C11C();
                  v483[(v492 >> 6) + 8] |= 1 << v492;
                  sub_1ADDDE338(v893, v483[6] + *(v797 + 72) * v492, type metadata accessor for Replica);
                  (*(v824 + 32))(v483[7] + *(v824 + 72) * v492, v491, v799);
                  v493 = v483[2];
                  v307 = __OFADD__(v493, 1);
                  v494 = v493 + 1;
                  if (v307)
                  {
                    goto LABEL_534;
                  }

                  v483[2] = v494;
                }

                sub_1AE23C07C();
                v284 = v924;
              }

              swift_endAccess();
              v495 = *(v478 + *(v932 + 20));
              v496 = (v852 + v495);
              if (__OFADD__(v852, v495))
              {
                goto LABEL_513;
              }

              if (v496 < v852)
              {
                goto LABEL_514;
              }

              v497 = sub_1ADDE22AC(v852, v496);
              v499 = v497;
              if (v497 != v498)
              {
                break;
              }

              v934 = 0;
              v935 = MEMORY[0x1E69E7CC0];
LABEL_207:
              sub_1ADDE2B98(v499, v498);

              v307 = __OFADD__(v895, v934);
              v895 += v934;
              if (v307)
              {
                goto LABEL_515;
              }

              *v838 = 1;
              v478 = v785;
              v283 = v929;
              v281 = v809;
LABEL_209:
              v263 = *(v478 + *(v932 + 20));
              sub_1ADE0DC8C(v478, type metadata accessor for FinalizedTimestampRange);
              if (__OFADD__(v852, v263))
              {
                goto LABEL_497;
              }

              v852 = (v852 + v263);
              v477 = (v886 + 1);
              if ((v886 + 1) == v878)
              {

                v282 = &unk_1AE25B3B0;
                goto LABEL_330;
              }
            }

            if (v498 >= v497)
            {
              v500 = v889;
              if (v497 < v498)
              {
                v934 = 0;
                v501 = v944;
                v502 = v497;
                v900 = v480;
                v935 = MEMORY[0x1E69E7CC0];
                v907 = v497;
                v914 = v498;
                while (1)
                {
                  if (v499 < 0)
                  {
                    goto LABEL_451;
                  }

                  if (v502 >= v501[2])
                  {
                    goto LABEL_452;
                  }

                  v503 = (*(v923 + 80) + 32) & ~*(v923 + 80);
                  v928 = v501;
                  v925 = v503;
                  v926 = *(v923 + 72) * v502;
                  v504 = v501 + v503 + v926;
                  v505 = v912;
                  sub_1ADDCEE40(v504, v912, &qword_1EB5BA148, &qword_1AE241B60);
                  v506 = v505 + *(v937 + 36);
                  v507 = v888;
                  sub_1ADDCEE40(v506, v888, v294, &unk_1AE25B3B0);
                  if ((*v921)(v507, 1, v284) != 1)
                  {
                    v522 = v887;
                    sub_1ADDDE4D8(v507, v887, type metadata accessor for RetainedMapRun);
                    v523 = v522;
                    v263 = &qword_1AE251020;
                    sub_1ADDCEE40(v523, v500, &qword_1EB5BA460, &qword_1AE251020);
                    v524 = v929;
                    v525 = v931;
                    if (v931(v500, 1, v929) != 1)
                    {
                      v539 = v500;
                      v540 = v863;
                      sub_1ADDDE4D8(v539, v863, type metadata accessor for FinalizedTimestamp);
                      v541 = v877;
                      sub_1ADDDE338(v540, v877, type metadata accessor for FinalizedTimestamp);
                      v542 = *v938;
                      (*v938)(v541, 0, 1, v524);
                      v543 = v912[1];
                      v544 = v543 - *v912;
                      if (__OFSUB__(v543, *v912))
                      {
                        goto LABEL_474;
                      }

                      *(v541 + *(v932 + 20)) = v544;
                      v263 = v935;
                      v545 = *(v935 + 2);
                      v546 = v541;
                      v547 = v832;
                      if (v545)
                      {
                        v548 = v843;
                        sub_1ADDDE338(&v935[v927 + (v545 - 1) * v930], v843, type metadata accessor for FinalizedTimestampRange);
                        v263 = &qword_1AE251020;
                        sub_1ADDCEE40(v548, v547, &qword_1EB5BA460, &qword_1AE251020);
                        v549 = v929;
                        if (v931(v547, 1, v929) == 1)
                        {
                          sub_1ADDCEDE0(v547, &qword_1EB5BA460, &qword_1AE251020);
                          v550 = v831;
                          v542(v831, 1, 1, v549);
                        }

                        else
                        {
                          v572 = v792;
                          sub_1ADDDE4D8(v547, v792, type metadata accessor for FinalizedTimestamp);
                          v550 = v831;
                          v918(v831, v572, v922);
                          v573 = *(v572 + *(v549 + 20));
                          sub_1ADE0DC8C(v572, type metadata accessor for FinalizedTimestamp);
                          v574 = *(v548 + *(v932 + 20));
                          v307 = __OFADD__(v573, v574);
                          v575 = v573 + v574;
                          if (v307)
                          {
                            goto LABEL_510;
                          }

                          *(v550 + *(v549 + 20)) = v575;
                          v542(v550, 0, 1, v549);
                        }

                        v576 = *(v908 + 48);
                        v577 = v819;
                        sub_1ADDCEE40(v550, v819, &qword_1EB5BA460, &qword_1AE251020);
                        sub_1ADDCEE40(v877, v577 + v576, &qword_1EB5BA460, &qword_1AE251020);
                        v578 = v931;
                        if (v931(v577, 1, v549) == 1)
                        {
                          sub_1ADDCEDE0(v550, &qword_1EB5BA460, &qword_1AE251020);
                          v579 = v578(v577 + v576, 1, v549);
                          v294 = &qword_1EB5BA450;
                          v480 = v900;
                          if (v579 == 1)
                          {
                            sub_1ADDCEDE0(v577, &qword_1EB5BA460, &qword_1AE251020);
                            v263 = v935;
                            goto LABEL_261;
                          }

LABEL_269:
                          v586 = v577;
                          v587 = &qword_1EB5BA4A0;
                          v588 = &unk_1AE253DA0;
LABEL_270:
                          sub_1ADDCEDE0(v586, v587, v588);
                          v263 = v935;
                          goto LABEL_271;
                        }

                        v585 = v791;
                        sub_1ADDCEE40(v577, v791, &qword_1EB5BA460, &qword_1AE251020);
                        if (v578(v577 + v576, 1, v549) == 1)
                        {
                          sub_1ADDCEDE0(v831, &qword_1EB5BA460, &qword_1AE251020);
                          sub_1ADE0DC8C(v585, type metadata accessor for FinalizedTimestamp);
                          v294 = &qword_1EB5BA450;
                          v480 = v900;
                          goto LABEL_269;
                        }

                        v616 = v577 + v576;
                        v617 = v776;
                        sub_1ADDDE4D8(v616, v776, type metadata accessor for FinalizedTimestamp);
                        v294 = &qword_1EB5BA450;
                        v480 = v900;
                        if (*(v585 + *(v549 + 20)) != *(v617 + *(v549 + 20)))
                        {
                          sub_1ADE0DC8C(v617, type metadata accessor for FinalizedTimestamp);
                          sub_1ADDCEDE0(v831, &qword_1EB5BA460, &qword_1AE251020);
                          sub_1ADE0DC8C(v585, type metadata accessor for FinalizedTimestamp);
                          v586 = v577;
                          v587 = &qword_1EB5BA460;
                          v588 = &qword_1AE251020;
                          goto LABEL_270;
                        }

                        LODWORD(v913) = sub_1AE23BF8C();
                        sub_1ADE0DC8C(v617, type metadata accessor for FinalizedTimestamp);
                        sub_1ADDCEDE0(v831, &qword_1EB5BA460, &qword_1AE251020);
                        sub_1ADE0DC8C(v585, type metadata accessor for FinalizedTimestamp);
                        sub_1ADDCEDE0(v577, &qword_1EB5BA460, &qword_1AE251020);
                        v263 = v935;
                        if ((v913 & 1) == 0)
                        {
LABEL_271:
                          sub_1ADE0DC8C(v843, type metadata accessor for FinalizedTimestampRange);
                          v546 = v877;
                          goto LABEL_272;
                        }

LABEL_261:
                        v580 = *(v263 + 16);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v935 = sub_1ADF79A40(v263);
                        }

                        v284 = v924;
                        v499 = v907;
                        sub_1ADE0DC8C(v843, type metadata accessor for FinalizedTimestampRange);
                        sub_1ADE0DC8C(v877, type metadata accessor for FinalizedTimestampRange);
                        sub_1ADE0DC8C(v863, type metadata accessor for FinalizedTimestamp);
                        sub_1ADDCEDE0(v912, &qword_1EB5BA148, &qword_1AE241B60);
                        if (!v580)
                        {
                          goto LABEL_518;
                        }

                        if (v580 > *(v935 + 2))
                        {
                          goto LABEL_520;
                        }

                        v581 = &v935[v927 + (v580 - 1) * v930];
                        v582 = *(v932 + 20);
                        v583 = *&v581[v582];
                        v307 = __OFADD__(v583, v544);
                        v584 = v583 + v544;
                        if (v307)
                        {
                          goto LABEL_521;
                        }

                        *&v581[v582] = v584;
                      }

                      else
                      {
LABEL_272:
                        sub_1ADDDE338(v546, v849, type metadata accessor for FinalizedTimestampRange);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v935 = sub_1ADDE47F8(0, *(v263 + 16) + 1, 1, v263);
                        }

                        v284 = v924;
                        v499 = v907;
                        v590 = *(v935 + 2);
                        v589 = *(v935 + 3);
                        if (v590 >= v589 >> 1)
                        {
                          v935 = sub_1ADDE47F8((v589 > 1), v590 + 1, 1, v935);
                        }

                        sub_1ADE0DC8C(v877, type metadata accessor for FinalizedTimestampRange);
                        sub_1ADE0DC8C(v863, type metadata accessor for FinalizedTimestamp);
                        sub_1ADDCEDE0(v912, &qword_1EB5BA148, &qword_1AE241B60);
                        v591 = v935;
                        *(v935 + 2) = v590 + 1;
                        sub_1ADDDE4D8(v849, &v591[v927 + v590 * v930], type metadata accessor for FinalizedTimestampRange);
                      }

                      v592 = v902;
                      sub_1ADDDE4D8(v887, v902, type metadata accessor for RetainedMapRun);
                      v571 = v592;
                      v500 = v889;
                      goto LABEL_306;
                    }

                    sub_1ADDCEDE0(v500, &qword_1EB5BA460, &qword_1AE251020);
                    v526 = v851;
                    v918(v851, v893, v922);
                    if (__OFADD__(v480, v934))
                    {
                      goto LABEL_475;
                    }

                    v527 = v929;
                    *(v526 + *(v929 + 20)) = v480 + v934;
                    v528 = v876;
                    sub_1ADDDE338(v526, v876, type metadata accessor for FinalizedTimestamp);
                    v529 = *v938;
                    (*v938)(v528, 0, 1, v527);
                    v530 = v912[1];
                    v307 = __OFSUB__(v530, *v912);
                    v531 = v530 - *v912;
                    if (v307)
                    {
                      goto LABEL_476;
                    }

                    v532 = *(v932 + 20);
                    v913 = v531;
                    *(v528 + v532) = v531;
                    v263 = v935;
                    v533 = *(v935 + 2);
                    if (v533)
                    {
                      v534 = v841;
                      sub_1ADDDE338(&v935[v927 + (v533 - 1) * v930], v841, type metadata accessor for FinalizedTimestampRange);
                      v535 = v818;
                      v263 = &qword_1AE251020;
                      sub_1ADDCEE40(v534, v818, &qword_1EB5BA460, &qword_1AE251020);
                      v536 = v929;
                      if (v525(v535, 1, v929) == 1)
                      {
                        sub_1ADDCEDE0(v535, &qword_1EB5BA460, &qword_1AE251020);
                        v537 = 1;
                        v538 = v830;
                      }

                      else
                      {
                        v593 = v790;
                        sub_1ADDDE4D8(v535, v790, type metadata accessor for FinalizedTimestamp);
                        v538 = v830;
                        v918(v830, v593, v922);
                        v594 = *(v593 + *(v536 + 20));
                        sub_1ADE0DC8C(v593, type metadata accessor for FinalizedTimestamp);
                        v595 = *(v534 + *(v932 + 20));
                        v307 = __OFADD__(v594, v595);
                        v596 = v594 + v595;
                        if (v307)
                        {
                          goto LABEL_511;
                        }

                        v537 = 0;
                        *(v538 + *(v536 + 20)) = v596;
                      }

                      v529(v538, v537, 1, v536);
                      v597 = *(v908 + 48);
                      v598 = v538;
                      v599 = v538;
                      v600 = v816;
                      sub_1ADDCEE40(v598, v816, &qword_1EB5BA460, &qword_1AE251020);
                      sub_1ADDCEE40(v876, v600 + v597, &qword_1EB5BA460, &qword_1AE251020);
                      v601 = v931;
                      if (v931(v600, 1, v536) == 1)
                      {
                        sub_1ADDCEDE0(v599, &qword_1EB5BA460, &qword_1AE251020);
                        v602 = v601(v600 + v597, 1, v536);
                        v480 = v900;
                        if (v602 == 1)
                        {
                          sub_1ADDCEDE0(v600, &qword_1EB5BA460, &qword_1AE251020);
                          v526 = v851;
                          v263 = v935;
                          goto LABEL_283;
                        }

LABEL_295:
                        sub_1ADDCEDE0(v600, &qword_1EB5BA4A0, &unk_1AE253DA0);
                        v526 = v851;
LABEL_296:
                        v263 = v935;
                        goto LABEL_297;
                      }

                      v610 = v789;
                      sub_1ADDCEE40(v600, v789, &qword_1EB5BA460, &qword_1AE251020);
                      if (v601(v600 + v597, 1, v536) == 1)
                      {
                        sub_1ADDCEDE0(v830, &qword_1EB5BA460, &qword_1AE251020);
                        sub_1ADE0DC8C(v610, type metadata accessor for FinalizedTimestamp);
                        v480 = v900;
                        goto LABEL_295;
                      }

                      v618 = v600 + v597;
                      v619 = v775;
                      sub_1ADDDE4D8(v618, v775, type metadata accessor for FinalizedTimestamp);
                      v480 = v900;
                      v526 = v851;
                      if (*(v610 + *(v536 + 20)) != *(v619 + *(v536 + 20)))
                      {
                        sub_1ADE0DC8C(v619, type metadata accessor for FinalizedTimestamp);
                        sub_1ADDCEDE0(v830, &qword_1EB5BA460, &qword_1AE251020);
                        sub_1ADE0DC8C(v610, type metadata accessor for FinalizedTimestamp);
                        sub_1ADDCEDE0(v600, &qword_1EB5BA460, &qword_1AE251020);
                        goto LABEL_296;
                      }

                      LODWORD(v850) = sub_1AE23BF8C();
                      sub_1ADE0DC8C(v619, type metadata accessor for FinalizedTimestamp);
                      sub_1ADDCEDE0(v830, &qword_1EB5BA460, &qword_1AE251020);
                      sub_1ADE0DC8C(v610, type metadata accessor for FinalizedTimestamp);
                      sub_1ADDCEDE0(v600, &qword_1EB5BA460, &qword_1AE251020);
                      v263 = v935;
                      if ((v850 & 1) == 0)
                      {
LABEL_297:
                        sub_1ADE0DC8C(v841, type metadata accessor for FinalizedTimestampRange);
                        v528 = v876;
                        goto LABEL_298;
                      }

LABEL_283:
                      v603 = *(v263 + 16);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v263 = sub_1ADF79A40(v263);
                      }

                      v284 = v924;
                      v499 = v907;
                      sub_1ADE0DC8C(v841, type metadata accessor for FinalizedTimestampRange);
                      sub_1ADE0DC8C(v876, type metadata accessor for FinalizedTimestampRange);
                      if (!v603)
                      {
                        goto LABEL_519;
                      }

                      if (v603 > *(v263 + 16))
                      {
                        goto LABEL_522;
                      }

                      v604 = v263 + v927 + (v603 - 1) * v930;
                      v605 = *(v932 + 20);
                      v606 = *(v604 + v605);
                      v307 = __OFADD__(v606, v913);
                      v607 = v606 + v913;
                      if (v307)
                      {
                        goto LABEL_523;
                      }

                      *(v604 + v605) = v607;
                    }

                    else
                    {
LABEL_298:
                      sub_1ADDDE338(v528, v848, type metadata accessor for FinalizedTimestampRange);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v263 = sub_1ADDE47F8(0, *(v263 + 16) + 1, 1, v263);
                      }

                      v284 = v924;
                      v499 = v907;
                      v612 = *(v263 + 16);
                      v611 = *(v263 + 24);
                      v613 = v876;
                      if (v612 >= v611 >> 1)
                      {
                        v263 = sub_1ADDE47F8((v611 > 1), v612 + 1, 1, v263);
                        v613 = v876;
                      }

                      sub_1ADE0DC8C(v613, type metadata accessor for FinalizedTimestampRange);
                      *(v263 + 16) = v612 + 1;
                      sub_1ADDDE4D8(v848, v263 + v927 + v612 * v930, type metadata accessor for FinalizedTimestampRange);
                    }

                    sub_1ADDCEDE0(v912, &qword_1EB5BA148, &qword_1AE241B60);
                    v307 = __OFADD__(v934, v913);
                    v934 += v913;
                    if (v307)
                    {
                      goto LABEL_477;
                    }

                    v935 = v263;
                    v614 = v902;
                    sub_1ADDDE4D8(v526, v902, type metadata accessor for FinalizedTimestamp);
                    v529(v614, 0, 1, v929);
                    v615 = *(v887 + *(v284 + 20));
                    sub_1ADE0DC8C(v887, type metadata accessor for RetainedMapRun);
                    v571 = v614;
                    *(v614 + *(v284 + 20)) = v615;
                    v500 = v889;
                    goto LABEL_305;
                  }

                  sub_1ADDCEDE0(v507, v294, &unk_1AE25B3B0);
                  v508 = v880;
                  v918(v880, v893, v922);
                  v263 = v935;
                  if (__OFADD__(v480, v934))
                  {
                    goto LABEL_461;
                  }

                  v509 = v929;
                  *(v508 + *(v929 + 20)) = v480 + v934;
                  v510 = v899;
                  sub_1ADDDE338(v508, v899, type metadata accessor for FinalizedTimestamp);
                  v511 = *v938;
                  (*v938)(v510, 0, 1, v509);
                  v512 = v912[1];
                  v307 = __OFSUB__(v512, *v912);
                  v513 = v512 - *v912;
                  if (v307)
                  {
                    goto LABEL_462;
                  }

                  v514 = *(v932 + 20);
                  v913 = v513;
                  *(v510 + v514) = v513;
                  v515 = *(v263 + 16);
                  v516 = v510;
                  if (!v515)
                  {
                    goto LABEL_249;
                  }

                  v517 = v871;
                  sub_1ADDDE338(v263 + v927 + (v515 - 1) * v930, v871, type metadata accessor for FinalizedTimestampRange);
                  v518 = v842;
                  sub_1ADDCEE40(v517, v842, &qword_1EB5BA460, &qword_1AE251020);
                  v519 = v929;
                  if (v931(v518, 1, v929) == 1)
                  {
                    sub_1ADDCEDE0(v518, &qword_1EB5BA460, &qword_1AE251020);
                    v520 = 1;
                    v521 = v861;
                  }

                  else
                  {
                    v551 = v817;
                    sub_1ADDDE4D8(v518, v817, type metadata accessor for FinalizedTimestamp);
                    v521 = v861;
                    v918(v861, v551, v922);
                    v552 = *(v551 + *(v519 + 20));
                    sub_1ADE0DC8C(v551, type metadata accessor for FinalizedTimestamp);
                    v553 = *(v517 + *(v932 + 20));
                    v307 = __OFADD__(v552, v553);
                    v554 = v552 + v553;
                    if (v307)
                    {
                      goto LABEL_485;
                    }

                    v520 = 0;
                    *(v521 + *(v519 + 20)) = v554;
                  }

                  v511(v521, v520, 1, v519);
                  v555 = *(v908 + 48);
                  v556 = v521;
                  v557 = v521;
                  v558 = v840;
                  sub_1ADDCEE40(v556, v840, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADDCEE40(v899, v558 + v555, &qword_1EB5BA460, &qword_1AE251020);
                  v559 = v931;
                  if (v931(v558, 1, v519) == 1)
                  {
                    break;
                  }

                  v567 = v815;
                  sub_1ADDCEE40(v558, v815, &qword_1EB5BA460, &qword_1AE251020);
                  if (v559(v558 + v555, 1, v519) == 1)
                  {
                    sub_1ADDCEDE0(v861, &qword_1EB5BA460, &qword_1AE251020);
                    sub_1ADE0DC8C(v567, type metadata accessor for FinalizedTimestamp);
                    v508 = v880;
LABEL_246:
                    sub_1ADDCEDE0(v558, &qword_1EB5BA4A0, &unk_1AE253DA0);
                    v516 = v899;
                    v284 = v924;
                    v480 = v900;
                    goto LABEL_247;
                  }

                  v608 = v558 + v555;
                  v609 = v788;
                  sub_1ADDDE4D8(v608, v788, type metadata accessor for FinalizedTimestamp);
                  v480 = v900;
                  v508 = v880;
                  if (*(v567 + *(v519 + 20)) == *(v609 + *(v519 + 20)))
                  {
                    LODWORD(v850) = sub_1AE23BF8C();
                    sub_1ADE0DC8C(v609, type metadata accessor for FinalizedTimestamp);
                    sub_1ADDCEDE0(v861, &qword_1EB5BA460, &qword_1AE251020);
                    sub_1ADE0DC8C(v567, type metadata accessor for FinalizedTimestamp);
                    sub_1ADDCEDE0(v558, &qword_1EB5BA460, &qword_1AE251020);
                    v516 = v899;
                    v284 = v924;
                    v499 = v907;
                    v263 = v935;
                    if (v850)
                    {
                      goto LABEL_238;
                    }

                    goto LABEL_248;
                  }

                  sub_1ADE0DC8C(v609, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v861, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADE0DC8C(v567, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v558, &qword_1EB5BA460, &qword_1AE251020);
                  v516 = v899;
                  v284 = v924;
LABEL_247:
                  v499 = v907;
                  v263 = v935;
LABEL_248:
                  sub_1ADE0DC8C(v871, type metadata accessor for FinalizedTimestampRange);
LABEL_249:
                  sub_1ADDDE338(v516, v879, type metadata accessor for FinalizedTimestampRange);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v263 = sub_1ADDE47F8(0, *(v263 + 16) + 1, 1, v263);
                  }

                  v569 = *(v263 + 16);
                  v568 = *(v263 + 24);
                  if (v569 >= v568 >> 1)
                  {
                    v263 = sub_1ADDE47F8((v568 > 1), v569 + 1, 1, v263);
                  }

                  sub_1ADE0DC8C(v899, type metadata accessor for FinalizedTimestampRange);
                  *(v263 + 16) = v569 + 1;
                  sub_1ADDDE4D8(v879, v263 + v927 + v569 * v930, type metadata accessor for FinalizedTimestampRange);
                  v565 = v913;
LABEL_254:
                  sub_1ADDCEDE0(v912, &qword_1EB5BA148, &qword_1AE241B60);
                  v307 = __OFADD__(v934, v565);
                  v934 += v565;
                  v500 = v889;
                  if (v307)
                  {
                    goto LABEL_463;
                  }

                  v935 = v263;
                  v570 = v902;
                  sub_1ADDDE4D8(v508, v902, type metadata accessor for FinalizedTimestamp);
                  v511(v570, 0, 1, v929);
                  v571 = v570;
                  *(v570 + *(v284 + 20)) = 1;
LABEL_305:
                  v294 = &qword_1EB5BA450;
LABEL_306:
                  v501 = v928;
                  (*v920)(v571, 0, 1, v284);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v501 = sub_1ADF799F0(v501);
                  }

                  if (v502 >= v501[2])
                  {
                    goto LABEL_453;
                  }

                  ++v502;
                  sub_1ADDE4820(v902, v501 + v925 + *(v937 + 36) + v926);
                  v944 = v501;
                  v498 = v914;
                  if (v914 == v502)
                  {
                    goto LABEL_207;
                  }
                }

                sub_1ADDCEDE0(v557, &qword_1EB5BA460, &qword_1AE251020);
                v560 = v559(v558 + v555, 1, v519);
                v508 = v880;
                if (v560 == 1)
                {
                  sub_1ADDCEDE0(v558, &qword_1EB5BA460, &qword_1AE251020);
                  v284 = v924;
                  v480 = v900;
                  v499 = v907;
                  v263 = v935;
LABEL_238:
                  v561 = *(v263 + 16);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v263 = sub_1ADF79A40(v263);
                  }

                  sub_1ADE0DC8C(v871, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DC8C(v899, type metadata accessor for FinalizedTimestampRange);
                  if (!v561)
                  {
                    goto LABEL_503;
                  }

                  if (v561 > *(v263 + 16))
                  {
                    goto LABEL_504;
                  }

                  v562 = v263 + v927 + (v561 - 1) * v930;
                  v563 = *(v932 + 20);
                  v564 = *(v562 + v563);
                  v565 = v913;
                  v307 = __OFADD__(v564, v913);
                  v566 = v564 + v913;
                  if (v307)
                  {
                    goto LABEL_505;
                  }

                  *(v562 + v563) = v566;
                  goto LABEL_254;
                }

                goto LABEL_246;
              }

              goto LABEL_528;
            }

LABEL_527:
            __break(1u);
LABEL_528:
            __break(1u);
LABEL_529:
            __break(1u);
LABEL_530:
            __break(1u);
LABEL_531:
            __break(1u);
LABEL_532:
            __break(1u);
LABEL_533:
            __break(1u);
LABEL_534:
            __break(1u);
LABEL_535:
            __break(1u);
LABEL_536:
            __break(1u);
LABEL_537:
            __break(1u);
LABEL_538:
            __break(1u);
LABEL_539:
            __break(1u);
LABEL_540:
            __break(1u);
LABEL_541:
            __break(1u);
LABEL_542:
            __break(1u);
LABEL_543:
            __break(1u);
LABEL_544:
            __break(1u);
LABEL_545:
            __break(1u);
LABEL_546:
            __break(1u);
            goto LABEL_547;
          }

          goto LABEL_319;
        }
      }

      v339 = v909;
      sub_1ADDDE4D8(v263, v909, type metadata accessor for FinalizedTimestamp);
      v263 = v872;
      swift_beginAccess();
      if (*v263)
      {
        v340 = v865;
        v918(v865, v339, v922);
        *(v340 + *(v806 + 20)) = 0;
        v263 = v808;
        sub_1ADDCEE40(v336, v808, &qword_1EB5BA460, &qword_1AE251020);
        if (v931(v263, 1, v283) == 1)
        {
          goto LABEL_552;
        }

        v341 = v807;
        sub_1ADDDE4D8(v263, v807, type metadata accessor for FinalizedTimestamp);
        v263 = *(v341 + *(v283 + 20));
        sub_1ADE0DC8C(v341, type metadata accessor for FinalizedTimestamp);
        v342 = *(v336 + *(v932 + 20));
        if (__OFADD__(v263, v342))
        {
          goto LABEL_498;
        }

        if ((v263 + v342) < v263)
        {
          goto LABEL_499;
        }

        v343 = v872;
        v344 = swift_isUniquelyReferenced_nonNull_native();
        v940 = *v343;
        v345 = v940;
        *v343 = 0x8000000000000000;
        v346 = sub_1ADDD8A6C(v865);
        v348 = v345[2];
        v349 = (v347 & 1) == 0;
        v307 = __OFADD__(v348, v349);
        v350 = v348 + v349;
        if (v307)
        {
          goto LABEL_500;
        }

        v351 = v347;
        if (v345[3] >= v350)
        {
          if ((v344 & 1) == 0)
          {
            v476 = v346;
            sub_1ADDFB81C();
            v346 = v476;
            v345 = v940;
          }
        }

        else
        {
          sub_1ADDDDED0(v350, v344);
          v345 = v940;
          v346 = sub_1ADDD8A6C(v865);
          if ((v351 & 1) != (v352 & 1))
          {
            goto LABEL_553;
          }
        }

        v283 = v929;
        *v872 = v345;
        if ((v351 & 1) == 0)
        {
          v353 = v798;
          v354 = v346;
          sub_1AE23C11C();
          v345[(v354 >> 6) + 8] |= 1 << v354;
          sub_1ADDDE338(v865, v345[6] + *(v797 + 72) * v354, type metadata accessor for Replica);
          (*(v824 + 32))(v345[7] + *(v824 + 72) * v354, v353, v799);
          v355 = v345[2];
          v307 = __OFADD__(v355, 1);
          v356 = v355 + 1;
          if (v307)
          {
            goto LABEL_516;
          }

          v345[2] = v356;
        }

        sub_1AE23C07C();
        swift_endAccess();
        sub_1ADE0DC8C(v865, type metadata accessor for Replica);
        v336 = v846;
        v284 = v924;
      }

      else
      {
        swift_endAccess();
      }

      v357 = MEMORY[0x1E69E7CC0];
      v358 = v903;
      v359 = *(v336 + *(v932 + 20));
      v360 = (v886 + v359);
      if (__OFADD__(v886, v359))
      {
        goto LABEL_480;
      }

      if (v360 < v886)
      {
        goto LABEL_481;
      }

      v907 = *(v909 + *(v283 + 20));
      v361 = sub_1ADDE22AC(v886, v360);
      v934 = v357;
      if (v361 == v362)
      {
LABEL_73:
        sub_1ADDE2B98(v361, v362);
        sub_1ADE0DC8C(v909, type metadata accessor for FinalizedTimestamp);

        *v838 = 1;
        v336 = v846;
        goto LABEL_74;
      }

      if (v362 >= v361)
      {
        if (v361 < v362)
        {
          v928 = 0;
          v363 = v944;
          v263 = v361;
          v934 = v357;
          v914 = v361;
          v913 = v362;
          while (2)
          {
            if (v361 < 0)
            {
              __break(1u);
LABEL_446:
              __break(1u);
LABEL_447:
              __break(1u);
LABEL_448:
              __break(1u);
LABEL_449:
              __break(1u);
LABEL_450:
              __break(1u);
LABEL_451:
              __break(1u);
LABEL_452:
              __break(1u);
LABEL_453:
              __break(1u);
LABEL_454:
              __break(1u);
LABEL_455:
              __break(1u);
LABEL_456:
              __break(1u);
LABEL_457:
              __break(1u);
LABEL_458:
              __break(1u);
              goto LABEL_459;
            }

            if (v263 >= *(v363 + 2))
            {
              goto LABEL_446;
            }

            v364 = (*(v923 + 80) + 32) & ~*(v923 + 80);
            v935 = v363;
            v925 = v364;
            v926 = *(v923 + 72) * v263;
            v365 = v936;
            sub_1ADDCEE40(&v363[v364 + v926], v936, &qword_1EB5BA148, &qword_1AE241B60);
            v366 = v365 + *(v937 + 36);
            v367 = v911;
            sub_1ADDCEE40(v366, v911, v294, v282);
            if ((*v921)(v367, 1, v284) != 1)
            {
              v380 = v910;
              sub_1ADDDE4D8(v367, v910, type metadata accessor for RetainedMapRun);
              sub_1ADDCEE40(v380, v296, &qword_1EB5BA460, &qword_1AE251020);
              if (v931(v296, 1, v283) != 1)
              {
                v394 = v282;
                v395 = v296;
                v396 = v898;
                sub_1ADDDE4D8(v296, v898, type metadata accessor for FinalizedTimestamp);
                v397 = v396;
                v398 = v283;
                v399 = v905;
                sub_1ADDDE338(v397, v905, type metadata accessor for FinalizedTimestamp);
                v400 = *v938;
                (*v938)(v399, 0, 1, v398);
                v401 = v936[1];
                v307 = __OFSUB__(v401, *v936);
                v402 = v401 - *v936;
                if (v307)
                {
                  goto LABEL_454;
                }

                *(v399 + *(v932 + 20)) = v402;
                v403 = v934;
                v404 = *(v934 + 16);
                if (v404)
                {
                  v900 = v402;
                  v405 = v885;
                  sub_1ADDDE338(v934 + v927 + (v404 - 1) * v930, v885, type metadata accessor for FinalizedTimestampRange);
                  v406 = v860;
                  sub_1ADDCEE40(v405, v860, &qword_1EB5BA460, &qword_1AE251020);
                  v407 = v929;
                  if (v931(v406, 1, v929) == 1)
                  {
                    sub_1ADDCEDE0(v406, &qword_1EB5BA460, &qword_1AE251020);
                    v408 = v875;
                    v400(v875, 1, 1, v407);
                    v409 = v858;
                  }

                  else
                  {
                    v429 = v829;
                    sub_1ADDDE4D8(v406, v829, type metadata accessor for FinalizedTimestamp);
                    v430 = v875;
                    v918(v875, v429, v922);
                    v431 = *(v429 + *(v407 + 20));
                    sub_1ADE0DC8C(v429, type metadata accessor for FinalizedTimestamp);
                    v432 = *(v405 + *(v932 + 20));
                    v307 = __OFADD__(v431, v432);
                    v433 = v431 + v432;
                    if (v307)
                    {
                      goto LABEL_478;
                    }

                    *(v430 + *(v407 + 20)) = v433;
                    v400(v430, 0, 1, v407);
                    v409 = v858;
                    v408 = v430;
                  }

                  v434 = *(v908 + 48);
                  v435 = v859;
                  sub_1ADDCEE40(v408, v859, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADDCEE40(v905, v435 + v434, &qword_1EB5BA460, &qword_1AE251020);
                  v436 = v931;
                  if (v931(v435, 1, v407) == 1)
                  {
                    sub_1ADDCEDE0(v408, &qword_1EB5BA460, &qword_1AE251020);
                    v437 = v436(v435 + v434, 1, v407);
                    v394 = &unk_1AE25B3B0;
                    v358 = v903;
                    if (v437 == 1)
                    {
                      sub_1ADDCEDE0(v435, &qword_1EB5BA460, &qword_1AE251020);
                      v395 = v915;
                      v294 = &qword_1EB5BA450;
                      v403 = v934;
                      goto LABEL_125;
                    }

LABEL_133:
                    sub_1ADDCEDE0(v435, &qword_1EB5BA4A0, &unk_1AE253DA0);
                    v395 = v915;
                    v294 = &qword_1EB5BA450;
LABEL_134:
                    v403 = v934;
                    goto LABEL_135;
                  }

                  sub_1ADDCEE40(v435, v409, &qword_1EB5BA460, &qword_1AE251020);
                  if (v436(v435 + v434, 1, v407) == 1)
                  {
                    sub_1ADDCEDE0(v875, &qword_1EB5BA460, &qword_1AE251020);
                    sub_1ADE0DC8C(v409, type metadata accessor for FinalizedTimestamp);
                    v394 = &unk_1AE25B3B0;
                    v358 = v903;
                    goto LABEL_133;
                  }

                  v471 = v435 + v434;
                  v472 = v805;
                  sub_1ADDDE4D8(v471, v805, type metadata accessor for FinalizedTimestamp);
                  v394 = &unk_1AE25B3B0;
                  if (*(v409 + *(v407 + 20)) != *(v472 + *(v407 + 20)))
                  {
                    sub_1ADE0DC8C(v472, type metadata accessor for FinalizedTimestamp);
                    sub_1ADDCEDE0(v875, &qword_1EB5BA460, &qword_1AE251020);
                    sub_1ADE0DC8C(v409, type metadata accessor for FinalizedTimestamp);
                    sub_1ADDCEDE0(v435, &qword_1EB5BA460, &qword_1AE251020);
                    v395 = v915;
                    v294 = &qword_1EB5BA450;
                    v358 = v903;
                    goto LABEL_134;
                  }

                  v473 = sub_1AE23BF8C();
                  sub_1ADE0DC8C(v472, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v875, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADE0DC8C(v409, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v435, &qword_1EB5BA460, &qword_1AE251020);
                  v395 = v915;
                  v294 = &qword_1EB5BA450;
                  v358 = v903;
                  v403 = v934;
                  if ((v473 & 1) == 0)
                  {
LABEL_135:
                    sub_1ADE0DC8C(v885, type metadata accessor for FinalizedTimestampRange);
                    v399 = v905;
                    goto LABEL_136;
                  }

LABEL_125:
                  v438 = v403[2];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v403 = sub_1ADF79A40(v403);
                  }

                  v284 = v924;
                  sub_1ADE0DC8C(v885, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DC8C(v905, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DC8C(v898, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v936, &qword_1EB5BA148, &qword_1AE241B60);
                  if (!v438)
                  {
                    goto LABEL_486;
                  }

                  if (v438 > v403[2])
                  {
                    goto LABEL_488;
                  }

                  v439 = v403 + v927 + (v438 - 1) * v930;
                  v440 = *(v932 + 20);
                  v441 = *(v439 + v440);
                  v307 = __OFADD__(v441, v900);
                  v442 = v441 + v900;
                  if (v307)
                  {
                    goto LABEL_489;
                  }

                  v934 = v403;
                  *(v439 + v440) = v442;
                  v296 = v395;
                  v282 = &unk_1AE25B3B0;
                }

                else
                {
LABEL_136:
                  sub_1ADDDE338(v399, v892, type metadata accessor for FinalizedTimestampRange);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v934 = sub_1ADDE47F8(0, v403[2] + 1, 1, v403);
                  }

                  v284 = v924;
                  v296 = v395;
                  v444 = *(v934 + 16);
                  v443 = *(v934 + 24);
                  v282 = v394;
                  if (v444 >= v443 >> 1)
                  {
                    v934 = sub_1ADDE47F8((v443 > 1), v444 + 1, 1, v934);
                  }

                  sub_1ADE0DC8C(v905, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DC8C(v898, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v936, &qword_1EB5BA148, &qword_1AE241B60);
                  v445 = v934;
                  *(v934 + 16) = v444 + 1;
                  sub_1ADDDE4D8(v892, v445 + v927 + v444 * v930, type metadata accessor for FinalizedTimestampRange);
                }

                v428 = v916;
                sub_1ADDDE4D8(v910, v916, type metadata accessor for RetainedMapRun);
                v283 = v929;
                goto LABEL_170;
              }

              sub_1ADDCEDE0(v296, &qword_1EB5BA460, &qword_1AE251020);
              v381 = v897;
              v918(v897, v909, v922);
              if (__OFADD__(v907, v928))
              {
                goto LABEL_455;
              }

              *(v381 + *(v283 + 20)) = v928 + v907;
              v382 = v904;
              sub_1ADDDE338(v381, v904, type metadata accessor for FinalizedTimestamp);
              v383 = *v938;
              (*v938)(v382, 0, 1, v283);
              v384 = v936[1];
              v385 = v384 - *v936;
              if (__OFSUB__(v384, *v936))
              {
                goto LABEL_456;
              }

              *(v382 + *(v932 + 20)) = v385;
              v386 = v934;
              v387 = *(v934 + 16);
              if (v387)
              {
                v388 = v283;
                v389 = v883;
                sub_1ADDDE338(v934 + v927 + (v387 - 1) * v930, v883, type metadata accessor for FinalizedTimestampRange);
                v390 = v857;
                sub_1ADDCEE40(v389, v857, &qword_1EB5BA460, &qword_1AE251020);
                v391 = v931(v390, 1, v388);
                v900 = v385;
                if (v391 == 1)
                {
                  sub_1ADDCEDE0(v390, &qword_1EB5BA460, &qword_1AE251020);
                  v392 = 1;
                  v393 = v874;
                }

                else
                {
                  v446 = v828;
                  sub_1ADDDE4D8(v390, v828, type metadata accessor for FinalizedTimestamp);
                  v447 = v874;
                  v918(v874, v446, v922);
                  v448 = *(v446 + *(v388 + 20));
                  sub_1ADE0DC8C(v446, type metadata accessor for FinalizedTimestamp);
                  v449 = *(v389 + *(v932 + 20));
                  v307 = __OFADD__(v448, v449);
                  v450 = v448 + v449;
                  if (v307)
                  {
                    goto LABEL_479;
                  }

                  v392 = 0;
                  *(v447 + *(v388 + 20)) = v450;
                  v393 = v447;
                }

                v383(v393, v392, 1, v388);
                v451 = *(v908 + 48);
                v452 = v855;
                sub_1ADDCEE40(v393, v855, &qword_1EB5BA460, &qword_1AE251020);
                sub_1ADDCEE40(v904, v452 + v451, &qword_1EB5BA460, &qword_1AE251020);
                v453 = v931;
                if (v931(v452, 1, v388) == 1)
                {
                  sub_1ADDCEDE0(v393, &qword_1EB5BA460, &qword_1AE251020);
                  v282 = &unk_1AE25B3B0;
                  if (v453(v452 + v451, 1, v388) == 1)
                  {
                    sub_1ADDCEDE0(v452, &qword_1EB5BA460, &qword_1AE251020);
                    v358 = v903;
                    v386 = v934;
                    v385 = v900;
                    goto LABEL_147;
                  }

LABEL_159:
                  sub_1ADDCEDE0(v452, &qword_1EB5BA4A0, &unk_1AE253DA0);
                  v358 = v903;
LABEL_160:
                  v386 = v934;
                  v385 = v900;
                  goto LABEL_161;
                }

                v462 = v827;
                sub_1ADDCEE40(v452, v827, &qword_1EB5BA460, &qword_1AE251020);
                if (v453(v452 + v451, 1, v388) == 1)
                {
                  sub_1ADDCEDE0(v874, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADE0DC8C(v462, type metadata accessor for FinalizedTimestamp);
                  v282 = &unk_1AE25B3B0;
                  goto LABEL_159;
                }

                v474 = v452 + v451;
                v475 = v804;
                sub_1ADDDE4D8(v474, v804, type metadata accessor for FinalizedTimestamp);
                v282 = &unk_1AE25B3B0;
                v358 = v903;
                if (*(v462 + *(v388 + 20)) != *(v475 + *(v388 + 20)))
                {
                  sub_1ADE0DC8C(v475, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v874, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADE0DC8C(v462, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v452, &qword_1EB5BA460, &qword_1AE251020);
                  goto LABEL_160;
                }

                v796 = sub_1AE23BF8C();
                sub_1ADE0DC8C(v475, type metadata accessor for FinalizedTimestamp);
                sub_1ADDCEDE0(v874, &qword_1EB5BA460, &qword_1AE251020);
                sub_1ADE0DC8C(v462, type metadata accessor for FinalizedTimestamp);
                sub_1ADDCEDE0(v452, &qword_1EB5BA460, &qword_1AE251020);
                v386 = v934;
                v385 = v900;
                if ((v796 & 1) == 0)
                {
LABEL_161:
                  sub_1ADE0DC8C(v883, type metadata accessor for FinalizedTimestampRange);
                  v382 = v904;
                  goto LABEL_162;
                }

LABEL_147:
                v454 = v386[2];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v386 = sub_1ADF79A40(v386);
                }

                v284 = v924;
                sub_1ADE0DC8C(v883, type metadata accessor for FinalizedTimestampRange);
                sub_1ADE0DC8C(v904, type metadata accessor for FinalizedTimestampRange);
                if (!v454)
                {
                  goto LABEL_487;
                }

                if (v454 > v386[2])
                {
                  goto LABEL_490;
                }

                v455 = v386 + v927 + (v454 - 1) * v930;
                v456 = *(v932 + 20);
                v457 = *(v455 + v456);
                v307 = __OFADD__(v457, v385);
                v458 = v457 + v385;
                if (v307)
                {
                  goto LABEL_491;
                }

                *(v455 + v456) = v458;
              }

              else
              {
LABEL_162:
                sub_1ADDDE338(v382, v891, type metadata accessor for FinalizedTimestampRange);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v386 = sub_1ADDE47F8(0, v386[2] + 1, 1, v386);
                }

                v284 = v924;
                v464 = v386[2];
                v463 = v386[3];
                v465 = v904;
                if (v464 >= v463 >> 1)
                {
                  v386 = sub_1ADDE47F8((v463 > 1), v464 + 1, 1, v386);
                  v465 = v904;
                }

                sub_1ADE0DC8C(v465, type metadata accessor for FinalizedTimestampRange);
                v386[2] = v464 + 1;
                sub_1ADDDE4D8(v891, v386 + v927 + v464 * v930, type metadata accessor for FinalizedTimestampRange);
              }

              sub_1ADDCEDE0(v936, &qword_1EB5BA148, &qword_1AE241B60);
              v307 = __OFADD__(v928, v385);
              v928 = (v928 + v385);
              v283 = v929;
              v466 = v916;
              if (v307)
              {
                goto LABEL_457;
              }

              v934 = v386;
              sub_1ADDDE4D8(v897, v916, type metadata accessor for FinalizedTimestamp);
              v383(v466, 0, 1, v283);
              v467 = *(v910 + *(v284 + 20));
              sub_1ADE0DC8C(v910, type metadata accessor for RetainedMapRun);
              *(v916 + *(v284 + 20)) = v467;
              v428 = v916;
              goto LABEL_169;
            }

            sub_1ADDCEDE0(v367, v294, v282);
            v918(v358, v909, v922);
            v368 = v934;
            if (__OFADD__(v907, v928))
            {
              goto LABEL_448;
            }

            *(v358 + *(v283 + 20)) = v928 + v907;
            v369 = v917;
            sub_1ADDDE338(v358, v917, type metadata accessor for FinalizedTimestamp);
            v370 = *v938;
            (*v938)(v369, 0, 1, v283);
            v371 = v936[1];
            v372 = v371 - *v936;
            if (__OFSUB__(v371, *v936))
            {
              goto LABEL_449;
            }

            *(v369 + *(v932 + 20)) = v372;
            v373 = v368[2];
            if (!v373)
            {
              goto LABEL_113;
            }

            v374 = v283;
            v375 = v901;
            sub_1ADDDE338(v368 + v927 + (v373 - 1) * v930, v901, type metadata accessor for FinalizedTimestampRange);
            v376 = v884;
            sub_1ADDCEE40(v375, v884, &qword_1EB5BA460, &qword_1AE251020);
            v377 = v931(v376, 1, v374);
            v900 = v372;
            if (v377 == 1)
            {
              sub_1ADDCEDE0(v376, &qword_1EB5BA460, &qword_1AE251020);
              v378 = 1;
              v379 = v896;
            }

            else
            {
              v410 = v856;
              sub_1ADDDE4D8(v376, v856, type metadata accessor for FinalizedTimestamp);
              v379 = v896;
              v918(v896, v410, v922);
              v411 = *(v410 + *(v374 + 20));
              sub_1ADE0DC8C(v410, type metadata accessor for FinalizedTimestamp);
              v412 = *(v375 + *(v932 + 20));
              v307 = __OFADD__(v411, v412);
              v413 = v411 + v412;
              if (v307)
              {
                goto LABEL_464;
              }

              v378 = 0;
              *(v379 + *(v374 + 20)) = v413;
            }

            v370(v379, v378, 1, v374);
            v414 = *(v908 + 48);
            v415 = v379;
            v416 = v379;
            v417 = v882;
            sub_1ADDCEE40(v415, v882, &qword_1EB5BA460, &qword_1AE251020);
            sub_1ADDCEE40(v917, v417 + v414, &qword_1EB5BA460, &qword_1AE251020);
            v418 = v931;
            if (v931(v417, 1, v374) == 1)
            {
              sub_1ADDCEDE0(v416, &qword_1EB5BA460, &qword_1AE251020);
              v282 = &unk_1AE25B3B0;
              if (v418(v417 + v414, 1, v374) == 1)
              {
                sub_1ADDCEDE0(v417, &qword_1EB5BA460, &qword_1AE251020);
                v284 = v924;
                v358 = v903;
                v368 = v934;
                v372 = v900;
LABEL_103:
                v419 = v368[2];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v368 = sub_1ADF79A40(v368);
                }

                sub_1ADE0DC8C(v901, type metadata accessor for FinalizedTimestampRange);
                sub_1ADE0DC8C(v917, type metadata accessor for FinalizedTimestampRange);
                if (!v419)
                {
                  goto LABEL_470;
                }

                if (v419 > v368[2])
                {
                  goto LABEL_471;
                }

                v420 = v368 + v927 + (v419 - 1) * v930;
                v421 = *(v932 + 20);
                v422 = *(v420 + v421);
                v307 = __OFADD__(v422, v372);
                v423 = v422 + v372;
                if (v307)
                {
                  goto LABEL_472;
                }

                *(v420 + v421) = v423;
                goto LABEL_118;
              }

LABEL_111:
              sub_1ADDCEDE0(v417, &qword_1EB5BA4A0, &unk_1AE253DA0);
              v284 = v924;
              v358 = v903;
              v368 = v934;
              v372 = v900;
            }

            else
            {
              v424 = v854;
              sub_1ADDCEE40(v417, v854, &qword_1EB5BA460, &qword_1AE251020);
              if (v418(v417 + v414, 1, v374) == 1)
              {
                sub_1ADDCEDE0(v896, &qword_1EB5BA460, &qword_1AE251020);
                sub_1ADE0DC8C(v424, type metadata accessor for FinalizedTimestamp);
                v282 = &unk_1AE25B3B0;
                goto LABEL_111;
              }

              v459 = v417 + v414;
              v460 = v826;
              sub_1ADDDE4D8(v459, v826, type metadata accessor for FinalizedTimestamp);
              v282 = &unk_1AE25B3B0;
              v372 = v900;
              if (*(v424 + *(v374 + 20)) == *(v460 + *(v374 + 20)))
              {
                v461 = sub_1AE23BF8C();
                sub_1ADE0DC8C(v460, type metadata accessor for FinalizedTimestamp);
                sub_1ADDCEDE0(v896, &qword_1EB5BA460, &qword_1AE251020);
                sub_1ADE0DC8C(v424, type metadata accessor for FinalizedTimestamp);
                sub_1ADDCEDE0(v417, &qword_1EB5BA460, &qword_1AE251020);
                v284 = v924;
                v358 = v903;
                v368 = v934;
                if (v461)
                {
                  goto LABEL_103;
                }
              }

              else
              {
                sub_1ADE0DC8C(v460, type metadata accessor for FinalizedTimestamp);
                sub_1ADDCEDE0(v896, &qword_1EB5BA460, &qword_1AE251020);
                sub_1ADE0DC8C(v424, type metadata accessor for FinalizedTimestamp);
                sub_1ADDCEDE0(v417, &qword_1EB5BA460, &qword_1AE251020);
                v284 = v924;
                v358 = v903;
                v368 = v934;
              }
            }

            sub_1ADE0DC8C(v901, type metadata accessor for FinalizedTimestampRange);
            v369 = v917;
LABEL_113:
            sub_1ADDDE338(v369, v906, type metadata accessor for FinalizedTimestampRange);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v368 = sub_1ADDE47F8(0, v368[2] + 1, 1, v368);
            }

            v426 = v368[2];
            v425 = v368[3];
            v427 = v917;
            if (v426 >= v425 >> 1)
            {
              v368 = sub_1ADDE47F8((v425 > 1), v426 + 1, 1, v368);
              v427 = v917;
            }

            sub_1ADE0DC8C(v427, type metadata accessor for FinalizedTimestampRange);
            v368[2] = v426 + 1;
            sub_1ADDDE4D8(v906, v368 + v927 + v426 * v930, type metadata accessor for FinalizedTimestampRange);
LABEL_118:
            sub_1ADDCEDE0(v936, &qword_1EB5BA148, &qword_1AE241B60);
            v307 = __OFADD__(v928, v372);
            v928 = (v928 + v372);
            v283 = v929;
            v428 = v916;
            if (v307)
            {
              goto LABEL_450;
            }

            v934 = v368;
            sub_1ADDDE4D8(v358, v916, type metadata accessor for FinalizedTimestamp);
            v370(v428, 0, 1, v283);
            *(v428 + *(v284 + 20)) = 1;
LABEL_169:
            v296 = v915;
            v294 = &qword_1EB5BA450;
LABEL_170:
            (*v920)(v428, 0, 1, v284);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v468 = v935;
            }

            else
            {
              v468 = sub_1ADF799F0(v935);
            }

            if (v263 >= *(v468 + 2))
            {
              goto LABEL_447;
            }

            ++v263;
            v469 = v428;
            v470 = v468;
            sub_1ADDE4820(v469, &v468[v925 + *(v937 + 36) + v926]);
            v363 = v470;
            v944 = v470;
            v362 = v913;
            v361 = v914;
            if (v913 == v263)
            {
              goto LABEL_73;
            }

            continue;
          }
        }

LABEL_502:
        __break(1u);
LABEL_503:
        __break(1u);
LABEL_504:
        __break(1u);
LABEL_505:
        __break(1u);
LABEL_506:
        __break(1u);
LABEL_507:
        __break(1u);
LABEL_508:
        __break(1u);
LABEL_509:
        __break(1u);
LABEL_510:
        __break(1u);
LABEL_511:
        __break(1u);
LABEL_512:
        __break(1u);
LABEL_513:
        __break(1u);
LABEL_514:
        __break(1u);
LABEL_515:
        __break(1u);
LABEL_516:
        __break(1u);
LABEL_517:
        __break(1u);
LABEL_518:
        __break(1u);
LABEL_519:
        __break(1u);
LABEL_520:
        __break(1u);
LABEL_521:
        __break(1u);
LABEL_522:
        __break(1u);
LABEL_523:
        __break(1u);
LABEL_524:
        __break(1u);
LABEL_525:
        __break(1u);
LABEL_526:
        __break(1u);
        goto LABEL_527;
      }

LABEL_501:
      __break(1u);
      goto LABEL_502;
    }

LABEL_319:

LABEL_329:
    v281 = v809;
LABEL_330:
    v263 = v784;
    if (v895 >= 1)
    {
      v759 = 1;
      v307 = __OFADD__(v862, v895);
      v862 += v895;
      if (v307)
      {
        goto LABEL_551;
      }
    }
  }

  (v290)(&v941, 0);
  swift_endAccess();
  sub_1ADE0DC8C(v288, type metadata accessor for Replica);
  v297 = v872;
  swift_beginAccess();
  v298 = v915;
  v299 = v263;
  if (*v297)
  {
    v300 = v263 - v852;
    if (__OFSUB__(v263, v852))
    {
      goto LABEL_543;
    }

    v263 = &v862[v300];
    if (__OFADD__(v862, v300))
    {
      goto LABEL_544;
    }

    if (v263 < v862)
    {
      goto LABEL_545;
    }

    v301 = swift_isUniquelyReferenced_nonNull_native();
    v940 = *v872;
    v302 = v940;
    *v872 = 0x8000000000000000;
    v303 = sub_1ADDD8A6C(v893);
    v305 = v302[2];
    v306 = (v304 & 1) == 0;
    v307 = __OFADD__(v305, v306);
    v308 = v305 + v306;
    if (v307)
    {
      goto LABEL_546;
    }

    v309 = v304;
    if (v302[3] >= v308)
    {
      if ((v301 & 1) == 0)
      {
        v756 = v303;
        sub_1ADDFB81C();
        v303 = v756;
        v302 = v940;
      }
    }

    else
    {
      sub_1ADDDDED0(v308, v301);
      v302 = v940;
      v303 = sub_1ADDD8A6C(v893);
      if ((v309 & 1) != (v310 & 1))
      {
        goto LABEL_553;
      }
    }

    v283 = v929;
    *v872 = v302;
    if ((v309 & 1) == 0)
    {
      v621 = v798;
      v622 = v303;
      sub_1AE23C11C();
      v302[(v622 >> 6) + 8] |= 1 << v622;
      sub_1ADDDE338(v893, v302[6] + *(v797 + 72) * v622, type metadata accessor for Replica);
      (*(v824 + 32))(v302[7] + *(v824 + 72) * v622, v621, v799);
      v623 = v302[2];
      v307 = __OFADD__(v623, 1);
      v624 = v623 + 1;
      if (v307)
      {
        goto LABEL_550;
      }

      v302[2] = v624;
    }

    sub_1AE23C07C();
    v284 = v924;
  }

  swift_endAccess();
  v625 = sub_1ADDE22AC(v852, v299);
  v627 = v625;
  if (v625 == v626)
  {
    v895 = 0;
    v935 = MEMORY[0x1E69E7CC0];
LABEL_328:
    sub_1ADDE2B98(v627, v626);

    *v838 = 1;
    goto LABEL_329;
  }

  if (v626 < v625)
  {
LABEL_547:
    __break(1u);
    goto LABEL_548;
  }

  v628 = v839;
  v629 = v847;
  if (v625 < v626)
  {
    v895 = 0;
    v630 = v944;
    v935 = MEMORY[0x1E69E7CC0];
    v263 = v625;
    v925 = v625;
    v926 = v626;
    while (1)
    {
      if (v627 < 0)
      {
        goto LABEL_467;
      }

      if (v263 >= *(v630 + 2))
      {
        goto LABEL_468;
      }

      v631 = (*(v923 + 80) + 32) & ~*(v923 + 80);
      v931 = v630;
      v928 = v631;
      v632 = *(v923 + 72);
      v934 = v263;
      v930 = v632 * v263;
      sub_1ADDCEE40(v630 + v631 + v632 * v263, v629, &qword_1EB5BA148, &qword_1AE241B60);
      v633 = v629;
      v634 = v845;
      sub_1ADDCEE40(v629 + *(v937 + 36), v845, &qword_1EB5BA450, v282);
      if ((*v921)(v634, 1, v284) != 1)
      {
        v647 = v844;
        sub_1ADDDE4D8(v634, v844, type metadata accessor for RetainedMapRun);
        v648 = v822;
        v263 = &qword_1EB5BA460;
        sub_1ADDCEE40(v647, v822, &qword_1EB5BA460, &qword_1AE251020);
        v649 = *v933;
        if ((*v933)(v648, 1, v283) != 1)
        {
          v665 = v821;
          sub_1ADDDE4D8(v648, v821, type metadata accessor for FinalizedTimestamp);
          v666 = v834;
          sub_1ADDDE338(v665, v834, type metadata accessor for FinalizedTimestamp);
          v667 = *v938;
          (*v938)(v666, 0, 1, v283);
          v629 = v847;
          v668 = v847[1];
          v669 = v668 - *v847;
          if (__OFSUB__(v668, *v847))
          {
            goto LABEL_507;
          }

          *(v666 + *(v932 + 20)) = v669;
          v670 = v935;
          v671 = *(v935 + 2);
          v672 = v666;
          v673 = v794;
          if (v671)
          {
            v674 = v629;
            v927 = (*(v881 + 80) + 32) & ~*(v881 + 80);
            v914 = *(v881 + 72);
            v675 = v803;
            sub_1ADDDE338(&v935[v927 + v914 * (v671 - 1)], v803, type metadata accessor for FinalizedTimestampRange);
            v263 = &qword_1EB5BA460;
            sub_1ADDCEE40(v675, v673, &qword_1EB5BA460, &qword_1AE251020);
            if (v649(v673, 1, v283) == 1)
            {
              sub_1ADDCEDE0(v673, &qword_1EB5BA460, &qword_1AE251020);
              v676 = v787;
              v667(v787, 1, 1, v283);
              v677 = v283;
            }

            else
            {
              v702 = v771;
              sub_1ADDDE4D8(v673, v771, type metadata accessor for FinalizedTimestamp);
              v676 = v787;
              v918(v787, v702, v922);
              v677 = v283;
              v703 = *(v702 + *(v283 + 20));
              sub_1ADE0DC8C(v702, type metadata accessor for FinalizedTimestamp);
              v704 = *(v675 + *(v932 + 20));
              v307 = __OFADD__(v703, v704);
              v705 = v703 + v704;
              if (v307)
              {
                goto LABEL_532;
              }

              *(v676 + *(v677 + 20)) = v705;
              v667(v676, 0, 1, v677);
              v674 = v847;
            }

            v706 = *(v908 + 48);
            v707 = v782;
            sub_1ADDCEE40(v676, v782, &qword_1EB5BA460, &qword_1AE251020);
            sub_1ADDCEE40(v834, v707 + v706, &qword_1EB5BA460, &qword_1AE251020);
            if (v649(v707, 1, v677) == 1)
            {
              sub_1ADDCEDE0(v676, &qword_1EB5BA460, &qword_1AE251020);
              if (v649(v707 + v706, 1, v677) == 1)
              {
                sub_1ADDCEDE0(v707, &qword_1EB5BA460, &qword_1AE251020);
                v283 = v929;
                v298 = v915;
                v629 = v674;
                goto LABEL_383;
              }

LABEL_391:
              v714 = v707;
              v715 = &qword_1EB5BA4A0;
              v716 = &unk_1AE253DA0;
LABEL_392:
              sub_1ADDCEDE0(v714, v715, v716);
              v298 = v915;
              v629 = v674;
              goto LABEL_393;
            }

            v713 = v770;
            sub_1ADDCEE40(v707, v770, &qword_1EB5BA460, &qword_1AE251020);
            if (v649(v707 + v706, 1, v677) == 1)
            {
              sub_1ADDCEDE0(v787, &qword_1EB5BA460, &qword_1AE251020);
              sub_1ADE0DC8C(v713, type metadata accessor for FinalizedTimestamp);
              goto LABEL_391;
            }

            v749 = v764;
            sub_1ADDDE4D8(v707 + v706, v764, type metadata accessor for FinalizedTimestamp);
            v750 = *(v677 + 20);
            v751 = v749;
            if (*(v713 + v750) != *(v749 + v750))
            {
              sub_1ADE0DC8C(v749, type metadata accessor for FinalizedTimestamp);
              sub_1ADDCEDE0(v787, &qword_1EB5BA460, &qword_1AE251020);
              sub_1ADE0DC8C(v713, type metadata accessor for FinalizedTimestamp);
              v714 = v707;
              v715 = &qword_1EB5BA460;
              v716 = &qword_1AE251020;
              goto LABEL_392;
            }

            v752 = sub_1AE23BF8C();
            sub_1ADE0DC8C(v751, type metadata accessor for FinalizedTimestamp);
            sub_1ADDCEDE0(v787, &qword_1EB5BA460, &qword_1AE251020);
            sub_1ADE0DC8C(v713, type metadata accessor for FinalizedTimestamp);
            sub_1ADDCEDE0(v707, &qword_1EB5BA460, &qword_1AE251020);
            v283 = v929;
            v298 = v915;
            v629 = v674;
            if ((v752 & 1) == 0)
            {
LABEL_393:
              sub_1ADE0DC8C(v803, type metadata accessor for FinalizedTimestampRange);
              v672 = v834;
              v670 = v935;
              goto LABEL_394;
            }

LABEL_383:
            v708 = *(v935 + 2);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v935 = sub_1ADF79A40(v935);
            }

            v627 = v925;
            v628 = v839;
            v263 = v934;
            sub_1ADE0DC8C(v803, type metadata accessor for FinalizedTimestampRange);
            sub_1ADE0DC8C(v834, type metadata accessor for FinalizedTimestampRange);
            sub_1ADE0DC8C(v821, type metadata accessor for FinalizedTimestamp);
            sub_1ADDCEDE0(v629, &qword_1EB5BA148, &qword_1AE241B60);
            if (!v708)
            {
              goto LABEL_537;
            }

            if (v708 > *(v935 + 2))
            {
              goto LABEL_538;
            }

            v709 = &v935[v927 + (v708 - 1) * v914];
            v710 = *(v932 + 20);
            v711 = *&v709[v710];
            v307 = __OFADD__(v711, v669);
            v712 = v711 + v669;
            if (v307)
            {
              goto LABEL_541;
            }

            *&v709[v710] = v712;
            v282 = &unk_1AE25B3B0;
            v630 = v931;
          }

          else
          {
LABEL_394:
            sub_1ADDDE338(v672, v811, type metadata accessor for FinalizedTimestampRange);
            v717 = swift_isUniquelyReferenced_nonNull_native();
            v718 = v670;
            if ((v717 & 1) == 0)
            {
              v718 = sub_1ADDE47F8(0, *(v670 + 2) + 1, 1, v670);
            }

            v282 = &unk_1AE25B3B0;
            v627 = v925;
            v630 = v931;
            v628 = v839;
            v263 = v934;
            v935 = v718;
            v720 = *(v718 + 2);
            v719 = *(v718 + 3);
            if (v720 >= v719 >> 1)
            {
              v935 = sub_1ADDE47F8((v719 > 1), v720 + 1, 1, v935);
            }

            sub_1ADE0DC8C(v834, type metadata accessor for FinalizedTimestampRange);
            sub_1ADE0DC8C(v821, type metadata accessor for FinalizedTimestamp);
            sub_1ADDCEDE0(v629, &qword_1EB5BA148, &qword_1AE241B60);
            v721 = v935;
            *(v935 + 2) = v720 + 1;
            sub_1ADDDE4D8(v811, &v721[((*(v881 + 80) + 32) & ~*(v881 + 80)) + *(v881 + 72) * v720], type metadata accessor for FinalizedTimestampRange);
            v283 = v929;
          }

          v722 = v873;
          sub_1ADDDE4D8(v844, v873, type metadata accessor for RetainedMapRun);
          v701 = v722;
          v284 = v924;
          goto LABEL_427;
        }

        sub_1ADDCEDE0(v648, &qword_1EB5BA460, &qword_1AE251020);
        v650 = v820;
        v918(v820, v893, v922);
        if (__OFADD__(v862, v895))
        {
          goto LABEL_506;
        }

        *(v650 + *(v283 + 20)) = &v862[v895];
        v651 = v833;
        sub_1ADDDE338(v650, v833, type metadata accessor for FinalizedTimestamp);
        v652 = *v938;
        (*v938)(v651, 0, 1, v283);
        v653 = v847;
        v654 = v847[1];
        v307 = __OFSUB__(v654, *v847);
        v655 = v654 - *v847;
        if (v307)
        {
          goto LABEL_508;
        }

        v656 = *(v932 + 20);
        v927 = v655;
        *(v651 + v656) = v655;
        v657 = v935;
        v658 = *(v935 + 2);
        if (v658)
        {
          v914 = (*(v881 + 80) + 32) & ~*(v881 + 80);
          v659 = *(v881 + 72);
          v660 = v802;
          sub_1ADDDE338(&v935[v914 + v659 * (v658 - 1)], v802, type metadata accessor for FinalizedTimestampRange);
          v661 = v781;
          sub_1ADDCEE40(v660, v781, &qword_1EB5BA460, &qword_1AE251020);
          v662 = v649(v661, 1, v283);
          v913 = v659;
          if (v662 == 1)
          {
            sub_1ADDCEDE0(v661, &qword_1EB5BA460, &qword_1AE251020);
            v663 = 1;
            v664 = v786;
          }

          else
          {
            v723 = v769;
            sub_1ADDDE4D8(v661, v769, type metadata accessor for FinalizedTimestamp);
            v664 = v786;
            v918(v786, v723, v922);
            v724 = v283;
            v725 = *(v723 + *(v283 + 20));
            sub_1ADE0DC8C(v723, type metadata accessor for FinalizedTimestamp);
            v726 = *(v660 + *(v932 + 20));
            v307 = __OFADD__(v725, v726);
            v727 = v725 + v726;
            if (v307)
            {
              goto LABEL_533;
            }

            v663 = 0;
            *(v664 + *(v724 + 20)) = v727;
            v283 = v724;
            v653 = v847;
          }

          v652(v664, v663, 1, v283);
          v728 = v283;
          v729 = *(v908 + 48);
          v730 = v779;
          sub_1ADDCEE40(v664, v779, &qword_1EB5BA460, &qword_1AE251020);
          sub_1ADDCEE40(v833, v730 + v729, &qword_1EB5BA460, &qword_1AE251020);
          if (v649(v730, 1, v728) == 1)
          {
            sub_1ADDCEDE0(v664, &qword_1EB5BA460, &qword_1AE251020);
            if (v649(v730 + v729, 1, v728) == 1)
            {
              sub_1ADDCEDE0(v730, &qword_1EB5BA460, &qword_1AE251020);
              v298 = v915;
              v628 = v839;
              goto LABEL_405;
            }

LABEL_416:
            v740 = v730;
            v741 = &qword_1EB5BA4A0;
            v742 = &unk_1AE253DA0;
LABEL_417:
            sub_1ADDCEDE0(v740, v741, v742);
            v298 = v915;
            v628 = v839;
            goto LABEL_418;
          }

          v739 = v768;
          sub_1ADDCEE40(v730, v768, &qword_1EB5BA460, &qword_1AE251020);
          if (v649(v730 + v729, 1, v728) == 1)
          {
            sub_1ADDCEDE0(v786, &qword_1EB5BA460, &qword_1AE251020);
            sub_1ADE0DC8C(v739, type metadata accessor for FinalizedTimestamp);
            goto LABEL_416;
          }

          v753 = v730 + v729;
          v754 = v763;
          sub_1ADDDE4D8(v753, v763, type metadata accessor for FinalizedTimestamp);
          if (*(v739 + *(v728 + 20)) != *(v754 + *(v728 + 20)))
          {
            sub_1ADE0DC8C(v754, type metadata accessor for FinalizedTimestamp);
            sub_1ADDCEDE0(v786, &qword_1EB5BA460, &qword_1AE251020);
            sub_1ADE0DC8C(v739, type metadata accessor for FinalizedTimestamp);
            v740 = v730;
            v741 = &qword_1EB5BA460;
            v742 = &qword_1AE251020;
            goto LABEL_417;
          }

          v755 = sub_1AE23BF8C();
          sub_1ADE0DC8C(v754, type metadata accessor for FinalizedTimestamp);
          sub_1ADDCEDE0(v786, &qword_1EB5BA460, &qword_1AE251020);
          sub_1ADE0DC8C(v739, type metadata accessor for FinalizedTimestamp);
          sub_1ADDCEDE0(v730, &qword_1EB5BA460, &qword_1AE251020);
          v298 = v915;
          v628 = v839;
          if ((v755 & 1) == 0)
          {
LABEL_418:
            sub_1ADE0DC8C(v802, type metadata accessor for FinalizedTimestampRange);
            v651 = v833;
            v657 = v935;
            goto LABEL_419;
          }

LABEL_405:
          v657 = v935;
          v731 = *(v935 + 2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v657 = sub_1ADF79A40(v657);
          }

          v282 = &unk_1AE25B3B0;
          sub_1ADE0DC8C(v802, type metadata accessor for FinalizedTimestampRange);
          sub_1ADE0DC8C(v833, type metadata accessor for FinalizedTimestampRange);
          if (!v731)
          {
            goto LABEL_539;
          }

          if (v731 > *(v657 + 2))
          {
            goto LABEL_540;
          }

          v732 = &v657[v914 + (v731 - 1) * v913];
          v733 = *(v932 + 20);
          v734 = *(v732 + v733);
          v307 = __OFADD__(v734, v927);
          v735 = v734 + v927;
          if (v307)
          {
            goto LABEL_542;
          }

          *(v732 + v733) = v735;
        }

        else
        {
LABEL_419:
          sub_1ADDDE338(v651, v810, type metadata accessor for FinalizedTimestampRange);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v657 = sub_1ADDE47F8(0, *(v657 + 2) + 1, 1, v657);
          }

          v282 = &unk_1AE25B3B0;
          v744 = *(v657 + 2);
          v743 = *(v657 + 3);
          v745 = v833;
          if (v744 >= v743 >> 1)
          {
            v657 = sub_1ADDE47F8((v743 > 1), v744 + 1, 1, v657);
            v745 = v833;
          }

          sub_1ADE0DC8C(v745, type metadata accessor for FinalizedTimestampRange);
          *(v657 + 2) = v744 + 1;
          sub_1ADDDE4D8(v810, &v657[((*(v881 + 80) + 32) & ~*(v881 + 80)) + *(v881 + 72) * v744], type metadata accessor for FinalizedTimestampRange);
        }

        sub_1ADDCEDE0(v653, &qword_1EB5BA148, &qword_1AE241B60);
        v307 = __OFADD__(v895, v927);
        v895 += v927;
        v283 = v929;
        if (v307)
        {
          goto LABEL_509;
        }

        v935 = v657;
        v746 = v873;
        sub_1ADDDE4D8(v820, v873, type metadata accessor for FinalizedTimestamp);
        v652(v746, 0, 1, v283);
        v747 = v924;
        v748 = *(v844 + *(v924 + 20));
        sub_1ADE0DC8C(v844, type metadata accessor for RetainedMapRun);
        v701 = v746;
        *(v746 + *(v747 + 20)) = v748;
        v284 = v747;
        v629 = v847;
        v627 = v925;
        goto LABEL_426;
      }

      v263 = v298;
      sub_1ADDCEDE0(v634, &qword_1EB5BA450, v282);
      v918(v628, v893, v922);
      v635 = v823;
      if (__OFADD__(v862, v895))
      {
        goto LABEL_482;
      }

      *(v628 + *(v283 + 20)) = &v862[v895];
      v636 = v864;
      sub_1ADDDE338(v628, v864, type metadata accessor for FinalizedTimestamp);
      v637 = *v938;
      (*v938)(v636, 0, 1, v283);
      v638 = v629[1];
      v307 = __OFSUB__(v638, *v629);
      v639 = v638 - *v629;
      if (v307)
      {
        goto LABEL_483;
      }

      v640 = *(v932 + 20);
      v927 = v639;
      *(v636 + v640) = v639;
      v641 = *(v935 + 2);
      if (!v641)
      {
        goto LABEL_371;
      }

      v263 = (*(v881 + 80) + 32) & ~*(v881 + 80);
      v913 = *(v881 + 72);
      v642 = v825;
      sub_1ADDDE338(&v935[v263 + v913 * (v641 - 1)], v825, type metadata accessor for FinalizedTimestampRange);
      sub_1ADDCEE40(v642, v635, &qword_1EB5BA460, &qword_1AE251020);
      v643 = *v933;
      v644 = (*v933)(v635, 1, v283);
      v914 = v263;
      if (v644 == 1)
      {
        sub_1ADDCEDE0(v635, &qword_1EB5BA460, &qword_1AE251020);
        v645 = 1;
        v646 = v814;
      }

      else
      {
        v678 = v780;
        sub_1ADDDE4D8(v635, v780, type metadata accessor for FinalizedTimestamp);
        v646 = v814;
        v918(v814, v678, v922);
        v679 = v283;
        v680 = *(v678 + *(v283 + 20));
        sub_1ADE0DC8C(v678, type metadata accessor for FinalizedTimestamp);
        v681 = *(v642 + *(v932 + 20));
        v307 = __OFADD__(v680, v681);
        v682 = v680 + v681;
        if (v307)
        {
          goto LABEL_517;
        }

        v645 = 0;
        *(v646 + *(v679 + 20)) = v682;
        v283 = v679;
        v633 = v847;
      }

      v637(v646, v645, 1, v283);
      v683 = v283;
      v684 = *(v908 + 48);
      v685 = v801;
      sub_1ADDCEE40(v646, v801, &qword_1EB5BA460, &qword_1AE251020);
      sub_1ADDCEE40(v864, v685 + v684, &qword_1EB5BA460, &qword_1AE251020);
      if (v643(v685, 1, v683) == 1)
      {
        break;
      }

      v692 = v778;
      sub_1ADDCEE40(v685, v778, &qword_1EB5BA460, &qword_1AE251020);
      if (v643(v685 + v684, 1, v683) == 1)
      {
        sub_1ADDCEDE0(v814, &qword_1EB5BA460, &qword_1AE251020);
        sub_1ADE0DC8C(v692, type metadata accessor for FinalizedTimestamp);
LABEL_368:
        v693 = v685;
        v694 = &qword_1EB5BA4A0;
        v695 = &unk_1AE253DA0;
        goto LABEL_369;
      }

      v736 = v685 + v684;
      v737 = v767;
      sub_1ADDDE4D8(v736, v767, type metadata accessor for FinalizedTimestamp);
      if (*(v692 + *(v683 + 20)) == *(v737 + *(v683 + 20)))
      {
        v738 = sub_1AE23BF8C();
        sub_1ADE0DC8C(v737, type metadata accessor for FinalizedTimestamp);
        sub_1ADDCEDE0(v814, &qword_1EB5BA460, &qword_1AE251020);
        sub_1ADE0DC8C(v692, type metadata accessor for FinalizedTimestamp);
        sub_1ADDCEDE0(v685, &qword_1EB5BA460, &qword_1AE251020);
        v282 = &unk_1AE25B3B0;
        v629 = v633;
        if (v738)
        {
          goto LABEL_360;
        }

        goto LABEL_370;
      }

      sub_1ADE0DC8C(v737, type metadata accessor for FinalizedTimestamp);
      sub_1ADDCEDE0(v814, &qword_1EB5BA460, &qword_1AE251020);
      sub_1ADE0DC8C(v692, type metadata accessor for FinalizedTimestamp);
      v693 = v685;
      v694 = &qword_1EB5BA460;
      v695 = &qword_1AE251020;
LABEL_369:
      sub_1ADDCEDE0(v693, v694, v695);
      v282 = &unk_1AE25B3B0;
      v629 = v633;
LABEL_370:
      sub_1ADE0DC8C(v825, type metadata accessor for FinalizedTimestampRange);
      v636 = v864;
      v263 = v915;
      v627 = v925;
LABEL_371:
      sub_1ADDDE338(v636, v835, type metadata accessor for FinalizedTimestampRange);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v935 = sub_1ADDE47F8(0, *(v935 + 2) + 1, 1, v935);
      }

      v628 = v839;
      v697 = *(v935 + 2);
      v696 = *(v935 + 3);
      v698 = v864;
      if (v697 >= v696 >> 1)
      {
        v935 = sub_1ADDE47F8((v696 > 1), v697 + 1, 1, v935);
        v698 = v864;
      }

      sub_1ADE0DC8C(v698, type metadata accessor for FinalizedTimestampRange);
      v699 = v935;
      *(v935 + 2) = v697 + 1;
      sub_1ADDDE4D8(v835, &v699[((*(v881 + 80) + 32) & ~*(v881 + 80)) + *(v881 + 72) * v697], type metadata accessor for FinalizedTimestampRange);
LABEL_376:
      sub_1ADDCEDE0(v629, &qword_1EB5BA148, &qword_1AE241B60);
      v307 = __OFADD__(v895, v927);
      v895 += v927;
      v283 = v929;
      if (v307)
      {
        goto LABEL_484;
      }

      v700 = v873;
      sub_1ADDDE4D8(v628, v873, type metadata accessor for FinalizedTimestamp);
      v637(v700, 0, 1, v283);
      v701 = v700;
      v284 = v924;
      *(v700 + *(v924 + 20)) = 1;
      v298 = v263;
LABEL_426:
      v630 = v931;
      v263 = v934;
LABEL_427:
      (*v920)(v701, 0, 1, v284);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v630 = sub_1ADF799F0(v630);
      }

      if (v263 >= *(v630 + 2))
      {
        goto LABEL_469;
      }

      ++v263;
      sub_1ADDE4820(v873, v928 + v630 + *(v937 + 36) + v930);
      v944 = v630;
      v626 = v926;
      if (v926 == v263)
      {
        goto LABEL_328;
      }
    }

    sub_1ADDCEDE0(v646, &qword_1EB5BA460, &qword_1AE251020);
    if (v643(v685 + v684, 1, v683) == 1)
    {
      sub_1ADDCEDE0(v685, &qword_1EB5BA460, &qword_1AE251020);
      v282 = &unk_1AE25B3B0;
      v629 = v633;
LABEL_360:
      v686 = *(v935 + 2);
      v687 = swift_isUniquelyReferenced_nonNull_native();
      v263 = v915;
      if ((v687 & 1) == 0)
      {
        v935 = sub_1ADF79A40(v935);
      }

      v627 = v925;
      v628 = v839;
      sub_1ADE0DC8C(v825, type metadata accessor for FinalizedTimestampRange);
      sub_1ADE0DC8C(v864, type metadata accessor for FinalizedTimestampRange);
      if (!v686)
      {
        goto LABEL_529;
      }

      if (v686 > *(v935 + 2))
      {
        goto LABEL_530;
      }

      v688 = &v935[v914 + (v686 - 1) * v913];
      v689 = *(v932 + 20);
      v690 = *&v688[v689];
      v307 = __OFADD__(v690, v927);
      v691 = v690 + v927;
      if (v307)
      {
        goto LABEL_531;
      }

      *&v688[v689] = v691;
      goto LABEL_376;
    }

    goto LABEL_368;
  }

LABEL_548:
  __break(1u);
LABEL_549:
  __break(1u);
LABEL_550:
  __break(1u);
LABEL_551:
  __break(1u);
LABEL_552:
  sub_1ADDCEDE0(v263, &qword_1EB5BA460, &qword_1AE251020);
  sub_1AE23DC5C();
  __break(1u);
LABEL_553:
  sub_1AE23E27C();
  __break(1u);
}

uint64_t sub_1ADE88C5C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE88CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA478, &qword_1AE24D470) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA030, &qword_1AE241810) + 48);
  sub_1ADDDE338(a1, a2, type metadata accessor for Replica);

  return sub_1ADDE56CC(a1 + v4, a2 + v5);
}

void sub_1ADE88D68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t **a5)
{
  LOBYTE(v6) = a4;
  v48 = type metadata accessor for Replica(0);
  v58 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA470, &qword_1AE242530);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v47 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v51 = a1;
  v52 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v53 = v16;
  v54 = 0;
  v55 = v19 & v17;
  v56 = a2;
  v57 = a3;

  v49 = a3;

  sub_1ADF80A84(v14);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA030, &qword_1AE241810);
  if ((*(*(v20 - 8) + 48))(v14, 1, v20) == 1)
  {
LABEL_5:
    sub_1ADDDCE74(v51);

    return;
  }

  v21 = *(v20 + 48);
  sub_1ADDDE4D8(v14, v11, type metadata accessor for Replica);
  sub_1ADDE5634(v21 + v14, v50);
  v22 = *a5;
  v23 = sub_1ADDD8A6C(v11);
  v25 = v22[2];
  v26 = (v24 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (v27)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  LOBYTE(v21) = v24;
  if (v22[3] < v28)
  {
    sub_1ADDE4890(v28, v6 & 1);
    v23 = sub_1ADDD8A6C(v11);
    if ((v21 & 1) == (v29 & 1))
    {
      goto LABEL_11;
    }

LABEL_9:
    v23 = sub_1AE23E27C();
    __break(1u);
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  if ((v21 & 1) == 0)
  {
    while (1)
    {
      v21 = *a5;
      (*a5)[(v23 >> 6) + 8] |= 1 << v23;
      v30 = v23;
      sub_1ADDDE4D8(v11, v21[6] + *(v58 + 72) * v23, type metadata accessor for Replica);
      v23 = sub_1ADDE5634(v50, v21[7] + 24 * v30);
      v31 = v21[2];
      v27 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (!v27)
      {
        break;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      v46 = v23;
      sub_1ADF6E86C();
      v23 = v46;
      if (v21)
      {
        goto LABEL_24;
      }
    }

    v21[2] = v32;
    v6 = &qword_1EB5BA030;
    v21 = &qword_1AE241810;
    while (1)
    {
      sub_1ADF80A84(v14);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA030, &qword_1AE241810);
      if ((*(*(v33 - 8) + 48))(v14, 1, v33) == 1)
      {
        goto LABEL_5;
      }

      v34 = *(v33 + 48);
      sub_1ADDDE4D8(v14, v11, type metadata accessor for Replica);
      sub_1ADDE5634(&v14[v34], v50);
      v35 = *a5;
      v23 = sub_1ADDD8A6C(v11);
      v37 = v35[2];
      v38 = (v36 & 1) == 0;
      v27 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v27)
      {
        goto LABEL_21;
      }

      v40 = v36;
      if (v35[3] < v39)
      {
        sub_1ADDE4890(v39, 1);
        v23 = sub_1ADDD8A6C(v11);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_9;
        }
      }

      if (v40)
      {
        break;
      }

      v42 = *a5;
      (*a5)[(v23 >> 6) + 8] |= 1 << v23;
      v43 = v23;
      sub_1ADDDE4D8(v11, v42[6] + *(v58 + 72) * v23, type metadata accessor for Replica);
      v23 = sub_1ADDE5634(v50, v42[7] + 24 * v43);
      v44 = v42[2];
      v27 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v27)
      {
        goto LABEL_22;
      }

      v42[2] = v45;
    }
  }

LABEL_24:
  sub_1AE23DC5C();
  __break(1u);
}

uint64_t sub_1ADE89268(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CRDataStoreBundleReadFileVersionPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](v1);
  return sub_1AE23E34C();
}

uint64_t *CRDataStoreBundle.__allocating_init(_:sync:at:allowedEncodings:allowedAppFormats:writableAppFormats:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1ADE91B28(a1, a2, a3, a4, a5, a6);

  return v7;
}

uint64_t *CRDataStoreBundle.init(_:sync:at:allowedEncodings:allowedAppFormats:writableAppFormats:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1ADE91910(a1, a2, a3, a4, a5, a6);

  return v7;
}

uint64_t *CRDataStoreBundle.__allocating_init(_:sync:at:allowedEncodings:allowedAppFormats:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AE23BDDC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 32);
  v15 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v15;
  v19 = v14;
  (*(v11 + 16))(v13, a3, v10);
  swift_allocObject();
  v16 = sub_1ADE91910(a1, v18, v13, a4, a5, 0);

  (*(v11 + 8))(a3, v10);
  return v16;
}

uint64_t *CRDataStoreBundle.__allocating_init(_:sync:at:version:fileFormatVersion:)(void *a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v6 = sub_1ADE91BA4(a1, a2, a3, a4, a5 & 0x1FFFF);

  return v6;
}

uint64_t *CRDataStoreBundle.__allocating_init(_:sync:at:fileFormatVersion:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = sub_1AE23BDDC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 32);
  v13 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v13;
  v19 = v12;
  (*(v9 + 16))(v11, a3, v8);
  v17 = 1;
  v14 = sub_1ADE91BA4(a1, v18, v11, &v17, a4 & 0x1FFFF);

  (*(v9 + 8))(a3, v8);
  return v14;
}

uint64_t *CRDataStoreBundle.__allocating_init(sync:at:fileFormatVersion:)(__int128 *a1, uint64_t a2, int a3)
{
  v6 = sub_1AE23BDDC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 4);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v11 = sub_1ADDCE2E4(0, &v17);
  sub_1ADDCEDE0(&v17, &qword_1EB5B9DB0, &qword_1AE240B80);
  v12 = a1[1];
  v17 = *a1;
  v18 = v12;
  v19 = v10;
  (*(v7 + 16))(v9, a2, v6);
  v16 = 1;
  v13 = sub_1ADE91BA4(v11, &v17, v9, &v16, a3 & 0x1FFFF);

  (*(v7 + 8))(a2, v6);
  return v13;
}

uint64_t static CRDataStoreBundle.read(_:url:fileFormatVersion:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v11 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA180, &qword_1AE241B78);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AE2418F0;
  if ((a3 & 0x10000) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  *(v8 + 32) = v9;
  static CRDataStoreBundle.read(_:url:fileVersionPolicy:allowedEncodings:allowedAppFormats:)(a1, a2, &v11, &unk_1F23BBD20, v8, a4);
}

void static CRDataStoreBundle.read(_:url:fileVersionPolicy:allowedEncodings:allowedAppFormats:)(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v45 = a5;
  v48 = a1;
  v39[0] = a6;
  v50[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1AE23BDDC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v43 = *a3;
  v12 = &unk_1F23BBCF8;
  if (a4)
  {
    v12 = a4;
  }

  v42 = v12;
  v50[0] = 0;
  v13 = swift_allocObject();
  v47 = v13;
  *(v13 + 16) = 0;
  v40 = (v13 + 16);
  v14 = objc_allocWithZone(MEMORY[0x1E696ABF8]);

  v15 = [v14 init];
  v41 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  v39[2] = v16 + 16;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 1;
  v46 = sub_1AE23BD1C();
  v17 = v9;
  (*(v10 + 16))(v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  v18 = (*(v10 + 80) + 81) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = *(v44 + 80);
  v20 = v48;
  *(v19 + 32) = v13;
  *(v19 + 40) = v20;
  v21 = v45;
  *(v19 + 48) = v42;
  *(v19 + 56) = v21;
  *(v19 + 64) = v15;
  *(v19 + 72) = v16;
  *(v19 + 80) = v43;
  (*(v10 + 32))(v19 + v18, v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  *(v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v50;
  v22 = swift_allocObject();
  v22[2] = sub_1ADE91D6C;
  v22[3] = v19;
  aBlock[4] = sub_1ADE91E28;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE8AB00;
  aBlock[3] = &block_descriptor_2;
  v23 = _Block_copy(aBlock);

  v24 = v48;
  v25 = v41;

  aBlock[0] = 0;
  v26 = v46;
  [v25 coordinateReadingItemAtURL:v46 options:0 error:aBlock byAccessor:v23];
  _Block_release(v23);

  v27 = aBlock[0];
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  if (v27)
  {

LABEL_10:
    swift_willThrow();
    v30 = v27;

    v31 = v50[0];

    return;
  }

  if (v50[0])
  {
    v50[0];
    goto LABEL_10;
  }

  v28 = v40;
  swift_beginAccess();
  if (*v28)
  {
    v29 = *v28;
    goto LABEL_10;
  }

  swift_beginAccess();
  v32 = *(v16 + 48);
  if (v32 == 1)
  {
    __break(1u);
  }

  else
  {
    v34 = *(v16 + 32);
    v33 = *(v16 + 40);
    v36 = *(v16 + 16);
    v35 = *(v16 + 24);
    sub_1ADDD86D8(v36, v35);
    sub_1ADDD86D8(v34, v33);

    v37 = v39[0];
    *v39[0] = v36;
    v37[1] = v35;
    v37[2] = v34;
    v37[3] = v33;
    v37[4] = v32;
    v38 = v50[0];
  }
}

void sub_1ADE89D84(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6, __n128 *a7, char a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v17 = [objc_opt_self() defaultManager];
  sub_1AE23BDAC();
  v18 = sub_1AE23CCDC();

  v19 = [v17 fileExistsAtPath_];

  if (!v19)
  {
    sub_1ADE42E40(v20, v21, v22);
    v27 = swift_allocError();
    *v28 = xmmword_1AE242550;
    *(v28 + 16) = 0;
    swift_beginAccess();
    v29 = *(a2 + 16);
    *(a2 + 16) = v27;

    return;
  }

  v23 = objc_opt_self();
  v24 = sub_1AE23BD1C();
  v25 = [v23 otherVersionsOfItemAtURL_];

  if (v25)
  {
    sub_1ADE926A4();
    v26 = sub_1AE23CFDC();
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  if (a8 == 2)
  {
    if (v26 >> 62)
    {
      if (sub_1AE23D97C())
      {
LABEL_9:
        v38 = sub_1AE23BD1C();
        v30 = swift_allocObject();
        *(v30 + 16) = a11;
        *(v30 + 24) = a12;
        *(v30 + 32) = a3;
        *(v30 + 40) = a4;
        *(v30 + 48) = a5;
        *(v30 + 56) = a6;
        *(v30 + 64) = a7;
        *(v30 + 72) = v26;
        *(v30 + 80) = 2;
        *(v30 + 88) = a2;
        *(v30 + 96) = 0;
        v31 = swift_allocObject();
        *(v31 + 16) = sub_1ADE9265C;
        *(v31 + 24) = v30;
        aBlock[4] = sub_1ADE92800;
        aBlock[5] = v31;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1ADE8AB00;
        aBlock[3] = &block_descriptor_91;
        v32 = _Block_copy(aBlock);

        v33 = a6;

        v34 = a3;

        aBlock[0] = *a10;
        [v33 coordinateWritingItemAtURL:v38 options:0 error:aBlock byAccessor:v32];
        _Block_release(v32);

        v35 = aBlock[0];
        v36 = *a10;
        *a10 = aBlock[0];
        v37 = v35;

        LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

        if (v36)
        {
          __break(1u);
        }

        return;
      }
    }

    else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }
  }

  sub_1ADE8A198(a1, 1, a3, a4, a5, a6, a7, v26, a8, a2, a11, a12);
}

void sub_1ADE8A198(unint64_t a1, int a2, char *a3, uint64_t a4, unint64_t a5, uint64_t a6, __n128 *a7, unint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v110 = a8;
  v108 = a7;
  v113 = a6;
  v114 = a4;
  v115 = a5;
  v111 = a3;
  LODWORD(v112) = a2;
  v122 = *MEMORY[0x1E69E9840];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v105 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v94 - v16;
  v18 = sub_1AE23BDDC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v104 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v107 = &v94 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v109 = &v94 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v94 - v26;
  v29 = type metadata accessor for CRDataStoreBundleNonCoordinated(0, a11, a12, v28);
  v30 = *(v19 + 16);
  v30(v27, a1, v18);
  v106 = a1;
  v30(v17, a1, v18);
  v99 = v19;
  v103 = *(v19 + 56);
  v103(v17, 0, 1, v18);
  v100 = a11;
  v101 = a12;
  v102 = type metadata accessor for CRDataStoreBundleNonCoordinated.ModelStorage(0, a11, a12, v31);
  sub_1AE018450();
  v33 = v32;
  v34 = v115;

  v35 = v111;
  v36 = v114;
  v37 = v35;

  v38 = sub_1AE018484(v37, v27, v17, v112, v33, 0, 0, 0, v36, v34, 0);
  v111 = v37;
  v97 = v19 + 56;
  v98 = v29;
  v112 = v18;
  sub_1AE018540();
  sub_1AE018590(&v119);
  v40 = v121;
  v41 = v108;
  swift_beginAccess();
  v42 = v41[1].n128_i64[0];
  v43 = v41[1].n128_u64[1];
  v44 = v41[2].n128_i64[0];
  v45 = v41[2].n128_u64[1];
  v46 = v41[3].n128_i64[0];
  v47 = v120;
  v41[1] = v119;
  v41[2] = v47;
  v41[3].n128_u64[0] = v40;
  v48.n128_f64[0] = sub_1ADE92284(v42, v43, v44, v45, v46);
  v49 = v110;
  if (v110 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v93)
  {
    v51 = v112;
    if (!i)
    {
LABEL_16:

      return;
    }

    if (a9 == 2)
    {
      break;
    }

    if (a9 != 1)
    {
      goto LABEL_16;
    }

    v96 = v38;
    v38 = 0;
    v106 = v49 & 0xC000000000000001;
    v95 = v49 & 0xFFFFFFFFFFFFFF8;
    v99 += 4;
    v94 = i;
    while (1)
    {
      if (v106)
      {
        v54 = MEMORY[0x1B26FC360](v38, v48);
        v52 = v108;
        v53 = v105;
      }

      else
      {
        v52 = v108;
        v53 = v105;
        if (v38 >= *(v95 + 16))
        {
          goto LABEL_31;
        }

        v54 = *(v49 + 8 * v38 + 32);
      }

      if (__OFADD__(v38, 1))
      {
        break;
      }

      v109 = (v38 + 1);
      v55 = v111;
      v56 = [v54 URL];
      sub_1AE23BD8C();

      v57 = [v54 URL];
      v58 = v104;
      sub_1AE23BD8C();

      v59 = v58;
      v60 = v107;
      (*v99)(v53, v59, v51);
      v103(v53, 0, 1, v51);
      sub_1AE018450();
      v62 = v61;
      v63 = v114;

      sub_1AE018484(v55, v60, v53, 1, v62, 0, 1, 0, v63, v64, 0);
      sub_1AE018540();
      sub_1AE018590(&v119);
      if (v121 == 1)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v116 = v119;
      v117 = v120;
      v118 = v121;
      swift_beginAccess();
      v51 = v112;
      v66 = v101;
      if (v52[3].n128_u64[0] == 1)
      {
        goto LABEL_34;
      }

      v67 = v100;
      v68 = type metadata accessor for Capsule(0, v100, v101, v65);
      Capsule.merge<A>(_:)(&v116, v68, v67, v66);
      swift_endAccess();

      v69 = v117;
      sub_1ADDCC35C(v116.n128_i64[0], v116.n128_u64[1]);
      sub_1ADDCC35C(v69.n128_i64[0], v69.n128_u64[1]);

      ++v38;
      v49 = v110;
      if (v109 == v94)
      {
        goto LABEL_16;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v92 = v49;
    v93 = sub_1AE23D97C();
    v49 = v92;
  }

  v96 = v38;
  v70 = 0;
  v115 = v49 & 0xC000000000000001;
  v71 = v49 & 0xFFFFFFFFFFFFFF8;
  v38 = (v99 + 1);
  do
  {
    if (v115)
    {
      v72 = MEMORY[0x1B26FC360](v70, v49, v48);
    }

    else
    {
      if (v70 >= *(v71 + 16))
      {
        goto LABEL_29;
      }

      v72 = *(v49 + 8 * v70 + 32);
    }

    v73 = v72;
    v74 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v75 = [v72 URL];
    v76 = v109;
    sub_1AE23BD8C();

    sub_1AE0185EC();
    (*v38)(v76, v51);

    ++v70;
    v49 = v110;
  }

  while (v74 != i);
  v77 = objc_opt_self();
  v78 = sub_1AE23BD1C();
  v119.n128_u64[0] = 0;
  v79 = [v77 removeOtherVersionsOfItemAtURL:v78 error:&v119];

  v80 = v119.n128_u64[0];
  if (v79)
  {
    sub_1AE018590(&v119);
    v81 = v80;

    v82 = v121;
    v83 = v108;
    swift_beginAccess();
    v84 = v83[1].n128_i64[0];
    v85 = v83[1].n128_u64[1];
    v86 = v83[2].n128_i64[0];
    v87 = v83[2].n128_u64[1];
    v88 = v83[3].n128_i64[0];
    v89 = v120;
    v83[1] = v119;
    v83[2] = v89;
    v83[3].n128_u64[0] = v82;
    sub_1ADE92284(v84, v85, v86, v87, v88);
  }

  else
  {
    v90 = v119.n128_u64[0];
    v91 = sub_1AE23BC9C();

    swift_willThrow();

    swift_beginAccess();
    v39 = *(a10 + 16);
    *(a10 + 16) = v91;
  }
}

uint64_t sub_1ADE8AB00(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AE23BDDC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1AE23BD8C();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

void static CRDataStoreBundle.write(_:model:url:allowedEncodings:allowedAppFormats:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v35 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 16);
  v33[0] = *a2;
  v33[1] = v11;
  v34 = *(a2 + 32);
  v12 = *(a4 + 16);
  v13 = (a4 + 32);
  while (v12)
  {
    v14 = *v13++;
    --v12;
    if (!v14)
    {
      sub_1ADE42E40(a1, a2, a3);
      swift_allocError();
      *v15 = 0xD00000000000002ALL;
      *(v15 + 8) = 0x80000001AE2604C0;
      *(v15 + 16) = 0;
      swift_willThrow();
      return;
    }
  }

  v32 = 0;
  v16 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
  v29 = sub_1AE23BD1C();
  v17 = swift_allocObject();
  *(v17 + 16) = v6;
  v18 = *(a2 + 16);
  *(v17 + 24) = *a2;
  *(v17 + 40) = v18;
  *(v17 + 56) = *(a2 + 32);
  *(v17 + 64) = a1;
  *(v17 + 72) = a4;
  *(v17 + 80) = a5;
  *(v17 + 88) = v16;
  *(v17 + 96) = &v32;
  v19 = swift_allocObject();
  v19[2] = sub_1ADE91E50;
  v19[3] = v17;
  aBlock[4] = sub_1ADE92800;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE8AB00;
  aBlock[3] = &block_descriptor_20;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  v22 = v16;

  v24 = type metadata accessor for Capsule(0, *(v6 + 80), *(v6 + 88), v23);
  (*(*(v24 - 8) + 16))(v31, v33, v24);

  aBlock[0] = 0;
  [v22 coordinateWritingItemAtURL:v29 options:0 error:aBlock byAccessor:v20];
  _Block_release(v20);

  v25 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v25)
  {

LABEL_10:
    swift_willThrow();
    v28 = v25;

    return;
  }

  if (v32)
  {
    v27 = v32;
    goto LABEL_10;
  }
}

double sub_1ADE8AF2C(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v52 = a6;
  v53 = a5;
  v51 = a4;
  v13 = *a3;
  v50 = a3[1];
  v48 = v13;
  v49 = *(a3 + 4);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v42 - v15;
  v17 = sub_1AE23BDDC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADE8B248();
  v43 = a7;
  v44 = a8;
  v21 = *(a2 + 88);
  v45 = *(a2 + 80);
  v22 = v45;
  v46 = v16;
  v47 = v20;
  v23 = v21;
  type metadata accessor for CRDataStoreBundleNonCoordinated.ModelStorage(0, v45, v21, v24);
  sub_1AE018450();
  v26 = v25;
  swift_beginAccess();
  v27 = v26[2];
  v28 = v26[3];
  v29 = v26[4];
  v30 = v26[5];
  v31 = v26[6];
  v32 = v50;
  *(v26 + 1) = v48;
  *(v26 + 2) = v32;
  v26[6] = v49;
  sub_1ADE92284(v27, v28, v29, v30, v31);
  *&v50 = type metadata accessor for CRDataStoreBundleNonCoordinated(0, v22, v23, v33);
  v34 = *(v18 + 16);
  v34(v20, a1, v17);
  v35 = v46;
  v34(v46, a1, v17);
  (*(v18 + 56))(v35, 0, 1, v17);
  v37 = type metadata accessor for Capsule(0, v45, v23, v36);
  (*(*(v37 - 8) + 16))(v54, a3, v37);
  v38 = v51;

  v39 = v53;

  sub_1AE018484(v38, v47, v35, 0, v26, 0, 0, 1, v39, v40, 0);
  sub_1AE01864C(v43);

  return result;
}

id sub_1ADE8B248()
{
  v24 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_1AE23BDAC();
  v2 = sub_1AE23CCDC();

  v3 = [v1 fileExistsAtPath:v2 isDirectory:&v23];

  if (!v3)
  {
    goto LABEL_5;
  }

  if (v23 != 1)
  {
    goto LABEL_9;
  }

  v7 = [v0 defaultManager];
  sub_1AE23BDAC();
  v8 = sub_1AE23CCDC();

  v22 = 0;
  v9 = [v7 contentsOfDirectoryAtPath:v8 error:&v22];

  v10 = v22;
  if (!v9)
  {
    v19 = v22;
    v20 = sub_1AE23BC9C();

    swift_willThrow();
    goto LABEL_9;
  }

  v11 = sub_1AE23CFDC();
  v12 = v10;

  v13 = *(v11 + 16);

  if (v13)
  {
LABEL_9:
    sub_1ADE42E40(v4, v5, v6);
    swift_allocError();
    *v21 = 0xD000000000000014;
    *(v21 + 8) = 0x80000001AE2605D0;
    *(v21 + 16) = 0;
    return swift_willThrow();
  }

LABEL_5:
  v14 = [v0 defaultManager];
  v15 = sub_1AE23BD1C();
  v22 = 0;
  v16 = [v14 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v22];

  if (v16)
  {
    return v22;
  }

  v18 = v22;
  sub_1AE23BC9C();

  return swift_willThrow();
}

uint64_t static CRDataStoreBundle.writeAsync(_:model:url:allowedEncodings:allowedAppFormats:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 128) = a5;
  *(v6 + 136) = v5;
  *(v6 + 112) = a3;
  *(v6 + 120) = a4;
  *(v6 + 96) = a1;
  *(v6 + 104) = a2;
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 32);
  return MEMORY[0x1EEE6DFA0](sub_1ADE8B4EC, 0, 0);
}

uint64_t sub_1ADE8B4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[15];
  v5 = *(v4 + 16);
  v6 = (v4 + 32);
  while (v5)
  {
    v7 = *v6++;
    --v5;
    if (!v7)
    {
      sub_1ADE42E40(a1, a2, a3);
      swift_allocError();
      *v8 = 0xD00000000000002ALL;
      *(v8 + 8) = 0x80000001AE2604C0;
      *(v8 + 16) = 0;
      swift_willThrow();
      v9 = v3[1];

      return v9();
    }
  }

  if (qword_1EB5B9C18 != -1)
  {
    swift_once();
    v4 = v3[15];
  }

  v11 = v3[16];
  v12 = v3[17];
  v13 = v3[12];
  v14 = v3[13];
  v3[18] = qword_1EB5D7CD0;
  v15 = swift_allocObject();
  v3[19] = v15;
  *(v15 + 16) = v12;
  v16 = *(v14 + 16);
  v17 = *(v14 + 32);
  *(v15 + 24) = *v14;
  *(v15 + 40) = v16;
  *(v15 + 56) = v17;
  *(v15 + 64) = v13;
  *(v15 + 72) = v4;
  *(v15 + 80) = v11;
  v19 = type metadata accessor for Capsule(0, *(v12 + 80), *(v12 + 88), v18);
  (*(*(v19 - 8) + 16))(v3 + 7, v3 + 2, v19);
  v20 = v13;

  v21 = swift_task_alloc();
  v3[20] = v21;
  *v21 = v3;
  v21[1] = sub_1ADE8B728;
  v22 = v3[14];

  return sub_1ADE8ED9C(v21, v22, 0, &unk_1AE242580, v15);
}

uint64_t sub_1ADE8B728()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_1ADE8B864;
  }

  else
  {

    v4 = sub_1ADE8B84C;
    v3 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1ADE8B864()
{

  return MEMORY[0x1EEE6DFA0](sub_1ADE8B8CC, 0, 0);
}

uint64_t sub_1ADE8B8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = a8;
  *(v8 + 136) = v13;
  *(v8 + 112) = a6;
  *(v8 + 120) = a7;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  *(v8 + 80) = a2;
  *(v8 + 88) = a3;
  v9 = *(a5 + 16);
  *(v8 + 144) = *a5;
  *(v8 + 160) = v9;
  *(v8 + 176) = *(a5 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  *(v8 + 184) = swift_task_alloc();
  v10 = sub_1AE23BDDC();
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 - 8);
  *(v8 + 208) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ADE8BA00, 0, 0);
}

uint64_t sub_1ADE8BA00()
{
  sub_1ADE8B248();
  v1 = *(v0 + 200);
  v31 = *(v0 + 208);
  v2 = *(v0 + 192);
  v26 = *(v0 + 184);
  v3 = *(v0 + 176);
  v29 = *(v0 + 112);
  v30 = *(v0 + 120);
  v28 = *(v0 + 104);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  v7 = *(v4 + 80);
  v6 = *(v4 + 88);
  type metadata accessor for CRDataStoreBundleNonCoordinated.ModelStorage(0, v7, v6, v8);
  v27 = *(v0 + 160);
  v25 = *(v0 + 144);
  sub_1AE018450();
  v10 = v9;
  *(v0 + 216) = v9;
  swift_beginAccess();
  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[4];
  v14 = v10[5];
  v15 = v10[6];
  *(v10 + 1) = v25;
  *(v10 + 2) = v27;
  v10[6] = v3;
  sub_1ADE92284(v11, v12, v13, v14, v15);
  type metadata accessor for CRDataStoreBundleNonCoordinated(0, v7, v6, v16);
  v17 = *(v1 + 16);
  v17(v31, v5, v2);
  v17(v26, v5, v2);
  (*(v1 + 56))(v26, 0, 1, v2);
  v19 = type metadata accessor for Capsule(0, v7, v6, v18);
  (*(*(v19 - 8) + 16))(v0 + 16, v28, v19);
  v20 = v29;

  *(v0 + 224) = sub_1AE018484(v20, v31, v26, 0, v10, 0, 0, 0, v30, v21, 0);
  v22 = *(v0 + 88);
  v23 = swift_task_alloc();
  *(v0 + 232) = v23;
  *v23 = v0;
  v23[1] = sub_1ADE8BCE8;

  return sub_1AE018748(v22);
}

uint64_t sub_1ADE8BCE8()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1ADE8BE88;
  }

  else
  {
    v2 = sub_1ADE8BDFC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1ADE8BDFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1ADE8BE88()
{

  **(v0 + 136) = *(v0 + 240);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static CRDataStoreBundle.write(_:model:url:version:fileFormatVersion:)(void *a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v8 = *(a2 + 32);
  v9 = *a4;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v16 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA188, &unk_1AE242290);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AE2418F0;
  *(v11 + 32) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA180, &qword_1AE241B78);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AE2418F0;
  if ((a5 & 0x10000) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = a5;
  }

  *(v12 + 32) = v13;
  static CRDataStoreBundle.write(_:model:url:allowedEncodings:allowedAppFormats:)(a1, v15, a3, v11, v12);
}

uint64_t static CRDataStoreBundle.write(_:model:url:fileFormatVersion:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a2 + 32);
  v8 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v8;
  v13 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA180, &qword_1AE241B78);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AE2418F0;
  if ((a4 & 0x10000) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = a4;
  }

  *(v9 + 32) = v10;
  static CRDataStoreBundle.write(_:model:url:allowedEncodings:allowedAppFormats:)(a1, v12, a3, &unk_1F23BBDC0, v9);
}

void static CRDataStoreBundle.write(_:url:fileFormatVersion:)(__int128 *a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 4);
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v7 = sub_1ADDCE2E4(0, &v11);
  sub_1ADDCEDE0(&v11, &qword_1EB5B9DB0, &qword_1AE240B80);
  v8 = a1[1];
  v11 = *a1;
  v12 = v8;
  v13 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA180, &qword_1AE241B78);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AE2418F0;
  if ((a3 & 0x10000) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3;
  }

  *(v9 + 32) = v10;
  static CRDataStoreBundle.write(_:model:url:allowedEncodings:allowedAppFormats:)(v7, &v11, a2, &unk_1F23BBDE8, v9);
}

uint64_t static CRDataStoreBundle.canRead(url:allowedEncodings:allowedAppFormats:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v5 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  v6 = sub_1AE23BD1C();
  v7 = swift_allocObject();
  v7[2] = &v14;
  v7[3] = a2;
  v7[4] = a3;
  v8 = swift_allocObject();
  v8[2] = sub_1ADE91F5C;
  v8[3] = v7;
  v13[4] = sub_1ADE92800;
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1ADE8AB00;
  v13[3] = &block_descriptor_38;
  v9 = _Block_copy(v13);

  v13[0] = 0;
  [v5 coordinateReadingItemAtURL:v6 options:0 error:v13 byAccessor:v9];
  _Block_release(v9);

  v10 = v13[0];
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  v11 = v14;

  if (v10)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

void sub_1ADE8C3CC(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v6 = sub_1AE23BDDC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultManager];
  sub_1AE23BDAC();
  v11 = sub_1AE23CCDC();

  v12 = [v10 fileExistsAtPath_];

  if (v12)
  {
    v25[1] = a2;
    sub_1AE23BD3C();
    v13 = sub_1AE23BDAC();
    v15 = v14;
    (*(v7 + 8))(v9, v6);
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    v16 = *(a3 + 16);
    v17 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v27 = MEMORY[0x1E69E7CC0];
      sub_1ADE6F41C(0, v16, 0);
      v17 = v27;
      v18 = (a3 + 32);
      do
      {
        v19 = *v18++;
        v20 = v19 == 2;
        if (v19 >= 2)
        {
          v27 = v17;
          if (v20)
          {
            v21 = 2;
          }

          else
          {
            v21 = 3;
          }
        }

        else
        {
          v27 = v17;
          v21 = 1;
        }

        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1ADE6F41C((v22 > 1), v23 + 1, 1);
          v17 = v27;
        }

        *(v17 + 16) = v23 + 1;
        *(v17 + 2 * v23 + 32) = v21;
        --v16;
      }

      while (v16);
    }

    type metadata accessor for CRSQLStore();
    inited = swift_initStackObject();
    *(inited + 104) = 0u;
    *(inited + 120) = 0u;
    *(inited + 136) = 0u;
    *(inited + 152) = 0u;
    *(inited + 168) = 0u;
    *(inited + 184) = 0u;
    *(inited + 200) = 0u;
    *(inited + 216) = 0u;
    *(inited + 232) = 0u;
    *(inited + 248) = 0u;
    *(inited + 88) = 0u;
    *(inited + 264) = 0u;
    *(inited + 280) = 0u;
    swift_beginAccess();
    sub_1ADE9241C(v28, inited + 88);
    swift_endAccess();
    *(inited + 24) = v15;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 64) = 0;
    *(inited + 66) = 1;
    *(inited + 68) = 0;
    *(inited + 70) = 1;
    *(inited + 72) = 0;
    *(inited + 80) = -1;
    *(inited + 16) = v13;
    *(inited + 41) = 256;
    *(inited + 48) = v26;
    *(inited + 56) = v17;

    sub_1ADDD16D4();
    sub_1ADDCEDE0(v28, &qword_1EB5B9DB0, &qword_1AE240B80);
    swift_setDeallocating();
    sub_1ADE46EAC();
    swift_deallocClassInstance();
  }

  else
  {
    *a2 = 0;
  }
}

double sub_1ADE8C728(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AE23C88C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1AE23C8CC();
  v9 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + 32);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v2;
  aBlock[4] = sub_1ADE923B8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDD2200;
  aBlock[3] = &block_descriptor_49;
  v13 = _Block_copy(aBlock);

  sub_1AE23C8AC();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1ADE923C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCC7D4(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0, MEMORY[0x1E69E6328]);
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16);

  return result;
}

double CRDataStoreBundle.sync(_:)(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = v1;
  return sub_1AE213BD4(v4);
}

uint64_t sub_1ADE8CA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return (a4)(v7, a2, a3);
}

uint64_t CRDataStoreBundle.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE8CB08@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 128);
  swift_beginAccess();
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  return sub_1ADE92304(v4, v5, v6, v7, v8);
}

double (*sub_1ADE8CB64(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = *(v1 + 128);
  swift_beginAccess();

  return sub_1ADE8CBC8;
}

double sub_1ADE8CBC8(uint64_t a1)
{
  swift_endAccess();

  return result;
}

double sub_1ADE8CC00(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v1 + 128);
  swift_beginAccess();
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  v9 = v4[6];
  v10 = *(a1 + 16);
  *(v4 + 1) = *a1;
  *(v4 + 2) = v10;
  v4[6] = v3;

  sub_1ADE92284(v5, v6, v7, v8, v9);

  return result;
}

double sub_1ADE8CC9C(void (*a1)(__int128 *))
{
  sub_1ADE8CB08(v9);
  v6 = v9[0];
  v7 = v9[1];
  v8 = v10;
  a1(&v6);
  v2 = v6;
  v3 = v7;
  v4 = v8;

  return sub_1ADE92284(v2, *(&v2 + 1), v3, *(&v3 + 1), v4);
}

uint64_t sub_1ADE8CD54@<X0>(char *a1@<X8>)
{
  v32 = a1;
  v34[2] = *MEMORY[0x1E69E9840];
  v1 = sub_1AE23BFEC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1AE23BDDC();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  v12 = sub_1AE23BD1C();
  v34[0] = 0;
  v13 = [v11 URLForDirectory:99 inDomain:1 appropriateForURL:v12 create:1 error:v34];

  v14 = v34[0];
  if (v13)
  {
    sub_1AE23BD8C();
    v15 = v14;

    sub_1AE23BD3C();
    v16 = *(v33 + 8);
    v17 = v6;
    v18 = v31;
    v33 += 8;
    v30 = v16;
    v16(v17, v31);
    sub_1AE23BFDC();
    v19 = sub_1AE23BF6C();
    v21 = v20;
    (*(v2 + 8))(v4, v1);
    v34[0] = 0x636E657265686F43;
    v34[1] = 0xEA00000000002D65;
    MEMORY[0x1B26FB670](v19, v21);

    v22 = v32;
    sub_1AE23BD3C();

    v23 = [v10 defaultManager];
    v24 = sub_1AE23BD1C();
    v34[0] = 0;
    LOBYTE(v21) = [v23 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:v34];

    if (v21)
    {
      v25 = v34[0];
      return v30(v9, v18);
    }

    else
    {
      v28 = v34[0];
      sub_1AE23BC9C();

      swift_willThrow();
      v29 = v30;
      v30(v22, v18);
      return v29(v9, v18);
    }
  }

  else
  {
    v27 = v34[0];
    sub_1AE23BC9C();

    return swift_willThrow();
  }
}

void sub_1ADE8D138(uint64_t a1, int a2, uint64_t a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = sub_1AE23BDDC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  sub_1ADE8CD54(&v48 - v13);
  if (!v4)
  {
    v54 = a2;
    v55 = 0;
    v56 = v3;
    v53 = a3;
    v15 = [objc_opt_self() defaultManager];
    sub_1AE23BD3C();
    v16 = sub_1AE23BD1C();
    v17 = *(v9 + 8);
    v17(v11, v8);
    v18 = v17;
    sub_1AE23BD3C();
    v19 = sub_1AE23BD1C();
    v17(v11, v8);
    v57 = 0;
    v20 = [v15 copyItemAtURL:v16 toURL:v19 error:&v57];

    if (v20)
    {
      v21 = v56;
      if (*(v56 + 48))
      {
        v22 = *(v56 + 40);
        v50 = *(v56 + 48);
        v51 = v22;
        v23 = v57;
        v57 = sub_1AE23BDAC();
        v58 = v24;
        v61 = 47;
        v62 = 0xE100000000000000;
        sub_1ADE42DEC(v57, v24, v25);
        v26 = sub_1AE23D81C();

        v27 = v26[2];
        v28 = v27 - 1;
        if (!v27)
        {
          v28 = 0;
        }

        v57 = v26;
        v58 = (v26 + 4);
        v59 = v28;
        v60 = (2 * v27) | 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4C0, &qword_1AE242780);
        v52 = v18;
        sub_1ADDCC7D4(&qword_1EB5BA4C8, &qword_1EB5BA4C0, &qword_1AE242780, MEMORY[0x1E69E6958]);
        v29 = sub_1AE23CBFC();
        v48 = v30;
        v49 = v29;

        v57 = sub_1AE23BDAC();
        v58 = v31;
        v61 = 47;
        v62 = 0xE100000000000000;
        v32 = sub_1AE23D81C();

        v33 = v32[2];
        v34 = v33 - 2;
        if (v33 < 2)
        {
          v34 = 0;
        }

        v57 = v32;
        v58 = (v32 + 4);
        v59 = v34;
        v60 = (2 * v33) | 1;
        v35 = sub_1AE23CBFC();
        v37 = v36;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1AE242560;
        v57 = 0;
        v58 = 0xE000000000000000;
        sub_1AE23DA2C();
        v39 = v50;

        v57 = v51;
        v58 = v39;
        MEMORY[0x1B26FB670](0x4C656E6F6C43203ALL, 0xEE00796C6C61636FLL);
        v40 = v58;
        *(v38 + 32) = v57;
        *(v38 + 40) = v40;
        v41 = MEMORY[0x1E69E6158];
        v42 = v48;
        v43 = v49;
        *(v38 + 56) = MEMORY[0x1E69E6158];
        *(v38 + 64) = v43;
        *(v38 + 72) = v42;
        *(v38 + 88) = v41;
        *(v38 + 96) = 15917;
        *(v38 + 104) = 0xE200000000000000;
        *(v38 + 152) = v41;
        *(v38 + 120) = v41;
        *(v38 + 128) = v35;
        *(v38 + 136) = v37;
        sub_1AE23E2EC();
        v18 = v52;
        v21 = v56;
      }

      else
      {
        v45 = v57;
      }

      v46 = v54;
      v47 = v55;
      sub_1ADE8D680(v14, a1);
      if (v47 || (v46 & 1) == 0)
      {
        v18(v14, v8);
      }

      else if (*(v21 + 120))
      {

        sub_1AE018540();
        v18(v14, v8);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v44 = v57;
      sub_1AE23BC9C();

      swift_willThrow();
      v18(v14, v8);
    }
  }
}