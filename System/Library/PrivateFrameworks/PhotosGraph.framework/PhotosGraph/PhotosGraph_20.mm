uint64_t sub_22F27D3B4(uint64_t a1, unint64_t a2, int a3)
{
  v459 = a3;
  v5 = sub_22F73F690();
  isUniquelyReferenced_nonNull_native = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v492 = (&v450 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v471 = &v450 - v9;
  MEMORY[0x28223BE20](v10);
  v470 = &v450 - v11;
  MEMORY[0x28223BE20](v12);
  v483 = &v450 - v13;
  MEMORY[0x28223BE20](v14);
  v482 = &v450 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v450 - v17;
  MEMORY[0x28223BE20](v19);
  v462 = &v450 - v20;
  MEMORY[0x28223BE20](v21);
  v467 = &v450 - v22;
  MEMORY[0x28223BE20](v23);
  v466 = &v450 - v24;
  MEMORY[0x28223BE20](v25);
  v501 = (&v450 - v26);
  MEMORY[0x28223BE20](v27);
  v503 = &v450 - v28;
  v498 = sub_22F73F090();
  v476 = *(v498 - 8);
  MEMORY[0x28223BE20](v498);
  v461 = &v450 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v478 = &v450 - v31;
  MEMORY[0x28223BE20](v32);
  v477 = (&v450 - v33);
  MEMORY[0x28223BE20](v34);
  v36 = &v450 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = v450.n128_u64 - v38;
  MEMORY[0x28223BE20](v40);
  v484 = &v450 - v41;
  MEMORY[0x28223BE20](v42);
  v468 = &v450 - v43;
  MEMORY[0x28223BE20](v44);
  v486 = &v450 - v45;
  v473 = sub_22F740B90();
  v472 = *(v473 - 8);
  MEMORY[0x28223BE20](v473);
  v47 = &v450 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v479 = swift_slowAlloc();
  *v479 = 0;
  v510 = v47;
  sub_22F740B80();
  swift_beginAccess();
  v509 = a1;
  v48 = *(a1 + 24);
  v49 = v48 >> 62;
  v507 = v48;
  if (!(v48 >> 62))
  {
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_309:
    v418 = sub_22F740B70();
    v419 = sub_22F7415D0();
    if (os_log_type_enabled(v418, v419))
    {
      v420 = swift_slowAlloc();
      *v420 = 0;
      _os_log_impl(&dword_22F0FC000, v418, v419, "No entities found in the container, returning...", v420, 2u);
      MEMORY[0x2319033A0](v420, -1, -1);
    }

    v39 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v472 + 8))(v510, v473);
    return v39;
  }

LABEL_308:
  if (!sub_22F741A00())
  {
    goto LABEL_309;
  }

