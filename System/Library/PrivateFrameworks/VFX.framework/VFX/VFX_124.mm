uint64_t sub_1AFA9A444(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1AFA9A458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  sub_1AFA9A4B4(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1AFA9A4B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = type metadata accessor for ScriptCompilerSystem.Builder(a1, v9, a4, a5);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1AFA9A520(uint64_t a1)
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v366 = qword_1ED73B840;
  v367 = 0;
  v368 = 2;
  v369 = 0;
  v370 = 2;
  v371 = 0;
  sub_1AF70335C(1, &v243);
  v430 = v243;
  v431 = v244;
  v432 = v245;
  v433 = v246 | 1;
  v434 = v247;
  v435 = v248;
  sub_1AF6B06C0(a1, &v430, 0x200000000, v249);
  v239 = *&v249[32];
  v240 = v250;
  v241 = v251;
  v242 = v252;
  v237 = *v249;
  v238 = *&v249[16];
  sub_1AFA9E8FC(&v243, sub_1AF81FD74);
  v132 = a1;
  if (!*v249)
  {
    goto LABEL_19;
  }

  if (v252 < 1 || (v2 = *(&v250 + 1)) == 0)
  {
    sub_1AFA9BF94(v249, &qword_1ED725EA0, &type metadata for QueryResult);
LABEL_19:
    v5 = 0;
    v6 = 0;
    goto LABEL_21;
  }

  v3 = *&v249[40];
  v4 = *(&v251 + 1);
  v169 = *(v251 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v142 = *(*(&v251 + 1) + 32);
  v333 = *v249;
  v334 = *&v249[8];
  v335 = *&v249[24];
  v133 = type metadata accessor for GraphScript(0);
  *&v329[32] = v239;
  v330 = v240;
  v331 = v241;
  v332 = v242;
  *v329 = v237;
  *&v329[16] = v238;
  sub_1AF5DD298(v329, v319);
  v5 = 0;
  v6 = 0;
  v7 = (v3 + 24);
  do
  {
    v178 = v6;
    v8 = v5;
    v151 = *(v7 - 6);
    v160 = v2;
    v9 = *(v7 - 5);
    v11 = *(v7 - 1);
    v10 = *v7;
    v12 = v7[1];
    v13 = v7[2];
    if (v169)
    {
      v14 = *(v13 + 376);

      os_unfair_lock_lock(v14);
      os_unfair_lock_lock(*(v13 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v142);
    v15 = *(v4 + 64);
    v428[0] = *(v4 + 48);
    v428[1] = v15;
    v429 = *(v4 + 80);
    v16 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
    *(v4 + 48) = ecs_stack_allocator_allocate(*(v4 + 32), 48 * v16, 8);
    *(v4 + 56) = v16;
    *(v4 + 72) = 0;
    *(v4 + 80) = 0;
    *(v4 + 64) = 0;
    sub_1AF64B110(v133, &off_1F255B548, v11, v10, v12, v4);
    v17 = v8 + v9 - v151;
    if (v151 == v9)
    {
      v17 = v8;
    }

    if (v11)
    {
      v5 = v8 + v12;
    }

    else
    {
      v5 = v17;
    }

    v6 = v178;
    sub_1AF630994(v4, &v333, v428);
    sub_1AF62D29C(v13);
    ecs_stack_allocator_pop_snapshot(v142);
    if (v169)
    {
      os_unfair_lock_unlock(*(v13 + 344));
      os_unfair_lock_unlock(*(v13 + 376));
    }

    v7 += 6;
    v2 = v160 - 1;
  }

  while (v160 != 1);
  sub_1AFA9BF94(v249, &qword_1ED725EA0, &type metadata for QueryResult);
  sub_1AFA9BF94(v249, &qword_1ED725EA0, &type metadata for QueryResult);
  a1 = v132;
LABEL_21:
  sub_1AF70471C(1, &v253);
  v422 = v253;
  v423 = v254;
  v424 = v255;
  v425 = v256 | 1;
  v426 = v257;
  v427 = v258;
  sub_1AF6B06C0(a1, &v422, 0x200000000, v259);
  v233 = *&v259[32];
  v234 = v260;
  v235 = v261;
  v236 = v262;
  v231 = *v259;
  v232 = *&v259[16];
  sub_1AFA9E8FC(&v253, sub_1AF81FC5C);
  if (*v259)
  {
    if (v262 >= 1 && (v18 = *(&v260 + 1)) != 0)
    {
      v19 = *&v259[40];
      v20 = *(&v261 + 1);
      v170 = *(v261 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v143 = *(*(&v261 + 1) + 32);
      v336 = *v259;
      v337 = *&v259[8];
      v338 = *&v259[24];
      v134 = type metadata accessor for SimpleScript(0);
      *&v329[32] = v233;
      v330 = v234;
      v331 = v235;
      v332 = v236;
      *v329 = v231;
      *&v329[16] = v232;
      sub_1AF5DD298(v329, v319);
      v21 = (v19 + 24);
      do
      {
        v179 = v6;
        v22 = v5;
        v152 = *(v21 - 6);
        v161 = v18;
        v23 = *(v21 - 5);
        v25 = *(v21 - 1);
        v24 = *v21;
        v26 = v21[1];
        v27 = v21[2];
        if (v170)
        {
          v28 = *(v27 + 376);

          os_unfair_lock_lock(v28);
          os_unfair_lock_lock(*(v27 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v143);
        v29 = *(v20 + 64);
        v420[0] = *(v20 + 48);
        v420[1] = v29;
        v421 = *(v20 + 80);
        v30 = *(*(*(*(v27 + 40) + 16) + 32) + 16) + 1;
        *(v20 + 48) = ecs_stack_allocator_allocate(*(v20 + 32), 48 * v30, 8);
        *(v20 + 56) = v30;
        *(v20 + 72) = 0;
        *(v20 + 80) = 0;
        *(v20 + 64) = 0;
        sub_1AF64B110(v134, &off_1F255B808, v25, v24, v26, v20);
        v31 = v22 + v23 - v152;
        if (v152 == v23)
        {
          v31 = v22;
        }

        if (v25)
        {
          v5 = v22 + v26;
        }

        else
        {
          v5 = v31;
        }

        v6 = v179;
        sub_1AF630994(v20, &v336, v420);
        sub_1AF62D29C(v27);
        ecs_stack_allocator_pop_snapshot(v143);
        if (v170)
        {
          os_unfair_lock_unlock(*(v27 + 344));
          os_unfair_lock_unlock(*(v27 + 376));
        }

        v21 += 6;
        v18 = v161 - 1;
      }

      while (v161 != 1);
      sub_1AFA9BF94(v259, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v259, &qword_1ED725EA0, &type metadata for QueryResult);
      a1 = v132;
    }

    else
    {
      sub_1AFA9BF94(v259, &qword_1ED725EA0, &type metadata for QueryResult);
    }
  }

  sub_1AF7044B4(1, &v263);
  v414 = v263;
  v415 = v264;
  v416 = v265;
  v417 = v266 | 1;
  v418 = v267;
  v419 = v268;
  sub_1AF6B06C0(a1, &v414, 0x200000000, v269);
  v227 = *&v269[32];
  v228 = v270;
  v229 = v271;
  v230 = v272;
  v225 = *v269;
  v226 = *&v269[16];
  sub_1AFA9E8FC(&v263, sub_1AF81FB10);
  if (*v269)
  {
    if (v272 >= 1 && (v32 = *(&v270 + 1)) != 0)
    {
      v33 = *&v269[40];
      v34 = *(&v271 + 1);
      v171 = *(v271 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v144 = *(*(&v271 + 1) + 32);
      v339 = *v269;
      v340 = *&v269[8];
      v341 = *&v269[24];
      v135 = type metadata accessor for MetalFunctionScript(0);
      *&v329[32] = v227;
      v330 = v228;
      v331 = v229;
      v332 = v230;
      *v329 = v225;
      *&v329[16] = v226;
      sub_1AF5DD298(v329, v319);
      v35 = (v33 + 24);
      do
      {
        v180 = v6;
        v36 = v5;
        v153 = *(v35 - 6);
        v162 = v32;
        v37 = *(v35 - 5);
        v39 = *(v35 - 1);
        v38 = *v35;
        v40 = v35[1];
        v41 = v35[2];
        if (v171)
        {
          v42 = *(v41 + 376);

          os_unfair_lock_lock(v42);
          os_unfair_lock_lock(*(v41 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v144);
        v43 = *(v34 + 64);
        v412[0] = *(v34 + 48);
        v412[1] = v43;
        v413 = *(v34 + 80);
        v44 = *(*(*(*(v41 + 40) + 16) + 32) + 16) + 1;
        *(v34 + 48) = ecs_stack_allocator_allocate(*(v34 + 32), 48 * v44, 8);
        *(v34 + 56) = v44;
        *(v34 + 72) = 0;
        *(v34 + 80) = 0;
        *(v34 + 64) = 0;
        sub_1AF64B110(v135, &off_1F255B630, v39, v38, v40, v34);
        v45 = v36 + v37 - v153;
        if (v153 == v37)
        {
          v45 = v36;
        }

        if (v39)
        {
          v5 = v36 + v40;
        }

        else
        {
          v5 = v45;
        }

        v6 = v180;
        sub_1AF630994(v34, &v339, v412);
        sub_1AF62D29C(v41);
        ecs_stack_allocator_pop_snapshot(v144);
        if (v171)
        {
          os_unfair_lock_unlock(*(v41 + 344));
          os_unfair_lock_unlock(*(v41 + 376));
        }

        v35 += 6;
        v32 = v162 - 1;
      }

      while (v162 != 1);
      sub_1AFA9BF94(v269, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v269, &qword_1ED725EA0, &type metadata for QueryResult);
      a1 = v132;
    }

    else
    {
      sub_1AFA9BF94(v269, &qword_1ED725EA0, &type metadata for QueryResult);
    }
  }

  sub_1AF70424C(1, &v273);
  v406 = v273;
  v407 = v274;
  v408 = v275;
  v409 = v276 | 1;
  v410 = v277;
  v411 = v278;
  sub_1AF6B06C0(a1, &v406, 0x200000000, v279);
  v221 = *&v279[32];
  v222 = v280;
  v223 = v281;
  v224 = v282;
  v219 = *v279;
  v220 = *&v279[16];
  sub_1AFA9E8FC(&v273, sub_1AF81F9C4);
  if (*v279)
  {
    if (v282 >= 1 && (v46 = *(&v280 + 1)) != 0)
    {
      v47 = *&v279[40];
      v48 = *(&v281 + 1);
      v172 = *(v281 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v145 = *(*(&v281 + 1) + 32);
      v342 = *v279;
      v343 = *&v279[8];
      v344 = *&v279[24];
      v136 = type metadata accessor for ShaderScript(0);
      *&v329[32] = v221;
      v330 = v222;
      v331 = v223;
      v332 = v224;
      *v329 = v219;
      *&v329[16] = v220;
      sub_1AF5DD298(v329, v319);
      v49 = (v47 + 24);
      do
      {
        v181 = v6;
        v50 = v5;
        v154 = *(v49 - 6);
        v163 = v46;
        v51 = *(v49 - 5);
        v53 = *(v49 - 1);
        v52 = *v49;
        v54 = v49[1];
        v55 = v49[2];
        if (v172)
        {
          v56 = *(v55 + 376);

          os_unfair_lock_lock(v56);
          os_unfair_lock_lock(*(v55 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v145);
        v57 = *(v48 + 64);
        v404[0] = *(v48 + 48);
        v404[1] = v57;
        v405 = *(v48 + 80);
        v58 = *(*(*(*(v55 + 40) + 16) + 32) + 16) + 1;
        *(v48 + 48) = ecs_stack_allocator_allocate(*(v48 + 32), 48 * v58, 8);
        *(v48 + 56) = v58;
        *(v48 + 72) = 0;
        *(v48 + 80) = 0;
        *(v48 + 64) = 0;
        sub_1AF64B110(v136, &off_1F255B8D0, v53, v52, v54, v48);
        v59 = v50 + v51 - v154;
        if (v154 == v51)
        {
          v59 = v50;
        }

        if (v53)
        {
          v5 = v50 + v54;
        }

        else
        {
          v5 = v59;
        }

        v6 = v181;
        sub_1AF630994(v48, &v342, v404);
        sub_1AF62D29C(v55);
        ecs_stack_allocator_pop_snapshot(v145);
        if (v172)
        {
          os_unfair_lock_unlock(*(v55 + 344));
          os_unfair_lock_unlock(*(v55 + 376));
        }

        v49 += 6;
        v46 = v163 - 1;
      }

      while (v163 != 1);
      sub_1AFA9BF94(v279, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v279, &qword_1ED725EA0, &type metadata for QueryResult);
      a1 = v132;
    }

    else
    {
      sub_1AFA9BF94(v279, &qword_1ED725EA0, &type metadata for QueryResult);
    }
  }

  sub_1AF704984(1, &v283);
  v398 = v283;
  v399 = v284;
  v400 = v285;
  v401 = v286 | 1;
  v402 = v287;
  v403 = v288;
  sub_1AF6B06C0(a1, &v398, 0x200000000, v289);
  v215 = *&v289[32];
  v216 = v290;
  v217 = v291;
  v218 = v292;
  v213 = *v289;
  v214 = *&v289[16];
  sub_1AFA9E8FC(&v283, sub_1AF81F8AC);
  if (*v289)
  {
    if (v292 >= 1 && (v60 = *(&v290 + 1)) != 0)
    {
      v61 = *&v289[40];
      v62 = *(&v291 + 1);
      v173 = *(v291 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v146 = *(*(&v291 + 1) + 32);
      v345 = *v289;
      v346 = *&v289[8];
      v347 = *&v289[24];
      v137 = type metadata accessor for EmitterScript(0);
      *&v329[32] = v215;
      v330 = v216;
      v331 = v217;
      v332 = v218;
      *v329 = v213;
      *&v329[16] = v214;
      sub_1AF5DD298(v329, v319);
      v63 = (v61 + 24);
      do
      {
        v182 = v6;
        v64 = v5;
        v155 = *(v63 - 6);
        v164 = v60;
        v65 = *(v63 - 5);
        v67 = *(v63 - 1);
        v66 = *v63;
        v68 = v63[1];
        v69 = v63[2];
        if (v173)
        {
          v70 = *(v69 + 376);

          os_unfair_lock_lock(v70);
          os_unfair_lock_lock(*(v69 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v146);
        v71 = *(v62 + 64);
        v396[0] = *(v62 + 48);
        v396[1] = v71;
        v397 = *(v62 + 80);
        v72 = *(*(*(*(v69 + 40) + 16) + 32) + 16) + 1;
        *(v62 + 48) = ecs_stack_allocator_allocate(*(v62 + 32), 48 * v72, 8);
        *(v62 + 56) = v72;
        *(v62 + 72) = 0;
        *(v62 + 80) = 0;
        *(v62 + 64) = 0;
        sub_1AF64B110(v137, &off_1F255B720, v67, v66, v68, v62);
        v73 = v64 + v65 - v155;
        if (v155 == v65)
        {
          v73 = v64;
        }

        if (v67)
        {
          v5 = v64 + v68;
        }

        else
        {
          v5 = v73;
        }

        v6 = v182;
        sub_1AF630994(v62, &v345, v396);
        sub_1AF62D29C(v69);
        ecs_stack_allocator_pop_snapshot(v146);
        if (v173)
        {
          os_unfair_lock_unlock(*(v69 + 344));
          os_unfair_lock_unlock(*(v69 + 376));
        }

        v63 += 6;
        v60 = v164 - 1;
      }

      while (v164 != 1);
      sub_1AFA9BF94(v289, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v289, &qword_1ED725EA0, &type metadata for QueryResult);
      a1 = v132;
    }

    else
    {
      sub_1AFA9BF94(v289, &qword_1ED725EA0, &type metadata for QueryResult);
    }
  }

  sub_1AF703D7C(1, &v293);
  v390 = v293;
  v391 = v294;
  v392 = v295;
  v393 = v296 | 1;
  v394 = v297;
  v395 = v298;
  sub_1AF6B06C0(a1, &v390, 0x200000000, v299);
  v209 = *&v299[32];
  v210 = v300;
  v211 = v301;
  v212 = v302;
  v207 = *v299;
  v208 = *&v299[16];
  sub_1AFA9E8FC(&v293, sub_1AF81F794);
  if (*v299)
  {
    if (v302 >= 1 && (v74 = *(&v300 + 1)) != 0)
    {
      v75 = *&v299[40];
      v76 = *(&v301 + 1);
      v174 = *(v301 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v147 = *(*(&v301 + 1) + 32);
      v348 = *v299;
      v349 = *&v299[8];
      v350 = *&v299[24];
      inited = type metadata accessor for ParticleInitScript(0);
      *&v329[32] = v209;
      v330 = v210;
      v331 = v211;
      v332 = v212;
      *v329 = v207;
      *&v329[16] = v208;
      sub_1AF5DD298(v329, v319);
      v77 = (v75 + 24);
      do
      {
        v183 = v6;
        v78 = v5;
        v156 = *(v77 - 6);
        v165 = v74;
        v79 = *(v77 - 5);
        v81 = *(v77 - 1);
        v80 = *v77;
        v82 = v77[1];
        v83 = v77[2];
        if (v174)
        {
          v84 = *(v83 + 376);

          os_unfair_lock_lock(v84);
          os_unfair_lock_lock(*(v83 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v147);
        v85 = *(v76 + 64);
        v388[0] = *(v76 + 48);
        v388[1] = v85;
        v389 = *(v76 + 80);
        v86 = *(*(*(*(v83 + 40) + 16) + 32) + 16) + 1;
        *(v76 + 48) = ecs_stack_allocator_allocate(*(v76 + 32), 48 * v86, 8);
        *(v76 + 56) = v86;
        *(v76 + 72) = 0;
        *(v76 + 80) = 0;
        *(v76 + 64) = 0;
        sub_1AF64B110(inited, &off_1F255B9C0, v81, v80, v82, v76);
        v87 = v78 + v79 - v156;
        if (v156 == v79)
        {
          v87 = v78;
        }

        if (v81)
        {
          v5 = v78 + v82;
        }

        else
        {
          v5 = v87;
        }

        v6 = v183;
        sub_1AF630994(v76, &v348, v388);
        sub_1AF62D29C(v83);
        ecs_stack_allocator_pop_snapshot(v147);
        if (v174)
        {
          os_unfair_lock_unlock(*(v83 + 344));
          os_unfair_lock_unlock(*(v83 + 376));
        }

        v77 += 6;
        v74 = v165 - 1;
      }

      while (v165 != 1);
      sub_1AFA9BF94(v299, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v299, &qword_1ED725EA0, &type metadata for QueryResult);
      a1 = v132;
    }

    else
    {
      sub_1AFA9BF94(v299, &qword_1ED725EA0, &type metadata for QueryResult);
    }
  }

  sub_1AF703D5C(1, &v303);
  v382 = v303;
  v383 = v304;
  v384 = v305;
  v385 = v306 | 1;
  v386 = v307;
  v387 = v308;
  sub_1AF6B06C0(a1, &v382, 0x200000000, v309);
  v203 = *&v309[32];
  v204 = v310;
  v205 = v311;
  v206 = v312;
  v201 = *v309;
  v202 = *&v309[16];
  sub_1AFA9E8FC(&v303, sub_1AF81F67C);
  if (*v309)
  {
    if (v312 >= 1 && (v88 = *(&v310 + 1)) != 0)
    {
      v89 = *&v309[40];
      v90 = *(&v311 + 1);
      v175 = *(v311 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v148 = *(*(&v311 + 1) + 32);
      v351 = *v309;
      v352 = *&v309[8];
      v353 = *&v309[24];
      updated = type metadata accessor for ParticleUpdateScript(0);
      *&v329[32] = v203;
      v330 = v204;
      v331 = v205;
      v332 = v206;
      *v329 = v201;
      *&v329[16] = v202;
      sub_1AF5DD298(v329, v319);
      v91 = (v89 + 24);
      do
      {
        v184 = v6;
        v92 = v5;
        v157 = *(v91 - 6);
        v166 = v88;
        v93 = *(v91 - 5);
        v95 = *(v91 - 1);
        v94 = *v91;
        v96 = v91[1];
        v97 = v91[2];
        if (v175)
        {
          v98 = *(v97 + 376);

          os_unfair_lock_lock(v98);
          os_unfair_lock_lock(*(v97 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v148);
        v99 = *(v90 + 64);
        v380[0] = *(v90 + 48);
        v380[1] = v99;
        v381 = *(v90 + 80);
        v100 = *(*(*(*(v97 + 40) + 16) + 32) + 16) + 1;
        *(v90 + 48) = ecs_stack_allocator_allocate(*(v90 + 32), 48 * v100, 8);
        *(v90 + 56) = v100;
        *(v90 + 72) = 0;
        *(v90 + 80) = 0;
        *(v90 + 64) = 0;
        sub_1AF64B110(updated, &off_1F255BAD0, v95, v94, v96, v90);
        v101 = v92 + v93 - v157;
        if (v157 == v93)
        {
          v101 = v92;
        }

        if (v95)
        {
          v5 = v92 + v96;
        }

        else
        {
          v5 = v101;
        }

        v6 = v184;
        sub_1AF630994(v90, &v351, v380);
        sub_1AF62D29C(v97);
        ecs_stack_allocator_pop_snapshot(v148);
        if (v175)
        {
          os_unfair_lock_unlock(*(v97 + 344));
          os_unfair_lock_unlock(*(v97 + 376));
        }

        v91 += 6;
        v88 = v166 - 1;
      }

      while (v166 != 1);
      sub_1AFA9BF94(v309, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v309, &qword_1ED725EA0, &type metadata for QueryResult);
      a1 = v132;
    }

    else
    {
      sub_1AFA9BF94(v309, &qword_1ED725EA0, &type metadata for QueryResult);
    }
  }

  sub_1AF703D3C(1, &v313);
  v374 = v313;
  v375 = v314;
  v376 = v315;
  v377 = v316 | 1;
  v378 = v317;
  v379 = v318;
  sub_1AF6B06C0(a1, &v374, 0x200000000, v319);
  v197 = *&v319[32];
  v198 = v320;
  v199 = v321;
  v200 = v322;
  v195 = *v319;
  v196 = *&v319[16];
  sub_1AFA9E8FC(&v313, sub_1AF81F514);
  if (*v319)
  {
    if (v322 >= 1 && (v102 = *(&v320 + 1)) != 0)
    {
      v103 = *&v319[40];
      v104 = *(&v321 + 1);
      v176 = *(v321 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v149 = *(*(&v321 + 1) + 32);
      v354 = *v319;
      v355 = *&v319[8];
      v356 = *&v319[24];
      v140 = type metadata accessor for TriggerScript(0);
      *&v329[32] = v197;
      v330 = v198;
      v331 = v199;
      v332 = v200;
      *v329 = v195;
      *&v329[16] = v196;
      sub_1AF5DD298(v329, &v189);
      v105 = (v103 + 24);
      do
      {
        v185 = v6;
        v106 = v5;
        v158 = *(v105 - 6);
        v167 = v102;
        v107 = *(v105 - 5);
        v109 = *(v105 - 1);
        v108 = *v105;
        v110 = v105[1];
        v111 = v105[2];
        if (v176)
        {
          v112 = *(v111 + 376);

          os_unfair_lock_lock(v112);
          os_unfair_lock_lock(*(v111 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v149);
        v113 = *(v104 + 64);
        v372[0] = *(v104 + 48);
        v372[1] = v113;
        v373 = *(v104 + 80);
        v114 = *(*(*(*(v111 + 40) + 16) + 32) + 16) + 1;
        *(v104 + 48) = ecs_stack_allocator_allocate(*(v104 + 32), 48 * v114, 8);
        *(v104 + 56) = v114;
        *(v104 + 72) = 0;
        *(v104 + 80) = 0;
        *(v104 + 64) = 0;
        sub_1AF64B110(v140, &off_1F255BBC8, v109, v108, v110, v104);
        v115 = v106 + v107 - v158;
        if (v158 == v107)
        {
          v115 = v106;
        }

        if (v109)
        {
          v5 = v106 + v110;
        }

        else
        {
          v5 = v115;
        }

        v6 = v185;
        sub_1AF630994(v104, &v354, v372);
        sub_1AF62D29C(v111);
        ecs_stack_allocator_pop_snapshot(v149);
        if (v176)
        {
          os_unfair_lock_unlock(*(v111 + 344));
          os_unfair_lock_unlock(*(v111 + 376));
        }

        v105 += 6;
        v102 = v167 - 1;
      }

      while (v167 != 1);
      sub_1AFA9BF94(v319, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v319, &qword_1ED725EA0, &type metadata for QueryResult);
      a1 = v132;
    }

    else
    {
      sub_1AFA9BF94(v319, &qword_1ED725EA0, &type metadata for QueryResult);
    }
  }

  sub_1AF703FE4(1, &v323);
  v360 = v323;
  v361 = v324;
  v362 = v325;
  v363 = v326 | 1;
  v364 = v327;
  v365 = v328;
  sub_1AF6B06C0(a1, &v360, 0x200000000, v329);
  v191 = *&v329[32];
  v192 = v330;
  v193 = v331;
  v194 = v332;
  v189 = *v329;
  v190 = *&v329[16];
  sub_1AFA9E8FC(&v323, sub_1AF8BDC30);
  if (*v329)
  {
    if (v332 >= 1)
    {
      v116 = *(&v330 + 1);
      if (*(&v330 + 1))
      {
        v117 = *&v329[40];
        v118 = *(&v331 + 1);
        v119 = *(v331 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v150 = *(*(&v331 + 1) + 32);
        v357 = *v329;
        v358 = *&v329[8];
        v359 = *&v329[24];
        v141 = type metadata accessor for HeaderScript(0);
        v188[2] = v191;
        v188[3] = v192;
        v188[4] = v193;
        v188[5] = v194;
        v188[0] = v189;
        v188[1] = v190;
        sub_1AF5DD298(v188, v186);
        v120 = (v117 + 24);
        v159 = v119;
        do
        {
          v121 = v5;
          v168 = *(v120 - 6);
          v177 = v116;
          v122 = *(v120 - 5);
          v124 = *(v120 - 1);
          v123 = *v120;
          v126 = v120[1];
          v125 = v120[2];
          if (v119)
          {
            v127 = *(v125 + 376);

            os_unfair_lock_lock(v127);
            os_unfair_lock_lock(*(v125 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v150);
          v128 = *(v118 + 64);
          v186[0] = *(v118 + 48);
          v186[1] = v128;
          v187 = *(v118 + 80);
          v129 = *(*(*(*(v125 + 40) + 16) + 32) + 16) + 1;
          *(v118 + 48) = ecs_stack_allocator_allocate(*(v118 + 32), 48 * v129, 8);
          *(v118 + 56) = v129;
          *(v118 + 72) = 0;
          *(v118 + 80) = 0;
          *(v118 + 64) = 0;
          sub_1AF64B110(v141, &off_1F2542220, v124, v123, v126, v118);
          v130 = v121 + v122 - v168;
          if (v168 == v122)
          {
            v130 = v121;
          }

          if (v124)
          {
            v5 = v121 + v126;
          }

          else
          {
            v5 = v130;
          }

          sub_1AF630994(v118, &v357, v186);
          sub_1AF62D29C(v125);
          ecs_stack_allocator_pop_snapshot(v150);
          v119 = v159;
          if (v159)
          {
            os_unfair_lock_unlock(*(v125 + 344));
            os_unfair_lock_unlock(*(v125 + 376));
          }

          v120 += 6;
          v116 = v177 - 1;
        }

        while (v177 != 1);
        sub_1AFA9BF94(v329, &qword_1ED725EA0, &type metadata for QueryResult);
      }
    }

    sub_1AFA9BF94(v329, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  return v5;
}

uint64_t sub_1AFA9BF94(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AFA9D6A4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_1AFA9C03C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1AFA9C054(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  sub_1AFA9A4B4(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1AFA9C0F8()
{
  v1 = type metadata accessor for HeaderScript(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 400) & ~v2;
  v4 = ((*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23;

  v5 = v0 + v3;

  if (*(v5 + 32))
  {
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 32);
  v8 = type metadata accessor for ScriptIndex(0);
  if (!(*(*(v8 - 8) + 48))(v5 + v7, 1, v8) && swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1AFDFC318();
    (*(*(v9 - 8) + 8))(v5 + v7, v9);
  }

  if (*(v0 + v6 + 8))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v6 + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1AFA9C304(uint64_t (*a1)(void), uint64_t (*a2)(void, void, void, void, void, void, void, void *, char *, void, void, void, void, void, void, void))
{
  v4 = *(a1(0) - 8);
  v5 = (*(v4 + 80) + 400) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  return a2(*(v2 + 2), *(v2 + 3), *(v2 + 4), *(v2 + 5), *(v2 + 6), *(v2 + 7), *(v2 + 8), v2 + 9, &v2[v5], *&v2[v6], *&v2[v6 + 8], *&v2[v7], *&v2[v7 + 8], *&v2[v7 + 16], *&v2[(v7 + 27) & 0xFFFFFFFFFFFFFFF8], *&v2[(((v7 + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8]);
}

uint64_t sub_1AFA9C3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1AFA9C470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AF0D0FCC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AFA9C4F8()
{
  result = qword_1EB637DC0;
  if (!qword_1EB637DC0)
  {
    type metadata accessor for MTLLibraryError(255);
    result = swift_getWitnessTable(byte_1AFE4BD30, v3, v0, v1);
    atomic_store(result, &qword_1EB637DC0);
  }

  return result;
}

void sub_1AFA9C844()
{
  v1 = *(type metadata accessor for TriggerScript(0) - 8);
  v2 = (*(v1 + 80) + 400) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1AFA6DA98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), (v0 + 72), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + ((v4 + 27) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), sub_1AF5B225C, sub_1AFA6385C, sub_1AFA9CC30, sub_1AFA9CC60);
}

uint64_t sub_1AFA9C998()
{
  v1 = type metadata accessor for TriggerScript(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 400) & ~v2;
  v4 = (*(*(v1 - 1) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;

  if (*(v0 + v3 + 48))
  {
  }

  v6 = v1[11];
  v7 = type metadata accessor for ScriptIndex(0);
  if (!(*(*(v7 - 8) + 48))(v5 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1AFDFC318();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;

  v10 = v5 + v1[13];
  v11 = *(v10 + 32);
  if (v11 <= 1)
  {
    if (*(v10 + 32))
    {
      if (v11 == 1)
      {
      }

      goto LABEL_20;
    }

    v13 = *v10;
LABEL_19:

    goto LABEL_20;
  }

  if (v11 == 2)
  {

    v13 = *(v10 + 8);
    goto LABEL_19;
  }

  if (v11 == 3 && (*v10 || *(v10 + 8) != 1))
  {
    MEMORY[0x1B271E060](v10);
  }

LABEL_20:

  if (*(v0 + v9 + 8))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v9 + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_1AFA9CC78()
{
  v1 = *(type metadata accessor for ParticleUpdateScript(0) - 8);
  v2 = (*(v1 + 80) + 400) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1AFA6DA98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), (v0 + 72), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + ((v4 + 27) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), sub_1AF5B22D4, sub_1AFA648B8, sub_1AFA9CFE0, sub_1AFA9D010);
}

uint64_t sub_1AFA9CDCC()
{
  updated = type metadata accessor for ParticleUpdateScript(0);
  v2 = *(*(updated - 8) + 80);
  v3 = (v2 + 400) & ~v2;
  v4 = ((*(*(updated - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23;

  v5 = v0 + v3;

  if (*(v5 + 48))
  {
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFF8;
  v7 = *(updated + 40);
  v8 = type metadata accessor for ScriptIndex(0);
  if (!(*(*(v8 - 8) + 48))(v5 + v7, 1, v8) && swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1AFDFC318();
    (*(*(v9 - 8) + 8))(v5 + v7, v9);
  }

  if (*(v0 + v6 + 8))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v6 + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_1AFA9D028()
{
  v1 = *(type metadata accessor for ParticleInitScript(0) - 8);
  v2 = (*(v1 + 80) + 400) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1AFA6DA98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), (v0 + 72), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + ((v4 + 27) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), sub_1AF5B234C, sub_1AFA65930, sub_1AFA9D390, sub_1AFA9D3C0);
}

uint64_t sub_1AFA9D17C()
{
  inited = type metadata accessor for ParticleInitScript(0);
  v2 = *(*(inited - 8) + 80);
  v3 = (v2 + 400) & ~v2;
  v4 = ((*(*(inited - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23;

  v5 = v0 + v3;

  if (*(v5 + 48))
  {
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFF8;
  v7 = *(inited + 40);
  v8 = type metadata accessor for ScriptIndex(0);
  if (!(*(*(v8 - 8) + 48))(v5 + v7, 1, v8) && swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1AFDFC318();
    (*(*(v9 - 8) + 8))(v5 + v7, v9);
  }

  if (*(v0 + v6 + 8))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v6 + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1AFA9D430(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 400) & ~v3;
  v5 = ((*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23;

  v6 = v1 + v4;

  v7 = *(v2 + 24);
  v8 = type metadata accessor for ScriptIndex(0);
  if (!(*(*(v8 - 8) + 48))(v1 + v4 + v7, 1, v8) && swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1AFDFC318();
    (*(*(v9 - 8) + 8))(v6 + v7, v9);
  }

  v10 = v5 & 0xFFFFFFFFFFFFFFF8;
  if (*(v6 + *(v2 + 28)))
  {
  }

  if (*(v1 + v10 + 8))
  {
  }

  return MEMORY[0x1EEE6BDD0](v1, ((((v10 + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_1AFA9D6A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AFA9D6F4()
{
  v1 = *(type metadata accessor for SimpleScript(0) - 8);
  v2 = (*(v1 + 80) + 400) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1AFA6DA98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), (v0 + 72), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + ((v4 + 27) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), sub_1AF5B24B4, sub_1AFA68950, sub_1AFA9DA5C, sub_1AFA9DA8C);
}

uint64_t sub_1AFA9D848()
{
  v1 = type metadata accessor for SimpleScript(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 400) & ~v2;
  v4 = ((*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23;

  v5 = v0 + v3;

  if (*(v5 + 40))
  {
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 40);
  v8 = type metadata accessor for ScriptIndex(0);
  if (!(*(*(v8 - 8) + 48))(v5 + v7, 1, v8) && swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1AFDFC318();
    (*(*(v9 - 8) + 8))(v5 + v7, v9);
  }

  if (*(v0 + v6 + 8))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v6 + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_1AFA9DAA4()
{
  v1 = *(type metadata accessor for GraphScript(0) - 8);
  v2 = (*(v1 + 80) + 400) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1AFA6DA98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), (v0 + 72), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + ((v4 + 27) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), sub_1AF5B252C, sub_1AFA699C0, sub_1AFA9DE0C, sub_1AFA9DE3C);
}

uint64_t sub_1AFA9DBF8()
{
  v1 = type metadata accessor for GraphScript(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 400) & ~v2;
  v4 = ((*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23;

  v5 = v0 + v3;

  if (*(v5 + 48))
  {
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 44);
  v8 = type metadata accessor for ScriptIndex(0);
  if (!(*(*(v8 - 8) + 48))(v5 + v7, 1, v8) && swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1AFDFC318();
    (*(*(v9 - 8) + 8))(v5 + v7, v9);
  }

  if (*(v0 + v6 + 8))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v6 + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1AFA9DE54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_1AFA9DEBC()
{
  v1 = *(type metadata accessor for EmitterScript(0) - 8);
  v2 = (*(v1 + 80) + 400) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1AFA6DA98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), (v0 + 72), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + ((v4 + 27) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), sub_1AF5B25A4, sub_1AFA6AA14, sub_1AFA9E2F0, sub_1AFA9E388);
}

uint64_t sub_1AFA9E010()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1AFA9E050()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();

  dispatch_group_leave(v1);
}

uint64_t sub_1AFA9E094()
{
  v1 = type metadata accessor for EmitterScript(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 400) & ~v2;
  v4 = ((*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23;

  v5 = v0 + v3;

  v6 = *(v1 + 32);
  v7 = type metadata accessor for ScriptIndex(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1AFDFC318();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = v4 & 0xFFFFFFFFFFFFFFF8;
  if (*(v5 + *(v1 + 36)))
  {
  }

  if (*(v0 + v9 + 8))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v9 + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1AFA9E2A8()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AFA9E320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AFA9E3C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AFA9E868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    v11[0] = a3(255);
    v11[1] = a4(255);
    v11[2] = a5;
    v11[3] = &off_1F250F310;
    v9 = type metadata accessor for Query2(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AFA9E8FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFA9E998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ScriptError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScriptError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1AFA9EC34(uint64_t a1, unint64_t a2)
{
  if (a2 < 1)
  {
    result = MEMORY[0x1E69E7CC0];
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = sub_1AFDFD488();
    *(result + 16) = a2;
  }

  v5 = (result + 32);
  if (a2 <= 7)
  {
    v6 = 0;
LABEL_9:
    v10 = a2 - v6;
    do
    {
      *v5++ = a1;
      --v10;
    }

    while (v10);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  v5 += a2 & 0xFFFFFFFFFFFFFFF8;
  *&v7 = a1;
  *(&v7 + 1) = a1;
  v8 = (result + 64);
  v9 = a2 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    *(v8 - 2) = v7;
    *(v8 - 1) = v7;
    *v8 = v7;
    v8[1] = v7;
    v8 += 4;
    v9 -= 8;
  }

  while (v9);
  if (v6 != a2)
  {
    goto LABEL_9;
  }

  return result;
}

__n128 sub_1AFA9ECE4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 < 1)
  {
    v4 = MEMORY[0x1E69E7CC0];
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v4 = sub_1AFDFD488();
    *(v4 + 16) = v2;
  }

  v5 = 32;
  do
  {
    v6 = v4 + v5;
    v7 = *(a1 + 80);
    *(v6 + 64) = *(a1 + 64);
    *(v6 + 80) = v7;
    *(v6 + 96) = *(a1 + 96);
    v8 = *(a1 + 16);
    *v6 = *a1;
    *(v6 + 16) = v8;
    result = *(a1 + 48);
    v5 += 112;
    *(v6 + 32) = *(a1 + 32);
    *(v6 + 48) = result;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t sub_1AFA9ED90@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  updated = type metadata accessor for ParticleUpdateScript(0);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v3 = *(updated + 40);
  v4 = type metadata accessor for ScriptIndex(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + 8) = 0x80000001AFF2BA30;
  *(a1 + 16) = &unk_1F24F3D50;
  *a1 = 0xD0000000000000C3;
  return result;
}

__CFString *sub_1AFA9EE3C@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 3;
  *(a1 + 32) = &unk_1F24F3A58;
  *(a1 + 40) = 0;
  v2 = type metadata accessor for TriggerScript(0);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v3 = v2[11];
  v4 = type metadata accessor for ScriptIndex(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[12]) = @"VFXTriggerTypeTick";
  v5 = a1 + v2[13];
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 6;

  return @"VFXTriggerTypeTick";
}

void sub_1AFA9EF20(unint64_t a1)
{
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 8uLL:
      v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x21);
      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x21))
      {
        if (v2 == 1)
        {
          type metadata accessor for __vfx_sampler2d(0);
        }

        else
        {
          if (v2 != 2)
          {
            goto LABEL_15;
          }

          type metadata accessor for __vfx_sampler3d(0);
        }
      }

      else
      {
        type metadata accessor for __vfx_sampler1d(0);
      }

      break;
    case 0xEuLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v6[0] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v6[1] = v1;
      v7 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      sub_1AFABCAB8(v6, v5);
      sub_1AFA9F9B8();
      sub_1AFABCB1C(v6);
      break;
    case 0xFuLL:
      v3 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      sub_1AF90E730(v3);
      if (!v4)
      {
        *&v6[0] = 0;
        *(&v6[0] + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x20676E697373696DLL, 0xEE00203A65736163);
        v5[0] = v3;
        sub_1AFDFE458();
LABEL_15:
        sub_1AFDFE518();
        __break(1u);
      }

      break;
    case 0x10uLL:
      if (a1 == 0x8000000000000000)
      {
        type metadata accessor for frame_constants(0);
      }

      break;
    default:
      return;
  }
}

uint64_t sub_1AFA9F1AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 2);
  if (v7)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1AFC0D9F4(v6);
    }

    v8 = v6 + 32;
    do
    {
      v9 = sub_1AFAA0710(a1, a2, *v8);
      v10 = v8[8];
      v11 = *(v8 + 2);
      sub_1AF443F24(*v8);
      sub_1AF444AF4(v11);
      *v8 = v9;
      v8[8] = v10;
      *(v8 + 1) = xmmword_1AFE4C460;
      v8[32] = 1;
      v8 += 40;
      --v7;
    }

    while (v7);
    *v3 = v6;
  }

  ObjectType = swift_getObjectType();
  result = (*(a2 + 32))(ObjectType, a2);
  if (result)
  {

    v3[1] = 0;
  }

  return result;
}

unint64_t sub_1AFA9F2B8(unint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = *v2;
  v6 = *(*v2 + 2);
  if (v6)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1AFC0D9F4(v5);
    }

    v7 = v5 + 32;
    do
    {
      v8 = sub_1AFAA0710(v4, a2, *v7);
      v9 = v7[8];
      v10 = *(v7 + 2);
      sub_1AF443F24(*v7);
      result = sub_1AF444AF4(v10);
      *v7 = v8;
      v7[8] = v9;
      *(v7 + 1) = xmmword_1AFE4C460;
      v7[32] = 1;
      v7 += 40;
      --v6;
    }

    while (v6);
    *v2 = v5;
  }

  v11 = v2[1];
  v12 = *(v11 + 2);
  if (v12)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1AFC0D9F4(v11);
    }

    v13 = v11 + 32;
    do
    {
      v14 = sub_1AFAA0710(v4, a2, *v13);
      v15 = v13[8];
      v16 = *(v13 + 2);
      sub_1AF443F24(*v13);
      result = sub_1AF444AF4(v16);
      *v13 = v14;
      v13[8] = v15;
      *(v13 + 1) = xmmword_1AFE4C460;
      v13[32] = 1;
      v13 += 40;
      --v12;
    }

    while (v12);
    v2[1] = v11;
  }

  return result;
}

unint64_t sub_1AFA9F41C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }

      return MEMORY[0x1B271ACB0](v5, a2);
    }

    if (!a3)
    {
      v5 = 0;
      return MEMORY[0x1B271ACB0](v5, a2);
    }

    if (a3 == 1)
    {
      v5 = 1;
      return MEMORY[0x1B271ACB0](v5, a2);
    }
  }

  else
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v5 = 4;
      }

      else
      {
        v5 = 5;
      }

      return MEMORY[0x1B271ACB0](v5, a2);
    }

    switch(a3)
    {
      case 6:
        v5 = 6;
        return MEMORY[0x1B271ACB0](v5, a2);
      case 7:
        v5 = 7;
        return MEMORY[0x1B271ACB0](v5, a2);
      case 8:
        v5 = 8;
        return MEMORY[0x1B271ACB0](v5, a2);
    }
  }

  MEMORY[0x1B271ACB0](9);
  sub_1AFDFD038();

  return sub_1AF90FC0C(a1, a4);
}

uint64_t sub_1AFA9F534()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1AFDFF288();
  sub_1AFA9F41C(v5, v1, v2, v3);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA9F59C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1AFDFF288();
  sub_1AFA9F41C(v6, v2, v3, v4);
  return sub_1AFDFF2F8();
}

unint64_t sub_1AFA9F610(unsigned __int8 a1)
{
  result = 0xC000000000000058;
  if (a1 > 0xDu)
  {
    if (a1 > 0x12u)
    {
      if (a1 - 20 < 2)
      {
        v6 = swift_allocObject();
        *(v6 + 16) = 3;
        *(v6 + 24) = 0xD000000000000011;
        *(v6 + 32) = 0x80000001AFF45990;
      }

      else
      {
        if (a1 == 19)
        {
          return result;
        }

        if (a1 != 22)
        {
          goto LABEL_23;
        }

        v6 = swift_allocObject();
        *(v6 + 16) = 1;
        *(v6 + 24) = 0x3265727574786574;
        *(v6 + 32) = 0xEF3E666C61683C64;
      }

      return v6 | 0xA000000000000000;
    }

    if (a1 - 14 < 3)
    {
      return result;
    }

    if (a1 != 17)
    {
      if (a1 == 18)
      {
        return 0xC0000000000000F8;
      }

      goto LABEL_23;
    }

    v3 = swift_allocObject();
    *(v3 + 16) = 3;
    v4 = swift_allocObject();
    v5 = xmmword_1AFE4C430;
LABEL_10:
    *(v4 + 16) = v5;
    *(v3 + 24) = v4 | 0x2000000000000000;
    return v3 | 0x2000000000000000;
  }

  if (a1 <= 8u)
  {
    if (a1 - 5 >= 4)
    {
LABEL_23:
      v7 = swift_allocObject();
      v8 = xmmword_1AFE4C430;
      goto LABEL_24;
    }

    goto LABEL_9;
  }

  if (a1 - 11 >= 2)
  {
    if (a1 != 9)
    {
      if (a1 == 13)
      {
        return 0xC000000000000038;
      }

      goto LABEL_23;
    }

LABEL_9:
    v3 = swift_allocObject();
    *(v3 + 16) = 4;
    v4 = swift_allocObject();
    v5 = xmmword_1AFE4C440;
    goto LABEL_10;
  }

  v7 = swift_allocObject();
  v8 = xmmword_1AFE4C420;
LABEL_24:
  *(v7 + 16) = v8;
  return v7 | 0x2000000000000000;
}

uint64_t sub_1AFA9F820(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 5:
      v2 = 0;
      goto LABEL_21;
    case 6:
      v2 = 1;
      goto LABEL_21;
    case 7:
      v2 = 2;
      goto LABEL_21;
    case 8:
      v2 = 3;
      goto LABEL_21;
    case 9:
      v2 = 4;
      goto LABEL_21;
    case 10:
      v2 = 6;
      goto LABEL_21;
    case 11:
      v2 = 7;
      goto LABEL_21;
    case 12:
      v2 = 8;
      goto LABEL_21;
    case 13:
      v2 = 9;
      goto LABEL_21;
    case 14:
      v2 = 10;
      goto LABEL_21;
    case 15:
      v2 = 11;
      goto LABEL_21;
    case 16:
      v2 = 12;
      goto LABEL_21;
    case 17:
      v2 = 13;
      goto LABEL_21;
    case 18:
      v2 = 14;
      goto LABEL_21;
    case 19:
      v2 = 15;
      goto LABEL_21;
    case 20:
      v2 = 16;
      goto LABEL_21;
    case 21:
      v2 = 17;
      goto LABEL_21;
    case 22:
      v2 = 18;
LABEL_21:
      result = MEMORY[0x1B271ACB0](v2);
      break;
    default:
      MEMORY[0x1B271ACB0](5);
      result = sub_1AFDFF2A8();
      break;
  }

  return result;
}

uint64_t sub_1AFA9F918()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AFA9F820(v3, v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA9F968(uint64_t a1)
{
  v2 = *v1;
  sub_1AFDFF288();
  sub_1AFA9F820(v4, v2);
  return sub_1AFDFF2F8();
}

void sub_1AFA9F9B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 32);
  if (v3 > 2)
  {
    if (*(v0 + 32) <= 4u)
    {
      return;
    }

    if (v3 == 5)
    {
      v4 = sub_1AFA9F610(v1);
      sub_1AF90E730(v4);
      if (v5)
      {
        sub_1AF445BE4(v4);
        return;
      }

      goto LABEL_33;
    }

    if (!(v0[2] | v2 | v1 | v0[3]))
    {
LABEL_35:
      sub_1AFDFE518();
      __break(1u);
      return;
    }

    return;
  }

  if (!*(v0 + 32))
  {
    v6 = *v0;
    if (v6 > 4)
    {
      if (v6 == 6)
      {
        goto LABEL_25;
      }

LABEL_26:
      v7 = &qword_1ED72F6E0;
      v8 = MEMORY[0x1E69E6448];
      v9 = MEMORY[0x1E69E74A8];
      goto LABEL_27;
    }

    if (v6 - 1 >= 4)
    {
      goto LABEL_25;
    }

LABEL_16:
    v7 = &unk_1ED72F770;
    v8 = MEMORY[0x1E69E6448];
    v9 = MEMORY[0x1E69E7428];
LABEL_27:
    sub_1AFABCB54(0, v7, sub_1AF43A0C8, v8, v9);
    return;
  }

  if (v3 != 1)
  {
    v10 = *v0;
    if (v10 > 2)
    {
      if (v10 != 4)
      {
        return;
      }
    }

    else if (v10 != 1)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v2 > 5)
  {
    if (v2 == 6 || v2 == 7 || v2 == 8)
    {
      return;
    }

    goto LABEL_32;
  }

  if ((v2 - 2) < 4)
  {
    goto LABEL_16;
  }

  if (!v2)
  {
    goto LABEL_26;
  }

  if (v2 == 1)
  {
LABEL_25:
    v7 = &qword_1ED72F740;
    v8 = MEMORY[0x1E69E6448];
    v9 = MEMORY[0x1E69E7450];
    goto LABEL_27;
  }

LABEL_32:
  sub_1AF90E730(v0[2]);
  if (!v11)
  {
LABEL_33:
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20676E697373696DLL, 0xEE00203A65736163);
    sub_1AFDFE458();
    goto LABEL_35;
  }
}

unint64_t sub_1AFA9FCD4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  if (v6 <= 2)
  {
    if (*(v1 + 32))
    {
      if (v6 == 1)
      {
        MEMORY[0x1B271ACB0](2);

        return sub_1AFA9F41C(a1, v3, v4, v5);
      }

      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    MEMORY[0x1B271ACB0](v9);
    v10 = v3;
    return MEMORY[0x1B271ACB0](v10);
  }

  if (*(v1 + 32) > 4u)
  {
    if (v6 == 5)
    {
      MEMORY[0x1B271ACB0](7);

      return sub_1AFA9F820(a1, v3);
    }

    if (v5 | v4 | v3 | *(v1 + 24))
    {
      MEMORY[0x1B271ACB0](4);
    }

    v10 = 0;
    return MEMORY[0x1B271ACB0](v10);
  }

  if (v6 == 3)
  {
    MEMORY[0x1B271ACB0](5);
    v7 = sub_1AFDFDFD8();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      __break(1u);
      return result;
    }

    MEMORY[0x1B271ACB0](v7);
    MEMORY[0x1B271ACB0](*(v3 + 40));
  }

  else
  {
    MEMORY[0x1B271ACB0](6);
    sub_1AFDFD038();
  }

  return sub_1AFDFD038();
}

uint64_t sub_1AFA9FECC()
{
  sub_1AFDFF288();
  sub_1AFA9FCD4(v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA9FF10(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFA9FCD4(v2);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA9FF4C(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_1AFAB5D38(v5, v7) & 1;
}

uint64_t sub_1AFA9FF98@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFAB8BF4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AFAA0074()
{
  v1 = *(v0 + 16);
  sub_1AFDFF288();
  if (v1)
  {
    if (v1 == 1)
    {
      MEMORY[0x1B271ACB0](1);
      sub_1AFDFD038();
    }

    else
    {
      MEMORY[0x1B271ACB0](2);
    }
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    sub_1AFDFF2C8();
    sub_1AFDFF2C8();
  }

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAA0120(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1B271ACB0](1);

      return sub_1AFDFD038();
    }

    else
    {
      return MEMORY[0x1B271ACB0](2);
    }
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    sub_1AFDFF2C8();
    return sub_1AFDFF2C8();
  }
}

uint64_t sub_1AFAA01C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1AFDFF288();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1B271ACB0](1);
      sub_1AFDFD038();
    }

    else
    {
      MEMORY[0x1B271ACB0](2);
    }
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    sub_1AFDFF2C8();
    sub_1AFDFF2C8();
  }

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAA0268(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v6 = a2[1];
    if (*(a1 + 16) == 1)
    {
      if (v5 == 1)
      {
        if (v3 == v4 && a1[1] == v6)
        {
          return 1;
        }

        else
        {
          return sub_1AFDFEE28();
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return v5 == 2 && (v6 | v4) == 0;
    }
  }

  else
  {
    return !*(a2 + 16) && v3 == v4;
  }
}

uint64_t sub_1AFAA02E0(unint64_t a1, __n128 a2)
{
  sub_1AFDFF308();
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      v7 = 13;
      goto LABEL_16;
    case 2uLL:
      sub_1AF44596C((a1 & 0xFFFFFFFFFFFFFFBLL) + 16, v14);
      MEMORY[0x1B271ACB0](16);
      sub_1AFDFD038();
      sub_1AF4459C8(v14);
      goto LABEL_22;
    case 3uLL:
      MEMORY[0x1B271ACB0](17);
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      goto LABEL_22;
    case 4uLL:
      MEMORY[0x1B271ACB0](1);

      sub_1AFDFD038();

      goto LABEL_22;
    case 5uLL:
      MEMORY[0x1B271ACB0](2);
      sub_1AFDFD038();
      sub_1AFDFF2A8();
      goto LABEL_22;
    case 6uLL:
      v3 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v4 = 3;
      goto LABEL_20;
    case 7uLL:
      MEMORY[0x1B271ACB0](4);
      sub_1AFDFD038();
      goto LABEL_22;
    case 8uLL:
      v11 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      MEMORY[0x1B271ACB0](8);
      if (v11)
      {
        if (v11 == 1)
        {
          MEMORY[0x1B271ACB0](1);
          sub_1AFDFD038();
        }

        else
        {
          MEMORY[0x1B271ACB0](2);
        }
      }

      else
      {
        MEMORY[0x1B271ACB0](0);
        sub_1AFDFF2C8();
        sub_1AFDFF2C8();
      }

      sub_1AFDFF2A8();
      goto LABEL_34;
    case 9uLL:
      v5 = 10;
      goto LABEL_21;
    case 0xAuLL:
      v10 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x3C);
      MEMORY[0x1B271ACB0](6);
      sub_1AFDFD038();
      if (v10 == 5)
      {
        sub_1AFDFF2A8();
      }

      else
      {
LABEL_34:
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
      }

      goto LABEL_22;
    case 0xBuLL:
      v7 = 7;
LABEL_16:
      MEMORY[0x1B271ACB0](v7);

      sub_1AFDFD038();

      goto LABEL_22;
    case 0xCuLL:
      v5 = 9;
      goto LABEL_21;
    case 0xDuLL:
      v5 = 14;
      goto LABEL_21;
    case 0xEuLL:
      v6 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v16[0] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v16[1] = v6;
      v17 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      MEMORY[0x1B271ACB0](12);
      sub_1AFABCAB8(v16, v14);
      sub_1AFA9FCD4(v12);
      sub_1AFABCB1C(v16);
      goto LABEL_22;
    case 0xFuLL:
      v8 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      MEMORY[0x1B271ACB0](15);
      sub_1AFDFD038();
      sub_1AF90FC0C(v12, v8);
      goto LABEL_22;
    case 0x10uLL:
      if (a1 == 0x8000000000000000)
      {
        v5 = 0;
      }

      else if (a1 == 0x8000000000000008)
      {
        v5 = 18;
      }

      else
      {
        v5 = 5;
      }

      goto LABEL_21;
    default:
      v3 = *(a1 + 16);
      v4 = 11;
LABEL_20:
      MEMORY[0x1B271ACB0](v4);
      v5 = v3;
LABEL_21:
      MEMORY[0x1B271ACB0](v5);
LABEL_22:
      v14[2] = v12[2];
      v14[3] = v12[3];
      v15 = v13;
      v14[0] = v12[0];
      v14[1] = v12[1];
      return sub_1AFDFF2E8();
  }
}

uint64_t sub_1AFAA0710(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  switch((a3 >> 59) & 0x1E | (a3 >> 2) & 1)
  {
    case 1uLL:
      v15 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v14 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      v16 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v17 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x58);
      v18 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x5A);
      v66 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      sub_1AF44596C((a3 & 0xFFFFFFFFFFFFFFBLL) + 16, v69);
      v19 = swift_allocObject();
      ObjectType = swift_getObjectType();

      sub_1AF62C830(v69, ObjectType, a2, v19 + 16);
      sub_1AF4459C8(v69);
      *(v19 + 48) = v15;
      *(v19 + 56) = v14;
      *(v19 + 64) = v66;
      *(v19 + 80) = v16;
      *(v19 + 88) = v17;
      v3 = v19 | 4;
      *(v19 + 90) = v18;
      break;
    case 2uLL:
      sub_1AF44596C((a3 & 0xFFFFFFFFFFFFFFBLL) + 16, v69);
      v21 = swift_allocObject();
      v22 = swift_getObjectType();
      sub_1AF62C830(v69, v22, a2, v21 + 16);
      sub_1AF4459C8(v69);
      v3 = v21 | 0x1000000000000000;
      break;
    case 3uLL:
      v6 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v7 = swift_allocObject();
      v8 = swift_getObjectType();
      sub_1AF62BFF0(v6, 0, v8, a2);
      *(v7 + 16) = v9;
      v3 = v7 | 0x1000000000000004;
      break;
    case 4uLL:
      v31 = a3 & 0xFFFFFFFFFFFFFFBLL;
      v32 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v33 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v34 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v35 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      v36 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v67 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x42);
      v37 = swift_allocObject();
      v38 = swift_getObjectType();

      v64 = *(v31 + 40);

      sub_1AF62BFF0(v32, 0, v38, a2);
      *(v37 + 16) = v39;
      *(v37 + 20) = v40;
      *(v37 + 24) = v33;
      *(v37 + 32) = v34;
      *(v37 + 40) = v64;
      *(v37 + 56) = v35;
      *(v37 + 64) = v36;
      v3 = v37 | 0x2000000000000000;
      *(v37 + 66) = v67;
      break;
    case 5uLL:
      v41 = a3 & 0xFFFFFFFFFFFFFFBLL;
      v42 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v43 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v44 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v45 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      v46 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v65 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x42);
      v68 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x44);
      v47 = swift_allocObject();
      v48 = swift_getObjectType();

      v63 = *(v41 + 40);

      sub_1AF62BFF0(v42, 0, v48, a2);
      *(v47 + 16) = v49;
      *(v47 + 20) = v50;
      *(v47 + 24) = v43;
      *(v47 + 32) = v44;
      *(v47 + 40) = v63;
      *(v47 + 56) = v45;
      *(v47 + 64) = v46;
      *(v47 + 66) = v65;
      v3 = v47 | 0x2000000000000004;
      *(v47 + 68) = v68;
      break;
    case 8uLL:
      v23 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v24 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v25 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v26 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x21);
      v27 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x22);
      v28 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x23);
      v29 = swift_getObjectType();
      v30 = (*(a2 + 40))(v29, a2);
      if (v25)
      {
        if (v25 == 1)
        {
        }
      }

      else
      {
        sub_1AF62BFF0(v23, v30 != 2, v29, a2);
        v23 = v58;
        v24 = 0;
      }

      v59 = swift_allocObject();
      *(v59 + 16) = v23;
      *(v59 + 24) = v24;
      *(v59 + 32) = v25;
      *(v59 + 33) = v26;
      *(v59 + 34) = v27;
      v3 = v59 | 0x4000000000000000;
      *(v59 + 35) = v28;
      break;
    case 9uLL:
      v55 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v56 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      if (*((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x20))
      {
        v57 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        if (v56 == 1)
        {
        }
      }

      else
      {
        v60 = swift_getObjectType();
        sub_1AF62BFF0(v55, 0, v60, a2);
        v55 = v61;
        v57 = 0;
      }

      v62 = swift_allocObject();
      *(v62 + 16) = v55;
      *(v62 + 24) = v57;
      *(v62 + 32) = v56;
      v3 = v62 | 0x4000000000000004;
      break;
    case 0xCuLL:
      v10 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v11 = swift_allocObject();
      v12 = swift_getObjectType();
      sub_1AF62BFF0(v10, 0, v12, a2);
      *(v11 + 16) = v13;
      v3 = v11 | 0x6000000000000000;
      break;
    case 0xDuLL:
      v51 = *((a3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v52 = swift_allocObject();
      v53 = swift_getObjectType();
      sub_1AF62BFF0(v51, 0, v53, a2);
      *(v52 + 16) = v54;
      v3 = v52 | 0x6000000000000004;
      break;
    case 0x10uLL:
      return v3;
    default:

      break;
  }

  return v3;
}

unint64_t sub_1AFAA0C08(uint64_t a1, unint64_t a2)
{
  switch((a2 >> 59) & 0x1E | (a2 >> 2) & 1)
  {
    case 1uLL:
      sub_1AF44596C((a2 & 0xFFFFFFFFFFFFFFBLL) + 16, v23);
      MEMORY[0x1B271ACB0](13);

      sub_1AFDFD038();
      v15 = sub_1AFDFDFD8();
      MEMORY[0x1B271ACB0](v15);
      sub_1AFDFD038();

      return sub_1AF4459C8(v23);
    case 2uLL:
      sub_1AF44596C((a2 & 0xFFFFFFFFFFFFFFBLL) + 16, v23);
      MEMORY[0x1B271ACB0](16);
      sub_1AFDFD038();
      return sub_1AF4459C8(v23);
    case 3uLL:
      v9 = 17;
      goto LABEL_30;
    case 4uLL:
      MEMORY[0x1B271ACB0](2);
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      v8 = sub_1AFDFDFD8();
      MEMORY[0x1B271ACB0](v8);
      goto LABEL_23;
    case 5uLL:
      MEMORY[0x1B271ACB0](3);
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      v16 = sub_1AFDFDFD8();
      MEMORY[0x1B271ACB0](v16);
      sub_1AFDFD038();
      return sub_1AFDFF2A8();
    case 6uLL:
      v17 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v18 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      MEMORY[0x1B271ACB0](4);
      MEMORY[0x1B271ACB0](v17);
      return MEMORY[0x1B271ACB0](v18);
    case 7uLL:
      v14 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      MEMORY[0x1B271ACB0](5);
      MEMORY[0x1B271ACB0](v14);
LABEL_23:

      return sub_1AFDFD038();
    case 8uLL:
      v21 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      MEMORY[0x1B271ACB0](6);
      if (v21)
      {
        if (v21 == 1)
        {
          MEMORY[0x1B271ACB0](1);
          sub_1AFDFD038();
        }

        else
        {
          MEMORY[0x1B271ACB0](2);
        }
      }

      else
      {
        MEMORY[0x1B271ACB0](0);
        sub_1AFDFF2C8();
        sub_1AFDFF2C8();
      }

      sub_1AFDFF2A8();
      goto LABEL_46;
    case 9uLL:
      v10 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v11 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v12 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      MEMORY[0x1B271ACB0](7);
      if (v12)
      {
        if (v12 == 1)
        {
          MEMORY[0x1B271ACB0](1);

          sub_1AFDFD038();

          return sub_1AF7D4C4C(v10, v11, 1);
        }

        else
        {
          v5 = 2;
          return MEMORY[0x1B271ACB0](v5);
        }
      }

      else
      {
        MEMORY[0x1B271ACB0](0);
        sub_1AFDFF2C8();
        return sub_1AFDFF2C8();
      }

    case 0xAuLL:
      v19 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x3C);
      MEMORY[0x1B271ACB0](9);
      v20 = sub_1AFDFDFD8();
      MEMORY[0x1B271ACB0](v20);
      sub_1AFDFD038();
      if (v19 == 5)
      {
        return sub_1AFDFF2A8();
      }

LABEL_46:
      sub_1AFDFF2A8();
      return sub_1AFDFF2A8();
    case 0xBuLL:
      MEMORY[0x1B271ACB0](10);

      v7 = sub_1AFDFDFD8();
      MEMORY[0x1B271ACB0](v7);
      sub_1AFDFD038();

    case 0xCuLL:
      v9 = 11;
      goto LABEL_30;
    case 0xDuLL:
      v9 = 14;
LABEL_30:
      MEMORY[0x1B271ACB0](v9);
      sub_1AFDFF2C8();
      return sub_1AFDFF2C8();
    case 0xEuLL:
      v6 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v23[0] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v23[1] = v6;
      v24 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      MEMORY[0x1B271ACB0](12);
      sub_1AFABCAB8(v23, v22);
      sub_1AFA9FCD4(a1);
      return sub_1AFABCB1C(v23);
    case 0xFuLL:
      v13 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      MEMORY[0x1B271ACB0](15);
      sub_1AFDFD038();

      return sub_1AF90FC0C(a1, v13);
    case 0x10uLL:
      if (a2 == 0x8000000000000000)
      {
        v5 = 0;
      }

      else if (a2 == 0x8000000000000008)
      {
        v5 = 18;
      }

      else
      {
        v5 = 8;
      }

      return MEMORY[0x1B271ACB0](v5);
    default:
      v3 = *(a2 + 16);
      MEMORY[0x1B271ACB0](1);
      return MEMORY[0x1B271ACB0](v3);
  }
}

uint64_t sub_1AFAA129C(unint64_t a1)
{
  v2 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  result = 0xF000000000000007;
  if (v2 > 3)
  {
    if (v2 <= 0x10)
    {
      if (((1 << v2) & 0x1F3E0) != 0)
      {
        return result;
      }

      if (v2 == 10)
      {
        v4 = a1 & 0xFFFFFFFFFFFFFFBLL;
        v5 = *(v4 + 32);
        v33 = *(v4 + 16);
        v34[0] = v5;
        *(v34 + 12) = *(v4 + 44);
        v6 = *(v4 + 60);
        sub_1AF9387B0(0xF000000000000007, &v30);
        v7 = v31;
        if (v31)
        {
          v8 = v30;
          v9 = swift_allocObject();
          *(v9 + 16) = v8;
          *(v9 + 24) = v7;
          *(v9 + 32) = v32[0];
          *(v9 + 44) = *(v32 + 12);
          *(v9 + 60) = v6;
          v10 = 0x5000000000000000;
          return v9 | v10;
        }

        return 0xF000000000000007;
      }

      if (v2 == 11)
      {
        v18 = (a1 & 0xFFFFFFFFFFFFFFBLL);
        v19 = v18[2];
        v33 = v18[1];
        v34[0] = v19;
        *(v34 + 12) = *(v18 + 44);
        v29[0] = v33;
        sub_1AF450FE0(v29, &v30);

        sub_1AF9387B0(v20, &v30);
        sub_1AF585778(v29);

        v21 = v31;
        if (v31)
        {
          v22 = v30;
          v9 = swift_allocObject();
          *(v9 + 16) = v22;
          *(v9 + 24) = v21;
          *(v9 + 32) = v32[0];
          *(v9 + 44) = *(v32 + 12);
          v10 = 0x5000000000000004;
          return v9 | v10;
        }

        return 0xF000000000000007;
      }
    }

    v23 = a1 & 0xFFFFFFFFFFFFFFBLL;
    v24 = *(v23 + 16);
    v25 = *(v23 + 40);
    v33 = *(v23 + 24);
    v34[0] = v25;
    *(v34 + 12) = *(v23 + 52);
    sub_1AF9387B0(0xF000000000000007, &v30);
    v26 = v31;
    if (v31)
    {
      v27 = v30;
      v28 = swift_allocObject();
      *(v28 + 16) = v24;
      *(v28 + 24) = v27;
      *(v28 + 32) = v26;
      *(v28 + 40) = v32[0];
      *(v28 + 52) = *(v32 + 12);
      return v28 | 0x2000000000000000;
    }

    return 0xF000000000000007;
  }

  if ((v2 - 2) >= 2 && v2 != 0)
  {
    v12 = (a1 & 0xFFFFFFFFFFFFFFBLL);
    v13 = v12[4];
    v33 = v12[3];
    v34[0] = v13;
    *(v34 + 12) = *(v12 + 76);
    v35 = v33;
    sub_1AF44596C((v12 + 1), v29);
    sub_1AF450FE0(&v35, &v30);

    sub_1AF9387B0(v14, &v30);
    sub_1AF585778(&v35);

    v15 = v31;
    if (v31)
    {
      v16 = v30;
      v17 = swift_allocObject();
      sub_1AF640200(v29, v17 + 16);
      *(v17 + 48) = v16;
      *(v17 + 56) = v15;
      *(v17 + 64) = v32[0];
      *(v17 + 76) = *(v32 + 12);
      return v17 | 4;
    }

    sub_1AF4459C8(v29);
    return 0xF000000000000007;
  }

  return result;
}

uint64_t sub_1AFAA1548()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AFAA0C08(v3, v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAA1598(uint64_t a1)
{
  v2 = *v1;
  sub_1AFDFF288();
  sub_1AFAA0C08(v4, v2);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAA15E8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v8, v9);
  if (a4)
  {
    if (a4 == 1)
    {
      sub_1AFDFEC28();
      if (!v4)
      {
        sub_1AF448018(v8, v9);
        sub_1AFDFEBE8();
      }
    }

    else
    {
      sub_1AFDFEC28();
    }
  }

  else
  {
    sub_1AFDFEC28();
    if (!v4)
    {
      v10 = a2;
      sub_1AF448018(v8, v9);
      sub_1AF480018();
      sub_1AFDFEC38();
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
}

void *sub_1AFAA1744@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AFAB7A80(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1AFAA1794(void *a1, unint64_t a2)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  switch((a2 >> 59) & 0x1E | (a2 >> 2) & 1)
  {
    case 1uLL:
      v4 = a2 & 0xFFFFFFFFFFFFFFBLL;
      v5 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      v39 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v43 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v6 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v7 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x58);
      v8 = *(v4 + 90);
      sub_1AF44596C(v4 + 16, v54);
      sub_1AF448018(v55, v56);

      sub_1AFDFEC28();
      if (!v2)
      {
        sub_1AF448018(v55, v56);
        sub_1AF9B3AD0();
        sub_1AFDFEC38();
        v49 = v39;
        *v50 = v5;
        *&v50[8] = v43;
        v51 = v6;
        v52 = v7;
        v53 = v8;
        sub_1AF448018(v55, v56);
        sub_1AF6489C0();
        sub_1AFDFEC38();
      }

      sub_1AF4459C8(v54);

      goto LABEL_9;
    case 2uLL:
      sub_1AF44596C((a2 & 0xFFFFFFFFFFFFFFBLL) + 16, &v49);
      sub_1AF448018(v55, v56);
      sub_1AFDFEC28();
      if (!v2)
      {
        sub_1AF448018(v55, v56);
        sub_1AF9B3AD0();
        sub_1AFDFEC38();
      }

      sub_1AF4459C8(&v49);
      return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
    case 3uLL:
    case 0xCuLL:
    case 0xDuLL:
      v37 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1AF448018(v55, v56);
      sub_1AFDFEC28();
      if (v2)
      {
        return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
      }

      v49 = v37;
      sub_1AF448018(v55, v56);
      sub_1AF480018();
      break;
    case 4uLL:
      v20 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v46 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v21 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v22 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      v23 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v24 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x42);
      sub_1AF448018(v55, v56);
      sub_1AFDFEC28();
      if (v2)
      {
        return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
      }

      sub_1AF448018(v55, v56);
      sub_1AF480018();
      sub_1AFDFEC38();
      v49 = v20;
      *v50 = v46;
      *&v50[16] = v21;
      v51 = v22;
      v52 = v23;
      v53 = v24;
      sub_1AF448018(v55, v56);
      sub_1AF6489C0();
      break;
    case 5uLL:
      v41 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v45 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v15 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v16 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      v17 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v18 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x42);
      v19 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x44);
      sub_1AF448018(v55, v56);
      sub_1AFDFEC28();
      if (v2)
      {
        return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
      }

      sub_1AF448018(v55, v56);
      sub_1AF480018();
      sub_1AFDFEC38();
      v49 = v41;
      *v50 = v45;
      *&v50[16] = v15;
      v51 = v16;
      v52 = v17;
      v53 = v18;
      sub_1AF448018(v55, v56);
      sub_1AF6489C0();
      sub_1AFDFEC38();
      LOBYTE(v49) = v19;
      sub_1AF448018(v55, v56);
      sub_1AF51DD14();
      break;
    case 8uLL:
      v25 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v26 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v47 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v27 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x23);
      sub_1AF448018(v55, v56);
      sub_1AFDFEC28();
      if (v2)
      {
        return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
      }

      v49 = v25;
      *v50 = v26;
      v50[8] = v47;
      sub_1AF448018(v55, v56);
      sub_1AFAB887C();
      sub_1AFDFEC38();
      sub_1AF448018(v55, v56);
      sub_1AF9927EC();
      sub_1AFDFEC38();
      sub_1AF448018(v55, v56);
      sub_1AF51DC40();
      sub_1AFDFEC38();
      LOBYTE(v49) = v27;
      sub_1AF448018(v55, v56);
      sub_1AF51DB6C();
      break;
    case 9uLL:
      v29 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v28 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v30 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      sub_1AF448018(v55, v56);
      sub_1AFAB8864(v29, v28, v30);
      sub_1AFDFEC28();
      if (!v2)
      {
        v49 = v29;
        *v50 = v28;
        v50[8] = v30;
        sub_1AF448018(v55, v56);
        sub_1AFAB887C();
        sub_1AFDFEC38();
      }

      sub_1AF7D4C4C(v29, v28, v30);
      return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
    case 0xAuLL:
      v31 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v48 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v32 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v33 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v34 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      v42 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x3A);
      v35 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x3C);
      sub_1AF448018(v55, v56);
      sub_1AFDFEC28();
      if (v2)
      {
        return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
      }

      v49 = v31;
      *v50 = v48;
      *&v50[16] = v32;
      v51 = v33;
      v52 = v34;
      v53 = v42;
      sub_1AF448018(v55, v56);
      sub_1AF6489C0();
      sub_1AFDFEC38();
      LOBYTE(v49) = v35;
      sub_1AF448018(v55, v56);
      sub_1AFABE4B8(0, &qword_1EB6425B8, &type metadata for EntitySpace, MEMORY[0x1E69E6720]);
      sub_1AFAB87C8();
      break;
    case 0xBuLL:
      v9 = a2 & 0xFFFFFFFFFFFFFFBLL;
      v10 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v11 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v40 = v10;
      v44 = *(v9 + 32);
      v12 = *(v9 + 48);
      v13 = *(v9 + 56);
      v14 = *(v9 + 58);
      sub_1AF448018(v55, v56);

      sub_1AFDFEC28();
      if (!v2)
      {
        v49 = v40;
        *v50 = v11;
        *&v50[8] = v44;
        v51 = v12;
        v52 = v13;
        v53 = v14;
        sub_1AF448018(v55, v56);
        sub_1AF6489C0();
        sub_1AFDFEC38();
      }

LABEL_9:

      return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
    case 0xFuLL:
      v36 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      sub_1AF448018(v55, v56);
      sub_1AFDFEC28();
      if (v2)
      {
        return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
      }

      sub_1AF448018(v55, v56);
      sub_1AFDFEBE8();
      v49 = v36;
      sub_1AF448018(v55, v56);
      sub_1AF9748D8();
      break;
    case 0x10uLL:
      sub_1AF448018(v55, v56);
      sub_1AFDFEC28();
      return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
    default:
      result = sub_1AFDFE518();
      __break(1u);
      return result;
  }

  sub_1AFDFEC38();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
}

unint64_t sub_1AFAA2278@<X0>(unint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AFAB7CA0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AFAA22C0(int a1)
{
  v1 = a1;
  v2 = 28530;
  v3 = 28535;
  if ((a1 & 2) == 0)
  {
    v3 = 45;
  }

  if ((a1 & 1) == 0)
  {
    v2 = v3;
  }

  if ((~a1 & 3) != 0)
  {
    result = v2;
  }

  else
  {
    result = 30578;
  }

  if ((v1 & 4) != 0)
  {

    return 115;
  }

  return result;
}

uint64_t sub_1AFAA23EC()
{
  sub_1AFDFF288();
  sub_1AFAA0C08(v4, *v0);
  sub_1AFDFF2A8();
  v1 = *(v0 + 16);
  sub_1AFDFF2A8();
  if ((~v1 & 0xF000000000000007) != 0)
  {
    sub_1AFAA0C08(v4, v1);
  }

  if (*(v0 + 32) == 1)
  {
    sub_1AFDFF2A8();
  }

  else
  {
    v2 = *(v0 + 24);
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v2);
  }

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAA24B8(uint64_t a1)
{
  v2 = v1;
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 32);
  sub_1AFAA0C08(a1, *v2);
  sub_1AFDFF2A8();
  if ((~v5 & 0xF000000000000007) != 0)
  {
    sub_1AFDFF2A8();
    sub_1AFAA0C08(a1, v5);
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1AFDFF2A8();
    if (!v6)
    {
LABEL_3:
      sub_1AFDFF2A8();
      return MEMORY[0x1B271ACB0](v4);
    }
  }

  return sub_1AFDFF2A8();
}

uint64_t sub_1AFAA2554(uint64_t a1)
{
  v2 = *v1;
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_1AFDFF288();
  sub_1AFAA0C08(v7, v2);
  sub_1AFDFF2A8();
  if ((~v4 & 0xF000000000000007) != 0)
  {
    sub_1AFDFF2A8();
    sub_1AFAA0C08(v7, v4);
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1AFDFF2A8();
    return sub_1AFDFF2F8();
  }

  sub_1AFDFF2A8();
  if (v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1AFDFF2A8();
  MEMORY[0x1B271ACB0](v3);
  return sub_1AFDFF2F8();
}

BOOL sub_1AFAA261C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1AFAB69E0(v5, v7);
}

uint64_t sub_1AFAA2668(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  v3 = v1[2];
  v4 = v3;
  if ((v3 & 0xF000000000000007) == 0xF000000000000007)
  {
    v4 = *v1;
    sub_1AF443EE0(*v1);
  }

  sub_1AF448018(v6, v7);
  sub_1AF444224(v3);
  sub_1AF444224(v3);
  sub_1AFAB8B4C();
  sub_1AFDFEC38();
  if (v2)
  {
    sub_1AF444AF4(v3);
    sub_1AF443F24(v4);
  }

  else
  {
    sub_1AF443F24(v4);
    sub_1AF448018(v6, v7);
    sub_1AFAB8BA0();
    sub_1AFDFEC38();
    if ((v3 & 0xF000000000000007) != 0xF000000000000007)
    {
      sub_1AF444AF4(v3);
    }

    sub_1AF448018(v6, v7);
    sub_1AFDFEBF8();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
}

double sub_1AFAA2808@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AFAB88D0(a2, v6);
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

uint64_t sub_1AFAA2868(__n128 a1)
{
  sub_1AFDFF308();
  sub_1AFDFD038();
  sub_1AF587A10(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = *(v1 + 24);

  sub_1AF8B50A4(v20, inited);
  swift_setDeallocating();
  sub_1AFABB520(inited + 32, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AFDFD038();

  v3 = *(v1 + 32);
  MEMORY[0x1B271ACB0](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1AFC06F08(0, v4, 0);
    v5 = v19;
    v6 = (v3 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *v6;
      sub_1AFDFF308();
      sub_1AF443EE0(v7);
      sub_1AF444224(v8);
      v10 = sub_1AFAA02E0(v7, v9);
      MEMORY[0x1B271ACB0](v10);
      v29 = v24;
      v30 = v25;
      v31 = v26;
      v27 = v22;
      v28 = v23;
      v11 = sub_1AFDFF2E8();
      sub_1AF443F24(v7);
      sub_1AF444AF4(v8);
      v13 = *(v19 + 16);
      v12 = *(v19 + 24);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        sub_1AFC06F08(v12 > 1, v13 + 1, 1);
        v14 = v13 + 1;
      }

      v6 += 5;
      *(v19 + 16) = v14;
      *(v19 + 8 * v13 + 32) = v11;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    v14 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  MEMORY[0x1B271ACB0](v14);
  v15 = *(v5 + 16);
  if (v15)
  {
    v16 = (v5 + 32);
    do
    {
      v17 = *v16++;
      MEMORY[0x1B271ACB0](v17);
      --v15;
    }

    while (v15);
  }

  v23 = v20[1];
  v24 = v20[2];
  v25 = v20[3];
  v26 = v21;
  v22 = v20[0];
  return sub_1AFDFF2E8();
}

char *sub_1AFAA2B28(__n128 a1)
{
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  if (*(v1 + 40))
  {
    if (!v3)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else if (!v3)
  {
    v13 = *(v1 + 24);
    if (v13[2])
    {
      v15 = v13[4];
      v14 = v13[5];
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v4 = sub_1AFAF4338(v15, v14, *(v1 + 8), *(v1 + 16), *v1, 1, 4u);

    return v4;
  }

  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC07A7C(0, v3, 0);
  v4 = v20;
  v5 = (v2 + 64);
  do
  {
    v6 = *(v5 - 4);
    v7 = *(v5 - 24);
    v8 = *(v5 - 2);
    v17 = *(v5 - 1);
    v9 = *v5;
    sub_1AF443EE0(v6);
    sub_1AF444224(v8);
    v11 = *(v20 + 16);
    v10 = *(v20 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1AFC07A7C(v10 > 1, v11 + 1, 1);
    }

    *(v20 + 16) = v11 + 1;
    v12 = v20 + 72 * v11;
    *(v12 + 32) = v6;
    *(v12 + 40) = v7;
    *(v12 + 41) = *v19;
    *(v12 + 44) = *&v19[3];
    *(v12 + 48) = v8;
    *(v12 + 56) = v17;
    *(v12 + 64) = v9;
    *(v12 + 68) = *&v18[3];
    *(v12 + 65) = *v18;
    *(v12 + 88) = 0u;
    *(v12 + 72) = 0u;
    v5 += 40;
    --v3;
  }

  while (v3);
  return v4;
}

uint64_t sub_1AFAA2CD8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>, __n128 a4@<Q0>)
{
  v9 = *(v4 + 3);
  if (v9[2])
  {
    v11 = v9[4];
    v10 = v9[5];
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = *v4;
  v14 = *(v4 + 1);
  v13 = *(v4 + 2);
  v15 = sub_1AFAA2B28(a4);
  if (v5)
  {
  }

  v17 = v15;
  v50 = v13;
  v51 = v14;
  v18 = (v4[40] & 1) == 0 && *(*(v4 + 4) + 16) == 0;
  v19 = v14;
  v20 = a1;
  v21 = *(v17 + 2);
  v22 = MEMORY[0x1E69E7CC0];
  v23 = a2;
  v49 = v17;
  if (v21)
  {
    v24 = v17;
    v43 = v18;
    v44 = v12;
    v47 = a3;
    v48 = v11;
    v45 = v20;
    v46 = v23;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1AFC07A4C(0, v21, 0);
    v22 = v53;
    v25 = v24 + 64;
    do
    {
      v26 = *(v25 - 4);
      v27 = *(v25 - 24);
      v28 = *(v25 - 2);
      v29 = *(v25 - 1);
      v52 = *v25;
      sub_1AF443EE0(v26);
      sub_1AF444224(v28);
      v31 = *(v53 + 16);
      v30 = *(v53 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1AFC07A4C(v30 > 1, v31 + 1, 1);
      }

      *(v53 + 16) = v31 + 1;
      v32 = v53 + 40 * v31;
      *(v32 + 32) = v26;
      *(v32 + 40) = v27;
      *(v32 + 48) = v28;
      *(v32 + 56) = v29;
      *(v32 + 64) = v52;
      v25 += 72;
      --v21;
    }

    while (v21);
    a3 = v47;
    v20 = v45;
    v23 = v46;
    v18 = v43;
    v12 = v44;
    v11 = v48;
    v19 = v51;
  }

  v33 = v50;
  if (v23 != 1)
  {
    if (v18)
    {
      v39 = sub_1AFAF500C(v19, v50, v49, v12);
      v33 = v40;
      v51 = v39;
    }

    else
    {
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v41 = type metadata accessor for SwiftTrampolineCodeGen();
      }

      else
      {
        v41 = type metadata accessor for JavaScriptTrampolineCodeGen();
      }
    }

    else if (v12 >= 2)
    {
      v41 = type metadata accessor for MetalTrampolineCodeGen();
    }

    else
    {
      v41 = type metadata accessor for CTrampolineCodeGen();
    }

    (*(v41 + 128))(&v54, v11, v10, v51, v33, 1, 1, v22, v20, v23);

    if (v12 == 2)
    {
    }

    else
    {
      v42 = sub_1AFDFEE28();

      if ((v42 & 1) == 0)
      {
        v35 = *(&v56 + 1);
        v38 = v56;
        v36 = *(&v55 + 1);
        v34 = v55;
        v37 = v54;
        goto LABEL_34;
      }
    }

    if (qword_1EB6372E0 != -1)
    {
      swift_once();
    }

    sub_1AFB0EF84(&v54, 0, qword_1EB6C35A8, unk_1EB6C35B0, v20, v23, v57);
    v60 = v54;
    sub_1AFABB520(&v60, &qword_1EB642688, &type metadata for ScriptFunction, MEMORY[0x1E69E62F8]);
    v59 = v55;
    sub_1AF585778(&v59);
    v58 = v56;
    result = sub_1AF585778(&v58);
    v38 = v57[3];
    v35 = v57[4];
    v34 = v57[1];
    v36 = v57[2];
    v37 = v57[0];
    goto LABEL_34;
  }

  v34 = 0;
  v35 = 0xE200000000000000;
  v36 = 0xE000000000000000;
  v37 = MEMORY[0x1E69E7CC0];
  v38 = 11565;
LABEL_34:
  *a3 = v37;
  a3[1] = v34;
  a3[2] = v36;
  a3[3] = v38;
  a3[4] = v35;
  a3[5] = v22;
  a3[6] = 0;
  return result;
}

char *sub_1AFAA3140(unint64_t a1, uint64_t a2)
{
  sub_1AFABCCC0(0, qword_1ED725728, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  if (a1 == 0xFFFFFFFF)
  {
    sub_1AFABB6B4(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
LABEL_4:
    sub_1AFABCC20(v5, qword_1ED725728, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AF3CF138(a1, v5);

  sub_1AFABB6B4(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
  v8 = v7;
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    goto LABEL_4;
  }

  v10 = &v5[*(v8 + 60)];
  v11 = *v10;
  sub_1AFABCC7C(*v10, v10[1]);
  sub_1AFABCA48(v5, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368);
  v12 = sub_1AFABA664(v11);

  return v12;
}

uint64_t sub_1AFAA33C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  *(a2 + 32) = v3;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v4 = *(a1 + 40);
  v5 = type metadata accessor for ScriptIndex(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  *(a2 + 16) = 0x80000001AFF2B900;
  *(a2 + 24) = &unk_1F24F3C60;
  *(a2 + 8) = 0xD0000000000000BFLL;
  return result;
}

char *sub_1AFAA34DC(unint64_t a1, uint64_t a2)
{
  sub_1AFABCCC0(0, &qword_1ED725720, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  if (a1 == 0xFFFFFFFF)
  {
    sub_1AFABB6B4(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
LABEL_4:
    sub_1AFABCC20(v5, &qword_1ED725720, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AF3CF160(a1, v5);

  sub_1AFABB6B4(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
  v8 = v7;
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    goto LABEL_4;
  }

  v10 = &v5[*(v8 + 60)];
  v11 = *v10;
  sub_1AFABCC7C(*v10, v10[1]);
  sub_1AFABCA48(v5, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8);
  v12 = sub_1AFABA664(v11);

  return v12;
}

unint64_t sub_1AFAA3740(unint64_t result, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v3 + 2);
  if (v4)
  {
    v6 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1AFC0D9F4(v3);
    }

    v7 = v3 + 32;
    do
    {
      v8 = sub_1AFAA0710(v6, a2, *v7);
      v9 = v7[8];
      v10 = *(v7 + 2);
      sub_1AF443F24(*v7);
      result = sub_1AF444AF4(v10);
      *v7 = v8;
      v7[8] = v9;
      *(v7 + 1) = xmmword_1AFE4C460;
      v7[32] = 1;
      v7 += 40;
      --v4;
    }

    while (v4);
    *(v2 + 32) = v3;
  }

  return result;
}

uint64_t sub_1AFAA3818(__n128 a1)
{
  sub_1AFDFF308();
  sub_1AFDFD038();
  v2 = *(v1 + 16);
  MEMORY[0x1B271ACB0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_1AFDFD038();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  sub_1AFDFD038();

  v5 = *(v1 + 32);
  MEMORY[0x1B271ACB0](*(v5 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1AFC06F08(0, v6, 0);
    v7 = v21;
    v8 = (v5 + 48);
    do
    {
      v9 = *(v8 - 2);
      v10 = *v8;
      sub_1AFDFF308();
      sub_1AF443EE0(v9);
      sub_1AF444224(v10);
      v12 = sub_1AFAA02E0(v9, v11);
      MEMORY[0x1B271ACB0](v12);
      v13 = sub_1AFDFF2E8();
      sub_1AF443F24(v9);
      sub_1AF444AF4(v10);
      v15 = *(v21 + 16);
      v14 = *(v21 + 24);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        sub_1AFC06F08(v14 > 1, v15 + 1, 1);
        v16 = v15 + 1;
      }

      v8 += 5;
      *(v21 + 16) = v16;
      *(v21 + 8 * v15 + 32) = v13;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    v16 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  MEMORY[0x1B271ACB0](v16);
  v17 = *(v7 + 16);
  if (v17)
  {
    v18 = (v7 + 32);
    do
    {
      v19 = *v18++;
      MEMORY[0x1B271ACB0](v19);
      --v17;
    }

    while (v17);
  }

  return sub_1AFDFF2E8();
}

char *sub_1AFAA3AA4(__n128 a1)
{
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  if (*(v1 + 40))
  {
    if (!v3)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else if (!v3)
  {
    v13 = *(v1 + 16);
    if (v13[2])
    {
      v15 = v13[4];
      v14 = v13[5];
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v4 = sub_1AFAF4338(v15, v14, *v1, *(v1 + 8), *(v1 + 24), 1, 4u);

    return v4;
  }

  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC07A7C(0, v3, 0);
  v4 = v20;
  v5 = (v2 + 64);
  do
  {
    v6 = *(v5 - 4);
    v7 = *(v5 - 24);
    v8 = *(v5 - 2);
    v17 = *(v5 - 1);
    v9 = *v5;
    sub_1AF443EE0(v6);
    sub_1AF444224(v8);
    v11 = *(v20 + 16);
    v10 = *(v20 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1AFC07A7C(v10 > 1, v11 + 1, 1);
    }

    *(v20 + 16) = v11 + 1;
    v12 = v20 + 72 * v11;
    *(v12 + 32) = v6;
    *(v12 + 40) = v7;
    *(v12 + 41) = *v19;
    *(v12 + 44) = *&v19[3];
    *(v12 + 48) = v8;
    *(v12 + 56) = v17;
    *(v12 + 64) = v9;
    *(v12 + 68) = *&v18[3];
    *(v12 + 65) = *v18;
    *(v12 + 88) = 0u;
    *(v12 + 72) = 0u;
    v5 += 40;
    --v3;
  }

  while (v3);
  return v4;
}

uint64_t sub_1AFAA3C54@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>, __n128 a4@<Q0>)
{
  v9 = *(v4 + 16);
  if (v9[2])
  {
    v11 = v9[4];
    v10 = v9[5];
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = *(v4 + 24);
  v14 = *v4;
  v13 = *(v4 + 8);
  v15 = sub_1AFAA3AA4(a4);
  if (v5)
  {
  }

  v17 = v15;
  v50 = v13;
  v51 = v14;
  v18 = (*(v4 + 40) & 1) == 0 && *(*(v4 + 32) + 16) == 0;
  v19 = v14;
  v20 = a1;
  v21 = *(v17 + 2);
  v22 = MEMORY[0x1E69E7CC0];
  v23 = a2;
  v49 = v17;
  if (v21)
  {
    v24 = v17;
    v43 = v18;
    v44 = v12;
    v47 = a3;
    v48 = v11;
    v45 = v20;
    v46 = v23;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1AFC07A4C(0, v21, 0);
    v22 = v53;
    v25 = v24 + 64;
    do
    {
      v26 = *(v25 - 4);
      v27 = *(v25 - 24);
      v28 = *(v25 - 2);
      v29 = *(v25 - 1);
      v52 = *v25;
      sub_1AF443EE0(v26);
      sub_1AF444224(v28);
      v31 = *(v53 + 16);
      v30 = *(v53 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1AFC07A4C(v30 > 1, v31 + 1, 1);
      }

      *(v53 + 16) = v31 + 1;
      v32 = v53 + 40 * v31;
      *(v32 + 32) = v26;
      *(v32 + 40) = v27;
      *(v32 + 48) = v28;
      *(v32 + 56) = v29;
      *(v32 + 64) = v52;
      v25 += 72;
      --v21;
    }

    while (v21);
    a3 = v47;
    v20 = v45;
    v23 = v46;
    v18 = v43;
    v12 = v44;
    v11 = v48;
    v19 = v51;
  }

  v33 = v50;
  if (v23 != 1)
  {
    if (v18)
    {
      v39 = sub_1AFAF500C(v19, v50, v49, v12);
      v33 = v40;
      v51 = v39;
    }

    else
    {
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v41 = type metadata accessor for SwiftTrampolineCodeGen();
      }

      else
      {
        v41 = type metadata accessor for JavaScriptTrampolineCodeGen();
      }
    }

    else if (v12 >= 2)
    {
      v41 = type metadata accessor for MetalTrampolineCodeGen();
    }

    else
    {
      v41 = type metadata accessor for CTrampolineCodeGen();
    }

    (*(v41 + 128))(&v54, v11, v10, v51, v33, 1, 0, v22, v20, v23);

    if (v12 == 2)
    {
    }

    else
    {
      v42 = sub_1AFDFEE28();

      if ((v42 & 1) == 0)
      {
        v35 = *(&v56 + 1);
        v38 = v56;
        v36 = *(&v55 + 1);
        v34 = v55;
        v37 = v54;
        goto LABEL_34;
      }
    }

    if (qword_1EB6372E0 != -1)
    {
      swift_once();
    }

    sub_1AFB0EF84(&v54, 0, qword_1EB6C35A8, unk_1EB6C35B0, v20, v23, v57);
    v60 = v54;
    sub_1AFABB520(&v60, &qword_1EB642688, &type metadata for ScriptFunction, MEMORY[0x1E69E62F8]);
    v59 = v55;
    sub_1AF585778(&v59);
    v58 = v56;
    result = sub_1AF585778(&v58);
    v38 = v57[3];
    v35 = v57[4];
    v34 = v57[1];
    v36 = v57[2];
    v37 = v57[0];
    goto LABEL_34;
  }

  v34 = 0;
  v35 = 0xE200000000000000;
  v36 = 0xE000000000000000;
  v37 = MEMORY[0x1E69E7CC0];
  v38 = 11565;
LABEL_34:
  *a3 = v37;
  a3[1] = v34;
  a3[2] = v36;
  a3[3] = v38;
  a3[4] = v35;
  a3[5] = v22;
  a3[6] = 0;
  return result;
}

uint64_t sub_1AFAA4174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = 0;
  *(a2 + 32) = v3;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v4 = *(a1 + 40);
  v5 = type metadata accessor for ScriptIndex(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  *(a2 + 8) = 0x80000001AFF2BA30;
  *(a2 + 16) = &unk_1F24F3D50;
  *a2 = 0xD0000000000000C3;
  return result;
}

unint64_t sub_1AFAA4238@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFAB6FBC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1AFAA4268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFAB6FBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFAA4290(uint64_t a1)
{
  v2 = sub_1AFABB720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFAA42CC(uint64_t a1)
{
  v2 = sub_1AFABB720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFAA4308@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  sub_1AFABCB54(0, &qword_1ED721ED8, sub_1AFABB720, &type metadata for ParticleInitScript.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v43 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v42 - v5;
  inited = type metadata accessor for ParticleInitScript(0);
  MEMORY[0x1EEE9AC00](inited - 8);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 6) = 0;
  *(v9 + 7) = 0;
  v11 = *(v10 + 48);
  v12 = type metadata accessor for ScriptIndex(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v46 = v9;
  v47 = v11;
  v14(&v9[v11], 1, 1, v12);
  v16 = a1[3];
  v48 = a1;
  v17 = a1;
  v18 = v6;
  sub_1AF441150(v17, v16);
  sub_1AFABB720();
  v19 = v45;
  sub_1AFDFF3B8();
  if (v19)
  {
    v23 = v46;
    v24 = v47;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
    v25 = sub_1AFAAEB58;
    v26 = &v23[v24];
  }

  else
  {
    v42[1] = v15;
    v45 = v14;
    v21 = v43;
    v20 = v44;
    LOBYTE(v49) = 0;
    v22 = sub_1AFDFE708();
    v28 = v18;
    v29 = v46;
    *(v46 + 1) = v22;
    *(v29 + 16) = v30;
    v51 = 4;
    sub_1AF7DB4F8();
    sub_1AFDFE6E8();
    v31 = v47;
    v32 = v49;
    if (v49 == 5)
    {
      v32 = 3;
    }

    *v29 = v32;
    LOBYTE(v49) = 5;
    v33 = sub_1AFDFE6A8();
    v34 = v21;
    v42[0] = v28;
    *(v29 + 40) = v33 & 1;
    v35 = v48[3];
    v36 = v48[4];
    sub_1AF441150(v48, v35);
    if (sub_1AF69504C(1091, v35, v36))
    {
      sub_1AFABE4B8(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1AFE431C0;
      LOBYTE(v49) = 2;
      *(v37 + 32) = sub_1AFDFE708();
      *(v37 + 40) = v38;
      *(v29 + 24) = v37;
    }

    else
    {
      sub_1AFABE4B8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      v51 = 1;
      sub_1AFABB864(&qword_1ED726C58, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
      sub_1AFDFE768();
      *(v29 + 24) = v49;
    }

    v51 = 3;
    sub_1AF47FEB4();
    sub_1AFDFE6E8();
    if ((v50 & 1) == 0)
    {
      v39 = v49;
      sub_1AFAB7208(v29 + v31, sub_1AFAAEB58);
      *(v29 + v31) = v39;
      swift_storeEnumTagMultiPayload();
      v45((v29 + v31), 0, 1, v12);
    }

    sub_1AFABE4B8(0, &unk_1ED722010, &type metadata for ScriptParameter, MEMORY[0x1E69E62F8]);
    v51 = 6;
    sub_1AFABB774();
    v40 = v42[0];
    sub_1AFDFE6E8();
    if (v49)
    {
      v41 = v49;
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    (*(v34 + 8))(v40, v4);
    *(v29 + 32) = v41;
    sub_1AFABBD7C(v29, v20, type metadata accessor for ParticleInitScript);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
    v25 = type metadata accessor for ParticleInitScript;
    v26 = v29;
  }

  sub_1AFAB7208(v26, v25);
  return result;
}

uint64_t sub_1AFAA4944(void *a1)
{
  v2 = type metadata accessor for ScriptIndex(0);
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFAAEB58(0, v3);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFABCB54(0, &qword_1EB6425E0, sub_1AFABB720, &type metadata for ParticleInitScript.CodingKeys, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  sub_1AF441150(a1, a1[3]);
  sub_1AFABB720();
  v14 = v29;
  sub_1AFDFF3F8();
  LOBYTE(v32) = 0;
  v15 = v30;
  sub_1AFDFE8B8();
  if (v15)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v30 = v8;
  v26 = v5;
  v17 = v11;
  v18 = v28;
  v32 = *(v14 + 24);
  v31 = 1;
  sub_1AFABE4B8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AFABB864(&qword_1EB639870, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1AFDFE918();
  LOBYTE(v32) = *v14;
  v31 = 4;
  sub_1AF7DB748();
  sub_1AFDFE918();
  LOBYTE(v32) = 5;
  sub_1AFDFE8C8();
  inited = type metadata accessor for ParticleInitScript(0);
  v20 = v30;
  sub_1AFABBD7C(v14 + *(inited + 40), v30, sub_1AFAAEB58);
  if ((*(v27 + 48))(v20, 1, v18) == 1)
  {
    v21 = sub_1AFAAEB58;
    v22 = v20;
  }

  else
  {
    v23 = v26;
    sub_1AFABBD7C(v20, v26, type metadata accessor for ScriptIndex);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v24 = *v23;
      sub_1AFAB7208(v20, type metadata accessor for ScriptIndex);
      v32 = v24;
      v31 = 3;
      sub_1AF480018();
      sub_1AFDFE918();
      goto LABEL_8;
    }

    sub_1AFAB7208(v23, type metadata accessor for ScriptIndex);
    v22 = v20;
    v21 = type metadata accessor for ScriptIndex;
  }

  sub_1AFAB7208(v22, v21);
LABEL_8:
  v32 = *(v14 + 32);
  v31 = 6;
  sub_1AFABE4B8(0, &unk_1ED722010, &type metadata for ScriptParameter, MEMORY[0x1E69E62F8]);
  sub_1AFABB8E8();
  sub_1AFDFE918();
  return (*(v17 + 8))(v13, v10);
}

uint64_t sub_1AFAA4E74(uint64_t a1)
{
  sub_1AFDFD038();
}

unint64_t sub_1AFAA4F9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFAB7054(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AFAA4FCC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701080931;
  v5 = 0xE900000000000032;
  v6 = 0x5668706172477369;
  if (v2 != 5)
  {
    v6 = 0x6574656D61726170;
    v5 = 0xEA00000000007372;
  }

  v7 = 0x80000001AFF22D30;
  v8 = 0xD000000000000011;
  if (v2 != 3)
  {
    v8 = 0x65676175676E616CLL;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED000073656D614ELL;
  if (v2 != 1)
  {
    v9 = 0xEC000000656D614ELL;
  }

  if (*v1)
  {
    v4 = 0x6E6F6974636E7566;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1AFAA50C4()
{
  v1 = *v0;
  v2 = 1701080931;
  v3 = 0x5668706172477369;
  if (v1 != 5)
  {
    v3 = 0x6574656D61726170;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x65676175676E616CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F6974636E7566;
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

unint64_t sub_1AFAA51B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFAB7054(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFAA51E0(uint64_t a1)
{
  v2 = sub_1AFABB9D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFAA521C(uint64_t a1)
{
  v2 = sub_1AFABB9D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFAA5258@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  sub_1AFABCB54(0, &qword_1EB633108, sub_1AFABB9D8, &type metadata for ParticleUpdateScript.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v48 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v45 - v5;
  updated = type metadata accessor for ParticleUpdateScript(0);
  MEMORY[0x1EEE9AC00](updated - 8);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 6) = 0;
  *(v9 + 7) = 0;
  v11 = *(v10 + 48);
  v12 = type metadata accessor for ScriptIndex(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v51 = v11;
  v52 = v9;
  v14(&v9[v11], 1, 1, v12);
  sub_1AF441150(a1, a1[3]);
  sub_1AFABB9D8();
  v16 = v50;
  sub_1AFDFF3B8();
  if (v16)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    sub_1AF585778(aParticleupdate_8);
    v21 = sub_1AFAAEB58;
    v22 = &v52[v51];
  }

  else
  {
    v45[2] = v15;
    v46 = v14;
    v47 = v12;
    v50 = a1;
    v18 = v48;
    v17 = v49;
    LOBYTE(v53) = 0;
    v19 = sub_1AFDFE708();
    v20 = v6;
    v24 = v52;
    *v52 = v19;
    *(v24 + 1) = v25;
    v45[1] = v25;
    v26 = v50[3];
    v27 = v50[4];
    sub_1AF441150(v50, v26);
    if (sub_1AF69504C(1091, v26, v27))
    {
      sub_1AFABE4B8(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1AFE431C0;
      LOBYTE(v53) = 2;
      v29 = v20;
      v30 = sub_1AFDFE708();
      v31 = v51;
      v32 = v18;
      *(v28 + 32) = v30;
      *(v28 + 40) = v33;
      *(v52 + 2) = v28;
    }

    else
    {
      sub_1AFABE4B8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      v55 = 1;
      sub_1AFABB864(&qword_1ED726C58, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
      sub_1AFDFE768();
      v34 = v20;
      v31 = v51;
      v35 = v24;
      v29 = v34;
      *(v35 + 2) = v53;
      v32 = v18;
    }

    v55 = 4;
    sub_1AF7DB4F8();
    v36 = v29;
    sub_1AFDFE6E8();
    v37 = v53;
    if (v53 == 5)
    {
      v37 = 3;
    }

    v38 = v52;
    v52[24] = v37;
    LOBYTE(v53) = 5;
    v38[40] = sub_1AFDFE6A8() & 1;
    v55 = 3;
    sub_1AF47FEB4();
    sub_1AFDFE6E8();
    v39 = v36;
    if ((v54 & 1) == 0)
    {
      v41 = v52;
      v40 = v53;
      sub_1AFAB7208(&v52[v31], sub_1AFAAEB58);
      *&v41[v31] = v40;
      v42 = v47;
      swift_storeEnumTagMultiPayload();
      v46(&v41[v31], 0, 1, v42);
    }

    sub_1AFABE4B8(0, &unk_1ED722010, &type metadata for ScriptParameter, MEMORY[0x1E69E62F8]);
    v55 = 6;
    sub_1AFABB774();
    sub_1AFDFE6E8();
    if (v53)
    {
      v43 = v53;
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC0];
    }

    (*(v32 + 8))(v39, v4);
    v44 = v52;
    *(v52 + 4) = v43;
    sub_1AFABBD7C(v44, v17, type metadata accessor for ParticleUpdateScript);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v50);
    v21 = type metadata accessor for ParticleUpdateScript;
    v22 = v44;
  }

  sub_1AFAB7208(v22, v21);
  return result;
}

uint64_t sub_1AFAA58DC(void *a1)
{
  v2 = type metadata accessor for ScriptIndex(0);
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AFAAEB58(0, v3);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFABCB54(0, &qword_1EB6425F8, sub_1AFABB9D8, &type metadata for ParticleUpdateScript.CodingKeys, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  sub_1AF441150(a1, a1[3]);
  sub_1AFABB9D8();
  v14 = v29;
  sub_1AFDFF3F8();
  LOBYTE(v31) = *(v14 + 24);
  v32 = 4;
  sub_1AF7DB748();
  v15 = v30;
  sub_1AFDFE918();
  if (v15)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v30 = v8;
  v26 = v5;
  v17 = v11;
  v18 = v28;
  LOBYTE(v31) = 0;
  sub_1AFDFE8B8();
  v31 = *(v14 + 16);
  v32 = 1;
  sub_1AFABE4B8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AFABB864(&qword_1EB639870, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1AFDFE918();
  LOBYTE(v31) = 5;
  sub_1AFDFE8C8();
  updated = type metadata accessor for ParticleUpdateScript(0);
  v20 = v30;
  sub_1AFABBD7C(v14 + *(updated + 40), v30, sub_1AFAAEB58);
  if ((*(v27 + 48))(v20, 1, v18) == 1)
  {
    v21 = sub_1AFAAEB58;
    v22 = v20;
  }

  else
  {
    v23 = v26;
    sub_1AFABBD7C(v20, v26, type metadata accessor for ScriptIndex);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v24 = *v23;
      sub_1AFAB7208(v20, type metadata accessor for ScriptIndex);
      v31 = v24;
      v32 = 3;
      sub_1AF480018();
      sub_1AFDFE918();
      goto LABEL_8;
    }

    sub_1AFAB7208(v23, type metadata accessor for ScriptIndex);
    v22 = v20;
    v21 = type metadata accessor for ScriptIndex;
  }

  sub_1AFAB7208(v22, v21);
LABEL_8:
  v31 = *(v14 + 32);
  v32 = 6;
  sub_1AFABE4B8(0, &unk_1ED722010, &type metadata for ScriptParameter, MEMORY[0x1E69E62F8]);
  sub_1AFABB8E8();
  sub_1AFDFE918();
  return (*(v17 + 8))(v13, v10);
}

void sub_1AFAA5E08(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  sub_1AFAAEB58(0, a3);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ScriptIndex(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF483618(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v49 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AFDFC318();
  v51 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v4;
  v17 = *(*v4 + 2);
  if (v17)
  {
    v48 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v10;
    v47 = v14;
    v19 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1AFC0D9F4(v16);
    }

    v20 = v16 + 32;
    v52 = xmmword_1AFE4C460;
    do
    {
      v21 = sub_1AFAA0710(a1, a2, *v20);
      v22 = v20[8];
      v23 = *(v20 + 2);
      sub_1AF443F24(*v20);
      sub_1AF444AF4(v23);
      *v20 = v21;
      v20[8] = v22;
      *(v20 + 1) = v52;
      v20[32] = 1;
      v20 += 40;
      --v17;
    }

    while (v17);
    v4 = v19;
    *v19 = v16;
    v14 = v47;
    v9 = v48;
    v10 = v50;
  }

  ObjectType = swift_getObjectType();
  v25 = *(a2 + 32);
  if (v25(ObjectType, a2))
  {
    v26 = *(type metadata accessor for GraphScript(0) + 44);
    if ((*(v10 + 48))(v4 + v26, 1, v9))
    {
      v27 = v49;
      (*(v51 + 56))(v49, 1, 1, v14);
LABEL_14:
      sub_1AFAB7208(v27, sub_1AF483618);
      return;
    }

    v50 = v10;
    *&v52 = v26;
    v28 = v4 + v26;
    v29 = v46;
    sub_1AFABBD7C(v28, v46, type metadata accessor for ScriptIndex);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v31 = v51;
    if (EnumCaseMultiPayload == 1)
    {
      v32 = v29;
      v27 = v49;
      (*(v51 + 32))(v49, v32, v14);
      v33 = 0;
    }

    else
    {
      v33 = 1;
      v27 = v49;
    }

    (*(v31 + 56))(v27, v33, 1, v14);
    if ((*(v31 + 48))(v27, 1, v14) == 1)
    {
      goto LABEL_14;
    }

    v34 = v14;
    v35 = (v31 + 32);
    v36 = *(v31 + 32);
    v37 = v44;
    v38 = v27;
    v39 = v34;
    v49 = v35;
    v36(v44, v38, v34);
    if (v25(ObjectType, a2))
    {
      v40 = v45;
      (*(a2 + 24))(v37, 0x6E49747069726353, 0xEB00000000786564, sub_1AF8208AC, 0, ObjectType, a2);
      (*(v51 + 8))(v37, v39);
    }

    else
    {
      v40 = v45;
      v36(v45, v37, v39);
    }

    v41 = v52;
    v42 = v50;
    swift_storeEnumTagMultiPayload();
    v43 = (*(v42 + 56))(v40, 0, 1, v9);
    sub_1AFABCBBC(v40, v4 + v41, v43);
  }
}

uint64_t sub_1AFAA6314(__n128 a1)
{
  sub_1AFDFF308();
  sub_1AFDFD038();
  sub_1AFDFD038();

  v2 = v1[4];
  MEMORY[0x1B271ACB0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_1AFDFD038();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  MEMORY[0x1B271ACB0](qword_1AFE99228[*(v1 + 40)]);
  v5 = *v1;
  MEMORY[0x1B271ACB0](*(*v1 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *v7;
      v7 += 5;
      sub_1AFDFF308();
      sub_1AF443EE0(v8);
      sub_1AF444224(v9);
      v11 = sub_1AFAA02E0(v8, v10);
      MEMORY[0x1B271ACB0](v11);
      v12 = sub_1AFDFF2E8();
      MEMORY[0x1B271ACB0](v12);
      sub_1AF443F24(v8);
      sub_1AF444AF4(v9);
      --v6;
    }

    while (v6);
  }

  return sub_1AFDFF2E8();
}

uint64_t sub_1AFAA6580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 3;
  *a2 = v3;
  *(a2 + 32) = &unk_1F24F3988;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v4 = *(a1 + 44);
  v5 = type metadata accessor for ScriptIndex(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1AFAA6638(uint64_t a1)
{
  sub_1AFDFD038();
}

unint64_t sub_1AFAA6758@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFAB6E40(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AFAA6788(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701080931;
  v5 = 0xE900000000000032;
  v6 = 0x5668706172477369;
  if (v2 != 5)
  {
    v6 = 0x696C756465686373;
    v5 = 0xEA0000000000676ELL;
  }

  v7 = 0xEA00000000007372;
  v8 = 0x6574656D61726170;
  if (v2 != 3)
  {
    v8 = 0x6567617473;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED000073656D614ELL;
  v10 = 0x6E6F6974636E7566;
  if (v2 != 1)
  {
    v10 = 0x65676175676E616CLL;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1AFAA6870()
{
  v1 = *v0;
  v2 = 1701080931;
  v3 = 0x5668706172477369;
  if (v1 != 5)
  {
    v3 = 0x696C756465686373;
  }

  v4 = 0x6574656D61726170;
  if (v1 != 3)
  {
    v4 = 0x6567617473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E6F6974636E7566;
  if (v1 != 1)
  {
    v5 = 0x65676175676E616CLL;
  }

  if (*v0)
  {
    v2 = v5;
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

unint64_t sub_1AFAA6954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFAB6E40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFAA697C(uint64_t a1)
{
  v2 = sub_1AFABBA2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFAA69B8(uint64_t a1)
{
  v2 = sub_1AFABBA2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFAA69F4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_1AFABCB54(0, &qword_1EB633168, sub_1AFABBA2C, &type metadata for GraphScript.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = type metadata accessor for GraphScript(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = MEMORY[0x1E69E7CC0];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0xE000000000000000;
  v9[24] = 3;
  *(v9 + 4) = &unk_1F24FFBE0;
  *(v9 + 20) = 0;
  *(v9 + 6) = 0;
  *(v9 + 7) = 0;
  v11 = *(v10 + 52);
  v12 = type metadata accessor for ScriptIndex(0);
  (*(*(v12 - 8) + 56))(&v9[v11], 1, 1, v12);
  sub_1AF441150(a1, a1[3]);
  sub_1AFABBA2C();
  v13 = v24;
  sub_1AFDFF3B8();
  if (!v13)
  {
    v14 = v23;
    LOBYTE(v25) = 0;
    *(v9 + 1) = sub_1AFDFE708();
    *(v9 + 2) = v15;
    v26 = 2;
    sub_1AF7DB4F8();
    sub_1AFDFE768();
    v16 = v14;
    v9[24] = v25;
    sub_1AFABE4B8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v26 = 1;
    sub_1AFABB864(&qword_1ED726C58, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1AFDFE768();
    *(v9 + 4) = v25;
    v18 = a1[3];
    v19 = a1[4];
    sub_1AF441150(a1, v18);
    if (sub_1AF694FF8(3000, v18, v19))
    {
      sub_1AFABE4B8(0, &unk_1ED722010, &type metadata for ScriptParameter, MEMORY[0x1E69E62F8]);
      v26 = 3;
      sub_1AFABB774();
      sub_1AFDFE768();
      v20 = v22;
      *v9 = v25;
    }

    else
    {
      v20 = v22;
    }

    LOBYTE(v25) = 5;
    v9[41] = sub_1AFDFE6A8() & 1;
    v26 = 6;
    sub_1AFABBA80();
    sub_1AFDFE6E8();
    (*(v16 + 8))(v6, v4);
    v21 = v25;
    if (v25 == 17)
    {
      v21 = 0;
    }

    v9[40] = v21;
    sub_1AFABBD7C(v9, v20, type metadata accessor for GraphScript);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  sub_1AFAB7208(v9, type metadata accessor for GraphScript);
  return result;
}

uint64_t sub_1AFAA6EB8(void *a1)
{
  v3 = v1;
  sub_1AFABCB54(0, &qword_1EB642600, sub_1AFABBA2C, &type metadata for GraphScript.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFABBA2C();
  sub_1AFDFF3F8();
  LOBYTE(v13) = 0;
  sub_1AFDFE8B8();
  if (!v2)
  {
    v13 = v3[4];
    v12 = 1;
    sub_1AFABE4B8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AFABB864(&qword_1EB639870, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1AFDFE918();
    LOBYTE(v13) = *(v3 + 24);
    v12 = 2;
    sub_1AF7DB748();
    sub_1AFDFE918();
    v13 = *v3;
    v12 = 3;
    sub_1AFABE4B8(0, &unk_1ED722010, &type metadata for ScriptParameter, MEMORY[0x1E69E62F8]);
    sub_1AFABB8E8();
    sub_1AFDFE918();
    LOBYTE(v13) = 5;
    sub_1AFDFE8C8();
    LOBYTE(v13) = *(v3 + 40);
    v12 = 6;
    sub_1AFABBAD4();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AFAA71FC(__n128 a1)
{
  sub_1AFDFF308();
  sub_1AFDFD038();
  v2 = *(v1 + 24);
  MEMORY[0x1B271ACB0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_1AFDFD038();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  sub_1AFDFD038();

  return sub_1AFDFF2E8();
}

uint64_t sub_1AFAA7344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *(v4 + 3);
  if (v8[2])
  {
    v10 = v8[4];
    v9 = v8[5];
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = *(v4 + 1);
  v12 = *(v4 + 2);
  v13 = *v4;
  v14 = sub_1AFAF4338(v10, v9, v11, v12, *v4, 0, 4u);

  if (!v5)
  {
    v43 = v12;
    v45 = v13;
    v39 = a1;
    v16 = *(v14 + 2);
    v17 = MEMORY[0x1E69E7CC0];
    v44 = v14;
    if (v16)
    {
      v40 = v11;
      v41 = v8;
      v42 = a2;
      v50 = MEMORY[0x1E69E7CC0];
      sub_1AFC07A4C(0, v16, 0);
      v17 = v50;
      v18 = v14 + 64;
      do
      {
        v19 = *(v18 - 4);
        v20 = *(v18 - 24);
        v21 = *(v18 - 2);
        v22 = *(v18 - 1);
        v47 = *v18;
        sub_1AF443EE0(v19);
        sub_1AF444224(v21);
        v50 = v17;
        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1AFC07A4C(v23 > 1, v24 + 1, 1);
          v17 = v50;
        }

        *(v17 + 16) = v24 + 1;
        v25 = v17 + 40 * v24;
        *(v25 + 32) = v19;
        *(v25 + 40) = v20;
        *(v25 + 48) = v21;
        *(v25 + 56) = v22;
        *(v25 + 64) = v47;
        v18 += 72;
        --v16;
      }

      while (v16);
      v26 = a3;
      v27 = v42;
      v11 = v40;
      v8 = v41;
    }

    else
    {
      v27 = a2;
      v26 = a3;
    }

    if (v27 == 1)
    {

      v28 = 0;
      v29 = 0xE200000000000000;
      v30 = 0xE000000000000000;
      v31 = MEMORY[0x1E69E7CC0];
      v32 = 11565;
    }

    else
    {
      if (v8[2])
      {
      }

      v48 = sub_1AFAF500C(v11, v43, v44, v45);
      v34 = v33;

      if (v45 > 2)
      {
        if (v45 == 3)
        {
          v35 = type metadata accessor for SwiftTrampolineCodeGen();
        }

        else
        {
          v35 = type metadata accessor for JavaScriptTrampolineCodeGen();
        }
      }

      else if (v45 >= 2)
      {
        v35 = type metadata accessor for MetalTrampolineCodeGen();
      }

      else
      {
        v35 = type metadata accessor for CTrampolineCodeGen();
      }

      v36 = v35;
      if (v8[2])
      {
        v38 = v8[4];
        v37 = v8[5];
      }

      else
      {
        v38 = 0;
        v37 = 0;
      }

      (*(v36 + 128))(v49, v38, v37, v48, v34, 0, 0, v17, v39, v27);

      v32 = v49[3];
      v29 = v49[4];
      v28 = v49[1];
      v30 = v49[2];
      v31 = v49[0];
    }

    *v26 = v31;
    v26[1] = v28;
    v26[2] = v30;
    v26[3] = v32;
    v26[4] = v29;
    v26[5] = v17;
    v26[6] = 0;
  }

  return result;
}

uint64_t sub_1AFAA76C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 32) = 0;
  v4 = *(a1 + 32);
  v5 = type metadata accessor for ScriptIndex(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = (a2 + *(a1 + 36));
  *v7 = 0;
  v7[1] = 0;
  *(a2 + 16) = 0x80000001AFF2B740;
  *(a2 + 24) = &unk_1F24F3A28;
  *(a2 + 8) = 0xD0000000000000C0;
  return result;
}

unint64_t sub_1AFAA777C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFAB6F24(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1AFAA77AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFAB6F24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFAA77D4(uint64_t a1)
{
  v2 = sub_1AFABBB28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFAA7810(uint64_t a1)
{
  v2 = sub_1AFABBB28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFAA784C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  sub_1AFABCB54(0, &qword_1EB642610, sub_1AFABBB28, &type metadata for EmitterScript.CodingKeys, MEMORY[0x1E69E6F48]);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - v4;
  v6 = type metadata accessor for EmitterScript(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[32] = 0;
  v10 = *(v7 + 40);
  v11 = type metadata accessor for ScriptIndex(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v45 = v10;
  v13(&v9[v10], 1, 1, v11);
  v15 = *(v7 + 44);
  v47 = v9;
  v16 = &v9[v15];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = a1[3];
  v18 = a1;
  v19 = a1;
  v20 = v5;
  sub_1AF441150(v19, v17);
  sub_1AFABBB28();
  v21 = v46;
  sub_1AFDFF3B8();
  if (v21)
  {
    v25 = v47;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
    v26 = sub_1AFAAEB58;
    v27 = &v25[v45];
  }

  else
  {
    v40 = v14;
    v41 = v13;
    v46 = v11;
    v23 = v43;
    v22 = v44;
    LOBYTE(v48) = 0;
    v24 = sub_1AFDFE708();
    v29 = v47;
    *(v47 + 1) = v24;
    *(v29 + 16) = v30;
    v50 = 4;
    sub_1AF7DB4F8();
    sub_1AFDFE6E8();
    v31 = v23;
    v32 = v48;
    if (v48 == 5)
    {
      v32 = 0;
    }

    *v29 = v32;
    v33 = v18[3];
    v34 = v18[4];
    sub_1AF441150(v18, v33);
    if (sub_1AF69504C(1091, v33, v34))
    {
      sub_1AFABE4B8(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1AFE431C0;
      LOBYTE(v48) = 2;
      *(v35 + 32) = sub_1AFDFE708();
      *(v35 + 40) = v36;
      *(v29 + 24) = v35;
      v31 = v23;
    }

    else
    {
      sub_1AFABE4B8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      v50 = 1;
      sub_1AFABB864(&qword_1ED726C58, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
      sub_1AFDFE768();
      *(v29 + 24) = v48;
    }

    v50 = 3;
    sub_1AF47FEB4();
    sub_1AFDFE6E8();
    v37 = v46;
    (*(v31 + 8))(v20, v22);
    if ((v49 & 1) == 0)
    {
      v38 = v48;
      v39 = v45;
      sub_1AFAB7208(v29 + v45, sub_1AFAAEB58);
      *(v29 + v39) = v38;
      swift_storeEnumTagMultiPayload();
      v41((v29 + v39), 0, 1, v37);
    }

    sub_1AFABBD7C(v29, v42, type metadata accessor for EmitterScript);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
    v26 = type metadata accessor for EmitterScript;
    v27 = v29;
  }

  sub_1AFAB7208(v27, v26);
  return result;
}

void sub_1AFAA7DC4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ScriptIndex(0);
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v24 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AFAAEB58(0, v6);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFABCB54(0, &qword_1EB642620, sub_1AFABBB28, &type metadata for EmitterScript.CodingKeys, MEMORY[0x1E69E6F58]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  sub_1AF441150(a1, a1[3]);
  sub_1AFABBB28();
  sub_1AFDFF3F8();
  v16 = v2;
  LOBYTE(v29) = 0;
  v17 = v27;
  sub_1AFDFE8B8();
  if (v17)
  {
    goto LABEL_3;
  }

  v18 = v26;
  v29 = *(v16 + 24);
  v28 = 1;
  sub_1AFABE4B8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AFABB864(&qword_1EB639870, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1AFDFE918();
  LOBYTE(v29) = *v16;
  v28 = 4;
  sub_1AF7DB748();
  sub_1AFDFE918();
  v19 = v16 + *(type metadata accessor for EmitterScript(0) + 32);
  v20 = v10;
  sub_1AFABBD7C(v19, v10, sub_1AFAAEB58);
  if ((*(v18 + 48))(v10, 1, v25) != 1)
  {
    v21 = v10;
    v22 = v24;
    sub_1AFABBD7C(v21, v24, type metadata accessor for ScriptIndex);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1AFAB7208(v22, type metadata accessor for ScriptIndex);
      sub_1AFAB7208(v20, type metadata accessor for ScriptIndex);
    }

    else
    {
      v23 = *v22;
      sub_1AFAB7208(v20, type metadata accessor for ScriptIndex);
      v29 = v23;
      v28 = 3;
      sub_1AF480018();
      sub_1AFDFE918();
    }

LABEL_3:
    (*(v13 + 8))(v15, v12);
    return;
  }

  (*(v13 + 8))(v15, v12);
  sub_1AFAB7208(v10, sub_1AFAAEB58);
}

unint64_t sub_1AFAA827C(unint64_t result, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2);
  if (v4)
  {
    v6 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1AFC0D9F4(v3);
    }

    v7 = v3 + 32;
    do
    {
      v8 = sub_1AFAA0710(v6, a2, *v7);
      v9 = v7[8];
      v10 = *(v7 + 2);
      sub_1AF443F24(*v7);
      result = sub_1AF444AF4(v10);
      *v7 = v8;
      v7[8] = v9;
      *(v7 + 1) = xmmword_1AFE4C460;
      v7[32] = 1;
      v7 += 40;
      --v4;
    }

    while (v4);
    *v2 = v3;
  }

  return result;
}

uint64_t sub_1AFAA8354(__n128 a1)
{
  sub_1AFDFF308();
  sub_1AFDFD038();
  sub_1AFDFD038();

  v2 = v1[3];
  MEMORY[0x1B271ACB0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_1AFDFD038();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  MEMORY[0x1B271ACB0](qword_1AFE99228[*(v1 + 56)]);
  v5 = *v1;
  MEMORY[0x1B271ACB0](*(*v1 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *v7;
      v7 += 5;
      sub_1AFDFF308();
      sub_1AF443EE0(v8);
      sub_1AF444224(v9);
      v11 = sub_1AFAA02E0(v8, v10);
      MEMORY[0x1B271ACB0](v11);
      v12 = sub_1AFDFF2E8();
      MEMORY[0x1B271ACB0](v12);
      sub_1AF443F24(v8);
      sub_1AF444AF4(v9);
      --v6;
    }

    while (v6);
  }

  return sub_1AFDFF2E8();
}

char *sub_1AFAA854C(__n128 a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1AFC07A7C(0, v3, 0);
    v4 = v20;
    v5 = (v2 + 64);
    do
    {
      v6 = *(v5 - 4);
      v7 = *(v5 - 24);
      v8 = *(v5 - 2);
      v17 = *(v5 - 1);
      v9 = *v5;
      sub_1AF443EE0(v6);
      sub_1AF444224(v8);
      v11 = *(v20 + 16);
      v10 = *(v20 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1AFC07A7C(v10 > 1, v11 + 1, 1);
      }

      *(v20 + 16) = v11 + 1;
      v12 = v20 + 72 * v11;
      *(v12 + 32) = v6;
      *(v12 + 40) = v7;
      *(v12 + 41) = *v19;
      *(v12 + 44) = *&v19[3];
      *(v12 + 48) = v8;
      *(v12 + 56) = v17;
      *(v12 + 64) = v9;
      *(v12 + 68) = *&v18[3];
      *(v12 + 65) = *v18;
      *(v12 + 88) = 0u;
      *(v12 + 72) = 0u;
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
    v13 = *(v1 + 3);
    if (v13[2])
    {
      v15 = v13[4];
      v14 = v13[5];
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v4 = sub_1AFAF4338(v15, v14, *(v1 + 1), *(v1 + 2), v1[32], 1, 4u);
  }

  return v4;
}

void sub_1AFAA86E4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, __n128 a4@<Q0>)
{
  v7 = *v4;
  v8 = MEMORY[0x1E69E7CC0];
  if (a2 != 1)
  {
    if (*(v7 + 16))
    {
      v13 = v4[1];
      v14 = v4[2];
      v15 = *(v4 + 32);
    }

    else
    {
      if (*(v4[3] + 16))
      {
      }

      v18 = v4[1];
      v19 = v4[2];
      v20 = sub_1AFAA854C(a4);
      if (v5)
      {
        goto LABEL_19;
      }

      v15 = *(v4 + 32);
      v13 = sub_1AFAF500C(v18, v19, v20, *(v4 + 32));
      v14 = v21;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v16 = type metadata accessor for SwiftTrampolineCodeGen();
      }

      else
      {
        v16 = type metadata accessor for JavaScriptTrampolineCodeGen();
      }
    }

    else if (v15 >= 2)
    {
      v16 = type metadata accessor for MetalTrampolineCodeGen();
    }

    else
    {
      v16 = type metadata accessor for CTrampolineCodeGen();
    }

    v22 = v16;
    v23 = v4[3];
    if (v23[2])
    {
      v25 = v23[4];
      v24 = v23[5];

      v27 = sub_1AFAA854C(v26);
      if (v5)
      {
LABEL_18:

LABEL_19:

        return;
      }
    }

    else
    {
      v25 = 0;
      v24 = 0;
      v27 = sub_1AFAA854C(v17);
      if (v5)
      {
        goto LABEL_18;
      }
    }

    v41 = v25;
    v42 = a3;
    v28 = *(v27 + 2);
    if (v28)
    {
      v37 = v24;
      v38 = v13;
      v39 = v14;
      v43 = v7;
      v49 = v8;
      v40 = v27;
      sub_1AFC07A4C(0, v28, 0);
      v29 = v8;
      v30 = v40 + 64;
      do
      {
        v31 = *(v30 - 4);
        v33 = *(v30 - 2);
        v32 = *(v30 - 1);
        v46 = *v30;
        v47 = *(v30 - 24);
        sub_1AF443EE0(v31);
        sub_1AF444224(v33);
        v49 = v29;
        v35 = *(v29 + 16);
        v34 = *(v29 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_1AFC07A4C(v34 > 1, v35 + 1, 1);
          v29 = v49;
        }

        *(v29 + 16) = v35 + 1;
        v36 = v29 + 40 * v35;
        *(v36 + 32) = v31;
        *(v36 + 40) = v47;
        *(v36 + 48) = v33;
        *(v36 + 56) = v32;
        *(v36 + 64) = v46;
        v30 += 72;
        --v28;
      }

      while (v28);

      v7 = v43;
      v13 = v38;
      v14 = v39;
      v24 = v37;
    }

    else
    {

      v29 = MEMORY[0x1E69E7CC0];
    }

    (*(v22 + 128))(v48, v41, v24, v13, v14, 0, 0, v29, a1, a2);

    v12 = v48[3];
    v10 = v48[4];
    v9 = v48[1];
    v11 = v48[2];
    v8 = v48[0];
    a3 = v42;
    goto LABEL_29;
  }

  v9 = 0;
  v10 = 0xE200000000000000;
  v11 = 0xE000000000000000;
  v12 = 11565;
LABEL_29:

  *a3 = v8;
  a3[1] = v9;
  a3[2] = v11;
  a3[3] = v12;
  a3[4] = v10;
  a3[5] = v7;
  a3[6] = 0;
}

uint64_t sub_1AFAA89FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = &unk_1F24F39F8;
  *(a2 + 32) = 3;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v3 = *(a1 + 40);
  v4 = type metadata accessor for ScriptIndex(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

uint64_t sub_1AFAA8A98()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAA8B8C(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AFAA8C6C(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AFAA8D5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFAB6ED8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AFAA8D8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701080931;
  v5 = 0xEC000000656D614ELL;
  v6 = 0x6E6F6974636E7566;
  v7 = 0x80000001AFF22D30;
  v8 = 0xD000000000000011;
  if (v2 != 3)
  {
    v8 = 0x65676175676E616CLL;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E6F6974636E7566;
    v3 = 0xED000073656D614ELL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1AFAA8E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFAB6ED8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFAA8E64(uint64_t a1)
{
  v2 = sub_1AFABBB7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFAA8EA0(uint64_t a1)
{
  v2 = sub_1AFABBB7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFAA8EDC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_1AFABCB54(0, &qword_1EB642628, sub_1AFABBB7C, &type metadata for SimpleScript.CodingKeys, MEMORY[0x1E69E6F48]);
  v36 = v3;
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - v4;
  v6 = type metadata accessor for SimpleScript(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = MEMORY[0x1E69E7CC0];
  *(v8 + 1) = 0;
  *(v8 + 2) = 0xE000000000000000;
  *(v8 + 3) = &unk_1F24FFC10;
  v8[32] = 3;
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  v8[56] = 0;
  v10 = *(v9 + 48);
  v11 = type metadata accessor for ScriptIndex(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v33 = v10;
  v13(&v8[v10], 1, 1, v11);
  sub_1AF441150(a1, a1[3]);
  sub_1AFABBB7C();
  v35 = v5;
  v15 = v37;
  sub_1AFDFF3B8();
  if (!v15)
  {
    v30 = v14;
    v31 = v13;
    v37 = v11;
    v17 = v34;
    v16 = v35;
    LOBYTE(v38) = 0;
    v18 = v36;
    *(v8 + 1) = sub_1AFDFE708();
    *(v8 + 2) = v19;
    v40 = 4;
    sub_1AF7DB4F8();
    sub_1AFDFE6E8();
    v20 = v17;
    v21 = v38;
    if (v38 == 5)
    {
      v21 = 3;
    }

    v8[32] = v21;
    v22 = a1[3];
    v23 = a1[4];
    sub_1AF441150(a1, v22);
    if (sub_1AF69504C(1091, v22, v23))
    {
      sub_1AFABE4B8(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AFE431C0;
      LOBYTE(v38) = 2;
      *(v24 + 32) = sub_1AFDFE708();
      *(v24 + 40) = v25;
      *(v8 + 3) = v24;
      v20 = v17;
    }

    else
    {
      sub_1AFABE4B8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      v40 = 1;
      sub_1AFABB864(&qword_1ED726C58, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
      sub_1AFDFE768();
      *(v8 + 3) = v38;
    }

    v40 = 3;
    sub_1AF47FEB4();
    sub_1AFDFE6E8();
    v26 = v33;
    v27 = v37;
    (*(v20 + 8))(v16, v18);
    if ((v39 & 1) == 0)
    {
      v29 = v38;
      sub_1AFAB7208(&v8[v26], sub_1AFAAEB58);
      *&v8[v26] = v29;
      swift_storeEnumTagMultiPayload();
      v31(&v8[v26], 0, 1, v27);
    }

    sub_1AFABBD7C(v8, v32, type metadata accessor for SimpleScript);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  sub_1AFAB7208(v8, type metadata accessor for SimpleScript);
  return result;
}

void sub_1AFAA93EC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ScriptIndex(0);
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v24 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AFAAEB58(0, v6);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFABCB54(0, &qword_1EB642638, sub_1AFABBB7C, &type metadata for SimpleScript.CodingKeys, MEMORY[0x1E69E6F58]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  sub_1AF441150(a1, a1[3]);
  sub_1AFABBB7C();
  sub_1AFDFF3F8();
  v16 = v2;
  LOBYTE(v29) = 0;
  v17 = v27;
  sub_1AFDFE8B8();
  if (v17)
  {
    goto LABEL_3;
  }

  v18 = v26;
  v29 = *(v16 + 24);
  v28 = 1;
  sub_1AFABE4B8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AFABB864(&qword_1EB639870, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1AFDFE918();
  LOBYTE(v29) = *(v16 + 32);
  v28 = 4;
  sub_1AF7DB748();
  sub_1AFDFE918();
  v19 = v16 + *(type metadata accessor for SimpleScript(0) + 40);
  v20 = v10;
  sub_1AFABBD7C(v19, v10, sub_1AFAAEB58);
  if ((*(v18 + 48))(v10, 1, v25) != 1)
  {
    v21 = v10;
    v22 = v24;
    sub_1AFABBD7C(v21, v24, type metadata accessor for ScriptIndex);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1AFAB7208(v22, type metadata accessor for ScriptIndex);
      sub_1AFAB7208(v20, type metadata accessor for ScriptIndex);
    }

    else
    {
      v23 = *v22;
      sub_1AFAB7208(v20, type metadata accessor for ScriptIndex);
      v29 = v23;
      v28 = 3;
      sub_1AF480018();
      sub_1AFDFE918();
    }

LABEL_3:
    (*(v13 + 8))(v15, v12);
    return;
  }

  (*(v13 + 8))(v15, v12);
  sub_1AFAB7208(v10, sub_1AFAAEB58);
}

uint64_t sub_1AFAA98BC@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  if (a2 == 1)
  {
    v5 = 0;
    v6 = 0xE200000000000000;
    v7 = 0xE000000000000000;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = 11565;
  }

  else
  {
    v25 = result;
    v11 = type metadata accessor for MetalFunctionScript(0);
    v12 = *(v3 + *(v11 + 32));
    if (v12[2])
    {
      v13 = v12[4];
      v14 = v12[5];
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v15 = sub_1AFB08DA4(v13, v14, *v3, v3[1], 1, 1);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    sub_1AFABE4B8(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1AFE431C0;
    v23 = *(v11 + 36);
    *(v22 + 32) = v15;
    *(v22 + 40) = v17;
    v24 = *(v3 + v23);
    *(v22 + 48) = v24;
    v27[0] = v22;
    v27[1] = v19;
    v27[2] = v21;
    v27[3] = 11565;
    v27[4] = 0xE200000000000000;
    sub_1AFB0EF84(v27, v24, 0xD00000000000002FLL, 0x80000001AFF45B60, v25, a2, v26);

    v9 = v26[3];
    v6 = v26[4];
    v5 = v26[1];
    v7 = v26[2];
    v8 = v26[0];
  }

  *a3 = v8;
  a3[1] = v5;
  a3[2] = v7;
  a3[3] = v9;
  a3[4] = v6;
  return result;
}

uint64_t sub_1AFAA9A50(uint64_t a1, char a2)
{
  v5 = type metadata accessor for MetalFunctionScript(0);
  v6 = *(v2 + *(v5 + 32));
  if (v6[2])
  {
    v7 = v6[4];
    v8 = v6[5];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = sub_1AFB08DA4(v7, v8, 0, 0xE000000000000000, 1, 1);
  v11 = v10;

  if ((a2 & 1) != 0 || a1 > 3004)
  {
    v14 = *(v2 + *(v5 + 36));
    v15 = sub_1AFB12464(v9, v11, v14);
    v17 = v16;

    sub_1AFABE4B8(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
    result = swift_allocObject();
    *(result + 16) = xmmword_1AFE431C0;
    *(result + 32) = v15;
    v11 = v17;
  }

  else
  {
    sub_1AFABE4B8(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
    result = swift_allocObject();
    *(result + 16) = xmmword_1AFE431C0;
    v13 = *(v5 + 36);
    *(result + 32) = v9;
    v14 = *(v2 + v13);
  }

  *(result + 40) = v11;
  *(result + 48) = v14;
  return result;
}

uint64_t sub_1AFAA9BD4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 2;
  v4 = a1[6];
  v5 = type metadata accessor for ScriptIndex(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  *(a2 + a1[9]) = 0;
  *(a2 + v7) = &unk_1F24F3C90;
  *a2 = 0xD000000000000129;
  *(a2 + 8) = 0x80000001AFF455A0;
  return result;
}

uint64_t sub_1AFAA9C94()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAA9D90(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AFAA9E78(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AFAA9F70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFAB7008(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AFAA9FA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701080931;
  v5 = 0xED000073656D614ELL;
  v6 = 0xEC000000656D614ELL;
  if (v2 != 3)
  {
    v6 = 0xEC00000065707954;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001AFF22D30;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6E6F6974636E7566;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1AFAAA058()
{
  v1 = 1701080931;
  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6974636E7566;
  }
}

unint64_t sub_1AFAAA10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFAB7008(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFAAA134(uint64_t a1)
{
  v2 = sub_1AFABBBD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFAAA170(uint64_t a1)
{
  v2 = sub_1AFABBBD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFAAA1AC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  sub_1AFABCB54(0, &qword_1EB630AA8, sub_1AFABBBD0, &type metadata for MetalFunctionScript.CodingKeys, MEMORY[0x1E69E6F48]);
  v50 = *(v3 - 1);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v47 - v4;
  v6 = type metadata accessor for MetalFunctionScript(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v8 + 16) = 2;
  v10 = *(v9 + 24);
  v11 = type metadata accessor for ScriptIndex(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v53 = v10;
  v13(v8 + v10, 1, 1, v11);
  v15 = *(v6 + 28);
  v54 = v8;
  v16 = v8 + v15;
  *v16 = 0;
  *(v16 + 1) = 0;
  sub_1AF441150(a1, a1[3]);
  sub_1AFABBBD0();
  v17 = v52;
  sub_1AFDFF3B8();
  if (v17)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    v21 = sub_1AFAAEB58;
    v22 = v54 + v53;
  }

  else
  {
    v47[2] = v14;
    v48 = v13;
    v52 = v6;
    v19 = v50;
    v18 = v51;
    LOBYTE(v55) = 0;
    v20 = sub_1AFDFE708();
    v24 = v54;
    *v54 = v20;
    v24[1] = v25;
    v47[1] = v25;
    v26 = v5;
    LOBYTE(v55) = 4;
    v27 = sub_1AFDFE808();
    if (v27)
    {
      v57 = 4;
      sub_1AFA5A810();
      sub_1AFDFE768();
      v28 = v18;
      v29 = a1;
      v30 = v28;
      *(v54 + *(v52 + 36)) = v55;
    }

    else
    {
      v30 = v18;
      *(v24 + *(v52 + 36)) = 0;
      v29 = a1;
    }

    v31 = v19;
    v57 = 1;
    sub_1AF47FEB4();
    sub_1AFDFE6E8();
    v32 = v53;
    v33 = v48;
    v51 = v26;
    v34 = v30;
    if ((v56 & 1) == 0)
    {
      v36 = v54;
      v35 = v55;
      sub_1AFAB7208(v54 + v53, sub_1AFAAEB58);
      *(v36 + v32) = v35;
      swift_storeEnumTagMultiPayload();
      v33(v36 + v32, 0, 1, v11);
    }

    v37 = v52;
    v38 = v29[3];
    v39 = v29[4];
    sub_1AF441150(v29, v38);
    if (sub_1AF69504C(1091, v38, v39))
    {
      sub_1AFABE4B8(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1AFE431C0;
      LOBYTE(v55) = 3;
      v41 = v51;
      v42 = sub_1AFDFE708();
      v43 = v49;
      *(v40 + 32) = v42;
      *(v40 + 40) = v45;
      (*(v31 + 8))(v41, v34);
      v46 = v54;
      *(v54 + *(v37 + 32)) = v40;
    }

    else
    {
      sub_1AFABE4B8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      v57 = 2;
      sub_1AFABB864(&qword_1ED726C58, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
      v44 = v51;
      sub_1AFDFE768();
      (*(v31 + 8))(v44, v34);
      v46 = v54;
      *(v54 + *(v37 + 32)) = v55;
      v43 = v49;
    }

    sub_1AFABBD7C(v46, v43, type metadata accessor for MetalFunctionScript);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v29);
    v21 = type metadata accessor for MetalFunctionScript;
    v22 = v46;
  }

  sub_1AFAB7208(v22, v21);
  return result;
}

uint64_t sub_1AFAAA79C(void *a1)
{
  v2 = type metadata accessor for ScriptIndex(0);
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFAAEB58(0, v3);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFABCB54(0, &qword_1EB642640, sub_1AFABBBD0, &type metadata for MetalFunctionScript.CodingKeys, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  sub_1AF441150(a1, a1[3]);
  sub_1AFABBBD0();
  v14 = v24;
  sub_1AFDFF3F8();
  LOBYTE(v27) = 0;
  v15 = v25;
  sub_1AFDFE8B8();
  if (v15)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v17 = v5;
  v18 = v10;
  v25 = v11;
  v19 = type metadata accessor for MetalFunctionScript(0);
  sub_1AFABBD7C(v14 + v19[6], v8, sub_1AFAAEB58);
  if ((*(v22 + 48))(v8, 1, v23) == 1)
  {
    sub_1AFAB7208(v8, sub_1AFAAEB58);
    v20 = v18;
  }

  else
  {
    sub_1AFABBD7C(v8, v17, type metadata accessor for ScriptIndex);
    v20 = v18;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1AFAB7208(v17, type metadata accessor for ScriptIndex);
      sub_1AFAB7208(v8, type metadata accessor for ScriptIndex);
    }

    else
    {
      v21 = *v17;
      sub_1AFAB7208(v8, type metadata accessor for ScriptIndex);
      v27 = v21;
      v26 = 1;
      sub_1AF480018();
      sub_1AFDFE918();
    }
  }

  v27 = *(v14 + v19[8]);
  v26 = 2;
  sub_1AFABE4B8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AFABB864(&qword_1EB639870, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1AFDFE918();
  LOBYTE(v27) = *(v14 + v19[9]);
  v26 = 4;
  sub_1AFA5A8CC();
  sub_1AFDFE918();
  return (*(v25 + 8))(v13, v20);
}

uint64_t sub_1AFAAAC58(uint64_t (*a1)(void), __n128 a2)
{
  sub_1AFDFF308();
  sub_1AFDFD038();
  v4 = *(v2 + *(a1(0) + 32));
  MEMORY[0x1B271ACB0](*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {

      sub_1AFDFD038();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  sub_1AFDFD038();

  return sub_1AFDFF2E8();
}

uint64_t sub_1AFAAADB4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  v5 = v3;
  v6 = *(v3 + *(type metadata accessor for ShaderScript(0) + 32));
  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_17;
  }

  sub_1AF4486E4();
  v8 = v7 - 1;
  v9 = (v6 + 40);
  do
  {
    v10 = v8;
    v11 = *v9;
    v125 = *(v9 - 1);
    v126 = v11;
    v123 = 0x746E656D67617266;
    v124 = 0xE800000000000000;
    v12 = sub_1AFDFDF18();
    if (v12)
    {
      break;
    }

    v8 = v10 - 1;
    v9 += 2;
  }

  while (v10);
  v13 = v12;
  v14 = *(v6 + 16);
  if (!v14)
  {
LABEL_9:
    v17 = v4;
    if (v13)
    {
      v18 = *v5;
      v19 = v5[1];
      v125 = *v5;
      v126 = v19;

      v20 = MEMORY[0x1E69E7CC0];
      v21 = 1;
      goto LABEL_11;
    }

LABEL_17:
    sub_1AF81F330();
    swift_allocError();
    *v25 = 0xD00000000000002CLL;
    v25[1] = 0x80000001AFF459B0;
    return swift_willThrow();
  }

  v15 = (v6 + 40);
  while (1)
  {
    v16 = *v15;
    v125 = *(v15 - 1);
    v126 = v16;
    v123 = 0x786574726576;
    v124 = 0xE600000000000000;
    if (sub_1AFDFDF18())
    {
      break;
    }

    v15 += 2;
    if (!--v14)
    {
      goto LABEL_9;
    }
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_17;
  }

  v19 = v5[1];
  v125 = *v5;
  v18 = v125;
  v126 = v19;

  v24 = sub_1AFAF4338(0x6D5F786574726576, 0xEB000000006E6961, v125, v19, 2u, 1, 2u);
  v17 = v4;
  if (v4)
  {
  }

  v20 = v24;
  if (a2 == 1)
  {
    v21 = 0;
  }

  else
  {
    v18 = sub_1AFAF500C(v125, v19, v24, 2);
    v63 = v62;

    v125 = v18;
    v126 = v63;
    v64 = *(v20 + 2);
    if (v64)
    {
      v65 = 32;
      v66 = *(v20 + 2);
      do
      {
        v67 = *&v20[v65];
        if (((v67 >> 59) & 0x1E | (v67 >> 2) & 1) == 0xE)
        {
          v68 = v67 & 0xFFFFFFFFFFFFFFBLL;
          v69 = *((v67 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
          if (v69 <= 1)
          {
            v70 = *(v68 + 24);
            if (v69 && v70 == 1)
            {
              v72 = 0;
              goto LABEL_55;
            }
          }
        }

        v65 += 72;
        --v66;
      }

      while (v66);
      v72 = 1;
LABEL_55:
      v86 = 32;
      do
      {
        v87 = *&v20[v86];
        if (((v87 >> 59) & 0x1E | (v87 >> 2) & 1) == 0xE)
        {
          v88 = v87 & 0xFFFFFFFFFFFFFFBLL;
          v89 = *((v87 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
          if (v89 <= 1)
          {
            v90 = *(v88 + 24);
            if (v89 && v90 == 0)
            {
              v21 = 0;
              if (v72)
              {
                goto LABEL_68;
              }

              v19 = v63;
              goto LABEL_11;
            }
          }
        }

        v86 += 72;
        --v64;
      }

      while (v64);
      if (v72)
      {
        goto LABEL_67;
      }

      v21 = 0;
      v19 = v63;
    }

    else
    {
LABEL_67:
      v21 = 1;
LABEL_68:
      sub_1AFAE6F94(0x6D5F786574726576, 0xEB000000006E6961, v18, v63, 2u);
      v113 = v21;
      v96 = sub_1AFDFD1F8();
      if ((v96 ^ v97) >= 0x4000)
      {
        v99 = v97;
        v100 = 0;
        do
        {
          v101 = sub_1AFDFDE18();
          v103 = v102;
          v104 = sub_1AFDFDDC8();
          v105 = sub_1AF759524(v101, v103);

          v106 = (v105 - 8232) < 2 || v105 == 133;
          v107 = (v105 - 14) > 0xFFFFFFFB || v106;
          v100 += v107;
        }

        while ((v104 ^ v99) >= 0x4000);
        v98 = v100 + 1;
      }

      else
      {
        v98 = 1;
      }

      v123 = 0;
      v124 = 0xE000000000000000;
      sub_1AFDFE218();
      if (v113)
      {
        MEMORY[0x1B2718AE0](0x20726F727265230ALL, 0xE800000000000000);
        MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF45A00);
        MEMORY[0x1B2718AE0](58, 0xE100000000000000);
        v133 = v98;
        v108 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v108);

        v109 = "VFX_USER_CODE_LINE";
        v110 = 0xD000000000000080;
      }

      else
      {
        MEMORY[0x1B2718AE0](0x6E696E726177230ALL, 0xEA00000000002067);
        MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF45A00);
        MEMORY[0x1B2718AE0](58, 0xE100000000000000);
        v133 = v98;
        v111 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v111);

        v109 = "tion (legacy).\n\n";
        v110 = 0xD000000000000066;
      }

      MEMORY[0x1B2718AE0](v110, v109 | 0x8000000000000000);
      MEMORY[0x1B2718AB0](v123, v124);

      v21 = 0;
      v18 = v125;
      v19 = v126;
    }
  }

LABEL_11:
  v22 = sub_1AFAF4338(0x746E656D67617266, 0xED00006E69616D5FLL, v18, v19, 2u, 1, 1u);
  if (v17)
  {
  }

  else
  {
    v26 = v22;
    if (a2 == 1)
    {
      v112 = v21;
    }

    else
    {
      v27 = sub_1AFAF500C(v18, v19, v22, 2);
      v29 = v28;
      v112 = v21;

      v125 = v27;
      v126 = v29;
    }

    v30 = *(v20 + 2);
    v31 = MEMORY[0x1E69E7CC0];
    v114 = v26;
    if (v30)
    {
      v133 = MEMORY[0x1E69E7CC0];
      sub_1AFC07A4C(0, v30, 0);
      v32 = v133;
      v33 = v20 + 64;
      do
      {
        v34 = *(v33 - 4);
        v35 = *(v33 - 24);
        v36 = *(v33 - 2);
        v119 = *(v33 - 1);
        v37 = *v33;
        sub_1AF443EE0(v34);
        sub_1AF444224(v36);
        v133 = v32;
        v39 = *(v32 + 2);
        v38 = *(v32 + 3);
        if (v39 >= v38 >> 1)
        {
          sub_1AFC07A4C(v38 > 1, v39 + 1, 1);
          v32 = v133;
        }

        *(v32 + 2) = v39 + 1;
        v40 = &v32[40 * v39];
        *(v40 + 4) = v34;
        v40[40] = v35;
        *(v40 + 6) = v36;
        *(v40 + 7) = v119;
        v40[64] = v37;
        v33 += 72;
        --v30;
      }

      while (v30);

      v26 = v114;
      v31 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v32 = MEMORY[0x1E69E7CC0];
    }

    v123 = v32;
    v41 = *(v26 + 2);
    if (v41)
    {
      sub_1AFC07A4C(0, v41, 0);
      v42 = v31;
      v43 = v26 + 64;
      do
      {
        v44 = *(v43 - 4);
        v45 = *(v43 - 24);
        v46 = *(v43 - 2);
        v47 = *(v43 - 1);
        v120 = *v43;
        sub_1AF443EE0(v44);
        sub_1AF444224(v46);
        v49 = *(v42 + 16);
        v48 = *(v42 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1AFC07A4C(v48 > 1, v49 + 1, 1);
        }

        *(v42 + 16) = v49 + 1;
        v50 = v42 + 40 * v49;
        *(v50 + 32) = v44;
        *(v50 + 40) = v45;
        *(v50 + 48) = v46;
        *(v50 + 56) = v47;
        *(v50 + 64) = v120;
        v43 += 72;
        --v41;
      }

      while (v41);
    }

    else
    {

      v42 = MEMORY[0x1E69E7CC0];
    }

    v133 = v42;
    v51 = sub_1AFAB8D00(&v123);
    v52 = sub_1AFAB8D00(&v133);
    if (a2 == 1)
    {

      v53 = 0;
      v54 = 0xE200000000000000;
      v55 = 0xE000000000000000;
      v56 = MEMORY[0x1E69E7CC0];
      v57 = 11565;
    }

    else
    {
      v58 = v123;
      v59 = v133;
      v122 = v123;

      sub_1AF490C24(v60);
      v121 = sub_1AFAB9354(v122);

      sub_1AF490C24(v61);
      v73 = sub_1AFAB984C(v58);
      v74 = v52;

      v75 = sub_1AFA543B4(0xD00000000000001BLL, 0x80000001AFF459E0, v121);
      v77 = v76;
      swift_bridgeObjectRelease_n();
      MEMORY[0x1B2718AE0](v75, v77);

      v78 = sub_1AFA543CC(28521, 0xE200000000000000, v73);
      v80 = v79;
      swift_bridgeObjectRelease_n();
      MEMORY[0x1B2718AE0](v78, v80);

      v115 = v51;
      if (v112)
      {

        v81 = MEMORY[0x1E69E7CC0];
        v83 = v125;
        v82 = v126;
        v84 = a2;
        v85 = a1;
      }

      else
      {
        v84 = a2;
        v85 = a1;
        sub_1AFB0E3C8(0x6D5F786574726576, 0xEB000000006E6961, v125, v126, 0, v51, v58, 2u, v127, a1, a2);

        v83 = v127[1];
        v82 = v127[2];

        v126 = v82;
        v81 = v127[0];
      }

      v52 = v74;
      sub_1AFB0E3C8(0x746E656D67617266, 0xED00006E69616D5FLL, v83, v82, 0, v74, v59, 1u, v128, v85, v84);

      v92 = v84;
      v93 = v128[1];
      v94 = v128[2];
      v95 = v128[0];

      sub_1AF490F04(v95);
      v131 = v129;
      sub_1AF585778(&v131);

      v132[0] = v81;
      v132[1] = v93;
      v132[2] = v94;
      v132[3] = 11565;
      v132[4] = 0xE200000000000000;
      if (qword_1EB6372E0 != -1)
      {
        swift_once();
      }

      sub_1AFB0EF84(v132, 1u, qword_1EB6C35A8, unk_1EB6C35B0, v85, v92, v130);

      v57 = v130[3];
      v54 = v130[4];
      v53 = v130[1];
      v55 = v130[2];
      v56 = v130[0];
      v51 = v115;
    }

    *a3 = v56;
    a3[1] = v53;
    a3[2] = v55;
    a3[3] = v57;
    a3[4] = v54;
    a3[5] = v51;
    a3[6] = v52;
  }

  return result;
}

uint64_t sub_1AFAABA74()
{
  sub_1AF95BB0C(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v45 = &v40[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v40[-v4];
  sub_1AFAB71A4(0, &qword_1ED722BD0, MEMORY[0x1E69E9250], MEMORY[0x1E69E9288]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v40[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40[-v16];
  v18 = sub_1AFAE6CC8(*v0, v0[1]);
  v20 = v19;
  sub_1AFDFC4A8();
  v46 = v0;
  sub_1AFDFC478();
  v21 = *(v7 + 8);
  v21(v14, v6);
  v42 = v18;
  v43 = v20;
  sub_1AFDFC418();
  v21(v17, v6);
  sub_1AF95A804(0);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = v47;
  v41 = v24(v47, 1, v22);
  sub_1AFAB7208(v25, sub_1AF95BB0C);
  sub_1AFDFC4A8();
  v26 = v44;
  sub_1AFDFC478();
  v27 = v26;
  v21(v9, v6);
  v28 = v45;
  sub_1AFDFC418();

  v21(v27, v6);
  v29 = v24(v28, 1, v23);
  sub_1AFAB7208(v28, sub_1AF95BB0C);
  if (v41 == 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
    v31 = v46;
    if (v29 == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v30 = sub_1AF420554(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v33 = *(v30 + 2);
  v32 = *(v30 + 3);
  v31 = v46;
  if (v33 >= v32 >> 1)
  {
    v30 = sub_1AF420554(v32 > 1, v33 + 1, 1, v30);
  }

  *(v30 + 2) = v33 + 1;
  v34 = &v30[16 * v33];
  strcpy(v34 + 32, "fragment_main");
  *(v34 + 23) = -4864;
  if (v29 != 1)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1AF420554(0, *(v30 + 2) + 1, 1, v30);
    }

    v36 = *(v30 + 2);
    v35 = *(v30 + 3);
    if (v36 >= v35 >> 1)
    {
      v30 = sub_1AF420554(v35 > 1, v36 + 1, 1, v30);
    }

    *(v30 + 2) = v36 + 1;
    v37 = &v30[16 * v36];
    *(v37 + 4) = 0x6D5F786574726576;
    *(v37 + 5) = 0xEB000000006E6961;
  }

LABEL_12:
  v38 = *(type metadata accessor for ShaderScript(0) + 32);

  *(v31 + v38) = v30;
  return result;
}

uint64_t sub_1AFAABF7C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 2;
  v4 = a1[6];
  v5 = type metadata accessor for ScriptIndex(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  *(a2 + v7) = &unk_1F24F39B8;
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_1AFAAC020()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAAC0F4(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AFAAC1B4(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AFAAC284@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFAB6E8C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AFAAC2B4(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701080931;
  v4 = 0xED000073656D614ELL;
  if (*v1 != 2)
  {
    v4 = 0xEC000000656D614ELL;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001AFF22D30;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E6F6974636E7566;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_1AFAAC344()
{
  v1 = 1701080931;
  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6974636E7566;
  }
}

unint64_t sub_1AFAAC3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFAB6E8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFAAC3F8(uint64_t a1)
{
  v2 = sub_1AFABBC24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFAAC434(uint64_t a1)
{
  v2 = sub_1AFABBC24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFAAC470@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  sub_1AFABCB54(0, &qword_1ED721F38, sub_1AFABBC24, &type metadata for ShaderScript.CodingKeys, MEMORY[0x1E69E6F48]);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v42 - v4;
  v6 = type metadata accessor for ShaderScript(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v8 + 16) = 2;
  v10 = *(v9 + 24);
  v11 = type metadata accessor for ScriptIndex(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v50 = v10;
  v13(v8 + v10, 1, 1, v11);
  v15 = *(v6 + 28);
  v51 = v8;
  v16 = v8 + v15;
  *v16 = 0;
  *(v16 + 1) = 0;
  sub_1AF441150(a1, a1[3]);
  sub_1AFABBC24();
  v17 = v49;
  sub_1AFDFF3B8();
  if (v17)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    v23 = sub_1AFAAEB58;
    v24 = v51 + v50;
  }

  else
  {
    v45 = v14;
    v18 = v13;
    v49 = v6;
    v20 = v47;
    v19 = v48;
    LOBYTE(v52) = 0;
    v21 = v5;
    v22 = sub_1AFDFE708();
    v26 = v51;
    *v51 = v22;
    v26[1] = v27;
    v44 = v27;
    v54 = 1;
    sub_1AF47FEB4();
    sub_1AFDFE6E8();
    v43 = v21;
    if ((v53 & 1) == 0)
    {
      v28 = v51;
      v29 = v52;
      v30 = v50;
      sub_1AFAB7208(v51 + v50, sub_1AFAAEB58);
      *(v28 + v30) = v29;
      swift_storeEnumTagMultiPayload();
      v18(v28 + v30, 0, 1, v11);
    }

    v31 = a1[3];
    v32 = a1[4];
    sub_1AF441150(a1, v31);
    if (sub_1AF69504C(1091, v31, v32))
    {
      sub_1AFABE4B8(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1AFE431C0;
      LOBYTE(v52) = 3;
      v34 = v43;
      v35 = sub_1AFDFE708();
      v36 = v46;
      v37 = v49;
      *(v33 + 32) = v35;
      *(v33 + 40) = v40;
      (*(v20 + 8))(v34, v19);
      v41 = v51;
      *(v51 + *(v37 + 32)) = v33;
    }

    else
    {
      sub_1AFABE4B8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      v54 = 2;
      sub_1AFABB864(&qword_1ED726C58, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
      v38 = v43;
      sub_1AFDFE768();
      v36 = v46;
      v39 = v49;
      (*(v20 + 8))(v38, v19);
      v41 = v51;
      *(v51 + *(v39 + 32)) = v52;
    }

    sub_1AFABBD7C(v41, v36, type metadata accessor for ShaderScript);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    v23 = type metadata accessor for ShaderScript;
    v24 = v41;
  }

  sub_1AFAB7208(v24, v23);
  return result;
}

uint64_t sub_1AFAAC9C4(void *a1)
{
  v2 = type metadata accessor for ScriptIndex(0);
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AFAAEB58(0, v3);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFABCB54(0, &qword_1EB642648, sub_1AFABBC24, &type metadata for ShaderScript.CodingKeys, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  sub_1AF441150(a1, a1[3]);
  sub_1AFABBC24();
  v14 = v27;
  sub_1AFDFF3F8();
  LOBYTE(v30) = 0;
  v15 = v28;
  sub_1AFDFE8B8();
  if (v15)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v28 = v10;
  v24 = v11;
  v17 = type metadata accessor for ShaderScript(0);
  sub_1AFABBD7C(v14 + *(v17 + 24), v8, sub_1AFAAEB58);
  if ((*(v25 + 48))(v8, 1, v26) == 1)
  {
    v18 = sub_1AFAAEB58;
    v19 = v8;
  }

  else
  {
    sub_1AFABBD7C(v8, v5, type metadata accessor for ScriptIndex);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v22 = *v5;
      sub_1AFAB7208(v8, type metadata accessor for ScriptIndex);
      v30 = v22;
      v29 = 1;
      sub_1AF480018();
      sub_1AFDFE918();
      goto LABEL_8;
    }

    sub_1AFAB7208(v5, type metadata accessor for ScriptIndex);
    v19 = v8;
    v18 = type metadata accessor for ScriptIndex;
  }

  sub_1AFAB7208(v19, v18);
LABEL_8:
  v20 = v24;
  v30 = *(v14 + *(v17 + 32));
  v29 = 2;
  sub_1AFABE4B8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AFABB864(&qword_1EB639870, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  v21 = v28;
  sub_1AFDFE918();
  return (*(v20 + 8))(v13, v21);
}

unint64_t sub_1AFAACE38()
{
  if (qword_1EB6372E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB6C35A8;
  v0 = unk_1EB6C35B0;
  v3 = qword_1EB6C35A8;
  v4 = unk_1EB6C35B0;

  for (; (sub_1AFDFD188() & 1) != 0; v0 = v4)
  {
    sub_1AFDFD068();
    sub_1AFDFD0D8();

    v1 = v3;
  }

  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](v1, v0);

  MEMORY[0x1B2718AE0](168459530, 0xE400000000000000);
  return 0xD00000000000001ELL;
}

uint64_t sub_1AFAACFA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  v14 = a3;
  sub_1AF448018(v15, v16);
  sub_1AF480018();
  sub_1AFDFEC38();
  if (!v4)
  {
    v14 = a4;
    sub_1AF448018(v15, v16);
    sub_1AFDFEC38();
    v8 = *(a2 + 16);
    if (v8)
    {
      v9 = sub_1AFC8581C(*(a2 + 16), 0);
      sub_1AFC86C6C(&v14, v9 + 4, v8, a2);
      v10 = v14;

      sub_1AF0FBB14(v10);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v14 = v9;
    sub_1AF448018(v15, v16);
    sub_1AFABE4B8(0, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    sub_1AFABE7E0(&qword_1EB63C1C0, MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    sub_1AFDFEC38();

    if (*(a2 + 16))
    {
      v11 = sub_1AFC859F8(*(a2 + 16), 0);
      sub_1AFC892B4();
      v12 = v14;

      sub_1AF0FBB14(v12);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v14 = v11;
    sub_1AF448018(v15, v16);
    sub_1AFABE4B8(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    sub_1AFABE864();
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v15);
}

uint64_t sub_1AFAAD278@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AFAB7268(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1AFAAD2D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  swift_unknownObjectRetain();
  v7 = sub_1AFAB6CB4(v6, a1, a2);

  swift_unknownObjectRelease();
  *v3 = v7;
  ObjectType = swift_getObjectType();
  v9 = *(a2 + 8);
  v9(v3 + 1, 1, ObjectType, a2);
  return (v9)(v3 + 2, 1, ObjectType, a2);
}

__n128 sub_1AFAAD3A0@<Q0>(uint64_t a1@<X8>)
{
  *a1 = sub_1AF42C520(MEMORY[0x1E69E7CC0]);
  result.n128_u64[0] = 0xFFFFFFFFLL;
  result.n128_u64[1] = 0xFFFFFFFFLL;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AFAAD3D8(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  sub_1AFAAEB58(0, a3);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v43 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ScriptIndex(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF483618(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v49 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AFDFC318();
  v50 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v3;
  v17 = *(v16 + 2);
  if (v17)
  {
    v46 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v14;
    v48 = v10;
    v19 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1AFC0D9F4(v16);
    }

    v20 = v16 + 32;
    v51 = xmmword_1AFE4C460;
    do
    {
      v21 = sub_1AFAA0710(a1, a2, *v20);
      v22 = v20[8];
      v23 = *(v20 + 2);
      sub_1AF443F24(*v20);
      sub_1AF444AF4(v23);
      *v20 = v21;
      v20[8] = v22;
      *(v20 + 1) = v51;
      v20[32] = 1;
      v20 += 40;
      --v17;
    }

    while (v17);
    v4 = v19;
    *v19 = v16;
    v9 = v46;
    v14 = v47;
    v10 = v48;
  }

  ObjectType = swift_getObjectType();
  v25 = *(a2 + 32);
  if (v25(ObjectType, a2))
  {
    v26 = *(type metadata accessor for TriggerScript(0) + 44);
    if ((*(v10 + 48))(v4 + v26, 1, v9))
    {
      v27 = v49;
      (*(v50 + 56))(v49, 1, 1, v14);
LABEL_14:
      sub_1AFAB7208(v27, sub_1AF483618);
      goto LABEL_15;
    }

    *&v51 = v26;
    v28 = v4 + v26;
    v29 = v44;
    sub_1AFABBD7C(v28, v44, type metadata accessor for ScriptIndex);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v31 = v50;
    v46 = ObjectType;
    if (EnumCaseMultiPayload == 1)
    {
      v32 = v29;
      v27 = v49;
      (*(v50 + 32))(v49, v32, v14);
      v31 = v50;
      v33 = 0;
    }

    else
    {
      v33 = 1;
      v27 = v49;
    }

    v34 = v31;
    (*(v31 + 56))(v27, v33, 1, v14);
    if ((*(v34 + 48))(v27, 1, v14) == 1)
    {
      goto LABEL_14;
    }

    v48 = v10;
    v36 = v14;
    v37 = *(v50 + 32);
    v47 = v36;
    v37(v45, v27);
    v38 = v46;
    if (v25(v46, a2))
    {
      v39 = v43;
      v40 = v45;
      (*(a2 + 24))(v45, 0x6E49747069726353, 0xEB00000000786564, sub_1AF8208AC, 0, v38, a2);
      (*(v50 + 8))(v40, v47);
    }

    else
    {
      v39 = v43;
      (v37)(v43, v45, v47);
    }

    v41 = v51;
    swift_storeEnumTagMultiPayload();
    v42 = (*(v48 + 56))(v39, 0, 1, v9);
    sub_1AFABCBBC(v39, v4 + v41, v42);
  }

LABEL_15:
  type metadata accessor for TriggerScript(0);
  return sub_1AF9AC484(a1, a2);
}

void sub_1AFAAD900(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 == 1)
  {
    v6 = 0;
    v7 = *v4;
    v8 = 0xE200000000000000;
    v9 = 0xE000000000000000;
    v10 = MEMORY[0x1E69E7CC0];
    v11 = 11565;
  }

  else
  {
    v14 = *(v4 + 24);
    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v15 = type metadata accessor for SwiftTrampolineCodeGen();
      }

      else
      {
        v15 = type metadata accessor for JavaScriptTrampolineCodeGen();
      }
    }

    else if (v14 >= 2)
    {
      v15 = type metadata accessor for MetalTrampolineCodeGen();
    }

    else
    {
      v15 = type metadata accessor for CTrampolineCodeGen();
    }

    v16 = v15;
    v17 = v4[4];
    if (v17[2])
    {
      v19 = v17[4];
      v18 = v17[5];
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    v7 = *v4;
    (*(v16 + 128))(v20, v19, v18, v4[1], v4[2], 0, 0, *v4, a1, a2);

    v11 = v20[3];
    v8 = v20[4];
    v6 = v20[1];
    v9 = v20[2];
    v10 = v20[0];
  }

  *a3 = v10;
  a3[1] = v6;
  a3[2] = v9;
  a3[3] = v11;
  a3[4] = v8;
  a3[5] = v7;
  a3[6] = 0;
}

__CFString *sub_1AFAADA4C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 3;
  *a2 = v4;
  *(a2 + 32) = &unk_1F24F3A58;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v5 = a1[11];
  v6 = type metadata accessor for ScriptIndex(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[13];
  *(a2 + a1[12]) = @"VFXTriggerTypeTick";
  v8 = a2 + v7;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 6;

  return @"VFXTriggerTypeTick";
}

unint64_t sub_1AFAADB4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFAB6F70(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AFAADB7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701080931;
  v5 = 0xEB00000000657079;
  v6 = 0x5472656767697274;
  if (v2 != 6)
  {
    v6 = 0x656D686361747461;
    v5 = 0xEA0000000000746ELL;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6567617473;
  if (v2 != 4)
  {
    v8 = 0x5668706172477369;
    v7 = 0xE900000000000032;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x65676175676E616CLL;
  if (v2 != 2)
  {
    v10 = 0x6574656D61726170;
    v9 = 0xEA00000000007372;
  }

  if (*v1)
  {
    v4 = 0x6E6F6974636E7566;
    v3 = 0xED000073656D614ELL;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1AFAADC94()
{
  v1 = *v0;
  v2 = 1701080931;
  v3 = 0x5472656767697274;
  if (v1 != 6)
  {
    v3 = 0x656D686361747461;
  }

  v4 = 0x6567617473;
  if (v1 != 4)
  {
    v4 = 0x5668706172477369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x65676175676E616CLL;
  if (v1 != 2)
  {
    v5 = 0x6574656D61726170;
  }

  if (*v0)
  {
    v2 = 0x6E6F6974636E7566;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1AFAADDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFAB6F70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFAADDD0(uint64_t a1)
{
  v2 = sub_1AFABBC78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFAADE0C(uint64_t a1)
{
  v2 = sub_1AFABBC78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFAADE48@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_1AFABCB54(0, &qword_1EB642650, sub_1AFABBC78, &type metadata for TriggerScript.CodingKeys, MEMORY[0x1E69E6F48]);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  v6 = type metadata accessor for TriggerScript(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = MEMORY[0x1E69E7CC0];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0xE000000000000000;
  v9[24] = 3;
  *(v9 + 4) = &unk_1F24FFC40;
  *(v9 + 20) = 0;
  *(v9 + 6) = 0;
  *(v9 + 7) = 0;
  v10 = v7[13];
  v11 = type metadata accessor for ScriptIndex(0);
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  v12 = v7[14];
  *&v9[v12] = @"VFXTriggerTypeTick";
  v13 = &v9[v7[15]];
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 6;
  v14 = a1[3];
  v30 = a1;
  sub_1AF441150(a1, v14);
  sub_1AFABBC78();
  v15 = @"VFXTriggerTypeTick";
  v16 = v29;
  sub_1AFDFF3B8();
  if (!v16)
  {
    v17 = v15;
    v18 = v27;
    v19 = v28;
    LOBYTE(v33[0]) = 0;
    *(v9 + 1) = sub_1AFDFE708();
    *(v9 + 2) = v20;
    LOBYTE(v31[0]) = 2;
    sub_1AF7DB4F8();
    sub_1AFDFE768();
    v9[24] = v33[0];
    sub_1AFABE4B8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v29 = v5;
    LOBYTE(v31[0]) = 1;
    sub_1AFABB864(&qword_1ED726C58, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1AFDFE768();
    *(v9 + 4) = *&v33[0];
    sub_1AFABE4B8(0, &unk_1ED722010, &type metadata for ScriptParameter, MEMORY[0x1E69E62F8]);
    LOBYTE(v31[0]) = 3;
    sub_1AFABB774();
    sub_1AFDFE768();
    *v9 = *&v33[0];
    LOBYTE(v33[0]) = 5;
    v9[41] = sub_1AFDFE6A8() & 1;
    LOBYTE(v33[0]) = 6;
    sub_1AFDFE698();
    if (!v21)
    {
      sub_1AFDFCEF8();
    }

    v22 = sub_1AFDFCEC8();

    *&v9[v12] = v22;
    v35 = 7;
    sub_1AFABBCCC();
    v23 = v29;
    sub_1AFDFE6E8();
    (*(v18 + 8))(v23, v19);
    if (v32 == 255)
    {
      memset(v33, 0, sizeof(v33));
      v34 = 6;
    }

    else
    {
      sub_1AF447144(v31, v33);
    }

    v25 = v26;
    sub_1AFABBD20(v33, v13);
    sub_1AFABBD7C(v9, v25, type metadata accessor for TriggerScript);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v30);
  sub_1AFAB7208(v9, type metadata accessor for TriggerScript);
  return result;
}

uint64_t sub_1AFAAE368(void *a1)
{
  v3 = v1;
  sub_1AFABCB54(0, &qword_1EB642668, sub_1AFABBC78, &type metadata for TriggerScript.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFABBC78();
  sub_1AFDFF3F8();
  LOBYTE(v13) = 0;
  sub_1AFDFE8B8();
  if (!v2)
  {
    v13 = v3[4];
    v12 = 1;
    sub_1AFABE4B8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AFABB864(&qword_1EB639870, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1AFDFE918();
    LOBYTE(v13) = *(v3 + 24);
    v12 = 2;
    sub_1AF7DB748();
    sub_1AFDFE918();
    v13 = *v3;
    v12 = 3;
    sub_1AFABE4B8(0, &unk_1ED722010, &type metadata for ScriptParameter, MEMORY[0x1E69E62F8]);
    sub_1AFABB8E8();
    sub_1AFDFE918();
    LOBYTE(v13) = 5;
    sub_1AFDFE8C8();
    type metadata accessor for TriggerScript(0);
    sub_1AFDFCEF8();
    LOBYTE(v13) = 6;
    sub_1AFDFE8B8();

    LOBYTE(v13) = 7;
    sub_1AFABBDE4();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t *assignWithCopy for BasicScriptRuntime(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t sub_1AFAAE85C(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = v5 + ((v4 + 16) & ~v4);
  }

  else
  {
    v9 = a2 + 6;
    v8 = a2[6];
    v10 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v10;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = a2[4];
    *(a1 + 40) = *(a2 + 20);

    if (v8)
    {
      v11 = a2[7];
      *(a1 + 48) = v8;
      *(a1 + 56) = v11;
    }

    else
    {
      *(a1 + 48) = *v9;
    }

    v12 = a3[11];
    v13 = type metadata accessor for ScriptIndex(0);
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2 + v12, 1, v13))
    {
      sub_1AFAAEB58(0, v15);
      memcpy((a1 + v12), a2 + v12, *(*(v16 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v17 = sub_1AFDFC318();
        (*(*(v17 - 8) + 16))(a1 + v12, a2 + v12, v17);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy((a1 + v12), a2 + v12, *(v14 + 64));
      }

      (*(v14 + 56))(a1 + v12, 0, 1, v13);
    }

    v18 = a3[12];
    v19 = a3[13];
    v20 = *(a2 + v18);
    *(a1 + v18) = v20;
    v21 = a1 + v19;
    v22 = a2 + v19;
    v23 = v22[32];
    v24 = v20;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v31 = *v22;
        v32 = *(v22 + 1);
        *v21 = v31;
        *(v21 + 8) = v32;
        *(v21 + 32) = 2;
        v33 = v31;
        v34 = v32;
      }

      else
      {
        if (v23 == 3)
        {
          if (*v22 || *(v22 + 1) != 1)
          {
            swift_unknownObjectWeakCopyInit();
            v35 = *(v22 + 2);
            *(v21 + 8) = *(v22 + 1);
            *(v21 + 16) = v35;
            *(v21 + 24) = *(v22 + 3);
          }

          else
          {
            v26 = *(v22 + 1);
            *v21 = *v22;
            *(v21 + 16) = v26;
          }

          v28 = 3;
        }

        else
        {
          v27 = *(v22 + 1);
          *v21 = *v22;
          *(v21 + 16) = v27;
          v28 = v22[32];
        }

        *(v21 + 32) = v28;
      }
    }

    else if (v23)
    {
      v25 = *(v22 + 1);
      *v21 = *v22;
      *(v21 + 8) = v25;
      *(v21 + 32) = 1;
    }

    else
    {
      v29 = *v22;
      *v21 = *v22;
      *(v21 + 32) = 0;
      v30 = v29;
    }
  }

  return a1;
}

void sub_1AFAAEB8C(char *a1, int *a2)
{

  if (*(a1 + 6))
  {
  }

  v4 = a2[11];
  v5 = type metadata accessor for ScriptIndex(0);
  if (!(*(*(v5 - 8) + 48))(&a1[v4], 1, v5) && swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1AFDFC318();
    (*(*(v6 - 8) + 8))(&a1[v4], v6);
  }

  v7 = &a1[a2[13]];
  v8 = v7[32];
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 != 3 || !*v7 && *(v7 + 1) == 1)
      {
        return;
      }

      MEMORY[0x1B271E060](v7);
      goto LABEL_21;
    }

    v9 = *(v7 + 1);
  }

  else
  {
    if (v7[32])
    {
      if (v8 != 1)
      {
        return;
      }

LABEL_21:

      return;
    }

    v9 = *v7;
  }
}

uint64_t sub_1AFAAED2C(uint64_t a1, uint64_t *a2, int *a3)
{
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = *(a2 + 20);
  v8 = a2 + 6;
  v7 = a2[6];

  if (v7)
  {
    v9 = a2[7];
    *(a1 + 48) = v7;
    *(a1 + 56) = v9;
  }

  else
  {
    *(a1 + 48) = *v8;
  }

  v10 = a3[11];
  v11 = type metadata accessor for ScriptIndex(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2 + v10, 1, v11))
  {
    sub_1AFAAEB58(0, v13);
    memcpy((a1 + v10), a2 + v10, *(*(v14 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = sub_1AFDFC318();
      (*(*(v15 - 8) + 16))(a1 + v10, a2 + v10, v15);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v10), a2 + v10, *(v12 + 64));
    }

    (*(v12 + 56))(a1 + v10, 0, 1, v11);
  }

  v16 = a3[12];
  v17 = a3[13];
  v18 = *(a2 + v16);
  *(a1 + v16) = v18;
  v19 = a1 + v17;
  v20 = a2 + v17;
  v21 = v20[32];
  v22 = v18;
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v29 = *v20;
      v30 = *(v20 + 1);
      *v19 = v29;
      *(v19 + 8) = v30;
      *(v19 + 32) = 2;
      v31 = v29;
      v32 = v30;
    }

    else
    {
      if (v21 == 3)
      {
        if (*v20 || *(v20 + 1) != 1)
        {
          swift_unknownObjectWeakCopyInit();
          v33 = *(v20 + 2);
          *(v19 + 8) = *(v20 + 1);
          *(v19 + 16) = v33;
          *(v19 + 24) = *(v20 + 3);
        }

        else
        {
          v24 = *(v20 + 1);
          *v19 = *v20;
          *(v19 + 16) = v24;
        }

        v26 = 3;
      }

      else
      {
        v25 = *(v20 + 1);
        *v19 = *v20;
        *(v19 + 16) = v25;
        v26 = v20[32];
      }

      *(v19 + 32) = v26;
    }
  }

  else if (v21)
  {
    v23 = *(v20 + 1);
    *v19 = *v20;
    *(v19 + 8) = v23;
    *(v19 + 32) = 1;
  }

  else
  {
    v27 = *v20;
    *v19 = *v20;
    *(v19 + 32) = 0;
    v28 = v27;
  }

  return a1;
}

uint64_t *sub_1AFAAEFE4(uint64_t *a1, uint64_t *a2, int *a3)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  *(a1 + 24) = *(a2 + 24);
  a1[4] = a2[4];

  v6 = a1[6];
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v7 = a2[6];
  if (v6)
  {
    if (v7)
    {
      v8 = a2[7];
      a1[6] = v7;
      a1[7] = v8;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v9 = a2[7];
    a1[6] = v7;
    a1[7] = v9;

    goto LABEL_8;
  }

  *(a1 + 3) = *(a2 + 3);
LABEL_8:
  v10 = a3[11];
  v11 = type metadata accessor for ScriptIndex(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(a1 + v10, 1, v11);
  v15 = v13(a2 + v10, 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      if (a1 == a2)
      {
        goto LABEL_21;
      }

      sub_1AFAB7208(a1 + v10, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = sub_1AFDFC318();
        (*(*(v20 - 8) + 16))(a1 + v10, a2 + v10, v20);
        swift_storeEnumTagMultiPayload();
        goto LABEL_21;
      }

      v19 = *(v12 + 64);
LABEL_15:
      memcpy(a1 + v10, a2 + v10, v19);
      goto LABEL_21;
    }

    sub_1AFAB7208(a1 + v10, type metadata accessor for ScriptIndex);
LABEL_14:
    sub_1AFAAEB58(0, v16);
    v19 = *(*(v18 - 8) + 64);
    goto LABEL_15;
  }

  if (v15)
  {
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1AFDFC318();
    (*(*(v17 - 8) + 16))(a1 + v10, a2 + v10, v17);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1 + v10, a2 + v10, *(v12 + 64));
  }

  (*(v12 + 56))(a1 + v10, 0, 1, v11);
LABEL_21:
  v21 = a3[12];
  v22 = *(a2 + v21);
  v23 = *(a1 + v21);
  *(a1 + v21) = v22;
  v24 = v22;

  if (a1 != a2)
  {
    v25 = a3[13];
    v26 = a1 + v25;
    v27 = a2 + v25;
    sub_1AF4470F0(a1 + v25);
    v28 = v27[32];
    if (v28 <= 1)
    {
      if (!v27[32])
      {
        v32 = *v27;
        *v26 = *v27;
        v26[32] = 0;
        v33 = v32;
        return a1;
      }

      if (v28 == 1)
      {
        *v26 = *v27;
        *(v26 + 1) = *(v27 + 1);
        v26[32] = 1;

        return a1;
      }

LABEL_31:
      v30 = *v27;
      v31 = *(v27 + 1);
      v26[32] = v27[32];
      *v26 = v30;
      *(v26 + 1) = v31;
      return a1;
    }

    if (v28 == 2)
    {
      v34 = *v27;
      *v26 = *v27;
      v35 = *(v27 + 1);
      *(v26 + 1) = v35;
      v26[32] = 2;
      v36 = v34;
      v37 = v35;
      return a1;
    }

    if (v28 != 3)
    {
      goto LABEL_31;
    }

    if (*v27 || *(v27 + 1) != 1)
    {
      swift_unknownObjectWeakCopyInit();
      *(v26 + 1) = *(v27 + 1);
      *(v26 + 2) = *(v27 + 2);
      *(v26 + 3) = *(v27 + 3);
    }

    else
    {
      v29 = *(v27 + 1);
      *v26 = *v27;
      *(v26 + 1) = v29;
    }

    v26[32] = 3;
  }

  return a1;
}

uint64_t sub_1AFAAF40C(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v6 = a3[11];
  v7 = type metadata accessor for ScriptIndex(0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    sub_1AFAAEB58(0, v9);
    memcpy((a1 + v6), (a2 + v6), *(*(v10 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = sub_1AFDFC318();
      (*(*(v11 - 8) + 32))(a1 + v6, a2 + v6, v11);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v6), (a2 + v6), *(v8 + 64));
    }

    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v12 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  v13 = a1 + v12;
  v14 = a2 + v12;
  if (*(v14 + 32) == 3)
  {
    if (*v14 || *(v14 + 8) != 1)
    {
      v13 = swift_unknownObjectWeakTakeInit();
      *(v13 + 8) = *(v14 + 8);
      *(v13 + 16) = *(v14 + 16);
    }

    else
    {
      v15 = *(v14 + 16);
      *v13 = *v14;
      *(v13 + 16) = v15;
    }

    v17 = 3;
  }

  else
  {
    v16 = *(v14 + 16);
    *v13 = *v14;
    *(v13 + 16) = v16;
    v17 = *(v14 + 32);
  }

  *(v13 + 32) = v17;
  return a1;
}

uint64_t *sub_1AFAAF604(uint64_t *a1, uint64_t *a2, int *a3)
{
  *a1 = *a2;

  v6 = a2[2];
  a1[1] = a2[1];
  a1[2] = v6;

  *(a1 + 24) = *(a2 + 24);
  a1[4] = a2[4];

  v7 = a2[6];
  v8 = a1[6];
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  if (v8)
  {
    if (v7)
    {
      v9 = a2[7];
      a1[6] = v7;
      a1[7] = v9;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v10 = a2[7];
    a1[6] = v7;
    a1[7] = v10;
    goto LABEL_8;
  }

  *(a1 + 3) = *(a2 + 3);
LABEL_8:
  v11 = a3[11];
  v12 = type metadata accessor for ScriptIndex(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(a1 + v11, 1, v12);
  v16 = v14(a2 + v11, 1, v12);
  if (!v15)
  {
    if (!v16)
    {
      if (a1 == a2)
      {
        goto LABEL_21;
      }

      sub_1AFAB7208(a1 + v11, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = sub_1AFDFC318();
        (*(*(v21 - 8) + 32))(a1 + v11, a2 + v11, v21);
        swift_storeEnumTagMultiPayload();
        goto LABEL_21;
      }

      v20 = *(v13 + 64);
LABEL_15:
      memcpy(a1 + v11, a2 + v11, v20);
      goto LABEL_21;
    }

    sub_1AFAB7208(a1 + v11, type metadata accessor for ScriptIndex);
LABEL_14:
    sub_1AFAAEB58(0, v17);
    v20 = *(*(v19 - 8) + 64);
    goto LABEL_15;
  }

  if (v16)
  {
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1AFDFC318();
    (*(*(v18 - 8) + 32))(a1 + v11, a2 + v11, v18);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1 + v11, a2 + v11, *(v13 + 64));
  }

  (*(v13 + 56))(a1 + v11, 0, 1, v12);
LABEL_21:
  v22 = a3[12];
  v23 = *(a1 + v22);
  *(a1 + v22) = *(a2 + v22);

  if (a1 != a2)
  {
    v24 = a3[13];
    v25 = a1 + v24;
    v26 = a2 + v24;
    sub_1AF4470F0(a1 + v24);
    if (v26[32] == 3)
    {
      if (*v26 || *(v26 + 1) != 1)
      {
        swift_unknownObjectWeakTakeInit();
        *(v25 + 1) = *(v26 + 1);
        *(v25 + 1) = *(v26 + 1);
      }

      else
      {
        v27 = *(v26 + 1);
        *v25 = *v26;
        *(v25 + 1) = v27;
      }

      v29 = 3;
    }

    else
    {
      v28 = *(v26 + 1);
      *v25 = *v26;
      *(v25 + 1) = v28;
      v29 = v26[32];
    }

    v25[32] = v29;
  }

  return a1;
}

void sub_1AFAAF9C0(uint64_t a1, double a2)
{
  sub_1AFAAEB58(319, a2);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_1AFAAFAA4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = v11 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = a2[2];
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = a2[4];
    *(a1 + 40) = *(a2 + 40);
    v9 = a2 + 6;
    v8 = a2[6];

    if (v8)
    {
      v10 = a2[7];
      *(a1 + 48) = v8;
      *(a1 + 56) = v10;
    }

    else
    {
      *(a1 + 48) = *v9;
    }

    v12 = *(a3 + 40);
    v13 = type metadata accessor for ScriptIndex(0);
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2 + v12, 1, v13))
    {
      sub_1AFAAEB58(0, v15);
      memcpy((a1 + v12), a2 + v12, *(*(v16 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v17 = sub_1AFDFC318();
        (*(*(v17 - 8) + 16))(a1 + v12, a2 + v12, v17);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy((a1 + v12), a2 + v12, *(v14 + 64));
      }

      (*(v14 + 56))(a1 + v12, 0, 1, v13);
    }
  }

  return a1;
}

uint64_t sub_1AFAAFCC8(char *a1, uint64_t a2)
{

  if (*(a1 + 6))
  {
  }

  v4 = *(a2 + 40);
  v5 = type metadata accessor for ScriptIndex(0);
  result = (*(*(v5 - 8) + 48))(&a1[v4], 1, v5);
  if (!result)
  {
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      v7 = sub_1AFDFC318();
      v8 = *(*(v7 - 8) + 8);

      return v8(&a1[v4], v7);
    }
  }

  return result;
}

uint64_t sub_1AFAAFDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v8 = (a2 + 48);
  v7 = *(a2 + 48);

  if (v7)
  {
    v9 = *(a2 + 56);
    *(a1 + 48) = v7;
    *(a1 + 56) = v9;
  }

  else
  {
    *(a1 + 48) = *v8;
  }

  v10 = *(a3 + 40);
  v11 = type metadata accessor for ScriptIndex(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2 + v10, 1, v11))
  {
    sub_1AFAAEB58(0, v13);
    memcpy((a1 + v10), (a2 + v10), *(*(v14 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = sub_1AFDFC318();
      (*(*(v15 - 8) + 16))(a1 + v10, a2 + v10, v15);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v10), (a2 + v10), *(v12 + 64));
    }

    (*(v12 + 56))(a1 + v10, 0, 1, v11);
  }

  return a1;
}

uint64_t sub_1AFAAFFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  v6 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 48);
  if (v6)
  {
    if (v7)
    {
      v8 = *(a2 + 56);
      *(a1 + 48) = v7;
      *(a1 + 56) = v8;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v9 = *(a2 + 56);
    *(a1 + 48) = v7;
    *(a1 + 56) = v9;

    goto LABEL_8;
  }

  *(a1 + 48) = *(a2 + 48);
LABEL_8:
  v10 = *(a3 + 40);
  v11 = type metadata accessor for ScriptIndex(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(a1 + v10, 1, v11);
  v15 = v13(a2 + v10, 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      if (a1 == a2)
      {
        return a1;
      }

      sub_1AFAB7208(a1 + v10, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = sub_1AFDFC318();
        (*(*(v20 - 8) + 16))(a1 + v10, a2 + v10, v20);
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v19 = *(v12 + 64);
      goto LABEL_15;
    }

    sub_1AFAB7208(a1 + v10, type metadata accessor for ScriptIndex);
LABEL_14:
    sub_1AFAAEB58(0, v16);
    v19 = *(*(v18 - 8) + 64);
LABEL_15:
    memcpy((a1 + v10), (a2 + v10), v19);
    return a1;
  }

  if (v15)
  {
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1AFDFC318();
    (*(*(v17 - 8) + 16))(a1 + v10, a2 + v10, v17);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v10), (a2 + v10), *(v12 + 64));
  }

  (*(v12 + 56))(a1 + v10, 0, 1, v11);
  return a1;
}

uint64_t sub_1AFAB02A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a3 + 40);
  v6 = type metadata accessor for ScriptIndex(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2 + v5, 1, v6))
  {
    sub_1AFAAEB58(0, v8);
    memcpy((a1 + v5), (a2 + v5), *(*(v9 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = sub_1AFDFC318();
      (*(*(v10 - 8) + 32))(a1 + v5, a2 + v5, v10);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v5), (a2 + v5), *(v7 + 64));
    }

    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}

uint64_t sub_1AFAB0428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  v7 = *(a2 + 48);
  v8 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  if (v8)
  {
    if (v7)
    {
      v9 = *(a2 + 56);
      *(a1 + 48) = v7;
      *(a1 + 56) = v9;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v10 = *(a2 + 56);
    *(a1 + 48) = v7;
    *(a1 + 56) = v10;
    goto LABEL_8;
  }

  *(a1 + 48) = *(a2 + 48);
LABEL_8:
  v11 = *(a3 + 40);
  v12 = type metadata accessor for ScriptIndex(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(a1 + v11, 1, v12);
  v16 = v14(a2 + v11, 1, v12);
  if (!v15)
  {
    if (!v16)
    {
      if (a1 == a2)
      {
        return a1;
      }

      sub_1AFAB7208(a1 + v11, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = sub_1AFDFC318();
        (*(*(v21 - 8) + 32))(a1 + v11, a2 + v11, v21);
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v20 = *(v13 + 64);
      goto LABEL_15;
    }

    sub_1AFAB7208(a1 + v11, type metadata accessor for ScriptIndex);
LABEL_14:
    sub_1AFAAEB58(0, v17);
    v20 = *(*(v19 - 8) + 64);
LABEL_15:
    memcpy((a1 + v11), (a2 + v11), v20);
    return a1;
  }

  if (v16)
  {
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1AFDFC318();
    (*(*(v18 - 8) + 32))(a1 + v11, a2 + v11, v18);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v11), (a2 + v11), *(v13 + 64));
  }

  (*(v13 + 56))(a1 + v11, 0, 1, v12);
  return a1;
}

_BYTE *sub_1AFAB0764(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *v4 = *a2;
    v4 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v7 = a2[2];
    *(v4 + 1) = a2[1];
    *(v4 + 2) = v7;
    v8 = a2[4];
    *(v4 + 3) = a2[3];
    *(v4 + 4) = v8;
    v4[40] = *(a2 + 40);
    v10 = a2 + 6;
    v9 = a2[6];

    if (v9)
    {
      v11 = a2[7];
      *(v4 + 6) = v9;
      *(v4 + 7) = v11;
    }

    else
    {
      *(v4 + 3) = *v10;
    }

    v13 = *(a3 + 40);
    v14 = type metadata accessor for ScriptIndex(0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(a2 + v13, 1, v14))
    {
      sub_1AFAAEB58(0, v16);
      memcpy(&v4[v13], a2 + v13, *(*(v17 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v18 = sub_1AFDFC318();
        (*(*(v18 - 8) + 16))(&v4[v13], a2 + v13, v18);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(&v4[v13], a2 + v13, *(v15 + 64));
      }

      (*(v15 + 56))(&v4[v13], 0, 1, v14);
    }
  }

  return v4;
}

uint64_t sub_1AFAB0980(char *a1, uint64_t a2)
{

  if (*(a1 + 6))
  {
  }

  v4 = *(a2 + 40);
  v5 = type metadata accessor for ScriptIndex(0);
  result = (*(*(v5 - 8) + 48))(&a1[v4], 1, v5);
  if (!result)
  {
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      v7 = sub_1AFDFC318();
      v8 = *(*(v7 - 8) + 8);

      return v8(&a1[v4], v7);
    }
  }

  return result;
}

uint64_t sub_1AFAB0A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;
  v7 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;
  *(a1 + 40) = *(a2 + 40);
  v9 = (a2 + 48);
  v8 = *(a2 + 48);

  if (v8)
  {
    v10 = *(a2 + 56);
    *(a1 + 48) = v8;
    *(a1 + 56) = v10;
  }

  else
  {
    *(a1 + 48) = *v9;
  }

  v11 = *(a3 + 40);
  v12 = type metadata accessor for ScriptIndex(0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(a2 + v11, 1, v12))
  {
    sub_1AFAAEB58(0, v14);
    memcpy((a1 + v11), (a2 + v11), *(*(v15 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = sub_1AFDFC318();
      (*(*(v16 - 8) + 16))(a1 + v11, a2 + v11, v16);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v11), (a2 + v11), *(v13 + 64));
    }

    (*(v13 + 56))(a1 + v11, 0, 1, v12);
  }

  return a1;
}

uint64_t sub_1AFAB0C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  v6 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 48);
  if (v6)
  {
    if (v7)
    {
      v8 = *(a2 + 56);
      *(a1 + 48) = v7;
      *(a1 + 56) = v8;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v9 = *(a2 + 56);
    *(a1 + 48) = v7;
    *(a1 + 56) = v9;

    goto LABEL_8;
  }

  *(a1 + 48) = *(a2 + 48);
LABEL_8:
  v10 = *(a3 + 40);
  v11 = type metadata accessor for ScriptIndex(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(a1 + v10, 1, v11);
  v15 = v13(a2 + v10, 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      if (a1 == a2)
      {
        return a1;
      }

      sub_1AFAB7208(a1 + v10, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = sub_1AFDFC318();
        (*(*(v20 - 8) + 16))(a1 + v10, a2 + v10, v20);
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v19 = *(v12 + 64);
      goto LABEL_15;
    }

    sub_1AFAB7208(a1 + v10, type metadata accessor for ScriptIndex);
LABEL_14:
    sub_1AFAAEB58(0, v16);
    v19 = *(*(v18 - 8) + 64);
LABEL_15:
    memcpy((a1 + v10), (a2 + v10), v19);
    return a1;
  }

  if (v15)
  {
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1AFDFC318();
    (*(*(v17 - 8) + 16))(a1 + v10, a2 + v10, v17);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v10), (a2 + v10), *(v12 + 64));
  }

  (*(v12 + 56))(a1 + v10, 0, 1, v11);
  return a1;
}

uint64_t sub_1AFAB0F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a3 + 40);
  v6 = type metadata accessor for ScriptIndex(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2 + v5, 1, v6))
  {
    sub_1AFAAEB58(0, v8);
    memcpy((a1 + v5), (a2 + v5), *(*(v9 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = sub_1AFDFC318();
      (*(*(v10 - 8) + 32))(a1 + v5, a2 + v5, v10);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v5), (a2 + v5), *(v7 + 64));
    }

    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}