LABEL_3:
  v457 = v18;
  swift_bridgeObjectRetain_n();
  v50 = sub_22F740B70();
  v51 = sub_22F7415D0();
  v52 = os_log_type_enabled(v50, v51);
  v474 = v36;
  if (v52)
  {
    v53 = swift_slowAlloc();
    *v53 = 134217984;
    if (v49)
    {
      v54 = sub_22F741A00();
    }

    else
    {
      v54 = *((v507 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v53 + 4) = v54;

    _os_log_impl(&dword_22F0FC000, v50, v51, "There are %ld potential entities.", v53, 0xCu);
    MEMORY[0x2319033A0](v53, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();

  v475 = sub_22F250878();
  v508 = *(a2 + 16);
  v55 = v508 / 2;
  if (v508 / 2 <= 1)
  {
    v55 = 1;
  }

  v465.n128_u64[0] = v55;
  v56 = MEMORY[0x277D84F90];
  v516 = MEMORY[0x277D84F90];
  v36 = sub_22F14E83C(MEMORY[0x277D84F90]);
  v515 = v36;
  v491 = sub_22F14E214(v56);
  if (v49)
  {
    v58 = v507;
    v59 = sub_22F741A00();
    v57 = v58;
    v18 = v59;
  }

  else
  {
    v57 = v507;
    v18 = *((v507 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v496 = a2;
  v500 = v5;
  v451 = isUniquelyReferenced_nonNull_native;
  if (v18)
  {
    v458 = v36;
    v489 = v39;
    v60 = OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_latestMomentDatetime;
    v505 = v57 & 0xC000000000000001;

    swift_beginAccess();
    v488 = v60;
    swift_beginAccess();
    v61 = v507;
    v5 = 0;
    v506 = 0;
    v493 = v507 & 0xFFFFFFFFFFFFFF8;
    v487 = (isUniquelyReferenced_nonNull_native + 16);
    v495 = (isUniquelyReferenced_nonNull_native + 8);
    v464 = v476 + 2;
    v481 = &v476[1];
    v39 = MEMORY[0x277D84F98];
    v62.n128_u64[0] = 134218498;
    v490 = v62;
    v62.n128_u64[0] = 136315138;
    v463 = v62;
    v62.n128_u64[0] = 134219010;
    v452 = v62;
    v62.n128_u64[0] = 136315394;
    v450 = v62;
    v480 = MEMORY[0x277D84F90];
    v504 = v18;
    while (1)
    {
      if (v505)
      {
        v49 = MEMORY[0x2319016F0](v5, v61);
        v67 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_291;
        }
      }

      else
      {
        if (v5 >= *(v493 + 16))
        {
          goto LABEL_294;
        }

        v49 = *(v61 + 8 * v5 + 32);

        v67 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_291:
          __break(1u);
LABEL_292:
          v417 = v66;

          v39 = sub_22F14E740(MEMORY[0x277D84F90]);

          (v492->isa)(v486, v417);
          (*(v472 + 8))(v510, v473);

          goto LABEL_366;
        }
      }

      v511 = v67;
      v18 = *(v509 + 32);
      v68 = *(v18 + 16);
      v512 = v39;
      if (!v68)
      {
        goto LABEL_37;
      }

      v69 = *(v49 + 24);
      a2 = *(v49 + 32);

      v70 = sub_22F1229E8(v69, a2);
      v36 = v71;

      if ((v36 & 1) == 0)
      {
        goto LABEL_36;
      }

      v72 = *(*(v18 + 56) + 8 * v70);

      if ((v72 & 0xC000000000000001) != 0)
      {
        v18 = sub_22F741A00();
        if (!v18)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v18 = *(v72 + 16);
        if (!v18)
        {
LABEL_36:

LABEL_37:
          v39 = MEMORY[0x277D84F90];
          v75 = MEMORY[0x277D84F90] >> 62;
          if (!(MEMORY[0x277D84F90] >> 62))
          {
            goto LABEL_38;
          }

          goto LABEL_74;
        }
      }

      if (v18 < 1)
      {
        v39 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
        v39 = swift_allocObject();
        v73 = _swift_stdlib_malloc_size(v39);
        v74 = v73 - 32;
        if (v73 < 32)
        {
          v74 = v73 - 25;
        }

        *(v39 + 16) = v18;
        *(v39 + 24) = (2 * (v74 >> 3)) | 1;
      }

      a2 = sub_22F11A590(&v513, (v39 + 32), v18, v72);
      sub_22F0FF590(v513);
      if (a2 != v18)
      {
        goto LABEL_301;
      }

      v75 = v39 >> 62;
      if (!(v39 >> 62))
      {
LABEL_38:
        v76 = v39 & 0xFFFFFFFFFFFFFF8;
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) < v508)
        {
          goto LABEL_39;
        }

        goto LABEL_43;
      }

LABEL_74:
      if (sub_22F741A00() < v508)
      {
LABEL_39:

        v77 = sub_22F740B70();
        v78 = sub_22F7415D0();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v513 = v36;
          *v79 = v490.n128_u32[0];
          *(v79 + 4) = v508;
          *(v79 + 12) = 2080;
          v81 = *(v49 + 24);
          v80 = *(v49 + 32);

          v82 = sub_22F145F20(v81, v80, &v513);

          *(v79 + 14) = v82;
          *(v79 + 22) = 2048;
          if (v75)
          {
            v83 = sub_22F741A00();
          }

          else
          {
            v83 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v79 + 24) = v83;

          _os_log_impl(&dword_22F0FC000, v77, v78, "After filtering for %ld minimum moments, entity %s has been cut, with only %ld moments.", v79, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v36);
          MEMORY[0x2319033A0](v36, -1, -1);
          MEMORY[0x2319033A0](v79, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        a2 = *(v49 + 24);
        v147 = *(v49 + 32);

        v18 = v512;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v513 = v18;
        v148 = sub_22F1229E8(a2, v147);
        v150 = *(v18 + 16);
        v151 = (v149 & 1) == 0;
        v152 = __OFADD__(v150, v151);
        v153 = v150 + v151;
        if (v152)
        {
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
LABEL_307:
          __break(1u);
          goto LABEL_308;
        }

        v36 = v149;
        if (*(v18 + 24) < v153)
        {
          sub_22F1259D0(v153, isUniquelyReferenced_nonNull_native);
          v18 = v513;
          v148 = sub_22F1229E8(a2, v147);
          if ((v36 & 1) != (v154 & 1))
          {
            goto LABEL_378;
          }

          goto LABEL_66;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_66:
          if ((v36 & 1) == 0)
          {
            goto LABEL_106;
          }
        }

        else
        {
          v18 = &v513;
          v208 = v148;
          sub_22F134340();
          v148 = v208;
          if ((v36 & 1) == 0)
          {
LABEL_106:
            v39 = v513;
            *(v513 + 8 * (v148 >> 6) + 64) |= 1 << v148;
            v209 = (*(v39 + 48) + 16 * v148);
            *v209 = a2;
            v209[1] = v147;
            *(*(v39 + 56) + v148) = 4;

            v210 = *(v39 + 16);
            v152 = __OFADD__(v210, 1);
            v211 = v210 + 1;
            if (v152)
            {
              goto LABEL_298;
            }

LABEL_112:
            *(v39 + 16) = v211;
            goto LABEL_19;
          }
        }

        v155 = v148;

        v39 = v513;
        *(*(v513 + 56) + v155) = 4;
        goto LABEL_102;
      }

      v165 = sub_22F741A00();
      if (v165)
      {
        v18 = v165;
        v76 = sub_22F120B48();

        sub_22F3CC8CC(v76 + 32, v18, v39);
        a2 = v166;

        if (a2 != v18)
        {
          __break(1u);
LABEL_377:
          __break(1u);
          goto LABEL_378;
        }
      }

      else
      {
        v76 = MEMORY[0x277D84F90];
      }

LABEL_43:
      v513 = v76;
      v84 = v506;
      sub_22F25089C(&v513);
      v85 = &v517;
      v506 = v84;
      if (v84)
      {
        goto LABEL_379;
      }

      v86 = v513;
      if ((v513 & 0x8000000000000000) != 0 || (v513 & 0x4000000000000000) != 0)
      {
        v18 = v513;
        v87 = sub_22F741A00();
        v86 = v18;
        if (!v87)
        {
LABEL_92:

          v193 = sub_22F740B70();
          v194 = sub_22F7415E0();
          if (os_log_type_enabled(v193, v194))
          {
            v195 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v513 = v36;
            *v195 = v463.n128_u32[0];
            v196 = *(v49 + 24);
            v197 = *(v49 + 32);

            v198 = sub_22F145F20(v196, v197, &v513);

            *(v195 + 4) = v198;
            _os_log_impl(&dword_22F0FC000, v193, v194, "Unable to find first moment for entity with uuid %s", v195, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v36);
            MEMORY[0x2319033A0](v36, -1, -1);
            MEMORY[0x2319033A0](v195, -1, -1);
          }

          else
          {
          }

          v18 = v512;
          a2 = *(v49 + 24);
          v199 = *(v49 + 32);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v513 = v18;
          v200 = sub_22F1229E8(a2, v199);
          v202 = *(v18 + 16);
          v203 = (v201 & 1) == 0;
          v152 = __OFADD__(v202, v203);
          v204 = v202 + v203;
          if (v152)
          {
            goto LABEL_302;
          }

          v36 = v201;
          if (*(v18 + 24) < v204)
          {
            sub_22F1259D0(v204, isUniquelyReferenced_nonNull_native);
            v18 = v513;
            v200 = sub_22F1229E8(a2, v199);
            if ((v36 & 1) != (v205 & 1))
            {
              goto LABEL_378;
            }

            goto LABEL_100;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_100:
            if ((v36 & 1) == 0)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v18 = &v513;
            v212 = v200;
            sub_22F134340();
            v200 = v212;
            if ((v36 & 1) == 0)
            {
LABEL_111:
              v39 = v513;
              *(v513 + 8 * (v200 >> 6) + 64) |= 1 << v200;
              v213 = (*(v39 + 48) + 16 * v200);
              *v213 = a2;
              v213[1] = v199;
              *(*(v39 + 56) + v200) = 3;

              v214 = *(v39 + 16);
              v152 = __OFADD__(v214, 1);
              v211 = v214 + 1;
              if (v152)
              {
                goto LABEL_306;
              }

              goto LABEL_112;
            }
          }

          v206 = v200;

          v39 = v513;
          *(*(v513 + 56) + v206) = 3;
LABEL_102:

          goto LABEL_19;
        }
      }

      else
      {
        v87 = *(v513 + 16);
        if (!v87)
        {
          goto LABEL_92;
        }
      }

      v497 = v5;
      v499 = v49;
      if ((v86 & 0xC000000000000001) != 0)
      {
        v207 = v86;
        v502.n128_u64[0] = MEMORY[0x2319016F0](0);
        if (__OFSUB__(v87, 1))
        {
          goto LABEL_377;
        }

        v90 = MEMORY[0x2319016F0](v87 - 1, v207);
      }

      else
      {
        v88 = *(v86 + 16);
        if (!v88)
        {
          goto LABEL_295;
        }

        v89 = v87 - 1;
        if (__OFSUB__(v87, 1))
        {
          goto LABEL_296;
        }

        if (v89 >= v88)
        {
          goto LABEL_297;
        }

        v90 = *(v86 + 32 + 8 * v89);
        v502.n128_u64[0] = *(v86 + 32);
      }

      a2 = &selRef_topTierAestheticScoreForRatio_inPhotoLibrary_;
      v91 = [*(v90 + 16) universalStartDate];
      isUniquelyReferenced_nonNull_native = v503;
      sub_22F73F640();

      v92 = v492;
      v93 = v500;
      (*v487)(v492, v488 + v509, v500);
      v94 = v496;
      v95 = *v496;
      v96 = v501;
      sub_22F73F5E0();
      v97 = *v495;
      (*v495)(v92, v93);
      LOBYTE(v92) = sub_22F73F5D0();
      v97(v96, v93);
      v494 = v97;
      v97(isUniquelyReferenced_nonNull_native, v93);
      if (v92)
      {

        swift_retain_n();
        v49 = v499;

        v98 = sub_22F740B70();
        isUniquelyReferenced_nonNull_native = sub_22F7415D0();
        a2 = v90;
        if (os_log_type_enabled(v98, isUniquelyReferenced_nonNull_native))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v513 = v100;
          *v99 = v490.n128_u32[0];
          *(v99 + 4) = v95 / 86400.0;
          *(v99 + 12) = 2080;
          v101 = *(v49 + 24);
          v102 = *(v49 + 32);

          v103 = sub_22F145F20(v101, v102, &v513);

          *(v99 + 14) = v103;
          *(v99 + 22) = 2080;
          v104 = [*(a2 + 16) universalStartDate];
          v105 = v503;
          sub_22F73F640();

          sub_22F1662C8(&qword_2810AC6F8, MEMORY[0x277CC95B8]);
          v106 = v500;
          v107 = sub_22F742010();
          v109 = v108;

          v494(v105, v106);
          v110 = sub_22F145F20(v107, v109, &v513);

          *(v99 + 24) = v110;
          _os_log_impl(&dword_22F0FC000, v98, isUniquelyReferenced_nonNull_native, "After filtering for entities with a moment in the last %f days, entity %s has been cut, with a most recent moment at %s", v99, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v100, -1, -1);
          MEMORY[0x2319033A0](v99, -1, -1);
        }

        else
        {
        }

        v5 = v497;
        v63 = *(v49 + 24);
        v36 = *(v49 + 32);

        v64 = v512;
        v65 = swift_isUniquelyReferenced_nonNull_native();
        v513 = v64;
        sub_22F1302A0(1, v63, v36, v65);
      }

      else
      {
        v111 = [*(v502.n128_u64[0] + 16) universalStartDate];
        sub_22F73F640();

        v485 = v90;
        v112 = [*(v90 + 16) universalStartDate];
        sub_22F73F640();

        v113 = v489;
        sub_22F73F040();
        sub_22F73F080();
        v114 = v94[1];
        v49 = v499;
        if (v115 >= v114)
        {
          v156 = sub_22F250878();

          sub_22F241D1C(v475, v156, v465.n128_i64[0], v510);
          v158 = v157;

          v5 = v497;
          if (v158 <= 1.0)
          {
            v170 = v496[3];
            v39 = v512;
            if (v158 >= v170)
            {
              v182 = *(v49 + 24);
              v183 = *(v49 + 32);
              v184 = v461;
              (v464->isa)(v461, v489, v498);

              v185 = v515;
              v186 = swift_isUniquelyReferenced_nonNull_native();
              v513 = v185;
              sub_22F130088(v184, v182, v183, v186);

              v458 = v513;
              v515 = v513;
              v187 = *(v49 + 24);
              v36 = *(v49 + 32);

              v188 = v491;
              v189 = swift_isUniquelyReferenced_nonNull_native();
              v513 = v188;
              sub_22F12FF10(v187, v36, v189, v158);

              v491 = v513;

              MEMORY[0x231900D00](v190);
              if (*((v516 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v516 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_22F7411C0();
              }

              sub_22F741220();
              v480 = v516;
              if (*v479 == 1)
              {

                swift_bridgeObjectRelease_n();

                v39 = sub_22F14E740(MEMORY[0x277D84F90]);

                (*v481)(v489, v498);
                (*(v472 + 8))(v510, v473);

                return v39;
              }

              (*v481)(v489, v498);

              goto LABEL_102;
            }

            v171 = sub_22F740B70();
            v172 = sub_22F7415D0();
            if (os_log_type_enabled(v171, v172))
            {
              v173 = swift_slowAlloc();
              v174 = swift_slowAlloc();
              v513 = v174;
              *v173 = v490.n128_u32[0];
              *(v173 + 4) = v170;
              *(v173 + 12) = 2080;
              v175 = v39;
              v176 = *(v49 + 24);
              v177 = *(v49 + 32);

              isUniquelyReferenced_nonNull_native = sub_22F145F20(v176, v177, &v513);
              v39 = v175;

              *(v173 + 14) = isUniquelyReferenced_nonNull_native;
              *(v173 + 22) = 2048;
              *(v173 + 24) = v158;
              _os_log_impl(&dword_22F0FC000, v171, v172, "After filtering for entities with an important location presence ratio of at least %f, entity %s has been cut, with only a presence ratio of %f.", v173, 0x20u);
              __swift_destroy_boxed_opaque_existential_0(v174);
              MEMORY[0x2319033A0](v174, -1, -1);
              MEMORY[0x2319033A0](v173, -1, -1);
            }

            else
            {
            }

            v191 = *(v49 + 24);
            v36 = *(v49 + 32);

            v192 = swift_isUniquelyReferenced_nonNull_native();
            v513 = v39;
            sub_22F1302A0(5, v191, v36, v192);

            (*v481)(v489, v498);
          }

          else
          {

            v159 = sub_22F740B70();
            v160 = sub_22F7415E0();
            if (os_log_type_enabled(v159, v160))
            {
              v161 = swift_slowAlloc();
              v162 = swift_slowAlloc();
              v513 = v162;
              *v161 = v450.n128_u32[0];
              v163 = *(v49 + 24);
              v164 = *(v49 + 32);

              isUniquelyReferenced_nonNull_native = sub_22F145F20(v163, v164, &v513);

              *(v161 + 4) = isUniquelyReferenced_nonNull_native;
              *(v161 + 12) = 2048;
              *(v161 + 14) = v158;
              _os_log_impl(&dword_22F0FC000, v159, v160, "Entity %s has invalid location presence %f!", v161, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v162);
              MEMORY[0x2319033A0](v162, -1, -1);
              MEMORY[0x2319033A0](v161, -1, -1);
            }

            else
            {
            }

            v178 = v512;
            v179 = v489;
            v180 = *(v49 + 24);
            v36 = *(v49 + 32);

            v181 = swift_isUniquelyReferenced_nonNull_native();
            v513 = v178;
            sub_22F1302A0(7, v180, v36, v181);

            (*v481)(v179, v498);
          }
        }

        else
        {

          isa = v464->isa;
          v117 = v474;
          v118 = v498;
          (v464->isa)(v474, v113, v498);
          isUniquelyReferenced_nonNull_native = v477;
          (isa)(v477, v113, v118);
          v119 = v478;
          (isa)(v478, v113, v118);

          v120 = sub_22F740B70();
          a2 = sub_22F7415D0();

          v121 = os_log_type_enabled(v120, a2);
          v122 = v481;
          v469 = v481 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v5 = v497;
          if (v121)
          {
            v123 = swift_slowAlloc();
            v455 = v120;
            v124 = v123;
            v456 = swift_slowAlloc();
            v513 = v456;
            *v124 = v452.n128_u32[0];
            *(v124 + 4) = v114 / 86400.0;
            *(v124 + 12) = 2080;
            v125 = v122;
            v126 = *(v49 + 24);
            v127 = *(v49 + 32);

            v128 = sub_22F145F20(v126, v127, &v513);

            *(v124 + 14) = v128;
            *(v124 + 22) = 2080;
            v129 = v503;
            sub_22F73F060();
            v453 = sub_22F1662C8(&qword_2810AC6F8, MEMORY[0x277CC95B8]);
            v130 = v500;
            v131 = sub_22F742010();
            v454 = a2;
            v133 = v132;
            v134 = v494;
            v494(v129, v130);
            v135 = *v125;
            (*v125)(v474, v118);
            v136 = sub_22F145F20(v131, v133, &v513);
            v137 = v135;

            *(v124 + 24) = v136;
            *(v124 + 32) = 2080;
            a2 = v477;
            sub_22F73F030();
            v138 = sub_22F742010();
            v140 = v139;
            v141 = v129;
            isUniquelyReferenced_nonNull_native = v478;
            v134(v141, v130);
            v49 = v499;
            v137(a2, v118);
            v142 = sub_22F145F20(v138, v140, &v513);

            *(v124 + 34) = v142;
            *(v124 + 42) = 2048;
            sub_22F73F080();
            v144 = v143;
            v137(isUniquelyReferenced_nonNull_native, v118);
            *(v124 + 44) = v144 / 86400.0;
            v145 = v455;
            _os_log_impl(&dword_22F0FC000, v455, v454, "After filtering for entities with a lifespan of at least %f days, entity %s has been cut, with a lifespan of [%s, %s] that covers %f seconds.", v124, 0x34u);
            v146 = v456;
            swift_arrayDestroy();
            MEMORY[0x2319033A0](v146, -1, -1);
            MEMORY[0x2319033A0](v124, -1, -1);
          }

          else
          {

            v137 = *v122;
            (*v122)(v119, v118);
            v137(isUniquelyReferenced_nonNull_native, v118);
            v137(v117, v118);
          }

          v167 = *(v49 + 24);
          v36 = *(v49 + 32);

          v168 = v512;
          v169 = swift_isUniquelyReferenced_nonNull_native();
          v513 = v168;
          sub_22F1302A0(2, v167, v36, v169);

          v137(v489, v118);
        }
      }

      v39 = v513;
LABEL_19:
      v61 = v507;
      v18 = v504;
      ++v5;
      if (v511 == v504)
      {

        v215 = v480;
        v36 = v458;
        v216 = v506;
        goto LABEL_115;
      }
    }
  }

  v216 = 0;
  v215 = MEMORY[0x277D84F90];
  v39 = MEMORY[0x277D84F98];
LABEL_115:

  v217 = sub_22F740B70();
  v18 = sub_22F7415D0();
  v218 = os_log_type_enabled(v217, v18);
  v480 = v215;
  if (v218)
  {
    v219 = swift_slowAlloc();
    *v219 = 134217984;
    if (!(v215 >> 62))
    {
      v220 = *((v215 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_118;
    }

    goto LABEL_320;
  }

LABEL_120:
  if (*v479 == 1)
  {

    v39 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v472 + 8))(v510, v473);

    goto LABEL_366;
  }

  v513 = sub_22F36C410(v222);
  sub_22F243DC8(&v513, &v515);
  v85 = &v499;
  v469 = v216;
  if (v216)
  {
    goto LABEL_379;
  }

  v216 = v513;
  if (*v479)
  {

    v39 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v472 + 8))(v510, v473);
    goto LABEL_365;
  }

  if ((v513 & 0x8000000000000000) == 0 && (v513 & 0x4000000000000000) == 0)
  {
    v224 = *(v513 + 16);
    v514 = MEMORY[0x277D84FA0];
    v478 = v224;
    v225 = v224;
    if (v224)
    {
      goto LABEL_128;
    }

LABEL_323:

    v5 = sub_22F250860(v480, &v514);

    if (*v479)
    {

      v39 = sub_22F14E740(MEMORY[0x277D84F90]);
      goto LABEL_364;
    }

    v390 = v5 >> 62;
    v511 = v5;
    if (v5 >> 62)
    {
      goto LABEL_374;
    }

    v422 = v5 & 0xFFFFFFFFFFFFFF8;
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v508 = v5 >> 62;
      v512 = v39;
      v423 = swift_slowAlloc();
      *v423 = 0;
      v424 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_328;
    }

LABEL_339:
    v431 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v431)
    {
LABEL_362:

      if (v459)
      {
        sub_22F243228(v39);
      }

LABEL_364:
      (*(v472 + 8))(v510, v473);

LABEL_365:

LABEL_366:

      return v39;
    }

LABEL_342:
    v432 = 0;
    v512 = v5 & 0xC000000000000001;
    v390 = &v518;
    v509 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v512)
      {
        v433 = MEMORY[0x2319016F0](v432, v5);
        v434 = v432 + 1;
        if (__OFADD__(v432, 1))
        {
          goto LABEL_368;
        }
      }

      else
      {
        if (v432 >= *(v509 + 16))
        {
          goto LABEL_372;
        }

        v433 = *(v5 + 8 * v432 + 32);

        v434 = v432 + 1;
        if (__OFADD__(v432, 1))
        {
LABEL_368:
          __break(1u);
LABEL_369:
          __break(1u);
LABEL_370:
          __break(1u);
LABEL_371:
          __break(1u);
LABEL_372:
          __break(1u);
LABEL_373:
          __break(1u);
LABEL_374:
          v508 = v390;
          v512 = v39;
          v422 = v5 & 0xFFFFFFFFFFFFFF8;
          if (!sub_22F741A00())
          {
            v39 = v512;
            v5 = v511;
LABEL_341:
            v431 = sub_22F741A00();
            if (!v431)
            {
              goto LABEL_362;
            }

            goto LABEL_342;
          }

          v423 = swift_slowAlloc();
          *v423 = 0;
          v424 = sub_22F741A00();
          v5 = v511;
LABEL_328:
          v425 = 0;
          v390 = v509;
          v426 = (v509 + OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_processInferredPetNode);
          v39 = v5 & 0xC000000000000001;
          while (v424 != v425)
          {
            if (v39)
            {
              v427 = MEMORY[0x2319016F0](v425, v5);
              if (__OFADD__(v425, 1))
              {
                goto LABEL_337;
              }
            }

            else
            {
              if (v425 >= *(v422 + 16))
              {
                goto LABEL_370;
              }

              v427 = *(v5 + 8 * v425 + 32);

              if (__OFADD__(v425, 1))
              {
LABEL_337:
                __break(1u);
                break;
              }
            }

            v428 = *v426;
            v429 = *(v427 + 16);
            v428();

            v5 = v511;
            v430 = *v423;

            ++v425;
            if (v430)
            {
              break;
            }
          }

          v39 = v512;
          if (v508)
          {
            goto LABEL_341;
          }

          goto LABEL_339;
        }
      }

      v5 = *(v433 + 24);
      v435 = *(v433 + 32);

      v436 = swift_isUniquelyReferenced_nonNull_native();
      v513 = v39;
      v438 = sub_22F1229E8(v5, v435);
      v439 = v39;
      v440 = *(v39 + 16);
      v390 = (v437 & 1) == 0;
      v441 = v440 + v390;
      if (__OFADD__(v440, v390))
      {
        goto LABEL_369;
      }

      v442 = v437;
      if (*(v439 + 24) >= v441)
      {

        if (v436)
        {
          if (v442)
          {
            goto LABEL_343;
          }
        }

        else
        {
          sub_22F134340();
          if (v442)
          {
            goto LABEL_343;
          }
        }
      }

      else
      {
        sub_22F1259D0(v441, v436);
        v443 = sub_22F1229E8(v5, v435);
        if ((v442 & 1) != (v444 & 1))
        {
          goto LABEL_378;
        }

        v438 = v443;

        if (v442)
        {
LABEL_343:

          v39 = v513;
          *(*(v513 + 56) + v438) = 0;
          goto LABEL_344;
        }
      }

      v39 = v513;
      v445 = v513 + 8 * (v438 >> 6);
      v390 = *(v445 + 64) | (1 << v438);
      *(v445 + 64) = v390;
      v446 = (*(v39 + 48) + 16 * v438);
      *v446 = v5;
      v446[1] = v435;
      *(*(v39 + 56) + v438) = 0;
      v447 = *(v39 + 16);
      v152 = __OFADD__(v447, 1);
      v448 = v447 + 1;
      if (v152)
      {
        goto LABEL_371;
      }

      *(v39 + 16) = v448;
LABEL_344:
      ++v432;
      v5 = v511;
      if (v434 == v431)
      {
        goto LABEL_362;
      }
    }
  }

  while (1)
  {
    v478 = sub_22F741A00();
    v514 = MEMORY[0x277D84FA0];
    v225 = sub_22F741A00();
    if (!v225)
    {
      goto LABEL_323;
    }

LABEL_128:
    v5 = 0;
    v508 = v216 & 0xC000000000000001;
    v504 = v216 + 32;
    v493 = &v476[2];
    v497 = (v451 + 8);
    v477 = (v451 + 32);
    v492 = v476 + 1;
    v223.n128_u64[0] = 136315138;
    v502 = v223;
    v223.n128_u64[0] = 136315394;
    v465 = v223;
    v223.n128_u64[0] = 136315906;
    v463 = v223;
    v495 = v216;
    v499 = v225;
    while (2)
    {
      v49 = v5;
      if (v508)
      {
        v36 = MEMORY[0x2319016F0](v5, v216);
        isUniquelyReferenced_nonNull_native = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_299;
        }
      }

      else
      {
        if (v5 >= *(v216 + 16))
        {
          goto LABEL_300;
        }

        v36 = *(v504 + 8 * v5);

        isUniquelyReferenced_nonNull_native = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_299;
        }
      }

      v226 = v515;
      v227 = *(v515 + 16);
      v511 = v36;
      if (!v227)
      {
        goto LABEL_191;
      }

      a2 = *(v36 + 24);
      v228 = *(v36 + 32);

      v229 = sub_22F1229E8(a2, v228);
      if ((v230 & 1) == 0)
      {

LABEL_191:

        v302 = sub_22F740B70();
        v303 = sub_22F7415E0();
        if (os_log_type_enabled(v302, v303))
        {
          v304 = swift_slowAlloc();
          a2 = swift_slowAlloc();
          v513 = a2;
          *v304 = v502.n128_u32[0];
          v305 = *(v36 + 24);
          v306 = *(v511 + 32);

          v307 = sub_22F145F20(v305, v306, &v513);
          v36 = v511;

          *(v304 + 4) = v307;
          _os_log_impl(&dword_22F0FC000, v302, v303, "Unable to find lifespan for entity %s", v304, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(a2);
          MEMORY[0x2319033A0](a2, -1, -1);
          MEMORY[0x2319033A0](v304, -1, -1);
        }

        else
        {
        }

        v49 = *(v36 + 24);
        v217 = *(v36 + 32);

        v5 = swift_isUniquelyReferenced_nonNull_native();
        v513 = v39;
        v18 = v39;
        v308 = sub_22F1229E8(v49, v217);
        v310 = *(v39 + 16);
        v311 = (v309 & 1) == 0;
        v152 = __OFADD__(v310, v311);
        v312 = v310 + v311;
        if (v152)
        {
          goto LABEL_304;
        }

        a2 = v309;
        if (*(v39 + 24) >= v312)
        {
          if ((v5 & 1) == 0)
          {
            v18 = &v513;
            v412 = v308;
            sub_22F134340();
            v308 = v412;
            v5 = isUniquelyReferenced_nonNull_native;
            if (a2)
            {
LABEL_200:
              v18 = v308;

              v39 = v513;
              *(*(v513 + 56) + v18) = 8;
              goto LABEL_201;
            }

            goto LABEL_288;
          }
        }

        else
        {
          sub_22F1259D0(v312, v5);
          v18 = v513;
          v308 = sub_22F1229E8(v49, v217);
          if ((a2 & 1) != (v313 & 1))
          {
            goto LABEL_378;
          }
        }

        v5 = isUniquelyReferenced_nonNull_native;
        if (a2)
        {
          goto LABEL_200;
        }

LABEL_288:
        v39 = v513;
        *(v513 + 8 * (v308 >> 6) + 64) |= 1 << v308;
        v413 = (*(v39 + 48) + 16 * v308);
        *v413 = v49;
        v413[1] = v217;
        *(*(v39 + 56) + v308) = 8;

        v414 = *(v39 + 16);
        v152 = __OFADD__(v414, 1);
        v415 = v414 + 1;
        if (!v152)
        {
          *(v39 + 16) = v415;
          goto LABEL_131;
        }

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
        v421 = v219;
        v220 = sub_22F741A00();
        v219 = v421;
LABEL_118:
        *(v219 + 4) = v220;
        v221 = v219;

        _os_log_impl(&dword_22F0FC000, v217, v18, "After filtering potential entities, there are %ld entities remaining.", v221, 0xCu);
        MEMORY[0x2319033A0](v221, -1, -1);

        goto LABEL_120;
      }

      v474 = a2;
      v490.n128_u64[0] = v228;
      v481 = isUniquelyReferenced_nonNull_native;
      v494 = v226;
      v231 = *(v226 + 56);
      v489 = v476[9].isa;
      v488 = v476[2].isa;
      v488(v486, v231 + v489 * v229, v498);
      v18 = v491;
      if (*(v491 + 16))
      {
        v232 = *(v36 + 24);
        a2 = *(v36 + 32);

        v233 = sub_22F1229E8(v232, a2);
        v235 = v234;

        if (v235)
        {
          v236 = *(*(v18 + 56) + 8 * v233);
          v237 = v49 - 1;
          if (v49 >= 1)
          {
            a2 = v501;
            v5 = v503;
            v49 = v494;
            while (1)
            {
              while (1)
              {
                v505 = v237;
                if (v508)
                {
                  v239 = MEMORY[0x2319016F0]();
                }

                else
                {
                  if (v237 >= *(v216 + 16))
                  {
                    goto LABEL_305;
                  }
                }

                v241 = *(v239 + 24);
                v240 = *(v239 + 32);
                v506 = v239;
                v242 = *(v49 + 16);

                if (v242)
                {
                  v243 = sub_22F1229E8(v241, v240);
                  if (v244)
                  {
                    break;
                  }
                }

                v268 = sub_22F740B70();
                v269 = sub_22F7415E0();

                if (os_log_type_enabled(v268, v269))
                {
                  v270 = swift_slowAlloc();
                  v271 = swift_slowAlloc();
                  v513 = v271;
                  *v270 = v502.n128_u32[0];
                  v272 = v39;
                  v273 = sub_22F145F20(v241, v240, &v513);

                  *(v270 + 4) = v273;
                  v39 = v272;
                  v216 = v495;
                  _os_log_impl(&dword_22F0FC000, v268, v269, "Unable to find lifespan for entity %s", v270, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v271);
                  MEMORY[0x2319033A0](v271, -1, -1);
                  MEMORY[0x2319033A0](v270, -1, -1);
                }

                else
                {
                }

                isUniquelyReferenced_nonNull_native = *(v511 + 24);
                v36 = *(v511 + 32);

                v5 = swift_isUniquelyReferenced_nonNull_native();
                v513 = v39;
                v18 = v39;
                v274 = sub_22F1229E8(isUniquelyReferenced_nonNull_native, v36);
                v276 = v39;
                v277 = *(v39 + 16);
                v278 = (v275 & 1) == 0;
                v152 = __OFADD__(v277, v278);
                v279 = v277 + v278;
                if (v152)
                {
                  goto LABEL_303;
                }

                v280 = v275;
                if (*(v276 + 24) >= v279)
                {
                  if ((v5 & 1) == 0)
                  {
                    v18 = &v513;
                    v300 = v274;
                    sub_22F134340();
                    v274 = v300;
                  }
                }

                else
                {
                  sub_22F1259D0(v279, v5);
                  v18 = v513;
                  v274 = sub_22F1229E8(isUniquelyReferenced_nonNull_native, v36);
                  if ((v280 & 1) != (v281 & 1))
                  {
                    goto LABEL_378;
                  }
                }

                a2 = v501;
                v5 = v503;
                if (v280)
                {
                  v238 = v274;

                  v39 = v513;
                  *(*(v513 + 56) + v238) = 8;
                }

                else
                {
                  v39 = v513;
                  *(v513 + 8 * (v274 >> 6) + 64) |= 1 << v274;
                  v282 = (*(v39 + 48) + 16 * v274);
                  *v282 = isUniquelyReferenced_nonNull_native;
                  v282[1] = v36;
                  *(*(v39 + 56) + v274) = 8;

                  v283 = *(v39 + 16);
                  v152 = __OFADD__(v283, 1);
                  v284 = v283 + 1;
                  if (v152)
                  {
                    goto LABEL_307;
                  }

                  *(v39 + 16) = v284;
                }

LABEL_142:
                v36 = v511;
                v237 = v505;
                if ((v505 & 0x8000000000000000) != 0)
                {
                  goto LABEL_219;
                }
              }

              v487 = v241;
              v485 = v240;
              v512 = v39;
              v245 = v484;
              v488(v484, *(v49 + 56) + v243 * v489, v498);
              sub_22F73F030();
              v246 = v486;
              sub_22F73F060();
              sub_22F1662C8(&qword_2810AC708, MEMORY[0x277CC9590]);
              isUniquelyReferenced_nonNull_native = v500;
              v18 = v500;
              v247 = sub_22F740DB0();
              v248 = *v497;
              (*v497)(a2, isUniquelyReferenced_nonNull_native);
              v248(v5, isUniquelyReferenced_nonNull_native);
              if ((v247 & 1) == 0)
              {
                (v492->isa)(v245, v498);

LABEL_217:
                a2 = v501;
                v5 = v503;
                v39 = v512;
                v216 = v495;
                v36 = v511;
                goto LABEL_218;
              }

              sub_22F73F060();
              a2 = v470;
              sub_22F73F030();
              v249 = v471;
              sub_22F73F030();
              v250 = sub_22F740DB0();
              v251 = (v250 & 1) == 0;
              if (v250)
              {
                v252 = a2;
              }

              else
              {
                v252 = v249;
              }

              if (v251)
              {
                v249 = a2;
              }

              v248(v252, isUniquelyReferenced_nonNull_native);
              (*v477)(v483, v249, isUniquelyReferenced_nonNull_native);
              sub_22F73F590();
              v254 = v253;
              v18 = v246;
              sub_22F73F080();
              v217 = v496;
              v256 = isUniquelyReferenced_nonNull_native;
              if (v255 * v496[4] >= v254)
              {

                v248(v483, isUniquelyReferenced_nonNull_native);
                v248(v482, isUniquelyReferenced_nonNull_native);
                (v492->isa)(v484, v498);
                goto LABEL_217;
              }

              v257 = v248;
              v39 = v512;
              v258 = v485;
              if (!*(v491 + 16) || (v259 = sub_22F1229E8(v487, v485), (v260 & 1) == 0))
              {

                v285 = sub_22F740B70();
                v286 = sub_22F7415E0();

                v287 = os_log_type_enabled(v285, v286);
                v216 = v484;
                v49 = v494;
                if (v287)
                {
                  v217 = swift_slowAlloc();
                  v288 = swift_slowAlloc();
                  v513 = v288;
                  *v217 = v502.n128_u32[0];
                  v289 = sub_22F145F20(v487, v258, &v513);

                  *(v217 + 4) = v289;
                  v39 = v512;
                  _os_log_impl(&dword_22F0FC000, v285, v286, "Unable to find important location presence for entity %s", v217, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v288);
                  MEMORY[0x2319033A0](v288, -1, -1);
                  MEMORY[0x2319033A0](v217, -1, -1);
                }

                else
                {
                }

                isUniquelyReferenced_nonNull_native = *(v511 + 24);
                v36 = *(v511 + 32);

                v290 = swift_isUniquelyReferenced_nonNull_native();
                v513 = v39;
                v18 = v39;
                v219 = sub_22F1229E8(isUniquelyReferenced_nonNull_native, v36);
                v292 = v39;
                v293 = *(v39 + 16);
                v294 = (v291 & 1) == 0;
                v152 = __OFADD__(v293, v294);
                v295 = v293 + v294;
                if (v152)
                {
                  goto LABEL_314;
                }

                v39 = v291;
                if (*(v292 + 24) >= v295)
                {
                  if ((v290 & 1) == 0)
                  {
                    v301 = v219;
                    sub_22F134340();
                    v219 = v301;
                  }
                }

                else
                {
                  sub_22F1259D0(v295, v290);
                  v219 = sub_22F1229E8(isUniquelyReferenced_nonNull_native, v36);
                  if ((v39 & 1) != (v296 & 1))
                  {
                    goto LABEL_378;
                  }
                }

                v217 = v500;
                a2 = v501;
                v5 = v503;
                v18 = v513;
                if (v39)
                {
                  *(*(v513 + 56) + v219) = 9;

                  v39 = v18;
                }

                else
                {
                  *(v513 + 8 * (v219 >> 6) + 64) |= 1 << v219;
                  v297 = (*(v18 + 48) + 16 * v219);
                  *v297 = isUniquelyReferenced_nonNull_native;
                  v297[1] = v36;
                  *(*(v18 + 56) + v219) = 9;
                  v298 = *(v18 + 16);
                  v152 = __OFADD__(v298, 1);
                  v299 = v298 + 1;
                  if (v152)
                  {
                    goto LABEL_319;
                  }

                  v39 = v18;
                  *(v18 + 16) = v299;
                }

                v18 = v497;
                v257(v483, v217);
                v257(v482, v217);
                (v492->isa)(v216, v498);
                v216 = v495;
                goto LABEL_142;
              }

              v261 = *(*(v491 + 56) + 8 * v259);
              v262 = v490.n128_u64[0];

              v18 = sub_22F740B70();
              isUniquelyReferenced_nonNull_native = sub_22F7415C0();

              v263 = os_log_type_enabled(v18, isUniquelyReferenced_nonNull_native);
              v264 = v484;
              v49 = v494;
              if (v263)
              {
                v265 = swift_slowAlloc();
                v266 = swift_slowAlloc();
                v513 = v266;
                *v265 = v465.n128_u32[0];
                *(v265 + 4) = sub_22F145F20(v474, v262, &v513);
                *(v265 + 12) = 2080;
                *(v265 + 14) = sub_22F145F20(v487, v258, &v513);
                _os_log_impl(&dword_22F0FC000, v18, isUniquelyReferenced_nonNull_native, "Entity %s's lifespan has significant overlap with %s's lifespan!", v265, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x2319033A0](v266, -1, -1);
                v267 = v265;
                v256 = v500;
                v217 = v496;
                MEMORY[0x2319033A0](v267, -1, -1);
              }

              if (v236 < v261 * *(v217 + 40))
              {
                v391 = v490.n128_u64[0];

                v392 = v474;
                sub_22F10BBDC(&v513, v474, v391);

                isUniquelyReferenced_nonNull_native = sub_22F740B70();
                v393 = sub_22F7415D0();

                if (os_log_type_enabled(isUniquelyReferenced_nonNull_native, v393))
                {
                  v394 = swift_slowAlloc();
                  v464 = isUniquelyReferenced_nonNull_native;
                  isUniquelyReferenced_nonNull_native = v394;
                  v505 = swift_slowAlloc();
                  v513 = v505;
                  *isUniquelyReferenced_nonNull_native = v463.n128_u32[0];
                  *(isUniquelyReferenced_nonNull_native + 4) = sub_22F145F20(v392, v391, &v513);
                  *(isUniquelyReferenced_nonNull_native + 12) = 2048;
                  *(isUniquelyReferenced_nonNull_native + 14) = v236;
                  *(isUniquelyReferenced_nonNull_native + 22) = 2080;
                  v395 = sub_22F145F20(v487, v258, &v513);

                  *(isUniquelyReferenced_nonNull_native + 24) = v395;
                  v256 = v500;
                  *(isUniquelyReferenced_nonNull_native + 32) = 2048;
                  v49 = v494;
                  *(isUniquelyReferenced_nonNull_native + 34) = v261;
                  v396 = v464;
                  _os_log_impl(&dword_22F0FC000, v464, v393, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", isUniquelyReferenced_nonNull_native, 0x2Au);
                  v397 = v505;
                  swift_arrayDestroy();
                  MEMORY[0x2319033A0](v397, -1, -1);
                  MEMORY[0x2319033A0](isUniquelyReferenced_nonNull_native, -1, -1);
                }

                else
                {
                }

                v36 = v511;
                v398 = *(v511 + 24);
                v399 = *(v511 + 32);

                v400 = swift_isUniquelyReferenced_nonNull_native();
                v513 = v39;
                v18 = &v513;
                sub_22F1302A0(6, v398, v399, v400);

                v257(v483, v256);
                v257(v482, v256);
                (v492->isa)(v264, v498);
                v39 = v513;
                a2 = v501;
                v5 = v503;
                v216 = v495;
                goto LABEL_219;
              }

              v257(v483, v256);
              v257(v482, v256);
              (v492->isa)(v264, v498);
              v237 = v505 - 1;
              a2 = v501;
              v5 = v503;
              v216 = v495;
              v36 = v511;
              if (((v505 - 1) & 0x8000000000000000) != 0)
              {
                goto LABEL_219;
              }
            }
          }

          a2 = v501;
          v5 = v503;
LABEL_218:
          v49 = v494;
LABEL_219:
          if (sub_22F15E910(v474, v490.n128_i64[0], v514))
          {
            (v492->isa)(v486, v498);

            v5 = v481;
            if (v481 == v499)
            {
              goto LABEL_323;
            }

            continue;
          }

          v217 = v481;
          if (v481 >= v478)
          {

            v5 = v217;
            goto LABEL_274;
          }

          v219 = v481;
LABEL_224:
          v505 = v219;
          if (v508)
          {
            v330 = MEMORY[0x2319016F0]();
          }

          else
          {
            if ((v219 & 0x8000000000000000) != 0)
            {
              goto LABEL_316;
            }

            if (v219 >= *(v216 + 16))
            {
              goto LABEL_317;
            }
          }

          v331 = *(v330 + 24);
          v332 = *(v330 + 32);
          v506 = v330;
          v217 = *(v49 + 16);

          if (v217)
          {
            v333 = sub_22F1229E8(v331, v332);
            if (v334)
            {
              v485 = v331;
              v487 = v332;
              v335 = v468;
              v488(v468, *(v49 + 56) + v333 * v489, v498);
              v336 = v486;
              sub_22F73F030();
              sub_22F73F060();
              sub_22F1662C8(&qword_2810AC708, MEMORY[0x277CC9590]);
              v337 = a2;
              isUniquelyReferenced_nonNull_native = v5;
              a2 = v500;
              v18 = sub_22F740DB0();
              v338 = *v497;
              (*v497)(v337, a2);
              v338(v5, a2);
              if ((v18 & 1) == 0)
              {
                (v492->isa)(v335, v498);

                goto LABEL_273;
              }

              v512 = v39;
              sub_22F73F060();
              v339 = v462;
              sub_22F73F030();
              isUniquelyReferenced_nonNull_native = v457;
              sub_22F73F030();
              v340 = sub_22F740DB0();
              v341 = (v340 & 1) == 0;
              if (v340)
              {
                v342 = v339;
              }

              else
              {
                v342 = isUniquelyReferenced_nonNull_native;
              }

              if (v341)
              {
                v343 = v339;
              }

              else
              {
                v343 = isUniquelyReferenced_nonNull_native;
              }

              v338(v342, a2);
              (*v477)(v467, v343, a2);
              sub_22F73F590();
              v345 = v344;
              v18 = v336;
              sub_22F73F080();
              v347 = v338;
              if (v346 * v496[4] >= v345)
              {

                v338(v467, a2);
                v338(v466, a2);
                (v492->isa)(v468, v498);
                v39 = v512;
LABEL_273:
                v216 = v495;
                v5 = v481;
                v36 = v511;
LABEL_274:
                v66 = v498;
                if (*v479 == 1)
                {
                  goto LABEL_292;
                }

                (v492->isa)(v486, v498);
LABEL_201:

LABEL_131:
                if (v5 == v499)
                {
                  goto LABEL_323;
                }

                continue;
              }

              v39 = v512;
              v216 = v495;
              v49 = v494;
              isUniquelyReferenced_nonNull_native = v487;
              if (*(v491 + 16))
              {
                v348 = sub_22F1229E8(v485, v487);
                if (v349)
                {
                  v464 = v338;
                  v350 = *(*(v491 + 56) + 8 * v348);
                  v351 = v490.n128_u64[0];

                  v352 = sub_22F740B70();
                  v353 = sub_22F7415C0();

                  if (os_log_type_enabled(v352, v353))
                  {
                    v354 = swift_slowAlloc();
                    v355 = v49;
                    v356 = v216;
                    v357 = isUniquelyReferenced_nonNull_native;
                    v358 = swift_slowAlloc();
                    v513 = v358;
                    *v354 = v465.n128_u32[0];
                    *(v354 + 4) = sub_22F145F20(v474, v351, &v513);
                    *(v354 + 12) = 2080;
                    v359 = v485;
                    v360 = v357;
                    v216 = v356;
                    v49 = v355;
                    *(v354 + 14) = sub_22F145F20(v485, v360, &v513);
                    _os_log_impl(&dword_22F0FC000, v352, v353, "Entity %s's lifespan has significant overlap with %s's lifespan!", v354, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x2319033A0](v358, -1, -1);
                    MEMORY[0x2319033A0](v354, -1, -1);

                    v18 = v500;
                    v36 = v511;
                  }

                  else
                  {

                    v18 = v500;
                    v36 = v511;
                    v359 = v485;
                  }

                  a2 = v501;
                  v5 = v503;
                  if (v236 < v350 * v496[5])
                  {
                    v401 = v490.n128_u64[0];

                    v402 = v474;
                    sub_22F10BBDC(&v513, v474, v401);

                    isUniquelyReferenced_nonNull_native = v487;

                    v403 = sub_22F740B70();
                    v404 = sub_22F7415D0();

                    if (os_log_type_enabled(v403, v404))
                    {
                      v405 = isUniquelyReferenced_nonNull_native;
                      isUniquelyReferenced_nonNull_native = swift_slowAlloc();
                      v511 = swift_slowAlloc();
                      v513 = v511;
                      *isUniquelyReferenced_nonNull_native = v463.n128_u32[0];
                      v406 = sub_22F145F20(v402, v401, &v513);

                      *(isUniquelyReferenced_nonNull_native + 4) = v406;
                      *(isUniquelyReferenced_nonNull_native + 12) = 2048;
                      *(isUniquelyReferenced_nonNull_native + 14) = v236;
                      *(isUniquelyReferenced_nonNull_native + 22) = 2080;
                      v407 = sub_22F145F20(v359, v405, &v513);
                      v216 = v495;

                      *(isUniquelyReferenced_nonNull_native + 24) = v407;
                      *(isUniquelyReferenced_nonNull_native + 32) = 2048;
                      *(isUniquelyReferenced_nonNull_native + 34) = v350;
                      _os_log_impl(&dword_22F0FC000, v403, v404, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", isUniquelyReferenced_nonNull_native, 0x2Au);
                      v408 = v511;
                      swift_arrayDestroy();
                      MEMORY[0x2319033A0](v408, -1, -1);
                      MEMORY[0x2319033A0](isUniquelyReferenced_nonNull_native, -1, -1);
                    }

                    else
                    {
                    }

                    v409 = *(v36 + 24);
                    v410 = *(v36 + 32);

                    v411 = swift_isUniquelyReferenced_nonNull_native();
                    v513 = v39;
                    sub_22F1302A0(6, v409, v410, v411);

                    v18 = v500;
                    a2 = v464;
                    (v464)(v467, v500);
                    (a2)(v466, v18);
                    (v492->isa)(v468, v498);
                    v39 = v513;
                    goto LABEL_270;
                  }

                  v217 = v497;
                  isUniquelyReferenced_nonNull_native = v464;
                  (v464)(v467, v18);
                  (isUniquelyReferenced_nonNull_native)(v466, v18);
                  (v492->isa)(v468, v498);
                  v219 = v505 + 1;
                  if (__OFADD__(v505, 1))
                  {
                    goto LABEL_373;
                  }

                  goto LABEL_262;
                }
              }

              v381 = sub_22F740B70();
              v382 = sub_22F7415E0();

              v383 = os_log_type_enabled(v381, v382);
              v36 = v511;
              if (v383)
              {
                v384 = swift_slowAlloc();
                v385 = isUniquelyReferenced_nonNull_native;
                isUniquelyReferenced_nonNull_native = swift_slowAlloc();
                v513 = isUniquelyReferenced_nonNull_native;
                *v384 = v502.n128_u32[0];
                v386 = sub_22F145F20(v485, v385, &v513);

                *(v384 + 4) = v386;
                v39 = v512;
                _os_log_impl(&dword_22F0FC000, v381, v382, "Unable to find important location presence for entity %s", v384, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(isUniquelyReferenced_nonNull_native);
                MEMORY[0x2319033A0](isUniquelyReferenced_nonNull_native, -1, -1);
                MEMORY[0x2319033A0](v384, -1, -1);
              }

              else
              {
              }

              v387 = *(v36 + 24);
              v388 = *(v36 + 32);

              v389 = swift_isUniquelyReferenced_nonNull_native();
              v513 = v39;
              sub_22F1302A0(9, v387, v388, v389);

              v18 = v500;
              v217 = v497;
              v347(v467, v500);
              v347(v466, v18);
              (v492->isa)(v468, v498);
              v39 = v513;
              a2 = v501;
              v5 = v503;
LABEL_261:
              v219 = v505;
LABEL_262:
              if (v219 >= v478)
              {

LABEL_270:
                v5 = v481;
                goto LABEL_274;
              }

              goto LABEL_224;
            }
          }

          v361 = sub_22F740B70();
          v362 = sub_22F7415E0();

          if (os_log_type_enabled(v361, v362))
          {
            v363 = v331;
            v364 = v49;
            v365 = v216;
            v366 = v332;
            v367 = swift_slowAlloc();
            a2 = swift_slowAlloc();
            v513 = a2;
            *v367 = v502.n128_u32[0];
            v368 = sub_22F145F20(v363, v366, &v513);
            v217 = v39;
            v369 = v368;
            v216 = v365;
            v49 = v364;

            *(v367 + 4) = v369;
            v39 = v217;
            _os_log_impl(&dword_22F0FC000, v361, v362, "Unable to find lifespan for entity %s", v367, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(a2);
            MEMORY[0x2319033A0](a2, -1, -1);
            MEMORY[0x2319033A0](v367, -1, -1);
          }

          else
          {
          }

          isUniquelyReferenced_nonNull_native = *(v36 + 24);
          v36 = *(v36 + 32);

          v370 = swift_isUniquelyReferenced_nonNull_native();
          v513 = v39;
          v18 = v39;
          v219 = sub_22F1229E8(isUniquelyReferenced_nonNull_native, v36);
          v372 = v39;
          v373 = *(v39 + 16);
          v374 = (v371 & 1) == 0;
          v152 = __OFADD__(v373, v374);
          v375 = v373 + v374;
          if (v152)
          {
            goto LABEL_313;
          }

          v376 = v371;
          if (*(v372 + 24) >= v375)
          {
            v18 = v506;
            if ((v370 & 1) == 0)
            {
              v217 = v219;
              sub_22F134340();
              v18 = v506;
              v219 = v217;
            }

            a2 = v501;
            v5 = v503;
            if ((v376 & 1) == 0)
            {
              goto LABEL_250;
            }
          }

          else
          {
            sub_22F1259D0(v375, v370);
            v219 = sub_22F1229E8(isUniquelyReferenced_nonNull_native, v36);
            if ((v376 & 1) != (v377 & 1))
            {
              goto LABEL_378;
            }

            a2 = v501;
            v5 = v503;
            v18 = v506;
            if ((v376 & 1) == 0)
            {
LABEL_250:
              v39 = v513;
              *(v513 + 8 * (v219 >> 6) + 64) |= 1 << v219;
              v378 = (*(v39 + 48) + 16 * v219);
              *v378 = isUniquelyReferenced_nonNull_native;
              v378[1] = v36;
              *(*(v39 + 56) + v219) = 8;

              v379 = *(v39 + 16);
              v152 = __OFADD__(v379, 1);
              v380 = v379 + 1;
              if (v152)
              {
                goto LABEL_318;
              }

              *(v39 + 16) = v380;
              goto LABEL_256;
            }
          }

          v217 = v219;

          v39 = v513;
          *(*(v513 + 56) + v217) = 8;

LABEL_256:
          v36 = v511;
          goto LABEL_261;
        }
      }

      break;
    }

    v314 = sub_22F740B70();
    v315 = sub_22F7415E0();
    if (os_log_type_enabled(v314, v315))
    {
      v316 = swift_slowAlloc();
      a2 = swift_slowAlloc();
      v513 = a2;
      *v316 = v502.n128_u32[0];
      v317 = *(v36 + 24);
      v318 = *(v511 + 32);

      v319 = sub_22F145F20(v317, v318, &v513);
      v36 = v511;

      *(v316 + 4) = v319;
      _os_log_impl(&dword_22F0FC000, v314, v315, "Unable to find important location presence for entity %s", v316, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a2);
      MEMORY[0x2319033A0](a2, -1, -1);
      MEMORY[0x2319033A0](v316, -1, -1);
    }

    else
    {
    }

    v320 = *(v36 + 24);
    v217 = *(v36 + 32);

    v321 = swift_isUniquelyReferenced_nonNull_native();
    v513 = v39;
    v18 = v39;
    v219 = sub_22F1229E8(v320, v217);
    v323 = *(v39 + 16);
    v324 = (v322 & 1) == 0;
    v152 = __OFADD__(v323, v324);
    v325 = v323 + v324;
    if (v152)
    {
      goto LABEL_315;
    }

    a2 = v322;
    if (*(v39 + 24) < v325)
    {
      break;
    }

    if ((v321 & 1) == 0)
    {
      v18 = &v513;
      v416 = v219;
      sub_22F134340();
      v219 = v416;
    }

LABEL_211:
    v5 = v481;
    v39 = v513;
    if (a2)
    {
      *(*(v513 + 56) + v219) = 9;

LABEL_130:
      (v492->isa)(v486, v498);
      goto LABEL_131;
    }

    *(v513 + 8 * (v219 >> 6) + 64) |= 1 << v219;
    v327 = (*(v39 + 48) + 16 * v219);
    *v327 = v320;
    v327[1] = v217;
    *(*(v39 + 56) + v219) = 9;
    v328 = *(v39 + 16);
    v152 = __OFADD__(v328, 1);
    v329 = v328 + 1;
    if (!v152)
    {
      *(v39 + 16) = v329;

      goto LABEL_130;
    }

    __break(1u);
  }

  sub_22F1259D0(v325, v321);
  v18 = v513;
  v219 = sub_22F1229E8(v320, v217);
  if ((a2 & 1) == (v326 & 1))
  {
    goto LABEL_211;
  }

LABEL_378:
  sub_22F7420C0();
  __break(1u);
LABEL_379:

  __break(1u);
  return result;
}

uint64_t *sub_22F281C54(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v28 = a4;
  v6 = v5;
  v30 = a5;
  v10 = *v6;
  v11 = sub_22F73F470();
  v29 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  swift_defaultActor_initialize();
  v17 = [a1 currentToken];
  if (v17)
  {
    v18 = v17;
    v6[18] = a1;
    v6[19] = v17;
    v6[14] = a2;
    v6[15] = a3;
    *(v6 + 136) = 0;
    sub_22F13BA9C(v30, (v6 + 20), &qword_27DAB2D98, &unk_22F7816A8);
    v31 = v10;
    swift_getMetatypeMetadata();
    v27 = v18;
    v26 = a1;
    sub_22F740E90();
    v19 = v28;
    sub_22F73F410();

    sub_22F73F420();
    v20 = v29;
    v21 = *(v29 + 8);
    v21(v13, v11);
    (*(v20 + 16))(v13, v16, v11);
    type metadata accessor for InputStreamTokenStore(0);
    v22 = swift_allocObject();
    swift_defaultActor_initialize();

    sub_22F120ADC(v30, &qword_27DAB2D98, &unk_22F7816A8);
    v21(v19, v11);
    v21(v16, v11);
    v23 = (v22 + OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_token);
    *v23 = 0u;
    v23[1] = 0u;
    (*(v20 + 32))(v22 + OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_url, v13, v11);
    v6[16] = v22;
  }

  else
  {

    sub_22F2886A4();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    type metadata accessor for PhotoKitInputStream();
    swift_defaultActor_destroy();

    sub_22F120ADC(v30, &qword_27DAB2D98, &unk_22F7816A8);
    (*(v29 + 8))(v28, v11);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t sub_22F281FAC(uint64_t a1)
{
  v2[51] = a1;
  v2[52] = v1;
  v3 = sub_22F73EE60();
  v2[53] = v3;
  v2[54] = *(v3 - 8);
  v2[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F28206C, v1, 0);
}

uint64_t sub_22F28206C()
{
  v1 = *(*(v0 + 416) + 128);
  *(v0 + 448) = v1;
  return MEMORY[0x2822009F8](sub_22F282090, v1, 0);
}

uint64_t sub_22F282090()
{
  v1 = sub_22F73F480();
  v3 = v2;
  sub_22F73F310();
  swift_allocObject();
  sub_22F73F300();
  sub_22F288D1C();
  sub_22F73F2F0();
  sub_22F133BF0(v1, v3);

  v4 = *(v0 + 312);
  v5 = *(v0 + 336);
  *(v0 + 480) = *(v0 + 328);
  *(v0 + 488) = v5;
  *(v0 + 464) = v4;
  *(v0 + 456) = 0;
  v6 = *(v0 + 416);

  return MEMORY[0x2822009F8](sub_22F282258, v6, 0);
}

uint64_t sub_22F282258()
{
  v75 = v0;
  v1 = sub_22F284344(*(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));
  if (qword_2810A93F0 != -1)
  {
    swift_once();
  }

  v2 = sub_22F740B90();
  __swift_project_value_buffer(v2, qword_2810B4CB0);
  v3 = sub_22F740B70();
  v4 = sub_22F7415C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v74[0] = v6;
    *v5 = 136315138;
    if (v1)
    {
      v7 = 20302;
    }

    else
    {
      v7 = 5457241;
    }

    if (v1)
    {
      v8 = 0xE200000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    v9 = sub_22F145F20(v7, v8, v74);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_22F0FC000, v3, v4, "[IncrementalRebuild] rebuildNeeded = %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x2319033A0](v6, -1, -1);
    MEMORY[0x2319033A0](v5, -1, -1);
  }

  if ((v1 & 1) == 0)
  {
    sub_22F13BA9C(*(v0 + 416) + 160, v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
    if (*(v0 + 256))
    {
      sub_22F100260((v0 + 232), v0 + 192);
      __swift_project_boxed_opaque_existential_1((v0 + 192), *(v0 + 216));
      v58 = swift_task_alloc();
      *(v0 + 568) = v58;
      *v58 = v0;
      v58[1] = sub_22F28351C;

      return sub_22F20A1B8(&unk_2843DACD8);
    }

    sub_22F120ADC(v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
    v59 = swift_task_alloc();
    *(v0 + 584) = v59;
    *v59 = v0;
    v60 = sub_22F2837B8;
LABEL_47:
    v59[1] = v60;
    v61 = *(v0 + 408);

    return sub_22F28691C(v61);
  }

  if (!*(v0 + 488))
  {
    v17 = *(v0 + 456);
    goto LABEL_16;
  }

  v10 = *(v0 + 464);
  v11 = *(v0 + 472);
  v12 = *(v0 + 456);
  sub_22F73F310();
  swift_allocObject();
  sub_22F15C3C4(v10, v11);

  sub_22F73F300();
  sub_22F288CC8();
  sub_22F73F2F0();
  if (v12)
  {
    v14 = *(v0 + 480);
    v13 = *(v0 + 488);
    v16 = *(v0 + 464);
    v15 = *(v0 + 472);
    sub_22F20AD9C(v16, v15, v14, v13);
    sub_22F20AD9C(v16, v15, v14, v13);

LABEL_27:

    v34 = *(v0 + 8);
LABEL_28:

    return v34();
  }

  v21 = *(v0 + 384);
  *(v0 + 496) = v21;
  v22 = *(v0 + 392);
  v23 = v21;
  v24 = sub_22F740B70();
  v25 = sub_22F7415C0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v74[0] = v27;
    *v26 = 136315138;
    if (v22)
    {
      v28 = 5457241;
    }

    else
    {
      v28 = 20302;
    }

    v73 = v23;
    v29 = v22;
    if (v22)
    {
      v30 = 0xE300000000000000;
    }

    else
    {
      v30 = 0xE200000000000000;
    }

    v31 = sub_22F145F20(v28, v30, v74);
    v22 = v29;
    v23 = v73;

    *(v26 + 4) = v31;
    _os_log_impl(&dword_22F0FC000, v24, v25, "[IncrementalRebuild] rebuildInProgress = %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x2319033A0](v27, -1, -1);
    MEMORY[0x2319033A0](v26, -1, -1);
  }

  v32 = v23;
  v33 = sub_22F284470(v32);
  *(v0 + 504) = v33;
  v43 = v33;
  v44 = *(v0 + 416);

  if (*(v44 + 136))
  {
    v46 = *(v0 + 480);
    v45 = *(v0 + 488);
    v48 = *(v0 + 464);
    v47 = *(v0 + 472);

    sub_22F20AD9C(v48, v47, v46, v45);
    v49 = v48;
    v50 = v47;
    v51 = v46;
    v52 = v45;
LABEL_36:
    sub_22F20AD9C(v49, v50, v51, v52);

    v34 = *(v0 + 8);
    goto LABEL_28;
  }

  v53 = v43;
  v54 = sub_22F740B70();
  v55 = sub_22F7415C0();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 134217984;
    *(v56 + 4) = [v53 changeCount];

    _os_log_impl(&dword_22F0FC000, v54, v55, "[IncrementalRebuild] changeFetchResult.changeCount = %ld", v56, 0xCu);
    MEMORY[0x2319033A0](v56, -1, -1);
  }

  else
  {

    v54 = v53;
  }

  if ([v53 changeCount]< 1)
  {
    if (v22)
    {
      v59 = swift_task_alloc();
      *(v0 + 552) = v59;
      *v59 = v0;
      v60 = sub_22F2831E0;
      goto LABEL_47;
    }

    v66 = *(v0 + 480);
    v67 = *(v0 + 488);
    v69 = *(v0 + 464);
    v68 = *(v0 + 472);

    sub_22F20AD9C(v69, v68, v66, v67);
    v17 = 0;
LABEL_16:
    v18 = *(*(v0 + 416) + 152);
    sub_22F73F350();
    swift_allocObject();
    sub_22F73F340();
    *(v0 + 368) = v18;
    *(v0 + 376) = 0;
    sub_22F288AD0();
    v19 = sub_22F73F330();
    *(v0 + 600) = v19;
    *(v0 + 608) = v20;
    if (v17)
    {
      sub_22F20AD9C(*(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));

      goto LABEL_27;
    }

    v36 = *(v0 + 408);
    v37 = *(v0 + 416);
    v38 = v19;
    v39 = v20;

    v41 = *(v37 + 112);
    v40 = *(v37 + 120);
    *(v0 + 616) = v40;
    *(v0 + 296) = type metadata accessor for PhotoKitInputStream();
    *(v0 + 304) = &off_2843E9240;
    *(v0 + 272) = v37;
    sub_22F15C30C(v0 + 272, v0 + 64);
    v42 = MEMORY[0x277D84F90];
    *(v0 + 16) = MEMORY[0x277D84F90];
    *(v0 + 24) = v42;
    *(v0 + 32) = v38;
    *(v0 + 40) = v39;
    *(v0 + 48) = v41;
    *(v0 + 56) = v40;
    sub_22F15C3C4(v38, v39);

    sub_22F15C3C4(v38, v39);

    __swift_destroy_boxed_opaque_existential_0((v0 + 272));

    return MEMORY[0x2822009F8](sub_22F283AC8, v36, 0);
  }

  v57 = sub_22F284568(v53);
  *(v0 + 512) = v57;
  if (*(v44 + 136))
  {
    v62 = *(v0 + 480);
    v63 = *(v0 + 488);
    v65 = *(v0 + 464);
    v64 = *(v0 + 472);

    sub_22F20AD9C(v65, v64, v62, v63);
    v49 = v65;
    v50 = v64;
    v51 = v62;
    v52 = v63;
    goto LABEL_36;
  }

  if (v22)
  {
    v59 = swift_task_alloc();
    *(v0 + 520) = v59;
    *v59 = v0;
    v60 = sub_22F282C30;
    goto LABEL_47;
  }

  v70 = swift_task_alloc();
  *(v0 + 536) = v70;
  *v70 = v0;
  v70[1] = sub_22F282E9C;
  v71 = *(v0 + 512);
  v72 = *(v0 + 408);

  return sub_22F284884(v71, v72);
}

uint64_t sub_22F282C30()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  v3 = *(v2 + 416);
  if (v0)
  {
    v4 = sub_22F283CD4;
  }

  else
  {
    v4 = sub_22F282D5C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22F282D5C()
{
  if (*(*(v0 + 416) + 136) == 1)
  {
    v1 = *(v0 + 504);
    v2 = *(v0 + 488);
    v3 = *(v0 + 496);
    v5 = *(v0 + 472);
    v4 = *(v0 + 480);
    v6 = *(v0 + 464);

    sub_22F20AD9C(v6, v5, v4, v2);
    sub_22F20AD9C(v6, v5, v4, v2);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 536) = v9;
    *v9 = v0;
    v9[1] = sub_22F282E9C;
    v10 = *(v0 + 512);
    v11 = *(v0 + 408);

    return sub_22F284884(v10, v11);
  }
}

uint64_t sub_22F282E9C()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  v3 = *(v2 + 416);
  if (v0)
  {
    v4 = sub_22F283F7C;
  }

  else
  {
    v4 = sub_22F282FC8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22F282FC8()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  v5 = *(v0 + 472);
  v4 = *(v0 + 480);
  v6 = *(v0 + 464);
  v7 = *(v0 + 416);

  sub_22F20AD9C(v6, v5, v4, v2);
  if (*(v7 + 136))
  {
    sub_22F20AD9C(*(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));

    v8 = *(v0 + 8);
LABEL_5:

    return v8();
  }

  v9 = *(v0 + 544);
  v10 = *(*(v0 + 416) + 152);
  sub_22F73F350();
  swift_allocObject();
  sub_22F73F340();
  *(v0 + 368) = v10;
  *(v0 + 376) = 0;
  sub_22F288AD0();
  v11 = sub_22F73F330();
  *(v0 + 600) = v11;
  *(v0 + 608) = v12;
  if (v9)
  {
    sub_22F20AD9C(*(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));

    v8 = *(v0 + 8);
    goto LABEL_5;
  }

  v14 = *(v0 + 408);
  v15 = *(v0 + 416);
  v16 = v11;
  v17 = v12;

  v19 = *(v15 + 112);
  v18 = *(v15 + 120);
  *(v0 + 616) = v18;
  *(v0 + 296) = type metadata accessor for PhotoKitInputStream();
  *(v0 + 304) = &off_2843E9240;
  *(v0 + 272) = v15;
  sub_22F15C30C(v0 + 272, v0 + 64);
  v20 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v20;
  *(v0 + 32) = v16;
  *(v0 + 40) = v17;
  *(v0 + 48) = v19;
  *(v0 + 56) = v18;
  sub_22F15C3C4(v16, v17);

  sub_22F15C3C4(v16, v17);

  __swift_destroy_boxed_opaque_existential_0((v0 + 272));

  return MEMORY[0x2822009F8](sub_22F283AC8, v14, 0);
}

uint64_t sub_22F2831E0()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  v3 = *(v2 + 416);
  if (v0)
  {
    v4 = sub_22F284224;
  }

  else
  {
    v4 = sub_22F28330C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22F28330C()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v5 = *(v0 + 464);
  v4 = *(v0 + 472);
  v6 = *(v0 + 416);

  sub_22F20AD9C(v5, v4, v2, v3);
  if (*(v6 + 136))
  {
    sub_22F20AD9C(*(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));

    v7 = *(v0 + 8);
LABEL_5:

    return v7();
  }

  v8 = *(v0 + 560);
  v9 = *(*(v0 + 416) + 152);
  sub_22F73F350();
  swift_allocObject();
  sub_22F73F340();
  *(v0 + 368) = v9;
  *(v0 + 376) = 0;
  sub_22F288AD0();
  v10 = sub_22F73F330();
  *(v0 + 600) = v10;
  *(v0 + 608) = v11;
  if (v8)
  {
    sub_22F20AD9C(*(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));

    v7 = *(v0 + 8);
    goto LABEL_5;
  }

  v13 = *(v0 + 408);
  v14 = *(v0 + 416);
  v15 = v10;
  v16 = v11;

  v18 = *(v14 + 112);
  v17 = *(v14 + 120);
  *(v0 + 616) = v17;
  *(v0 + 296) = type metadata accessor for PhotoKitInputStream();
  *(v0 + 304) = &off_2843E9240;
  *(v0 + 272) = v14;
  sub_22F15C30C(v0 + 272, v0 + 64);
  v19 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v19;
  *(v0 + 32) = v15;
  *(v0 + 40) = v16;
  *(v0 + 48) = v18;
  *(v0 + 56) = v17;
  sub_22F15C3C4(v15, v16);

  sub_22F15C3C4(v15, v16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 272));

  return MEMORY[0x2822009F8](sub_22F283AC8, v13, 0);
}

uint64_t sub_22F28351C()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  v3 = *(v2 + 416);
  if (v0)
  {
    v4 = sub_22F283740;
  }

  else
  {
    v4 = sub_22F283648;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22F283648()
{
  if (*(v0[52] + 136))
  {
    sub_22F20AD9C(v0[58], v0[59], v0[60], v0[61]);
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);

    v1 = v0[1];

    return v1();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
    v3 = swift_task_alloc();
    v0[73] = v3;
    *v3 = v0;
    v3[1] = sub_22F2837B8;
    v4 = v0[51];

    return sub_22F28691C(v4);
  }
}

uint64_t sub_22F283740()
{
  sub_22F20AD9C(v0[58], v0[59], v0[60], v0[61]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22F2837B8()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  v3 = *(v2 + 416);
  if (v0)
  {
    v4 = sub_22F2842D4;
  }

  else
  {
    v4 = sub_22F2838E4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22F2838E4()
{
  v1 = *(v0 + 416);
  if (*(v1 + 136))
  {
    sub_22F20AD9C(*(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));

    v2 = *(v0 + 8);
LABEL_5:

    return v2();
  }

  v3 = *(v0 + 592);
  v4 = *(v1 + 152);
  sub_22F73F350();
  swift_allocObject();
  sub_22F73F340();
  *(v0 + 368) = v4;
  *(v0 + 376) = 0;
  sub_22F288AD0();
  v5 = sub_22F73F330();
  *(v0 + 600) = v5;
  *(v0 + 608) = v6;
  if (v3)
  {
    sub_22F20AD9C(*(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));

    v2 = *(v0 + 8);
    goto LABEL_5;
  }

  v8 = *(v0 + 408);
  v9 = *(v0 + 416);
  v10 = v5;
  v11 = v6;

  v13 = *(v9 + 112);
  v12 = *(v9 + 120);
  *(v0 + 616) = v12;
  *(v0 + 296) = type metadata accessor for PhotoKitInputStream();
  *(v0 + 304) = &off_2843E9240;
  *(v0 + 272) = v9;
  sub_22F15C30C(v0 + 272, v0 + 64);
  v14 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v14;
  *(v0 + 32) = v10;
  *(v0 + 40) = v11;
  *(v0 + 48) = v13;
  *(v0 + 56) = v12;
  sub_22F15C3C4(v10, v11);

  sub_22F15C3C4(v10, v11);

  __swift_destroy_boxed_opaque_existential_0((v0 + 272));

  return MEMORY[0x2822009F8](sub_22F283AC8, v8, 0);
}

uint64_t sub_22F283AC8()
{
  v1 = *(v0 + 408);
  sub_22F20AC1C(v0 + 16, v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22F13EEEC(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 112) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_22F13EEEC((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 416);
  *(v2 + 2) = v5 + 1;
  v7 = &v2[88 * v5];
  v8 = *(v0 + 120);
  *(v7 + 2) = *(v0 + 104);
  *(v7 + 3) = v8;
  v9 = *(v0 + 136);
  v10 = *(v0 + 152);
  v11 = *(v0 + 168);
  *(v7 + 14) = *(v0 + 184);
  *(v7 + 5) = v10;
  *(v7 + 6) = v11;
  *(v7 + 4) = v9;
  *(v1 + 112) = v2;
  swift_endAccess();
  sub_22F20AC78(v0 + 16);

  return MEMORY[0x2822009F8](sub_22F283C10, v6, 0);
}

uint64_t sub_22F283C10()
{
  v1 = v0[76];
  v2 = v0[75];
  v4 = v0[60];
  v3 = v0[61];
  v6 = v0[58];
  v5 = v0[59];
  sub_22F133BF0(v2, v1);

  sub_22F133BF0(v2, v1);
  sub_22F20AD9C(v6, v5, v4, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22F283CD4()
{
  v1 = *(v0 + 528);
  *(v0 + 400) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
  v3 = swift_dynamicCast();
  v5 = *(v0 + 496);
  v4 = *(v0 + 504);
  v7 = *(v0 + 480);
  v6 = *(v0 + 488);
  v9 = *(v0 + 464);
  v8 = *(v0 + 472);
  if (v3 && *(v0 + 377) == 1)
  {

    sub_22F20AD9C(v9, v8, v7, v6);
    sub_22F13BA9C(*(v0 + 416) + 160, v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
    if (*(v0 + 256))
    {
      sub_22F100260((v0 + 232), v0 + 192);
      __swift_project_boxed_opaque_existential_1((v0 + 192), *(v0 + 216));
      v10 = swift_task_alloc();
      *(v0 + 568) = v10;
      *v10 = v0;
      v10[1] = sub_22F28351C;

      return sub_22F20A1B8(&unk_2843DACD8);
    }

    else
    {
      sub_22F120ADC(v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
      v13 = swift_task_alloc();
      *(v0 + 584) = v13;
      *v13 = v0;
      v13[1] = sub_22F2837B8;
      v14 = *(v0 + 408);

      return sub_22F28691C(v14);
    }
  }

  else
  {

    swift_willThrow();
    sub_22F20AD9C(v9, v8, v7, v6);
    sub_22F20AD9C(v9, v8, v7, v6);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_22F283F7C()
{
  v1 = *(v0 + 544);
  *(v0 + 400) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
  v3 = swift_dynamicCast();
  v5 = *(v0 + 496);
  v4 = *(v0 + 504);
  v7 = *(v0 + 480);
  v6 = *(v0 + 488);
  v9 = *(v0 + 464);
  v8 = *(v0 + 472);
  if (v3 && *(v0 + 377) == 1)
  {

    sub_22F20AD9C(v9, v8, v7, v6);
    sub_22F13BA9C(*(v0 + 416) + 160, v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
    if (*(v0 + 256))
    {
      sub_22F100260((v0 + 232), v0 + 192);
      __swift_project_boxed_opaque_existential_1((v0 + 192), *(v0 + 216));
      v10 = swift_task_alloc();
      *(v0 + 568) = v10;
      *v10 = v0;
      v10[1] = sub_22F28351C;

      return sub_22F20A1B8(&unk_2843DACD8);
    }

    else
    {
      sub_22F120ADC(v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
      v13 = swift_task_alloc();
      *(v0 + 584) = v13;
      *v13 = v0;
      v13[1] = sub_22F2837B8;
      v14 = *(v0 + 408);

      return sub_22F28691C(v14);
    }
  }

  else
  {

    swift_willThrow();
    sub_22F20AD9C(v9, v8, v7, v6);
    sub_22F20AD9C(v9, v8, v7, v6);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_22F284224()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v5 = *(v0 + 464);
  v4 = *(v0 + 472);

  sub_22F20AD9C(v5, v4, v2, v3);
  sub_22F20AD9C(v5, v4, v2, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22F2842D4()
{
  sub_22F20AD9C(v0[58], v0[59], v0[60], v0[61]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22F284344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (*(v4 + 112) == a3 && *(v4 + 120) == a4)
    {
      return 1;
    }

    else
    {

      return sub_22F742040();
    }
  }

  else
  {
    if (qword_2810A93F0 != -1)
    {
      swift_once();
    }

    v7 = sub_22F740B90();
    __swift_project_value_buffer(v7, qword_2810B4CB0);
    v8 = sub_22F740B70();
    v9 = sub_22F7415C0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22F0FC000, v8, v9, "[IncrementalRebuild] No token persisted yet", v10, 2u);
      MEMORY[0x2319033A0](v10, -1, -1);
    }

    return 0;
  }
}

id sub_22F284470(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_allocWithZone(MEMORY[0x277CD9928]) init];
  [v3 setToken_];
  v4 = *(v1 + 144);
  v9[0] = 0;
  v5 = [v4 fetchPersistentChangesWithRequest:v3 error:v9];
  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_22F73F370();

    swift_willThrow();
  }

  return v5;
}

id sub_22F284568(void *a1)
{
  v2 = v1;
  v15 = MEMORY[0x277D84F90];
  v14 = 1;
  v4 = swift_allocObject();
  v4[2] = &v14;
  v4[3] = &v15;
  v4[4] = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_22F288CA4;
  *(v5 + 24) = v4;
  v13[4] = sub_22F1F68E8;
  v13[5] = v5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_22F107E24;
  v13[3] = &block_descriptor_16;
  v6 = _Block_copy(v13);

  [a1 enumeratePHChangesWithBlock_];
  _Block_release(v6);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    if (v14 == 1)
    {
      v8 = objc_opt_self();
      sub_22F120634(0, &qword_27DAB2DA8, 0x277CD9830);

      v9 = sub_22F741160();

      v10 = [v8 mergePersistedChanges_];

      if (v10)
      {

        return v10;
      }

      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    sub_22F2886A4();
    swift_allocError();
    *v12 = v11;
    swift_willThrow();
    v10 = v15;

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F2847CC(void *a1, _BYTE *a2, _BYTE *a3, void *a4, uint64_t a5)
{
  result = [a1 hasIncrementalChanges];
  if ((result & 1) == 0)
  {
    *a3 = 0;
LABEL_7:
    *a2 = 1;
    return result;
  }

  v11 = a1;
  MEMORY[0x231900D00]();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22F7411C0();
  }

  result = sub_22F741220();
  if (*(a5 + 136) == 1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22F284884(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;

  return MEMORY[0x2822009F8](sub_22F284918, v2, 0);
}

uint64_t sub_22F284918()
{
  v157 = v0;
  v156[1] = *MEMORY[0x277D85DE8];
  v2 = [*(v0 + 272) changeToken];
  *(v0 + 296) = v2;
  if (!v2)
  {
    sub_22F2886A4();
    swift_allocError();
    *v123 = 3;
    swift_willThrow();
LABEL_101:
    v126 = *(v0 + 8);
    goto LABEL_102;
  }

  v137 = v2;
  v3 = MEMORY[0x277D84F90];
  v4 = *(v0 + 288);
  *(v0 + 256) = MEMORY[0x277D84F90];
  *(v0 + 264) = v3;
  v5 = [*(v4 + 144) managedObjectContext];
  *(v0 + 304) = v5;
  v139 = v5;
  if (!v5)
  {
    sub_22F2886A4();
    swift_allocError();
    *v124 = 5;
    swift_willThrow();

    goto LABEL_101;
  }

  v7 = 0;
  v153 = (v0 + 16);
  v144 = *(v0 + 288);
  *&v6 = 136315394;
  v138 = v6;
  v150 = v0;
  do
  {
    v8 = *(&unk_2843DACB0 + v7 + 32);
    v146 = v7;
    if (v8 == 1)
    {
      v9 = &qword_2810A8EA0;
      v10 = 0x277CD9938;
      goto LABEL_8;
    }

    if (v8 != 2)
    {
      sub_22F2886A4();
      swift_allocError();
      *v127 = 4;
      swift_willThrow();

      goto LABEL_101;
    }

    v9 = &qword_2810A8EE0;
    v10 = 0x277CD97A8;
LABEL_8:
    v11 = sub_22F120634(0, v9, v10);
    v12 = *(v0 + 272);
    v142 = v11;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v13);
    v15 = [v12 insertedObjectIDs];
    v16 = sub_22F120634(0, &qword_2810A9100, 0x277CBE448);
    sub_22F288C08();
    sub_22F741420();

    v17 = sub_22F741410();

    v18 = v139;
    v151 = ObjCClassFromMetadata;
    v143 = v18;
    v19 = [ObjCClassFromMetadata objectIDsMatchingEntityFromObjectIDs:v17 context:?];

    if (!v19)
    {
      __break(1u);
LABEL_112:
      __break(1u);
    }

    v20 = sub_22F741420();

    if ((v20 & 0xC000000000000001) != 0)
    {
      v21 = sub_22F741A00();
    }

    else
    {
      v21 = *(v20 + 16);
    }

    v152 = v8;
    v145 = v16;
    if (v21 >= 1)
    {
      v22 = sub_22F10AC68(v20);
      sub_22F285D7C(v8, v22, v23);
      v1 = 0;
      v25 = v24;

      if (qword_2810A93F0 != -1)
      {
        swift_once();
      }

      v26 = sub_22F740B90();
      __swift_project_value_buffer(v26, qword_2810B4CB0);
      swift_bridgeObjectRetain_n();
      v27 = sub_22F740B70();
      v28 = sub_22F7415C0();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v156[0] = v154;
        *v29 = v138;
        *v153 = v142;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2DA0, &unk_22F7816C8);
        v30 = sub_22F740E90();
        v32 = sub_22F145F20(v30, v31, v156);
        v8 = v152;

        *(v29 + 4) = v32;
        *(v29 + 12) = 2048;
        v33 = *(v25 + 16);

        *(v29 + 14) = v33;
        v1 = 0;
        v0 = v150;

        _os_log_impl(&dword_22F0FC000, v27, v28, "[IncrementalRebuild] Number of Entity Change Upserts from PhotoKit Insertions for %s = %ld", v29, 0x16u);
        v34 = v154;
        __swift_destroy_boxed_opaque_existential_0(v154);
        MEMORY[0x2319033A0](v34, -1, -1);
        MEMORY[0x2319033A0](v29, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      sub_22F14507C(v25);
    }

    if (*(v144 + 136))
    {
      v125 = v143;

      goto LABEL_96;
    }

    v35 = [*(v0 + 272) updatedObjectIDs];
    sub_22F741420();

    v36 = sub_22F741410();

    v37 = v143;
    v38 = [v151 objectIDsMatchingEntityFromObjectIDs:v36 context:v143];

    if (!v38)
    {
      goto LABEL_112;
    }

    v39 = sub_22F741420();

    v42 = &unk_2843DAC70;
    if (v8 == 1)
    {
      v42 = &unk_2843DAC20;
    }

    v149 = v42;
    v155 = MEMORY[0x277D84F90];
    if ((v39 & 0xC000000000000001) != 0)
    {
      sub_22F7419C0();
      isUniquelyReferenced_nonNull_native = sub_22F741470();
      v39 = *(v0 + 192);
      v43 = *(v0 + 200);
      v44 = *(v0 + 208);
      v45 = *(v0 + 216);
      v46 = *(v0 + 224);
    }

    else
    {
      v45 = 0;
      v47 = -1 << *(v39 + 32);
      v43 = v39 + 56;
      v44 = ~v47;
      v48 = -v47;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      else
      {
        v49 = -1;
      }

      v46 = (v49 & *(v39 + 56));
    }

    ++v146;
    v140 = v44;
    v50 = (v44 + 64) >> 6;
    v141 = MEMORY[0x277D84F90];
    v147 = v39;
    v148 = v43;
LABEL_30:
    v51 = v45;
    while ((v39 & 0x8000000000000000) == 0)
    {
      v52 = v51;
      v53 = v46;
      v45 = v51;
      if (!v46)
      {
        while (1)
        {
          v45 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            break;
          }

          if (v45 >= v50)
          {
            goto LABEL_52;
          }

          v53 = *(v43 + 8 * v45);
          ++v52;
          if (v53)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        v129 = isUniquelyReferenced_nonNull_native;
        v130 = v41;
        v131 = *(v0 + 280);
        v132 = *(v0 + 288);

        v134 = *(v132 + 112);
        v133 = *(v132 + 120);
        v135 = *(v0 + 264);
        *(v0 + 88) = type metadata accessor for PhotoKitInputStream();
        *(v0 + 96) = &off_2843E9240;
        *(v0 + 56) = v133;
        *(v0 + 64) = v132;
        *(v0 + 16) = v46;
        *(v0 + 24) = v135;
        *(v0 + 32) = v129;
        *(v0 + 40) = v130;
        *(v0 + 48) = v134;

        return MEMORY[0x2822009F8](sub_22F285B6C, v131, 0);
      }

LABEL_37:
      v54 = ((v53 - 1) & v53);
      v55 = *(*(v39 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v53)))));
      if (!v55)
      {
        goto LABEL_52;
      }

LABEL_41:
      v154 = v54;
      v58 = [*(v0 + 272) changedPropertyNamesForObjectID:v55 entityClass:v151];
      v59 = sub_22F741420();

      v60 = v149;
      *(v0 + 16) = v149;
      v61 = v60;
      LOBYTE(v60) = *(v59 + 32);
      v62 = v60 & 0x3F;
      v63 = 1 << v60;
      isStackAllocationSafe = swift_task_alloc();
      *(isStackAllocationSafe + 16) = v153;
      *(isStackAllocationSafe + 24) = v59;
      v65 = (v63 + 63) >> 6;
      if (v62 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        MEMORY[0x28223BE20](isStackAllocationSafe);
        v67 = &v136 - ((v66 + 15) & 0x3FFFFFFFFFFFFFF0);
        bzero(v67, v66);
        sub_22F2881A0(v67, v65, v61, v59);
        v1 = 0;
        v69 = v68;
      }

      else
      {
        v71 = swift_slowAlloc();
        bzero(v71, 8 * v65);
        sub_22F288C70(v71, v65, v156);
        v1 = 0;
        v69 = v156[0];

        MEMORY[0x2319033A0](v71, -1, -1);
      }

      v0 = v150;
      v39 = v147;
      v70 = *(v69 + 16);

      v8 = v152;
      if (v70 || v152 == 2 && ([*(v0 + 272) trashedStateChangedForPHAssetOID_] & 1) != 0)
      {
        v72 = v55;
        MEMORY[0x231900D00]();
        if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22F7411C0();
        }

        sub_22F741220();

        v46 = v154;
        v141 = v155;
        v43 = v148;
        goto LABEL_30;
      }

      v51 = v45;
      v46 = v154;
      v43 = v148;
    }

    v56 = sub_22F741A40();
    if (v56)
    {
      *(v0 + 104) = v56;
      v57 = v153;
      swift_dynamicCast();
      v55 = *v57;
      v45 = v51;
      v54 = v46;
      if (v55)
      {
        goto LABEL_41;
      }
    }

LABEL_52:

    sub_22F0FF590(v39);
    v74 = v141;
    if (v141 >> 62)
    {
      if (sub_22F741A00() < 1)
      {
        goto LABEL_64;
      }

LABEL_54:
      sub_22F285D7C(v8, v74, v73);
      v1 = 0;
      v76 = v75;
      v78 = v77;

      if (qword_2810A93F0 != -1)
      {
        swift_once();
      }

      v79 = sub_22F740B90();
      v80 = __swift_project_value_buffer(v79, qword_2810B4CB0);
      swift_bridgeObjectRetain_n();
      v81 = sub_22F740B70();
      v82 = sub_22F7415C0();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v154 = v80;
        v84 = v83;
        v85 = swift_slowAlloc();
        v156[0] = v85;
        *v84 = v138;
        *v153 = v142;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2DA0, &unk_22F7816C8);
        v86 = sub_22F740E90();
        v88 = sub_22F145F20(v86, v87, v156);

        *(v84 + 4) = v88;
        *(v84 + 12) = 2048;
        v89 = *(v76 + 16);

        *(v84 + 14) = v89;

        _os_log_impl(&dword_22F0FC000, v81, v82, "[IncrementalRebuild] Number of Entity Change Upserts from PhotoKit Updates for %s = %ld", v84, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v85);
        MEMORY[0x2319033A0](v85, -1, -1);
        MEMORY[0x2319033A0](v84, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      swift_bridgeObjectRetain_n();
      v90 = sub_22F740B70();
      v91 = sub_22F7415C0();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v156[0] = v93;
        *v92 = v138;
        *v153 = v142;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2DA0, &unk_22F7816C8);
        v94 = sub_22F740E90();
        v96 = sub_22F145F20(v94, v95, v156);

        *(v92 + 4) = v96;
        *(v92 + 12) = 2048;
        v97 = *(v78 + 16);

        *(v92 + 14) = v97;

        _os_log_impl(&dword_22F0FC000, v90, v91, "[IncrementalRebuild] Number of Entity Change Deletes from PhotoKit Updates for %s = %ld", v92, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v93);
        MEMORY[0x2319033A0](v93, -1, -1);
        MEMORY[0x2319033A0](v92, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      sub_22F14507C(v76);
      sub_22F14507C(v78);
    }

    else
    {
      if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
        goto LABEL_54;
      }

LABEL_64:
    }

    if ((*(v144 + 136) & 1) == 0)
    {
      v98 = [*(v0 + 272) deletedLocalIdentifiersForEntityClass_];
      v99 = sub_22F741420();

      if (v99[2])
      {
        if (qword_2810A93F0 != -1)
        {
          swift_once();
        }

        v100 = sub_22F740B90();
        __swift_project_value_buffer(v100, qword_2810B4CB0);
        swift_bridgeObjectRetain_n();
        v101 = sub_22F740B70();
        v39 = sub_22F7415C0();
        if (os_log_type_enabled(v101, v39))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v156[0] = v103;
          *v102 = v138;
          *v153 = v142;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2DA0, &unk_22F7816C8);
          v104 = sub_22F740E90();
          v106 = sub_22F145F20(v104, v105, v156);

          *(v102 + 4) = v106;
          *(v102 + 12) = 2048;
          v107 = v99[2];

          *(v102 + 14) = v107;

          _os_log_impl(&dword_22F0FC000, v101, v39, "[IncrementalRebuild] Number of Entity Change Deletes from PhotoKit Deletes for %s = %ld", v102, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v103);
          MEMORY[0x2319033A0](v103, -1, -1);
          MEMORY[0x2319033A0](v102, -1, -1);
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v108 = 0;
        v46 = v99 + 7;
        v109 = -1 << *(v99 + 32);
        if (-v109 < 64)
        {
          v110 = ~(-1 << -v109);
        }

        else
        {
          v110 = -1;
        }

        v111 = v110 & v99[7];
        v112 = (63 - v109) >> 6;
        v154 = v99;
        if (v111)
        {
          while (1)
          {
            v113 = v0;
LABEL_82:
            v115 = (v99[6] + ((v108 << 10) | (16 * __clz(__rbit64(v111)))));
            v117 = *v115;
            v116 = v115[1];
            v118 = *(v113 + 264);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v119 = v1;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_22F13EDE0(0, *(v118 + 16) + 1, 1, v118);
              v118 = isUniquelyReferenced_nonNull_native;
            }

            v121 = *(v118 + 16);
            v120 = *(v118 + 24);
            v39 = v121 + 1;
            if (v121 >= v120 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_22F13EDE0((v120 > 1), v121 + 1, 1, v118);
              v118 = isUniquelyReferenced_nonNull_native;
            }

            *(v118 + 16) = v39;
            v122 = v118 + 32 * v121;
            *(v122 + 32) = v152;
            v111 &= v111 - 1;
            *(v122 + 40) = v117;
            *(v122 + 48) = v116;
            *(v122 + 56) = MEMORY[0x277D84F98];
            v0 = v150;
            *(v150 + 264) = v118;
            v1 = v119;
            v99 = v154;
            if (!v111)
            {
              goto LABEL_78;
            }
          }
        }

        while (1)
        {
LABEL_78:
          v114 = v108 + 1;
          if (__OFADD__(v108, 1))
          {
            goto LABEL_106;
          }

          if (v114 >= v112)
          {
            break;
          }

          v111 = v46[v114];
          ++v108;
          if (v111)
          {
            v113 = v0;
            v108 = v114;
            goto LABEL_82;
          }
        }
      }

      else
      {
      }

      v7 = v146;
      if ((*(v144 + 136) & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_110;
  }

  while (v146 != 2);
  v46 = *(v0 + 256);
  if (v46[2] || *(*(v0 + 264) + 16))
  {
    sub_22F73F350();
    swift_allocObject();
    v39 = v137;
    sub_22F73F340();
    *(v0 + 16) = v39;
    *(v0 + 24) = 0;
    sub_22F288AD0();
    isUniquelyReferenced_nonNull_native = sub_22F73F330();
    goto LABEL_107;
  }

LABEL_110:

LABEL_96:

  v126 = *(v0 + 8);
LABEL_102:

  return v126();
}

uint64_t sub_22F285B6C()
{
  v1 = *(v0 + 280);
  sub_22F20AC1C(v0 + 16, v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22F13EEEC(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 112) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_22F13EEEC((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 288);
  *(v2 + 2) = v5 + 1;
  v7 = &v2[88 * v5];
  v8 = *(v0 + 120);
  *(v7 + 2) = *(v0 + 104);
  *(v7 + 3) = v8;
  v9 = *(v0 + 136);
  v10 = *(v0 + 152);
  v11 = *(v0 + 168);
  *(v7 + 14) = *(v0 + 184);
  *(v7 + 5) = v10;
  *(v7 + 6) = v11;
  *(v7 + 4) = v9;
  *(v1 + 112) = v2;
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_22F285CD8, v6, 0);
}

uint64_t sub_22F285CD8()
{
  v1 = *(v0 + 304);

  sub_22F20AC78(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

void sub_22F285D7C(unint64_t a1, unint64_t a2, __n128 a3)
{
  v3 = a2;
  if (a2 >> 62)
  {
    goto LABEL_65;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return;
  }

LABEL_3:
  if (!a1)
  {
    sub_22F2886A4();
    swift_allocError();
    *v39 = 4;
    swift_willThrow();
    return;
  }

  if (a1 == 1)
  {
    v4 = *(v112 + 144);
    v5 = [v4 librarySpecificFetchOptions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22F771340;
    *(v6 + 32) = sub_22F740E20();
    *(v6 + 40) = v7;
    v8 = sub_22F741160();

    [v5 setFetchPropertySets_];

    [v5 setPersonContext_];
    v9 = objc_opt_self();
    sub_22F120634(0, &qword_2810A9100, 0x277CBE448);
    v10 = sub_22F741160();
    v11 = [v9 fetchPersonsWithObjectIDs:v10 options:v5];

    if (!v11)
    {
      sub_22F2886A4();
      swift_allocError();
      *v67 = 6;
      swift_willThrow();

      return;
    }

    v12 = v11;
    v13 = [v11 count];
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }

    v14 = v13;
    v97 = v4;
    v98 = v9;
    v99 = v5;
    if (!v13)
    {
      v16 = v12;
LABEL_45:
      v96 = v16;
      v69 = [v97 librarySpecificFetchOptions];
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_22F771340;
      *(v70 + 32) = sub_22F740E20();
      *(v70 + 40) = v71;
      v72 = sub_22F741160();

      [v69 setFetchPropertySets_];

      [v69 setPersonContext_];
      [v69 setIncludeTorsoOnlyPerson_];
      sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_22F770DF0;
      v74 = MEMORY[0x277D83B88];
      v75 = MEMORY[0x277D83C10];
      *(v73 + 56) = MEMORY[0x277D83B88];
      *(v73 + 64) = v75;
      *(v73 + 32) = -2;
      *(v73 + 96) = v74;
      *(v73 + 104) = v75;
      *(v73 + 72) = -1;
      v76 = sub_22F741560();
      [v69 setPredicate_];

      v77 = sub_22F741160();
      v91 = [v98 fetchPersonsWithObjectIDs:v77 options:v69];

      if (!v91)
      {

        sub_22F2886A4();
        swift_allocError();
        *v92 = 6;
        swift_willThrow();

        return;
      }

      v104 = v69;
      v78 = [v91 count];
      if ((v78 & 0x8000000000000000) == 0)
      {
        v79 = v78;
        v80 = 0;
        v81 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v79 == v80)
          {

            v90 = v104;
            goto LABEL_61;
          }

          if (__OFADD__(v80, 1))
          {
            break;
          }

          v82 = [v91 objectAtIndexedSubscript_];
          v83 = [v82 localIdentifier];
          v84 = sub_22F740E20();
          v86 = v85;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_22F13EDE0(0, *(v81 + 2) + 1, 1, v81);
          }

          v88 = *(v81 + 2);
          v87 = *(v81 + 3);
          if (v88 >= v87 >> 1)
          {
            v81 = sub_22F13EDE0((v87 > 1), v88 + 1, 1, v81);
          }

          *(v81 + 2) = v88 + 1;
          v89 = &v81[32 * v88];
          v89[32] = 1;
          *(v89 + 5) = v84;
          *(v89 + 6) = v86;
          *(v89 + 7) = MEMORY[0x277D84F98];
          ++v80;
          if (*(v112 + 136) == 1)
          {

            v93 = v99;
            goto LABEL_62;
          }
        }

        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

      __break(1u);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FE8, &unk_22F781690);
    v3 = 0;
    v15 = MEMORY[0x277D84F90];
    v16 = v12;
    v101 = v14;
    while (1)
    {
      v17 = v16;
      v18 = [v16 objectAtIndexedSubscript_];
      v19 = [v18 localIdentifier];
      v20 = sub_22F740E20();
      v22 = v21;

      v110[0] = 1701667182;
      v110[1] = 0xE400000000000000;
      v23 = [v18 name];
      if (v23)
      {
        v24 = v23;
        v25 = sub_22F740E20();
        v27 = v26;

        v111 = MEMORY[0x277D837D0];
        if (v27)
        {
          goto LABEL_14;
        }

        v25 = 0;
      }

      else
      {
        v25 = 0;
        v111 = MEMORY[0x277D837D0];
      }

      v27 = 0xE000000000000000;
LABEL_14:
      v110[2] = v25;
      v110[3] = v27;
      v28 = sub_22F741DF0();

      sub_22F13BA9C(v110, &v107, &unk_27DAB0FF0, &unk_22F771410);
      v29 = v107;
      v30 = v108;
      a1 = sub_22F1229E8(v107, v108);
      if (v31)
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        v94 = a1;
        v95 = sub_22F741A00();
        LOBYTE(a1) = v94;
        if (v95 < 1)
        {
          return;
        }

        goto LABEL_3;
      }

      v28[(a1 >> 6) + 8] |= 1 << a1;
      v32 = (v28[6] + 16 * a1);
      *v32 = v29;
      v32[1] = v30;
      LOBYTE(a1) = sub_22F1534F8(&v109, (v28[7] + 32 * a1));
      v33 = v28[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_64;
      }

      v28[2] = v35;

      sub_22F120ADC(v110, &unk_27DAB0FF0, &unk_22F771410);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_22F13EDE0(0, *(v15 + 2) + 1, 1, v15);
      }

      v37 = *(v15 + 2);
      v36 = *(v15 + 3);
      v105 = v15;
      if (v37 >= v36 >> 1)
      {
        v105 = sub_22F13EDE0((v36 > 1), v37 + 1, 1, v15);
      }

      v15 = v105;
      *(v105 + 2) = v37 + 1;
      v38 = &v105[32 * v37];
      v38[32] = 1;
      *(v38 + 5) = v20;
      *(v38 + 6) = v22;
      *(v38 + 7) = v28;
      if (*(v112 + 136))
      {

        return;
      }

      ++v3;
      v16 = v17;
      if (v101 == v3)
      {
        goto LABEL_45;
      }
    }
  }

  v40 = [*(v112 + 144) librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_22F771340;
  *(v41 + 32) = sub_22F740E20();
  *(v41 + 40) = v42;
  v43 = sub_22F741160();

  [v40 setFetchPropertySets_];

  v44 = objc_opt_self();
  sub_22F16165C(v3);
  v45 = sub_22F741160();

  v46 = [v44 fetchAssetsWithObjectIDs:v45 options:v40];

  if (!v46)
  {
    sub_22F2886A4();
    swift_allocError();
    *v68 = 6;
    swift_willThrow();

    return;
  }

  v47 = [v46 count];
  if ((v47 & 0x8000000000000000) != 0)
  {
    goto LABEL_69;
  }

  v48 = v47;
  if (!v47)
  {

    return;
  }

  v100 = v40;
  v49 = 0;
  v50 = MEMORY[0x277D84F90];
  v103 = v46;
  v106 = MEMORY[0x277D84F90];
  v51 = v46;
  v102 = v48;
  do
  {
    v52 = [v51 objectAtIndexedSubscript_];
    if (([v52 isTrashed] & 1) != 0 || objc_msgSend(v52, sel_isHidden))
    {
      v53 = [v52 localIdentifier];
      v54 = sub_22F740E20();
      v56 = v55;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_22F13EDE0(0, *(v50 + 2) + 1, 1, v50);
      }

      v58 = *(v50 + 2);
      v57 = *(v50 + 3);
      v59 = v58 + 1;
      if (v58 >= v57 >> 1)
      {
        v60 = sub_22F13EDE0((v57 > 1), v58 + 1, 1, v50);
        v61 = MEMORY[0x277D84F98];
        v50 = v60;
      }

      else
      {
        v60 = v50;
        v61 = MEMORY[0x277D84F98];
      }
    }

    else
    {
      v62 = [v52 localIdentifier];
      v54 = sub_22F740E20();
      v56 = v63;

      sub_22F2886F8(v52);
      v61 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v106 = sub_22F13EDE0(0, *(v106 + 2) + 1, 1, v106);
      }

      v60 = v106;
      v58 = *(v106 + 2);
      v65 = *(v106 + 3);
      v59 = v58 + 1;
      if (v58 >= v65 >> 1)
      {
        v60 = sub_22F13EDE0((v65 > 1), v58 + 1, 1, v106);
        v106 = v60;
      }
    }

    *(v60 + 2) = v59;
    v66 = &v60[32 * v58];
    v66[32] = 2;
    *(v66 + 5) = v54;
    *(v66 + 6) = v56;
    *(v66 + 7) = v61;
    if (*(v112 + 136))
    {

      v93 = v100;
LABEL_62:

      return;
    }

    ++v49;
    v51 = v103;
  }

  while (v102 != v49);
  v90 = v100;
  v91 = v103;
LABEL_61:
}

uint64_t sub_22F28691C(uint64_t a1)
{
  *(v2 + 320) = a1;
  *(v2 + 328) = v1;
  return MEMORY[0x2822009F8](sub_22F28693C, v1, 0);
}

uint64_t sub_22F28693C()
{
  v1 = *(*(v0 + 328) + 152);
  sub_22F73F350();
  swift_allocObject();
  sub_22F73F340();
  *(v0 + 296) = v1;
  *(v0 + 304) = 1;
  sub_22F288AD0();
  *(v0 + 336) = sub_22F73F330();
  *(v0 + 344) = v2;
  v5 = *(v0 + 328);

  *(v0 + 352) = *(v5 + 112);
  *(v0 + 360) = *(v5 + 120);
  *(v0 + 305) = 0;
  v6 = *(v0 + 328);
  *(v0 + 306) = byte_2843DAC18;

  sub_22F13BA9C(v6 + 160, v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
  if (*(v0 + 256))
  {
LABEL_6:
    sub_22F100260((v0 + 232), v0 + 192);
    *(v0 + 368) = *__swift_project_boxed_opaque_existential_1((v0 + 192), *(v0 + 216));
    v7 = sub_22F286CC0;
    v8 = 0;
LABEL_7:

    return MEMORY[0x2822009F8](v7, v8, 0);
  }

  else
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_22F120ADC(v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
      sub_22F287A08(*(v0 + 306), v10);
      *(v0 + 440) = v11;
      *(v0 + 448) = v9;
      if (v9)
      {
        sub_22F133BF0(*(v0 + 336), *(v0 + 344));

        v3 = *(v0 + 8);
        goto LABEL_2;
      }

      v12 = v11;
      v13 = *(v0 + 328);

      if (*(v13 + 136))
      {
        break;
      }

      v14 = *(v12 + 16);
      *(v0 + 456) = v14;
      if (v14)
      {
        *(v0 + 464) = 0;
        v17 = *(v0 + 440);
        v26 = *(v0 + 352);
        v27 = *(v0 + 360);
        v19 = *(v0 + 336);
        v18 = *(v0 + 344);
        v20 = *(v0 + 328);
        v28 = *(v0 + 320);
        v21 = *(v17 + 32);
        v22 = *(v17 + 40);
        v23 = *(v17 + 48);
        v24 = *(v17 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0CE0, &qword_22F771070);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_22F771340;
        *(v25 + 32) = v21;
        *(v25 + 40) = v22;
        *(v25 + 48) = v23;
        *(v25 + 56) = v24;
        *(v0 + 88) = type metadata accessor for PhotoKitInputStream();
        *(v0 + 96) = &off_2843E9240;
        *(v0 + 16) = v25;
        *(v0 + 24) = v10;
        *(v0 + 32) = v19;
        *(v0 + 40) = v18;
        *(v0 + 48) = v26;
        *(v0 + 56) = v27;
        *(v0 + 64) = v20;

        sub_22F15C3C4(v19, v18);

        v7 = sub_22F2875DC;
        v8 = v28;
        goto LABEL_7;
      }

      v15 = *(v0 + 328);

      if (*(v15 + 136) & 1) != 0 || (*(v0 + 305))
      {
        sub_22F133BF0(*(v0 + 336), *(v0 + 344));
        goto LABEL_21;
      }

      v9 = *(v0 + 448);
      *(v0 + 305) = 1;
      v16 = *(v0 + 328);
      *(v0 + 306) = byte_2843DAC19;
      sub_22F13BA9C(v16 + 160, v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
      if (*(v0 + 256))
      {
        goto LABEL_6;
      }
    }

    sub_22F133BF0(*(v0 + 336), *(v0 + 344));

LABEL_21:

    v3 = *(v0 + 8);
LABEL_2:

    return v3();
  }
}

uint64_t sub_22F286CC0()
{
  if (*(v0 + 306))
  {
    v1 = *(v0 + 368);
    v2 = objc_allocWithZone(MEMORY[0x277D22BE0]);
    v3 = sub_22F741160();
    v4 = sub_22F741160();
    v5 = sub_22F740C80();
    v6 = [v2 initWithRequiredLabels:v3 optionalLabels:v4 properties:v5];
    *(v0 + 376) = v6;

    v7 = *(v1 + 24);
    *(v0 + 384) = v7;
    v8 = swift_task_alloc();
    *(v0 + 392) = v8;
    *(v8 + 16) = v6;
    v9 = sub_22F286E4C;
    v10 = v7;
  }

  else
  {
    sub_22F20B070();
    v11 = swift_allocError();
    *v12 = 1;
    swift_willThrow();
    *(v0 + 432) = v11;
    v10 = *(v0 + 328);
    v9 = sub_22F287564;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_22F286E4C()
{
  v1 = v0[49];
  v2 = swift_task_alloc();
  v0[50] = v2;
  *(v2 + 16) = sub_22F288B24;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[51] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *v3 = v0;
  v3[1] = sub_22F286F50;

  return MEMORY[0x282181580](v0 + 39, &unk_22F7816C0, v2, v4);
}

uint64_t sub_22F286F50()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = v2[48];
    v4 = sub_22F287484;
  }

  else
  {

    v2[53] = v2[39];

    v4 = sub_22F287084;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22F287084()
{
  v1 = *(v0 + 328);

  return MEMORY[0x2822009F8](sub_22F2870F0, v1, 0);
}

uint64_t sub_22F2870F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 192));
  v1 = *(v0 + 416);
  sub_22F287A08(*(v0 + 306), *(v0 + 424));
  *(v0 + 440) = v2;
  *(v0 + 448) = v1;
  if (v1)
  {
    goto LABEL_2;
  }

  v4 = v2;
  v5 = *(v0 + 328);

  if (*(v5 + 136))
  {
LABEL_4:
    sub_22F133BF0(*(v0 + 336), *(v0 + 344));

LABEL_13:

    v3 = *(v0 + 8);
    goto LABEL_14;
  }

  v6 = *(v4 + 16);
  *(v0 + 456) = v6;
  if (v6)
  {
LABEL_6:
    *(v0 + 464) = 0;
    v7 = *(v0 + 440);
    v8 = *(v0 + 360);
    v10 = *(v0 + 336);
    v9 = *(v0 + 344);
    v11 = *(v0 + 328);
    v32 = *(v0 + 352);
    v33 = *(v0 + 320);
    v12 = *(v7 + 32);
    v14 = *(v7 + 40);
    v13 = *(v7 + 48);
    v15 = *(v7 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0CE0, &qword_22F771070);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_22F771340;
    *(v16 + 32) = v12;
    *(v16 + 40) = v14;
    *(v16 + 48) = v13;
    *(v16 + 56) = v15;
    *(v0 + 88) = type metadata accessor for PhotoKitInputStream();
    *(v0 + 96) = &off_2843E9240;
    *(v0 + 64) = v11;
    v17 = MEMORY[0x277D84F90];
    *(v0 + 16) = v16;
    *(v0 + 24) = v17;
    *(v0 + 32) = v10;
    *(v0 + 40) = v9;
    *(v0 + 48) = v32;
    *(v0 + 56) = v8;

    sub_22F15C3C4(v10, v9);

    v18 = sub_22F2875DC;
    v19 = v33;
  }

  else
  {
    v20 = *(v0 + 328);

    if (*(v20 + 136) & 1) != 0 || (*(v0 + 305))
    {
LABEL_12:
      sub_22F133BF0(*(v0 + 336), *(v0 + 344));
      goto LABEL_13;
    }

    v21 = *(v0 + 448);
    *(v0 + 305) = 1;
    v22 = *(v0 + 328);
    *(v0 + 306) = byte_2843DAC19;
    sub_22F13BA9C(v22 + 160, v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
    if (!*(v0 + 256))
    {
      sub_22F120ADC(v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
      v23 = MEMORY[0x277D84F90];
      sub_22F287A08(*(v0 + 306), MEMORY[0x277D84F90]);
      *(v0 + 440) = v24;
      *(v0 + 448) = v21;
      if (v21)
      {
LABEL_2:
        sub_22F133BF0(*(v0 + 336), *(v0 + 344));

        v3 = *(v0 + 8);
LABEL_14:

        return v3();
      }

      while (1)
      {
        v25 = v24;
        v26 = *(v0 + 328);

        if (*(v26 + 136))
        {
          goto LABEL_4;
        }

        v27 = *(v25 + 16);
        *(v0 + 456) = v27;
        if (v27)
        {
          goto LABEL_6;
        }

        v28 = *(v0 + 328);

        if (*(v28 + 136) & 1) != 0 || (*(v0 + 305))
        {
          goto LABEL_12;
        }

        v29 = *(v0 + 448);
        *(v0 + 305) = 1;
        v30 = *(v0 + 328);
        *(v0 + 306) = byte_2843DAC19;
        sub_22F13BA9C(v30 + 160, v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
        if (*(v0 + 256))
        {
          break;
        }

        sub_22F120ADC(v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
        sub_22F287A08(*(v0 + 306), v23);
        *(v0 + 440) = v24;
        *(v0 + 448) = v29;
        if (v29)
        {
          goto LABEL_2;
        }
      }
    }

    sub_22F100260((v0 + 232), v0 + 192);
    *(v0 + 368) = *__swift_project_boxed_opaque_existential_1((v0 + 192), *(v0 + 216));
    v18 = sub_22F286CC0;
    v19 = 0;
  }

  return MEMORY[0x2822009F8](v18, v19, 0);
}

uint64_t sub_22F287484()
{

  return MEMORY[0x2822009F8](sub_22F2874F4, 0, 0);
}

uint64_t sub_22F2874F4()
{
  *(v0 + 432) = *(v0 + 416);
  v1 = *(v0 + 328);

  return MEMORY[0x2822009F8](sub_22F287564, v1, 0);
}

uint64_t sub_22F287564()
{
  sub_22F133BF0(v0[42], v0[43]);

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22F2875DC()
{
  v1 = *(v0 + 320);
  sub_22F20AC1C(v0 + 16, v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v0 + 320);
    v2 = sub_22F13EEEC(0, *(v2 + 2) + 1, 1, v2);
    *(v13 + 112) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_22F13EEEC((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 320);
  v7 = *(v0 + 328);
  *(v2 + 2) = v5 + 1;
  v8 = &v2[88 * v5];
  v9 = *(v0 + 120);
  *(v8 + 2) = *(v0 + 104);
  *(v8 + 3) = v9;
  v10 = *(v0 + 136);
  v11 = *(v0 + 152);
  v12 = *(v0 + 168);
  *(v8 + 14) = *(v0 + 184);
  *(v8 + 5) = v11;
  *(v8 + 6) = v12;
  *(v8 + 4) = v10;
  *(v6 + 112) = v2;
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_22F287718, v7, 0);
}

uint64_t sub_22F287718()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 464) + 1;
  sub_22F20AC78(v0 + 16);
  if (v2 == v1)
  {
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      v4 = *(v0 + 328);

      if (*(v4 + 136) & 1) != 0 || (*(v0 + 305))
      {
        sub_22F133BF0(*(v0 + 336), *(v0 + 344));
        goto LABEL_19;
      }

      v5 = *(v0 + 448);
      *(v0 + 305) = 1;
      v6 = *(v0 + 328);
      *(v0 + 306) = byte_2843DAC19;
      sub_22F13BA9C(v6 + 160, v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
      if (*(v0 + 256))
      {
        sub_22F100260((v0 + 232), v0 + 192);
        *(v0 + 368) = *__swift_project_boxed_opaque_existential_1((v0 + 192), *(v0 + 216));
        v23 = sub_22F286CC0;
        v24 = 0;
        goto LABEL_12;
      }

      sub_22F120ADC(v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
      sub_22F287A08(*(v0 + 306), v3);
      *(v0 + 440) = v7;
      *(v0 + 448) = v5;
      if (v5)
      {
        sub_22F133BF0(*(v0 + 336), *(v0 + 344));

        v25 = *(v0 + 8);
        goto LABEL_20;
      }

      v8 = v7;
      v9 = *(v0 + 328);

      if (*(v9 + 136))
      {
        break;
      }

      v10 = *(v8 + 16);
      *(v0 + 456) = v10;
      if (v10)
      {
        v11 = 0;
        goto LABEL_11;
      }
    }

    sub_22F133BF0(*(v0 + 336), *(v0 + 344));

LABEL_19:

    v25 = *(v0 + 8);
LABEL_20:

    return v25();
  }

  else
  {
    v11 = *(v0 + 464) + 1;
LABEL_11:
    *(v0 + 464) = v11;
    v12 = *(v0 + 360);
    v14 = *(v0 + 336);
    v13 = *(v0 + 344);
    v15 = *(v0 + 328);
    v27 = *(v0 + 352);
    v28 = *(v0 + 320);
    v16 = *(v0 + 440) + 32 * v11;
    v17 = *(v16 + 32);
    v19 = *(v16 + 40);
    v18 = *(v16 + 48);
    v20 = *(v16 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0CE0, &qword_22F771070);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_22F771340;
    *(v21 + 32) = v17;
    *(v21 + 40) = v19;
    *(v21 + 48) = v18;
    *(v21 + 56) = v20;
    *(v0 + 88) = type metadata accessor for PhotoKitInputStream();
    *(v0 + 96) = &off_2843E9240;
    *(v0 + 64) = v15;
    v22 = MEMORY[0x277D84F90];
    *(v0 + 16) = v21;
    *(v0 + 24) = v22;
    *(v0 + 32) = v14;
    *(v0 + 40) = v13;
    *(v0 + 48) = v27;
    *(v0 + 56) = v12;

    sub_22F15C3C4(v14, v13);

    v23 = sub_22F2875DC;
    v24 = v28;
LABEL_12:

    return MEMORY[0x2822009F8](v23, v24, 0);
  }
}

void sub_22F287A08(char a1, uint64_t a2)
{
  v5 = [*(v2 + 144) librarySpecificFetchOptions];
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22F771340;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v6 + 64) = sub_22F25F050();
  *(v6 + 32) = a2;

  v7 = sub_22F741560();
  [v5 setPredicate_];

  if (!a1)
  {
    sub_22F2886A4();
    swift_allocError();
    *v37 = 4;
    swift_willThrow();

    return;
  }

  if (a1 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_22F771340;
    *(v38 + 32) = sub_22F740E20();
    *(v38 + 40) = v39;
    v40 = sub_22F741160();

    [v5 setFetchPropertySets_];

    [v5 setIncludeHiddenAssets_];
    [v5 setIncludeTrashedAssets_];
    v57 = [objc_opt_self() fetchAssetsWithOptions_];
    v41 = [v57 count];
    if ((v41 & 0x8000000000000000) != 0)
    {
LABEL_39:
      __break(1u);
      return;
    }

    v42 = v41;
    v56 = v5;
    v43 = 0;
    v44 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v42 == v43)
      {
LABEL_31:

        v55 = v57;
LABEL_33:

        return;
      }

      if (__OFADD__(v43, 1))
      {
        break;
      }

      v45 = [v57 objectAtIndexedSubscript_];
      v46 = [v45 localIdentifier];
      v47 = sub_22F740E20();
      v49 = v48;

      sub_22F2886F8(v45);
      v51 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_22F13EDE0(0, *(v44 + 2) + 1, 1, v44);
      }

      v53 = *(v44 + 2);
      v52 = *(v44 + 3);
      if (v53 >= v52 >> 1)
      {
        v44 = sub_22F13EDE0((v52 > 1), v53 + 1, 1, v44);
      }

      *(v44 + 2) = v53 + 1;
      v54 = &v44[32 * v53];
      v54[32] = 2;
      *(v54 + 5) = v47;
      *(v54 + 6) = v49;
      *(v54 + 7) = v51;
      ++v43;
      if (*(v63 + 136) == 1)
      {
LABEL_32:

        v55 = v56;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22F771340;
  *(v8 + 32) = sub_22F740E20();
  *(v8 + 40) = v9;
  v10 = sub_22F741160();

  [v5 setFetchPropertySets_];

  [v5 setPersonContext_];
  v57 = [objc_opt_self() fetchPersonsWithOptions_];
  v11 = [v57 count];
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v12 = v11;
  if (v11)
  {
    v56 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FE8, &unk_22F781690);
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    while (1)
    {
      v15 = [v57 objectAtIndexedSubscript_];
      v16 = [v15 localIdentifier];
      v17 = sub_22F740E20();
      v19 = v18;

      v61[0] = 1701667182;
      v61[1] = 0xE400000000000000;
      v20 = [v15 name];
      if (v20)
      {
        v21 = v20;
        v22 = sub_22F740E20();
        v24 = v23;

        v62 = MEMORY[0x277D837D0];
        if (v24)
        {
          goto LABEL_11;
        }

        v22 = 0;
      }

      else
      {
        v22 = 0;
        v62 = MEMORY[0x277D837D0];
      }

      v24 = 0xE000000000000000;
LABEL_11:
      v61[2] = v22;
      v61[3] = v24;
      v25 = sub_22F741DF0();

      sub_22F13BA9C(v61, &v58, &unk_27DAB0FF0, &unk_22F771410);
      v26 = v58;
      v27 = v59;
      v28 = sub_22F1229E8(v58, v59);
      if (v29)
      {
        goto LABEL_36;
      }

      v25[(v28 >> 6) + 8] |= 1 << v28;
      v30 = (v25[6] + 16 * v28);
      *v30 = v26;
      v30[1] = v27;
      sub_22F1534F8(&v60, (v25[7] + 32 * v28));
      v31 = v25[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_37;
      }

      v25[2] = v33;

      sub_22F120ADC(v61, &unk_27DAB0FF0, &unk_22F771410);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_22F13EDE0(0, *(v14 + 2) + 1, 1, v14);
      }

      v35 = *(v14 + 2);
      v34 = *(v14 + 3);
      if (v35 >= v34 >> 1)
      {
        v14 = sub_22F13EDE0((v34 > 1), v35 + 1, 1, v14);
      }

      *(v14 + 2) = v35 + 1;
      v36 = &v14[32 * v35];
      v36[32] = 1;
      *(v36 + 5) = v17;
      *(v36 + 6) = v19;
      *(v36 + 7) = v25;
      if (*(v63 + 136))
      {
        goto LABEL_32;
      }

      if (v12 == ++v13)
      {
        goto LABEL_31;
      }
    }
  }
}

uint64_t sub_22F288098()
{

  sub_22F120ADC(v0 + 160, &qword_27DAB2D98, &unk_22F7816A8);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_22F288124(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
    }

    result = a3(&v7, result, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

void sub_22F2881A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_22F742170();

          sub_22F740D60();
          v13 = sub_22F7421D0();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_22F742040() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = a1[v16];
        a1[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  sub_22F1B8E24(a1, a2, v24, a4);
}

uint64_t sub_22F288380(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 62)
  {
LABEL_25:
    v28 = a3 & 0xFFFFFFFFFFFFFF8;
    v22 = a3;
    v30 = sub_22F741A00();
    v4 = v22;
  }

  else
  {
    v28 = a3 & 0xFFFFFFFFFFFFFF8;
    v30 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = a3;
  }

  v5 = 0;
  v6 = 0;
  v29 = v4 & 0xC000000000000001;
  v23 = v4;
  v27 = v4 + 32;
  v31 = a4 + 56;
LABEL_4:
  v25 = v5;
  while (v6 != v30)
  {
    if (v29)
    {
      v7 = MEMORY[0x2319016F0](v6, v23);
    }

    else
    {
      if (v6 >= *(v28 + 16))
      {
        goto LABEL_24;
      }

      v7 = *(v27 + 8 * v6);
    }

    v8 = v7;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v10 = sub_22F741800();
    v11 = -1 << *(a4 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = 1 << v12;
    if (((1 << v12) & *(v31 + 8 * (v12 >> 6))) != 0)
    {
      sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
      v15 = *(*(a4 + 48) + 8 * v12);
      v16 = sub_22F741810();

      if ((v16 & 1) == 0)
      {
        v17 = ~v11;
        do
        {
          v12 = (v12 + 1) & v17;
          v13 = v12 >> 6;
          v14 = 1 << v12;
          if (((1 << v12) & *(v31 + 8 * (v12 >> 6))) == 0)
          {
            goto LABEL_5;
          }

          v18 = *(*(a4 + 48) + 8 * v12);
          v19 = sub_22F741810();
        }

        while ((v19 & 1) == 0);
      }

      v20 = a1[v13];
      a1[v13] = v20 | v14;
      if ((v20 & v14) == 0)
      {
        v5 = v25 + 1;
        if (!__OFADD__(v25, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        break;
      }
    }

    else
    {
LABEL_5:
    }
  }

  return sub_22F1B9314(a1, a2, v25, a4);
}

uint64_t sub_22F2885B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_22F2885DC, 0, 0);
}

uint64_t sub_22F2885DC()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  v2 = sub_22F73FA70();
  v1();

  **(v0 + 24) = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_22F2886A4()
{
  result = qword_27DAB2D88;
  if (!qword_27DAB2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2D88);
  }

  return result;
}

void sub_22F2886F8(void *a1)
{
  v2 = sub_22F73F690();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v28[-v8];
  v10 = [a1 creationDate];
  if (v10)
  {
    v11 = v10;
    sub_22F73F640();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2D90, &qword_22F7816A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F771340;
    strcpy((inited + 32), "creationDate");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    sub_22F73F620();
    *(inited + 72) = MEMORY[0x277D839F8];
    *(inited + 48) = v13;
    sub_22F14F4A0(inited);
    swift_setDeallocating();
    sub_22F120ADC(inited + 32, &unk_27DAB0FF0, &unk_22F771410);
    (*(v3 + 8))(v9, v2);
    return;
  }

  if (qword_2810A93F0 != -1)
  {
    swift_once();
  }

  v14 = sub_22F740B90();
  __swift_project_value_buffer(v14, qword_2810B4CB0);
  v15 = a1;
  v16 = sub_22F740B70();
  v17 = sub_22F7415E0();
  if (!os_log_type_enabled(v16, v17))
  {

    goto LABEL_9;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v29 = v19;
  *v18 = 136315138;
  v20 = [v15 uuid];

  if (v20)
  {
    v21 = sub_22F740E20();
    v23 = v22;

    v24 = sub_22F145F20(v21, v23, &v29);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_22F0FC000, v16, v17, "[IncrementalRebuild] Asset with uuid %s does not have a creation date, this is unexpected", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x2319033A0](v19, -1, -1);
    MEMORY[0x2319033A0](v18, -1, -1);
LABEL_9:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2D90, &qword_22F7816A0);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_22F771340;
    strcpy((v25 + 32), "creationDate");
    *(v25 + 45) = 0;
    *(v25 + 46) = -5120;
    sub_22F73F550();
    sub_22F73F620();
    v27 = v26;
    (*(v3 + 8))(v5, v2);
    *(v25 + 72) = MEMORY[0x277D839F8];
    *(v25 + 48) = v27;
    sub_22F14F4A0(v25);
    swift_setDeallocating();
    sub_22F120ADC(v25 + 32, &unk_27DAB0FF0, &unk_22F771410);
    return;
  }

  __break(1u);
}

unint64_t sub_22F288AD0()
{
  result = qword_27DAB3D50;
  if (!qword_27DAB3D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3D50);
  }

  return result;
}

uint64_t sub_22F288B40(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22F12094C;

  return sub_22F2885B8(a1, a2, v7, v6);
}

unint64_t sub_22F288C08()
{
  result = qword_27DAB0578;
  if (!qword_27DAB0578)
  {
    sub_22F120634(255, &qword_2810A9100, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB0578);
  }

  return result;
}

void sub_22F288C70(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_22F2881A0(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F288CC8()
{
  result = qword_27DAB2DB0;
  if (!qword_27DAB2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2DB0);
  }

  return result;
}

unint64_t sub_22F288D1C()
{
  result = qword_27DAB2DB8;
  if (!qword_27DAB2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2DB8);
  }

  return result;
}

uint64_t sub_22F288D70(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v4 = sub_22F73F470();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F288E34, a1, 0);
}

uint64_t sub_22F288E34()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_22F288EFC;
  v2 = MEMORY[0x277D837D0];

  return MEMORY[0x282181580](v0 + 56, &unk_22F7821C0, 0, v2);
}

uint64_t sub_22F288EFC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_22F2891BC;
  }

  else
  {
    v4 = sub_22F289028;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22F289028()
{
  v1 = v0[8];
  v0[16] = v0[7];
  v0[17] = v1;
  return MEMORY[0x2822009F8](sub_22F28904C, 0, 0);
}

uint64_t sub_22F28904C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[9];
  v7 = *(v6 + 112);
  (*(v0[12] + 16))(v4, v6 + OBJC_IVAR____TtC11PhotosGraph12GraphManager_inputStreamTokenStoresDirectoryURL, v0[11]);
  sub_22F13BA9C(v5, (v0 + 2), &qword_27DAB2D98, &unk_22F7816A8);
  type metadata accessor for PhotoKitInputStream();
  v8 = swift_allocObject();
  v0[18] = v8;
  sub_22F281C54(v7, v2, v1, v4, (v0 + 2));
  if (v3)
  {
    v9 = v0[10];

    sub_22F120ADC(v9, &qword_27DAB2D98, &unk_22F7816A8);

    v10 = v0[1];

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22F28925C, v8, 0);
  }
}

uint64_t sub_22F2891D8()
{
  v1 = *(v0 + 80);

  sub_22F120ADC(v1, &qword_27DAB2D98, &unk_22F7816A8);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22F28925C()
{
  v1 = v0[10];

  sub_22F120ADC(v1, &qword_27DAB2D98, &unk_22F7816A8);

  v2 = v0[1];
  v3 = v0[18];

  return v2(v3);
}

unint64_t sub_22F2892FC()
{
  result = qword_27DAB2DC0;
  if (!qword_27DAB2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2DC0);
  }

  return result;
}

uint64_t static LocalizedString.localizedString(forKey:arguments:)@<X0>(void *a4@<X8>)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(a4);
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_22F740DF0();
  v7 = sub_22F740DF0();
  v8 = sub_22F740DF0();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  sub_22F740E20();

  v10 = sub_22F740E60();

  return v10;
}

uint64_t static LocalizedString.localizedString(forKey:)@<X0>(void *a3@<X8>)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(a3);
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_22F740DF0();
  v6 = sub_22F740DF0();
  v7 = sub_22F740DF0();
  v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

  v9 = sub_22F740E20();
  return v9;
}

id LocalizedString.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocalizedString.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalizedString();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LocalizedString.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LocalizedString.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LocalizedString();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id LocalizedString.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalizedString();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F2897A0(char a1)
{
  result = 0x6E6F5F6E656B6174;
  switch(a1)
  {
    case 2:
      result = 0x5F6F65675F736168;
      break;
    case 3:
    case 14:
    case 29:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 6:
      result = 0x736E6961746E6F63;
      break;
    case 7:
      result = 0x736E6961746E6F63;
      break;
    case 8:
      result = 0x666F5F646C696863;
      break;
    case 9:
      result = 0x6F7661665F736177;
      break;
    case 10:
      v3 = 10;
      goto LABEL_20;
    case 11:
      result = 0x74615F6E656B6174;
      break;
    case 12:
      v3 = 5;
LABEL_20:
      result = v3 | 0xD000000000000010;
      break;
    case 13:
      result = 0x61635F666F5F7369;
      break;
    case 15:
      result = 0x656D726F66726570;
      break;
    case 16:
      result = 0x74615F646C6568;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 7954788;
      break;
    case 19:
      result = 0x7961646B656577;
      break;
    case 20:
      result = 0x68746E6F6DLL;
      break;
    case 21:
      result = 0x72657472617571;
      break;
    case 22:
      result = 1918985593;
      break;
    case 23:
      result = 0x65746174735F6E69;
      break;
    case 24:
      result = 0x746E756F635F6E69;
      break;
    case 25:
    case 26:
      result = 0x6E695F6E656B6174;
      break;
    case 27:
      result = 0xD000000000000010;
      break;
    case 28:
      result = 0xD000000000000012;
      break;
    case 30:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22F289AF4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22F2897A0(*a1);
  v5 = v4;
  if (v3 == sub_22F2897A0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22F742040();
  }

  return v8 & 1;
}

uint64_t sub_22F289B7C()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F2897A0(v1);
  sub_22F740D60();

  return sub_22F7421D0();
}

double sub_22F289BE0(uint64_t a1)
{
  sub_22F2897A0(*v1);
  sub_22F740D60();

  return result;
}

uint64_t sub_22F289C34(uint64_t a1)
{
  v2 = *v1;
  sub_22F742170();
  sub_22F2897A0(v2);
  sub_22F740D60();

  return sub_22F7421D0();
}

unint64_t sub_22F289C94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22F28A378(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22F289CC4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22F2897A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22F289D80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

id sub_22F28A0A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Edge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for Edge.Label(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Edge.Label(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22F28A2BC()
{
  result = qword_27DAB2EC8;
  if (!qword_27DAB2EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB2ED0, qword_22F7817E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2EC8);
  }

  return result;
}

unint64_t sub_22F28A324()
{
  result = qword_27DAB2ED8;
  if (!qword_27DAB2ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2ED8);
  }

  return result;
}

unint64_t sub_22F28A378(uint64_t a1, uint64_t a2)
{
  v2 = sub_22F742080();

  if (v2 >= 0x1F)
  {
    return 31;
  }

  else
  {
    return v2;
  }
}

void static MusicForTopicCacher.prefetchCuratedSongLibraryAssets(withProgressReporter:completionHandler:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v33 = a2;
  v32 = sub_22F740BB0();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = (v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_22F740C30();
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v28 = sub_22F7416B0();
  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x277CCA930]) initWithCondition_];
  type metadata accessor for CuratedSongLibrary();
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v33;
  v16[5] = a3;
  v16[6] = v12;
  v29 = v14;
  v17 = v15;
  v27[1] = a3;
  v18 = v28;

  v19 = v12;
  static CuratedSongLibrary.downloadAssetCatalog(progressReporter:completionHandler:)(v18, sub_22F28A8D4, v16);

  sub_22F740C10();
  v20 = qos_class_self();
  v21 = 270;
  if (((v20 - 25) & 0xFFFFFFF7) == 0)
  {
    v21 = 5;
  }

  *v5 = v21;
  v22 = v30;
  v23 = v32;
  (*(v30 + 104))(v5, *MEMORY[0x277D85188], v32);
  MEMORY[0x2319007F0](v8, v5);
  (*(v22 + 8))(v5, v23);
  v24 = *(v6 + 8);
  v25 = v31;
  v24(v8, v31);
  LOBYTE(v23) = sub_22F741610();
  v24(v11, v25);
  if ((v23 & 1) != 0 && [v17 tryLockWhenCondition_])
  {
    sub_22F28AC14();
    v26 = swift_allocError();
    v33(0, v26);

    [v17 unlockWithCondition_];
  }
}

void sub_22F28A794(void *a1, char a2, void *a3, id a4, void (*a5)(uint64_t, void *), uint64_t a6, NSObject *a7)
{
  if (a2)
  {
    if ([a4 tryLockWhenCondition_])
    {
      a5(0, a1);
      [a4 unlockWithCondition_];
    }

    dispatch_group_leave(a7);
  }

  else
  {
    v13 = type metadata accessor for CuratedSongLibrary();
    v14 = sub_22F1DE138();
    v16 = v15;
    v17 = a4;

    v18 = a7;
    sub_22F36E3E4(v14, v16, a3, v13, v17, a5, a6, v18);
  }
}

void sub_22F28A8D8(uint64_t a1, void *a2, void (*a3)(uint64_t, void *), uint64_t a4, NSObject *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2EF0, &unk_22F788820);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = (&v15 - v11);
  if ([a2 tryLockWhenCondition_])
  {
    sub_22F28BD50(a1, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = *v12;
      v14 = sub_22F73F360();
      a3(0, v14);
    }

    else
    {
      a3(1, 0);
      sub_22F28BDC0(v12);
    }

    [a2 unlockWithCondition_];
  }

  dispatch_group_leave(a5);
}

id MusicForTopicCacher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicForTopicCacher.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicForTopicCacher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F28AC14()
{
  result = qword_27DAB2EE0;
  if (!qword_27DAB2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2EE0);
  }

  return result;
}

uint64_t sub_22F28AC68(void *a1, uint64_t a2)
{
  v85 = a1;
  v86 = sub_22F740AD0();
  v83 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v5 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Song(0);
  v84 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v63 - v10;
  if (qword_2810A9B30 != -1)
  {
    swift_once();
  }

  v12 = qword_2810B4E30;
  *&v13 = CACurrentMediaTime();
  sub_22F1B560C("Music For Topic Cacher", 22, 2u, v13, 0, v12, v92);
  v14 = sub_22F7416D0();
  v16 = v15;
  v18 = v17;
  static MaestroMusicMatrixGenerator.maestroSongsInfo()(&v88);
  if (v2)
  {
    v87 = v2;

    goto LABEL_5;
  }

  v81 = v18;
  v82 = v16;
  v80 = a2;
  v19 = v89;
  v20 = v90;
  v21 = v91;
  static MaestroMusicMatrixGenerator.maestroSongs(schemaVersion:)(v88, v89, &v88);
  v78 = v20;
  v79 = v21;
  v23 = v88;
  sub_22F7416A0();
  v66 = v23;
  MusicCache.removeSongSources(songSourceIdentifiers:progressReporter:)(qword_2843DAA68);
  v87 = 0;
  v24 = sub_22F741C40();
  v65 = OBJC_IVAR___PGMusicCache_managedObjectContext;
  v77 = v24;
  sub_22F741E10();
  v25 = v84;
  v26 = v84[6];
  v76 = (v84 + 6);
  v75 = v26;
  v27 = v26(v11, 1, v6);
  v63[1] = v19;
  if (v27 == 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_10:
    v29 = v28;

    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v30 = v83 + 8;
    v31 = *(v83 + 8);
    v31(v5, v86);
    v32 = v81;
    v33 = v87;
    sub_22F741690();
    v87 = v33;
    if (v33)
    {
    }

    v83 = v30;
    v50 = sub_22F7416E0();
    v77 = v63;
    MEMORY[0x28223BE20](v50);
    strcpy(&v63[-14], "humanCurated");
    BYTE5(v63[-13]) = 0;
    HIWORD(v63[-13]) = -5120;
    v51 = v78;
    v52 = v79;
    v63[-12] = v53;
    v63[-11] = v51;
    v63[-10] = v52;
    v63[-9] = 0;
    v63[-8] = 0;
    v63[-7] = v54;
    v78 = v54;
    v63[-6] = v29;
    LODWORD(v63[-5]) = 0x1000000;
    v84 = v55;
    v85 = v56;
    v63[-4] = v56;
    v63[-3] = v55;
    v58 = v57;
    v63[-2] = v57;
    v59 = v87;
    sub_22F7417A0();
    v87 = v59;
    if (v59)
    {
    }

    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v31(v5, v86);
    sub_22F1B2BBC(0);
    v60 = v87;
    sub_22F7416A0();
    if (v60)
    {
    }

    v87 = 0;
    v61 = v81;
    v62 = v82;

LABEL_5:
  }

  v74 = (v83 + 8);
  v28 = MEMORY[0x277D84F90];
  v64 = xmmword_22F7818D0;
  while (1)
  {
    sub_22F15CB04(v11, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_22F13E558(0, v28[2] + 1, 1, v28);
    }

    v35 = v28[2];
    v34 = v28[3];
    if (v35 >= v34 >> 1)
    {
      v28 = sub_22F13E558((v34 > 1), v35 + 1, 1, v28);
    }

    v28[2] = v35 + 1;
    sub_22F15CB04(v8, v28 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + v25[9] * v35);
    if (v35 < 0x63)
    {
      goto LABEL_15;
    }

    v73 = v28;
    v36 = [objc_opt_self() ignoreProgress];
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v37 = *v74;
    (*v74)(v5, v86);
    v38 = v87;
    sub_22F741690();
    v87 = v38;
    if (v38)
    {
    }

    v67 = v37;
    v39 = sub_22F7416E0();
    v71 = v36;
    v41 = v40;
    v68 = v63;
    MEMORY[0x28223BE20](v39);
    strcpy(&v63[-14], "humanCurated");
    BYTE5(v63[-13]) = 0;
    HIWORD(v63[-13]) = -5120;
    v63[-12] = v42;
    v43 = v79;
    v63[-11] = v78;
    v63[-10] = v43;
    *&v63[-9] = v64;
    v72 = v44;
    v45 = v73;
    v63[-7] = v44;
    v63[-6] = v45;
    LODWORD(v63[-5]) = 0x1000000;
    v70 = v46;
    v63[-4] = v46;
    v63[-3] = v47;
    v69 = v47;
    v63[-2] = v48;
    v49 = v87;
    sub_22F7417A0();
    v87 = v49;
    if (v49)
    {
      break;
    }

    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v67(v5, v86);

    v28 = MEMORY[0x277D84F90];
    v25 = v84;
LABEL_15:
    sub_22F741E10();
    if (v75(v11, 1, v6) == 1)
    {
      goto LABEL_10;
    }
  }
}

unint64_t sub_22F28B840()
{
  result = qword_27DAB2EE8;
  if (!qword_27DAB2EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2EE8);
  }

  return result;
}

void sub_22F28B894(uint64_t a1, void (**a2)(const void *, void, void *))
{
  v34 = sub_22F740BB0();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_22F740C30();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v29 = a2;
  _Block_copy(a2);
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v12 = sub_22F7416B0();
  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x277CCA930]) initWithCondition_];
  type metadata accessor for CuratedSongLibrary();
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = sub_22F1E088C;
  v16[5] = v10;
  v16[6] = v11;
  v30 = v14;
  v17 = v15;
  v35 = v10;
  v18 = v12;

  v19 = v11;
  static CuratedSongLibrary.downloadAssetCatalog(progressReporter:completionHandler:)(v12, sub_22F28BE28, v16);

  sub_22F740C10();
  v20 = qos_class_self();
  v21 = 270;
  if (((v20 - 25) & 0xFFFFFFF7) == 0)
  {
    v21 = 5;
  }

  *v4 = v21;
  v22 = v32;
  v23 = v34;
  (*(v32 + 104))(v4, *MEMORY[0x277D85188], v34);
  MEMORY[0x2319007F0](v6, v4);
  (*(v22 + 8))(v4, v23);
  v24 = *(v31 + 8);
  v25 = v33;
  v24(v6, v33);
  LOBYTE(v23) = sub_22F741610();
  v24(v9, v25);
  if (v23 & 1) != 0 && ([v17 tryLockWhenCondition_])
  {
    sub_22F28AC14();
    v26 = swift_allocError();
    v27 = sub_22F73F360();
    v29[2](v29, 0, v27);

    [v17 unlockWithCondition_];
  }
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_22F28BCC4()
{
  if (*(v0 + 91))
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 90))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + 89))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_22F19B1E0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v3 | *(v0 + 88) | v2 | v1, (v3 | *(v0 + 88) | v2 | v1) >> 16, *(v0 + 96), *(v0 + 104));
}

uint64_t sub_22F28BD50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2EF0, &unk_22F788820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F28BDC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2EF0, &unk_22F788820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicForTimeBackfillCacher.MusicForTimeError.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

double sub_22F28BF18()
{
  v0 = sub_22F73F690();
  __swift_allocate_value_buffer(v0, qword_2810AA1B8);
  __swift_project_value_buffer(v0, qword_2810AA1B8);
  sub_22F73F5F0();
  return result;
}

uint64_t static MusicForTimeBackfillCacher.minimumValidQueryDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2810AA1B0 != -1)
  {
    swift_once();
  }

  v2 = sub_22F73F690();
  v3 = __swift_project_value_buffer(v2, qword_2810AA1B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22F28C018()
{
  v0 = sub_22F73F9B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_2810AA190);
  v5 = __swift_project_value_buffer(v0, qword_2810AA190);
  v6 = [objc_opt_self() currentCalendar];
  sub_22F73F900();

  return (*(v1 + 32))(v5, v3, v0);
}

void static MusicForTimeBackfillCacher.cacheMusic(forMomentsInPhotoLibrary:forceCaching:progressReporter:completionHandler:)(void *a1, int a2, void *a3, NSObject *a4, unint64_t a5)
{
  v214 = a5;
  v215 = a4;
  LODWORD(v212) = a2;
  v192 = type metadata accessor for CacherStatus(0);
  v190 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v187 = v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v191 = v171 - v9;
  v185 = sub_22F73EEC0();
  v183 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v186 = v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = v10;
  MEMORY[0x28223BE20](v11);
  v188 = v171 - v12;
  v195 = sub_22F740AD0();
  v196 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v194 = v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22F740C00();
  MEMORY[0x28223BE20](v14 - 8);
  v198 = v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_22F73F990();
  v206 = *(v207 - 1);
  MEMORY[0x28223BE20](v207);
  v205 = v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v17 - 8);
  v184 = v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v189 = v171 - v20;
  MEMORY[0x28223BE20](v21);
  v204 = v171 - v22;
  v210 = sub_22F73F690();
  v211 = *(v210 - 8);
  v23 = *(v211 + 64);
  MEMORY[0x28223BE20](v210);
  v208 = v171 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v197 = v171 - v25;
  MEMORY[0x28223BE20](v26);
  v201 = v171 - v27;
  MEMORY[0x28223BE20](v28);
  v202 = v171 - v29;
  MEMORY[0x28223BE20](v30);
  v203 = v171 - v31;
  MEMORY[0x28223BE20](v32);
  v200 = v171 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v193 = *(v34 - 8);
  v35 = *(v193 + 64);
  MEMORY[0x28223BE20](v34 - 8);
  MEMORY[0x28223BE20](v36);
  v38 = v171 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = (v171 - v40);
  MEMORY[0x28223BE20](v42);
  v44 = v171 - v43;
  MEMORY[0x28223BE20](v45);
  v213 = v171 - v46;
  v209 = a3;
  v47 = sub_22F7416D0();
  v49 = v48;
  v51 = v50;
  v52 = sub_22F1A26E0(a1);
  v176 = v35;
  v177 = v44;
  v178 = v23;
  v175 = v38;
  v174 = v171 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = v47;
  v181 = v49;
  v179 = v41;
  v53 = v52;
  objc_allocWithZone(type metadata accessor for MusicBag());
  v54 = v53;
  v55 = sub_22F1ED5B0(v53);

  v56 = v213;
  MusicCache.readCacherStatus(category:)(0xD000000000000014, 0x800000022F78E880, v213);
  v173 = v54;
  v57 = v180;
  v58 = sub_22F291068(v56, v55, v180);
  if (((v58 | v212) & 1) == 0)
  {
    sub_22F7416A0();
    (v215)(1, 0);

    v79 = v213;
LABEL_12:
    sub_22F120ADC(v79, &qword_27DAB1DA0, &unk_22F7771B0);
    return;
  }

  v212 = v51;
  v172 = 0x800000022F78E880;
  if (qword_2810AA188 != -1)
  {
    swift_once();
  }

  v60 = sub_22F73F9B0();
  __swift_project_value_buffer(v60, qword_2810AA190);
  v61 = v206;
  v62 = v205;
  v63 = v207;
  (v206)[13](v205, *MEMORY[0x277CC9998], v207);
  v64 = v203;
  sub_22F73F680();
  v65 = v204;
  sub_22F73F940();
  v66 = v211;
  v67 = *(v211 + 8);
  v68 = v64;
  v69 = v210;
  v203 = (v211 + 8);
  v67(v68, v210);
  (v61[1])(v62, v63);
  v70 = v65;
  v71 = (*(v66 + 48))(v65, 1, v69);
  v72 = v208;
  if (v71 == 1)
  {
    sub_22F120ADC(v65, &qword_27DAB0920, &qword_22F770B20);
    sub_22F291560();
    v73 = swift_allocError();
    *v74 = 2;
    swift_willThrow();

    sub_22F120ADC(v213, &qword_27DAB1DA0, &unk_22F7771B0);
    v59 = v73;
    (v215)(0, v73);

    return;
  }

  v206 = v55;
  v207 = v67;
  v75 = *(v66 + 32);
  v76 = v200;
  v75(v200, v70, v69);
  if (qword_2810AA1B0 != -1)
  {
    swift_once();
  }

  v77 = __swift_project_value_buffer(v69, qword_2810AA1B8);
  v78 = v199;
  static MusicForTimeBackfillCacher.nextTimeSpan(forDate:cache:minimumValidQueryDate:)(v202, v201, v76, v173, v77);
  v80 = v198;
  sub_22F740BD0();
  v81 = sub_22F22FB24(v80, 0);
  v82 = v213;
  v205 = 0;
  v204 = v81;
  static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)(0xD000000000000014, v172, &v224);
  v83 = v177;
  sub_22F13BA9C(v82, v177, &qword_27DAB1DA0, &unk_22F7771B0);
  v84 = v211 + 16;
  v85 = *(v211 + 16);
  v85(v197, v202, v69);
  v171[0] = v85;
  v85(v72, v201, v69);
  sub_22F13BA9C(v83, v179, &qword_27DAB1DA0, &unk_22F7771B0);
  v86 = (*(v193 + 80) + 24) & ~*(v193 + 80);
  v176 = (v176 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v171[1] = v84;
  v87 = *(v84 + 64);
  v88 = (v87 + v176 + 8) & ~v87;
  v89 = (v178 + v87 + v88) & ~v87;
  v193 = (v178 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v178 = (v193 + 15) & 0xFFFFFFFFFFFFFFF8;
  v90 = (v178 + 15) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  *(v91 + 16) = v78;
  sub_22F1207AC(v83, v91 + v86, &qword_27DAB1DA0, &unk_22F7771B0);
  v92 = v173;
  *(v91 + v176) = v173;
  v75((v91 + v88), v197, v69);
  v75((v91 + v89), v208, v69);
  v93 = v201;
  v94 = v202;
  v95 = v212;
  *(v91 + v193) = v212;
  v96 = v209;
  *(v91 + v178) = v209;
  v198 = v91;
  v97 = (v91 + v90);
  v98 = v214;
  *v97 = v215;
  v97[1] = v98;
  v208 = v92;
  v212 = v95;

  v209 = v96;
  if (sub_22F73F660() != -1)
  {
    type metadata accessor for MusicKitClientError(0);
    sub_22F294A3C(&qword_27DAB2948, type metadata accessor for MusicKitClientError, &protocol conformance descriptor for MusicKitClientError);
    v99 = v69;
    v199 = swift_allocError();
    v101 = v100;
    v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2950, &unk_22F781A20) + 48);
    v103 = v171[0];
    (v171[0])(v101, v94, v69);
    v103(v101 + v102, v93, v69);
    swift_storeEnumTagMultiPayload();
    v104 = v175;
    sub_22F13BA9C(v179, v175, &qword_27DAB1DA0, &unk_22F7771B0);
    v105 = v192;
    v106 = (*(v190 + 48))(v104, 1, v192);
    v107 = v195;
    v108 = v194;
    if (v106 == 1)
    {
      sub_22F120ADC(v104, &qword_27DAB1DA0, &unk_22F7771B0);
      v109 = v211;
      v110 = v189;
      (*(v211 + 56))(v189, 1, 1, v99);
    }

    else
    {
      v110 = v189;
      sub_22F13BA9C(v104 + *(v105 + 20), v189, &qword_27DAB0920, &qword_22F770B20);
      sub_22F2949DC(v104, type metadata accessor for CacherStatus);
      v109 = v211;
    }

    v133 = v172;
    v134 = *(v105 + 24);
    v135 = v191;
    sub_22F73F680();
    (*(v109 + 56))(&v135[v134], 0, 1, v99);
    *v135 = 0xD000000000000014;
    *(v135 + 1) = v133;
    sub_22F1207AC(v110, &v135[*(v105 + 20)], &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v136 = *(v196 + 8);
    v137 = v136(v108, v107);
    MEMORY[0x28223BE20](v137);
    v171[-4] = 0xD000000000000014;
    v171[-3] = v133;
    v171[-2] = v138;
    v171[-1] = v135;
    v139 = v205;
    sub_22F7417A0();
    if (v139)
    {
      v124 = v179;
      v140 = v202;
      v141 = v201;
      sub_22F2949DC(v135, type metadata accessor for CacherStatus);
      v142 = v139;
      (v215)(0, v139);

      sub_22F1D210C(&v224);

      v143 = v210;
LABEL_34:
      sub_22F120ADC(v124, &qword_27DAB1DA0, &unk_22F7771B0);
      v170 = v207;
      (v207)(v141, v143);
      v170(v140, v143);
      v170(v200, v143);
      v79 = v213;
      goto LABEL_12;
    }

    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v136(v108, v107);
    sub_22F7416A0();
    v169 = v199;
    (v215)(0, v199);

    sub_22F1D210C(&v224);

    sub_22F2949DC(v191, type metadata accessor for CacherStatus);
    v143 = v210;
    v124 = v179;
LABEL_33:
    v140 = v202;
    v141 = v201;
    goto LABEL_34;
  }

  sub_22F741740();
  v111 = v195;
  v112 = v194;
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v113 = v196 + 8;
  v114 = *(v196 + 8);
  v114(v112, v111);
  v116 = *(v204 + 3);
  v115 = *(v204 + 4);
  v216[0] = v224;
  v117 = *(v204 + 5);
  v118 = *(v204 + 6);
  v119 = *(v204 + 7);
  v120 = *(v204 + 8);
  aBlock = v116;
  v219 = v115;
  v220 = v117;
  v221 = v118;
  v222 = v119;
  v223 = v120;
  v216[1] = v225;
  v216[2] = v226;
  v217 = v227;

  v121 = v188;
  v122 = v205;
  sub_22F3E29C0(v201, v216, v188);
  v123 = v186;
  if (v122)
  {

    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v114(v112, v111);
    v124 = v179;
    v125 = v174;
    sub_22F13BA9C(v179, v174, &qword_27DAB1DA0, &unk_22F7771B0);
    v126 = v192;
    v127 = (*(v190 + 48))(v125, 1, v192);
    v128 = v113;
    v205 = v122;
    v199 = v114;
    if (v127 == 1)
    {
      v129 = v122;
      sub_22F120ADC(v125, &qword_27DAB1DA0, &unk_22F7771B0);
      v130 = v211;
      v131 = v184;
      v132 = v210;
      (*(v211 + 56))(v184, 1, 1, v210);
LABEL_30:
      v160 = v126[6];
      v161 = v126;
      v162 = v187;
      sub_22F73F680();
      (*(v130 + 56))(&v162[v160], 0, 1, v132);
      *v162 = 0xD000000000000014;
      v163 = v172;
      *(v162 + 1) = v172;
      sub_22F1207AC(v131, &v162[v161[5]], &qword_27DAB0920, &qword_22F770B20);
      sub_22F741740();
      if (qword_2810A8E80 != -1)
      {
        swift_once();
      }

      sub_22F740AC0();
      sub_22F740A90();
      v164 = v195;
      v165 = v199;
      v166 = (v199)(v112, v195);
      v196 = v128;
      MEMORY[0x28223BE20](v166);
      v171[-4] = 0xD000000000000014;
      v171[-3] = v163;
      v171[-2] = v167;
      v171[-1] = v162;
      sub_22F7417A0();
      v168 = v205;
      sub_22F741730();
      sub_22F740AC0();
      sub_22F740A90();
      v165(v112, v164);
      sub_22F7416A0();
      (v215)(0, v168);

      sub_22F1D210C(&v224);

      sub_22F2949DC(v187, type metadata accessor for CacherStatus);
      v143 = v210;
      goto LABEL_33;
    }

LABEL_29:
    v131 = v184;
    sub_22F13BA9C(v125 + v126[5], v184, &qword_27DAB0920, &qword_22F770B20);
    v159 = v122;
    sub_22F2949DC(v125, type metadata accessor for CacherStatus);
    v132 = v210;
    v130 = v211;
    goto LABEL_30;
  }

  v144 = v121;

  v145 = swift_allocObject();
  *(v145 + 16) = "MusicKitClient Fetch Tesseract Songs";
  *(v145 + 24) = 36;
  *(v145 + 32) = 2;
  *(v145 + 40) = sub_22F2915B4;
  *(v145 + 48) = v198;

  sub_22F741740();
  sub_22F740AC0();
  sub_22F740A90();
  v114(v112, v111);
  v215 = *(v204 + 9);
  v146 = v183;
  v147 = v185;
  (*(v183 + 16))(v123, v144, v185);
  v148 = (*(v146 + 80) + 16) & ~*(v146 + 80);
  v149 = (v182 + v148 + 7) & 0xFFFFFFFFFFFFFFF8;
  v112 = (v149 + 63) & 0xFFFFFFFFFFFFFFF8;
  v214 = (v112 + 15) & 0xFFFFFFFFFFFFFFF8;
  v150 = (v112 + 39) & 0xFFFFFFFFFFFFFFF8;
  v125 = swift_allocObject();
  (*(v146 + 32))(v125 + v148, v123, v147);
  v151 = v125 + v149;
  v152 = v225;
  v153 = v226;
  *v151 = v224;
  *(v151 + 16) = v152;
  *(v151 + 32) = v153;
  *(v151 + 48) = v227;
  *(v125 + v112) = v204;
  v154 = v125 + v214;
  *v154 = "MusicKitClient HTTP Request";
  *(v154 + 8) = 27;
  *(v154 + 16) = 2;
  v155 = v181;
  *(v125 + v150) = v181;
  v156 = (v125 + ((v150 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v156 = sub_22F2915B8;
  v156[1] = v145;
  v122 = swift_allocObject();
  *(v122 + 2) = sub_22F233FAC;
  *(v122 + 3) = v125;
  v222 = sub_22F2915BC;
  v223 = v122;
  aBlock = MEMORY[0x277D85DD0];
  v219 = 1107296256;
  v220 = sub_22F2280B0;
  v221 = &block_descriptor_17;
  v157 = _Block_copy(&aBlock);
  sub_22F1D20B0(&v224, v216);

  v158 = v155;

  dispatch_sync(v215, v157);

  _Block_release(v157);

  sub_22F1D210C(&v224);

  (*(v146 + 8))(v188, v185);
  v126 = &unk_22F7771B0;
  sub_22F120ADC(v179, &qword_27DAB1DA0, &unk_22F7771B0);
  v128 = v210;
  v124 = v207;
  (v207)(v201, v210);
  v124(v202, v128);
  v124(v200, v128);
  sub_22F120ADC(v213, &qword_27DAB1DA0, &unk_22F7771B0);

  LOBYTE(v145) = swift_isEscapingClosureAtFileLocation();

  if (v145)
  {
    __break(1u);
    goto LABEL_29;
  }
}

uint64_t static MusicForTimeBackfillCacher.nextTimeSpan(forDate:cache:minimumValidQueryDate:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v95 = a4;
  v82 = a1;
  v105 = sub_22F73F990();
  v98 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v92 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v9 - 8);
  v91 = &v82 - v10;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DC0, &qword_22F7711C0);
  v11 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v13 = &v82 - v12;
  v94 = sub_22F73F270();
  v110 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22F73F690();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v97 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v106 = &v82 - v19;
  MEMORY[0x28223BE20](v20);
  v96 = &v82 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v82 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v82 - v26;
  MEMORY[0x28223BE20](v28);
  v108 = &v82 - v29;
  sub_22F73F550();
  v107 = a2;
  sub_22F73F570();
  v113 = *(v16 + 16);
  v114 = v16 + 16;
  v113(v27, a3, v15);
  v30 = sub_22F294A3C(&qword_2810AC708, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v90 = a5;
  v89 = v30;
  v31 = sub_22F740DB0();
  v88 = v16;
  if (v31)
  {
    v32 = v97;
LABEL_3:
    sub_22F73F550();
    sub_22F294A3C(&qword_2810AC700, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v33 = v107;
    v34 = sub_22F740DE0();
    v35 = *(v88 + 8);
    v35(v32, v15);
    if (v34 & 1) != 0 || (sub_22F73F570(), v36 = sub_22F740DE0(), v35(v32, v15), (v36))
    {
      sub_22F291560();
      swift_allocError();
      *v37 = 2;
      swift_willThrow();
      v35(v27, v15);
      v35(v33, v15);
      return (v35)(v108, v15);
    }

    else
    {
      v35(v27, v15);
      return (*(v88 + 32))(v82, v108, v15);
    }
  }

  else
  {
    v111 = (v16 + 8);
    v103 = (v16 + 32);
    v102 = v98 + 104;
    v101 = *MEMORY[0x277CC9968];
    v100 = v98 + 8;
    v87 = (v110 + 8);
    v84 = (v16 + 48);
    v86 = xmmword_22F771340;
    v104 = v27;
    v39 = v112;
    v83 = v24;
    v85 = v15;
    while (1)
    {
      v40 = v96;
      static MusicForTimeBackfillCacher.dateBlock(forMomentStartDate:)(v24, v96, v27);
      if (v39)
      {
        v77 = *v111;
        (*v111)(v27, v15);
        v77(v107, v15);
        return (v77)(v108, v15);
      }

      v112 = 0;
      v41 = *v111;
      v42 = v24;
      v43 = v40;
      v44 = v107;
      (*v111)(v107, v15);
      v45 = v108;
      v110 = v41;
      v41(v108, v15);
      v46 = *v103;
      (*v103)(v45, v42, v15);
      v99 = v46;
      v46(v44, v43, v15);
      v47 = v106;
      sub_22F73F5A0();
      started = _s11PhotosGraph26MusicForTimeBackfillCacherC5dates12forStartDate03endK0Say10Foundation0K0VGAI_AItFZ_0(v45, v47);
      v49 = *(started + 2);
      if (v49)
      {
        v50 = *(v88 + 80);
        v109 = started;
        v51 = &started[(v50 + 32) & ~v50];
        v52 = *(v88 + 72);
        v53 = MEMORY[0x277D84F90];
        do
        {
          v54 = *(v115 + 48);
          strcpy(v13, "MusicForTime");
          v13[13] = 0;
          *(v13 + 7) = -5120;
          v113(&v13[v54], v51, v15);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_22F13F8D8(0, v53[2] + 1, 1, v53);
          }

          v56 = v53[2];
          v55 = v53[3];
          if (v56 >= v55 >> 1)
          {
            v53 = sub_22F13F8D8((v55 > 1), v56 + 1, 1, v53);
          }

          v53[2] = v56 + 1;
          sub_22F1207AC(v13, v53 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v56, &qword_27DAB1DC0, &qword_22F7711C0);
          v51 += v52;
          --v49;
        }

        while (v49);
      }

      else
      {

        v53 = MEMORY[0x277D84F90];
      }

      v57 = v112;
      v58 = v104;
      v59 = v98;
      v60 = [objc_opt_self() ignoreProgress];
      v109 = MusicCache.readSongSources(identifiersAndDates:progressReporter:)(v53, v60);
      if (v57)
      {

        v78 = v110;
        v110(v106, v15);
        v78(v58, v15);
        v78(v107, v15);
        return (v78)(v108, v15);
      }

      v112 = 0;

      v110(v106, v15);
      if (qword_2810AA188 != -1)
      {
        swift_once();
      }

      v61 = sub_22F73F9B0();
      __swift_project_value_buffer(v61, qword_2810AA190);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
      v62 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v63 = swift_allocObject();
      *(v63 + 16) = v86;
      v64 = v59;
      v65 = *(v59 + 104);
      v66 = v105;
      v65(v63 + v62, v101, v105);
      sub_22F3D97CC(v63);
      swift_setDeallocating();
      v67 = *(v64 + 8);
      v67(v63 + v62, v66);
      swift_deallocClassInstance();
      v68 = v93;
      v69 = v107;
      sub_22F73F850();

      v70 = sub_22F73F1C0();
      v72 = v71;
      result = (*v87)(v68, v94);
      if (v72)
      {

        sub_22F291560();
        swift_allocError();
        *v79 = 2;
        swift_willThrow();
        v80 = v85;
        v81 = v110;
        v110(v104, v85);
        v81(v69, v80);
        return (v81)(v108, v80);
      }

      if (__OFSUB__(v70, 1))
      {
        break;
      }

      if (*(v109 + 16) != v70 - 1)
      {

        v27 = v104;
        v32 = v97;
        v15 = v85;
        goto LABEL_3;
      }

      v73 = v92;
      v74 = v105;
      v65(v92, v101, v105);
      v75 = v91;
      v27 = v104;
      sub_22F73F940();
      v67(v73, v74);
      v15 = v85;
      result = (*v84)(v75, 1, v85);
      if (result == 1)
      {
        goto LABEL_32;
      }

      v110(v27, v15);

      v99(v27, v75, v15);
      v76 = sub_22F740DB0();
      v39 = v112;
      v32 = v97;
      v24 = v83;
      if (v76)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  return result;
}

uint64_t sub_22F28ECB0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char *a7, uint64_t a8, uint64_t a9, void (*a10)(void, uint64_t), uint64_t a11)
{
  v73 = a7;
  v74 = a8;
  v72 = a6;
  v85 = a5;
  v79 = a4;
  v78 = a2;
  v75 = a1;
  v82 = a11;
  v83 = a10;
  v76 = a9;
  v11 = type metadata accessor for Song(0);
  v71 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_22F740AD0();
  v81 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v80 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v70 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v70 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v70 - v28;
  v30 = type metadata accessor for CacherStatus(0);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v77 = (&v70 - v35);
  if (v78)
  {
    sub_22F13BA9C(v79, v17, &qword_27DAB1DA0, &unk_22F7771B0);
    if ((*(v31 + 48))(v17, 1, v30) == 1)
    {
      sub_22F120ADC(v17, &qword_27DAB1DA0, &unk_22F7771B0);
      v36 = sub_22F73F690();
      (*(*(v36 - 8) + 56))(v23, 1, 1, v36);
    }

    else
    {
      sub_22F13BA9C(&v17[*(v30 + 20)], v23, &qword_27DAB0920, &qword_22F770B20);
      sub_22F2949DC(v17, type metadata accessor for CacherStatus);
    }

    v41 = v85;
    v42 = v80;
    v43 = *(v30 + 24);
    sub_22F73F680();
    v44 = sub_22F73F690();
    (*(*(v44 - 8) + 56))(&v33[v43], 0, 1, v44);
    *v33 = 0xD000000000000014;
    *(v33 + 1) = 0x800000022F78E880;
    sub_22F1207AC(v23, &v33[*(v30 + 20)], &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    v45 = v84;
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v46 = *(v81 + 8);
    v47 = v46(v42, v45);
    MEMORY[0x28223BE20](v47);
    *(&v70 - 4) = 0xD000000000000014;
    *(&v70 - 3) = 0x800000022F78E880;
    *(&v70 - 2) = v41;
    *(&v70 - 1) = v33;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v46(v42, v84);
    sub_22F7416A0();
    v83(0, v75);
    return sub_22F2949DC(v33, type metadata accessor for CacherStatus);
  }

  else
  {
    sub_22F73F680();
    v37 = sub_22F73F690();
    v38 = *(*(v37 - 8) + 56);
    v38(v29, 0, 1, v37);
    sub_22F13BA9C(v79, v20, &qword_27DAB1DA0, &unk_22F7771B0);
    if ((*(v31 + 48))(v20, 1, v30) == 1)
    {
      sub_22F120ADC(v20, &qword_27DAB1DA0, &unk_22F7771B0);
      v39 = v38;
      v40 = v26;
      v39(v26, 1, 1, v37);
    }

    else
    {
      v40 = v26;
      sub_22F13BA9C(&v20[*(v30 + 24)], v26, &qword_27DAB0920, &qword_22F770B20);
      sub_22F2949DC(v20, type metadata accessor for CacherStatus);
    }

    v49 = v80;
    v48 = v81;
    v50 = v77;
    *v77 = 0xD000000000000014;
    *(v50 + 8) = 0x800000022F78E880;
    v81 = 0x800000022F78E880;
    sub_22F1207AC(v29, v50 + *(v30 + 20), &qword_27DAB0920, &qword_22F770B20);
    sub_22F1207AC(v40, v50 + *(v30 + 24), &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v51 = *(v48 + 8);
    v52 = v84;
    v80 = v51;
    v53 = (v51)(v49, v84);
    MEMORY[0x28223BE20](v53);
    *(&v70 - 4) = 0xD000000000000014;
    *(&v70 - 3) = v81;
    *(&v70 - 2) = v54;
    *(&v70 - 1) = v50;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    (v80)(v49, v52);
    v55 = v75;
    v56 = *(v75 + 16);
    v57 = MEMORY[0x277D84F90];
    if (v56)
    {
      v89 = MEMORY[0x277D84F90];
      sub_22F146514(0, v56, 0);
      v57 = v89;
      v58 = (v55 + 32);
      v59 = v71;
      do
      {
        memcpy(v88, v58, sizeof(v88));
        memcpy(v87, v58, sizeof(v87));
        sub_22F18C4EC(v88, &v86);
        Song.init(_:)(v87);
        v89 = v57;
        v61 = *(v57 + 16);
        v60 = *(v57 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_22F146514((v60 > 1), v61 + 1, 1);
          v57 = v89;
        }

        *(v57 + 16) = v61 + 1;
        sub_22F294B10(v13, v57 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v61, type metadata accessor for Song);
        v58 += 296;
        --v56;
      }

      while (v56);
      v50 = v77;
    }

    v62 = _s11PhotosGraph26MusicForTimeBackfillCacherC6filterySayAA4SongVGAGFZ_0(v57);
    sub_22F293974(v62, v72, v73, v85, v74);

    if (qword_2810A9478 != -1)
    {
      swift_once();
    }

    v64 = sub_22F740B90();
    __swift_project_value_buffer(v64, qword_2810B4DC0);

    v65 = sub_22F740B70();
    v66 = sub_22F7415C0();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v88[0] = v68;
      *v67 = 134218242;
      v69 = *(v57 + 16);

      *(v67 + 4) = v69;

      *(v67 + 12) = 2080;
      *(v67 + 14) = sub_22F145F20(0x726F46636973754DLL, 0xEC000000656D6954, v88);
      _os_log_impl(&dword_22F0FC000, v65, v66, "Saving %ld of type %s", v67, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x2319033A0](v68, -1, -1);
      MEMORY[0x2319033A0](v67, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22F7416A0();
    sub_22F2949DC(v50, type metadata accessor for CacherStatus);
    return (v83)(1, 0);
  }
}

uint64_t static MusicForTimeBackfillCacher.dateBlock(forMomentStartDate:)(uint64_t a1, uint64_t a2, char *a3)
{
  v91 = a2;
  v90 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v4 - 8);
  v96 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v103 = &v88 - v7;
  MEMORY[0x28223BE20](v8);
  v102 = &v88 - v9;
  v97 = sub_22F73F690();
  v117 = *(v97 - 1);
  MEMORY[0x28223BE20](v97);
  v89 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v105 = &v88 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = (&v88 - v14);
  MEMORY[0x28223BE20](v16);
  v119 = &v88 - v17;
  MEMORY[0x28223BE20](v18);
  v94 = &v88 - v19;
  MEMORY[0x28223BE20](v20);
  v111 = &v88 - v21;
  MEMORY[0x28223BE20](v22);
  v101 = &v88 - v23;
  MEMORY[0x28223BE20](v24);
  v100 = &v88 - v25;
  v26 = sub_22F73F990();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v88 - v31;
  v33 = sub_22F73F090();
  i = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v104 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v93 = &v88 - v37;
  if (qword_2810AA188 != -1)
  {
LABEL_30:
    swift_once();
  }

  v38 = sub_22F73F9B0();
  v39 = __swift_project_value_buffer(v38, qword_2810AA190);
  v40 = *MEMORY[0x277CC9988];
  v113 = *(v27 + 104);
  v114 = v27 + 104;
  v113(v29, v40, v26);
  v95 = a3;
  v116 = v39;
  sub_22F73F820();
  v41 = *(v27 + 8);
  v123 = v29;
  v115 = v27 + 8;
  v112 = v41;
  v41(v29, v26);
  if ((*(i + 6))(v32, 1, v33) == 1)
  {
    sub_22F120ADC(v32, &qword_27DAB40E0, &unk_22F779200);
    sub_22F291560();
    swift_allocError();
    *v42 = 2;
    return swift_willThrow();
  }

  else
  {
    v110 = v26;
    v98 = v15;
    v44 = v93;
    (*(i + 4))(v93, v32, v33);
    v88 = i;
    v45 = *(i + 2);
    v107 = v33;
    v45(v104, v44, v33);
    v120 = 0;
    v108 = *MEMORY[0x277CC9998];
    v109 = (v117 + 8);
    v122 = (v117 + 48);
    v92 = v117 + 32;
    v124 = (v117 + 32);
    v99 = (v117 + 56);
    v121 = MEMORY[0x277D84F90];
    v29 = v111;
    for (i = v97; ; i = a3)
    {
      v46 = v123;
      v47 = v110;
      v113(v123, v108, v110);
      sub_22F73F060();
      v27 = v103;
      sub_22F73F940();
      v32 = v109;
      a3 = *v109;
      (*v109)(v29, i);
      v48 = v46;
      v49 = v27;
      v112(v48, v47);
      v26 = *v122;
      v50 = (*v122)(v27, 1, i);
      v106 = a3;
      if (v50 == 1)
      {
        break;
      }

      v33 = v124;
      v27 = v101;
      v118 = *v124;
      (v118)(v101, v49, i);
      sub_22F73F030();
      sub_22F294A3C(&qword_2810AC708, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v51 = sub_22F740DB0();
      (a3)(v29, i);
      if (v51)
      {
        v15 = v121;
        if (__OFADD__(v120++, 1))
        {
          goto LABEL_29;
        }

        v53 = v102;
        v54 = v27;
        a3 = v97;
        v27 = v118;
        (v118)(v102, v54, v97);
        v55 = 0;
      }

      else
      {
        (a3)(v27, i);
        v55 = 1;
        v53 = v102;
        v15 = v121;
        a3 = i;
        v27 = v118;
      }

      (*v99)(v53, v55, 1, a3);
      i = v26;
      v56 = (v26)(v53, 1, a3);
      v57 = v107;
      if (v56 == 1)
      {
        goto LABEL_17;
      }

      v58 = v100;
      (v27)(v100, v53, a3);
      (v27)(v119, v58, a3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_22F13E15C(0, v15[2] + 1, 1, v15);
      }

      v29 = v111;
      v60 = v15[2];
      v59 = v15[3];
      if (v60 >= v59 >> 1)
      {
        v15 = sub_22F13E15C((v59 > 1), v60 + 1, 1, v15);
      }

      v15[2] = v60 + 1;
      v61 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v121 = v15;
      (v27)(v15 + v61 + *(v117 + 72) * v60, v119, a3);
    }

    sub_22F120ADC(v27, &qword_27DAB0920, &qword_22F770B20);
    v53 = v102;
    (*v99)(v102, 1, 1, i);
    v57 = v107;
    v15 = v121;
    a3 = i;
    i = v26;
    v33 = v124;
LABEL_17:
    sub_22F120ADC(v53, &qword_27DAB0920, &qword_22F770B20);
    sub_22F73F550();
    sub_22F73F570();
    v62 = v15[2];
    v92 = v92 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v32 = v123;
    v119 = v62;
    if (v62)
    {
      v26 = 0;
      v120 = v117 + 16;
      while (v26 < v15[2])
      {
        v63 = v105;
        v64 = v15 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v26;
        v65 = v98;
        v118 = *(v117 + 16);
        (v118)(v98, v64, a3);
        v66 = v32;
        v67 = v110;
        v113(v66, v108, v110);
        v68 = v96;
        sub_22F73F940();
        v112(v123, v67);
        if ((i)(v68, 1, a3) == 1)
        {

          sub_22F120ADC(v68, &qword_27DAB0920, &qword_22F770B20);
          sub_22F291560();
          swift_allocError();
          *v84 = 2;
          swift_willThrow();
          v85 = *(v88 + 1);
          v86 = v107;
          v85(v104, v107);
          v87 = v106;
          (v106)(v65, a3);
          (v87)(v91, a3);
          (v87)(v94, a3);
          return (v85)(v93, v86);
        }

        v103 = *v124;
        (v103)(v63, v68, a3);
        v27 = v111;
        sub_22F73F800();
        sub_22F294A3C(&qword_2810AC708, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v29 = v95;
        v69 = sub_22F740DB0();
        v70 = v106;
        (v106)(v27, a3);
        if ((v69 & 1) == 0)
        {
          sub_22F73F800();
          v71 = sub_22F73F5D0();
          (v70)(v27, a3);
          if (v71)
          {

            v72 = v98;
            sub_22F73F800();
            v73 = v94;
            (v70)(v94, a3);
            v74 = a3;
            v75 = v103;
            (v103)(v73, v27, v74);
            v76 = v105;
            (v118)(v89, v105, v97);
            sub_22F73F560();
            v77 = *(v88 + 1);
            v78 = v107;
            v77(v104, v107);
            (v70)(v76, v97);
            (v70)(v72, v97);
            v79 = v91;
            (v70)(v91, v97);
            v80 = v78;
            v81 = v75;
            v77(v93, v80);
            v75(v79, v27, v97);
            a3 = v97;
            return v81(v90, v94, a3);
          }
        }

        ++v26;
        (v70)(v105, a3);
        (v70)(v98, a3);
        v57 = v107;
        v33 = v124;
        v15 = v121;
        v32 = v123;
        if (v119 == v26)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_25:
    v82 = v33;
    v83 = *(v88 + 1);
    v83(v93, v57);
    v83(v104, v57);

    v81 = *v82;
    return v81(v90, v94, a3);
  }
}

double sub_22F2907FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v55 = *v2;
  v47 = v2[2];
  v54 = v2[3];
  v46 = v2[4];
  v58 = v2[5];
  v5 = v2[7];
  v45 = v2[6];
  v57 = v2[8];
  v44 = *(v2 + 72);
  v43 = v2[10];
  v41 = *(v2 + 23);
  v42 = *(v2 + 88);
  v40 = *(v2 + 96);
  v6 = v2[14];
  v7 = v2[16];
  v38 = v2[15];
  v39 = v2[13];
  v53 = v2[17];
  v52 = v2[18];
  v8 = type metadata accessor for Song(0);
  sub_22F13BA9C(v2 + v8[15], a2 + v8[15], &qword_27DAB0C90, &unk_22F785B70);
  v9 = v2 + v8[26];
  v10 = *(v9 + 8);
  v50 = *v9;
  v51 = *(v9 + 16);
  v49 = *(v9 + 24);
  v48 = *(v9 + 32);
  v11 = *(v9 + 44);
  v12 = *(v9 + 40);
  sub_22F13BA9C(v2 + v8[16], a2 + v8[16], &qword_27DAB0920, &qword_22F770B20);
  v14 = v8[18];
  v13 = v8[19];
  v16 = v8[20];
  v15 = v8[21];
  v18 = v8[22];
  v17 = v8[23];
  v19 = v8[25];
  *(a2 + 16) = v47;
  *(a2 + 32) = v46;
  *(a2 + 48) = v45;
  *(a2 + 72) = v44;
  *(a2 + 80) = v43;
  *(a2 + 88) = v42;
  *(a2 + 92) = v41;
  *(a2 + 96) = v40;
  *(a2 + 104) = v39;
  *(a2 + 112) = v6;
  *(a2 + 120) = v38;
  *(a2 + 128) = v7;
  *a2 = v55;
  *(a2 + 8) = v4;
  *(a2 + 24) = v54;
  *(a2 + 40) = v58;
  *(a2 + 56) = v5;
  *(a2 + 64) = v57;
  *(a2 + 136) = v53;
  *(a2 + 144) = v52;
  v20 = a2 + v8[26];
  *(v20 + 44) = v11;
  v21 = (v2 + v14);
  *(v20 + 40) = v12;
  v22 = *v21;
  *v20 = v50;
  *(v20 + 8) = v10;
  *(v20 + 16) = v51;
  *(v20 + 24) = v49;
  *(v20 + 32) = v48;
  *(a2 + v8[17]) = a1;
  v23 = a2 + v8[18];
  *v23 = v22;
  v24 = v2 + v13;
  *(v23 + 4) = *(v21 + 4);
  v25 = a2 + v8[19];
  *v25 = *v24;
  v26 = v2 + v16;
  *(v25 + 4) = *(v24 + 4);
  v27 = a2 + v8[20];
  *v27 = *v26;
  v28 = v2 + v15;
  *(v27 + 4) = *(v26 + 4);
  v29 = a2 + v8[21];
  *v29 = *v28;
  v30 = v2 + v18;
  *(v29 + 4) = *(v28 + 4);
  v31 = a2 + v8[22];
  *v31 = *v30;
  v32 = v2 + v17;
  *(v31 + 4) = *(v30 + 4);
  v33 = a2 + v8[23];
  *v33 = *v32;
  *(v33 + 4) = *(v32 + 4);
  v34 = (v2 + v19);
  *(a2 + v8[24]) = 0;
  v35 = (a2 + v8[25]);
  v36 = v34[1];
  *v35 = *v34;
  v35[1] = v36;

  sub_22F13BB04(v50, v10, v51, v49, v48);

  return result;
}

id MusicForTimeBackfillCacher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicForTimeBackfillCacher.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicForTimeBackfillCacher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *_s11PhotosGraph26MusicForTimeBackfillCacherC5dates12forStartDate03endK0Say10Foundation0K0VGAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v35 = sub_22F73F990();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_22F73F690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v37 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v33 = *(v11 + 16);
  v34 = v11 + 16;
  v33(&v26 - v15, a1, v10, v14);
  v31 = sub_22F294A3C(&qword_2810AC708, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v32 = a2;
  if (sub_22F740DB0())
  {
    v17 = MEMORY[0x277D84F90];
    (*(v11 + 8))(v16, v10);
    return v17;
  }

  else
  {
    v36 = v11 + 32;
    v30 = *MEMORY[0x277CC9968];
    v28 = (v4 + 8);
    v29 = (v4 + 104);
    v27 = (v11 + 48);
    v17 = MEMORY[0x277D84F90];
    v18 = (v11 + 8);
    while (1)
    {
      (v33)(v37, v16, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_22F13E15C(0, *(v17 + 2) + 1, 1, v17);
      }

      v20 = *(v17 + 2);
      v19 = *(v17 + 3);
      if (v20 >= v19 >> 1)
      {
        v17 = sub_22F13E15C((v19 > 1), v20 + 1, 1, v17);
      }

      *(v17 + 2) = v20 + 1;
      v21 = *(v11 + 32);
      v21(&v17[((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20], v37, v10);
      if (qword_2810AA188 != -1)
      {
        swift_once();
      }

      v22 = sub_22F73F9B0();
      __swift_project_value_buffer(v22, qword_2810AA190);
      v23 = v35;
      (*v29)(v6, v30, v35);
      sub_22F73F940();
      (*v28)(v6, v23);
      result = (*v27)(v9, 1, v10);
      if (result == 1)
      {
        break;
      }

      v25 = *v18;
      (*v18)(v16, v10);
      v21(v16, v9, v10);
      if (sub_22F740DB0())
      {
        v25(v16, v10);
        return v17;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22F291068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_22F73F690();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for CacherStatus(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F13BA9C(a1, v13, &qword_27DAB1DA0, &unk_22F7771B0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v18 = &qword_27DAB1DA0;
    v19 = &unk_22F7771B0;
    v20 = v13;
LABEL_5:
    sub_22F120ADC(v20, v18, v19);
    LOBYTE(v23) = 1;
    return v23 & 1;
  }

  sub_22F294B10(v13, v17, type metadata accessor for CacherStatus);
  sub_22F13BA9C(&v17[*(v14 + 20)], v6, &qword_27DAB0920, &qword_22F770B20);
  v22 = v41;
  v21 = v42;
  if ((*(v41 + 48))(v6, 1, v42) == 1)
  {
    sub_22F2949DC(v17, type metadata accessor for CacherStatus);
    v18 = &qword_27DAB0920;
    v19 = &qword_22F770B20;
    v20 = v6;
    goto LABEL_5;
  }

  v25 = v40;
  (*(v22 + 32))(v40, v6, v21);
  sub_22F1E3F74(v46);
  memcpy(v47, v46, 0x121uLL);
  if (sub_22F1EDAB8(v47) == 1)
  {
    GEOLocationCoordinate2DMake();
    memcpy(v44, v46, sizeof(v44));
    GEOLocationCoordinate2DMake();
    v23 = *v26;
    v45 = *v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    (*(v22 + 8))(v25, v21);
    sub_22F2949DC(v17, type metadata accessor for CacherStatus);
  }

  else
  {
    GEOLocationCoordinate2DMake();
    sub_22F120ADC(v46, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v44, v46, sizeof(v44));
    GEOLocationCoordinate2DMake();
    v28 = *(v27 + 144);
    v29 = *(v27 + 176);
    v30 = *(v27 + 208);
    v23 = v37;
    sub_22F73F680();
    sub_22F73F590();
    v32 = v31;
    v33 = v25;
    v34 = *(v22 + 8);
    v34(v23, v21);
    LOBYTE(v23) = v38;
    v35 = v43;
    sub_22F7416A0();
    if (v35)
    {
      v34(v33, v21);
      sub_22F2949DC(v17, type metadata accessor for CacherStatus);
    }

    else
    {
      if (v30)
      {
        v36 = v28;
      }

      else
      {
        v36 = v29;
      }

      LOBYTE(v23) = v36 < v32;
      v34(v33, v21);
      sub_22F2949DC(v17, type metadata accessor for CacherStatus);
    }
  }

  return v23 & 1;
}

unint64_t sub_22F291560()
{
  result = qword_27DAB2EF8;
  if (!qword_27DAB2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2EF8);
  }

  return result;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F2915DC(void *a1, int a2, void *a3, void *a4, NSObject *a5)
{
  v209 = a4;
  LODWORD(v220) = a2;
  v200 = type metadata accessor for CacherStatus(0);
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v196 = &v178 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v205 = &v178 - v10;
  v195 = sub_22F73EEC0();
  v192 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v191 = &v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = v11;
  MEMORY[0x28223BE20](v12);
  v198 = &v178 - v13;
  v204 = sub_22F740AD0();
  v203 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v202 = &v178 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22F740C00();
  MEMORY[0x28223BE20](v15 - 8);
  v208 = &v178 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_22F73F990();
  v216 = *(v219 - 1);
  MEMORY[0x28223BE20](v219);
  v215 = &v178 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v18 - 8);
  v193 = &v178 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v197 = &v178 - v21;
  MEMORY[0x28223BE20](v22);
  v214 = &v178 - v23;
  v218 = sub_22F73F690();
  v217 = *(v218 - 8);
  v24 = *(v217 + 64);
  MEMORY[0x28223BE20](v218);
  v207 = &v178 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v206 = &v178 - v26;
  MEMORY[0x28223BE20](v27);
  v212 = &v178 - v28;
  MEMORY[0x28223BE20](v29);
  v211 = &v178 - v30;
  MEMORY[0x28223BE20](v31);
  v213 = &v178 - v32;
  MEMORY[0x28223BE20](v33);
  v210 = &v178 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v201 = *(v35 - 8);
  v36 = *(v201 + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v194 = &v178 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v178 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v178 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v178 - v44;
  MEMORY[0x28223BE20](v46);
  v221 = &v178 - v47;
  v223 = swift_allocObject();
  *(v223 + 16) = a5;
  v222 = a5;
  _Block_copy(a5);
  v48 = a3;
  v49 = sub_22F7416D0();
  v51 = v50;
  v53 = v52;
  v54 = sub_22F1A26E0(a1);
  v184 = v36;
  v185 = v45;
  v183 = v24;
  v182 = v39;
  v187 = v48;
  v188 = v49;
  v189 = v51;
  v186 = v42;
  v55 = v54;
  objc_allocWithZone(type metadata accessor for MusicBag());
  v56 = v55;
  v57 = sub_22F1ED5B0(v55);

  v58 = v221;
  MusicCache.readCacherStatus(category:)(0xD000000000000014, 0x800000022F78E880, v221);
  v181 = v56;
  v59 = v188;
  v60 = sub_22F291068(v58, v57, v188);
  if (((v60 | v220) & 1) == 0)
  {
    sub_22F7416A0();
    (v222[2].isa)(v222, 1, 0);

    v78 = v221;
LABEL_13:
    sub_22F120ADC(v78, &qword_27DAB1DA0, &unk_22F7771B0);
  }

  v180 = 0x800000022F78E880;
  if (qword_2810AA188 != -1)
  {
    swift_once();
  }

  v64 = sub_22F73F9B0();
  __swift_project_value_buffer(v64, qword_2810AA190);
  v65 = v216;
  v66 = v215;
  (v216)[13](v215, *MEMORY[0x277CC9998], v219);
  v67 = v213;
  sub_22F73F680();
  v68 = v214;
  sub_22F73F940();
  v69 = v217;
  v70 = *(v217 + 8);
  v71 = v67;
  v72 = v218;
  v220 = v217 + 8;
  v70(v71, v218);
  (v65[1])(v66, v219);
  if ((*(v69 + 48))(v68, 1, v72) == 1)
  {
    sub_22F120ADC(v68, &qword_27DAB0920, &qword_22F770B20);
    sub_22F291560();
    v73 = swift_allocError();
    *v74 = 2;
    swift_willThrow();

    sub_22F120ADC(v221, &qword_27DAB1DA0, &unk_22F7771B0);
    v61 = v73;
    v62 = sub_22F73F360();
    (v222[2].isa)(v222, 0, v62);
  }

  v216 = v57;
  v219 = v70;
  v75 = *(v69 + 32);
  v76 = v210;
  v75(v210, v68, v72);
  if (qword_2810AA1B0 != -1)
  {
    swift_once();
  }

  v77 = __swift_project_value_buffer(v72, qword_2810AA1B8);
  static MusicForTimeBackfillCacher.nextTimeSpan(forDate:cache:minimumValidQueryDate:)(v211, v212, v76, v181, v77);
  v79 = v208;
  sub_22F740BD0();
  v80 = sub_22F22FB24(v79, 0);
  v81 = v221;
  v208 = 0;
  v214 = v80;
  static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)(0xD000000000000014, v180, &v232);
  v82 = v185;
  sub_22F13BA9C(v81, v185, &qword_27DAB1DA0, &unk_22F7771B0);
  v83 = v217 + 16;
  v84 = *(v217 + 16);
  v84(v206, v211, v72);
  v179 = v84;
  v84(v207, v212, v72);
  sub_22F13BA9C(v82, v186, &qword_27DAB1DA0, &unk_22F7771B0);
  v85 = (*(v201 + 80) + 24) & ~*(v201 + 80);
  v201 = (v184 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v184 = v83;
  v86 = *(v83 + 64);
  v87 = (v86 + v201 + 8) & ~v86;
  v88 = (v183 + v86 + v87) & ~v86;
  v89 = (v183 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v215 = ((v89 + 15) & 0xFFFFFFFFFFFFFFF8);
  v90 = (v215 + 15) & 0xFFFFFFFFFFFFFFF8;
  v91 = v75;
  v92 = swift_allocObject();
  *(v92 + 16) = v209;
  v93 = v92 + v85;
  v94 = v218;
  sub_22F1207AC(v82, v93, &qword_27DAB1DA0, &unk_22F7771B0);
  v95 = v181;
  *(v92 + v201) = v181;
  v91(v92 + v87, v206, v94);
  v91(v92 + v88, v207, v94);
  v96 = v211;
  v97 = v53;
  *(v92 + v89) = v53;
  v98 = v187;
  *&v215[v92] = v187;
  v213 = v92;
  v99 = (v92 + v90);
  v100 = v212;
  v101 = v223;
  *v99 = sub_22F1E088C;
  v99[1] = v101;
  v215 = v95;
  v209 = v97;

  v207 = v98;
  if (sub_22F73F660() != -1)
  {
    type metadata accessor for MusicKitClientError(0);
    sub_22F294A3C(&qword_27DAB2948, type metadata accessor for MusicKitClientError, &protocol conformance descriptor for MusicKitClientError);
    v206 = swift_allocError();
    v103 = v102;
    v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2950, &unk_22F781A20) + 48);
    v105 = v179;
    v179(v103, v96, v94);
    v105(v103 + v104, v100, v94);
    swift_storeEnumTagMultiPayload();
    v106 = v182;
    sub_22F13BA9C(v186, v182, &qword_27DAB1DA0, &unk_22F7771B0);
    v107 = v200;
    v108 = (*(v199 + 48))(v106, 1, v200);
    v109 = v203;
    v110 = v202;
    if (v108 == 1)
    {
      sub_22F120ADC(v106, &qword_27DAB1DA0, &unk_22F7771B0);
      v111 = v217;
      v112 = v197;
      (*(v217 + 56))(v197, 1, 1, v94);
      v113 = v205;
    }

    else
    {
      v112 = v197;
      sub_22F13BA9C(v106 + *(v107 + 20), v197, &qword_27DAB0920, &qword_22F770B20);
      sub_22F2949DC(v106, type metadata accessor for CacherStatus);
      v113 = v205;
      v111 = v217;
    }

    v134 = *(v107 + 24);
    sub_22F73F680();
    (*(v111 + 56))(&v113[v134], 0, 1, v94);
    *v113 = 0xD000000000000014;
    v135 = v180;
    *(v113 + 1) = v180;
    sub_22F1207AC(v112, &v113[*(v107 + 20)], &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v136 = *(v109 + 8);
    v137 = v204;
    v138 = v136(v110, v204);
    MEMORY[0x28223BE20](v138);
    *(&v178 - 4) = 0xD000000000000014;
    *(&v178 - 3) = v135;
    *(&v178 - 2) = v139;
    *(&v178 - 1) = v113;
    v140 = v208;
    sub_22F7417A0();
    if (v140)
    {
      v133 = v212;
      v141 = v216;
      v175 = v218;
      v176 = v211;
      sub_22F2949DC(v205, type metadata accessor for CacherStatus);
      v142 = v140;
      v143 = sub_22F73F360();
      (v222[2].isa)(v222, 0, v143);

      sub_22F1D210C(&v232);
    }

    else
    {
      sub_22F741730();
      sub_22F740AC0();
      sub_22F740A90();
      v136(v110, v137);
      sub_22F7416A0();
      v173 = v206;
      v174 = sub_22F73F360();
      (v222[2].isa)(v222, 0, v174);

      sub_22F1D210C(&v232);

      sub_22F2949DC(v205, type metadata accessor for CacherStatus);
      v133 = v212;
      v175 = v218;
      v176 = v211;
    }

LABEL_34:
    sub_22F120ADC(v186, &qword_27DAB1DA0, &unk_22F7771B0);
    v172 = v219;
    v219(v133, v175);
    v172(v176, v175);
    v172(v210, v175);
    v78 = v221;
    goto LABEL_13;
  }

  sub_22F741740();
  v114 = v203;
  v115 = v202;
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v116 = *(v114 + 8);
  v117 = v204;
  v116(v115, v204);
  v119 = *(v214 + 3);
  v118 = *(v214 + 4);
  v224[0] = v232;
  v120 = *(v214 + 5);
  v121 = *(v214 + 6);
  v122 = *(v214 + 7);
  v123 = *(v214 + 8);
  aBlock = v119;
  v227 = v118;
  v228 = v120;
  v229 = v121;
  v230 = v122;
  v231 = v123;
  v224[1] = v233;
  v224[2] = v234;
  v225 = v235;

  v124 = v208;
  sub_22F3E29C0(v212, v224, v198);
  v125 = v186;
  if (v124)
  {

    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v206 = v116;
    v116(v115, v117);
    v126 = v194;
    sub_22F13BA9C(v125, v194, &qword_27DAB1DA0, &unk_22F7771B0);
    v127 = v200;
    v128 = (*(v199 + 48))(v126, 1, v200);
    v208 = v124;
    if (v128 == 1)
    {
      v129 = v124;
      sub_22F120ADC(v126, &qword_27DAB1DA0, &unk_22F7771B0);
      v130 = v217;
      v131 = v193;
      v132 = v218;
      (*(v217 + 56))(v193, 1, 1, v218);
      v133 = v212;
LABEL_31:
      v164 = v127[6];
      v165 = v127;
      v166 = v196;
      sub_22F73F680();
      (*(v130 + 56))(&v166[v164], 0, 1, v132);
      *v166 = 0xD000000000000014;
      v167 = v180;
      *(v166 + 1) = v180;
      sub_22F1207AC(v131, &v166[v165[5]], &qword_27DAB0920, &qword_22F770B20);
      sub_22F741740();
      if (qword_2810A8E80 != -1)
      {
        swift_once();
      }

      sub_22F740AC0();
      sub_22F740A90();
      v168 = v206;
      v169 = (v206)(v115, v117);
      MEMORY[0x28223BE20](v169);
      *(&v178 - 4) = 0xD000000000000014;
      *(&v178 - 3) = v167;
      *(&v178 - 2) = v170;
      *(&v178 - 1) = v166;
      sub_22F7417A0();
      v171 = v208;
      sub_22F741730();
      sub_22F740AC0();
      sub_22F740A90();
      v168(v115, v117);
      sub_22F7416A0();
      v177 = sub_22F73F360();
      (v222[2].isa)(v222, 0, v177);

      sub_22F1D210C(&v232);

      sub_22F2949DC(v196, type metadata accessor for CacherStatus);
      v175 = v218;
      v176 = v211;
      goto LABEL_34;
    }

LABEL_30:
    v131 = v193;
    sub_22F13BA9C(v126 + v127[5], v193, &qword_27DAB0920, &qword_22F770B20);
    v163 = v124;
    sub_22F2949DC(v126, type metadata accessor for CacherStatus);
    v133 = v212;
    v132 = v218;
    v130 = v217;
    goto LABEL_31;
  }

  v144 = swift_allocObject();
  *(v144 + 16) = "MusicKitClient Fetch Tesseract Songs";
  *(v144 + 24) = 36;
  *(v144 + 32) = 2;
  *(v144 + 40) = sub_22F294B8C;
  *(v144 + 48) = v213;

  sub_22F741740();
  sub_22F740AC0();
  sub_22F740A90();
  v116(v115, v117);
  v222 = *(v214 + 9);
  v145 = v192;
  v146 = v191;
  v147 = v195;
  (*(v192 + 16))(v191, v198, v195);
  v148 = (*(v145 + 80) + 16) & ~*(v145 + 80);
  v149 = (v190 + v148 + 7) & 0xFFFFFFFFFFFFFFF8;
  v150 = (v149 + 63) & 0xFFFFFFFFFFFFFFF8;
  v217 = (v150 + 15) & 0xFFFFFFFFFFFFFFF8;
  v151 = (v150 + 39) & 0xFFFFFFFFFFFFFFF8;
  v115 = swift_allocObject();
  (*(v145 + 32))(v115 + v148, v146, v147);
  v152 = v115 + v149;
  v153 = v233;
  v154 = v234;
  *v152 = v232;
  *(v152 + 16) = v153;
  *(v152 + 32) = v154;
  *(v152 + 48) = v235;
  *(v115 + v150) = v214;
  v155 = v115 + v217;
  *v155 = "MusicKitClient HTTP Request";
  *(v155 + 8) = 27;
  *(v155 + 16) = 2;
  v156 = v189;
  *(v115 + v151) = v189;
  v157 = (v115 + ((v151 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v157 = sub_22F294B7C;
  v157[1] = v144;
  v124 = swift_allocObject();
  *(v124 + 2) = sub_22F294B80;
  *(v124 + 3) = v115;
  v230 = sub_22F294B84;
  v231 = v124;
  aBlock = MEMORY[0x277D85DD0];
  v227 = 1107296256;
  v228 = sub_22F2280B0;
  v229 = &block_descriptor_39;
  v158 = _Block_copy(&aBlock);
  sub_22F1D20B0(&v232, v224);

  v159 = v156;

  dispatch_sync(v222, v158);

  _Block_release(v158);

  sub_22F1D210C(&v232);

  v160 = *(v145 + 8);
  v126 = v145 + 8;
  v160(v198, v195);
  v127 = &unk_22F7771B0;
  sub_22F120ADC(v186, &qword_27DAB1DA0, &unk_22F7771B0);
  v161 = v218;
  v117 = v220;
  v162 = v219;
  v219(v212, v218);
  v162(v211, v161);
  v162(v210, v161);
  sub_22F120ADC(v221, &qword_27DAB1DA0, &unk_22F7771B0);

  LOBYTE(v144) = swift_isEscapingClosureAtFileLocation();

  if (v144)
  {
    __break(1u);
    goto LABEL_30;
  }

  return result;
}

uint64_t _s11PhotosGraph26MusicForTimeBackfillCacherC6filterySayAA4SongVGAGFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for Song(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v41 = *(a1 + 16);
  if (!v41)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = 0;
  v35 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v40 = a1 + v35;
  v10 = *(v6 + 72);
  v11 = MEMORY[0x277D84F90];
  v34 = v2;
  v33 = v4;
  v36 = v10;
  v37 = &v33 - v7;
  do
  {
    result = sub_22F15CAA0(v40 + v10 * v9, v8);
    v13 = *&v8[*(v2 + 68)];
    if (v13)
    {
      v42 = v11;
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = 0;
        v16 = v13 + 32;
        v17 = v14 - 1;
        v18 = MEMORY[0x277D84F90];
        do
        {
          v19 = (v16 + 80 * v15);
          v20 = v15;
          while (1)
          {
            if (v20 >= *(v13 + 16))
            {
              __break(1u);
              return result;
            }

            v21 = v19[1];
            v22 = v19[2];
            v23 = v19[3];
            *&v47[9] = *(v19 + 57);
            v24 = *v19;
            v46 = v22;
            *v47 = v23;
            v44 = v24;
            v45 = v21;
            v15 = v20 + 1;
            if ((v47[24] & 1) == 0)
            {
              break;
            }

            v19 += 5;
            ++v20;
            if (v14 == v15)
            {
              goto LABEL_20;
            }
          }

          v38 = v17;
          v39 = v16;
          sub_22F13A7E4(&v44, v43);
          result = swift_isUniquelyReferenced_nonNull_native();
          v48 = v18;
          if ((result & 1) == 0)
          {
            result = sub_22F146494(0, *(v18 + 16) + 1, 1);
            v10 = v36;
            v18 = v48;
          }

          v17 = v38;
          v26 = *(v18 + 16);
          v25 = *(v18 + 24);
          v16 = v39;
          if (v26 >= v25 >> 1)
          {
            result = sub_22F146494((v25 > 1), v26 + 1, 1);
            v17 = v38;
            v16 = v39;
            v10 = v36;
            v18 = v48;
          }

          *(v18 + 16) = v26 + 1;
          v27 = (v18 + 80 * v26);
          v27[2] = v44;
          v28 = v45;
          v29 = v46;
          v30 = *v47;
          *(v27 + 89) = *&v47[9];
          v27[4] = v29;
          v27[5] = v30;
          v27[3] = v28;
          v2 = v34;
          v4 = v33;
        }

        while (v17 != v20);
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
      }

LABEL_20:
      if (*(v18 + 16))
      {
        v8 = v37;
        sub_22F2907FC(v18, v4);

        v11 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_22F13E558(0, v11[2] + 1, 1, v11);
        }

        v32 = v11[2];
        v31 = v11[3];
        if (v32 >= v31 >> 1)
        {
          v11 = sub_22F13E558((v31 > 1), v32 + 1, 1, v11);
        }

        sub_22F2949DC(v8, type metadata accessor for Song);
        v11[2] = v32 + 1;
        v10 = v36;
        sub_22F294B10(v4, v11 + v35 + v32 * v36, type metadata accessor for Song);
      }

      else
      {
        v8 = v37;
        sub_22F2949DC(v37, type metadata accessor for Song);

        v11 = v42;
      }
    }

    else
    {
      sub_22F2949DC(v8, type metadata accessor for Song);
    }

    ++v9;
  }

  while (v9 != v41);
  return v11;
}

void sub_22F293974(uint64_t a1, void *a2, char *started, uint64_t a4, uint64_t a5)
{
  v83 = a5;
  v80 = a4;
  v94 = a1;
  v85 = sub_22F740AD0();
  v88 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Song(0);
  v92 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = (&v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v77 - v12;
  MEMORY[0x28223BE20](v14);
  v106 = &v77 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v77 - v17;
  v19 = sub_22F73F690();
  v97 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v98 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v105 = &v77 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v77 - v24;
  MEMORY[0x28223BE20](v26);
  v109 = &v77 - v27;
  if (qword_2810A9168 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v107 = qword_2810A9170;
    started = _s11PhotosGraph26MusicForTimeBackfillCacherC5dates12forStartDate03endK0Say10Foundation0K0VGAI_AItFZ_0(a2, started);
    v28 = sub_22F14FAE0(MEMORY[0x277D84F90]);
    v86 = *(started + 2);
    if (!v86)
    {
      break;
    }

    v29 = 0;
    v100 = *(v94 + 16);
    v30 = &started[(*(v97 + 80) + 32) & ~*(v97 + 80)];
    v96 = v97 + 16;
    v104 = (v97 + 32);
    v108 = (v97 + 8);
    a2 = MEMORY[0x277D84F90];
    v95 = v8;
    v78 = v10;
    v77 = v13;
    v102 = v18;
    v89 = started;
    v79 = v30;
    while (1)
    {
      if (v29 >= *(started + 2))
      {
        goto LABEL_45;
      }

      v93 = v28;
      v31 = *(v97 + 72);
      v87 = v29;
      v81 = v31;
      v90 = *(v97 + 16);
      v90(v109, &v30[v31 * v29], v19);
      if (v100)
      {
        break;
      }

LABEL_23:
      v90(v98, v109, v19);
      v38 = a2[2];
      v39 = sub_22F294A3C(&qword_2810A99B0, type metadata accessor for Song, &protocol conformance descriptor for Song);
      v110 = MEMORY[0x231901000](v38, v8, v39);
      v40 = a2[2];
      if (v40)
      {
        v41 = a2 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
        v42 = *(v92 + 72);
        v28 = v78;
        v13 = v77;
        do
        {
          sub_22F15CAA0(v41, v28);
          sub_22F10C40C(v13, v28);
          sub_22F2949DC(v13, type metadata accessor for Song);
          v41 += v42;
          --v40;
        }

        while (v40);

        v18 = v102;
      }

      else
      {
      }

      v43 = v93;
      v44 = v110;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = v43;
      v46 = sub_22F1230FC(v98);
      v48 = *(v43 + 16);
      v49 = (v47 & 1) == 0;
      v50 = __OFADD__(v48, v49);
      v51 = v48 + v49;
      if (v50)
      {
        __break(1u);
        goto LABEL_48;
      }

      v52 = v47;
      if (*(v43 + 24) < v51)
      {
        sub_22F129770(v51, isUniquelyReferenced_nonNull_native);
        v46 = sub_22F1230FC(v98);
        if ((v52 & 1) != (v53 & 1))
        {
          goto LABEL_50;
        }

LABEL_33:
        v28 = v110;
        if (v52)
        {
          goto LABEL_34;
        }

        goto LABEL_36;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_33;
      }

      v54 = v46;
      sub_22F13685C();
      v46 = v54;
      v28 = v110;
      if (v52)
      {
LABEL_34:
        *(v28[7] + 8 * v46) = v44;

        goto LABEL_38;
      }

LABEL_36:
      v28[(v46 >> 6) + 8] |= 1 << v46;
      v55 = v46;
      v90((v28[6] + v46 * v81), v98, v19);
      *(v28[7] + 8 * v55) = v44;
      v56 = v28[2];
      v50 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v50)
      {
        __break(1u);
LABEL_50:
        sub_22F7420C0();
        __break(1u);
        return;
      }

      v28[2] = v57;
LABEL_38:
      v8 = v95;
      started = v89;
      v13 = v87 + 1;
      v10 = *v108;
      (*v108)(v98, v19);
      v10(v109, v19);
      v29 = v13;
      v30 = v79;
      a2 = MEMORY[0x277D84F90];
      if (v13 == v86)
      {
        goto LABEL_39;
      }
    }

    v10 = 0;
    v101 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v13 = (v94 + v101);
    v103 = *(v92 + 72);
    v91 = (v94 + v101);
    while (1)
    {
      sub_22F15CAA0(&v13[v103 * v10], v18);
      started = *&v18[*(v8 + 68)];
      if (!started)
      {
        sub_22F2949DC(v18, type metadata accessor for Song);
        goto LABEL_8;
      }

      v99 = v10;
      v13 = *(started + 2);

      if (v13)
      {
        break;
      }

LABEL_7:
      v18 = v102;
      sub_22F2949DC(v102, type metadata accessor for Song);

      v8 = v95;
      v10 = v99;
      v13 = v91;
LABEL_8:
      v10 = (v10 + 1);
      if (v10 == v100)
      {
        goto LABEL_23;
      }
    }

    v8 = 0;
    v18 = started + 40;
    while (v8 < *(started + 2))
    {
      v28 = v19;

      v32 = sub_22F740DF0();

      v10 = [v107 dateFromString_];

      if (!v10)
      {

        sub_22F291560();
        swift_allocError();
        *v62 = 2;
        swift_willThrow();
        sub_22F2949DC(v102, type metadata accessor for Song);
        (*v108)(v109, v28);
        return;
      }

      v33 = v105;
      sub_22F73F640();

      v34 = v33;
      v19 = v28;
      (*v104)(v25, v34, v28);
      if (sub_22F73F630())
      {
        sub_22F15CAA0(v102, v106);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_22F13E558(0, a2[2] + 1, 1, a2);
        }

        v36 = a2[2];
        v35 = a2[3];
        v10 = (v36 + 1);
        if (v36 >= v35 >> 1)
        {
          a2 = sub_22F13E558((v35 > 1), v36 + 1, 1, a2);
        }

        (*v108)(v25, v28);
        a2[2] = v10;
        v37 = a2 + v101 + v36 * v103;
        v19 = v28;
        sub_22F294B10(v106, v37, type metadata accessor for Song);
      }

      else
      {
        (*v108)(v25, v28);
      }

      ++v8;
      v18 += 80;
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

LABEL_39:

  sub_22F741740();
  v13 = v85;
  v44 = v88;
  v18 = v84;
  if (qword_2810A8E80 != -1)
  {
LABEL_48:
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v60 = *(v44 + 8);
  v58 = v44 + 8;
  v59 = v60;
  v60(v18, v13);
  v61 = v82;
  sub_22F741690();
  if (v61)
  {
  }

  else
  {
    v88 = v58;
    v63 = sub_22F7416E0();
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v109 = &v77;
    MEMORY[0x28223BE20](v63);
    *(&v77 - 14) = v28;
    strcpy(&v77 - 104, "MusicForTime");
    *(&v77 - 91) = 0;
    *(&v77 - 45) = -5120;
    *(&v77 - 11) = v70;
    *(&v77 - 10) = 0;
    *(&v77 - 9) = 0;
    *(&v77 - 8) = 0xD000000000000014;
    *(&v77 - 7) = 0x800000022F78E880;
    v72 = v71;
    *(&v77 - 6) = v71;
    *(&v77 - 10) = 16843008;
    *(&v77 - 4) = v65;
    *(&v77 - 3) = v73;
    *(&v77 - 2) = v74;
    sub_22F7417A0();

    sub_22F741730();
    v75 = v72;
    v76 = v84;
    sub_22F740AC0();
    sub_22F740A90();

    v59(v76, v85);
  }
}

unint64_t sub_22F294554()
{
  result = qword_27DAB2F00;
  if (!qword_27DAB2F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2F00);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_22F73F690();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v0 + v3;
  v10 = type metadata accessor for CacherStatus(0);
  if (!(*(*(v10 - 8) + 48))(v0 + v3, 1, v10))
  {

    v20 = *(v10 + 20);
    v21 = *(v6 + 48);
    if (!v21(v9 + v20, 1, v5))
    {
      (*(v6 + 8))(v9 + v20, v5);
    }

    v11 = *(v10 + 24);
    if (!v21(v9 + v11, 1, v5))
    {
      (*(v6 + 8))(v9 + v11, v5);
    }
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + v7 + 8) & ~v7;
  v14 = (v8 + v7 + v13) & ~v7;
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = v2 | v7;

  v18 = *(v6 + 8);
  v18(v0 + v13, v5);
  v18(v0 + v14, v5);

  return MEMORY[0x2821FE8E8](v0, ((v16 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v17 | 7);
}

uint64_t sub_22F294868(uint64_t a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_22F73F690() - 8);
  v9 = *(v8 + 80);
  v10 = (v7 + v9 + 8) & ~v9;
  v11 = *(v8 + 64);
  v12 = (v11 + v9 + v10) & ~v9;
  v13 = (v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_22F28ECB0(a1, a2 & 1, *(v2 + 16), v2 + v6, *(v2 + v7), (v2 + v10), (v2 + v12), *(v2 + v13), *(v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_22F2949DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F294A3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22F294A84()
{
  if (*(v0 + 91))
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 90))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + 89))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_22F19D660(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v3 | *(v0 + 88) | v2 | v1, *(v0 + 96), *(v0 + 104), *(v0 + 112));
}

uint64_t sub_22F294B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F294B90(unint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v12[6] = *MEMORY[0x277D85DE8];
  v12[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v12[3] = v12;
  v12[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v7 = &v12[-1] - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v8 = sub_22F288380(v7, v5, v3, a2);
  }

  else
  {
    v10 = swift_slowAlloc();
    v8 = sub_22F288124(v10, v5, sub_22F2993C4);

    MEMORY[0x2319033A0](v10, -1, -1);
  }

  return v8;
}